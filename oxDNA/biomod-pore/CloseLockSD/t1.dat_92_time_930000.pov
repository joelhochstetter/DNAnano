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
	<4.531749, 14.580344, 15.338646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309960, 14.866046, 15.167811>,  <4.176887, 15.037467, 15.065310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309960, 14.866046, 15.167811>,  <4.531749, 14.580344, 15.338646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.309960, 14.866046, 15.167811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271834, 0.640494, 0.718244,
		0.786554, 0.282150, -0.549294,
		-0.554472, 0.714254, -0.427086,
		4.143619, 15.080322, 15.039686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.861456, 15.234987, 14.976786>,  <4.531749, 14.580344, 15.338646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.861456, 15.234987, 14.976786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525003, 15.304352, 15.181695>,  <4.323132, 15.345970, 15.304641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525003, 15.304352, 15.181695>,  <4.861456, 15.234987, 14.976786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.525003, 15.304352, 15.181695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517885, 0.531224, 0.670519,
		-0.155857, 0.829295, -0.536637,
		-0.841132, 0.173411, 0.512274,
		4.272664, 15.356375, 15.335378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743730, 15.953188, 14.966655>,  <4.861456, 15.234987, 14.976786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743730, 15.953188, 14.966655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.582079, 15.772757, 15.284952>,  <4.485089, 15.664497, 15.475931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.582079, 15.772757, 15.284952>,  <4.743730, 15.953188, 14.966655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582079, 15.772757, 15.284952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560825, 0.565058, 0.605132,
		-0.722604, 0.690823, 0.024621,
		-0.404127, -0.451079, 0.795744,
		4.460841, 15.637433, 15.523676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.339253, 16.448299, 15.399871>,  <4.743730, 15.953188, 14.966655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.339253, 16.448299, 15.399871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539513, 16.182617, 15.621926>,  <4.659669, 16.023207, 15.755159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539513, 16.182617, 15.621926>,  <4.339253, 16.448299, 15.399871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.539513, 16.182617, 15.621926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555852, 0.738287, 0.382047,
		-0.663610, 0.117303, 0.738825,
		0.500649, -0.664208, 0.555138,
		4.689708, 15.983355, 15.788467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.244513, 16.615074, 16.138256>,  <4.339253, 16.448299, 15.399871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.244513, 16.615074, 16.138256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583865, 16.409218, 16.088631>,  <4.787477, 16.285704, 16.058855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583865, 16.409218, 16.088631>,  <4.244513, 16.615074, 16.138256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.583865, 16.409218, 16.088631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487174, 0.667291, 0.563369,
		-0.207148, -0.538392, 0.816838,
		0.848382, -0.514643, -0.124063,
		4.838380, 16.254826, 16.051413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.510045, 16.672932, 16.828665>,  <4.244513, 16.615074, 16.138256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.510045, 16.672932, 16.828665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799064, 16.598850, 16.562244>,  <4.972475, 16.554401, 16.402391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799064, 16.598850, 16.562244>,  <4.510045, 16.672932, 16.828665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799064, 16.598850, 16.562244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608640, 0.627316, 0.485832,
		0.327847, -0.756422, 0.565988,
		0.722547, -0.185204, -0.666052,
		5.015828, 16.543289, 16.362429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.100386, 16.431189, 17.251476>,  <4.510045, 16.672932, 16.828665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.100386, 16.431189, 17.251476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.222562, 16.542280, 16.887154>,  <5.295868, 16.608936, 16.668560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.222562, 16.542280, 16.887154>,  <5.100386, 16.431189, 17.251476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.222562, 16.542280, 16.887154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674930, 0.611589, 0.412829,
		0.671696, -0.740826, -0.000644,
		0.305441, 0.277731, -0.910808,
		5.314195, 16.625599, 16.613911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.781919, 16.256573, 17.249462>,  <5.100386, 16.431189, 17.251476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.781919, 16.256573, 17.249462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.687112, 16.539839, 16.983431>,  <5.630229, 16.709799, 16.823812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.687112, 16.539839, 16.983431>,  <5.781919, 16.256573, 17.249462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.687112, 16.539839, 16.983431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530080, 0.667968, 0.522335,
		0.814149, -0.228743, -0.533702,
		-0.237015, 0.708163, -0.665078,
		5.616008, 16.752287, 16.783907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.386146, 16.627522, 17.228443>,  <5.781919, 16.256573, 17.249462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.386146, 16.627522, 17.228443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.120398, 16.865492, 17.047480>,  <5.960949, 17.008274, 16.938902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.120398, 16.865492, 17.047480>,  <6.386146, 16.627522, 17.228443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.120398, 16.865492, 17.047480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354655, 0.783760, 0.509843,
		0.657900, 0.178275, -0.731700,
		-0.664370, 0.594927, -0.452410,
		5.921087, 17.043970, 16.911757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.756560, 17.165346, 16.890265>,  <6.386146, 16.627522, 17.228443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.756560, 17.165346, 16.890265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386422, 17.310616, 16.933792>,  <6.164340, 17.397778, 16.959909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386422, 17.310616, 16.933792>,  <6.756560, 17.165346, 16.890265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.386422, 17.310616, 16.933792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367288, 0.787566, 0.494813,
		0.094001, 0.497841, -0.862159,
		-0.925345, 0.363174, 0.108819,
		6.108819, 17.419567, 16.966438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.782663, 17.879543, 16.696730>,  <6.756560, 17.165346, 16.890265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.782663, 17.879543, 16.696730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465189, 17.834763, 16.935905>,  <6.274704, 17.807894, 17.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465189, 17.834763, 16.935905>,  <6.782663, 17.879543, 16.696730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.465189, 17.834763, 16.935905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287818, 0.796841, 0.531230,
		-0.535933, 0.593727, -0.600220,
		-0.793685, -0.111950, 0.597939,
		6.227083, 17.801178, 17.115288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.582103, 18.573879, 16.805302>,  <6.782663, 17.879543, 16.696730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.582103, 18.573879, 16.805302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.401743, 18.359077, 17.090488>,  <6.293528, 18.230196, 17.261600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.401743, 18.359077, 17.090488>,  <6.582103, 18.573879, 16.805302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.401743, 18.359077, 17.090488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111537, 0.758613, 0.641924,
		-0.885579, 0.368965, -0.282162,
		-0.450899, -0.537002, 0.712965,
		6.266474, 18.197977, 17.304379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.300237, 19.100340, 17.212011>,  <6.582103, 18.573879, 16.805302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.300237, 19.100340, 17.212011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.230148, 18.804127, 17.471521>,  <6.188094, 18.626398, 17.627228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.230148, 18.804127, 17.471521>,  <6.300237, 19.100340, 17.212011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.230148, 18.804127, 17.471521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049864, 0.651447, 0.757054,
		-0.983265, 0.165004, -0.077223,
		-0.175223, -0.740534, 0.648773,
		6.177581, 18.581966, 17.666153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.899750, 19.438917, 17.608772>,  <6.300237, 19.100340, 17.212011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.899750, 19.438917, 17.608772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.019027, 19.105553, 17.794893>,  <6.090593, 18.905533, 17.906565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.019027, 19.105553, 17.794893>,  <5.899750, 19.438917, 17.608772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.019027, 19.105553, 17.794893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144997, 0.521371, 0.840921,
		-0.943429, -0.183288, 0.276310,
		0.298191, -0.833413, 0.465301,
		6.108484, 18.855528, 17.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.628205, 19.390301, 18.239498>,  <5.899750, 19.438917, 17.608772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.628205, 19.390301, 18.239498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976086, 19.194441, 18.264351>,  <6.184814, 19.076925, 18.279263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976086, 19.194441, 18.264351>,  <5.628205, 19.390301, 18.239498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.976086, 19.194441, 18.264351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251563, 0.548045, 0.797724,
		-0.424658, -0.678152, 0.599813,
		0.869702, -0.489650, 0.062134,
		6.236996, 19.047546, 18.282991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.705415, 19.515398, 18.908716>,  <5.628205, 19.390301, 18.239498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.705415, 19.515398, 18.908716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.058331, 19.348215, 18.822115>,  <6.270082, 19.247906, 18.770153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.058331, 19.348215, 18.822115>,  <5.705415, 19.515398, 18.908716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.058331, 19.348215, 18.822115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392851, 0.400477, 0.827820,
		-0.259288, -0.815432, 0.517532,
		0.882291, -0.417957, -0.216505,
		6.323019, 19.222828, 18.757164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.950166, 19.415388, 19.554701>,  <5.705415, 19.515398, 18.908716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.950166, 19.415388, 19.554701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260029, 19.406210, 19.301916>,  <6.445947, 19.400703, 19.150246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260029, 19.406210, 19.301916>,  <5.950166, 19.415388, 19.554701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.260029, 19.406210, 19.301916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561138, 0.485747, 0.670204,
		0.291597, -0.873798, 0.389163,
		0.774658, -0.022944, -0.631964,
		6.492427, 19.399326, 19.112328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.521902, 19.218235, 19.929417>,  <5.950166, 19.415388, 19.554701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.521902, 19.218235, 19.929417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.691386, 19.405413, 19.619190>,  <6.793076, 19.517719, 19.433054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.691386, 19.405413, 19.619190>,  <6.521902, 19.218235, 19.929417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.691386, 19.405413, 19.619190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633898, 0.458429, 0.622909,
		0.647027, -0.755562, -0.102388,
		0.423709, 0.467942, -0.775565,
		6.818499, 19.545795, 19.386520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.274880, 19.208204, 20.082249>,  <6.521902, 19.218235, 19.929417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.274880, 19.208204, 20.082249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197233, 19.501801, 19.821917>,  <7.150645, 19.677958, 19.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197233, 19.501801, 19.821917>,  <7.274880, 19.208204, 20.082249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.197233, 19.501801, 19.821917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574935, 0.622685, 0.530767,
		0.794839, -0.271153, -0.542870,
		-0.194118, 0.733989, -0.650829,
		7.138998, 19.721996, 19.626667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.926887, 19.502012, 19.913876>,  <7.274880, 19.208204, 20.082249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.926887, 19.502012, 19.913876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.669102, 19.782539, 19.792007>,  <7.514431, 19.950855, 19.718885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.669102, 19.782539, 19.792007>,  <7.926887, 19.502012, 19.913876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.669102, 19.782539, 19.792007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, 0.682456, 0.548134,
		0.592340, 0.205932, -0.778925,
		-0.644460, 0.701317, -0.304671,
		7.475764, 19.992935, 19.700605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.286950, 20.091503, 19.601427>,  <7.926887, 19.502012, 19.913876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.286950, 20.091503, 19.601427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938562, 20.247118, 19.721468>,  <7.729529, 20.340487, 19.793491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938562, 20.247118, 19.721468>,  <8.286950, 20.091503, 19.601427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.938562, 20.247118, 19.721468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491328, 0.686757, 0.535688,
		0.002305, 0.614017, -0.789290,
		-0.870972, 0.389035, 0.300100,
		7.677270, 20.363829, 19.811499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.400025, 20.901245, 19.564932>,  <8.286950, 20.091503, 19.601427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.400025, 20.901245, 19.564932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.081283, 20.813541, 19.790125>,  <7.890037, 20.760920, 19.925240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.081283, 20.813541, 19.790125>,  <8.400025, 20.901245, 19.564932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.081283, 20.813541, 19.790125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208508, 0.774772, 0.596869,
		-0.567049, 0.593004, -0.571665,
		-0.796856, -0.219257, 0.562980,
		7.842226, 20.747765, 19.959019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.013767, 21.452915, 19.662777>,  <8.400025, 20.901245, 19.564932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.013767, 21.452915, 19.662777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868477, 21.246273, 19.972921>,  <7.781303, 21.122288, 20.159008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868477, 21.246273, 19.972921>,  <8.013767, 21.452915, 19.662777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.868477, 21.246273, 19.972921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040911, 0.822553, 0.567216,
		-0.930803, 0.237748, -0.277637,
		-0.363225, -0.516608, 0.775361,
		7.759510, 21.091291, 20.205530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.534182, 21.898418, 20.061943>,  <8.013767, 21.452915, 19.662777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.534182, 21.898418, 20.061943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.661930, 21.602615, 20.298967>,  <7.738579, 21.425133, 20.441183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.661930, 21.602615, 20.298967>,  <7.534182, 21.898418, 20.061943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.661930, 21.602615, 20.298967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013352, 0.621736, 0.783113,
		-0.947536, -0.258014, 0.188690,
		0.319369, -0.739508, 0.592563,
		7.757741, 21.380762, 20.476736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.035190, 21.765934, 20.576221>,  <7.534182, 21.898418, 20.061943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.035190, 21.765934, 20.576221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394190, 21.654263, 20.712780>,  <7.609590, 21.587259, 20.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394190, 21.654263, 20.712780>,  <7.035190, 21.765934, 20.576221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.394190, 21.654263, 20.712780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107081, 0.613005, 0.782789,
		-0.427816, -0.739111, 0.520277,
		0.897500, -0.279178, 0.341398,
		7.663440, 21.570509, 20.815199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.005370, 21.340919, 21.172594>,  <7.035190, 21.765934, 20.576221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.005370, 21.340919, 21.172594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.357622, 21.530207, 21.163164>,  <7.568974, 21.643780, 21.157505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.357622, 21.530207, 21.163164>,  <7.005370, 21.340919, 21.172594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.357622, 21.530207, 21.163164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290352, 0.578312, 0.762398,
		0.374414, -0.664546, 0.646679,
		0.880630, 0.473217, -0.023576,
		7.621811, 21.672173, 21.156092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.383394, 21.272743, 21.825037>,  <7.005370, 21.340919, 21.172594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.383394, 21.272743, 21.825037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466381, 21.610535, 21.627527>,  <7.516173, 21.813210, 21.509022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466381, 21.610535, 21.627527>,  <7.383394, 21.272743, 21.825037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.466381, 21.610535, 21.627527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382620, 0.534597, 0.753530,
		0.900310, 0.032595, 0.434026,
		0.207467, 0.844478, -0.493775,
		7.528621, 21.863878, 21.479395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.037028, 20.993082, 22.426155>,  <7.383394, 21.272743, 21.825037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.037028, 20.993082, 22.426155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.696702, 20.932241, 22.627344>,  <6.492507, 20.895737, 22.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.696702, 20.932241, 22.627344>,  <7.037028, 20.993082, 22.426155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.696702, 20.932241, 22.627344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513640, 0.038795, -0.857128,
		0.110861, -0.987603, -0.111135,
		-0.850813, -0.152106, 0.502972,
		6.441458, 20.886610, 22.778236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.676980, 20.721575, 21.739979>,  <7.037028, 20.993082, 22.426155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.676980, 20.721575, 21.739979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414574, 20.606037, 22.018894>,  <6.257130, 20.536715, 22.186243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414574, 20.606037, 22.018894>,  <6.676980, 20.721575, 21.739979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.414574, 20.606037, 22.018894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708720, -0.081947, -0.700715,
		0.259539, -0.953862, -0.150952,
		-0.656015, -0.288845, 0.697290,
		6.217769, 20.519384, 22.228081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.412316, 20.081743, 21.627195>,  <6.676980, 20.721575, 21.739979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.412316, 20.081743, 21.627195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.143103, 20.296911, 21.830240>,  <5.981575, 20.426012, 21.952066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.143103, 20.296911, 21.830240>,  <6.412316, 20.081743, 21.627195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.143103, 20.296911, 21.830240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694705, -0.224273, -0.683437,
		-0.253800, -0.812609, 0.524645,
		-0.673030, 0.537929, 0.507604,
		5.941193, 20.458286, 21.982523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.855730, 19.681332, 22.007254>,  <6.412316, 20.081743, 21.627195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.855730, 19.681332, 22.007254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779427, 20.033867, 21.834347>,  <5.733644, 20.245388, 21.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779427, 20.033867, 21.834347>,  <5.855730, 19.681332, 22.007254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779427, 20.033867, 21.834347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690458, -0.433476, -0.579109,
		-0.697768, 0.187991, 0.691216,
		-0.190758, 0.881339, -0.432265,
		5.722199, 20.298269, 21.704668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.520493, 19.424591, 22.074362>,  <5.855730, 19.681332, 22.007254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.520493, 19.424591, 22.074362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.893552, 19.376560, 22.210449>,  <7.117388, 19.347742, 22.292103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.893552, 19.376560, 22.210449>,  <6.520493, 19.424591, 22.074362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.893552, 19.376560, 22.210449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245995, 0.478175, 0.843111,
		-0.263921, -0.870018, 0.416431,
		0.932648, -0.120075, 0.340220,
		7.173347, 19.340538, 22.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.734859, 19.068640, 22.709660>,  <6.520493, 19.424591, 22.074362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.734859, 19.068640, 22.709660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.992332, 19.374708, 22.704216>,  <7.146816, 19.558350, 22.700949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.992332, 19.374708, 22.704216>,  <6.734859, 19.068640, 22.709660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.992332, 19.374708, 22.704216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197266, 0.183076, 0.963104,
		0.739431, -0.617249, 0.268785,
		0.643683, 0.765171, -0.013610,
		7.185437, 19.604259, 22.700132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.335426, 18.617598, 23.122116>,  <6.734859, 19.068640, 22.709660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.335426, 18.617598, 23.122116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.630500, 18.362715, 23.211370>,  <7.807544, 18.209785, 23.264923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.630500, 18.362715, 23.211370>,  <7.335426, 18.617598, 23.122116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.630500, 18.362715, 23.211370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002041, -0.328391, -0.944540,
		0.675143, 0.697227, -0.240948,
		0.737684, -0.637208, 0.223134,
		7.851805, 18.171553, 23.278311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.088502, 18.670046, 22.594584>,  <7.335426, 18.617598, 23.122116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.088502, 18.670046, 22.594584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.972224, 18.325350, 22.760910>,  <7.902458, 18.118532, 22.860706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.972224, 18.325350, 22.760910>,  <8.088502, 18.670046, 22.594584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.972224, 18.325350, 22.760910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112253, -0.462295, -0.879592,
		0.950209, -0.209016, 0.231119,
		-0.290694, -0.861740, 0.415814,
		7.885016, 18.066828, 22.885654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.620351, 18.265089, 22.498419>,  <8.088502, 18.670046, 22.594584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.620351, 18.265089, 22.498419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297221, 18.035656, 22.552713>,  <8.103343, 17.897997, 22.585291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297221, 18.035656, 22.552713>,  <8.620351, 18.265089, 22.498419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297221, 18.035656, 22.552713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260164, -0.553622, -0.791086,
		0.528899, -0.603745, 0.596454,
		-0.807824, -0.573581, 0.135738,
		8.054873, 17.863583, 22.593435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.902883, 17.509172, 22.541142>,  <8.620351, 18.265089, 22.498419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.902883, 17.509172, 22.541142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.524521, 17.525023, 22.412334>,  <8.297504, 17.534533, 22.335051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.524521, 17.525023, 22.412334>,  <8.902883, 17.509172, 22.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.524521, 17.525023, 22.412334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269886, -0.454775, -0.848729,
		-0.180077, -0.889725, 0.419479,
		-0.945904, 0.039625, -0.322019,
		8.240749, 17.536911, 22.315729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.842901, 16.891476, 22.179918>,  <8.902883, 17.509172, 22.541142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.842901, 16.891476, 22.179918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.559103, 17.134092, 22.036407>,  <8.388824, 17.279663, 21.950300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.559103, 17.134092, 22.036407>,  <8.842901, 16.891476, 22.179918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.559103, 17.134092, 22.036407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151225, -0.366212, -0.918161,
		-0.688294, -0.705687, 0.168101,
		-0.709494, 0.606544, -0.358779,
		8.346254, 17.316055, 21.928774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.552196, 16.400703, 21.688213>,  <8.842901, 16.891476, 22.179918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.552196, 16.400703, 21.688213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.400001, 16.755621, 21.583956>,  <8.308683, 16.968573, 21.521400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.400001, 16.755621, 21.583956>,  <8.552196, 16.400703, 21.688213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.400001, 16.755621, 21.583956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046192, -0.299725, -0.952907,
		-0.923632, -0.350529, 0.155028,
		-0.380487, 0.887296, -0.260644,
		8.285854, 17.021811, 21.505762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.866052, 16.366890, 21.346743>,  <8.552196, 16.400703, 21.688213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.866052, 16.366890, 21.346743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.033016, 16.708038, 21.221283>,  <8.133195, 16.912727, 21.146008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.033016, 16.708038, 21.221283>,  <7.866052, 16.366890, 21.346743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.033016, 16.708038, 21.221283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097130, -0.301304, -0.948568,
		-0.903512, 0.426408, -0.042928,
		0.417411, 0.852873, -0.313649,
		8.158239, 16.963900, 21.127188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.437232, 16.685169, 20.807180>,  <7.866052, 16.366890, 21.346743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.437232, 16.685169, 20.807180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.795807, 16.848364, 20.737961>,  <8.010952, 16.946281, 20.696428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.795807, 16.848364, 20.737961>,  <7.437232, 16.685169, 20.807180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.795807, 16.848364, 20.737961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113792, -0.165487, -0.979625,
		-0.428312, 0.897864, -0.101924,
		0.896438, 0.407987, -0.173050,
		8.064738, 16.970760, 20.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.331181, 16.983541, 20.162436>,  <7.437232, 16.685169, 20.807180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.331181, 16.983541, 20.162436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.724913, 17.017574, 20.224216>,  <7.961152, 17.037994, 20.261286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.724913, 17.017574, 20.224216>,  <7.331181, 16.983541, 20.162436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.724913, 17.017574, 20.224216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159564, -0.056922, -0.985545,
		-0.075061, 0.994747, -0.069606,
		0.984330, 0.085082, 0.154453,
		8.020212, 17.043098, 20.270552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.599552, 17.458561, 19.713051>,  <7.331181, 16.983541, 20.162436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.599552, 17.458561, 19.713051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.911505, 17.218294, 19.783457>,  <8.098677, 17.074133, 19.825701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.911505, 17.218294, 19.783457>,  <7.599552, 17.458561, 19.713051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.911505, 17.218294, 19.783457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074051, -0.190687, -0.978854,
		0.621530, 0.776425, -0.104234,
		0.779882, -0.600669, 0.176013,
		8.145470, 17.038094, 19.836260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.021093, 17.536734, 19.156652>,  <7.599552, 17.458561, 19.713051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.021093, 17.536734, 19.156652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.166809, 17.203636, 19.323423>,  <8.254239, 17.003777, 19.423485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.166809, 17.203636, 19.323423>,  <8.021093, 17.536734, 19.156652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.166809, 17.203636, 19.323423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131578, -0.397174, -0.908262,
		0.921944, 0.385729, -0.035115,
		0.364290, -0.832746, 0.416926,
		8.276096, 16.953812, 19.448502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.642408, 17.436407, 18.822527>,  <8.021093, 17.536734, 19.156652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.642408, 17.436407, 18.822527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542531, 17.087011, 18.989700>,  <8.482604, 16.877375, 19.090004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542531, 17.087011, 18.989700>,  <8.642408, 17.436407, 18.822527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.542531, 17.087011, 18.989700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166580, -0.463919, -0.870075,
		0.953889, -0.147633, 0.261343,
		-0.249694, -0.873489, 0.417934,
		8.467623, 16.824965, 19.115080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.070045, 16.938059, 18.594177>,  <8.642408, 17.436407, 18.822527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.070045, 16.938059, 18.594177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775108, 16.697760, 18.717745>,  <8.598146, 16.553579, 18.791885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775108, 16.697760, 18.717745>,  <9.070045, 16.938059, 18.594177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775108, 16.697760, 18.717745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028678, -0.484732, -0.874193,
		0.674914, -0.635718, 0.374640,
		-0.737339, -0.600748, 0.308921,
		8.553906, 16.517534, 18.810421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.298621, 16.264730, 18.400475>,  <9.070045, 16.938059, 18.594177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.298621, 16.264730, 18.400475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900027, 16.259937, 18.433636>,  <8.660871, 16.257061, 18.453531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900027, 16.259937, 18.433636>,  <9.298621, 16.264730, 18.400475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.900027, 16.259937, 18.433636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065928, -0.498309, -0.864489,
		0.051668, -0.866917, 0.495768,
		-0.996485, -0.011981, 0.082901,
		8.601082, 16.256344, 18.458506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.014497, 15.547727, 18.208084>,  <9.298621, 16.264730, 18.400475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.014497, 15.547727, 18.208084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692010, 15.784080, 18.196274>,  <8.498518, 15.925892, 18.189188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692010, 15.784080, 18.196274>,  <9.014497, 15.547727, 18.208084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692010, 15.784080, 18.196274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209425, -0.331708, -0.919843,
		-0.553314, -0.735409, 0.391175,
		-0.806217, 0.590884, -0.029526,
		8.450145, 15.961345, 18.187416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.433383, 15.121505, 18.080927>,  <9.014497, 15.547727, 18.208084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.433383, 15.121505, 18.080927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.262558, 15.463744, 17.963917>,  <8.160063, 15.669087, 17.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.262558, 15.463744, 17.963917>,  <8.433383, 15.121505, 18.080927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.262558, 15.463744, 17.963917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243952, -0.420534, -0.873864,
		-0.870693, -0.301832, 0.388319,
		-0.427062, 0.855599, -0.292523,
		8.134439, 15.720424, 17.876160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.816248, 14.964454, 17.844351>,  <8.433383, 15.121505, 18.080927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.816248, 14.964454, 17.844351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.929094, 15.300326, 17.658730>,  <7.996801, 15.501850, 17.547358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.929094, 15.300326, 17.658730>,  <7.816248, 14.964454, 17.844351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.929094, 15.300326, 17.658730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256307, -0.400153, -0.879877,
		-0.924509, 0.367166, 0.102327,
		0.282115, 0.839682, -0.464052,
		8.013728, 15.552231, 17.519514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.301668, 14.955808, 17.319372>,  <7.816248, 14.964454, 17.844351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.301668, 14.955808, 17.319372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568483, 15.233541, 17.211327>,  <7.728572, 15.400181, 17.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568483, 15.233541, 17.211327>,  <7.301668, 14.955808, 17.319372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.568483, 15.233541, 17.211327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242865, -0.140105, -0.959889,
		-0.704327, 0.705884, 0.075174,
		0.667038, 0.694333, -0.270115,
		7.768594, 15.441840, 17.130293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.996909, 15.541687, 17.075583>,  <7.301668, 14.955808, 17.319372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.996909, 15.541687, 17.075583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.359307, 15.590259, 16.913383>,  <7.576746, 15.619401, 16.816065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.359307, 15.590259, 16.913383>,  <6.996909, 15.541687, 17.075583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.359307, 15.590259, 16.913383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422520, 0.201768, -0.883610,
		-0.025479, 0.971877, 0.234107,
		0.905996, 0.121428, -0.405496,
		7.631106, 15.626687, 16.791735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.893084, 16.109186, 16.640858>,  <6.996909, 15.541687, 17.075583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.893084, 16.109186, 16.640858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.220637, 15.919119, 16.512081>,  <7.417169, 15.805079, 16.434814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.220637, 15.919119, 16.512081>,  <6.893084, 16.109186, 16.640858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.220637, 15.919119, 16.512081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191235, 0.302985, -0.933611,
		0.541164, 0.826085, 0.157241,
		0.818883, -0.475167, -0.321941,
		7.466302, 15.776568, 16.415499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177255, 16.569252, 16.105076>,  <6.893084, 16.109186, 16.640858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177255, 16.569252, 16.105076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.324815, 16.204006, 16.035637>,  <7.413351, 15.984859, 15.993974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.324815, 16.204006, 16.035637>,  <7.177255, 16.569252, 16.105076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.324815, 16.204006, 16.035637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205797, 0.101893, -0.973276,
		0.906400, 0.394766, -0.150328,
		0.368899, -0.913114, -0.173598,
		7.435484, 15.930072, 15.983558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.635267, 16.580372, 15.409196>,  <7.177255, 16.569252, 16.105076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.635267, 16.580372, 15.409196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513724, 16.203623, 15.466531>,  <7.440799, 15.977573, 15.500932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513724, 16.203623, 15.466531>,  <7.635267, 16.580372, 15.409196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.513724, 16.203623, 15.466531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327985, -0.037840, -0.943925,
		0.894482, -0.333829, -0.297423,
		-0.303855, -0.941874, 0.143338,
		7.422568, 15.921061, 15.509532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.896173, 16.232025, 14.816281>,  <7.635267, 16.580372, 15.409196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.896173, 16.232025, 14.816281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624944, 15.981429, 14.970025>,  <7.462207, 15.831072, 15.062271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624944, 15.981429, 14.970025>,  <7.896173, 16.232025, 14.816281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624944, 15.981429, 14.970025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383283, -0.144811, -0.912208,
		0.627148, -0.765860, -0.141930,
		-0.678071, -0.626489, 0.384359,
		7.421523, 15.793483, 15.085333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.493628, 16.800097, 14.422469>,  <7.896173, 16.232025, 14.816281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.493628, 16.800097, 14.422469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.147140, 16.601793, 14.397537>,  <6.939247, 16.482811, 14.382578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.147140, 16.601793, 14.397537>,  <7.493628, 16.800097, 14.422469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.147140, 16.601793, 14.397537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498781, -0.850527, -0.166796,
		0.029677, -0.175571, 0.984019,
		-0.866220, -0.495760, -0.062330,
		6.887274, 16.453066, 14.378839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294696, 16.992346, 14.584767>,  <7.493628, 16.800097, 14.422469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294696, 16.992346, 14.584767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323791, 17.389763, 14.549936>,  <8.341248, 17.628214, 14.529037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323791, 17.389763, 14.549936>,  <8.294696, 16.992346, 14.584767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.323791, 17.389763, 14.549936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921758, -0.033625, 0.386305,
		0.380883, -0.108363, -0.918251,
		0.072737, 0.993542, -0.087078,
		8.345612, 17.687826, 14.523813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.948372, 17.272226, 14.210702>,  <8.294696, 16.992346, 14.584767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.948372, 17.272226, 14.210702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.843159, 17.526384, 14.501105>,  <8.780031, 17.678879, 14.675347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.843159, 17.526384, 14.501105>,  <8.948372, 17.272226, 14.210702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.843159, 17.526384, 14.501105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960514, 0.101712, 0.258975,
		0.090708, 0.765459, -0.637059,
		-0.263032, 0.635395, 0.726008,
		8.764249, 17.717003, 14.718907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.344037, 17.842968, 14.149908>,  <8.948372, 17.272226, 14.210702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.344037, 17.842968, 14.149908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.234186, 17.790016, 14.530866>,  <9.168276, 17.758245, 14.759440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.234186, 17.790016, 14.530866>,  <9.344037, 17.842968, 14.149908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.234186, 17.790016, 14.530866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951675, 0.104169, 0.288899,
		-0.137454, 0.985710, 0.097374,
		-0.274628, -0.132379, 0.952395,
		9.151798, 17.750303, 14.816584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.619652, 18.341963, 14.654084>,  <9.344037, 17.842968, 14.149908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.619652, 18.341963, 14.654084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.570417, 17.979753, 14.816504>,  <9.540877, 17.762428, 14.913957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.570417, 17.979753, 14.816504>,  <9.619652, 18.341963, 14.654084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.570417, 17.979753, 14.816504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908423, 0.061914, 0.413442,
		-0.399522, 0.419755, 0.814977,
		-0.123086, -0.905523, 0.406051,
		9.533492, 17.708096, 14.938319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.636328, 18.328321, 15.378210>,  <9.619652, 18.341963, 14.654084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.636328, 18.328321, 15.378210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794485, 18.054358, 15.133405>,  <9.889380, 17.889978, 14.986522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794485, 18.054358, 15.133405>,  <9.636328, 18.328321, 15.378210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.794485, 18.054358, 15.133405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916599, 0.337203, 0.214803,
		0.059251, -0.645902, 0.761117,
		0.395392, -0.684912, -0.612013,
		9.913103, 17.848885, 14.949800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.263440, 18.031319, 15.678879>,  <9.636328, 18.328321, 15.378210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.263440, 18.031319, 15.678879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280228, 17.981609, 15.282334>,  <10.290300, 17.951784, 15.044408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280228, 17.981609, 15.282334>,  <10.263440, 18.031319, 15.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.280228, 17.981609, 15.282334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849543, 0.526662, -0.030057,
		0.525847, -0.840942, 0.127680,
		0.041968, -0.124275, -0.991360,
		10.292818, 17.944326, 14.984926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.871529, 17.613661, 15.425059>,  <10.263440, 18.031319, 15.678879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.871529, 17.613661, 15.425059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761050, 17.837072, 15.112199>,  <10.694763, 17.971119, 14.924482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761050, 17.837072, 15.112199>,  <10.871529, 17.613661, 15.425059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.761050, 17.837072, 15.112199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951220, 0.275255, -0.139341,
		0.137464, -0.782483, -0.607308,
		-0.276197, 0.558529, -0.782151,
		10.678191, 18.004631, 14.877554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.484537, 17.310038, 15.662318>,  <10.871529, 17.613661, 15.425059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.484537, 17.310038, 15.662318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.847288, 17.248474, 15.505405>,  <12.064939, 17.211536, 15.411258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.847288, 17.248474, 15.505405>,  <11.484537, 17.310038, 15.662318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.847288, 17.248474, 15.505405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228661, -0.602210, 0.764890,
		-0.353956, -0.783362, -0.510939,
		0.906879, -0.153906, -0.392281,
		12.119351, 17.202303, 15.387721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.723546, 16.541105, 15.783299>,  <11.484537, 17.310038, 15.662318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.723546, 16.541105, 15.783299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064648, 16.742998, 15.729548>,  <12.269308, 16.864134, 15.697298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064648, 16.742998, 15.729548>,  <11.723546, 16.541105, 15.783299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064648, 16.742998, 15.729548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414237, -0.496828, 0.762607,
		0.318150, -0.705979, -0.632751,
		0.852753, 0.504733, -0.134377,
		12.320474, 16.894419, 15.689236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228461, 15.980043, 15.919938>,  <11.723546, 16.541105, 15.783299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228461, 15.980043, 15.919938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429115, 16.325640, 15.937282>,  <12.549508, 16.532997, 15.947687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.429115, 16.325640, 15.937282>,  <12.228461, 15.980043, 15.919938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429115, 16.325640, 15.937282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412281, -0.282832, 0.866043,
		0.760517, -0.416563, -0.498086,
		0.501636, 0.863992, 0.043358,
		12.579606, 16.584837, 15.950289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.946542, 15.788043, 16.107044>,  <12.228461, 15.980043, 15.919938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.946542, 15.788043, 16.107044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887070, 16.170252, 16.208925>,  <12.851386, 16.399576, 16.270054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887070, 16.170252, 16.208925>,  <12.946542, 15.788043, 16.107044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887070, 16.170252, 16.208925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411890, -0.174322, 0.894404,
		0.899022, 0.237890, -0.367651,
		-0.148680, 0.955521, 0.254704,
		12.842465, 16.456907, 16.285336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479312, 15.934163, 16.576458>,  <12.946542, 15.788043, 16.107044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479312, 15.934163, 16.576458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212202, 16.226210, 16.634430>,  <13.051936, 16.401438, 16.669214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212202, 16.226210, 16.634430>,  <13.479312, 15.934163, 16.576458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212202, 16.226210, 16.634430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279712, 0.065694, 0.957834,
		0.689810, 0.680157, -0.248091,
		-0.667776, 0.730117, 0.144931,
		13.011869, 16.445244, 16.677910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874743, 16.470669, 16.947100>,  <13.479312, 15.934163, 16.576458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874743, 16.470669, 16.947100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482445, 16.514503, 17.011763>,  <13.247066, 16.540804, 17.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482445, 16.514503, 17.011763>,  <13.874743, 16.470669, 16.947100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482445, 16.514503, 17.011763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156776, -0.051820, 0.986274,
		0.116458, 0.992626, 0.033642,
		-0.980744, 0.109585, 0.161655,
		13.188222, 16.547379, 17.060259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868289, 16.843254, 17.538206>,  <13.874743, 16.470669, 16.947100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868289, 16.843254, 17.538206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500505, 16.688290, 17.511349>,  <13.279836, 16.595310, 17.495234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500505, 16.688290, 17.511349>,  <13.868289, 16.843254, 17.538206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500505, 16.688290, 17.511349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011605, -0.143955, 0.989516,
		-0.393017, 0.910598, 0.127865,
		-0.919458, -0.387413, -0.067144,
		13.224669, 16.572065, 17.491205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412543, 17.123541, 18.032377>,  <13.868289, 16.843254, 17.538206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412543, 17.123541, 18.032377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.254128, 16.760000, 17.980001>,  <13.159080, 16.541876, 17.948576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.254128, 16.760000, 17.980001>,  <13.412543, 17.123541, 18.032377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.254128, 16.760000, 17.980001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031718, -0.128974, 0.991140,
		-0.917686, 0.396683, 0.022252,
		-0.396038, -0.908850, -0.130940,
		13.135317, 16.487345, 17.940720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.998206, 17.089504, 18.558546>,  <13.412543, 17.123541, 18.032377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.998206, 17.089504, 18.558546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994016, 16.700531, 18.465364>,  <12.991502, 16.467148, 18.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994016, 16.700531, 18.465364>,  <12.998206, 17.089504, 18.558546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994016, 16.700531, 18.465364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086007, -0.231228, 0.969090,
		-0.996239, 0.030188, -0.081213,
		-0.010476, -0.972431, -0.232955,
		12.990872, 16.408802, 18.395477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600413, 16.616625, 19.044598>,  <12.998206, 17.089504, 18.558546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600413, 16.616625, 19.044598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871983, 16.379890, 18.870796>,  <13.034924, 16.237850, 18.766516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871983, 16.379890, 18.870796>,  <12.600413, 16.616625, 19.044598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871983, 16.379890, 18.870796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075951, -0.532012, 0.843324,
		-0.730271, -0.605552, -0.316244,
		0.678922, -0.591836, -0.434505,
		13.075659, 16.202339, 18.740444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401785, 15.997169, 19.369797>,  <12.600413, 16.616625, 19.044598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401785, 15.997169, 19.369797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.767484, 15.927544, 19.223452>,  <12.986903, 15.885769, 19.135645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.767484, 15.927544, 19.223452>,  <12.401785, 15.997169, 19.369797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.767484, 15.927544, 19.223452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178549, -0.637506, 0.749471,
		-0.363695, -0.750526, -0.551759,
		0.914246, -0.174063, -0.365862,
		13.041758, 15.875324, 19.113693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498971, 15.215864, 19.427864>,  <12.401785, 15.997169, 19.369797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498971, 15.215864, 19.427864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.852965, 15.396558, 19.382719>,  <13.065362, 15.504973, 19.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.852965, 15.396558, 19.382719>,  <12.498971, 15.215864, 19.427864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.852965, 15.396558, 19.382719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386654, -0.577938, 0.718669,
		0.259421, -0.679650, -0.686131,
		0.884986, 0.451734, -0.112861,
		13.118461, 15.532078, 19.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874872, 14.718392, 19.579269>,  <12.498971, 15.215864, 19.427864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874872, 14.718392, 19.579269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156751, 15.001037, 19.604900>,  <13.325878, 15.170623, 19.620279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156751, 15.001037, 19.604900>,  <12.874872, 14.718392, 19.579269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.156751, 15.001037, 19.604900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444732, -0.510277, 0.736091,
		0.552826, -0.490224, -0.673842,
		0.704696, 0.706610, 0.064076,
		13.368159, 15.213019, 19.624123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528803, 14.352265, 19.584991>,  <12.874872, 14.718392, 19.579269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528803, 14.352265, 19.584991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585035, 14.721343, 19.728588>,  <13.618775, 14.942789, 19.814745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585035, 14.721343, 19.728588>,  <13.528803, 14.352265, 19.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585035, 14.721343, 19.728588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474227, -0.381045, 0.793671,
		0.869106, 0.058668, -0.491134,
		0.140581, 0.922693, 0.358990,
		13.627210, 14.998151, 19.836285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214843, 14.377757, 19.845161>,  <13.528803, 14.352265, 19.584991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214843, 14.377757, 19.845161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034211, 14.669478, 20.050760>,  <13.925832, 14.844511, 20.174120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034211, 14.669478, 20.050760>,  <14.214843, 14.377757, 19.845161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.034211, 14.669478, 20.050760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376899, -0.366234, 0.850776,
		0.808717, 0.577918, -0.109490,
		-0.451580, 0.729303, 0.513996,
		13.898737, 14.888269, 20.204960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675212, 14.678078, 20.258181>,  <14.214843, 14.377757, 19.845161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675212, 14.678078, 20.258181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321668, 14.743600, 20.433432>,  <14.109541, 14.782913, 20.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321668, 14.743600, 20.433432>,  <14.675212, 14.678078, 20.258181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321668, 14.743600, 20.433432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377005, -0.304960, 0.874567,
		0.276871, 0.938172, 0.207786,
		-0.883861, 0.163806, 0.438130,
		14.056509, 14.792742, 20.564871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763940, 14.550246, 20.943995>,  <14.675212, 14.678078, 20.258181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763940, 14.550246, 20.943995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369401, 14.613356, 20.962873>,  <14.132678, 14.651221, 20.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369401, 14.613356, 20.962873>,  <14.763940, 14.550246, 20.943995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.369401, 14.613356, 20.962873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009710, -0.230376, 0.973053,
		0.164395, 0.960226, 0.225699,
		-0.986347, 0.157774, 0.047196,
		14.073497, 14.660687, 20.977032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618506, 14.972534, 21.602934>,  <14.763940, 14.550246, 20.943995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618506, 14.972534, 21.602934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277619, 14.789984, 21.500605>,  <14.073087, 14.680453, 21.439207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277619, 14.789984, 21.500605>,  <14.618506, 14.972534, 21.602934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.277619, 14.789984, 21.500605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060655, -0.399488, 0.914729,
		-0.519660, 0.795065, 0.312769,
		-0.852217, -0.456377, -0.255823,
		14.021955, 14.653070, 21.423859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095707, 15.072639, 22.130777>,  <14.618506, 14.972534, 21.602934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095707, 15.072639, 22.130777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955658, 14.764048, 21.918274>,  <13.871629, 14.578893, 21.790771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955658, 14.764048, 21.918274>,  <14.095707, 15.072639, 22.130777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955658, 14.764048, 21.918274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114731, -0.527565, 0.841731,
		-0.929651, 0.355661, 0.096200,
		-0.350122, -0.771479, -0.531257,
		13.850621, 14.532604, 21.758896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481533, 14.844066, 22.420753>,  <14.095707, 15.072639, 22.130777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481533, 14.844066, 22.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576689, 14.518872, 22.208162>,  <13.633782, 14.323756, 22.080608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576689, 14.518872, 22.208162>,  <13.481533, 14.844066, 22.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576689, 14.518872, 22.208162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369843, -0.581783, 0.724392,
		-0.898123, 0.024238, -0.439076,
		0.237889, -0.812983, -0.531477,
		13.648056, 14.274978, 22.048719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030949, 14.311482, 22.681162>,  <13.481533, 14.844066, 22.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030949, 14.311482, 22.681162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292923, 14.087015, 22.478718>,  <13.450108, 13.952335, 22.357250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292923, 14.087015, 22.478718>,  <13.030949, 14.311482, 22.681162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292923, 14.087015, 22.478718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101147, -0.728812, 0.677202,
		-0.748892, -0.392325, -0.534080,
		0.654927, -0.561172, -0.506119,
		13.489404, 13.918665, 22.326883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751919, 13.598311, 22.526400>,  <13.030949, 14.311482, 22.681162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751919, 13.598311, 22.526400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151863, 13.591628, 22.526596>,  <13.391829, 13.587618, 22.526714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151863, 13.591628, 22.526596>,  <12.751919, 13.598311, 22.526400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151863, 13.591628, 22.526596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010874, -0.627895, 0.778222,
		-0.012695, -0.778118, -0.627989,
		0.999860, -0.016709, 0.000490,
		13.451821, 13.586616, 22.526743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876528, 12.897836, 22.521774>,  <12.751919, 13.598311, 22.526400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876528, 12.897836, 22.521774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221732, 13.052990, 22.651239>,  <13.428855, 13.146083, 22.728918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221732, 13.052990, 22.651239>,  <12.876528, 12.897836, 22.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221732, 13.052990, 22.651239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007117, -0.649950, 0.759944,
		0.505135, -0.653536, -0.563674,
		0.863011, 0.387886, 0.323662,
		13.480636, 13.169355, 22.748339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258538, 12.343616, 22.736057>,  <12.876528, 12.897836, 22.521774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258538, 12.343616, 22.736057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450723, 12.626522, 22.943493>,  <13.566033, 12.796266, 23.067955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450723, 12.626522, 22.943493>,  <13.258538, 12.343616, 22.736057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450723, 12.626522, 22.943493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060866, -0.562995, 0.824216,
		0.874902, -0.427567, -0.227449,
		0.480460, 0.707265, 0.518590,
		13.594861, 12.838701, 23.099070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880378, 11.967454, 23.127985>,  <13.258538, 12.343616, 22.736057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880378, 11.967454, 23.127985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795891, 12.305779, 23.323938>,  <13.745198, 12.508775, 23.441509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795891, 12.305779, 23.323938>,  <13.880378, 11.967454, 23.127985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795891, 12.305779, 23.323938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155913, -0.523927, 0.837372,
		0.964924, 0.100489, 0.242537,
		-0.211218, 0.845815, 0.489882,
		13.732526, 12.559524, 23.470903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299886, 12.066927, 23.790339>,  <13.880378, 11.967454, 23.127985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299886, 12.066927, 23.790339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958662, 12.266363, 23.851917>,  <13.753928, 12.386024, 23.888865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958662, 12.266363, 23.851917>,  <14.299886, 12.066927, 23.790339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958662, 12.266363, 23.851917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145967, -0.511251, 0.846945,
		0.500984, 0.700022, 0.508904,
		-0.853058, 0.498589, 0.153949,
		13.702744, 12.415940, 23.898102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283134, 11.993952, 24.464310>,  <14.299886, 12.066927, 23.790339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283134, 11.993952, 24.464310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919812, 12.144071, 24.390404>,  <13.701819, 12.234141, 24.346060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919812, 12.144071, 24.390404>,  <14.283134, 11.993952, 24.464310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.919812, 12.144071, 24.390404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276093, -0.206026, 0.938790,
		0.314258, 0.903718, 0.290751,
		-0.908303, 0.375297, -0.184765,
		13.647322, 12.256660, 24.334974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080053, 12.479340, 25.063822>,  <14.283134, 11.993952, 24.464310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080053, 12.479340, 25.063822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.755285, 12.351254, 24.868580>,  <13.560425, 12.274402, 24.751434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.755285, 12.351254, 24.868580>,  <14.080053, 12.479340, 25.063822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.755285, 12.351254, 24.868580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354551, -0.393761, 0.848084,
		-0.463767, 0.861635, 0.206169,
		-0.811920, -0.320215, -0.488107,
		13.511709, 12.255189, 24.722147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.494039, 12.659575, 25.435276>,  <14.080053, 12.479340, 25.063822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.494039, 12.659575, 25.435276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313013, 12.368586, 25.228989>,  <13.204398, 12.193992, 25.105215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313013, 12.368586, 25.228989>,  <13.494039, 12.659575, 25.435276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313013, 12.368586, 25.228989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411606, -0.342624, 0.844505,
		-0.791055, 0.594465, -0.144374,
		-0.452563, -0.727475, -0.515719,
		13.177244, 12.150343, 25.074272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850897, 12.649523, 25.772999>,  <13.494039, 12.659575, 25.435276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850897, 12.649523, 25.772999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917493, 12.303493, 25.583714>,  <12.957451, 12.095876, 25.470142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917493, 12.303493, 25.583714>,  <12.850897, 12.649523, 25.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917493, 12.303493, 25.583714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484405, -0.489763, 0.724903,
		-0.858855, 0.108537, -0.500587,
		0.166490, -0.865074, -0.473211,
		12.967440, 12.043971, 25.441750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216699, 12.186284, 25.777897>,  <12.850897, 12.649523, 25.772999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216699, 12.186284, 25.777897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515611, 11.930237, 25.706541>,  <12.694958, 11.776608, 25.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515611, 11.930237, 25.706541>,  <12.216699, 12.186284, 25.777897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515611, 11.930237, 25.706541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384192, -0.635224, 0.669991,
		-0.542189, -0.432136, -0.720618,
		0.747281, -0.640117, -0.178388,
		12.739795, 11.738201, 25.653025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853869, 11.620347, 25.872646>,  <12.216699, 12.186284, 25.777897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853869, 11.620347, 25.872646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239899, 11.523307, 25.912199>,  <12.471517, 11.465082, 25.935930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239899, 11.523307, 25.912199>,  <11.853869, 11.620347, 25.872646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239899, 11.523307, 25.912199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230250, -0.605398, 0.761891,
		-0.124972, -0.758049, -0.640112,
		0.965073, -0.242601, 0.098883,
		12.529421, 11.450526, 25.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849504, 10.869502, 25.917711>,  <11.853869, 11.620347, 25.872646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849504, 10.869502, 25.917711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216649, 10.962994, 26.046021>,  <12.436936, 11.019089, 26.123007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216649, 10.962994, 26.046021>,  <11.849504, 10.869502, 25.917711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.216649, 10.962994, 26.046021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037276, -0.753873, 0.655962,
		0.395140, -0.614041, -0.683240,
		0.917864, 0.233729, 0.320775,
		12.492008, 11.033113, 26.142252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221480, 10.279290, 26.009594>,  <11.849504, 10.869502, 25.917711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221480, 10.279290, 26.009594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410256, 10.531130, 26.256454>,  <12.523522, 10.682234, 26.404572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410256, 10.531130, 26.256454>,  <12.221480, 10.279290, 26.009594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410256, 10.531130, 26.256454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162169, -0.626075, 0.762713,
		0.866587, -0.460038, -0.193369,
		0.471941, 0.629599, 0.617153,
		12.551839, 10.720010, 26.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737532, 9.870809, 26.379017>,  <12.221480, 10.279290, 26.009594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737532, 9.870809, 26.379017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.688010, 10.196489, 26.605909>,  <12.658298, 10.391897, 26.742044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.688010, 10.196489, 26.605909>,  <12.737532, 9.870809, 26.379017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.688010, 10.196489, 26.605909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140046, -0.580242, 0.802313,
		0.982375, 0.019891, 0.185861,
		-0.123803, 0.814201, 0.567229,
		12.650869, 10.440750, 26.776077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284209, 9.897094, 26.886017>,  <12.737532, 9.870809, 26.379017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284209, 9.897094, 26.886017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991182, 10.110626, 27.054953>,  <12.815366, 10.238746, 27.156313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991182, 10.110626, 27.054953>,  <13.284209, 9.897094, 26.886017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.991182, 10.110626, 27.054953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034666, -0.648905, 0.760080,
		0.679811, 0.542169, 0.493872,
		-0.732568, 0.533831, 0.422337,
		12.771412, 10.270776, 27.181654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459040, 9.775746, 27.469389>,  <13.284209, 9.897094, 26.886017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459040, 9.775746, 27.469389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117635, 9.973184, 27.536180>,  <12.912791, 10.091646, 27.576256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117635, 9.973184, 27.536180>,  <13.459040, 9.775746, 27.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117635, 9.973184, 27.536180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087921, -0.452277, 0.887533,
		0.513600, 0.742840, 0.429422,
		-0.853513, 0.493592, 0.166978,
		12.861581, 10.121262, 27.586273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446698, 9.862770, 28.158066>,  <13.459040, 9.775746, 27.469389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446698, 9.862770, 28.158066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058460, 9.940697, 28.101509>,  <12.825518, 9.987453, 28.067575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058460, 9.940697, 28.101509>,  <13.446698, 9.862770, 28.158066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058460, 9.940697, 28.101509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206328, -0.370757, 0.905521,
		0.123990, 0.908067, 0.400052,
		-0.970595, 0.194817, -0.141390,
		12.767282, 9.999142, 28.059092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.142098, 10.305980, 28.705584>,  <13.446698, 9.862770, 28.158066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.142098, 10.305980, 28.705584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850458, 10.080790, 28.549908>,  <12.675474, 9.945676, 28.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850458, 10.080790, 28.549908>,  <13.142098, 10.305980, 28.705584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850458, 10.080790, 28.549908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164867, -0.407438, 0.898228,
		-0.664251, 0.719064, 0.204248,
		-0.729102, -0.562975, -0.389191,
		12.631727, 9.911897, 28.433151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557812, 10.402009, 29.150543>,  <13.142098, 10.305980, 28.705584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557812, 10.402009, 29.150543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.428862, 10.077519, 28.955406>,  <12.351491, 9.882826, 28.838324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.428862, 10.077519, 28.955406>,  <12.557812, 10.402009, 29.150543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.428862, 10.077519, 28.955406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320026, -0.391613, 0.862683,
		-0.890874, 0.434231, -0.133366,
		-0.322376, -0.811223, -0.487843,
		12.332149, 9.834152, 28.809053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847128, 10.142697, 29.350191>,  <12.557812, 10.402009, 29.150543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847128, 10.142697, 29.350191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093424, 9.842731, 29.253450>,  <12.241201, 9.662752, 29.195406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093424, 9.842731, 29.253450>,  <11.847128, 10.142697, 29.350191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.093424, 9.842731, 29.253450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304844, -0.509756, 0.804499,
		-0.726592, -0.421634, -0.542484,
		0.615738, -0.749915, -0.241852,
		12.278146, 9.617757, 29.180895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409662, 9.574852, 29.443186>,  <11.847128, 10.142697, 29.350191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409662, 9.574852, 29.443186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795740, 9.485774, 29.498039>,  <12.027387, 9.432327, 29.530951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795740, 9.485774, 29.498039>,  <11.409662, 9.574852, 29.443186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795740, 9.485774, 29.498039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225230, -0.441291, 0.868639,
		-0.132926, -0.869292, -0.476090,
		0.965196, -0.222695, 0.137132,
		12.085299, 9.418965, 29.539179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320984, 8.965377, 29.626299>,  <11.409662, 9.574852, 29.443186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320984, 8.965377, 29.626299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671443, 9.102086, 29.762272>,  <11.881719, 9.184112, 29.843855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671443, 9.102086, 29.762272>,  <11.320984, 8.965377, 29.626299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.671443, 9.102086, 29.762272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056388, -0.627687, 0.776421,
		0.478732, -0.699428, -0.530676,
		0.876149, 0.341773, 0.339933,
		11.934288, 9.204618, 29.864252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843551, 8.419538, 29.662090>,  <11.320984, 8.965377, 29.626299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843551, 8.419538, 29.662090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887122, 8.704955, 29.938927>,  <11.913265, 8.876205, 30.105028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887122, 8.704955, 29.938927>,  <11.843551, 8.419538, 29.662090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.887122, 8.704955, 29.938927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017235, -0.697487, 0.716390,
		0.993900, -0.066107, -0.088274,
		0.108928, 0.713542, 0.692093,
		11.919801, 8.919018, 30.146555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576882, 8.476334, 29.540270>,  <11.843551, 8.419538, 29.662090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576882, 8.476334, 29.540270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568929, 8.078885, 29.584673>,  <12.564157, 7.840416, 29.611315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568929, 8.078885, 29.584673>,  <12.576882, 8.476334, 29.540270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568929, 8.078885, 29.584673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957256, -0.050965, -0.284715,
		0.288556, 0.100600, 0.952163,
		-0.019885, -0.993621, 0.111006,
		12.562963, 7.780799, 29.617975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227959, 8.362664, 29.752979>,  <12.576882, 8.476334, 29.540270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227959, 8.362664, 29.752979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049356, 8.041984, 29.594030>,  <12.942194, 7.849575, 29.498661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049356, 8.041984, 29.594030>,  <13.227959, 8.362664, 29.752979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049356, 8.041984, 29.594030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817916, -0.185616, -0.544572,
		0.362826, -0.568173, 0.738605,
		-0.446508, -0.801702, -0.397371,
		12.915403, 7.801473, 29.474819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782245, 7.924551, 29.531614>,  <13.227959, 8.362664, 29.752979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782245, 7.924551, 29.531614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484887, 7.769801, 29.313370>,  <13.306473, 7.676951, 29.182423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484887, 7.769801, 29.313370>,  <13.782245, 7.924551, 29.531614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484887, 7.769801, 29.313370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667876, -0.385286, -0.636786,
		0.036139, -0.837785, 0.544804,
		-0.743395, -0.386874, -0.545613,
		13.261868, 7.653739, 29.149687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101248, 7.248489, 29.429077>,  <13.782245, 7.924551, 29.531614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101248, 7.248489, 29.429077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843374, 7.335542, 29.135950>,  <13.688650, 7.387773, 28.960073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843374, 7.335542, 29.135950>,  <14.101248, 7.248489, 29.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843374, 7.335542, 29.135950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671397, -0.297176, -0.678905,
		-0.365527, -0.929690, 0.045467,
		-0.644683, 0.217632, -0.732816,
		13.649969, 7.400831, 28.916105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969522, 6.618796, 29.047644>,  <14.101248, 7.248489, 29.429077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969522, 6.618796, 29.047644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902995, 6.938626, 28.816813>,  <13.863079, 7.130525, 28.678314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902995, 6.938626, 28.816813>,  <13.969522, 6.618796, 29.047644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902995, 6.938626, 28.816813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615896, -0.372799, -0.694041,
		-0.770072, -0.470848, -0.430454,
		-0.166315, 0.799576, -0.577076,
		13.853101, 7.178499, 28.643690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262383, 6.897597, 29.328907>,  <13.969522, 6.618796, 29.047644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262383, 6.897597, 29.328907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877120, 6.953418, 29.236950>,  <12.645962, 6.986911, 29.181776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877120, 6.953418, 29.236950>,  <13.262383, 6.897597, 29.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877120, 6.953418, 29.236950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219224, -0.087729, -0.971722,
		-0.155776, -0.986321, 0.053903,
		-0.963159, 0.139554, -0.229891,
		12.588172, 6.995284, 29.167982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240726, 6.352018, 28.730335>,  <13.262383, 6.897597, 29.328907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240726, 6.352018, 28.730335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029187, 6.690276, 28.701469>,  <12.902264, 6.893230, 28.684151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029187, 6.690276, 28.701469>,  <13.240726, 6.352018, 28.730335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029187, 6.690276, 28.701469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260178, 0.080600, -0.962191,
		-0.807854, -0.527627, -0.262643,
		-0.528847, 0.845644, -0.072164,
		12.870533, 6.943969, 28.679821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978985, 6.420810, 28.006384>,  <13.240726, 6.352018, 28.730335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978985, 6.420810, 28.006384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995170, 6.776953, 28.187767>,  <13.004880, 6.990639, 28.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995170, 6.776953, 28.187767>,  <12.978985, 6.420810, 28.006384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995170, 6.776953, 28.187767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164177, 0.441737, -0.881995,
		-0.985601, 0.110134, -0.128304,
		0.040461, 0.890359, 0.453457,
		13.007308, 7.044061, 28.323805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.406142, 6.850389, 27.716850>,  <12.978985, 6.420810, 28.006384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.406142, 6.850389, 27.716850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719892, 7.062288, 27.845926>,  <12.908141, 7.189427, 27.923372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719892, 7.062288, 27.845926>,  <12.406142, 6.850389, 27.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719892, 7.062288, 27.845926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000420, 0.520678, -0.853753,
		-0.620289, 0.669525, 0.408629,
		0.784373, 0.529745, 0.322690,
		12.955203, 7.221211, 27.942734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298412, 7.487015, 27.418516>,  <12.406142, 6.850389, 27.716850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298412, 7.487015, 27.418516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675849, 7.547887, 27.536144>,  <12.902310, 7.584411, 27.606722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.675849, 7.547887, 27.536144>,  <12.298412, 7.487015, 27.418516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.675849, 7.547887, 27.536144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147192, 0.602764, -0.784226,
		-0.296599, 0.783273, 0.546363,
		0.943591, 0.152180, 0.294071,
		12.958926, 7.593541, 27.624365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434939, 8.221734, 27.449965>,  <12.298412, 7.487015, 27.418516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434939, 8.221734, 27.449965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791857, 8.051634, 27.389336>,  <13.006007, 7.949574, 27.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791857, 8.051634, 27.389336>,  <12.434939, 8.221734, 27.449965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.791857, 8.051634, 27.389336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090291, 0.497055, -0.863009,
		0.442335, 0.756371, 0.481915,
		0.892294, -0.425251, -0.151571,
		13.059545, 7.924058, 27.343864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896595, 8.748978, 27.165310>,  <12.434939, 8.221734, 27.449965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896595, 8.748978, 27.165310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.066051, 8.402358, 27.059767>,  <13.167726, 8.194386, 26.996441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.066051, 8.402358, 27.059767>,  <12.896595, 8.748978, 27.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066051, 8.402358, 27.059767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300340, 0.409185, -0.861605,
		0.854589, 0.285765, 0.433608,
		0.423642, -0.866548, -0.263859,
		13.193144, 8.142393, 26.980610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502887, 8.941390, 26.975641>,  <12.896595, 8.748978, 27.165310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502887, 8.941390, 26.975641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445192, 8.579806, 26.814617>,  <13.410576, 8.362856, 26.718002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445192, 8.579806, 26.814617>,  <13.502887, 8.941390, 26.975641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445192, 8.579806, 26.814617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245212, 0.361474, -0.899560,
		0.958680, -0.228462, 0.169523,
		-0.144237, -0.903959, -0.402559,
		13.401921, 8.308619, 26.693850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098619, 8.804944, 26.595263>,  <13.502887, 8.941390, 26.975641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098619, 8.804944, 26.595263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855234, 8.526443, 26.442945>,  <13.709203, 8.359342, 26.351555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855234, 8.526443, 26.442945>,  <14.098619, 8.804944, 26.595263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855234, 8.526443, 26.442945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274051, 0.265966, -0.924206,
		0.744761, -0.666701, 0.028979,
		-0.608463, -0.696255, -0.380792,
		13.672695, 8.317566, 26.328709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.424974, 8.500793, 25.982586>,  <14.098619, 8.804944, 26.595263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.424974, 8.500793, 25.982586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.052867, 8.369699, 25.916628>,  <13.829602, 8.291043, 25.877052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.052867, 8.369699, 25.916628>,  <14.424974, 8.500793, 25.982586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.052867, 8.369699, 25.916628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108772, 0.182868, -0.977102,
		0.350383, -0.926903, -0.134468,
		-0.930269, -0.327734, -0.164895,
		13.773787, 8.271379, 25.867159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505424, 8.096374, 25.460758>,  <14.424974, 8.500793, 25.982586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505424, 8.096374, 25.460758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119631, 8.200059, 25.481062>,  <13.888154, 8.262270, 25.493244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119631, 8.200059, 25.481062>,  <14.505424, 8.096374, 25.460758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.119631, 8.200059, 25.481062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003980, 0.206415, -0.978456,
		-0.264108, -0.943505, -0.200116,
		-0.964485, 0.259214, 0.050761,
		13.830285, 8.277823, 25.496290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252897, 7.746481, 24.907587>,  <14.505424, 8.096374, 25.460758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252897, 7.746481, 24.907587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985085, 8.036850, 24.970535>,  <13.824397, 8.211071, 25.008305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985085, 8.036850, 24.970535>,  <14.252897, 7.746481, 24.907587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985085, 8.036850, 24.970535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176740, 0.050085, -0.982983,
		-0.721451, -0.685950, 0.094766,
		-0.669531, 0.725923, 0.157368,
		13.784225, 8.254626, 25.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674078, 7.513625, 24.446922>,  <14.252897, 7.746481, 24.907587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674078, 7.513625, 24.446922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652608, 7.903162, 24.535238>,  <13.639726, 8.136885, 24.588228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652608, 7.903162, 24.535238>,  <13.674078, 7.513625, 24.446922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652608, 7.903162, 24.535238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059939, 0.223851, -0.972779,
		-0.996758, -0.038980, -0.070386,
		-0.053675, 0.973844, 0.220789,
		13.636505, 8.195315, 24.601475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549738, 7.789400, 23.840176>,  <13.674078, 7.513625, 24.446922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549738, 7.789400, 23.840176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619999, 8.136382, 24.026365>,  <13.662156, 8.344571, 24.138079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619999, 8.136382, 24.026365>,  <13.549738, 7.789400, 23.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619999, 8.136382, 24.026365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001774, 0.473104, -0.881005,
		-0.984451, 0.153926, 0.084641,
		0.175653, 0.867456, 0.465474,
		13.672695, 8.396619, 24.166008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.049111, 8.412637, 23.578894>,  <13.549738, 7.789400, 23.840176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.049111, 8.412637, 23.578894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389097, 8.568032, 23.721237>,  <13.593089, 8.661269, 23.806644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389097, 8.568032, 23.721237>,  <13.049111, 8.412637, 23.578894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389097, 8.568032, 23.721237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167321, 0.441437, -0.881554,
		-0.499564, 0.808832, 0.310204,
		0.849964, 0.388489, 0.355861,
		13.644087, 8.684579, 23.827995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018956, 9.057633, 23.457806>,  <13.049111, 8.412637, 23.578894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018956, 9.057633, 23.457806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410480, 8.976499, 23.469070>,  <13.645393, 8.927817, 23.475830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410480, 8.976499, 23.469070>,  <13.018956, 9.057633, 23.457806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410480, 8.976499, 23.469070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095951, 0.332761, -0.938117,
		0.180914, 0.920938, 0.345171,
		0.978807, -0.202838, 0.028163,
		13.704122, 8.915648, 23.477520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341423, 9.531118, 22.964449>,  <13.018956, 9.057633, 23.457806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341423, 9.531118, 22.964449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621628, 9.251857, 23.023596>,  <13.789751, 9.084300, 23.059084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621628, 9.251857, 23.023596>,  <13.341423, 9.531118, 22.964449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621628, 9.251857, 23.023596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341872, 0.146423, -0.928269,
		0.626424, 0.700815, 0.341251,
		0.700512, -0.698154, 0.147866,
		13.831781, 9.042411, 23.067955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.071146, 9.869329, 23.084938>,  <13.341423, 9.531118, 22.964449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.071146, 9.869329, 23.084938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.993794, 9.525169, 22.896336>,  <13.947384, 9.318673, 22.783175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.993794, 9.525169, 22.896336>,  <14.071146, 9.869329, 23.084938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993794, 9.525169, 22.896336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302642, 0.404832, -0.862855,
		0.933280, -0.309556, 0.182107,
		-0.193379, -0.860399, -0.471506,
		13.935781, 9.267050, 22.754883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615778, 9.653897, 22.705086>,  <14.071146, 9.869329, 23.084938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.615778, 9.653897, 22.705086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295867, 9.508125, 22.514278>,  <14.103920, 9.420662, 22.399794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295867, 9.508125, 22.514278>,  <14.615778, 9.653897, 22.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295867, 9.508125, 22.514278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318134, 0.416555, -0.851629,
		0.509066, -0.832869, -0.217213,
		-0.799777, -0.364432, -0.477018,
		14.055933, 9.398796, 22.371174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824151, 9.427400, 22.002275>,  <14.615778, 9.653897, 22.705086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824151, 9.427400, 22.002275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434284, 9.516531, 21.994553>,  <14.200364, 9.570009, 21.989920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434284, 9.516531, 21.994553>,  <14.824151, 9.427400, 22.002275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434284, 9.516531, 21.994553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102430, 0.367962, -0.924182,
		-0.198829, -0.902747, -0.381465,
		-0.974667, 0.222828, -0.019307,
		14.141884, 9.583379, 21.988760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682149, 9.374023, 21.298496>,  <14.824151, 9.427400, 22.002275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682149, 9.374023, 21.298496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352512, 9.553964, 21.436197>,  <14.154731, 9.661928, 21.518818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352512, 9.553964, 21.436197>,  <14.682149, 9.374023, 21.298496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352512, 9.553964, 21.436197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150364, 0.412204, -0.898598,
		-0.546137, -0.792289, -0.272052,
		-0.824090, 0.449851, 0.344252,
		14.105286, 9.688919, 21.539473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127716, 9.212288, 20.864178>,  <14.682149, 9.374023, 21.298496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127716, 9.212288, 20.864178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.042110, 9.560324, 21.041780>,  <13.990746, 9.769145, 21.148342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.042110, 9.560324, 21.041780>,  <14.127716, 9.212288, 20.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.042110, 9.560324, 21.041780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194546, 0.407466, -0.892258,
		-0.957261, -0.277336, 0.082069,
		-0.214015, 0.870090, 0.444006,
		13.977906, 9.821351, 21.174982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869745, 9.580967, 20.385845>,  <14.127716, 9.212288, 20.864178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869745, 9.580967, 20.385845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864078, 9.878189, 20.653477>,  <13.860677, 10.056522, 20.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864078, 9.878189, 20.653477>,  <13.869745, 9.580967, 20.385845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.864078, 9.878189, 20.653477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063073, 0.667150, -0.742249,
		-0.997908, -0.052718, 0.037414,
		-0.014169, 0.743056, 0.669080,
		13.859827, 10.101106, 20.854200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.228394, 10.039186, 20.129274>,  <13.869745, 9.580967, 20.385845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.228394, 10.039186, 20.129274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477465, 10.234212, 20.374077>,  <13.626907, 10.351227, 20.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477465, 10.234212, 20.374077>,  <13.228394, 10.039186, 20.129274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477465, 10.234212, 20.374077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051476, 0.805971, -0.589712,
		-0.780782, 0.335698, 0.526959,
		0.622679, 0.487563, 0.612008,
		13.664268, 10.380481, 20.557680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877682, 10.640604, 20.423237>,  <13.228394, 10.039186, 20.129274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877682, 10.640604, 20.423237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273839, 10.695595, 20.429171>,  <13.511534, 10.728589, 20.432730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273839, 10.695595, 20.429171>,  <12.877682, 10.640604, 20.423237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273839, 10.695595, 20.429171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097518, 0.770495, -0.629943,
		-0.098031, 0.622445, 0.776500,
		0.990394, 0.137477, 0.014833,
		13.570957, 10.736838, 20.433620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.017673, 11.425689, 20.386003>,  <12.877682, 10.640604, 20.423237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.017673, 11.425689, 20.386003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381454, 11.285741, 20.296129>,  <13.599724, 11.201772, 20.242205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381454, 11.285741, 20.296129>,  <13.017673, 11.425689, 20.386003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381454, 11.285741, 20.296129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066417, 0.655658, -0.752131,
		0.410464, 0.669106, 0.619529,
		0.909455, -0.349870, -0.224684,
		13.654291, 11.180779, 20.228724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513941, 12.043921, 20.241280>,  <13.017673, 11.425689, 20.386003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513941, 12.043921, 20.241280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680408, 11.725023, 20.066370>,  <13.780288, 11.533685, 19.961424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680408, 11.725023, 20.066370>,  <13.513941, 12.043921, 20.241280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680408, 11.725023, 20.066370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210963, 0.552431, -0.806421,
		0.884478, 0.243356, 0.398092,
		0.416166, -0.797244, -0.437274,
		13.805257, 11.485850, 19.935188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179888, 12.278920, 20.097107>,  <13.513941, 12.043921, 20.241280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179888, 12.278920, 20.097107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143696, 11.954808, 19.865501>,  <14.121981, 11.760341, 19.726538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143696, 11.954808, 19.865501>,  <14.179888, 12.278920, 20.097107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143696, 11.954808, 19.865501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411139, 0.499153, -0.762765,
		0.907071, -0.307070, 0.287975,
		-0.090479, -0.810280, -0.579016,
		14.116552, 11.711724, 19.691797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746757, 12.082541, 19.734444>,  <14.179888, 12.278920, 20.097107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.746757, 12.082541, 19.734444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486261, 11.908875, 19.485481>,  <14.329965, 11.804676, 19.336103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486261, 11.908875, 19.485481>,  <14.746757, 12.082541, 19.734444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486261, 11.908875, 19.485481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449075, 0.440668, -0.777267,
		0.611737, -0.785692, -0.092006,
		-0.651237, -0.434165, -0.622408,
		14.290890, 11.778626, 19.298759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055770, 11.794186, 19.135937>,  <14.746757, 12.082541, 19.734444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055770, 11.794186, 19.135937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673592, 11.875477, 19.050310>,  <14.444284, 11.924252, 18.998934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673592, 11.875477, 19.050310>,  <15.055770, 11.794186, 19.135937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673592, 11.875477, 19.050310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291595, 0.537332, -0.791357,
		-0.045803, -0.818518, -0.572651,
		-0.955445, 0.203229, -0.214064,
		14.386958, 11.936445, 18.986092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034373, 12.051481, 18.478308>,  <15.055770, 11.794186, 19.135937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034373, 12.051481, 18.478308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652545, 12.154092, 18.538958>,  <14.423449, 12.215658, 18.575348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652545, 12.154092, 18.538958>,  <15.034373, 12.051481, 18.478308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652545, 12.154092, 18.538958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079098, 0.708707, -0.701054,
		-0.287297, -0.657212, -0.696802,
		-0.954570, 0.256526, 0.151625,
		14.366174, 12.231050, 18.584444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734743, 12.011181, 17.790783>,  <15.034373, 12.051481, 18.478308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734743, 12.011181, 17.790783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.492660, 12.237432, 18.014851>,  <14.347409, 12.373181, 18.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.492660, 12.237432, 18.014851>,  <14.734743, 12.011181, 17.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492660, 12.237432, 18.014851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258768, 0.525678, -0.810371,
		-0.752837, -0.635397, -0.171779,
		-0.605208, 0.565626, 0.560170,
		14.311097, 12.407120, 18.182901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128275, 12.131495, 17.408178>,  <14.734743, 12.011181, 17.790783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128275, 12.131495, 17.408178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099404, 12.433461, 17.668915>,  <14.082082, 12.614640, 17.825356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099404, 12.433461, 17.668915>,  <14.128275, 12.131495, 17.408178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099404, 12.433461, 17.668915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303682, 0.605881, -0.735313,
		-0.950036, -0.251024, 0.185524,
		-0.072176, 0.754914, 0.651840,
		14.077751, 12.659935, 17.864468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483653, 12.504238, 17.204865>,  <14.128275, 12.131495, 17.408178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483653, 12.504238, 17.204865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713112, 12.748667, 17.423046>,  <13.850787, 12.895324, 17.553955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713112, 12.748667, 17.423046>,  <13.483653, 12.504238, 17.204865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713112, 12.748667, 17.423046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056057, 0.693643, -0.718134,
		-0.817182, 0.381380, 0.432161,
		0.573648, 0.611072, 0.545454,
		13.885206, 12.931989, 17.586681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191506, 13.123412, 17.096828>,  <13.483653, 12.504238, 17.204865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191506, 13.123412, 17.096828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.535385, 13.254035, 17.253942>,  <13.741713, 13.332409, 17.348211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.535385, 13.254035, 17.253942>,  <13.191506, 13.123412, 17.096828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.535385, 13.254035, 17.253942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038718, 0.725086, -0.687569,
		-0.509335, 0.606309, 0.610711,
		0.859697, 0.326558, 0.392787,
		13.793294, 13.352002, 17.371778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158052, 13.944818, 17.238670>,  <13.191506, 13.123412, 17.096828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158052, 13.944818, 17.238670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534662, 13.820329, 17.187019>,  <13.760628, 13.745636, 17.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534662, 13.820329, 17.187019>,  <13.158052, 13.944818, 17.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534662, 13.820329, 17.187019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168020, 0.765833, -0.620701,
		0.292065, 0.562709, 0.773341,
		0.941524, -0.311221, -0.129126,
		13.817120, 13.726962, 17.148281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537865, 14.640541, 17.252329>,  <13.158052, 13.944818, 17.238670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537865, 14.640541, 17.252329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786034, 14.376658, 17.082687>,  <13.934936, 14.218329, 16.980902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786034, 14.376658, 17.082687>,  <13.537865, 14.640541, 17.252329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786034, 14.376658, 17.082687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036070, 0.564195, -0.824854,
		0.783438, 0.496461, 0.373835,
		0.620423, -0.659705, -0.424104,
		13.972160, 14.178747, 16.955456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100802, 15.036237, 17.082890>,  <13.537865, 14.640541, 17.252329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100802, 15.036237, 17.082890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.092984, 14.717092, 16.841881>,  <14.088293, 14.525604, 16.697275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.092984, 14.717092, 16.841881>,  <14.100802, 15.036237, 17.082890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.092984, 14.717092, 16.841881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000870, 0.602624, -0.798025,
		0.999809, -0.016121, -0.011084,
		-0.019545, -0.797863, -0.602523,
		14.087121, 14.477733, 16.661123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595333, 15.267592, 16.650150>,  <14.100802, 15.036237, 17.082890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595333, 15.267592, 16.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.423627, 14.962359, 16.456888>,  <14.320603, 14.779220, 16.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.423627, 14.962359, 16.456888>,  <14.595333, 15.267592, 16.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.423627, 14.962359, 16.456888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252654, 0.412136, -0.875391,
		0.867121, -0.497845, 0.015880,
		-0.429264, -0.763082, -0.483154,
		14.294847, 14.733435, 16.311941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071230, 15.103027, 16.174492>,  <14.595333, 15.267592, 16.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071230, 15.103027, 16.174492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697496, 14.998313, 16.077755>,  <14.473256, 14.935485, 16.019712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697496, 14.998313, 16.077755>,  <15.071230, 15.103027, 16.174492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697496, 14.998313, 16.077755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089700, 0.484005, -0.870456,
		0.344924, -0.834991, -0.428741,
		-0.934335, -0.261783, -0.241843,
		14.417196, 14.919778, 16.005201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075343, 14.629883, 15.553972>,  <15.071230, 15.103027, 16.174492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075343, 14.629883, 15.553972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781318, 14.900115, 15.576863>,  <14.604902, 15.062254, 15.590598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781318, 14.900115, 15.576863>,  <15.075343, 14.629883, 15.553972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781318, 14.900115, 15.576863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246508, 0.344931, -0.905680,
		-0.631598, -0.651625, -0.420082,
		-0.735063, 0.675580, 0.057227,
		14.560799, 15.102789, 15.594031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814165, 14.695414, 15.214037>,  <15.075343, 14.629883, 15.553972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814165, 14.695414, 15.214037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994548, 14.583460, 14.875026>,  <16.102777, 14.516288, 14.671619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994548, 14.583460, 14.875026>,  <15.814165, 14.695414, 15.214037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994548, 14.583460, 14.875026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285753, -0.854308, 0.434170,
		-0.845568, -0.437974, -0.305275,
		0.450954, -0.279887, -0.847528,
		16.129835, 14.499495, 14.620768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549263, 14.069497, 15.059226>,  <15.814165, 14.695414, 15.214037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549263, 14.069497, 15.059226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920327, 14.123381, 14.919912>,  <16.142965, 14.155711, 14.836325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920327, 14.123381, 14.919912>,  <15.549263, 14.069497, 15.059226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920327, 14.123381, 14.919912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295717, -0.834537, 0.464864,
		-0.228034, -0.534229, -0.814002,
		0.927660, 0.134709, -0.348283,
		16.198626, 14.163794, 14.815428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865747, 13.421539, 14.646269>,  <15.549263, 14.069497, 15.059226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865747, 13.421539, 14.646269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158138, 13.639456, 14.810647>,  <16.333572, 13.770205, 14.909274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158138, 13.639456, 14.810647>,  <15.865747, 13.421539, 14.646269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158138, 13.639456, 14.810647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350653, -0.816486, 0.458686,
		0.585420, -0.191189, -0.787864,
		0.730976, 0.544791, 0.410946,
		16.377432, 13.802893, 14.933930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439550, 13.070456, 14.524854>,  <15.865747, 13.421539, 14.646269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439550, 13.070456, 14.524854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508461, 13.304410, 14.841897>,  <16.549809, 13.444782, 15.032124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508461, 13.304410, 14.841897>,  <16.439550, 13.070456, 14.524854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508461, 13.304410, 14.841897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381279, -0.781514, 0.493824,
		0.908265, 0.217130, -0.357643,
		0.172279, 0.584885, 0.792609,
		16.560144, 13.479876, 15.079679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804777, 12.594430, 14.928845>,  <16.439550, 13.070456, 14.524854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804777, 12.594430, 14.928845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733757, 12.914684, 15.157742>,  <16.691145, 13.106836, 15.295079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733757, 12.914684, 15.157742>,  <16.804777, 12.594430, 14.928845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733757, 12.914684, 15.157742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243619, -0.527623, 0.813796,
		0.953481, 0.283898, -0.101371,
		-0.177549, 0.800635, 0.572241,
		16.680492, 13.154875, 15.329414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397547, 12.737030, 15.382513>,  <16.804777, 12.594430, 14.928845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397547, 12.737030, 15.382513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084425, 12.882792, 15.584275>,  <16.896551, 12.970250, 15.705333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084425, 12.882792, 15.584275>,  <17.397547, 12.737030, 15.382513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084425, 12.882792, 15.584275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311697, -0.471946, 0.824689,
		0.538574, 0.802792, 0.255857,
		-0.782805, 0.364406, 0.504406,
		16.849583, 12.992114, 15.735597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696815, 12.866948, 15.939497>,  <17.397547, 12.737030, 15.382513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696815, 12.866948, 15.939497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306202, 12.867790, 16.025639>,  <17.071835, 12.868296, 16.077324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306202, 12.867790, 16.025639>,  <17.696815, 12.866948, 15.939497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306202, 12.867790, 16.025639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201312, -0.346342, 0.916254,
		0.076516, 0.938106, 0.337791,
		-0.976534, 0.002106, 0.215353,
		17.013241, 12.868423, 16.090244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545700, 13.253860, 16.536301>,  <17.696815, 12.866948, 15.939497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545700, 13.253860, 16.536301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226013, 13.014879, 16.510069>,  <17.034201, 12.871490, 16.494329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226013, 13.014879, 16.510069>,  <17.545700, 13.253860, 16.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226013, 13.014879, 16.510069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173831, -0.334215, 0.926328,
		-0.575355, 0.728937, 0.370967,
		-0.799218, -0.597453, -0.065580,
		16.986248, 12.835643, 16.490395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138908, 13.383788, 17.158007>,  <17.545700, 13.253860, 16.536301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138908, 13.383788, 17.158007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015923, 13.032118, 17.012396>,  <16.942131, 12.821115, 16.925030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015923, 13.032118, 17.012396>,  <17.138908, 13.383788, 17.158007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015923, 13.032118, 17.012396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103706, -0.411237, 0.905610,
		-0.945891, 0.240692, 0.217617,
		-0.307465, -0.879176, -0.364025,
		16.923683, 12.768365, 16.903189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642956, 13.222202, 17.665777>,  <17.138908, 13.383788, 17.158007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642956, 13.222202, 17.665777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743814, 12.895778, 17.457752>,  <16.804329, 12.699923, 17.332937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743814, 12.895778, 17.457752>,  <16.642956, 13.222202, 17.665777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743814, 12.895778, 17.457752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009262, -0.535367, 0.844569,
		-0.967645, -0.217771, -0.127432,
		0.252146, -0.816063, -0.520062,
		16.819458, 12.650959, 17.301733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116577, 12.808270, 17.785244>,  <16.642956, 13.222202, 17.665777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116577, 12.808270, 17.785244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432108, 12.600336, 17.654079>,  <16.621426, 12.475575, 17.575380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432108, 12.600336, 17.654079>,  <16.116577, 12.808270, 17.785244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432108, 12.600336, 17.654079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179411, -0.705039, 0.686099,
		-0.587849, -0.482381, -0.649417,
		0.788825, -0.519835, -0.327912,
		16.668755, 12.444386, 17.555706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992403, 12.187122, 18.054213>,  <16.116577, 12.808270, 17.785244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992403, 12.187122, 18.054213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370369, 12.111812, 17.947113>,  <16.597149, 12.066626, 17.882854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370369, 12.111812, 17.947113>,  <15.992403, 12.187122, 18.054213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370369, 12.111812, 17.947113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066471, -0.690583, 0.720192,
		-0.320496, -0.698317, -0.640027,
		0.944915, -0.188275, -0.267748,
		16.653843, 12.055329, 17.866789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047058, 11.460224, 17.907579>,  <15.992403, 12.187122, 18.054213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047058, 11.460224, 17.907579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.426199, 11.566936, 17.977324>,  <16.653685, 11.630964, 18.019171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.426199, 11.566936, 17.977324>,  <16.047058, 11.460224, 17.907579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426199, 11.566936, 17.977324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101709, -0.771686, 0.627819,
		0.302042, -0.577346, -0.758579,
		0.947853, 0.266782, 0.174360,
		16.710554, 11.646971, 18.029633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376371, 10.790437, 17.938578>,  <16.047058, 11.460224, 17.907579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376371, 10.790437, 17.938578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616602, 11.054045, 18.119684>,  <16.760740, 11.212210, 18.228348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616602, 11.054045, 18.119684>,  <16.376371, 10.790437, 17.938578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616602, 11.054045, 18.119684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179311, -0.662854, 0.726961,
		0.779200, -0.355411, -0.516265,
		0.600578, 0.659021, 0.452767,
		16.796776, 11.251751, 18.255514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006010, 10.410844, 18.126938>,  <16.376371, 10.790437, 17.938578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006010, 10.410844, 18.126938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989851, 10.722767, 18.376823>,  <16.980156, 10.909921, 18.526754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989851, 10.722767, 18.376823>,  <17.006010, 10.410844, 18.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989851, 10.722767, 18.376823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103417, -0.618604, 0.778867,
		0.993817, 0.096070, -0.055655,
		-0.040397, 0.779807, 0.624715,
		16.977732, 10.956709, 18.564238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591549, 10.375881, 18.560522>,  <17.006010, 10.410844, 18.126938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591549, 10.375881, 18.560522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323400, 10.586161, 18.769995>,  <17.162512, 10.712328, 18.895678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323400, 10.586161, 18.769995>,  <17.591549, 10.375881, 18.560522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323400, 10.586161, 18.769995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108053, -0.629064, 0.769807,
		0.734115, 0.572643, 0.364904,
		-0.670373, 0.525698, 0.523681,
		17.122288, 10.743870, 18.927099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896187, 10.482022, 19.220871>,  <17.591549, 10.375881, 18.560522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896187, 10.482022, 19.220871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503433, 10.545374, 19.262484>,  <17.267782, 10.583385, 19.287451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503433, 10.545374, 19.262484>,  <17.896187, 10.482022, 19.220871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503433, 10.545374, 19.262484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060593, -0.257749, 0.964310,
		0.179540, 0.953143, 0.243482,
		-0.981883, 0.158379, 0.104030,
		17.208868, 10.592888, 19.293694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807171, 10.740571, 19.889961>,  <17.896187, 10.482022, 19.220871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807171, 10.740571, 19.889961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432674, 10.628736, 19.804840>,  <17.207977, 10.561634, 19.753767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432674, 10.628736, 19.804840>,  <17.807171, 10.740571, 19.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432674, 10.628736, 19.804840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134520, -0.274284, 0.952194,
		-0.324591, 0.920108, 0.219185,
		-0.936240, -0.279589, -0.212803,
		17.151802, 10.544859, 19.740999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566069, 10.906536, 20.480526>,  <17.807171, 10.740571, 19.889961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566069, 10.906536, 20.480526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276718, 10.680234, 20.322210>,  <17.103107, 10.544453, 20.227221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276718, 10.680234, 20.322210>,  <17.566069, 10.906536, 20.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276718, 10.680234, 20.322210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225103, -0.348671, 0.909812,
		-0.652731, 0.747228, 0.124866,
		-0.723374, -0.565755, -0.395791,
		17.059706, 10.510508, 20.203472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988810, 10.982938, 20.853390>,  <17.566069, 10.906536, 20.480526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988810, 10.982938, 20.853390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935884, 10.632936, 20.667116>,  <16.904129, 10.422935, 20.555351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935884, 10.632936, 20.667116>,  <16.988810, 10.982938, 20.853390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935884, 10.632936, 20.667116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297731, -0.413038, 0.860672,
		-0.945436, 0.252526, -0.205866,
		-0.132311, -0.875003, -0.465686,
		16.896191, 10.370436, 20.527411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330460, 10.739646, 21.125254>,  <16.988810, 10.982938, 20.853390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330460, 10.739646, 21.125254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556892, 10.431052, 21.009073>,  <16.692753, 10.245896, 20.939365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556892, 10.431052, 21.009073>,  <16.330460, 10.739646, 21.125254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556892, 10.431052, 21.009073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274437, -0.508614, 0.816086,
		-0.777326, -0.382260, -0.499641,
		0.566082, -0.771485, -0.290453,
		16.726717, 10.199607, 20.921938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839972, 10.185830, 21.181173>,  <16.330460, 10.739646, 21.125254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839972, 10.185830, 21.181173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209141, 10.031837, 21.180996>,  <16.430643, 9.939442, 21.180889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209141, 10.031837, 21.180996>,  <15.839972, 10.185830, 21.181173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209141, 10.031837, 21.180996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214499, -0.515183, 0.829805,
		-0.319688, -0.765752, -0.558053,
		0.922924, -0.384981, -0.000445,
		16.486017, 9.916343, 21.180862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760989, 9.411721, 21.259144>,  <15.839972, 10.185830, 21.181173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760989, 9.411721, 21.259144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130228, 9.520695, 21.367712>,  <16.351772, 9.586079, 21.432854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130228, 9.520695, 21.367712>,  <15.760989, 9.411721, 21.259144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130228, 9.520695, 21.367712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043967, -0.626396, 0.778264,
		0.382043, -0.730347, -0.566247,
		0.923098, 0.272434, 0.271422,
		16.407158, 9.602425, 21.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948523, 8.834449, 21.602812>,  <15.760989, 9.411721, 21.259144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948523, 8.834449, 21.602812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232698, 9.097369, 21.703396>,  <16.403204, 9.255121, 21.763746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232698, 9.097369, 21.703396>,  <15.948523, 8.834449, 21.602812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232698, 9.097369, 21.703396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087331, -0.436886, 0.895267,
		0.698319, -0.614073, -0.367784,
		0.710439, 0.657302, 0.251458,
		16.445829, 9.294559, 21.778833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482679, 8.464498, 21.978436>,  <15.948523, 8.834449, 21.602812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482679, 8.464498, 21.978436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524843, 8.845132, 22.093933>,  <16.550142, 9.073512, 22.163233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524843, 8.845132, 22.093933>,  <16.482679, 8.464498, 21.978436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524843, 8.845132, 22.093933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052252, -0.284662, 0.957203,
		0.993055, -0.115985, 0.019716,
		0.105409, 0.951585, 0.288746,
		16.556465, 9.130608, 22.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200663, 8.444505, 22.391630>,  <16.482679, 8.464498, 21.978436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.200663, 8.444505, 22.391630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931295, 8.733266, 22.455330>,  <16.769674, 8.906523, 22.493549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931295, 8.733266, 22.455330>,  <17.200663, 8.444505, 22.391630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931295, 8.733266, 22.455330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058564, -0.266837, 0.961960,
		0.736936, 0.638477, 0.221971,
		-0.673420, 0.721903, 0.159250,
		16.729269, 8.949837, 22.503105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374880, 8.593719, 22.984619>,  <17.200663, 8.444505, 22.391630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374880, 8.593719, 22.984619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008627, 8.754358, 22.977266>,  <16.788876, 8.850742, 22.972855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008627, 8.754358, 22.977266>,  <17.374880, 8.593719, 22.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008627, 8.754358, 22.977266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119614, -0.228486, 0.966171,
		0.383812, 0.886856, 0.257246,
		-0.915631, 0.401598, -0.018384,
		16.733938, 8.874838, 22.971750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324825, 9.098047, 23.580070>,  <17.374880, 8.593719, 22.984619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324825, 9.098047, 23.580070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954090, 8.987197, 23.478741>,  <16.731649, 8.920687, 23.417942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954090, 8.987197, 23.478741>,  <17.324825, 9.098047, 23.580070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954090, 8.987197, 23.478741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184545, -0.251340, 0.950143,
		-0.326981, 0.927377, 0.181809,
		-0.926837, -0.277127, -0.253326,
		16.676039, 8.904058, 23.402742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863779, 9.435819, 24.013569>,  <17.324825, 9.098047, 23.580070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863779, 9.435819, 24.013569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583944, 9.176845, 23.892635>,  <16.416044, 9.021460, 23.820074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583944, 9.176845, 23.892635>,  <16.863779, 9.435819, 24.013569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583944, 9.176845, 23.892635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296721, -0.121686, 0.947179,
		-0.650028, 0.752343, -0.106978,
		-0.699586, -0.647435, -0.302335,
		16.374069, 8.982614, 23.801935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247824, 9.604318, 24.319258>,  <16.863779, 9.435819, 24.013569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247824, 9.604318, 24.319258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211052, 9.214087, 24.239460>,  <16.188990, 8.979948, 24.191582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211052, 9.214087, 24.239460>,  <16.247824, 9.604318, 24.319258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211052, 9.214087, 24.239460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215715, -0.176074, 0.960450,
		-0.972119, 0.131327, -0.194260,
		-0.091929, -0.975577, -0.199494,
		16.183474, 8.921413, 24.179611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635023, 9.328543, 24.707968>,  <16.247824, 9.604318, 24.319258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635023, 9.328543, 24.707968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855448, 9.006249, 24.621136>,  <15.987702, 8.812873, 24.569036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855448, 9.006249, 24.621136>,  <15.635023, 9.328543, 24.707968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855448, 9.006249, 24.621136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227967, -0.395608, 0.889677,
		-0.802722, -0.440780, -0.401685,
		0.551062, -0.805734, -0.217080,
		16.020767, 8.764529, 24.556011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209925, 8.728413, 24.673124>,  <15.635023, 9.328543, 24.707968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209925, 8.728413, 24.673124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578778, 8.601396, 24.761520>,  <15.800090, 8.525186, 24.814558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578778, 8.601396, 24.761520>,  <15.209925, 8.728413, 24.673124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578778, 8.601396, 24.761520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322253, -0.314392, 0.892923,
		-0.214059, -0.894610, -0.392239,
		0.922134, -0.317539, 0.220993,
		15.855418, 8.506133, 24.827818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129919, 8.069575, 25.093250>,  <15.209925, 8.728413, 24.673124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129919, 8.069575, 25.093250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520013, 8.093916, 25.178305>,  <15.754069, 8.108521, 25.229338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520013, 8.093916, 25.178305>,  <15.129919, 8.069575, 25.093250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520013, 8.093916, 25.178305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181054, -0.332536, 0.925548,
		0.127031, -0.941126, -0.313283,
		0.975235, 0.060852, 0.212636,
		15.812583, 8.112171, 25.242096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364972, 7.558194, 25.482935>,  <15.129919, 8.069575, 25.093250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364972, 7.558194, 25.482935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672173, 7.802091, 25.561306>,  <15.856493, 7.948429, 25.608328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672173, 7.802091, 25.561306>,  <15.364972, 7.558194, 25.482935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672173, 7.802091, 25.561306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127287, -0.445140, 0.886368,
		0.627672, -0.655792, -0.419481,
		0.768001, 0.609743, 0.195928,
		15.902573, 7.985013, 25.620085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876541, 7.200024, 25.835299>,  <15.364972, 7.558194, 25.482935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876541, 7.200024, 25.835299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981587, 7.577449, 25.916018>,  <16.044615, 7.803904, 25.964449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981587, 7.577449, 25.916018>,  <15.876541, 7.200024, 25.835299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981587, 7.577449, 25.916018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067922, -0.190543, 0.979326,
		0.962507, -0.270893, 0.014049,
		0.262616, 0.943562, 0.201799,
		16.060371, 7.860518, 25.976557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234011, 7.101208, 26.522161>,  <15.876541, 7.200024, 25.835299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234011, 7.101208, 26.522161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123730, 7.484606, 26.493111>,  <16.057560, 7.714644, 26.475679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123730, 7.484606, 26.493111>,  <16.234011, 7.101208, 26.522161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123730, 7.484606, 26.493111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221182, 0.010271, 0.975178,
		0.935449, 0.284925, 0.209170,
		-0.275705, 0.958495, -0.072628,
		16.041018, 7.772154, 26.471323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346109, 7.439122, 27.215826>,  <16.234011, 7.101208, 26.522161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346109, 7.439122, 27.215826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096291, 7.708009, 27.056795>,  <15.946400, 7.869340, 26.961376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096291, 7.708009, 27.056795>,  <16.346109, 7.439122, 27.215826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096291, 7.708009, 27.056795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216590, 0.340020, 0.915137,
		0.750354, 0.657657, -0.066763,
		-0.624547, 0.672216, -0.397577,
		15.908927, 7.909674, 26.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601654, 8.130877, 27.450230>,  <16.346109, 7.439122, 27.215826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601654, 8.130877, 27.450230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208763, 8.131640, 27.375156>,  <15.973028, 8.132099, 27.330112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208763, 8.131640, 27.375156>,  <16.601654, 8.130877, 27.450230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208763, 8.131640, 27.375156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179712, 0.278882, 0.943360,
		0.054142, 0.960323, -0.273583,
		-0.982228, 0.001910, -0.187681,
		15.914095, 8.132214, 27.318851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074957, 8.425553, 27.959473>,  <16.601654, 8.130877, 27.450230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074957, 8.425553, 27.959473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053076, 8.769869, 28.161879>,  <17.039948, 8.976459, 28.283321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053076, 8.769869, 28.161879>,  <17.074957, 8.425553, 27.959473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053076, 8.769869, 28.161879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055625, 0.503358, -0.862285,
		-0.996952, -0.075316, 0.020347,
		-0.054702, 0.860789, 0.506014,
		17.036665, 9.028106, 28.313683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576336, 8.867265, 27.596476>,  <17.074957, 8.425553, 27.959473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576336, 8.867265, 27.596476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827888, 9.092624, 27.810799>,  <16.978821, 9.227839, 27.939392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827888, 9.092624, 27.810799>,  <16.576336, 8.867265, 27.596476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827888, 9.092624, 27.810799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109513, 0.618084, -0.778446,
		-0.769750, 0.548229, 0.327002,
		0.628881, 0.563398, 0.535809,
		17.016552, 9.261643, 27.971540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239380, 9.449105, 27.698256>,  <16.576336, 8.867265, 27.596476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239380, 9.449105, 27.698256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.631681, 9.523289, 27.722662>,  <16.867064, 9.567799, 27.737307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.631681, 9.523289, 27.722662>,  <16.239380, 9.449105, 27.698256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631681, 9.523289, 27.722662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107448, 0.773652, -0.624433,
		-0.163012, 0.605861, 0.778691,
		0.980756, 0.185459, 0.061016,
		16.925909, 9.578926, 27.740967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377796, 10.153906, 27.670166>,  <16.239380, 9.449105, 27.698256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377796, 10.153906, 27.670166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746168, 10.024495, 27.583250>,  <16.967192, 9.946849, 27.531099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746168, 10.024495, 27.583250>,  <16.377796, 10.153906, 27.670166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746168, 10.024495, 27.583250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212143, 0.883861, -0.416874,
		0.326925, 0.337816, 0.882610,
		0.920932, -0.323527, -0.217291,
		17.022448, 9.927437, 27.518063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698063, 10.669246, 27.864019>,  <16.377796, 10.153906, 27.670166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698063, 10.669246, 27.864019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951468, 10.483343, 27.616579>,  <17.103510, 10.371801, 27.468115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951468, 10.483343, 27.616579>,  <16.698063, 10.669246, 27.864019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951468, 10.483343, 27.616579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100271, 0.842071, -0.529964,
		0.767210, 0.273710, 0.580062,
		0.633510, -0.464757, -0.618600,
		17.141521, 10.343916, 27.431000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231976, 11.133124, 27.730728>,  <16.698063, 10.669246, 27.864019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231976, 11.133124, 27.730728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287535, 10.870914, 27.433813>,  <17.320869, 10.713587, 27.255665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287535, 10.870914, 27.433813>,  <17.231976, 11.133124, 27.730728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287535, 10.870914, 27.433813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299855, 0.742206, -0.599347,
		0.943819, -0.139332, 0.299653,
		0.138896, -0.655527, -0.742288,
		17.329203, 10.674255, 27.211126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957209, 11.150071, 27.298693>,  <17.231976, 11.133124, 27.730728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.957209, 11.150071, 27.298693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682068, 10.981693, 27.062162>,  <17.516983, 10.880667, 26.920244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682068, 10.981693, 27.062162>,  <17.957209, 11.150071, 27.298693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682068, 10.981693, 27.062162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303453, 0.573285, -0.761092,
		0.659375, -0.702958, -0.266599,
		-0.687853, -0.420945, -0.591324,
		17.475712, 10.855410, 26.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340189, 10.917511, 26.712545>,  <17.957209, 11.150071, 27.298693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340189, 10.917511, 26.712545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.962154, 10.931161, 26.582531>,  <17.735334, 10.939351, 26.504522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.962154, 10.931161, 26.582531>,  <18.340189, 10.917511, 26.712545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962154, 10.931161, 26.582531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311458, 0.395399, -0.864091,
		0.099031, -0.917875, -0.384314,
		-0.945085, 0.034126, -0.325037,
		17.678629, 10.941399, 26.485020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289875, 10.753894, 26.102077>,  <18.340189, 10.917511, 26.712545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289875, 10.753894, 26.102077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945515, 10.955884, 26.126892>,  <17.738899, 11.077078, 26.141781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945515, 10.955884, 26.126892>,  <18.289875, 10.753894, 26.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945515, 10.955884, 26.126892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231589, 0.497520, -0.835967,
		-0.453008, -0.705318, -0.545262,
		-0.860901, 0.504976, 0.062037,
		17.687244, 11.107377, 26.145504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973499, 10.736452, 25.405224>,  <18.289875, 10.753894, 26.102077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973499, 10.736452, 25.405224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.738262, 11.024199, 25.553093>,  <17.597120, 11.196848, 25.641815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.738262, 11.024199, 25.553093>,  <17.973499, 10.736452, 25.405224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.738262, 11.024199, 25.553093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013009, 0.465422, -0.884993,
		-0.808690, -0.515647, -0.283069,
		-0.588090, 0.719368, 0.369674,
		17.561834, 11.240010, 25.663996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480570, 10.856716, 24.970276>,  <17.973499, 10.736452, 25.405224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480570, 10.856716, 24.970276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482189, 11.199555, 25.176331>,  <17.483160, 11.405259, 25.299963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482189, 11.199555, 25.176331>,  <17.480570, 10.856716, 24.970276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482189, 11.199555, 25.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212767, 0.504085, -0.837036,
		-0.977095, -0.106216, 0.184403,
		0.004048, 0.857098, 0.515138,
		17.483404, 11.456685, 25.330872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921291, 11.188733, 24.742918>,  <17.480570, 10.856716, 24.970276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921291, 11.188733, 24.742918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163652, 11.477476, 24.876665>,  <17.309069, 11.650722, 24.956913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163652, 11.477476, 24.876665>,  <16.921291, 11.188733, 24.742918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163652, 11.477476, 24.876665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090551, 0.354996, -0.930472,
		-0.790367, 0.594054, 0.149729,
		0.605904, 0.721857, 0.334370,
		17.345423, 11.694033, 24.976976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710365, 11.713439, 24.385517>,  <16.921291, 11.188733, 24.742918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710365, 11.713439, 24.385517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.075312, 11.818993, 24.510708>,  <17.294279, 11.882325, 24.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.075312, 11.818993, 24.510708>,  <16.710365, 11.713439, 24.385517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.075312, 11.818993, 24.510708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253326, 0.236632, -0.937993,
		-0.321581, 0.935078, 0.149046,
		0.912366, 0.263884, 0.312976,
		17.349022, 11.898158, 24.604601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893564, 12.394996, 24.058073>,  <16.710365, 11.713439, 24.385517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893564, 12.394996, 24.058073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231440, 12.203752, 24.154333>,  <17.434164, 12.089005, 24.212090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231440, 12.203752, 24.154333>,  <16.893564, 12.394996, 24.058073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231440, 12.203752, 24.154333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433742, 0.347966, -0.831136,
		0.313637, 0.806431, 0.501300,
		0.844689, -0.478110, 0.240648,
		17.484846, 12.060319, 24.226528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389793, 12.864650, 24.044973>,  <16.893564, 12.394996, 24.058073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389793, 12.864650, 24.044973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595785, 12.524795, 23.999523>,  <17.719379, 12.320882, 23.972252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595785, 12.524795, 23.999523>,  <17.389793, 12.864650, 24.044973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595785, 12.524795, 23.999523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470273, 0.390859, -0.791248,
		0.716686, 0.354040, 0.600846,
		0.514980, -0.849638, -0.113628,
		17.750278, 12.269903, 23.965435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985390, 13.043295, 23.734083>,  <17.389793, 12.864650, 24.044973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985390, 13.043295, 23.734083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975363, 12.650476, 23.659304>,  <17.969347, 12.414783, 23.614435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975363, 12.650476, 23.659304>,  <17.985390, 13.043295, 23.734083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975363, 12.650476, 23.659304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362493, 0.165352, -0.917201,
		0.931649, -0.090759, 0.351841,
		-0.025066, -0.982050, -0.186950,
		17.967842, 12.355861, 23.603218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575483, 12.980456, 23.384344>,  <17.985390, 13.043295, 23.734083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575483, 12.980456, 23.384344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.427734, 12.615558, 23.313499>,  <18.339085, 12.396619, 23.270992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.427734, 12.615558, 23.313499>,  <18.575483, 12.980456, 23.384344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.427734, 12.615558, 23.313499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257429, 0.082683, -0.962754,
		0.892913, -0.401209, 0.204298,
		-0.369374, -0.912247, -0.177111,
		18.316923, 12.341884, 23.260366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155972, 12.537534, 22.999474>,  <18.575483, 12.980456, 23.384344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155972, 12.537534, 22.999474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791204, 12.380711, 22.950987>,  <18.572344, 12.286616, 22.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791204, 12.380711, 22.950987>,  <19.155972, 12.537534, 22.999474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791204, 12.380711, 22.950987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124455, 0.017255, -0.992075,
		0.391044, -0.919778, 0.033059,
		-0.911918, -0.392060, -0.121219,
		18.517630, 12.263093, 22.914621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196651, 11.997418, 22.507788>,  <19.155972, 12.537534, 22.999474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196651, 11.997418, 22.507788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816502, 12.121408, 22.497139>,  <18.588411, 12.195801, 22.490749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816502, 12.121408, 22.497139>,  <19.196651, 11.997418, 22.507788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.816502, 12.121408, 22.497139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059815, 0.098071, -0.993380,
		-0.305311, -0.945674, -0.111745,
		-0.950372, 0.309973, -0.026623,
		18.531389, 12.214399, 22.489153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.849167, 11.641940, 21.975180>,  <19.196651, 11.997418, 22.507788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.849167, 11.641940, 21.975180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.593418, 11.940587, 22.048683>,  <18.439970, 12.119776, 22.092785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.593418, 11.940587, 22.048683>,  <18.849167, 11.641940, 21.975180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593418, 11.940587, 22.048683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202563, 0.066986, -0.976975,
		-0.741737, -0.661872, 0.108409,
		-0.639371, 0.746618, 0.183757,
		18.401608, 12.164573, 22.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244888, 11.423837, 21.565422>,  <18.849167, 11.641940, 21.975180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244888, 11.423837, 21.565422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235964, 11.819162, 21.625736>,  <18.230608, 12.056357, 21.661924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235964, 11.819162, 21.625736>,  <18.244888, 11.423837, 21.565422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235964, 11.819162, 21.625736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095374, 0.148033, -0.984373,
		-0.995191, -0.036345, 0.090956,
		-0.022312, 0.988314, 0.150788,
		18.229271, 12.115657, 21.670973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664555, 11.701582, 21.149786>,  <18.244888, 11.423837, 21.565422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664555, 11.701582, 21.149786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879036, 12.026781, 21.240578>,  <18.007725, 12.221901, 21.295052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879036, 12.026781, 21.240578>,  <17.664555, 11.701582, 21.149786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879036, 12.026781, 21.240578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191982, 0.379319, -0.905130,
		-0.821965, 0.441760, 0.359474,
		0.536206, 0.812998, 0.226977,
		18.039898, 12.270680, 21.308670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250589, 12.231167, 20.928635>,  <17.664555, 11.701582, 21.149786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250589, 12.231167, 20.928635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635111, 12.341361, 20.928366>,  <17.865824, 12.407477, 20.928204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635111, 12.341361, 20.928366>,  <17.250589, 12.231167, 20.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635111, 12.341361, 20.928366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110049, 0.381778, -0.917679,
		-0.252550, 0.882244, 0.397321,
		0.961305, 0.275485, -0.000672,
		17.923502, 12.424006, 20.928164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310349, 12.981896, 20.616457>,  <17.250589, 12.231167, 20.928635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310349, 12.981896, 20.616457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676380, 12.827874, 20.568521>,  <17.896000, 12.735461, 20.539761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676380, 12.827874, 20.568521>,  <17.310349, 12.981896, 20.616457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676380, 12.827874, 20.568521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028200, 0.357541, -0.933472,
		0.402286, 0.850821, 0.338037,
		0.915080, -0.385055, -0.119841,
		17.950905, 12.712358, 20.532570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666210, 13.345751, 20.109058>,  <17.310349, 12.981896, 20.616457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666210, 13.345751, 20.109058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932230, 13.047148, 20.100706>,  <18.091843, 12.867986, 20.095694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932230, 13.047148, 20.100706>,  <17.666210, 13.345751, 20.109058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932230, 13.047148, 20.100706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403207, 0.382465, -0.831351,
		0.628596, 0.544470, 0.555355,
		0.665050, -0.746507, -0.020882,
		18.131744, 12.823195, 20.094442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317917, 13.662645, 19.794806>,  <17.666210, 13.345751, 20.109058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317917, 13.662645, 19.794806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383932, 13.268737, 19.772938>,  <18.423540, 13.032392, 19.759817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383932, 13.268737, 19.772938>,  <18.317917, 13.662645, 19.794806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383932, 13.268737, 19.772938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460381, 0.125940, -0.878742,
		0.872245, 0.119856, 0.474155,
		0.165037, -0.984771, -0.054671,
		18.433443, 12.973306, 19.756536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058424, 13.596051, 19.899260>,  <18.317917, 13.662645, 19.794806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058424, 13.596051, 19.899260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.908176, 13.283758, 19.699512>,  <18.818027, 13.096382, 19.579664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.908176, 13.283758, 19.699512>,  <19.058424, 13.596051, 19.899260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908176, 13.283758, 19.699512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457014, 0.312717, -0.832675,
		0.806257, -0.540985, 0.239344,
		-0.375617, -0.780733, -0.499367,
		18.795490, 13.049539, 19.549702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607410, 13.259148, 19.559086>,  <19.058424, 13.596051, 19.899260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607410, 13.259148, 19.559086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290386, 13.122531, 19.357018>,  <19.100172, 13.040561, 19.235777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290386, 13.122531, 19.357018>,  <19.607410, 13.259148, 19.559086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290386, 13.122531, 19.357018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481029, 0.158981, -0.862169,
		0.374779, -0.926323, 0.038290,
		-0.792560, -0.341542, -0.505171,
		19.052618, 13.020068, 19.205465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844212, 12.793284, 18.963522>,  <19.607410, 13.259148, 19.559086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844212, 12.793284, 18.963522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460070, 12.857870, 18.872616>,  <19.229584, 12.896622, 18.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460070, 12.857870, 18.872616>,  <19.844212, 12.793284, 18.963522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460070, 12.857870, 18.872616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227197, -0.019123, -0.973661,
		-0.161559, -0.986693, -0.018320,
		-0.960354, 0.161466, -0.227263,
		19.171963, 12.906310, 18.804438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621893, 12.301106, 18.350739>,  <19.844212, 12.793284, 18.963522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621893, 12.301106, 18.350739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396835, 12.631422, 18.366249>,  <19.261801, 12.829611, 18.375555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396835, 12.631422, 18.366249>,  <19.621893, 12.301106, 18.350739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396835, 12.631422, 18.366249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175468, 0.165125, -0.970538,
		-0.807862, -0.539265, -0.237806,
		-0.562645, 0.825789, 0.038774,
		19.228043, 12.879159, 18.377882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208158, 12.243694, 17.764288>,  <19.621893, 12.301106, 18.350739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208158, 12.243694, 17.764288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264755, 12.624504, 17.872828>,  <19.298714, 12.852990, 17.937952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264755, 12.624504, 17.872828>,  <19.208158, 12.243694, 17.764288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264755, 12.624504, 17.872828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271190, 0.226345, -0.935534,
		-0.952070, 0.205957, -0.226154,
		0.141491, 0.952024, 0.271349,
		19.307203, 12.910111, 17.954233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913708, 12.585465, 17.181698>,  <19.208158, 12.243694, 17.764288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913708, 12.585465, 17.181698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118416, 12.864547, 17.382217>,  <19.241241, 13.031996, 17.502529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118416, 12.864547, 17.382217>,  <18.913708, 12.585465, 17.181698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118416, 12.864547, 17.382217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361066, 0.354797, -0.862410,
		-0.779566, 0.622358, -0.070343,
		0.511770, 0.697703, 0.501300,
		19.271946, 13.073857, 17.532608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848475, 13.118532, 16.791349>,  <18.913708, 12.585465, 17.181698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848475, 13.118532, 16.791349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164202, 13.207541, 17.020248>,  <19.353638, 13.260945, 17.157587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164202, 13.207541, 17.020248>,  <18.848475, 13.118532, 16.791349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164202, 13.207541, 17.020248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483484, 0.349214, -0.802679,
		-0.378449, 0.910238, 0.168055,
		0.789316, 0.222521, 0.572245,
		19.400997, 13.274297, 17.191921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.230337, 13.476921, 16.349182>,  <18.848475, 13.118532, 16.791349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.230337, 13.476921, 16.349182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498974, 13.473451, 16.645531>,  <19.660156, 13.471369, 16.823339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498974, 13.473451, 16.645531>,  <19.230337, 13.476921, 16.349182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498974, 13.473451, 16.645531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704766, 0.316028, -0.635162,
		-0.228625, 0.948710, 0.218356,
		0.671591, -0.008676, 0.740871,
		19.700451, 13.470848, 16.867792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425373, 14.183405, 16.583490>,  <19.230337, 13.476921, 16.349182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425373, 14.183405, 16.583490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722769, 13.926214, 16.657034>,  <19.901207, 13.771900, 16.701160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722769, 13.926214, 16.657034>,  <19.425373, 14.183405, 16.583490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722769, 13.926214, 16.657034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652909, 0.638430, -0.407575,
		0.144679, 0.423072, 0.894471,
		0.743490, -0.642976, 0.183860,
		19.945816, 13.733321, 16.712193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923569, 14.535488, 16.962843>,  <19.425373, 14.183405, 16.583490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923569, 14.535488, 16.962843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.107140, 14.235639, 16.772076>,  <20.217281, 14.055729, 16.657616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.107140, 14.235639, 16.772076>,  <19.923569, 14.535488, 16.962843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.107140, 14.235639, 16.772076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674365, 0.643380, -0.362344,
		0.578461, -0.155329, 0.800784,
		0.458927, -0.749623, -0.476919,
		20.244818, 14.010752, 16.629000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617100, 14.685514, 16.969429>,  <19.923569, 14.535488, 16.962843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617100, 14.685514, 16.969429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648909, 14.401318, 16.689751>,  <20.667994, 14.230800, 16.521944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648909, 14.401318, 16.689751>,  <20.617100, 14.685514, 16.969429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648909, 14.401318, 16.689751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829232, 0.436422, -0.349158,
		0.553219, -0.552031, 0.623868,
		0.079524, -0.710492, -0.699198,
		20.672766, 14.188170, 16.479992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169567, 14.386024, 17.059252>,  <20.617100, 14.685514, 16.969429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169567, 14.386024, 17.059252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.079014, 14.312455, 16.676645>,  <21.024681, 14.268314, 16.447081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.079014, 14.312455, 16.676645>,  <21.169567, 14.386024, 17.059252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.079014, 14.312455, 16.676645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892642, 0.353810, -0.279298,
		0.389794, -0.917055, 0.084078,
		-0.226384, -0.183921, -0.956516,
		21.011099, 14.257278, 16.389690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688110, 14.014762, 16.843229>,  <21.169567, 14.386024, 17.059252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688110, 14.014762, 16.843229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519138, 14.184731, 16.522982>,  <21.417755, 14.286712, 16.330833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519138, 14.184731, 16.522982>,  <21.688110, 14.014762, 16.843229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519138, 14.184731, 16.522982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903767, 0.264683, -0.336375,
		0.068978, -0.865670, -0.495841,
		-0.422430, 0.424923, -0.800621,
		21.392410, 14.312207, 16.282795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.104864, 13.728565, 16.355812>,  <21.688110, 14.014762, 16.843229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.104864, 13.728565, 16.355812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929585, 14.061278, 16.219507>,  <21.824417, 14.260906, 16.137724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929585, 14.061278, 16.219507>,  <22.104864, 13.728565, 16.355812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929585, 14.061278, 16.219507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773496, 0.155805, -0.614353,
		-0.457916, -0.532785, -0.711655,
		-0.438198, 0.831784, -0.340761,
		21.798124, 14.310814, 16.117279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117758, 13.729691, 15.596766>,  <22.104864, 13.728565, 16.355812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117758, 13.729691, 15.596766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029652, 14.114729, 15.659878>,  <21.976788, 14.345752, 15.697744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029652, 14.114729, 15.659878>,  <22.117758, 13.729691, 15.596766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.029652, 14.114729, 15.659878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766129, 0.270839, -0.582831,
		-0.603763, -0.007497, -0.797129,
		-0.220263, 0.962595, 0.157779,
		21.963573, 14.403507, 15.707211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.047045, 14.095293, 14.855322>,  <22.117758, 13.729691, 15.596766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.047045, 14.095293, 14.855322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139786, 14.351271, 15.148365>,  <22.195431, 14.504857, 15.324191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139786, 14.351271, 15.148365>,  <22.047045, 14.095293, 14.855322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139786, 14.351271, 15.148365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589438, 0.506692, -0.629148,
		-0.773826, 0.577698, -0.259729,
		0.231855, 0.639945, 0.732608,
		22.209343, 14.543254, 15.368148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952204, 14.862438, 14.694921>,  <22.047045, 14.095293, 14.855322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952204, 14.862438, 14.694921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.256254, 14.791675, 14.945013>,  <22.438684, 14.749216, 15.095068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.256254, 14.791675, 14.945013>,  <21.952204, 14.862438, 14.694921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.256254, 14.791675, 14.945013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645411, 0.316892, -0.694999,
		-0.075179, 0.931817, 0.355057,
		0.760126, -0.176909, 0.625229,
		22.484293, 14.738602, 15.132582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.414091, 14.919220, 14.205054>,  <21.952204, 14.862438, 14.694921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.414091, 14.919220, 14.205054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312820, 15.236582, 13.983637>,  <22.252058, 15.426999, 13.850786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312820, 15.236582, 13.983637>,  <22.414091, 14.919220, 14.205054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312820, 15.236582, 13.983637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235838, 0.504305, 0.830697,
		0.938234, 0.340858, 0.059438,
		-0.253175, 0.793406, -0.553543,
		22.236868, 15.474604, 13.817574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653606, 15.459692, 14.580523>,  <22.414091, 14.919220, 14.205054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653606, 15.459692, 14.580523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414787, 15.647326, 14.320216>,  <22.271496, 15.759906, 14.164033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414787, 15.647326, 14.320216>,  <22.653606, 15.459692, 14.580523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414787, 15.647326, 14.320216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234148, 0.673994, 0.700648,
		0.767274, 0.570695, -0.292570,
		-0.597047, 0.469085, -0.650765,
		22.235674, 15.788051, 14.124987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849703, 16.144400, 14.469461>,  <22.653606, 15.459692, 14.580523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849703, 16.144400, 14.469461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457491, 16.087727, 14.415072>,  <22.222164, 16.053722, 14.382440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457491, 16.087727, 14.415072>,  <22.849703, 16.144400, 14.469461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457491, 16.087727, 14.415072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195207, 0.627870, 0.753441,
		-0.021378, 0.765314, -0.643302,
		-0.980529, -0.141685, -0.135972,
		22.163332, 16.045221, 14.374281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056740, 16.175798, 13.721138>,  <22.849703, 16.144400, 14.469461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056740, 16.175798, 13.721138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275936, 16.509382, 13.747120>,  <23.407454, 16.709532, 13.762709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275936, 16.509382, 13.747120>,  <23.056740, 16.175798, 13.721138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.275936, 16.509382, 13.747120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661639, 0.479648, -0.576343,
		-0.511802, 0.272854, 0.814622,
		0.547990, 0.833959, 0.064954,
		23.440332, 16.759569, 13.766606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616060, 16.810574, 13.748890>,  <23.056740, 16.175798, 13.721138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.616060, 16.810574, 13.748890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983271, 16.932013, 13.646863>,  <23.203596, 17.004875, 13.585647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983271, 16.932013, 13.646863>,  <22.616060, 16.810574, 13.748890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983271, 16.932013, 13.646863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396115, 0.673010, -0.624620,
		-0.017968, 0.674453, 0.738099,
		0.918025, 0.303595, -0.255068,
		23.258678, 17.023090, 13.570342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.726862, 17.617186, 13.729973>,  <22.616060, 16.810574, 13.748890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.726862, 17.617186, 13.729973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978142, 17.432392, 13.479553>,  <23.128910, 17.321516, 13.329302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978142, 17.432392, 13.479553>,  <22.726862, 17.617186, 13.729973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978142, 17.432392, 13.479553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323718, 0.576491, -0.750243,
		0.707511, 0.673966, 0.212599,
		0.628199, -0.461983, -0.626049,
		23.166601, 17.293797, 13.291739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178467, 18.157845, 13.310602>,  <22.726862, 17.617186, 13.729973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178467, 18.157845, 13.310602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212269, 17.823683, 13.093361>,  <23.232550, 17.623186, 12.963016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212269, 17.823683, 13.093361>,  <23.178467, 18.157845, 13.310602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212269, 17.823683, 13.093361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109709, 0.533939, -0.838375,
		0.990365, 0.130428, -0.046532,
		0.084503, -0.835402, -0.543104,
		23.237619, 17.573063, 12.930429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.720221, 18.323227, 12.894549>,  <23.178467, 18.157845, 13.310602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.720221, 18.323227, 12.894549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499632, 18.033253, 12.729458>,  <23.367279, 17.859268, 12.630404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499632, 18.033253, 12.729458>,  <23.720221, 18.323227, 12.894549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499632, 18.033253, 12.729458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049254, 0.522197, -0.851402,
		0.832737, -0.449197, -0.323683,
		-0.551473, -0.724937, -0.412728,
		23.334190, 17.815771, 12.605639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009546, 18.128468, 12.214302>,  <23.720221, 18.323227, 12.894549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009546, 18.128468, 12.214302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.619980, 18.040737, 12.237576>,  <23.386240, 17.988098, 12.251541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.619980, 18.040737, 12.237576>,  <24.009546, 18.128468, 12.214302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.619980, 18.040737, 12.237576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161831, 0.491607, -0.855648,
		0.159063, -0.842744, -0.514278,
		-0.973915, -0.219328, 0.058186,
		23.327805, 17.974939, 12.255033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803949, 17.964516, 11.527019>,  <24.009546, 18.128468, 12.214302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803949, 17.964516, 11.527019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458347, 18.048187, 11.710209>,  <23.250986, 18.098391, 11.820123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458347, 18.048187, 11.710209>,  <23.803949, 17.964516, 11.527019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.458347, 18.048187, 11.710209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272462, 0.570664, -0.774666,
		-0.423393, -0.794095, -0.436063,
		-0.864004, 0.209178, 0.457976,
		23.199146, 18.110941, 11.847602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333218, 17.951731, 10.916926>,  <23.803949, 17.964516, 11.527019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333218, 17.951731, 10.916926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104095, 18.106100, 11.206189>,  <22.966621, 18.198723, 11.379746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104095, 18.106100, 11.206189>,  <23.333218, 17.951731, 10.916926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104095, 18.106100, 11.206189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349873, 0.682715, -0.641474,
		-0.741270, -0.620453, -0.256039,
		-0.572806, 0.385925, 0.723157,
		22.932253, 18.221878, 11.423136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638025, 17.870209, 10.687053>,  <23.333218, 17.951731, 10.916926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638025, 17.870209, 10.687053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652851, 18.170065, 10.951376>,  <22.661747, 18.349979, 11.109970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652851, 18.170065, 10.951376>,  <22.638025, 17.870209, 10.687053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652851, 18.170065, 10.951376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419756, 0.611775, -0.670474,
		-0.906880, -0.252528, 0.337340,
		0.037063, 0.749640, 0.660807,
		22.663969, 18.394957, 11.149618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.149656, 18.216284, 10.417976>,  <22.638025, 17.870209, 10.687053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.149656, 18.216284, 10.417976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309464, 18.497646, 10.653130>,  <22.405348, 18.666464, 10.794222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309464, 18.497646, 10.653130>,  <22.149656, 18.216284, 10.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309464, 18.497646, 10.653130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254795, 0.701221, -0.665859,
		-0.880605, 0.116233, 0.459375,
		0.399518, 0.703405, 0.587883,
		22.429319, 18.708668, 10.829494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697548, 18.817595, 10.338920>,  <22.149656, 18.216284, 10.417976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697548, 18.817595, 10.338920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006830, 18.989353, 10.525583>,  <22.192400, 19.092409, 10.637582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006830, 18.989353, 10.525583>,  <21.697548, 18.817595, 10.338920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006830, 18.989353, 10.525583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085321, 0.799625, -0.594407,
		-0.628389, 0.419783, 0.654912,
		0.773206, 0.429397, 0.466659,
		22.238792, 19.118172, 10.665581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.458652, 19.554382, 10.512417>,  <21.697548, 18.817595, 10.338920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.458652, 19.554382, 10.512417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857439, 19.583237, 10.524122>,  <22.096710, 19.600550, 10.531146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857439, 19.583237, 10.524122>,  <21.458652, 19.554382, 10.512417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857439, 19.583237, 10.524122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049152, 0.874837, -0.481918,
		-0.060365, 0.479017, 0.875728,
		0.996966, 0.072134, 0.029265,
		22.156528, 19.604877, 10.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.578049, 20.278492, 10.566668>,  <21.458652, 19.554382, 10.512417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.578049, 20.278492, 10.566668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.911819, 20.101858, 10.434770>,  <22.112082, 19.995878, 10.355631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.911819, 20.101858, 10.434770>,  <21.578049, 20.278492, 10.566668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.911819, 20.101858, 10.434770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172182, 0.777254, -0.605168,
		0.523529, 0.448193, 0.724596,
		0.834428, -0.441585, -0.329744,
		22.162148, 19.969383, 10.335846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090357, 20.737850, 10.601818>,  <21.578049, 20.278492, 10.566668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090357, 20.737850, 10.601818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217630, 20.465828, 10.337610>,  <22.293995, 20.302614, 10.179086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217630, 20.465828, 10.337610>,  <22.090357, 20.737850, 10.601818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217630, 20.465828, 10.337610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297492, 0.733159, -0.611536,
		0.900143, -0.001918, 0.435590,
		0.318184, -0.680054, -0.660519,
		22.313086, 20.261812, 10.139455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.824699, 20.746309, 10.516338>,  <22.090357, 20.737850, 10.601818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.824699, 20.746309, 10.516338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730576, 20.550251, 10.180628>,  <22.674101, 20.432615, 9.979201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730576, 20.550251, 10.180628>,  <22.824699, 20.746309, 10.516338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730576, 20.550251, 10.180628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383543, 0.746614, -0.543565,
		0.893042, -0.449805, 0.012307,
		-0.235309, -0.490147, -0.839277,
		22.659983, 20.403208, 9.928844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.370876, 20.849592, 10.103753>,  <22.824699, 20.746309, 10.516338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.370876, 20.849592, 10.103753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065237, 20.783670, 9.854276>,  <22.881853, 20.744118, 9.704589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065237, 20.783670, 9.854276>,  <23.370876, 20.849592, 10.103753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065237, 20.783670, 9.854276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313775, 0.749796, -0.582539,
		0.563648, -0.640816, -0.521206,
		-0.764098, -0.164805, -0.623693,
		22.836008, 20.734228, 9.667168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.660582, 20.649069, 9.373137>,  <23.370876, 20.849592, 10.103753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.660582, 20.649069, 9.373137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284168, 20.777983, 9.331973>,  <23.058321, 20.855331, 9.307275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284168, 20.777983, 9.331973>,  <23.660582, 20.649069, 9.373137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.284168, 20.777983, 9.331973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320143, 0.749927, -0.578894,
		-0.109394, -0.577704, -0.808883,
		-0.941032, 0.322286, -0.102910,
		23.001858, 20.874668, 9.301100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.661894, 20.786926, 8.690291>,  <23.660582, 20.649069, 9.373137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.661894, 20.786926, 8.690291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328098, 20.959389, 8.827542>,  <23.127821, 21.062866, 8.909893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328098, 20.959389, 8.827542>,  <23.661894, 20.786926, 8.690291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.328098, 20.959389, 8.827542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118026, 0.748109, -0.652996,
		-0.538239, -0.504418, -0.675175,
		-0.834487, 0.431156, 0.343127,
		23.077753, 21.088736, 8.930480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.263706, 21.070057, 8.199428>,  <23.661894, 20.786926, 8.690291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.263706, 21.070057, 8.199428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138121, 21.312952, 8.491370>,  <23.062769, 21.458689, 8.666535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138121, 21.312952, 8.491370>,  <23.263706, 21.070057, 8.199428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.138121, 21.312952, 8.491370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232000, 0.794490, -0.561214,
		-0.920654, -0.006873, -0.390320,
		-0.313962, 0.607238, 0.729856,
		23.043932, 21.495123, 8.710327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051126, 21.622496, 7.865452>,  <23.263706, 21.070057, 8.199428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051126, 21.622496, 7.865452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052546, 21.767580, 8.238210>,  <23.053396, 21.854631, 8.461864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052546, 21.767580, 8.238210>,  <23.051126, 21.622496, 7.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052546, 21.767580, 8.238210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145269, 0.921828, -0.359347,
		-0.989386, 0.136649, -0.049422,
		0.003546, 0.362712, 0.931894,
		23.053610, 21.876394, 8.517778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.486103, 22.086525, 7.979156>,  <23.051126, 21.622496, 7.865452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.486103, 22.086525, 7.979156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.788881, 22.187155, 8.220401>,  <22.970549, 22.247532, 8.365148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.788881, 22.187155, 8.220401>,  <22.486103, 22.086525, 7.979156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.788881, 22.187155, 8.220401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048655, 0.898666, -0.435926,
		-0.651663, 0.359317, 0.668002,
		0.756946, 0.251575, 0.603110,
		23.015965, 22.262627, 8.401334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265804, 22.782055, 8.293988>,  <22.486103, 22.086525, 7.979156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265804, 22.782055, 8.293988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.656197, 22.741665, 8.371203>,  <22.890432, 22.717432, 8.417533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.656197, 22.741665, 8.371203>,  <22.265804, 22.782055, 8.293988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.656197, 22.741665, 8.371203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171368, 0.902945, -0.394110,
		-0.134509, 0.417725, 0.898562,
		0.975982, -0.100973, 0.193039,
		22.948992, 22.711372, 8.429115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394087, 23.513021, 8.556813>,  <22.265804, 22.782055, 8.293988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394087, 23.513021, 8.556813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752073, 23.350735, 8.482598>,  <22.966866, 23.253363, 8.438069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752073, 23.350735, 8.482598>,  <22.394087, 23.513021, 8.556813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752073, 23.350735, 8.482598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331434, 0.883043, -0.332244,
		0.298635, 0.235854, 0.924765,
		0.894968, -0.405718, -0.185538,
		23.020563, 23.229019, 8.426937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977516, 23.948229, 8.918354>,  <22.394087, 23.513021, 8.556813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977516, 23.948229, 8.918354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.145645, 23.727989, 8.629863>,  <23.246523, 23.595846, 8.456768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.145645, 23.727989, 8.629863>,  <22.977516, 23.948229, 8.918354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.145645, 23.727989, 8.629863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491898, 0.806186, -0.328787,
		0.762474, -0.216575, 0.609696,
		0.420321, -0.550599, -0.721228,
		23.271742, 23.562809, 8.413494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.801416, 23.914585, 8.943814>,  <22.977516, 23.948229, 8.918354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.801416, 23.914585, 8.943814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667202, 23.859474, 8.571055>,  <23.586674, 23.826406, 8.347400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667202, 23.859474, 8.571055>,  <23.801416, 23.914585, 8.943814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667202, 23.859474, 8.571055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587874, 0.742355, -0.321423,
		0.736083, -0.655688, -0.168094,
		-0.335538, -0.137776, -0.931897,
		23.566542, 23.818140, 8.291486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387733, 23.675943, 8.727367>,  <23.801416, 23.914585, 8.943814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387733, 23.675943, 8.727367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140051, 23.891636, 8.499047>,  <23.991442, 24.021051, 8.362056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140051, 23.891636, 8.499047>,  <24.387733, 23.675943, 8.727367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140051, 23.891636, 8.499047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629156, 0.775653, 0.050243,
		0.469835, -0.328011, -0.819551,
		-0.619207, 0.539231, -0.570799,
		23.954288, 24.053406, 8.327807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794964, 24.057747, 8.166226>,  <24.387733, 23.675943, 8.727367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794964, 24.057747, 8.166226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457241, 24.272093, 8.165967>,  <24.254608, 24.400700, 8.165812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457241, 24.272093, 8.165967>,  <24.794964, 24.057747, 8.166226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457241, 24.272093, 8.165967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535725, 0.844113, 0.021722,
		0.012188, 0.017993, -0.999764,
		-0.844305, 0.535863, -0.000649,
		24.203949, 24.432852, 8.165772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514919, 23.853474, 8.165046>,  <24.794964, 24.057747, 8.166226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514919, 23.853474, 8.165046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842659, 23.817642, 7.938546>,  <26.039303, 23.796143, 7.802646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842659, 23.817642, 7.938546>,  <25.514919, 23.853474, 8.165046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842659, 23.817642, 7.938546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460257, -0.486098, 0.742881,
		-0.341800, -0.869301, -0.357056,
		0.819352, -0.089579, -0.566250,
		26.088465, 23.790768, 7.768671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734312, 23.118452, 8.157085>,  <25.514919, 23.853474, 8.165046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734312, 23.118452, 8.157085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029724, 23.381115, 8.095926>,  <26.206970, 23.538713, 8.059231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029724, 23.381115, 8.095926>,  <25.734312, 23.118452, 8.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029724, 23.381115, 8.095926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499044, -0.379910, 0.778860,
		0.453357, -0.651513, -0.608275,
		0.738528, 0.656657, -0.152898,
		26.251282, 23.578112, 8.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238850, 22.640060, 8.085983>,  <25.734312, 23.118452, 8.157085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238850, 22.640060, 8.085983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346615, 22.980642, 8.265957>,  <26.411274, 23.184992, 8.373941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346615, 22.980642, 8.265957>,  <26.238850, 22.640060, 8.085983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346615, 22.980642, 8.265957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409840, -0.524162, 0.746515,
		0.871462, -0.016721, -0.490177,
		0.269415, 0.851454, 0.449934,
		26.427439, 23.236078, 8.400937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991936, 22.682102, 8.272951>,  <26.238850, 22.640060, 8.085983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991936, 22.682102, 8.272951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720474, 22.836168, 8.523095>,  <26.557596, 22.928608, 8.673182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720474, 22.836168, 8.523095>,  <26.991936, 22.682102, 8.272951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720474, 22.836168, 8.523095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264168, -0.666465, 0.697165,
		0.685305, 0.638335, 0.350551,
		-0.678655, 0.385167, 0.625359,
		26.516878, 22.951717, 8.710703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176584, 22.292332, 8.895726>,  <26.991936, 22.682102, 8.272951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176584, 22.292332, 8.895726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818541, 22.446669, 8.985085>,  <26.603714, 22.539270, 9.038699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818541, 22.446669, 8.985085>,  <27.176584, 22.292332, 8.895726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818541, 22.446669, 8.985085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088245, -0.644469, 0.759521,
		0.437025, 0.660141, 0.610919,
		-0.895110, 0.385841, 0.223395,
		26.550007, 22.562420, 9.052103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118732, 22.470715, 9.691799>,  <27.176584, 22.292332, 8.895726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118732, 22.470715, 9.691799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761688, 22.405420, 9.523705>,  <26.547461, 22.366243, 9.422848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761688, 22.405420, 9.523705>,  <27.118732, 22.470715, 9.691799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761688, 22.405420, 9.523705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266417, -0.560974, 0.783792,
		-0.363685, 0.811580, 0.457242,
		-0.892611, -0.163237, -0.420236,
		26.493904, 22.356449, 9.397634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602747, 22.677591, 10.210645>,  <27.118732, 22.470715, 9.691799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602747, 22.677591, 10.210645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505013, 22.382635, 9.958754>,  <26.446373, 22.205662, 9.807619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505013, 22.382635, 9.958754>,  <26.602747, 22.677591, 10.210645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505013, 22.382635, 9.958754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220371, -0.590194, 0.776600,
		-0.944318, 0.328524, -0.018294,
		-0.244335, -0.737389, -0.629728,
		26.431711, 22.161419, 9.769835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000095, 22.505024, 10.372673>,  <26.602747, 22.677591, 10.210645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000095, 22.505024, 10.372673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097912, 22.178741, 10.162980>,  <26.156601, 21.982971, 10.037164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097912, 22.178741, 10.162980>,  <26.000095, 22.505024, 10.372673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097912, 22.178741, 10.162980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312452, -0.578100, 0.753774,
		-0.917918, -0.020531, -0.396239,
		0.244541, -0.815708, -0.524233,
		26.171274, 21.934029, 10.005711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.401531, 22.009752, 10.395056>,  <26.000095, 22.505024, 10.372673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.401531, 22.009752, 10.395056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693592, 21.764185, 10.275067>,  <25.868828, 21.616844, 10.203074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693592, 21.764185, 10.275067>,  <25.401531, 22.009752, 10.395056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693592, 21.764185, 10.275067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242351, -0.643154, 0.726374,
		-0.638845, -0.457679, -0.618391,
		0.730166, -0.613908, -0.299957,
		25.912638, 21.580009, 10.185076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087549, 21.392977, 10.447284>,  <25.401531, 22.009752, 10.395056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087549, 21.392977, 10.447284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484928, 21.347263, 10.446714>,  <25.723356, 21.319836, 10.446373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484928, 21.347263, 10.446714>,  <25.087549, 21.392977, 10.447284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484928, 21.347263, 10.446714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070462, -0.622220, 0.779665,
		-0.089988, -0.774456, -0.626195,
		0.993447, -0.114284, -0.001423,
		25.782963, 21.312979, 10.446287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201946, 20.661161, 10.485091>,  <25.087549, 21.392977, 10.447284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201946, 20.661161, 10.485091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521235, 20.867603, 10.609334>,  <25.712807, 20.991468, 10.683880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521235, 20.867603, 10.609334>,  <25.201946, 20.661161, 10.485091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521235, 20.867603, 10.609334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083644, -0.605619, 0.791346,
		0.596529, -0.605689, -0.526587,
		0.798221, 0.516107, 0.310607,
		25.760700, 21.022436, 10.702517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648003, 20.099558, 10.632211>,  <25.201946, 20.661161, 10.485091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648003, 20.099558, 10.632211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791414, 20.424797, 10.815657>,  <25.877460, 20.619942, 10.925724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791414, 20.424797, 10.815657>,  <25.648003, 20.099558, 10.632211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791414, 20.424797, 10.815657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207443, -0.548385, 0.810087,
		0.910179, -0.195302, -0.365283,
		0.358527, 0.813100, 0.458614,
		25.898973, 20.668728, 10.953241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363457, 19.888901, 10.792823>,  <25.648003, 20.099558, 10.632211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363457, 19.888901, 10.792823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252138, 20.201477, 11.016216>,  <26.185347, 20.389023, 11.150252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252138, 20.201477, 11.016216>,  <26.363457, 19.888901, 10.792823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252138, 20.201477, 11.016216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215614, -0.515787, 0.829141,
		0.935982, 0.351164, -0.024947,
		-0.278297, 0.781440, 0.558482,
		26.168650, 20.435909, 11.183761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792341, 19.896053, 11.249072>,  <26.363457, 19.888901, 10.792823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792341, 19.896053, 11.249072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496382, 20.111591, 11.410168>,  <26.318806, 20.240913, 11.506825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496382, 20.111591, 11.410168>,  <26.792341, 19.896053, 11.249072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496382, 20.111591, 11.410168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113530, -0.490069, 0.864259,
		0.663070, 0.685187, 0.301426,
		-0.739898, 0.538843, 0.402739,
		26.274412, 20.273245, 11.530990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032505, 19.988916, 11.949492>,  <26.792341, 19.896053, 11.249072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032505, 19.988916, 11.949492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637280, 20.050238, 11.955569>,  <26.400145, 20.087030, 11.959215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637280, 20.050238, 11.955569>,  <27.032505, 19.988916, 11.949492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637280, 20.050238, 11.955569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065426, -0.506850, 0.859548,
		0.139473, 0.848293, 0.510830,
		-0.988062, 0.153305, 0.015192,
		26.340860, 20.096230, 11.960127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831633, 19.974348, 12.634013>,  <27.032505, 19.988916, 11.949492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831633, 19.974348, 12.634013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478216, 19.934521, 12.450955>,  <26.266167, 19.910624, 12.341121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478216, 19.934521, 12.450955>,  <26.831633, 19.974348, 12.634013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478216, 19.934521, 12.450955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338947, -0.538399, 0.771519,
		-0.323215, 0.836788, 0.441950,
		-0.883543, -0.099569, -0.457645,
		26.213154, 19.904650, 12.313662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293173, 20.043242, 13.125643>,  <26.831633, 19.974348, 12.634013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293173, 20.043242, 13.125643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157804, 19.827745, 12.817038>,  <26.076584, 19.698448, 12.631875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157804, 19.827745, 12.817038>,  <26.293173, 20.043242, 13.125643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157804, 19.827745, 12.817038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384636, -0.669071, 0.635924,
		-0.858793, 0.511963, 0.019210,
		-0.338422, -0.538738, -0.771513,
		26.056278, 19.666124, 12.585584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819750, 19.678867, 13.446085>,  <26.293173, 20.043242, 13.125643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819750, 19.678867, 13.446085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816374, 19.493418, 13.091688>,  <25.814348, 19.382149, 12.879050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816374, 19.493418, 13.091688>,  <25.819750, 19.678867, 13.446085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816374, 19.493418, 13.091688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487309, -0.771786, 0.408505,
		-0.873189, 0.435201, -0.219413,
		-0.008442, -0.463623, -0.885992,
		25.813841, 19.354330, 12.825891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074879, 19.453020, 13.275429>,  <25.819750, 19.678867, 13.446085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074879, 19.453020, 13.275429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318151, 19.213701, 13.066756>,  <25.464115, 19.070110, 12.941552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318151, 19.213701, 13.066756>,  <25.074879, 19.453020, 13.275429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318151, 19.213701, 13.066756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374521, -0.795730, 0.475971,
		-0.699890, -0.094097, -0.708025,
		0.608184, -0.598298, -0.521682,
		25.500607, 19.034212, 12.910252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740261, 19.009306, 12.897693>,  <25.074879, 19.453020, 13.275429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740261, 19.009306, 12.897693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097038, 18.830132, 12.922308>,  <25.311106, 18.722626, 12.937078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097038, 18.830132, 12.922308>,  <24.740261, 19.009306, 12.897693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097038, 18.830132, 12.922308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448561, -0.859535, 0.244934,
		-0.056820, -0.246072, -0.967585,
		0.891944, -0.447938, 0.061539,
		25.364622, 18.695749, 12.940770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709150, 18.325146, 12.541277>,  <24.740261, 19.009306, 12.897693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709150, 18.325146, 12.541277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016281, 18.300861, 12.796386>,  <25.200560, 18.286291, 12.949451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016281, 18.300861, 12.796386>,  <24.709150, 18.325146, 12.541277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016281, 18.300861, 12.796386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320865, -0.898089, 0.300803,
		0.554514, -0.435604, -0.709058,
		0.767828, -0.060713, 0.637773,
		25.246630, 18.282648, 12.987718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869619, 17.584311, 12.638089>,  <24.709150, 18.325146, 12.541277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869619, 17.584311, 12.638089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089319, 17.710451, 12.947638>,  <25.221140, 17.786137, 13.133367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089319, 17.710451, 12.947638>,  <24.869619, 17.584311, 12.638089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089319, 17.710451, 12.947638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110059, -0.890697, 0.441074,
		0.828378, -0.327432, -0.454509,
		0.549252, 0.315353, 0.773871,
		25.254095, 17.805058, 13.179799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547068, 17.170313, 12.674186>,  <24.869619, 17.584311, 12.638089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547068, 17.170313, 12.674186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477217, 17.314367, 13.040750>,  <25.435307, 17.400801, 13.260688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477217, 17.314367, 13.040750>,  <25.547068, 17.170313, 12.674186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477217, 17.314367, 13.040750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063798, -0.932893, 0.354458,
		0.982565, 0.003434, 0.185887,
		-0.174630, 0.360137, 0.916409,
		25.424828, 17.422409, 13.315672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086834, 16.885218, 13.249478>,  <25.547068, 17.170313, 12.674186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086834, 16.885218, 13.249478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758976, 16.994658, 13.450804>,  <25.562262, 17.060322, 13.571599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758976, 16.994658, 13.450804>,  <26.086834, 16.885218, 13.249478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758976, 16.994658, 13.450804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034534, -0.853385, 0.520136,
		0.571828, 0.443709, 0.690025,
		-0.819646, 0.273600, 0.503313,
		25.513083, 17.076736, 13.601798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237421, 16.698622, 13.869816>,  <26.086834, 16.885218, 13.249478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237421, 16.698622, 13.869816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840351, 16.742411, 13.890265>,  <25.602110, 16.768684, 13.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840351, 16.742411, 13.890265>,  <26.237421, 16.698622, 13.869816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840351, 16.742411, 13.890265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067769, -0.854791, 0.514529,
		0.100026, 0.507295, 0.855948,
		-0.992674, 0.109473, 0.051122,
		25.542549, 16.775253, 13.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166460, 16.619656, 14.579681>,  <26.237421, 16.698622, 13.869816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166460, 16.619656, 14.579681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267477, 16.299505, 14.362198>,  <26.328087, 16.107414, 14.231708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267477, 16.299505, 14.362198>,  <26.166460, 16.619656, 14.579681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267477, 16.299505, 14.362198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482441, -0.591252, 0.646276,
		-0.838733, 0.099094, -0.535451,
		0.252545, -0.800376, -0.543709,
		26.343241, 16.059393, 14.199085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536556, 16.294847, 14.385555>,  <26.166460, 16.619656, 14.579681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536556, 16.294847, 14.385555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858961, 16.069675, 14.458720>,  <26.052404, 15.934572, 14.502619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858961, 16.069675, 14.458720>,  <25.536556, 16.294847, 14.385555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858961, 16.069675, 14.458720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531752, -0.552930, 0.641489,
		-0.259975, -0.614311, -0.745007,
		0.806010, -0.562930, 0.182913,
		26.100763, 15.900796, 14.513594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380232, 15.625867, 14.375490>,  <25.536556, 16.294847, 14.385555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380232, 15.625867, 14.375490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656954, 15.716225, 14.649826>,  <25.822987, 15.770439, 14.814427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656954, 15.716225, 14.649826>,  <25.380232, 15.625867, 14.375490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656954, 15.716225, 14.649826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497147, -0.539838, 0.679279,
		0.523687, -0.810893, -0.261161,
		0.691807, 0.225894, 0.685839,
		25.864496, 15.783993, 14.855577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744598, 15.068518, 14.695769>,  <25.380232, 15.625867, 14.375490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744598, 15.068518, 14.695769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772026, 15.345703, 14.982851>,  <25.788483, 15.512014, 15.155100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772026, 15.345703, 14.982851>,  <25.744598, 15.068518, 14.695769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772026, 15.345703, 14.982851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493778, -0.601530, 0.627969,
		0.866880, -0.397447, 0.300922,
		0.068571, 0.692963, 0.717705,
		25.792597, 15.553592, 15.198163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951048, 14.833749, 15.377994>,  <25.744598, 15.068518, 14.695769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951048, 14.833749, 15.377994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770004, 15.177361, 15.473672>,  <25.661379, 15.383528, 15.531079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770004, 15.177361, 15.473672>,  <25.951048, 14.833749, 15.377994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770004, 15.177361, 15.473672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402711, -0.436244, 0.804684,
		0.795595, 0.267879, 0.543387,
		-0.452607, 0.859030, 0.239196,
		25.634222, 15.435069, 15.545430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658253, 15.103015, 15.285575>,  <25.951048, 14.833749, 15.377994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658253, 15.103015, 15.285575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764091, 14.950729, 14.931164>,  <26.827595, 14.859358, 14.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764091, 14.950729, 14.931164>,  <26.658253, 15.103015, 15.285575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764091, 14.950729, 14.931164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178642, -0.883521, 0.432986,
		-0.947669, -0.272848, -0.165765,
		0.264596, -0.380715, -0.886027,
		26.843470, 14.836514, 14.665356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.741171, 15.443851, 24.895748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.361001, 15.406896, 24.776983>,  <15.132899, 15.384722, 24.705725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.361001, 15.406896, 24.776983>,  <15.741171, 15.443851, 24.895748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361001, 15.406896, 24.776983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220703, 0.472199, -0.853416,
		0.219047, -0.876637, -0.428400,
		-0.950426, -0.092389, -0.296910,
		15.075873, 15.379179, 24.687910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698451, 15.225923, 24.087904>,  <15.741171, 15.443851, 24.895748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698451, 15.225923, 24.087904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.342941, 15.390744, 24.168196>,  <15.129636, 15.489637, 24.216372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.342941, 15.390744, 24.168196>,  <15.698451, 15.225923, 24.087904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342941, 15.390744, 24.168196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047545, 0.518467, -0.853775,
		-0.455874, -0.749269, -0.480391,
		-0.888773, 0.412054, 0.200732,
		15.076309, 15.514360, 24.228415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179374, 14.974189, 23.487299>,  <15.698451, 15.225923, 24.087904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179374, 14.974189, 23.487299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.040190, 15.311018, 23.652143>,  <14.956679, 15.513115, 23.751051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.040190, 15.311018, 23.652143>,  <15.179374, 14.974189, 23.487299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040190, 15.311018, 23.652143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050939, 0.421952, -0.905186,
		-0.936124, -0.335962, -0.103928,
		-0.347960, 0.842073, 0.412113,
		14.935802, 15.563640, 23.775778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623799, 15.203113, 23.027159>,  <15.179374, 14.974189, 23.487299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623799, 15.203113, 23.027159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706713, 15.535785, 23.233204>,  <14.756460, 15.735388, 23.356831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706713, 15.535785, 23.233204>,  <14.623799, 15.203113, 23.027159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706713, 15.535785, 23.233204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134299, 0.545755, -0.827113,
		-0.969019, 0.102267, 0.224819,
		0.207282, 0.831681, 0.515113,
		14.768897, 15.785289, 23.387737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073362, 15.683027, 22.787708>,  <14.623799, 15.203113, 23.027159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073362, 15.683027, 22.787708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.372051, 15.898339, 22.943996>,  <14.551265, 16.027527, 23.037769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.372051, 15.898339, 22.943996>,  <14.073362, 15.683027, 22.787708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372051, 15.898339, 22.943996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016365, 0.572381, -0.819824,
		-0.664934, 0.618575, 0.418601,
		0.746723, 0.538279, 0.390719,
		14.596068, 16.059822, 23.061213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849563, 16.328335, 22.564901>,  <14.073362, 15.683027, 22.787708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849563, 16.328335, 22.564901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243496, 16.316154, 22.633223>,  <14.479856, 16.308846, 22.674215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243496, 16.316154, 22.633223>,  <13.849563, 16.328335, 22.564901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243496, 16.316154, 22.633223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163832, 0.487238, -0.857763,
		-0.057102, 0.872738, 0.484838,
		0.984834, -0.030452, 0.170805,
		14.538946, 16.307018, 22.684464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042615, 16.890999, 22.265846>,  <13.849563, 16.328335, 22.564901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042615, 16.890999, 22.265846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.395471, 16.714197, 22.330915>,  <14.607184, 16.608116, 22.369957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.395471, 16.714197, 22.330915>,  <14.042615, 16.890999, 22.265846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395471, 16.714197, 22.330915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346083, 0.374043, -0.860418,
		0.319461, 0.815307, 0.482928,
		0.882140, -0.442004, 0.162672,
		14.660112, 16.581596, 22.379717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582013, 17.401642, 22.176014>,  <14.042615, 16.890999, 22.265846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582013, 17.401642, 22.176014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.749874, 17.047970, 22.093929>,  <14.850591, 16.835766, 22.044678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.749874, 17.047970, 22.093929>,  <14.582013, 17.401642, 22.176014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.749874, 17.047970, 22.093929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384795, 0.378061, -0.842023,
		0.822085, 0.274393, 0.498884,
		0.419654, -0.884182, -0.205214,
		14.875771, 16.782715, 22.032366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227611, 17.565504, 21.821838>,  <14.582013, 17.401642, 22.176014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227611, 17.565504, 21.821838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.189865, 17.175394, 21.741905>,  <15.167217, 16.941328, 21.693945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.189865, 17.175394, 21.741905>,  <15.227611, 17.565504, 21.821838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189865, 17.175394, 21.741905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379566, 0.150323, -0.912871,
		0.920340, -0.161993, 0.355996,
		-0.094365, -0.975275, -0.199835,
		15.161555, 16.882812, 21.681955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832149, 17.253977, 21.613470>,  <15.227611, 17.565504, 21.821838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832149, 17.253977, 21.613470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.559694, 16.996792, 21.473383>,  <15.396222, 16.842480, 21.389330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.559694, 16.996792, 21.473383>,  <15.832149, 17.253977, 21.613470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559694, 16.996792, 21.473383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485776, -0.038982, -0.873214,
		0.547793, -0.764904, 0.338889,
		-0.681135, -0.642964, -0.350217,
		15.355353, 16.803902, 21.368319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206696, 16.610552, 21.435106>,  <15.832149, 17.253977, 21.613470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206696, 16.610552, 21.435106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.873238, 16.652082, 21.218126>,  <15.673162, 16.677002, 21.087938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.873238, 16.652082, 21.218126>,  <16.206696, 16.610552, 21.435106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873238, 16.652082, 21.218126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544859, -0.006051, -0.838506,
		-0.090344, -0.994577, -0.051528,
		-0.833647, 0.103829, -0.542450,
		15.623143, 16.683231, 21.055391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224401, 16.050459, 21.011225>,  <16.206696, 16.610552, 21.435106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224401, 16.050459, 21.011225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.956611, 16.292789, 20.839283>,  <15.795937, 16.438189, 20.736118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.956611, 16.292789, 20.839283>,  <16.224401, 16.050459, 21.011225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956611, 16.292789, 20.839283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331153, -0.274582, -0.902741,
		-0.664935, -0.746712, -0.016795,
		-0.669476, 0.605827, -0.429856,
		15.755768, 16.474537, 20.710327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002129, 15.669656, 20.489847>,  <16.224401, 16.050459, 21.011225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002129, 15.669656, 20.489847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.904207, 16.035284, 20.360512>,  <15.845454, 16.254662, 20.282911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.904207, 16.035284, 20.360512>,  <16.002129, 15.669656, 20.489847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904207, 16.035284, 20.360512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356965, -0.225090, -0.906593,
		-0.901469, -0.337358, -0.271188,
		-0.244805, 0.914070, -0.323337,
		15.830766, 16.309505, 20.263510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570705, 15.618299, 19.853662>,  <16.002129, 15.669656, 20.489847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570705, 15.618299, 19.853662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.735192, 15.981791, 19.825071>,  <15.833884, 16.199886, 19.807917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.735192, 15.981791, 19.825071>,  <15.570705, 15.618299, 19.853662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735192, 15.981791, 19.825071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199349, -0.166173, -0.965737,
		-0.889472, 0.382877, -0.249487,
		0.411217, 0.908731, -0.071480,
		15.858558, 16.254410, 19.803627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509306, 15.795321, 19.155468>,  <15.570705, 15.618299, 19.853662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509306, 15.795321, 19.155468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.789079, 16.056637, 19.271404>,  <15.956943, 16.213427, 19.340965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.789079, 16.056637, 19.271404>,  <15.509306, 15.795321, 19.155468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789079, 16.056637, 19.271404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385194, -0.002977, -0.922831,
		-0.602015, 0.757101, -0.253726,
		0.699431, 0.653291, 0.289838,
		15.998908, 16.252625, 19.358356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572167, 16.219648, 18.634108>,  <15.509306, 15.795321, 19.155468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572167, 16.219648, 18.634108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.910910, 16.284184, 18.836811>,  <16.114155, 16.322905, 18.958433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.910910, 16.284184, 18.836811>,  <15.572167, 16.219648, 18.634108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910910, 16.284184, 18.836811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480401, 0.176707, -0.859063,
		-0.228146, 0.970951, 0.072139,
		0.846855, 0.161337, 0.506761,
		16.164967, 16.332584, 18.988840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815976, 16.838720, 18.328482>,  <15.572167, 16.219648, 18.634108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815976, 16.838720, 18.328482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.127453, 16.655624, 18.500114>,  <16.314339, 16.545767, 18.603094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.127453, 16.655624, 18.500114>,  <15.815976, 16.838720, 18.328482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127453, 16.655624, 18.500114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556557, 0.188260, -0.809199,
		0.289625, 0.868926, 0.401355,
		0.778692, -0.457741, 0.429082,
		16.361061, 16.518303, 18.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361673, 17.292929, 18.341850>,  <15.815976, 16.838720, 18.328482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361673, 17.292929, 18.341850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.555878, 16.951052, 18.415361>,  <16.672401, 16.745926, 18.459469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.555878, 16.951052, 18.415361>,  <16.361673, 17.292929, 18.341850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555878, 16.951052, 18.415361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681710, 0.238526, -0.691648,
		0.547311, 0.461088, 0.698462,
		0.485512, -0.854695, 0.183780,
		16.701530, 16.694643, 18.470495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075115, 17.401976, 18.262062>,  <16.361673, 17.292929, 18.341850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075115, 17.401976, 18.262062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.051292, 17.002861, 18.250246>,  <17.036999, 16.763391, 18.243156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.051292, 17.002861, 18.250246>,  <17.075115, 17.401976, 18.262062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051292, 17.002861, 18.250246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670030, -0.018023, -0.742115,
		0.739941, -0.063991, 0.669621,
		-0.059557, -0.997788, -0.029540,
		17.033424, 16.703526, 18.241385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732584, 17.174360, 18.323376>,  <17.075115, 17.401976, 18.262062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732584, 17.174360, 18.323376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.518309, 16.888720, 18.143112>,  <17.389744, 16.717335, 18.034954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.518309, 16.888720, 18.143112>,  <17.732584, 17.174360, 18.323376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518309, 16.888720, 18.143112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675423, -0.042050, -0.736230,
		0.506793, -0.698778, 0.504846,
		-0.535690, -0.714101, -0.450660,
		17.357601, 16.674490, 18.007914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238848, 16.760897, 17.948084>,  <17.732584, 17.174360, 18.323376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238848, 16.760897, 17.948084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.886158, 16.648520, 17.796488>,  <17.674543, 16.581093, 17.705530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.886158, 16.648520, 17.796488>,  <18.238848, 16.760897, 17.948084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886158, 16.648520, 17.796488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399666, -0.017998, -0.916484,
		0.250661, -0.959555, 0.128154,
		-0.881723, -0.280945, -0.378990,
		17.621641, 16.564236, 17.682791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430149, 16.413195, 17.420649>,  <18.238848, 16.760897, 17.948084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430149, 16.413195, 17.420649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.047796, 16.460190, 17.312952>,  <17.818384, 16.488386, 17.248335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.047796, 16.460190, 17.312952>,  <18.430149, 16.413195, 17.420649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047796, 16.460190, 17.312952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293203, 0.325244, -0.899026,
		-0.018055, -0.938303, -0.345342,
		-0.955880, 0.117487, -0.269241,
		17.761032, 16.495436, 17.232180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936871, 16.243839, 16.997766>,  <18.430149, 16.413195, 17.420649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936871, 16.243839, 16.997766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.314772, 16.253498, 17.128521>,  <19.541513, 16.259295, 17.206974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.314772, 16.253498, 17.128521>,  <18.936871, 16.243839, 16.997766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314772, 16.253498, 17.128521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327683, 0.045547, 0.943689,
		0.007887, -0.998670, 0.050939,
		0.944755, 0.024134, 0.326888,
		19.598198, 16.260742, 17.226587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015205, 15.677107, 17.489651>,  <18.936871, 16.243839, 16.997766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015205, 15.677107, 17.489651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.305767, 15.938873, 17.573627>,  <19.480104, 16.095934, 17.624014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.305767, 15.938873, 17.573627>,  <19.015205, 15.677107, 17.489651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305767, 15.938873, 17.573627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198792, -0.092348, 0.975681,
		0.657890, -0.750474, 0.063011,
		0.726404, 0.654417, 0.209943,
		19.523689, 16.135199, 17.636610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474691, 15.382821, 17.998379>,  <19.015205, 15.677107, 17.489651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474691, 15.382821, 17.998379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.564434, 15.770995, 18.033981>,  <19.618279, 16.003899, 18.055344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.564434, 15.770995, 18.033981>,  <19.474691, 15.382821, 17.998379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564434, 15.770995, 18.033981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044057, -0.081142, 0.995728,
		0.973511, -0.227318, 0.024550,
		0.224355, 0.970434, 0.089008,
		19.631741, 16.062126, 18.060684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892229, 15.463449, 18.611732>,  <19.474691, 15.382821, 17.998379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892229, 15.463449, 18.611732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.725172, 15.818126, 18.532385>,  <19.624937, 16.030931, 18.484776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.725172, 15.818126, 18.532385>,  <19.892229, 15.463449, 18.611732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725172, 15.818126, 18.532385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198182, 0.124169, 0.972268,
		0.886734, 0.445375, 0.123869,
		-0.417644, 0.886692, -0.198370,
		19.599878, 16.084133, 18.472874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264000, 16.007820, 18.890728>,  <19.892229, 15.463449, 18.611732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264000, 16.007820, 18.890728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.880541, 16.118023, 18.862185>,  <19.650465, 16.184145, 18.845058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.880541, 16.118023, 18.862185>,  <20.264000, 16.007820, 18.890728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880541, 16.118023, 18.862185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006139, 0.270699, 0.962645,
		0.284534, 0.922397, -0.261196,
		-0.958646, 0.275509, -0.071360,
		19.592947, 16.200676, 18.840776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172876, 16.409266, 19.389099>,  <20.264000, 16.007820, 18.890728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172876, 16.409266, 19.389099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.780128, 16.364344, 19.328018>,  <19.544479, 16.337391, 19.291370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.780128, 16.364344, 19.328018>,  <20.172876, 16.409266, 19.389099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780128, 16.364344, 19.328018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171379, 0.181751, 0.968295,
		-0.080991, 0.976911, -0.197703,
		-0.981871, -0.112305, -0.152702,
		19.485567, 16.330652, 19.282207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770819, 16.963934, 19.782972>,  <20.172876, 16.409266, 19.389099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770819, 16.963934, 19.782972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.526846, 16.651243, 19.730993>,  <19.380463, 16.463629, 19.699806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.526846, 16.651243, 19.730993>,  <19.770819, 16.963934, 19.782972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.526846, 16.651243, 19.730993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148883, -0.048024, 0.987688,
		-0.778343, 0.621770, -0.087095,
		-0.609932, -0.781726, -0.129950,
		19.343866, 16.416725, 19.692009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242056, 17.114470, 20.204874>,  <19.770819, 16.963934, 19.782972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242056, 17.114470, 20.204874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.203438, 16.725300, 20.120880>,  <19.180267, 16.491798, 20.070484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.203438, 16.725300, 20.120880>,  <19.242056, 17.114470, 20.204874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.203438, 16.725300, 20.120880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218142, -0.185160, 0.958191,
		-0.971130, 0.138316, -0.194359,
		-0.096546, -0.972926, -0.209986,
		19.174475, 16.433422, 20.057884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791557, 16.888367, 20.616747>,  <19.242056, 17.114470, 20.204874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791557, 16.888367, 20.616747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.900583, 16.522825, 20.496361>,  <18.966000, 16.303501, 20.424129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.900583, 16.522825, 20.496361>,  <18.791557, 16.888367, 20.616747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900583, 16.522825, 20.496361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270308, -0.372945, 0.887606,
		-0.923386, -0.160577, -0.348674,
		0.272565, -0.913853, -0.300967,
		18.982353, 16.248669, 20.406071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230841, 16.456757, 20.683527>,  <18.791557, 16.888367, 20.616747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230841, 16.456757, 20.683527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.565065, 16.240044, 20.719995>,  <18.765600, 16.110016, 20.741877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.565065, 16.240044, 20.719995>,  <18.230841, 16.456757, 20.683527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565065, 16.240044, 20.719995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369525, -0.431407, 0.823006,
		-0.406550, -0.721366, -0.560668,
		0.835565, -0.541774, 0.091174,
		18.815733, 16.077509, 20.747347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040186, 15.778948, 20.872715>,  <18.230841, 16.456757, 20.683527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040186, 15.778948, 20.872715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.428194, 15.767167, 20.969212>,  <18.660999, 15.760098, 21.027109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.428194, 15.767167, 20.969212>,  <18.040186, 15.778948, 20.872715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428194, 15.767167, 20.969212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239230, -0.290574, 0.926464,
		0.042812, -0.956399, -0.288908,
		0.970019, -0.029452, 0.241240,
		18.719200, 15.758331, 21.041584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092237, 15.152149, 21.096565>,  <18.040186, 15.778948, 20.872715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092237, 15.152149, 21.096565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.412830, 15.329754, 21.256805>,  <18.605186, 15.436316, 21.352949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.412830, 15.329754, 21.256805>,  <18.092237, 15.152149, 21.096565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.412830, 15.329754, 21.256805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238035, -0.377663, 0.894824,
		0.548606, -0.812541, -0.196999,
		0.801480, 0.444013, 0.400601,
		18.653275, 15.462957, 21.376986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388371, 14.739041, 21.619715>,  <18.092237, 15.152149, 21.096565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388371, 14.739041, 21.619715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529026, 15.100170, 21.718718>,  <18.613420, 15.316848, 21.778120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529026, 15.100170, 21.718718>,  <18.388371, 14.739041, 21.619715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529026, 15.100170, 21.718718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176161, -0.195853, 0.964681,
		0.919411, -0.382821, 0.090172,
		0.351640, 0.902823, 0.247507,
		18.634518, 15.371017, 21.792971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857981, 14.662662, 22.190397>,  <18.388371, 14.739041, 21.619715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857981, 14.662662, 22.190397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.690538, 15.025891, 22.195629>,  <18.590073, 15.243829, 22.198769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.690538, 15.025891, 22.195629>,  <18.857981, 14.662662, 22.190397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.690538, 15.025891, 22.195629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366910, -0.182279, 0.912224,
		0.830751, 0.377062, 0.409484,
		-0.418605, 0.908074, 0.013081,
		18.564957, 15.298313, 22.199553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879990, 14.798571, 22.919863>,  <18.857981, 14.662662, 22.190397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879990, 14.798571, 22.919863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.687254, 15.131480, 22.810207>,  <18.571611, 15.331225, 22.744415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.687254, 15.131480, 22.810207>,  <18.879990, 14.798571, 22.919863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687254, 15.131480, 22.810207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444881, 0.037176, 0.894817,
		0.754924, 0.553117, 0.352350,
		-0.481840, 0.832273, -0.274137,
		18.542702, 15.381163, 22.727966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051191, 15.421727, 23.436996>,  <18.879990, 14.798571, 22.919863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051191, 15.421727, 23.436996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.696375, 15.467737, 23.258144>,  <18.483484, 15.495343, 23.150833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.696375, 15.467737, 23.258144>,  <19.051191, 15.421727, 23.436996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696375, 15.467737, 23.258144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460347, -0.146602, 0.875550,
		0.035160, 0.982485, 0.182994,
		-0.887043, 0.115025, -0.447130,
		18.430262, 15.502245, 23.124006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696356, 15.997404, 23.790888>,  <19.051191, 15.421727, 23.436996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696356, 15.997404, 23.790888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.424759, 15.759640, 23.618542>,  <18.261801, 15.616981, 23.515133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.424759, 15.759640, 23.618542>,  <18.696356, 15.997404, 23.790888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424759, 15.759640, 23.618542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486754, -0.074851, 0.870326,
		-0.549582, 0.800670, -0.238509,
		-0.678991, -0.594411, -0.430867,
		18.221062, 15.581316, 23.489283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144737, 16.261738, 24.090137>,  <18.696356, 15.997404, 23.790888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144737, 16.261738, 24.090137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.017256, 15.920848, 23.924179>,  <17.940767, 15.716314, 23.824604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.017256, 15.920848, 23.924179>,  <18.144737, 16.261738, 24.090137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017256, 15.920848, 23.924179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548274, -0.191311, 0.814123,
		-0.773190, 0.486943, -0.406280,
		-0.318706, -0.852224, -0.414898,
		17.921644, 15.665180, 23.799709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.429256, 16.216211, 24.245235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.533298, 15.841531, 24.151484>,  <17.595724, 15.616722, 24.095232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.533298, 15.841531, 24.151484>,  <17.429256, 16.216211, 24.245235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533298, 15.841531, 24.151484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414774, -0.327586, 0.848911,
		-0.871957, -0.123591, -0.473727,
		0.260104, -0.936703, -0.234379,
		17.611330, 15.560520, 24.081169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890865, 15.949112, 24.388496>,  <17.429256, 16.216211, 24.245235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890865, 15.949112, 24.388496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.172415, 15.664994, 24.385941>,  <17.341345, 15.494523, 24.384407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.172415, 15.664994, 24.385941>,  <16.890865, 15.949112, 24.388496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172415, 15.664994, 24.385941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407856, -0.411503, 0.815058,
		-0.581562, -0.571091, -0.579345,
		0.703874, -0.710296, -0.006392,
		17.383577, 15.451905, 24.384024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547035, 15.308579, 24.513855>,  <16.890865, 15.949112, 24.388496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547035, 15.308579, 24.513855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.925127, 15.272329, 24.639282>,  <17.151983, 15.250580, 24.714539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.925127, 15.272329, 24.639282>,  <16.547035, 15.308579, 24.513855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925127, 15.272329, 24.639282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320228, -0.443449, 0.837142,
		0.063187, -0.891706, -0.448182,
		0.945231, -0.090624, 0.313570,
		17.208696, 15.245142, 24.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505716, 14.654293, 24.664198>,  <16.547035, 15.308579, 24.513855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505716, 14.654293, 24.664198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.834101, 14.781313, 24.854013>,  <17.031132, 14.857525, 24.967903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.834101, 14.781313, 24.854013>,  <16.505716, 14.654293, 24.664198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834101, 14.781313, 24.854013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284810, -0.492577, 0.822345,
		0.494882, -0.810266, -0.313945,
		0.820960, 0.317549, 0.474539,
		17.080389, 14.876577, 24.996376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785585, 14.058201, 25.032211>,  <16.505716, 14.654293, 24.664198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785585, 14.058201, 25.032211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.914900, 14.386312, 25.220947>,  <16.992489, 14.583178, 25.334188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.914900, 14.386312, 25.220947>,  <16.785585, 14.058201, 25.032211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914900, 14.386312, 25.220947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272225, -0.396923, 0.876553,
		0.906300, -0.411824, 0.094980,
		0.323286, 0.820276, 0.471840,
		17.011887, 14.632395, 25.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297626, 13.790117, 25.523510>,  <16.785585, 14.058201, 25.032211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297626, 13.790117, 25.523510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.191353, 14.156865, 25.642681>,  <17.127588, 14.376914, 25.714184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.191353, 14.156865, 25.642681>,  <17.297626, 13.790117, 25.523510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191353, 14.156865, 25.642681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186784, -0.352136, 0.917122,
		0.945792, 0.188018, 0.264814,
		-0.265686, 0.916870, 0.297929,
		17.111647, 14.431926, 25.732059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580393, 13.889635, 26.058077>,  <17.297626, 13.790117, 25.523510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580393, 13.889635, 26.058077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.278784, 14.148440, 26.103376>,  <17.097818, 14.303723, 26.130556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.278784, 14.148440, 26.103376>,  <17.580393, 13.889635, 26.058077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278784, 14.148440, 26.103376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093406, -0.276278, 0.956528,
		0.650175, 0.710664, 0.268755,
		-0.754021, 0.647014, 0.113248,
		17.052578, 14.342545, 26.137350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687496, 14.198518, 26.692863>,  <17.580393, 13.889635, 26.058077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687496, 14.198518, 26.692863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.300705, 14.250194, 26.604984>,  <17.068630, 14.281199, 26.552258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.300705, 14.250194, 26.604984>,  <17.687496, 14.198518, 26.692863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300705, 14.250194, 26.604984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249735, -0.308188, 0.917961,
		0.050883, 0.942513, 0.330274,
		-0.966976, 0.129190, -0.219697,
		17.010612, 14.288951, 26.539076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.431440, 14.621489, 27.190260>,  <17.687496, 14.198518, 26.692863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.431440, 14.621489, 27.190260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.113764, 14.416606, 27.059475>,  <16.923159, 14.293676, 26.981003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.113764, 14.416606, 27.059475>,  <17.431440, 14.621489, 27.190260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113764, 14.416606, 27.059475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250687, -0.213978, 0.944124,
		-0.553550, 0.831780, 0.041535,
		-0.794190, -0.512207, -0.326964,
		16.875507, 14.262943, 26.961386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002682, 14.690765, 27.720734>,  <17.431440, 14.621489, 27.190260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002682, 14.690765, 27.720734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.795324, 14.404847, 27.532974>,  <16.670910, 14.233296, 27.420319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.795324, 14.404847, 27.532974>,  <17.002682, 14.690765, 27.720734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795324, 14.404847, 27.532974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368262, -0.308805, 0.876940,
		-0.771785, 0.627462, -0.103149,
		-0.518393, -0.714795, -0.469401,
		16.639807, 14.190409, 27.392155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219833, 14.797275, 27.851667>,  <17.002682, 14.690765, 27.720734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219833, 14.797275, 27.851667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.317287, 14.421733, 27.754349>,  <16.375759, 14.196407, 27.695957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.317287, 14.421733, 27.754349>,  <16.219833, 14.797275, 27.851667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317287, 14.421733, 27.754349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302125, -0.311843, 0.900819,
		-0.921609, -0.145963, -0.359627,
		0.243633, -0.938855, -0.243298,
		16.390377, 14.140077, 27.681360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701327, 14.395905, 28.150436>,  <16.219833, 14.797275, 27.851667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701327, 14.395905, 28.150436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.982073, 14.119071, 28.083019>,  <16.150520, 13.952971, 28.042568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.982073, 14.119071, 28.083019>,  <15.701327, 14.395905, 28.150436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.982073, 14.119071, 28.083019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220834, -0.436371, 0.872246,
		-0.677216, -0.574977, -0.459108,
		0.701863, -0.692086, -0.168543,
		16.192633, 13.911446, 28.032455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449560, 13.795680, 28.438080>,  <15.701327, 14.395905, 28.150436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449560, 13.795680, 28.438080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.832786, 13.684206, 28.411396>,  <16.062721, 13.617322, 28.395386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.832786, 13.684206, 28.411396>,  <15.449560, 13.795680, 28.438080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832786, 13.684206, 28.411396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114556, -0.585861, 0.802274,
		-0.262662, -0.760987, -0.593217,
		0.958063, -0.278684, -0.066708,
		16.120205, 13.600601, 28.391384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544219, 13.058163, 28.421537>,  <15.449560, 13.795680, 28.438080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544219, 13.058163, 28.421537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.914541, 13.151801, 28.540253>,  <16.136734, 13.207984, 28.611483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.914541, 13.151801, 28.540253>,  <15.544219, 13.058163, 28.421537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.914541, 13.151801, 28.540253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003260, -0.780183, 0.625542,
		0.377988, -0.580098, -0.721535,
		0.925805, 0.234095, 0.296790,
		16.192284, 13.222030, 28.629290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817217, 12.423145, 28.519537>,  <15.544219, 13.058163, 28.421537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817217, 12.423145, 28.519537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.040926, 12.656420, 28.755201>,  <16.175152, 12.796384, 28.896601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.040926, 12.656420, 28.755201>,  <15.817217, 12.423145, 28.519537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040926, 12.656420, 28.755201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055017, -0.683023, 0.728321,
		0.827156, -0.439744, -0.349911,
		0.559272, 0.583185, 0.589160,
		16.208708, 12.831375, 28.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456766, 12.008965, 28.634218>,  <15.817217, 12.423145, 28.519537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456766, 12.008965, 28.634218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.461294, 12.289279, 28.919533>,  <16.464012, 12.457467, 29.090721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.461294, 12.289279, 28.919533>,  <16.456766, 12.008965, 28.634218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461294, 12.289279, 28.919533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306342, -0.681461, 0.664655,
		0.951854, 0.210984, -0.222395,
		0.011322, 0.700783, 0.713285,
		16.464691, 12.499514, 29.133518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120127, 12.021463, 28.930618>,  <16.456766, 12.008965, 28.634218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120127, 12.021463, 28.930618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.890360, 12.186213, 29.213575>,  <16.752501, 12.285064, 29.383350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.890360, 12.186213, 29.213575>,  <17.120127, 12.021463, 28.930618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890360, 12.186213, 29.213575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243217, -0.739282, 0.627940,
		0.781595, 0.532749, 0.324480,
		-0.574416, 0.411875, 0.707393,
		16.718035, 12.309776, 29.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465260, 11.990966, 29.565384>,  <17.120127, 12.021463, 28.930618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465260, 11.990966, 29.565384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081600, 12.028215, 29.672235>,  <16.851404, 12.050566, 29.736347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081600, 12.028215, 29.672235>,  <17.465260, 11.990966, 29.565384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081600, 12.028215, 29.672235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115536, -0.732977, 0.670370,
		0.258227, 0.673849, 0.692276,
		-0.959151, 0.093124, 0.267128,
		16.793856, 12.056152, 29.752375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521870, 11.635557, 30.195261>,  <17.465260, 11.990966, 29.565384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521870, 11.635557, 30.195261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.128305, 11.692174, 30.151661>,  <16.892166, 11.726144, 30.125502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.128305, 11.692174, 30.151661>,  <17.521870, 11.635557, 30.195261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128305, 11.692174, 30.151661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177474, -0.704544, 0.687110,
		0.020460, 0.695401, 0.718330,
		-0.983913, 0.141543, -0.109001,
		16.833132, 11.734637, 30.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233944, 11.684216, 30.851950>,  <17.521870, 11.635557, 30.195261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233944, 11.684216, 30.851950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.919743, 11.595846, 30.620718>,  <16.731222, 11.542825, 30.481979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.919743, 11.595846, 30.620718>,  <17.233944, 11.684216, 30.851950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919743, 11.595846, 30.620718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273037, -0.714562, 0.644089,
		-0.555368, 0.663772, 0.500971,
		-0.785504, -0.220923, -0.578080,
		16.684092, 11.529570, 30.447294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743675, 11.520785, 31.303375>,  <17.233944, 11.684216, 30.851950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743675, 11.520785, 31.303375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.611290, 11.361301, 30.961266>,  <16.531858, 11.265611, 30.756001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.611290, 11.361301, 30.961266>,  <16.743675, 11.520785, 31.303375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611290, 11.361301, 30.961266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214899, -0.850691, 0.479733,
		-0.918848, 0.342571, 0.195866,
		-0.330964, -0.398710, -0.855274,
		16.512001, 11.241689, 30.704683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036362, 11.296059, 31.419695>,  <16.743675, 11.520785, 31.303375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036362, 11.296059, 31.419695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.183058, 11.096498, 31.105600>,  <16.271076, 10.976761, 30.917143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.183058, 11.096498, 31.105600>,  <16.036362, 11.296059, 31.419695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183058, 11.096498, 31.105600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181321, -0.866192, 0.465654,
		-0.912483, -0.028393, -0.408128,
		0.366739, -0.498903, -0.785238,
		16.293079, 10.946827, 30.870029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812501, 10.553493, 31.185127>,  <16.036362, 11.296059, 31.419695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812501, 10.553493, 31.185127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.896505, 10.388362, 31.539635>,  <15.946908, 10.289284, 31.752338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.896505, 10.388362, 31.539635>,  <15.812501, 10.553493, 31.185127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896505, 10.388362, 31.539635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633436, 0.747954, 0.198300,
		-0.744751, 0.519748, 0.418579,
		0.210012, -0.412827, 0.886267,
		15.959509, 10.264514, 31.805515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085014, 10.644099, 31.019249>,  <15.812501, 10.553493, 31.185127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085014, 10.644099, 31.019249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.750666, 10.426270, 30.991653>,  <14.550056, 10.295572, 30.975096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.750666, 10.426270, 30.991653>,  <15.085014, 10.644099, 31.019249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750666, 10.426270, 30.991653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322041, 0.588272, -0.741772,
		0.444531, -0.597810, -0.667095,
		-0.835872, -0.544573, -0.068986,
		14.499905, 10.262897, 30.970957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159757, 10.272663, 30.393251>,  <15.085014, 10.644099, 31.019249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159757, 10.272663, 30.393251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.769545, 10.308713, 30.473469>,  <14.535418, 10.330342, 30.521599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.769545, 10.308713, 30.473469>,  <15.159757, 10.272663, 30.393251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769545, 10.308713, 30.473469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098796, 0.635174, -0.766025,
		-0.196418, -0.767093, -0.610727,
		-0.975530, 0.090124, 0.200546,
		14.476886, 10.335750, 30.533632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743872, 10.080076, 29.774668>,  <15.159757, 10.272663, 30.393251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743872, 10.080076, 29.774668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.533071, 10.334107, 30.000568>,  <14.406590, 10.486526, 30.136108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.533071, 10.334107, 30.000568>,  <14.743872, 10.080076, 29.774668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.533071, 10.334107, 30.000568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190089, 0.559599, -0.806669,
		-0.828332, -0.532470, -0.174189,
		-0.527003, 0.635079, 0.564750,
		14.374969, 10.524632, 30.169992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987820, 10.164072, 29.429541>,  <14.743872, 10.080076, 29.774668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987820, 10.164072, 29.429541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.031906, 10.475201, 29.677038>,  <14.058358, 10.661878, 29.825537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.031906, 10.475201, 29.677038>,  <13.987820, 10.164072, 29.429541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031906, 10.475201, 29.677038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587240, 0.553220, -0.590844,
		-0.801874, -0.298232, 0.517742,
		0.110217, 0.777821, 0.618746,
		14.064971, 10.708547, 29.862661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303651, 10.564830, 29.521669>,  <13.987820, 10.164072, 29.429541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303651, 10.564830, 29.521669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.587454, 10.821133, 29.638994>,  <13.757735, 10.974915, 29.709389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.587454, 10.821133, 29.638994>,  <13.303651, 10.564830, 29.521669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587454, 10.821133, 29.638994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347915, 0.680463, -0.644923,
		-0.612825, 0.355530, 0.705722,
		0.709507, 0.640756, 0.293311,
		13.800306, 11.013359, 29.726988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966793, 11.110632, 29.337824>,  <13.303651, 10.564830, 29.521669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966793, 11.110632, 29.337824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.328787, 11.252510, 29.431799>,  <13.545983, 11.337637, 29.488184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.328787, 11.252510, 29.431799>,  <12.966793, 11.110632, 29.337824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328787, 11.252510, 29.431799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089253, 0.698210, -0.710307,
		-0.415979, 0.621847, 0.663526,
		0.904984, 0.354695, 0.234939,
		13.600282, 11.358918, 29.502281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884151, 11.802431, 29.446762>,  <12.966793, 11.110632, 29.337824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884151, 11.802431, 29.446762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.272504, 11.754351, 29.363876>,  <13.505516, 11.725502, 29.314144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.272504, 11.754351, 29.363876>,  <12.884151, 11.802431, 29.446762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272504, 11.754351, 29.363876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068290, 0.690238, -0.720353,
		0.229615, 0.713529, 0.661931,
		0.970883, -0.120201, -0.207216,
		13.563768, 11.718290, 29.301712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124467, 12.586923, 29.474600>,  <12.884151, 11.802431, 29.446762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124467, 12.586923, 29.474600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.375294, 12.354559, 29.267012>,  <13.525790, 12.215140, 29.142458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.375294, 12.354559, 29.267012>,  <13.124467, 12.586923, 29.474600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375294, 12.354559, 29.267012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130729, 0.735262, -0.665056,
		0.767917, 0.349191, 0.537000,
		0.627067, -0.580909, -0.518971,
		13.563414, 12.180286, 29.111320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550284, 13.094455, 29.222895>,  <13.124467, 12.586923, 29.474600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550284, 13.094455, 29.222895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.623072, 12.768180, 29.003242>,  <13.666744, 12.572415, 28.871452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.623072, 12.768180, 29.003242>,  <13.550284, 13.094455, 29.222895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623072, 12.768180, 29.003242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091357, 0.570061, -0.816507,
		0.979051, 0.098411, 0.178252,
		0.181968, -0.815687, -0.549129,
		13.677662, 12.523474, 28.838505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.124574, 13.270279, 28.921251>,  <13.550284, 13.094455, 29.222895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.124574, 13.270279, 28.921251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.958520, 12.993377, 28.685135>,  <13.858888, 12.827235, 28.543465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.958520, 12.993377, 28.685135>,  <14.124574, 13.270279, 28.921251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958520, 12.993377, 28.685135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142007, 0.591582, -0.793640,
		0.898608, -0.413293, -0.147281,
		-0.415135, -0.692257, -0.590291,
		13.833980, 12.785700, 28.508047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.585124, 13.146679, 28.425970>,  <14.124574, 13.270279, 28.921251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.585124, 13.146679, 28.425970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.272270, 12.977993, 28.242481>,  <14.084558, 12.876781, 28.132389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.272270, 12.977993, 28.242481>,  <14.585124, 13.146679, 28.425970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.272270, 12.977993, 28.242481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311562, 0.372869, -0.874013,
		0.539627, -0.826514, -0.160243,
		-0.782133, -0.421715, -0.458720,
		14.037630, 12.851479, 28.104866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827609, 12.824739, 27.763773>,  <14.585124, 13.146679, 28.425970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827609, 12.824739, 27.763773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.436225, 12.898324, 27.726305>,  <14.201394, 12.942474, 27.703825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.436225, 12.898324, 27.726305>,  <14.827609, 12.824739, 27.763773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436225, 12.898324, 27.726305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169797, 0.459118, -0.871998,
		-0.117408, -0.869120, -0.480465,
		-0.978460, 0.183961, -0.093670,
		14.142687, 12.953512, 27.698204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682969, 12.788250, 27.109602>,  <14.827609, 12.824739, 27.763773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682969, 12.788250, 27.109602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.361090, 12.995308, 27.225880>,  <14.167962, 13.119543, 27.295647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.361090, 12.995308, 27.225880>,  <14.682969, 12.788250, 27.109602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361090, 12.995308, 27.225880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002963, 0.493144, -0.869943,
		-0.593677, -0.699180, -0.398366,
		-0.804698, 0.517646, 0.290696,
		14.119680, 13.150601, 27.313089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244353, 12.730033, 26.577238>,  <14.682969, 12.788250, 27.109602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.244353, 12.730033, 26.577238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.118608, 13.053697, 26.775808>,  <14.043161, 13.247894, 26.894951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.118608, 13.053697, 26.775808>,  <14.244353, 12.730033, 26.577238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118608, 13.053697, 26.775808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191602, 0.566258, -0.801649,
		-0.929766, -0.156892, -0.333046,
		-0.314362, 0.809158, 0.496427,
		14.024300, 13.296444, 26.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757436, 13.107379, 26.201588>,  <14.244353, 12.730033, 26.577238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757436, 13.107379, 26.201588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.847631, 13.398456, 26.460701>,  <13.901748, 13.573102, 26.616169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.847631, 13.398456, 26.460701>,  <13.757436, 13.107379, 26.201588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847631, 13.398456, 26.460701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063218, 0.652575, -0.755082,
		-0.972193, 0.211212, 0.101144,
		0.225487, 0.727692, 0.647781,
		13.915277, 13.616763, 26.655035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327195, 13.672102, 25.991552>,  <13.757436, 13.107379, 26.201588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327195, 13.672102, 25.991552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.638144, 13.831160, 26.186518>,  <13.824714, 13.926594, 26.303497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.638144, 13.831160, 26.186518>,  <13.327195, 13.672102, 25.991552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638144, 13.831160, 26.186518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104639, 0.682311, -0.723535,
		-0.620277, 0.613458, 0.488800,
		0.777372, 0.397644, 0.487413,
		13.871356, 13.950453, 26.332741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261362, 14.370247, 25.923443>,  <13.327195, 13.672102, 25.991552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261362, 14.370247, 25.923443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.636653, 14.352404, 26.060696>,  <13.861828, 14.341698, 26.143047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.636653, 14.352404, 26.060696>,  <13.261362, 14.370247, 25.923443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636653, 14.352404, 26.060696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225161, 0.831692, -0.507535,
		-0.262741, 0.553443, 0.790359,
		0.938227, -0.044608, 0.343133,
		13.918121, 14.339022, 26.163635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387712, 15.025949, 25.792038>,  <13.261362, 14.370247, 25.923443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387712, 15.025949, 25.792038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.740898, 14.855867, 25.871614>,  <13.952809, 14.753819, 25.919359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.740898, 14.855867, 25.871614>,  <13.387712, 15.025949, 25.792038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740898, 14.855867, 25.871614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460447, 0.701884, -0.543459,
		0.091447, 0.571456, 0.815521,
		0.882964, -0.425203, 0.198940,
		14.005787, 14.728307, 25.931297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917295, 15.541773, 26.038376>,  <13.387712, 15.025949, 25.792038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917295, 15.541773, 26.038376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.094271, 15.233355, 25.855188>,  <14.200457, 15.048304, 25.745275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.094271, 15.233355, 25.855188>,  <13.917295, 15.541773, 26.038376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094271, 15.233355, 25.855188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368034, 0.621797, -0.691317,
		0.817800, 0.137319, 0.558879,
		0.442440, -0.771046, -0.457968,
		14.227003, 15.002041, 25.717798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572323, 15.857157, 25.836506>,  <13.917295, 15.541773, 26.038376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572323, 15.857157, 25.836506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.570713, 15.522929, 25.616758>,  <14.569747, 15.322392, 25.484909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.570713, 15.522929, 25.616758>,  <14.572323, 15.857157, 25.836506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.570713, 15.522929, 25.616758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501417, 0.473635, -0.724052,
		0.865196, -0.278378, 0.417063,
		-0.004025, -0.835569, -0.549370,
		14.569506, 15.272259, 25.451946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251451, 15.815500, 25.533541>,  <14.572323, 15.857157, 25.836506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251451, 15.815500, 25.533541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.003878, 15.593176, 25.311552>,  <14.855333, 15.459782, 25.178358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.003878, 15.593176, 25.311552>,  <15.251451, 15.815500, 25.533541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003878, 15.593176, 25.311552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367611, 0.419420, -0.830030,
		0.694106, -0.717748, -0.055271,
		-0.618934, -0.555811, -0.554974,
		14.818197, 15.426433, 25.145060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.561739, 24.857786, 5.176824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415636, 25.227232, 5.130315>,  <23.327974, 25.448900, 5.102410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415636, 25.227232, 5.130315>,  <23.561739, 24.857786, 5.176824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415636, 25.227232, 5.130315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257109, 0.019951, 0.966176,
		0.894696, 0.382798, 0.230183,
		-0.365258, 0.923617, -0.116271,
		23.306059, 25.504316, 5.095434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.690945, 25.288549, 5.835478>,  <23.561739, 24.857786, 5.176824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.690945, 25.288549, 5.835478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.765726, 25.601070, 6.073677>,  <23.810595, 25.788582, 6.216597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.765726, 25.601070, 6.073677>,  <23.690945, 25.288549, 5.835478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.765726, 25.601070, 6.073677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080819, -0.616364, 0.783303,
		0.979038, -0.098315, -0.178376,
		0.186955, 0.781300, 0.595498,
		23.821814, 25.835461, 6.252326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349907, 25.189119, 6.255678>,  <23.690945, 25.288549, 5.835478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349907, 25.189119, 6.255678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.047977, 25.389233, 6.425361>,  <23.866819, 25.509300, 6.527171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.047977, 25.389233, 6.425361>,  <24.349907, 25.189119, 6.255678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.047977, 25.389233, 6.425361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075962, -0.709055, 0.701050,
		0.651512, 0.496947, 0.573216,
		-0.754826, 0.500285, 0.424208,
		23.821529, 25.539318, 6.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528976, 25.416538, 6.914200>,  <24.349907, 25.189119, 6.255678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528976, 25.416538, 6.914200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.139753, 25.339502, 6.863502>,  <23.906219, 25.293282, 6.833082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.139753, 25.339502, 6.863502>,  <24.528976, 25.416538, 6.914200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139753, 25.339502, 6.863502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029764, -0.650081, 0.759282,
		-0.228626, 0.735053, 0.638300,
		-0.973059, -0.192590, -0.126747,
		23.847836, 25.281725, 6.825477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203529, 25.332972, 7.532975>,  <24.528976, 25.416538, 6.914200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203529, 25.332972, 7.532975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.972868, 25.113804, 7.290570>,  <23.834471, 24.982304, 7.145126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.972868, 25.113804, 7.290570>,  <24.203529, 25.332972, 7.532975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.972868, 25.113804, 7.290570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001842, -0.742637, 0.669692,
		-0.816985, 0.385065, 0.429255,
		-0.576656, -0.547919, -0.606014,
		23.799871, 24.949429, 7.108766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666050, 24.953646, 7.899198>,  <24.203529, 25.332972, 7.532975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666050, 24.953646, 7.899198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771971, 24.755096, 7.568503>,  <23.835524, 24.635967, 7.370086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771971, 24.755096, 7.568503>,  <23.666050, 24.953646, 7.899198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.771971, 24.755096, 7.568503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048997, -0.863160, 0.502548,
		-0.963058, -0.092567, -0.252885,
		0.264799, -0.496373, -0.826738,
		23.851410, 24.606184, 7.320482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066944, 24.505371, 7.549894>,  <23.666050, 24.953646, 7.899198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066944, 24.505371, 7.549894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444715, 24.377295, 7.520150>,  <23.671379, 24.300447, 7.502304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444715, 24.377295, 7.520150>,  <23.066944, 24.505371, 7.549894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.444715, 24.377295, 7.520150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281477, -0.904586, 0.320147,
		-0.169774, -0.281426, -0.944445,
		0.944430, -0.320193, -0.074360,
		23.728045, 24.281237, 7.497842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007488, 23.874174, 7.205667>,  <23.066944, 24.505371, 7.549894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007488, 23.874174, 7.205667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.345093, 23.895868, 7.419096>,  <23.547655, 23.908886, 7.547153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.345093, 23.895868, 7.419096>,  <23.007488, 23.874174, 7.205667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.345093, 23.895868, 7.419096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246890, -0.843901, 0.476316,
		0.476117, -0.533750, -0.698873,
		0.844013, 0.054237, 0.533573,
		23.598297, 23.912140, 7.579167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.395477, 23.226187, 7.143975>,  <23.007488, 23.874174, 7.205667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.395477, 23.226187, 7.143975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.516878, 23.402618, 7.481812>,  <23.589720, 23.508478, 7.684514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.516878, 23.402618, 7.481812>,  <23.395477, 23.226187, 7.143975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.516878, 23.402618, 7.481812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107874, -0.864798, 0.490396,
		0.946704, -0.239946, -0.214889,
		0.303504, 0.441079, 0.844591,
		23.607929, 23.534943, 7.735189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892988, 22.910656, 7.417408>,  <23.395477, 23.226187, 7.143975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892988, 22.910656, 7.417408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.734642, 23.106745, 7.728014>,  <23.639635, 23.224398, 7.914377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.734642, 23.106745, 7.728014>,  <23.892988, 22.910656, 7.417408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734642, 23.106745, 7.728014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189652, -0.871006, 0.453190,
		0.898511, 0.032135, 0.437773,
		-0.395866, 0.490221, 0.776514,
		23.615883, 23.253811, 7.960968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184982, 22.622595, 8.011903>,  <23.892988, 22.910656, 7.417408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184982, 22.622595, 8.011903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.851723, 22.813519, 8.123646>,  <23.651768, 22.928072, 8.190692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.851723, 22.813519, 8.123646>,  <24.184982, 22.622595, 8.011903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.851723, 22.813519, 8.123646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224912, -0.753886, 0.617309,
		0.505250, 0.451479, 0.735451,
		-0.833149, 0.477307, 0.279358,
		23.601778, 22.956711, 8.207453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237257, 22.742922, 8.691391>,  <24.184982, 22.622595, 8.011903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237257, 22.742922, 8.691391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.845856, 22.734411, 8.609334>,  <23.611015, 22.729305, 8.560100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.845856, 22.734411, 8.609334>,  <24.237257, 22.742922, 8.691391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.845856, 22.734411, 8.609334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124337, -0.732737, 0.669057,
		-0.164549, 0.680179, 0.714338,
		-0.978501, -0.021274, -0.205142,
		23.552305, 22.728029, 8.547791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790712, 22.648664, 9.339826>,  <24.237257, 22.742922, 8.691391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790712, 22.648664, 9.339826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545076, 22.554928, 9.038369>,  <23.397694, 22.498686, 8.857495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545076, 22.554928, 9.038369>,  <23.790712, 22.648664, 9.339826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545076, 22.554928, 9.038369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170142, -0.893140, 0.416356,
		-0.770677, 0.383907, 0.508598,
		-0.614091, -0.234343, -0.753641,
		23.360849, 22.484625, 8.812277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166777, 22.460894, 9.735294>,  <23.790712, 22.648664, 9.339826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166777, 22.460894, 9.735294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.143559, 22.268698, 9.385263>,  <23.129627, 22.153379, 9.175245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.143559, 22.268698, 9.385263>,  <23.166777, 22.460894, 9.735294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143559, 22.268698, 9.385263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589123, -0.691172, 0.418588,
		-0.805956, 0.539824, -0.242950,
		-0.058043, -0.480492, -0.875077,
		23.126146, 22.124550, 9.122741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.562029, 22.188662, 9.750691>,  <23.166777, 22.460894, 9.735294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.562029, 22.188662, 9.750691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.697659, 21.985788, 9.433757>,  <22.779036, 21.864065, 9.243596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.697659, 21.985788, 9.433757>,  <22.562029, 22.188662, 9.750691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.697659, 21.985788, 9.433757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474312, -0.819513, 0.321599,
		-0.812435, 0.266763, -0.518447,
		0.339083, -0.507184, -0.792330,
		22.799381, 21.833633, 9.196056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039173, 21.798086, 9.533729>,  <22.562029, 22.188662, 9.750691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039173, 21.798086, 9.533729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359116, 21.610287, 9.384171>,  <22.551081, 21.497606, 9.294436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359116, 21.610287, 9.384171>,  <22.039173, 21.798086, 9.533729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359116, 21.610287, 9.384171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398704, -0.881289, 0.253705,
		-0.448624, -0.053854, -0.892096,
		0.799857, -0.469500, -0.373896,
		22.599073, 21.469437, 9.272002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744427, 21.205132, 9.091015>,  <22.039173, 21.798086, 9.533729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744427, 21.205132, 9.091015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130253, 21.131657, 9.166772>,  <22.361750, 21.087572, 9.212226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130253, 21.131657, 9.166772>,  <21.744427, 21.205132, 9.091015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130253, 21.131657, 9.166772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244411, -0.892442, 0.379223,
		0.099363, -0.412075, -0.905716,
		0.964567, -0.183686, 0.189392,
		22.419622, 21.076551, 9.223589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940619, 20.508604, 8.759494>,  <21.744427, 21.205132, 9.091015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940619, 20.508604, 8.759494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.181295, 20.586082, 9.069448>,  <22.325701, 20.632570, 9.255422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.181295, 20.586082, 9.069448>,  <21.940619, 20.508604, 8.759494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.181295, 20.586082, 9.069448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202922, -0.901248, 0.382851,
		0.772522, -0.387599, -0.502967,
		0.601691, 0.193698, 0.774886,
		22.361803, 20.644192, 9.301914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.184517, 19.838856, 8.861135>,  <21.940619, 20.508604, 8.759494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.184517, 19.838856, 8.861135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.294886, 20.032820, 9.193094>,  <22.361107, 20.149199, 9.392270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.294886, 20.032820, 9.193094>,  <22.184517, 19.838856, 8.861135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294886, 20.032820, 9.193094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114502, -0.840684, 0.529282,
		0.954336, -0.241065, -0.176438,
		0.275920, 0.484910, 0.829898,
		22.377661, 20.178293, 9.442063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657354, 19.378071, 9.205467>,  <22.184517, 19.838856, 8.861135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657354, 19.378071, 9.205467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577192, 19.643055, 9.494184>,  <22.529095, 19.802046, 9.667414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577192, 19.643055, 9.494184>,  <22.657354, 19.378071, 9.205467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577192, 19.643055, 9.494184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054597, -0.728040, 0.683357,
		0.978191, 0.176354, 0.109734,
		-0.200404, 0.662462, 0.721791,
		22.517071, 19.841793, 9.710721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175776, 19.400267, 9.765969>,  <22.657354, 19.378071, 9.205467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175776, 19.400267, 9.765969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866198, 19.574764, 9.949577>,  <22.680450, 19.679462, 10.059742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866198, 19.574764, 9.949577>,  <23.175776, 19.400267, 9.765969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866198, 19.574764, 9.949577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027222, -0.701272, 0.712374,
		0.632666, 0.563834, 0.530872,
		-0.773946, 0.436243, 0.459020,
		22.634014, 19.705637, 10.087283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.494173, 19.594002, 10.375022>,  <23.175776, 19.400267, 9.765969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.494173, 19.594002, 10.375022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099043, 19.586359, 10.436780>,  <22.861965, 19.581774, 10.473835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099043, 19.586359, 10.436780>,  <23.494173, 19.594002, 10.375022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099043, 19.586359, 10.436780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133058, -0.618010, 0.774828,
		0.080612, 0.785938, 0.613028,
		-0.987824, -0.019108, 0.154394,
		22.802696, 19.580627, 10.483098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.324802, 19.604399, 11.077746>,  <23.494173, 19.594002, 10.375022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.324802, 19.604399, 11.077746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985161, 19.434776, 10.951761>,  <22.781376, 19.333002, 10.876170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985161, 19.434776, 10.951761>,  <23.324802, 19.604399, 11.077746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985161, 19.434776, 10.951761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079348, -0.691889, 0.717631,
		-0.522236, 0.584350, 0.621132,
		-0.849102, -0.424058, -0.314962,
		22.730431, 19.307558, 10.857272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.990761, 19.568150, 11.646212>,  <23.324802, 19.604399, 11.077746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.990761, 19.568150, 11.646212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842281, 19.297100, 11.392271>,  <22.753193, 19.134470, 11.239906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842281, 19.297100, 11.392271>,  <22.990761, 19.568150, 11.646212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842281, 19.297100, 11.392271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117520, -0.712487, 0.691775,
		-0.921086, 0.182179, 0.344109,
		-0.371200, -0.677624, -0.634852,
		22.730921, 19.093813, 11.201816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.564482, 19.302383, 12.110162>,  <22.990761, 19.568150, 11.646212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.564482, 19.302383, 12.110162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.582319, 19.029100, 11.818617>,  <22.593021, 18.865131, 11.643690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.582319, 19.029100, 11.818617>,  <22.564482, 19.302383, 12.110162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.582319, 19.029100, 11.818617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013030, -0.729128, 0.684254,
		-0.998920, -0.040010, -0.023612,
		0.044593, -0.683207, -0.728862,
		22.595697, 18.824139, 11.599958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.284147, 18.781559, 12.419780>,  <22.564482, 19.302383, 12.110162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.284147, 18.781559, 12.419780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459923, 18.606508, 12.105996>,  <22.565388, 18.501478, 11.917726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459923, 18.606508, 12.105996>,  <22.284147, 18.781559, 12.419780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.459923, 18.606508, 12.105996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182754, -0.811476, 0.555075,
		-0.879486, -0.387283, -0.276615,
		0.439437, -0.437628, -0.784459,
		22.591755, 18.475220, 11.870658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020002, 18.169689, 12.384604>,  <22.284147, 18.781559, 12.419780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020002, 18.169689, 12.384604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383101, 18.146509, 12.218403>,  <22.600960, 18.132601, 12.118682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383101, 18.146509, 12.218403>,  <22.020002, 18.169689, 12.384604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383101, 18.146509, 12.218403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169036, -0.855940, 0.488665,
		-0.383965, -0.513817, -0.767178,
		0.907743, -0.057949, -0.415504,
		22.655424, 18.129124, 12.093752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161800, 17.448116, 12.144862>,  <22.020002, 18.169689, 12.384604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161800, 17.448116, 12.144862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.523729, 17.612394, 12.189804>,  <22.740887, 17.710960, 12.216769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.523729, 17.612394, 12.189804>,  <22.161800, 17.448116, 12.144862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523729, 17.612394, 12.189804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325174, -0.836876, 0.440341,
		0.274874, -0.361896, -0.890773,
		0.904824, 0.410695, 0.112356,
		22.795176, 17.735603, 12.223511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.577070, 16.886183, 12.081135>,  <22.161800, 17.448116, 12.144862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.577070, 16.886183, 12.081135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.813286, 17.160374, 12.251491>,  <22.955015, 17.324888, 12.353704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.813286, 17.160374, 12.251491>,  <22.577070, 16.886183, 12.081135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.813286, 17.160374, 12.251491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398991, -0.706724, 0.584250,
		0.701477, -0.175096, -0.690848,
		0.590539, 0.685480, 0.425890,
		22.990448, 17.366018, 12.379257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.182276, 16.559162, 12.160498>,  <22.577070, 16.886183, 12.081135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.182276, 16.559162, 12.160498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187254, 16.875399, 12.405384>,  <23.190241, 17.065142, 12.552316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187254, 16.875399, 12.405384>,  <23.182276, 16.559162, 12.160498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187254, 16.875399, 12.405384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387469, -0.568240, 0.725928,
		0.921799, 0.228181, -0.313401,
		0.012444, 0.790592, 0.612216,
		23.190987, 17.112576, 12.589049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.857956, 16.638594, 12.423172>,  <23.182276, 16.559162, 12.160498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.857956, 16.638594, 12.423172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.632837, 16.835552, 12.688745>,  <23.497766, 16.953728, 12.848088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.632837, 16.835552, 12.688745>,  <23.857956, 16.638594, 12.423172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.632837, 16.835552, 12.688745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536983, -0.392851, 0.746537,
		0.628419, 0.776668, -0.043314,
		-0.562796, 0.492397, 0.663932,
		23.463999, 16.983271, 12.887924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100533, 17.280201, 12.746178>,  <23.857956, 16.638594, 12.423172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100533, 17.280201, 12.746178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854488, 17.069450, 12.980797>,  <23.706861, 16.943001, 13.121569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854488, 17.069450, 12.980797>,  <24.100533, 17.280201, 12.746178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854488, 17.069450, 12.980797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788348, -0.422336, 0.447370,
		0.012013, 0.737588, 0.675145,
		-0.615113, -0.526875, 0.586549,
		23.669954, 16.911388, 13.156761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423729, 17.352955, 13.344045>,  <24.100533, 17.280201, 12.746178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423729, 17.352955, 13.344045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.181561, 17.035404, 13.366772>,  <24.036261, 16.844873, 13.380408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.181561, 17.035404, 13.366772>,  <24.423729, 17.352955, 13.344045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.181561, 17.035404, 13.366772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745704, -0.540832, 0.389135,
		-0.278196, 0.277959, 0.919427,
		-0.605419, -0.793876, 0.056818,
		23.999935, 16.797241, 13.383817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285694, 17.046600, 14.018235>,  <24.423729, 17.352955, 13.344045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285694, 17.046600, 14.018235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.675079, 16.956861, 14.000160>,  <24.908710, 16.903019, 13.989315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.675079, 16.956861, 14.000160>,  <24.285694, 17.046600, 14.018235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675079, 16.956861, 14.000160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197754, 0.923999, -0.327291,
		0.115180, 0.309670, 0.943842,
		0.973461, -0.224346, -0.045188,
		24.967117, 16.889557, 13.986604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558481, 17.643433, 14.267634>,  <24.285694, 17.046600, 14.018235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558481, 17.643433, 14.267634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.850372, 17.454975, 14.069432>,  <25.025507, 17.341902, 13.950511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.850372, 17.454975, 14.069432>,  <24.558481, 17.643433, 14.267634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850372, 17.454975, 14.069432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310145, 0.873939, -0.374222,
		0.609352, 0.119401, 0.783858,
		0.729726, -0.471142, -0.495505,
		25.069290, 17.313633, 13.920781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209812, 17.965904, 14.481568>,  <24.558481, 17.643433, 14.267634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209812, 17.965904, 14.481568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.289574, 17.799095, 14.126867>,  <25.337431, 17.699009, 13.914047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.289574, 17.799095, 14.126867>,  <25.209812, 17.965904, 14.481568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289574, 17.799095, 14.126867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373814, 0.868866, -0.324554,
		0.905815, -0.266763, 0.329145,
		0.199404, -0.417024, -0.886752,
		25.349396, 17.673988, 13.860842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885216, 18.181416, 14.203442>,  <25.209812, 17.965904, 14.481568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885216, 18.181416, 14.203442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711411, 18.054447, 13.866291>,  <25.607128, 17.978266, 13.664001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711411, 18.054447, 13.866291>,  <25.885216, 18.181416, 14.203442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711411, 18.054447, 13.866291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292728, 0.835259, -0.465459,
		0.851768, -0.448982, -0.270013,
		-0.434514, -0.317422, -0.842876,
		25.581057, 17.959221, 13.613428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363176, 18.171618, 13.696610>,  <25.885216, 18.181416, 14.203442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363176, 18.171618, 13.696610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.015675, 18.195898, 13.500007>,  <25.807173, 18.210466, 13.382045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.015675, 18.195898, 13.500007>,  <26.363176, 18.171618, 13.696610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015675, 18.195898, 13.500007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350934, 0.775736, -0.524479,
		0.349445, -0.628131, -0.695226,
		-0.868754, 0.060702, -0.491510,
		25.755049, 18.214109, 13.352553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515301, 18.145618, 12.898751>,  <26.363176, 18.171618, 13.696610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515301, 18.145618, 12.898751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.151329, 18.310804, 12.914213>,  <25.932947, 18.409916, 12.923491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.151329, 18.310804, 12.914213>,  <26.515301, 18.145618, 12.898751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151329, 18.310804, 12.914213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298803, 0.717304, -0.629437,
		-0.287663, -0.561191, -0.776089,
		-0.909927, 0.412964, 0.038656,
		25.878351, 18.434694, 12.925810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372068, 18.430943, 12.223240>,  <26.515301, 18.145618, 12.898751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372068, 18.430943, 12.223240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.104818, 18.618931, 12.453973>,  <25.944468, 18.731724, 12.592412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.104818, 18.618931, 12.453973>,  <26.372068, 18.430943, 12.223240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104818, 18.618931, 12.453973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093266, 0.822046, -0.561731,
		-0.738180, -0.321508, -0.593062,
		-0.668126, 0.469971, 0.576832,
		25.904381, 18.759922, 12.627023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838753, 18.594982, 11.775428>,  <26.372068, 18.430943, 12.223240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838753, 18.594982, 11.775428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.852924, 18.833836, 12.095972>,  <25.861427, 18.977148, 12.288299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.852924, 18.833836, 12.095972>,  <25.838753, 18.594982, 11.775428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852924, 18.833836, 12.095972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087482, 0.796932, -0.597701,
		-0.995536, 0.091282, -0.024002,
		0.035431, 0.597133, 0.801360,
		25.863554, 19.012976, 12.336380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468634, 19.118755, 11.586453>,  <25.838753, 18.594982, 11.775428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468634, 19.118755, 11.586453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.655487, 19.274130, 11.904172>,  <25.767599, 19.367355, 12.094803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.655487, 19.274130, 11.904172>,  <25.468634, 19.118755, 11.586453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655487, 19.274130, 11.904172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058707, 0.882726, -0.466207,
		-0.882236, 0.264411, 0.389546,
		0.467132, 0.388436, 0.794295,
		25.795628, 19.390661, 12.142461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085302, 19.698975, 11.700058>,  <25.468634, 19.118755, 11.586453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085302, 19.698975, 11.700058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430605, 19.766954, 11.890176>,  <25.637787, 19.807743, 12.004247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430605, 19.766954, 11.890176>,  <25.085302, 19.698975, 11.700058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430605, 19.766954, 11.890176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048442, 0.909375, -0.413147,
		-0.502434, 0.379676, 0.776792,
		0.863257, 0.169950, 0.475294,
		25.689583, 19.817940, 12.032763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015091, 20.326887, 11.985020>,  <25.085302, 19.698975, 11.700058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015091, 20.326887, 11.985020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.409733, 20.271925, 11.949851>,  <25.646519, 20.238947, 11.928750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.409733, 20.271925, 11.949851>,  <25.015091, 20.326887, 11.985020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409733, 20.271925, 11.949851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092410, 0.914924, -0.392904,
		0.134429, 0.379516, 0.915367,
		0.986605, -0.137406, -0.087921,
		25.705715, 20.230703, 11.923474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390299, 20.947906, 12.169040>,  <25.015091, 20.326887, 11.985020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390299, 20.947906, 12.169040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.686024, 20.759064, 11.976984>,  <25.863459, 20.645758, 11.861751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.686024, 20.759064, 11.976984>,  <25.390299, 20.947906, 12.169040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686024, 20.759064, 11.976984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102977, 0.783928, -0.612252,
		0.665442, 0.403201, 0.628184,
		0.739312, -0.472107, -0.480139,
		25.907818, 20.617432, 11.832942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819649, 21.443571, 11.948081>,  <25.390299, 20.947906, 12.169040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819649, 21.443571, 11.948081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.967358, 21.147879, 11.722808>,  <26.055983, 20.970463, 11.587644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.967358, 21.147879, 11.722808>,  <25.819649, 21.443571, 11.948081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967358, 21.147879, 11.722808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157983, 0.647129, -0.745832,
		0.915795, 0.186440, 0.355752,
		0.369271, -0.739232, -0.563184,
		26.078138, 20.926109, 11.553853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400387, 21.696926, 11.542388>,  <25.819649, 21.443571, 11.948081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400387, 21.696926, 11.542388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.271189, 21.367668, 11.355579>,  <26.193670, 21.170115, 11.243494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.271189, 21.367668, 11.355579>,  <26.400387, 21.696926, 11.542388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271189, 21.367668, 11.355579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061420, 0.474199, -0.878273,
		0.944406, -0.312360, -0.102606,
		-0.322993, -0.823144, -0.467022,
		26.174292, 21.120726, 11.215473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906610, 21.425661, 11.124863>,  <26.400387, 21.696926, 11.542388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906610, 21.425661, 11.124863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.549671, 21.314531, 10.982581>,  <26.335506, 21.247854, 10.897212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.549671, 21.314531, 10.982581>,  <26.906610, 21.425661, 11.124863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549671, 21.314531, 10.982581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242355, 0.369900, -0.896905,
		0.380765, -0.886557, -0.262745,
		-0.892346, -0.277833, -0.355707,
		26.281965, 21.231184, 10.875870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063469, 21.241676, 10.474514>,  <26.906610, 21.425661, 11.124863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063469, 21.241676, 10.474514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.663963, 21.259241, 10.465188>,  <26.424259, 21.269779, 10.459593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.663963, 21.259241, 10.465188>,  <27.063469, 21.241676, 10.474514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663963, 21.259241, 10.465188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033110, 0.237663, -0.970783,
		-0.037089, -0.970355, -0.238823,
		-0.998763, 0.043913, -0.023314,
		26.364334, 21.272415, 10.458194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957508, 20.957809, 9.792381>,  <27.063469, 21.241676, 10.474514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957508, 20.957809, 9.792381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.640753, 21.163429, 9.924239>,  <26.450699, 21.286800, 10.003354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.640753, 21.163429, 9.924239>,  <26.957508, 20.957809, 9.792381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640753, 21.163429, 9.924239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150535, 0.358831, -0.921184,
		-0.591821, -0.779098, -0.206772,
		-0.791889, 0.514049, 0.329645,
		26.403187, 21.317644, 10.023132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417196, 20.842337, 9.311259>,  <26.957508, 20.957809, 9.792381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417196, 20.842337, 9.311259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.357203, 21.189016, 9.501559>,  <26.321207, 21.397024, 9.615740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.357203, 21.189016, 9.501559>,  <26.417196, 20.842337, 9.311259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357203, 21.189016, 9.501559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126839, 0.460350, -0.878629,
		-0.980519, -0.192124, 0.040885,
		-0.149985, 0.866698, 0.475751,
		26.312206, 21.449026, 9.644284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897642, 21.167957, 8.966763>,  <26.417196, 20.842337, 9.311259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897642, 21.167957, 8.966763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.086153, 21.456024, 9.170433>,  <26.199261, 21.628864, 9.292635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.086153, 21.456024, 9.170433>,  <25.897642, 21.167957, 8.966763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086153, 21.456024, 9.170433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165738, 0.639333, -0.750856,
		-0.866272, 0.269473, 0.420663,
		0.471279, 0.720165, 0.509174,
		26.227537, 21.672073, 9.323185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.709440, 16.234339, 21.753305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405926, 15.993496, 21.653936>,  <19.223818, 15.848990, 21.594315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405926, 15.993496, 21.653936>,  <19.709440, 16.234339, 21.753305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405926, 15.993496, 21.653936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331899, -0.029250, -0.942861,
		0.560436, -0.797880, 0.222033,
		-0.758785, -0.602106, -0.248423,
		19.178289, 15.812864, 21.579409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984507, 15.734526, 21.332090>,  <19.709440, 16.234339, 21.753305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984507, 15.734526, 21.332090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592297, 15.770859, 21.262438>,  <19.356970, 15.792659, 21.220646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592297, 15.770859, 21.262438>,  <19.984507, 15.734526, 21.332090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592297, 15.770859, 21.262438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185420, 0.135874, -0.973220,
		-0.064742, -0.986553, -0.150070,
		-0.980525, 0.090834, -0.174130,
		19.298140, 15.798109, 21.210199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.826021, 15.238822, 20.835783>,  <19.984507, 15.734526, 21.332090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.826021, 15.238822, 20.835783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544865, 15.522435, 20.813093>,  <19.376171, 15.692603, 20.799480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544865, 15.522435, 20.813093>,  <19.826021, 15.238822, 20.835783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544865, 15.522435, 20.813093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038417, -0.041787, -0.998388,
		-0.710260, -0.703936, 0.002133,
		-0.702890, 0.709033, -0.056723,
		19.333998, 15.735145, 20.796076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468142, 15.101950, 20.199341>,  <19.826021, 15.238822, 20.835783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468142, 15.101950, 20.199341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310911, 15.464448, 20.261581>,  <19.216574, 15.681947, 20.298925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310911, 15.464448, 20.261581>,  <19.468142, 15.101950, 20.199341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310911, 15.464448, 20.261581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039253, 0.185606, -0.981840,
		-0.918668, -0.379829, -0.108530,
		-0.393075, 0.906245, 0.155601,
		19.192989, 15.736321, 20.308262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811697, 15.154283, 19.861946>,  <19.468142, 15.101950, 20.199341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811697, 15.154283, 19.861946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942585, 15.528997, 19.911516>,  <19.021118, 15.753826, 19.941259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942585, 15.528997, 19.911516>,  <18.811697, 15.154283, 19.861946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942585, 15.528997, 19.911516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273864, 0.219533, -0.936378,
		-0.904393, 0.272460, 0.328387,
		0.327218, 0.936787, 0.123927,
		19.040751, 15.810034, 19.948694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423960, 15.540915, 19.289970>,  <18.811697, 15.154283, 19.861946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423960, 15.540915, 19.289970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691265, 15.805511, 19.426119>,  <18.851648, 15.964270, 19.507809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691265, 15.805511, 19.426119>,  <18.423960, 15.540915, 19.289970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691265, 15.805511, 19.426119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135384, 0.341757, -0.929986,
		-0.731501, 0.667557, 0.138829,
		0.668264, 0.661491, 0.340372,
		18.891745, 16.003958, 19.528231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194441, 16.315920, 19.105011>,  <18.423960, 15.540915, 19.289970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194441, 16.315920, 19.105011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592386, 16.298405, 19.141508>,  <18.831154, 16.287895, 19.163406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592386, 16.298405, 19.141508>,  <18.194441, 16.315920, 19.105011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592386, 16.298405, 19.141508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097886, 0.187310, -0.977412,
		0.025707, 0.981324, 0.190635,
		0.994866, -0.043787, 0.091242,
		18.890846, 16.285269, 19.168880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467007, 16.881861, 18.755962>,  <18.194441, 16.315920, 19.105011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467007, 16.881861, 18.755962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.785873, 16.640360, 18.757019>,  <18.977194, 16.495461, 18.757654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.785873, 16.640360, 18.757019>,  <18.467007, 16.881861, 18.755962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.785873, 16.640360, 18.757019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199144, 0.258802, -0.945179,
		0.569968, 0.753994, 0.326542,
		0.797169, -0.603751, 0.002644,
		19.025024, 16.459234, 18.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915222, 17.171211, 18.344246>,  <18.467007, 16.881861, 18.755962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915222, 17.171211, 18.344246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143694, 16.843248, 18.359760>,  <19.280777, 16.646471, 18.369068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143694, 16.843248, 18.359760>,  <18.915222, 17.171211, 18.344246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143694, 16.843248, 18.359760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269104, 0.142410, -0.952524,
		0.775458, 0.554501, 0.301982,
		0.571181, -0.819907, 0.038785,
		19.315048, 16.597277, 18.371395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614902, 17.371109, 18.105581>,  <18.915222, 17.171211, 18.344246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614902, 17.371109, 18.105581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.609507, 16.972315, 18.075016>,  <19.606270, 16.733038, 18.056677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.609507, 16.972315, 18.075016>,  <19.614902, 17.371109, 18.105581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609507, 16.972315, 18.075016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422992, 0.063553, -0.903902,
		0.906033, -0.044515, 0.420859,
		-0.013490, -0.996985, -0.076411,
		19.605459, 16.673220, 18.052094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296654, 17.215010, 17.766331>,  <19.614902, 17.371109, 18.105581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296654, 17.215010, 17.766331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078569, 16.880939, 17.737402>,  <19.947720, 16.680498, 17.720045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078569, 16.880939, 17.737402>,  <20.296654, 17.215010, 17.766331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.078569, 16.880939, 17.737402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369233, -0.161795, -0.915145,
		0.752603, -0.525650, 0.396586,
		-0.545211, -0.835173, -0.072320,
		19.915007, 16.630388, 17.715706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.739454, 16.605944, 17.671328>,  <20.296654, 17.215010, 17.766331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.739454, 16.605944, 17.671328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385586, 16.489285, 17.525837>,  <20.173265, 16.419289, 17.438543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385586, 16.489285, 17.525837>,  <20.739454, 16.605944, 17.671328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.385586, 16.489285, 17.525837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453086, -0.353992, -0.818170,
		0.109863, -0.888611, 0.445309,
		-0.884671, -0.291650, -0.363726,
		20.120184, 16.401789, 17.416719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772137, 15.951464, 17.307875>,  <20.739454, 16.605944, 17.671328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772137, 15.951464, 17.307875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445278, 16.116196, 17.146545>,  <20.249163, 16.215034, 17.049747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445278, 16.116196, 17.146545>,  <20.772137, 15.951464, 17.307875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445278, 16.116196, 17.146545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328395, -0.242444, -0.912895,
		-0.473741, -0.878417, 0.062869,
		-0.817145, 0.411830, -0.403324,
		20.200134, 16.239744, 17.025549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.485645, 15.592673, 17.143814>,  <20.772137, 15.951464, 17.307875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.485645, 15.592673, 17.143814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676884, 15.746756, 17.459545>,  <21.791626, 15.839205, 17.648985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676884, 15.746756, 17.459545>,  <21.485645, 15.592673, 17.143814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.676884, 15.746756, 17.459545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746750, 0.651380, 0.134420,
		-0.462374, -0.653697, 0.599074,
		0.478095, 0.385206, 0.789330,
		21.820312, 15.862317, 17.696344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.361706, 15.445877, 16.310898>,  <21.485645, 15.592673, 17.143814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.361706, 15.445877, 16.310898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572598, 15.195345, 16.081207>,  <21.699133, 15.045026, 15.943393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572598, 15.195345, 16.081207>,  <21.361706, 15.445877, 16.310898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.572598, 15.195345, 16.081207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630663, -0.741331, 0.229547,
		-0.569466, 0.241120, -0.785856,
		0.527231, -0.626330, -0.574228,
		21.730766, 15.007446, 15.908938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037886, 15.311585, 15.676054>,  <21.361706, 15.445877, 16.310898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037886, 15.311585, 15.676054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266544, 15.007290, 15.799016>,  <21.403740, 14.824713, 15.872793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266544, 15.007290, 15.799016>,  <21.037886, 15.311585, 15.676054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266544, 15.007290, 15.799016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801692, -0.597619, 0.011874,
		0.174678, -0.253231, -0.951505,
		0.571645, -0.760740, 0.307404,
		21.438038, 14.779068, 15.891237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803307, 14.802513, 15.257931>,  <21.037886, 15.311585, 15.676054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803307, 14.802513, 15.257931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979668, 14.635967, 15.575986>,  <21.085484, 14.536039, 15.766819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979668, 14.635967, 15.575986>,  <20.803307, 14.802513, 15.257931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979668, 14.635967, 15.575986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748783, -0.659101, 0.070069,
		0.494902, -0.626280, -0.602367,
		0.440903, -0.416364, 0.795138,
		21.111938, 14.511058, 15.814528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727282, 13.984300, 15.173811>,  <20.803307, 14.802513, 15.257931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727282, 13.984300, 15.173811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801422, 14.091732, 15.551913>,  <20.845907, 14.156192, 15.778774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801422, 14.091732, 15.551913>,  <20.727282, 13.984300, 15.173811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801422, 14.091732, 15.551913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664391, -0.674498, 0.321928,
		0.724037, -0.687689, 0.053424,
		0.185352, 0.268582, 0.945256,
		20.857027, 14.172306, 15.835490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682161, 13.329437, 15.526289>,  <20.727282, 13.984300, 15.173811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682161, 13.329437, 15.526289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664686, 13.597355, 15.822793>,  <20.654202, 13.758105, 16.000696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664686, 13.597355, 15.822793>,  <20.682161, 13.329437, 15.526289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664686, 13.597355, 15.822793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482586, -0.663813, 0.571370,
		0.874759, -0.332760, 0.352233,
		-0.043687, 0.669794, 0.741261,
		20.651581, 13.798293, 16.045172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680599, 12.887527, 16.136869>,  <20.682161, 13.329437, 15.526289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680599, 12.887527, 16.136869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579460, 13.243469, 16.288778>,  <20.518776, 13.457034, 16.379923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579460, 13.243469, 16.288778>,  <20.680599, 12.887527, 16.136869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579460, 13.243469, 16.288778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561007, -0.454647, 0.691786,
		0.788251, -0.038137, 0.614171,
		-0.252849, 0.889855, 0.379771,
		20.503605, 13.510426, 16.402710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892172, 12.857061, 16.839773>,  <20.680599, 12.887527, 16.136869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892172, 12.857061, 16.839773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593740, 13.118698, 16.789925>,  <20.414682, 13.275680, 16.760015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593740, 13.118698, 16.789925>,  <20.892172, 12.857061, 16.839773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593740, 13.118698, 16.789925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502978, -0.430975, 0.749182,
		0.436325, 0.621631, 0.650535,
		-0.746079, 0.654091, -0.124622,
		20.369917, 13.314925, 16.752539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.720741, 13.020695, 17.527500>,  <20.892172, 12.857061, 16.839773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.720741, 13.020695, 17.527500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412399, 13.184071, 17.331966>,  <20.227394, 13.282096, 17.214645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412399, 13.184071, 17.331966>,  <20.720741, 13.020695, 17.527500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412399, 13.184071, 17.331966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617470, -0.290478, 0.730995,
		0.156572, 0.865332, 0.476116,
		-0.770855, 0.408440, -0.488835,
		20.181143, 13.306602, 17.185316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375935, 13.568520, 17.956852>,  <20.720741, 13.020695, 17.527500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375935, 13.568520, 17.956852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085705, 13.452156, 17.707399>,  <19.911568, 13.382338, 17.557728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085705, 13.452156, 17.707399>,  <20.375935, 13.568520, 17.956852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085705, 13.452156, 17.707399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622475, -0.108902, 0.775026,
		-0.293376, 0.950533, -0.102067,
		-0.725573, -0.290909, -0.623632,
		19.868032, 13.364883, 17.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872749, 14.000754, 18.200121>,  <20.375935, 13.568520, 17.956852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872749, 14.000754, 18.200121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699177, 13.697315, 18.005705>,  <19.595034, 13.515252, 17.889055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699177, 13.697315, 18.005705>,  <19.872749, 14.000754, 18.200121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.699177, 13.697315, 18.005705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640091, -0.120068, 0.758860,
		-0.634026, 0.640402, -0.433470,
		-0.433929, -0.758597, -0.486041,
		19.568998, 13.469736, 17.859892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184336, 14.137360, 18.328989>,  <19.872749, 14.000754, 18.200121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184336, 14.137360, 18.328989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204998, 13.762324, 18.191433>,  <19.217396, 13.537303, 18.108900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204998, 13.762324, 18.191433>,  <19.184336, 14.137360, 18.328989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204998, 13.762324, 18.191433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593650, -0.305731, 0.744385,
		-0.803064, 0.165699, -0.572392,
		0.051654, -0.937589, -0.343889,
		19.220493, 13.481048, 18.088266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485826, 13.889385, 18.439978>,  <19.184336, 14.137360, 18.328989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485826, 13.889385, 18.439978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737854, 13.579883, 18.413706>,  <18.889071, 13.394181, 18.397943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737854, 13.579883, 18.413706>,  <18.485826, 13.889385, 18.439978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737854, 13.579883, 18.413706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404905, -0.399525, 0.822455,
		-0.662620, -0.491609, -0.565026,
		0.630068, -0.773757, -0.065678,
		18.926874, 13.347755, 18.394003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059635, 13.295832, 18.363409>,  <18.485826, 13.889385, 18.439978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059635, 13.295832, 18.363409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409500, 13.195832, 18.529528>,  <18.619419, 13.135833, 18.629198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409500, 13.195832, 18.529528>,  <18.059635, 13.295832, 18.363409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409500, 13.195832, 18.529528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480079, -0.328289, 0.813480,
		-0.067031, -0.910893, -0.407161,
		0.874660, -0.249998, 0.415295,
		18.671898, 13.120832, 18.654116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963831, 12.673410, 18.662148>,  <18.059635, 13.295832, 18.363409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963831, 12.673410, 18.662148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300480, 12.806233, 18.832516>,  <18.502470, 12.885927, 18.934736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300480, 12.806233, 18.832516>,  <17.963831, 12.673410, 18.662148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300480, 12.806233, 18.832516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257393, -0.446692, 0.856864,
		0.474783, -0.830785, -0.290477,
		0.841623, 0.332058, 0.425920,
		18.552967, 12.905850, 18.960291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894833, 12.042776, 18.253922>,  <17.963831, 12.673410, 18.662148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894833, 12.042776, 18.253922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522070, 11.920565, 18.175737>,  <17.298412, 11.847238, 18.128828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522070, 11.920565, 18.175737>,  <17.894833, 12.042776, 18.253922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522070, 11.920565, 18.175737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031408, 0.604849, -0.795720,
		0.361338, -0.735397, -0.573258,
		-0.931906, -0.305529, -0.195458,
		17.242498, 11.828906, 18.117100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899431, 11.902348, 17.509274>,  <17.894833, 12.042776, 18.253922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899431, 11.902348, 17.509274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519194, 11.940170, 17.627546>,  <17.291052, 11.962864, 17.698511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519194, 11.940170, 17.627546>,  <17.899431, 11.902348, 17.509274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519194, 11.940170, 17.627546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221875, 0.459228, -0.860164,
		-0.217122, -0.883272, -0.415559,
		-0.950594, 0.094558, 0.295684,
		17.234015, 11.968537, 17.716251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497864, 11.621350, 17.045927>,  <17.899431, 11.902348, 17.509274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497864, 11.621350, 17.045927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235607, 11.879865, 17.202105>,  <17.078253, 12.034973, 17.295811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235607, 11.879865, 17.202105>,  <17.497864, 11.621350, 17.045927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235607, 11.879865, 17.202105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114538, 0.425986, -0.897450,
		-0.746333, -0.633128, -0.205270,
		-0.655643, 0.646286, 0.390445,
		17.038914, 12.073750, 17.319239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937862, 11.518349, 16.677523>,  <17.497864, 11.621350, 17.045927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937862, 11.518349, 16.677523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919907, 11.885291, 16.835733>,  <16.909132, 12.105456, 16.930660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919907, 11.885291, 16.835733>,  <16.937862, 11.518349, 16.677523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919907, 11.885291, 16.835733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230016, 0.375798, -0.897702,
		-0.972151, -0.131276, 0.194136,
		-0.044891, 0.917356, 0.395528,
		16.906439, 12.160498, 16.954391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349037, 11.656605, 16.381998>,  <16.937862, 11.518349, 16.677523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349037, 11.656605, 16.381998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523710, 11.983668, 16.532061>,  <16.628513, 12.179907, 16.622099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523710, 11.983668, 16.532061>,  <16.349037, 11.656605, 16.381998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.523710, 11.983668, 16.532061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316878, 0.530095, -0.786504,
		-0.841960, 0.224574, 0.490581,
		0.436683, 0.817659, 0.375156,
		16.654715, 12.228966, 16.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815544, 12.182363, 16.352173>,  <16.349037, 11.656605, 16.381998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815544, 12.182363, 16.352173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171528, 12.360270, 16.392479>,  <16.385118, 12.467013, 16.416662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171528, 12.360270, 16.392479>,  <15.815544, 12.182363, 16.352173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171528, 12.360270, 16.392479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225799, 0.621727, -0.749980,
		-0.396214, 0.644700, 0.653740,
		0.889960, 0.444767, 0.100765,
		16.438517, 12.493700, 16.422709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663136, 12.875685, 16.198126>,  <15.815544, 12.182363, 16.352173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663136, 12.875685, 16.198126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063036, 12.867856, 16.193804>,  <16.302977, 12.863159, 16.191212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063036, 12.867856, 16.193804>,  <15.663136, 12.875685, 16.198126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063036, 12.867856, 16.193804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006864, 0.728692, -0.684807,
		0.021275, 0.684562, 0.728644,
		0.999750, -0.019571, -0.010804,
		16.362961, 12.861985, 16.190563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921884, 13.576251, 16.351198>,  <15.663136, 12.875685, 16.198126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921884, 13.576251, 16.351198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218103, 13.376562, 16.171259>,  <16.395836, 13.256749, 16.063295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218103, 13.376562, 16.171259>,  <15.921884, 13.576251, 16.351198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218103, 13.376562, 16.171259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176149, 0.790216, -0.586967,
		0.648505, 0.355437, 0.673131,
		0.740549, -0.499222, -0.449849,
		16.440268, 13.226795, 16.036304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381851, 14.101419, 16.228008>,  <15.921884, 13.576251, 16.351198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381851, 14.101419, 16.228008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496243, 13.819714, 15.968092>,  <16.564878, 13.650690, 15.812142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496243, 13.819714, 15.968092>,  <16.381851, 14.101419, 16.228008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496243, 13.819714, 15.968092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136436, 0.701128, -0.699860,
		0.948473, 0.111491, 0.296595,
		0.285979, -0.704265, -0.649790,
		16.582037, 13.608434, 15.773155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053909, 14.299199, 15.999743>,  <16.381851, 14.101419, 16.228008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053909, 14.299199, 15.999743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873911, 14.072124, 15.723994>,  <16.765911, 13.935879, 15.558545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873911, 14.072124, 15.723994>,  <17.053909, 14.299199, 15.999743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873911, 14.072124, 15.723994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096734, 0.736418, -0.669575,
		0.887776, -0.367991, -0.276470,
		-0.449995, -0.567688, -0.689372,
		16.738913, 13.901817, 15.517182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313583, 14.566982, 15.479634>,  <17.053909, 14.299199, 15.999743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313583, 14.566982, 15.479634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034353, 14.330386, 15.318227>,  <16.866816, 14.188429, 15.221382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034353, 14.330386, 15.318227>,  <17.313583, 14.566982, 15.479634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034353, 14.330386, 15.318227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160669, 0.678584, -0.716735,
		0.697764, -0.435503, -0.568737,
		-0.698076, -0.591491, -0.403520,
		16.824930, 14.152939, 15.197171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448473, 14.646723, 14.720211>,  <17.313583, 14.566982, 15.479634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448473, 14.646723, 14.720211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070791, 14.526967, 14.775118>,  <16.844181, 14.455113, 14.808062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070791, 14.526967, 14.775118>,  <17.448473, 14.646723, 14.720211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070791, 14.526967, 14.775118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297166, 0.594692, -0.747016,
		0.142017, -0.746128, -0.650480,
		-0.944206, -0.299389, 0.137267,
		16.787529, 14.437150, 14.816298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.570905, 9.381958, 22.943859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.934435, 9.215121, 22.947220>,  <16.152554, 9.115020, 22.949236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.934435, 9.215121, 22.947220>,  <15.570905, 9.381958, 22.943859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934435, 9.215121, 22.947220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279574, 0.593989, -0.754331,
		0.309635, 0.687904, 0.656441,
		0.908826, -0.417091, 0.008401,
		16.207083, 9.089994, 22.949739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970883, 9.956738, 22.814465>,  <15.570905, 9.381958, 22.943859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970883, 9.956738, 22.814465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.189566, 9.638637, 22.709633>,  <16.320774, 9.447776, 22.646734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.189566, 9.638637, 22.709633>,  <15.970883, 9.956738, 22.814465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189566, 9.638637, 22.709633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229917, 0.443540, -0.866262,
		0.805140, 0.413334, 0.425328,
		0.546706, -0.795253, -0.262080,
		16.353577, 9.400061, 22.631008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580469, 10.325274, 22.596245>,  <15.970883, 9.956738, 22.814465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580469, 10.325274, 22.596245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.614605, 9.947428, 22.469492>,  <16.635086, 9.720719, 22.393440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.614605, 9.947428, 22.469492>,  <16.580469, 10.325274, 22.596245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614605, 9.947428, 22.469492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236233, 0.328157, -0.914608,
		0.967942, 0.003192, 0.251154,
		0.085338, -0.944618, -0.316883,
		16.640205, 9.664042, 22.374428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182552, 10.261741, 22.249548>,  <16.580469, 10.325274, 22.596245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182552, 10.261741, 22.249548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.965384, 9.959805, 22.102333>,  <16.835081, 9.778643, 22.014004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.965384, 9.959805, 22.102333>,  <17.182552, 10.261741, 22.249548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965384, 9.959805, 22.102333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432921, 0.123955, -0.892869,
		0.719593, -0.644090, 0.259489,
		-0.542923, -0.754840, -0.368037,
		16.802507, 9.733353, 21.991922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602266, 9.756124, 21.783510>,  <17.182552, 10.261741, 22.249548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602266, 9.756124, 21.783510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.211809, 9.742452, 21.697739>,  <16.977535, 9.734248, 21.646276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.211809, 9.742452, 21.697739>,  <17.602266, 9.756124, 21.783510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211809, 9.742452, 21.697739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205039, 0.179891, -0.962080,
		0.071458, -0.983093, -0.168590,
		-0.976142, -0.034180, -0.214427,
		16.918966, 9.732197, 21.633410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682318, 9.395123, 21.069517>,  <17.602266, 9.756124, 21.783510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.682318, 9.395123, 21.069517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.319605, 9.559643, 21.106571>,  <17.101976, 9.658355, 21.128803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.319605, 9.559643, 21.106571>,  <17.682318, 9.395123, 21.069517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319605, 9.559643, 21.106571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005156, 0.230520, -0.973054,
		-0.421570, -0.881869, -0.211152,
		-0.906781, 0.411299, 0.092633,
		17.047571, 9.683032, 21.134361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284237, 9.099826, 20.436508>,  <17.682318, 9.395123, 21.069517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284237, 9.099826, 20.436508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.133692, 9.445892, 20.569077>,  <17.043365, 9.653532, 20.648617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.133692, 9.445892, 20.569077>,  <17.284237, 9.099826, 20.436508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133692, 9.445892, 20.569077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127377, 0.306003, -0.943471,
		-0.917674, -0.397302, -0.004965,
		-0.376362, 0.865167, 0.331419,
		17.020782, 9.705442, 20.668503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907604, 9.257635, 19.866640>,  <17.284237, 9.099826, 20.436508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907604, 9.257635, 19.866640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.899170, 9.594241, 20.082569>,  <16.894110, 9.796205, 20.212126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.899170, 9.594241, 20.082569>,  <16.907604, 9.257635, 19.866640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899170, 9.594241, 20.082569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020478, 0.540192, -0.841293,
		-0.999568, -0.006683, -0.028622,
		-0.021084, 0.841515, 0.539821,
		16.892845, 9.846696, 20.244516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360472, 9.620477, 19.666834>,  <16.907604, 9.257635, 19.866640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360472, 9.620477, 19.666834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.607128, 9.889541, 19.830435>,  <16.755121, 10.050980, 19.928595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.607128, 9.889541, 19.830435>,  <16.360472, 9.620477, 19.666834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607128, 9.889541, 19.830435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000480, 0.519856, -0.854254,
		-0.787245, 0.526571, 0.320887,
		0.616640, 0.672661, 0.409002,
		16.792120, 10.091339, 19.953135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936991, 10.177513, 19.566984>,  <16.360472, 9.620477, 19.666834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936991, 10.177513, 19.566984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.323729, 10.270654, 19.608925>,  <16.555771, 10.326538, 19.634089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.323729, 10.270654, 19.608925>,  <15.936991, 10.177513, 19.566984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323729, 10.270654, 19.608925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061309, 0.610228, -0.789850,
		-0.247901, 0.757233, 0.604271,
		0.966843, 0.232852, 0.104851,
		16.613781, 10.340509, 19.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944214, 10.975134, 19.566690>,  <15.936991, 10.177513, 19.566984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944214, 10.975134, 19.566690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.316683, 10.858824, 19.478722>,  <16.540165, 10.789038, 19.425941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.316683, 10.858824, 19.478722>,  <15.944214, 10.975134, 19.566690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316683, 10.858824, 19.478722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060412, 0.717949, -0.693469,
		0.359537, 0.632454, 0.686101,
		0.931173, -0.290776, -0.219921,
		16.596035, 10.771591, 19.412745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218367, 11.642522, 19.389055>,  <15.944214, 10.975134, 19.566690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218367, 11.642522, 19.389055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.503798, 11.383646, 19.281759>,  <16.675056, 11.228321, 19.217381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.503798, 11.383646, 19.281759>,  <16.218367, 11.642522, 19.389055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503798, 11.383646, 19.281759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277836, 0.612917, -0.739689,
		0.643128, 0.453299, 0.617176,
		0.713578, -0.647189, -0.268242,
		16.717871, 11.189489, 19.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919798, 12.021267, 19.248714>,  <16.218367, 11.642522, 19.389055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.919798, 12.021267, 19.248714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.946911, 11.678869, 19.043705>,  <16.963179, 11.473431, 18.920700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.946911, 11.678869, 19.043705>,  <16.919798, 12.021267, 19.248714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946911, 11.678869, 19.043705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241134, 0.512529, -0.824117,
		0.968122, -0.067725, 0.241151,
		0.067784, -0.855995, -0.512521,
		16.967245, 11.422071, 18.889948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504299, 12.140781, 18.858072>,  <16.919798, 12.021267, 19.248714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504299, 12.140781, 18.858072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.289494, 11.858021, 18.673939>,  <17.160610, 11.688365, 18.563459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.289494, 11.858021, 18.673939>,  <17.504299, 12.140781, 18.858072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289494, 11.858021, 18.673939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094749, 0.491698, -0.865596,
		0.838236, -0.508453, -0.197071,
		-0.537014, -0.706901, -0.460334,
		17.128389, 11.645950, 18.535839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190981, 12.063787, 19.027159>,  <17.504299, 12.140781, 18.858072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190981, 12.063787, 19.027159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.383678, 12.384268, 19.169147>,  <18.499296, 12.576556, 19.254341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.383678, 12.384268, 19.169147>,  <18.190981, 12.063787, 19.027159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383678, 12.384268, 19.169147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015885, -0.397022, 0.917671,
		0.876169, -0.447719, -0.178535,
		0.481741, 0.801200, 0.354971,
		18.528200, 12.624628, 19.275639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685905, 11.722945, 19.549141>,  <18.190981, 12.063787, 19.027159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685905, 11.722945, 19.549141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.618832, 12.108441, 19.632168>,  <18.578587, 12.339739, 19.681984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.618832, 12.108441, 19.632168>,  <18.685905, 11.722945, 19.549141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618832, 12.108441, 19.632168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231520, -0.243157, 0.941952,
		0.958269, 0.109897, 0.263900,
		-0.167687, 0.963741, 0.207566,
		18.568525, 12.397564, 19.694437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941898, 11.841742, 20.239542>,  <18.685905, 11.722945, 19.549141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941898, 11.841742, 20.239542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688993, 12.146109, 20.181236>,  <18.537251, 12.328729, 20.146254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688993, 12.146109, 20.181236>,  <18.941898, 11.841742, 20.239542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688993, 12.146109, 20.181236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276560, -0.045917, 0.959899,
		0.723711, 0.647222, 0.239471,
		-0.632264, 0.760917, -0.145764,
		18.499313, 12.374384, 20.137506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193863, 12.336969, 20.677376>,  <18.941898, 11.841742, 20.239542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193863, 12.336969, 20.677376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.818745, 12.449512, 20.596010>,  <18.593674, 12.517038, 20.547190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.818745, 12.449512, 20.596010>,  <19.193863, 12.336969, 20.677376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.818745, 12.449512, 20.596010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217244, -0.018515, 0.975942,
		0.270822, 0.959424, 0.078486,
		-0.937796, 0.281357, -0.203415,
		18.537407, 12.533919, 20.534986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155979, 13.059458, 21.008974>,  <19.193863, 12.336969, 20.677376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155979, 13.059458, 21.008974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.809700, 12.863770, 20.966579>,  <18.601933, 12.746358, 20.941143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.809700, 12.863770, 20.966579>,  <19.155979, 13.059458, 21.008974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809700, 12.863770, 20.966579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184467, 0.114962, 0.976092,
		-0.465337, 0.864552, -0.189767,
		-0.865698, -0.489218, -0.105985,
		18.549990, 12.717005, 20.934784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634350, 13.393182, 21.400888>,  <19.155979, 13.059458, 21.008974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634350, 13.393182, 21.400888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.461643, 13.034635, 21.360683>,  <18.358019, 12.819507, 21.336561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.461643, 13.034635, 21.360683>,  <18.634350, 13.393182, 21.400888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.461643, 13.034635, 21.360683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141788, -0.042598, 0.988980,
		-0.890772, 0.441259, -0.108702,
		-0.431766, -0.896369, -0.100510,
		18.332113, 12.765724, 21.330530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147245, 13.395846, 21.954720>,  <18.634350, 13.393182, 21.400888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147245, 13.395846, 21.954720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.193596, 13.006487, 21.875656>,  <18.221407, 12.772871, 21.828218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.193596, 13.006487, 21.875656>,  <18.147245, 13.395846, 21.954720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193596, 13.006487, 21.875656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100326, -0.209452, 0.972659,
		-0.988184, -0.092880, -0.121928,
		0.115878, -0.973398, -0.197658,
		18.228359, 12.714468, 21.816359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548561, 13.055921, 22.405516>,  <18.147245, 13.395846, 21.954720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548561, 13.055921, 22.405516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.844711, 12.803611, 22.312592>,  <18.022402, 12.652225, 22.256838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.844711, 12.803611, 22.312592>,  <17.548561, 13.055921, 22.405516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.844711, 12.803611, 22.312592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009939, -0.355832, 0.934497,
		-0.672121, -0.689569, -0.269718,
		0.740375, -0.630775, -0.232308,
		18.066824, 12.614378, 22.242899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243433, 12.471416, 22.400158>,  <17.548561, 13.055921, 22.405516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243433, 12.471416, 22.400158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.637527, 12.418987, 22.444216>,  <17.873983, 12.387529, 22.470650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.637527, 12.418987, 22.444216>,  <17.243433, 12.471416, 22.400158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637527, 12.418987, 22.444216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163533, -0.530017, 0.832069,
		-0.050684, -0.837796, -0.543626,
		0.985235, -0.131074, 0.110144,
		17.933098, 12.379665, 22.477259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271215, 11.834908, 22.665098>,  <17.243433, 12.471416, 22.400158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271215, 11.834908, 22.665098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.643600, 11.961412, 22.738073>,  <17.867031, 12.037314, 22.781858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.643600, 11.961412, 22.738073>,  <17.271215, 11.834908, 22.665098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643600, 11.961412, 22.738073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030377, -0.430858, 0.901908,
		0.363843, -0.845187, -0.391507,
		0.930965, 0.316260, 0.182439,
		17.922890, 12.056291, 22.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540882, 11.286556, 22.995764>,  <17.271215, 11.834908, 22.665098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540882, 11.286556, 22.995764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.775436, 11.596136, 23.091391>,  <17.916170, 11.781884, 23.148766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.775436, 11.596136, 23.091391>,  <17.540882, 11.286556, 22.995764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775436, 11.596136, 23.091391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082738, -0.236360, 0.968137,
		0.805794, -0.587483, -0.074564,
		0.586387, 0.773950, 0.239065,
		17.951353, 11.828321, 23.163111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122953, 11.088990, 23.398909>,  <17.540882, 11.286556, 22.995764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122953, 11.088990, 23.398909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.062120, 11.477633, 23.471407>,  <18.025621, 11.710819, 23.514906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.062120, 11.477633, 23.471407>,  <18.122953, 11.088990, 23.398909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062120, 11.477633, 23.471407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029915, -0.187818, 0.981748,
		0.987915, 0.143884, 0.057629,
		-0.152082, 0.971608, 0.181244,
		18.016497, 11.769115, 23.525780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481894, 11.244347, 24.005693>,  <18.122953, 11.088990, 23.398909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481894, 11.244347, 24.005693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.226690, 11.551597, 23.984041>,  <18.073568, 11.735947, 23.971050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.226690, 11.551597, 23.984041>,  <18.481894, 11.244347, 24.005693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226690, 11.551597, 23.984041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185567, -0.085143, 0.978936,
		0.747337, 0.634613, 0.196860,
		-0.638007, 0.768125, -0.054132,
		18.035288, 11.782034, 23.967802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558228, 11.405304, 24.610275>,  <18.481894, 11.244347, 24.005693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558228, 11.405304, 24.610275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.235580, 11.613687, 24.498583>,  <18.041992, 11.738716, 24.431566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.235580, 11.613687, 24.498583>,  <18.558228, 11.405304, 24.610275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235580, 11.613687, 24.498583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293824, 0.056506, 0.954188,
		0.512869, 0.851711, 0.107490,
		-0.806618, 0.520956, -0.279233,
		17.993595, 11.769974, 24.414812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.478109, 12.752965, 24.077553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.849961, 12.633195, 24.163469>,  <13.073072, 12.561333, 24.215019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.849961, 12.633195, 24.163469>,  <12.478109, 12.752965, 24.077553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849961, 12.633195, 24.163469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340574, 0.475558, -0.811081,
		0.140712, 0.827157, 0.544069,
		0.929629, -0.299425, 0.214792,
		13.128850, 12.543367, 24.227907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891401, 13.311008, 24.208639>,  <12.478109, 12.752965, 24.077553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891401, 13.311008, 24.208639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.152731, 13.031320, 24.092531>,  <13.309529, 12.863506, 24.022867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.152731, 13.031320, 24.092531>,  <12.891401, 13.311008, 24.208639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.152731, 13.031320, 24.092531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343252, 0.615310, -0.709628,
		0.674792, 0.363982, 0.642007,
		0.653325, -0.699222, -0.290269,
		13.348728, 12.821553, 24.005451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.455351, 13.762586, 24.003267>,  <12.891401, 13.311008, 24.208639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.455351, 13.762586, 24.003267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.528501, 13.408751, 23.831656>,  <13.572391, 13.196451, 23.728689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.528501, 13.408751, 23.831656>,  <13.455351, 13.762586, 24.003267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528501, 13.408751, 23.831656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524551, 0.456876, -0.718408,
		0.831507, -0.093669, 0.547561,
		0.182875, -0.884585, -0.429030,
		13.583363, 13.143376, 23.702946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198687, 13.765294, 23.696980>,  <13.455351, 13.762586, 24.003267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.198687, 13.765294, 23.696980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.994102, 13.472306, 23.517250>,  <13.871350, 13.296514, 23.409412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.994102, 13.472306, 23.517250>,  <14.198687, 13.765294, 23.696980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994102, 13.472306, 23.517250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198029, 0.408349, -0.891087,
		0.836176, -0.544737, -0.063804,
		-0.511462, -0.732471, -0.449325,
		13.840663, 13.252565, 23.382452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656990, 13.631798, 23.176592>,  <14.198687, 13.765294, 23.696980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656990, 13.631798, 23.176592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.294580, 13.518951, 23.050398>,  <14.077135, 13.451243, 22.974682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.294580, 13.518951, 23.050398>,  <14.656990, 13.631798, 23.176592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294580, 13.518951, 23.050398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223434, 0.314241, -0.922675,
		0.359444, -0.906455, -0.221674,
		-0.906023, -0.282120, -0.315485,
		14.022773, 13.434317, 22.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724525, 13.460505, 22.468769>,  <14.656990, 13.631798, 23.176592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724525, 13.460505, 22.468769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.328704, 13.513520, 22.491459>,  <14.091211, 13.545329, 22.505072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.328704, 13.513520, 22.491459>,  <14.724525, 13.460505, 22.468769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328704, 13.513520, 22.491459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000178, 0.394575, -0.918864,
		-0.144165, -0.909255, -0.390477,
		-0.989554, 0.132537, 0.056722,
		14.031837, 13.553282, 22.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342655, 13.097481, 21.901678>,  <14.724525, 13.460505, 22.468769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342655, 13.097481, 21.901678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.093069, 13.380580, 22.034197>,  <13.943317, 13.550440, 22.113708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.093069, 13.380580, 22.034197>,  <14.342655, 13.097481, 21.901678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093069, 13.380580, 22.034197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093959, 0.352929, -0.930920,
		-0.775782, -0.611991, -0.153716,
		-0.623966, 0.707749, 0.331298,
		13.905879, 13.592905, 22.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895319, 13.155258, 21.466763>,  <14.342655, 13.097481, 21.901678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895319, 13.155258, 21.466763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.835371, 13.512637, 21.636133>,  <13.799402, 13.727065, 21.737755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.835371, 13.512637, 21.636133>,  <13.895319, 13.155258, 21.466763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835371, 13.512637, 21.636133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053051, 0.420378, -0.905797,
		-0.987281, -0.158215, -0.015604,
		-0.149870, 0.893449, 0.423425,
		13.790410, 13.780672, 21.763161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382678, 13.461275, 21.115356>,  <13.895319, 13.155258, 21.466763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382678, 13.461275, 21.115356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.517240, 13.782582, 21.311966>,  <13.597977, 13.975367, 21.429932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.517240, 13.782582, 21.311966>,  <13.382678, 13.461275, 21.115356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517240, 13.782582, 21.311966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106481, 0.551040, -0.827657,
		-0.935678, 0.226090, 0.270905,
		0.336404, 0.803267, 0.491522,
		13.618161, 14.023562, 21.459423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.972341, 13.951809, 20.999300>,  <13.382678, 13.461275, 21.115356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.972341, 13.951809, 20.999300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.286319, 14.165591, 21.124659>,  <13.474706, 14.293860, 21.199873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.286319, 14.165591, 21.124659>,  <12.972341, 13.951809, 20.999300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286319, 14.165591, 21.124659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115219, 0.622930, -0.773746,
		-0.608757, 0.571239, 0.550546,
		0.784945, 0.534457, 0.313396,
		13.521802, 14.325929, 21.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764390, 14.621168, 20.989264>,  <12.972341, 13.951809, 20.999300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764390, 14.621168, 20.989264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.163529, 14.647070, 20.993372>,  <13.403013, 14.662611, 20.995836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.163529, 14.647070, 20.993372>,  <12.764390, 14.621168, 20.989264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163529, 14.647070, 20.993372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037928, 0.697900, -0.715191,
		-0.053480, 0.713262, 0.698854,
		0.997848, 0.064754, 0.010271,
		13.462884, 14.666496, 20.996454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962461, 15.303627, 21.075699>,  <12.764390, 14.621168, 20.989264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962461, 15.303627, 21.075699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.286385, 15.137626, 20.909817>,  <13.480739, 15.038025, 20.810287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.286385, 15.137626, 20.909817>,  <12.962461, 15.303627, 21.075699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286385, 15.137626, 20.909817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037923, 0.742402, -0.668881,
		0.585466, 0.525939, 0.616942,
		0.809809, -0.415003, -0.414706,
		13.529327, 15.013124, 20.785404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.404231, 15.873573, 20.853603>,  <12.962461, 15.303627, 21.075699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.404231, 15.873573, 20.853603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.542439, 15.561357, 20.645227>,  <13.625362, 15.374028, 20.520203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.542439, 15.561357, 20.645227>,  <13.404231, 15.873573, 20.853603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.542439, 15.561357, 20.645227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059626, 0.535745, -0.842272,
		0.936516, 0.322081, 0.138569,
		0.345518, -0.780539, -0.520939,
		13.646093, 15.327196, 20.488945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881340, 16.132950, 20.435184>,  <13.404231, 15.873573, 20.853603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881340, 16.132950, 20.435184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.778261, 15.792315, 20.252586>,  <13.716413, 15.587933, 20.143028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.778261, 15.792315, 20.252586>,  <13.881340, 16.132950, 20.435184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778261, 15.792315, 20.252586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127198, 0.438438, -0.889715,
		0.957817, -0.287341, -0.004664,
		-0.257696, -0.851591, -0.456493,
		13.700953, 15.536838, 20.115639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461728, 16.008192, 20.872293>,  <13.881340, 16.132950, 20.435184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461728, 16.008192, 20.872293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.732677, 16.264969, 21.016003>,  <14.895247, 16.419035, 21.102228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.732677, 16.264969, 21.016003>,  <14.461728, 16.008192, 20.872293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.732677, 16.264969, 21.016003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333759, -0.167044, 0.927740,
		0.655569, -0.748337, 0.101102,
		0.677373, 0.641941, 0.359273,
		14.935889, 16.457552, 21.123785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920854, 15.617680, 21.408428>,  <14.461728, 16.008192, 20.872293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920854, 15.617680, 21.408428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.981756, 16.003145, 21.496218>,  <15.018297, 16.234425, 21.548891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.981756, 16.003145, 21.496218>,  <14.920854, 15.617680, 21.408428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981756, 16.003145, 21.496218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057326, -0.213080, 0.975352,
		0.986677, -0.161084, 0.022800,
		0.152255, 0.963664, 0.219475,
		15.027432, 16.292244, 21.562059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388629, 15.563977, 22.018688>,  <14.920854, 15.617680, 21.408428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388629, 15.563977, 22.018688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244548, 15.937043, 22.010771>,  <15.158099, 16.160883, 22.006021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244548, 15.937043, 22.010771>,  <15.388629, 15.563977, 22.018688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244548, 15.937043, 22.010771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042862, 0.037741, 0.998368,
		0.931889, 0.358767, -0.053570,
		-0.360203, 0.932664, -0.019793,
		15.136487, 16.216843, 22.004833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786604, 15.934653, 22.465994>,  <15.388629, 15.563977, 22.018688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786604, 15.934653, 22.465994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.434236, 16.122282, 22.440849>,  <15.222815, 16.234859, 22.425762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.434236, 16.122282, 22.440849>,  <15.786604, 15.934653, 22.465994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434236, 16.122282, 22.440849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095825, -0.046714, 0.994301,
		0.463462, 0.881924, 0.086100,
		-0.880920, 0.469072, -0.062860,
		15.169960, 16.263004, 22.421991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829867, 16.465750, 22.973299>,  <15.786604, 15.934653, 22.465994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829867, 16.465750, 22.973299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.441292, 16.398338, 22.906483>,  <15.208146, 16.357891, 22.866392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.441292, 16.398338, 22.906483>,  <15.829867, 16.465750, 22.973299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441292, 16.398338, 22.906483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151963, -0.098809, 0.983435,
		-0.182242, 0.980732, 0.070377,
		-0.971440, -0.168529, -0.167042,
		15.149860, 16.347780, 22.856371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551782, 16.905012, 23.543539>,  <15.829867, 16.465750, 22.973299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551782, 16.905012, 23.543539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.286067, 16.636227, 23.412580>,  <15.126638, 16.474957, 23.334005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.286067, 16.636227, 23.412580>,  <15.551782, 16.905012, 23.543539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.286067, 16.636227, 23.412580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139923, -0.318474, 0.937548,
		-0.734265, 0.668611, 0.117534,
		-0.664287, -0.671963, -0.327398,
		15.086782, 16.434637, 23.314362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077412, 16.828255, 24.046558>,  <15.551782, 16.905012, 23.543539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077412, 16.828255, 24.046558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.983179, 16.497152, 23.842863>,  <14.926640, 16.298491, 23.720646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.983179, 16.497152, 23.842863>,  <15.077412, 16.828255, 24.046558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983179, 16.497152, 23.842863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205822, -0.469607, 0.858549,
		-0.949810, 0.307070, -0.059740,
		-0.235581, -0.827754, -0.509239,
		14.912505, 16.248827, 23.690092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.417305, 16.667133, 24.218294>,  <15.077412, 16.828255, 24.046558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.417305, 16.667133, 24.218294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.598271, 16.326506, 24.112352>,  <14.706851, 16.122129, 24.048788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.598271, 16.326506, 24.112352>,  <14.417305, 16.667133, 24.218294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598271, 16.326506, 24.112352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257795, -0.409186, 0.875276,
		-0.853734, -0.327711, -0.404653,
		0.452416, -0.851570, -0.264854,
		14.733996, 16.071035, 24.032896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936485, 16.022177, 24.427366>,  <14.417305, 16.667133, 24.218294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936485, 16.022177, 24.427366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.300688, 15.869403, 24.363989>,  <14.519209, 15.777739, 24.325962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.300688, 15.869403, 24.363989>,  <13.936485, 16.022177, 24.427366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.300688, 15.869403, 24.363989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097788, -0.571205, 0.814961,
		-0.401765, -0.726534, -0.557435,
		0.910507, -0.381933, -0.158443,
		14.573839, 15.754823, 24.316456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839814, 15.302005, 24.304741>,  <13.936485, 16.022177, 24.427366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839814, 15.302005, 24.304741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.224242, 15.314868, 24.414511>,  <14.454899, 15.322586, 24.480371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.224242, 15.314868, 24.414511>,  <13.839814, 15.302005, 24.304741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224242, 15.314868, 24.414511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207228, -0.573039, 0.792895,
		0.182754, -0.818897, -0.544067,
		0.961071, 0.032159, 0.274423,
		14.512564, 15.324515, 24.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027335, 14.672755, 24.475424>,  <13.839814, 15.302005, 24.304741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027335, 14.672755, 24.475424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304061, 14.884420, 24.671946>,  <14.470097, 15.011419, 24.789858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304061, 14.884420, 24.671946>,  <14.027335, 14.672755, 24.475424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304061, 14.884420, 24.671946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174289, -0.537915, 0.824785,
		0.700727, -0.656226, -0.279910,
		0.691813, 0.529164, 0.491305,
		14.511605, 15.043169, 24.819338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506063, 14.195086, 24.774246>,  <14.027335, 14.672755, 24.475424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506063, 14.195086, 24.774246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.528672, 14.532373, 24.988083>,  <14.542238, 14.734746, 25.116385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.528672, 14.532373, 24.988083>,  <14.506063, 14.195086, 24.774246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528672, 14.532373, 24.988083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010741, -0.535932, 0.844193,
		0.998343, -0.041976, -0.039351,
		0.056525, 0.843217, 0.534593,
		14.545630, 14.785338, 25.148460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948818, 14.057622, 25.278820>,  <14.506063, 14.195086, 24.774246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948818, 14.057622, 25.278820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.731504, 14.359215, 25.426523>,  <14.601116, 14.540171, 25.515144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.731504, 14.359215, 25.426523>,  <14.948818, 14.057622, 25.278820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731504, 14.359215, 25.426523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106391, -0.498114, 0.860560,
		0.832780, 0.428243, 0.350835,
		-0.543285, 0.753983, 0.369258,
		14.568520, 14.585410, 25.537300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239785, 14.314685, 25.867964>,  <14.948818, 14.057622, 25.278820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239785, 14.314685, 25.867964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.847144, 14.384261, 25.899460>,  <14.611560, 14.426007, 25.918358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.847144, 14.384261, 25.899460>,  <15.239785, 14.314685, 25.867964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847144, 14.384261, 25.899460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009068, -0.454410, 0.890747,
		0.190719, 0.873646, 0.447627,
		-0.981603, 0.173941, 0.078742,
		14.552663, 14.436443, 25.923082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797002, 14.589456, 26.253210>,  <15.239785, 14.314685, 25.867964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797002, 14.589456, 26.253210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.169416, 14.478113, 26.347603>,  <16.392866, 14.411307, 26.404238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.169416, 14.478113, 26.347603>,  <15.797002, 14.589456, 26.253210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169416, 14.478113, 26.347603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343671, 0.451342, -0.823518,
		0.122723, 0.847826, 0.515879,
		0.931037, -0.278357, 0.235983,
		16.448727, 14.394606, 26.418398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188917, 15.302665, 26.139269>,  <15.797002, 14.589456, 26.253210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188917, 15.302665, 26.139269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.469316, 15.018947, 26.168928>,  <16.637556, 14.848716, 26.186724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.469316, 15.018947, 26.168928>,  <16.188917, 15.302665, 26.139269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469316, 15.018947, 26.168928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463080, 0.373644, -0.803708,
		0.542362, 0.597736, 0.590386,
		0.701000, -0.709296, 0.074149,
		16.679617, 14.806158, 26.191174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901993, 15.624134, 26.165844>,  <16.188917, 15.302665, 26.139269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901993, 15.624134, 26.165844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.927767, 15.255795, 26.012022>,  <16.943232, 15.034791, 25.919729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.927767, 15.255795, 26.012022>,  <16.901993, 15.624134, 26.165844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927767, 15.255795, 26.012022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486347, 0.365472, -0.793660,
		0.871386, -0.135889, 0.471402,
		0.064435, -0.920850, -0.384557,
		16.947098, 14.979540, 25.896654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597366, 15.604126, 25.993572>,  <16.901993, 15.624134, 26.165844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597366, 15.604126, 25.993572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.388494, 15.327418, 25.794058>,  <17.263172, 15.161393, 25.674349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.388494, 15.327418, 25.794058>,  <17.597366, 15.604126, 25.993572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388494, 15.327418, 25.794058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444341, 0.278519, -0.851462,
		0.727937, -0.666244, 0.161945,
		-0.522177, -0.691770, -0.498784,
		17.231842, 15.119887, 25.644423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135612, 15.334531, 25.607971>,  <17.597366, 15.604126, 25.993572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135612, 15.334531, 25.607971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.818033, 15.180637, 25.419662>,  <17.627485, 15.088301, 25.306677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.818033, 15.180637, 25.419662>,  <18.135612, 15.334531, 25.607971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818033, 15.180637, 25.419662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458977, 0.128537, -0.879101,
		0.398732, -0.914033, 0.074533,
		-0.793947, -0.384735, -0.470773,
		17.579849, 15.065217, 25.278431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404770, 14.912616, 25.047163>,  <18.135612, 15.334531, 25.607971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404770, 14.912616, 25.047163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.031013, 15.008640, 24.941874>,  <17.806761, 15.066255, 24.878700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.031013, 15.008640, 24.941874>,  <18.404770, 14.912616, 25.047163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031013, 15.008640, 24.941874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283961, 0.055689, -0.957217,
		-0.215133, -0.969159, -0.120204,
		-0.934389, 0.240062, -0.263223,
		17.750696, 15.080659, 24.862907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299686, 14.482630, 24.395796>,  <18.404770, 14.912616, 25.047163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299686, 14.482630, 24.395796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.026531, 14.774758, 24.388918>,  <17.862638, 14.950035, 24.384792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.026531, 14.774758, 24.388918>,  <18.299686, 14.482630, 24.395796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026531, 14.774758, 24.388918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200394, 0.164643, -0.965782,
		-0.702500, -0.662966, -0.258785,
		-0.682887, 0.730321, -0.017193,
		17.821665, 14.993855, 24.383760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878458, 14.322486, 23.833534>,  <18.299686, 14.482630, 24.395796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878458, 14.322486, 23.833534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.808569, 14.712600, 23.887630>,  <17.766636, 14.946669, 23.920088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.808569, 14.712600, 23.887630>,  <17.878458, 14.322486, 23.833534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808569, 14.712600, 23.887630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017616, 0.140426, -0.989934,
		-0.984460, -0.170584, -0.041716,
		-0.174725, 0.975285, 0.135239,
		17.756151, 15.005185, 23.928202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474081, 14.533670, 23.261667>,  <17.878458, 14.322486, 23.833534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474081, 14.533670, 23.261667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.587851, 14.888806, 23.406355>,  <17.656113, 15.101888, 23.493168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.587851, 14.888806, 23.406355>,  <17.474081, 14.533670, 23.261667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587851, 14.888806, 23.406355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223963, 0.305331, -0.925534,
		-0.932172, 0.344256, -0.112000,
		0.284424, 0.887841, 0.361721,
		17.673178, 15.155159, 23.514872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270315, 15.004463, 22.761194>,  <17.474081, 14.533670, 23.261667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270315, 15.004463, 22.761194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.535278, 15.199188, 22.988958>,  <17.694256, 15.316023, 23.125616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.535278, 15.199188, 22.988958>,  <17.270315, 15.004463, 22.761194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535278, 15.199188, 22.988958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482519, 0.304170, -0.821374,
		-0.573053, 0.818837, -0.033411,
		0.662409, 0.486812, 0.569410,
		17.734001, 15.345232, 23.159781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305586, 15.726063, 22.536829>,  <17.270315, 15.004463, 22.761194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305586, 15.726063, 22.536829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.654398, 15.663156, 22.722229>,  <17.863686, 15.625411, 22.833469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.654398, 15.663156, 22.722229>,  <17.305586, 15.726063, 22.536829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.654398, 15.663156, 22.722229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488356, 0.342897, -0.802452,
		-0.032732, 0.926115, 0.375819,
		0.872030, -0.157268, 0.463498,
		17.916008, 15.615975, 22.861279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716623, 16.338306, 22.362799>,  <17.305586, 15.726063, 22.536829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716623, 16.338306, 22.362799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972307, 16.046715, 22.460777>,  <18.125717, 15.871759, 22.519564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972307, 16.046715, 22.460777>,  <17.716623, 16.338306, 22.362799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972307, 16.046715, 22.460777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459100, 0.106197, -0.882014,
		0.616959, 0.676247, 0.402558,
		0.639210, -0.728981, 0.244946,
		18.164070, 15.828020, 22.534262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382349, 16.608465, 22.277586>,  <17.716623, 16.338306, 22.362799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382349, 16.608465, 22.277586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.425097, 16.210861, 22.286715>,  <18.450745, 15.972299, 22.292191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.425097, 16.210861, 22.286715>,  <18.382349, 16.608465, 22.277586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425097, 16.210861, 22.286715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684841, 0.056952, -0.726464,
		0.720814, 0.093264, 0.686826,
		0.106869, -0.994011, 0.022819,
		18.457157, 15.912658, 22.293560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087540, 16.483007, 22.120361>,  <18.382349, 16.608465, 22.277586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087540, 16.483007, 22.120361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.963276, 16.116577, 22.018936>,  <18.888718, 15.896719, 21.958080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.963276, 16.116577, 22.018936>,  <19.087540, 16.483007, 22.120361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963276, 16.116577, 22.018936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454664, 0.091051, -0.885997,
		0.834728, -0.390531, 0.388221,
		-0.310661, -0.916076, -0.253563,
		18.870077, 15.841754, 21.942867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.339184, 25.268995, 20.177313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.735537, 25.272902, 20.123560>,  <10.973349, 25.275246, 20.091309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.735537, 25.272902, 20.123560>,  <10.339184, 25.268995, 20.177313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735537, 25.272902, 20.123560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119949, -0.390308, -0.912837,
		-0.061366, 0.920632, -0.385578,
		0.990882, 0.009767, -0.134381,
		11.032801, 25.275831, 20.083246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031387, 24.610790, 19.906864>,  <10.339184, 25.268995, 20.177313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031387, 24.610790, 19.906864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.754607, 24.829020, 20.095991>,  <9.588539, 24.959957, 20.209467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.754607, 24.829020, 20.095991>,  <10.031387, 24.610790, 19.906864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.754607, 24.829020, 20.095991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241190, -0.791985, 0.560881,
		0.680466, 0.274063, 0.679600,
		-0.691950, 0.545573, 0.472817,
		9.547023, 24.992691, 20.237837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072546, 24.780880, 20.668312>,  <10.031387, 24.610790, 19.906864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072546, 24.780880, 20.668312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686030, 24.721796, 20.583965>,  <9.454121, 24.686346, 20.533358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686030, 24.721796, 20.583965>,  <10.072546, 24.780880, 20.668312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686030, 24.721796, 20.583965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029792, -0.749391, 0.661458,
		-0.255728, 0.645442, 0.719728,
		-0.966290, -0.147710, -0.210869,
		9.396144, 24.677483, 20.520704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.664945, 24.782141, 21.306120>,  <10.072546, 24.780880, 20.668312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.664945, 24.782141, 21.306120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443042, 24.586897, 21.036604>,  <9.309900, 24.469751, 20.874895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443042, 24.586897, 21.036604>,  <9.664945, 24.782141, 21.306120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443042, 24.586897, 21.036604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151494, -0.737035, 0.658657,
		-0.818103, 0.467470, 0.334930,
		-0.554758, -0.488109, -0.673790,
		9.276614, 24.440464, 20.834467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.897740, 24.605659, 21.615164>,  <9.664945, 24.782141, 21.306120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.897740, 24.605659, 21.615164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.117285, 24.384241, 21.364616>,  <9.249012, 24.251390, 21.214289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.117285, 24.384241, 21.364616>,  <8.897740, 24.605659, 21.615164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.117285, 24.384241, 21.364616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133360, -0.681739, 0.719338,
		-0.825206, -0.478350, -0.300359,
		0.548862, -0.553547, -0.626368,
		9.281943, 24.218178, 21.176706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891882, 23.836363, 21.810822>,  <8.897740, 24.605659, 21.615164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891882, 23.836363, 21.810822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.265906, 23.905960, 21.687283>,  <9.490321, 23.947718, 21.613159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.265906, 23.905960, 21.687283>,  <8.891882, 23.836363, 21.810822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.265906, 23.905960, 21.687283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286374, -0.884268, 0.368862,
		-0.208924, -0.433355, -0.876672,
		0.935062, 0.173992, -0.308846,
		9.546425, 23.958158, 21.594629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.228231, 23.468935, 21.292734>,  <8.891882, 23.836363, 21.810822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.228231, 23.468935, 21.292734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496642, 23.566616, 21.572760>,  <9.657689, 23.625225, 21.740774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496642, 23.566616, 21.572760>,  <9.228231, 23.468935, 21.292734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.496642, 23.566616, 21.572760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003370, -0.945198, 0.326480,
		0.741425, -0.216718, -0.635077,
		0.671028, 0.244201, 0.700062,
		9.697950, 23.639875, 21.782778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.690410, 22.890566, 21.451387>,  <9.228231, 23.468935, 21.292734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.690410, 22.890566, 21.451387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.672474, 23.083153, 21.801514>,  <9.661713, 23.198706, 22.011589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.672474, 23.083153, 21.801514>,  <9.690410, 22.890566, 21.451387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.672474, 23.083153, 21.801514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118024, -0.872613, 0.473937,
		0.991998, -0.082056, 0.095953,
		-0.044841, 0.481470, 0.875315,
		9.659021, 23.227594, 22.064108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.404627, 22.151541, 21.259399>,  <9.690410, 22.890566, 21.451387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.404627, 22.151541, 21.259399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.306605, 22.502430, 21.094265>,  <9.247792, 22.712963, 20.995184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.306605, 22.502430, 21.094265>,  <9.404627, 22.151541, 21.259399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.306605, 22.502430, 21.094265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054086, -0.412786, -0.909221,
		-0.968000, -0.245136, 0.053709,
		-0.245053, 0.877220, -0.412835,
		9.233089, 22.765596, 20.970415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.787569, 21.846272, 21.196465>,  <9.404627, 22.151541, 21.259399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.787569, 21.846272, 21.196465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.412942, 21.719995, 21.257360>,  <8.188166, 21.644230, 21.293898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.412942, 21.719995, 21.257360>,  <8.787569, 21.846272, 21.196465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.412942, 21.719995, 21.257360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037833, -0.522900, -0.851554,
		0.348436, -0.791779, 0.501675,
		-0.936569, -0.315692, 0.152242,
		8.131971, 21.625288, 21.303034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.731885, 21.090906, 21.284121>,  <8.787569, 21.846272, 21.196465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.731885, 21.090906, 21.284121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.398053, 21.250425, 21.132099>,  <8.197754, 21.346136, 21.040886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.398053, 21.250425, 21.132099>,  <8.731885, 21.090906, 21.284121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.398053, 21.250425, 21.132099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056377, -0.748097, -0.661190,
		-0.547995, -0.530389, 0.646830,
		-0.834579, 0.398795, -0.380052,
		8.147679, 21.370064, 21.018084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.117485, 20.541351, 21.374252>,  <8.731885, 21.090906, 21.284121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.117485, 20.541351, 21.374252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.009279, 20.800093, 21.089043>,  <7.944355, 20.955338, 20.917917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.009279, 20.800093, 21.089043>,  <8.117485, 20.541351, 21.374252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.009279, 20.800093, 21.089043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234066, -0.762604, -0.603033,
		-0.933828, 0.003765, 0.357702,
		-0.270514, 0.646855, -0.713022,
		7.928125, 20.994148, 20.875135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.377452, 20.379705, 21.233107>,  <8.117485, 20.541351, 21.374252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.377452, 20.379705, 21.233107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.503176, 20.594202, 20.919762>,  <7.578610, 20.722900, 20.731754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.503176, 20.594202, 20.919762>,  <7.377452, 20.379705, 21.233107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.503176, 20.594202, 20.919762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366110, -0.692877, -0.621196,
		-0.875884, 0.482044, -0.021455,
		0.314309, 0.536241, -0.783361,
		7.597468, 20.755074, 20.684753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.793288, 20.514482, 20.667418>,  <7.377452, 20.379705, 21.233107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.793288, 20.514482, 20.667418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.131074, 20.594370, 20.468624>,  <7.333746, 20.642302, 20.349348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.131074, 20.594370, 20.468624>,  <6.793288, 20.514482, 20.667418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.131074, 20.594370, 20.468624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364222, -0.466197, -0.806228,
		-0.392708, 0.861843, -0.320946,
		0.844466, 0.199717, -0.496982,
		7.384414, 20.654285, 20.319530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619247, 20.944506, 20.139507>,  <6.793288, 20.514482, 20.667418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619247, 20.944506, 20.139507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.956809, 20.754633, 20.039503>,  <7.159346, 20.640709, 19.979502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.956809, 20.754633, 20.039503>,  <6.619247, 20.944506, 20.139507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.956809, 20.754633, 20.039503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458945, -0.397405, -0.794632,
		0.277842, 0.785333, -0.553224,
		0.843904, -0.474681, -0.250008,
		7.209980, 20.612228, 19.964500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.656008, 20.963627, 19.376575>,  <6.619247, 20.944506, 20.139507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.656008, 20.963627, 19.376575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.898216, 20.662638, 19.480215>,  <7.043540, 20.482044, 19.542398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.898216, 20.662638, 19.480215>,  <6.656008, 20.963627, 19.376575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.898216, 20.662638, 19.480215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238483, -0.482177, -0.842990,
		0.759257, 0.448656, -0.471419,
		0.605520, -0.752471, 0.259100,
		7.079872, 20.436895, 19.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.911638, 20.689623, 18.765743>,  <6.656008, 20.963627, 19.376575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.911638, 20.689623, 18.765743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978756, 20.395702, 19.028624>,  <7.019027, 20.219349, 19.186352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978756, 20.395702, 19.028624>,  <6.911638, 20.689623, 18.765743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978756, 20.395702, 19.028624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324730, -0.670643, -0.666924,
		0.930803, -0.101505, -0.351143,
		0.167795, -0.734802, 0.657199,
		7.029095, 20.175262, 19.225782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.415420, 20.162439, 18.446081>,  <6.911638, 20.689623, 18.765743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.415420, 20.162439, 18.446081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.257498, 19.944923, 18.742302>,  <7.162745, 19.814413, 18.920034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.257498, 19.944923, 18.742302>,  <7.415420, 20.162439, 18.446081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.257498, 19.944923, 18.742302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309454, -0.680231, -0.664473,
		0.865082, -0.491504, 0.100280,
		-0.394804, -0.543792, 0.740554,
		7.139056, 19.781786, 18.964468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.503141, 19.433582, 18.248304>,  <7.415420, 20.162439, 18.446081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.503141, 19.433582, 18.248304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216288, 19.389057, 18.523500>,  <7.044176, 19.362343, 18.688618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216288, 19.389057, 18.523500>,  <7.503141, 19.433582, 18.248304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.216288, 19.389057, 18.523500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550401, -0.515108, -0.657056,
		0.427528, -0.849867, 0.308134,
		-0.717133, -0.111312, 0.687990,
		7.001148, 19.355663, 18.729897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.315060, 18.882767, 17.994259>,  <7.503141, 19.433582, 18.248304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.315060, 18.882767, 17.994259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.028144, 18.976562, 18.256712>,  <6.855994, 19.032839, 18.414185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.028144, 18.976562, 18.256712>,  <7.315060, 18.882767, 17.994259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.028144, 18.976562, 18.256712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599940, -0.686746, -0.410430,
		0.354356, -0.688037, 0.633274,
		-0.717290, 0.234488, 0.656133,
		6.812957, 19.046909, 18.453552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.237218, 18.280880, 18.384089>,  <7.315060, 18.882767, 17.994259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.237218, 18.280880, 18.384089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912360, 18.514023, 18.373512>,  <6.717445, 18.653908, 18.367167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912360, 18.514023, 18.373512>,  <7.237218, 18.280880, 18.384089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.912360, 18.514023, 18.373512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496884, -0.714683, -0.492274,
		-0.305822, -0.386661, 0.870039,
		-0.812145, 0.582856, -0.026440,
		6.668717, 18.688879, 18.365580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.678248, 17.825521, 18.548817>,  <7.237218, 18.280880, 18.384089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.678248, 17.825521, 18.548817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.508521, 18.135778, 18.361914>,  <6.406684, 18.321932, 18.249771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.508521, 18.135778, 18.361914>,  <6.678248, 17.825521, 18.548817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.508521, 18.135778, 18.361914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466506, -0.629518, -0.621353,
		-0.776097, -0.045672, 0.628958,
		-0.424319, 0.775643, -0.467260,
		6.381225, 18.368471, 18.221735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.047917, 17.646059, 18.580696>,  <6.678248, 17.825521, 18.548817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.047917, 17.646059, 18.580696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138277, 17.886982, 18.274443>,  <6.192492, 18.031536, 18.090691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138277, 17.886982, 18.274443>,  <6.047917, 17.646059, 18.580696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.138277, 17.886982, 18.274443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376830, -0.670735, -0.638838,
		-0.898314, 0.432827, 0.075449,
		0.225900, 0.602309, -0.765632,
		6.206047, 18.067675, 18.044752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.666115, 17.374958, 18.097990>,  <6.047917, 17.646059, 18.580696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.666115, 17.374958, 18.097990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.818338, 17.664610, 17.867926>,  <5.909673, 17.838402, 17.729887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.818338, 17.664610, 17.867926>,  <5.666115, 17.374958, 18.097990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.818338, 17.664610, 17.867926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405558, -0.428267, -0.807533,
		-0.831082, 0.540575, 0.130697,
		0.380559, 0.724131, -0.575159,
		5.932506, 17.881849, 17.695377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.054150, 17.741951, 17.773199>,  <5.666115, 17.374958, 18.097990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.054150, 17.741951, 17.773199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.406767, 17.761187, 17.585340>,  <5.618337, 17.772728, 17.472626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.406767, 17.761187, 17.585340>,  <5.054150, 17.741951, 17.773199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.406767, 17.761187, 17.585340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396430, -0.464809, -0.791705,
		-0.256369, 0.884104, -0.390685,
		0.881543, 0.048089, -0.469647,
		5.671230, 17.775614, 17.444447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.870211, 17.898975, 17.084106>,  <5.054150, 17.741951, 17.773199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.870211, 17.898975, 17.084106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.242718, 17.753777, 17.071621>,  <5.466222, 17.666656, 17.064129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.242718, 17.753777, 17.071621>,  <4.870211, 17.898975, 17.084106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.242718, 17.753777, 17.071621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225731, -0.507606, -0.831494,
		0.285986, 0.781389, -0.554656,
		0.931266, -0.362999, -0.031215,
		5.522098, 17.644876, 17.062256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088889, 17.938108, 16.417675>,  <4.870211, 17.898975, 17.084106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088889, 17.938108, 16.417675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.328698, 17.655621, 16.568314>,  <5.472583, 17.486128, 16.658697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.328698, 17.655621, 16.568314>,  <5.088889, 17.938108, 16.417675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.328698, 17.655621, 16.568314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185362, -0.580258, -0.793059,
		0.778598, 0.405649, -0.478784,
		0.599522, -0.706222, 0.376596,
		5.508554, 17.443754, 16.681292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.493978, 17.688580, 15.855720>,  <5.088889, 17.938108, 16.417675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.493978, 17.688580, 15.855720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538046, 17.398046, 16.127102>,  <5.564487, 17.223726, 16.289932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538046, 17.398046, 16.127102>,  <5.493978, 17.688580, 15.855720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538046, 17.398046, 16.127102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125339, -0.687315, -0.715464,
		0.985978, -0.006213, -0.166761,
		0.110172, -0.726333, 0.678456,
		5.571098, 17.180147, 16.330639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.898874, 17.048595, 15.512115>,  <5.493978, 17.688580, 15.855720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.898874, 17.048595, 15.512115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.696668, 16.911396, 15.828799>,  <5.575344, 16.829077, 16.018810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.696668, 16.911396, 15.828799>,  <5.898874, 17.048595, 15.512115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.696668, 16.911396, 15.828799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170530, -0.859769, -0.481369,
		0.845797, -0.378350, 0.376136,
		-0.505517, -0.342998, 0.791710,
		5.545012, 16.808496, 16.066313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.047640, 16.351885, 15.496773>,  <5.898874, 17.048595, 15.512115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.047640, 16.351885, 15.496773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.734370, 16.401985, 15.740396>,  <5.546408, 16.432045, 15.886569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.734370, 16.401985, 15.740396>,  <6.047640, 16.351885, 15.496773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.734370, 16.401985, 15.740396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330171, -0.913774, -0.236650,
		0.526900, -0.386431, 0.756999,
		-0.783175, 0.125249, 0.609056,
		5.499417, 16.439560, 15.923113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.001183, 15.688248, 15.885117>,  <6.047640, 16.351885, 15.496773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.001183, 15.688248, 15.885117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.645517, 15.865817, 15.929514>,  <5.432117, 15.972359, 15.956152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.645517, 15.865817, 15.929514>,  <6.001183, 15.688248, 15.885117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.645517, 15.865817, 15.929514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452432, -0.816574, -0.358486,
		-0.068506, -0.368970, 0.926913,
		-0.889164, 0.443923, 0.110994,
		5.378767, 15.998994, 15.962812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.523778, 15.137804, 15.603914>,  <6.001183, 15.688248, 15.885117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.523778, 15.137804, 15.603914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826408, 15.302527, 15.400736>,  <7.007986, 15.401361, 15.278829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826408, 15.302527, 15.400736>,  <6.523778, 15.137804, 15.603914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.826408, 15.302527, 15.400736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529069, 0.071002, 0.845603,
		0.384293, -0.908499, -0.164157,
		0.756574, 0.411809, -0.507945,
		7.053380, 15.426070, 15.248352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.150291, 14.694133, 15.768659>,  <6.523778, 15.137804, 15.603914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.150291, 14.694133, 15.768659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.237326, 15.072327, 15.671736>,  <7.289547, 15.299243, 15.613582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.237326, 15.072327, 15.671736>,  <7.150291, 14.694133, 15.768659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.237326, 15.072327, 15.671736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655975, 0.042170, 0.753604,
		0.722740, -0.322923, -0.611039,
		0.217588, 0.945485, -0.242307,
		7.302603, 15.355972, 15.599044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899508, 14.755165, 15.671243>,  <7.150291, 14.694133, 15.768659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899508, 14.755165, 15.671243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.759985, 15.116685, 15.770422>,  <7.676271, 15.333597, 15.829929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.759985, 15.116685, 15.770422>,  <7.899508, 14.755165, 15.671243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.759985, 15.116685, 15.770422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697258, 0.073480, 0.713045,
		0.626231, 0.421598, -0.655812,
		-0.348807, 0.903801, 0.247947,
		7.655343, 15.387825, 15.844806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.489624, 15.202639, 15.836626>,  <7.899508, 14.755165, 15.671243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.489624, 15.202639, 15.836626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.170139, 15.368581, 16.010962>,  <7.978448, 15.468146, 16.115562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.170139, 15.368581, 16.010962>,  <8.489624, 15.202639, 15.836626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.170139, 15.368581, 16.010962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477107, -0.004721, 0.878833,
		0.366645, 0.909876, -0.194159,
		-0.798712, 0.414854, 0.435839,
		7.930526, 15.493037, 16.141714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.783757, 15.597120, 16.261202>,  <8.489624, 15.202639, 15.836626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.783757, 15.597120, 16.261202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.420080, 15.587932, 16.427498>,  <8.201874, 15.582418, 16.527275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.420080, 15.587932, 16.427498>,  <8.783757, 15.597120, 16.261202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.420080, 15.587932, 16.427498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396010, 0.260738, 0.880450,
		-0.128625, 0.965136, -0.227964,
		-0.909193, -0.022971, 0.415741,
		8.147323, 15.581040, 16.552219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.772038, 16.221081, 16.707264>,  <8.783757, 15.597120, 16.261202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.772038, 16.221081, 16.707264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.469969, 15.985359, 16.822113>,  <8.288728, 15.843926, 16.891022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.469969, 15.985359, 16.822113>,  <8.772038, 16.221081, 16.707264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.469969, 15.985359, 16.822113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023804, 0.413059, 0.910393,
		-0.655095, 0.694337, -0.297902,
		-0.755171, -0.589303, 0.287120,
		8.243418, 15.808568, 16.908249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.316833, 16.677401, 16.945089>,  <8.772038, 16.221081, 16.707264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.316833, 16.677401, 16.945089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.216831, 16.328520, 17.113260>,  <8.156830, 16.119190, 17.214163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.216831, 16.328520, 17.113260>,  <8.316833, 16.677401, 16.945089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.216831, 16.328520, 17.113260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061672, 0.447679, 0.892065,
		-0.966279, 0.197092, -0.165713,
		-0.250005, -0.872203, 0.420427,
		8.141829, 16.066858, 17.239388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.910078, 16.961700, 17.426098>,  <8.316833, 16.677401, 16.945089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.910078, 16.961700, 17.426098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966871, 16.591908, 17.567619>,  <8.000947, 16.370031, 17.652533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966871, 16.591908, 17.567619>,  <7.910078, 16.961700, 17.426098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.966871, 16.591908, 17.567619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028691, 0.361118, 0.932079,
		-0.989453, -0.122189, 0.077798,
		0.141984, -0.924480, 0.353804,
		8.009466, 16.314564, 17.673761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.580025, 16.894791, 18.103050>,  <7.910078, 16.961700, 17.426098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.580025, 16.894791, 18.103050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.823892, 16.579660, 18.138008>,  <7.970212, 16.390583, 18.158983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.823892, 16.579660, 18.138008>,  <7.580025, 16.894791, 18.103050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.823892, 16.579660, 18.138008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064001, 0.158821, 0.985231,
		-0.790069, -0.595071, 0.147250,
		0.609668, -0.787824, 0.087394,
		8.006793, 16.343313, 18.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.306306, 16.449255, 18.598923>,  <7.580025, 16.894791, 18.103050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.306306, 16.449255, 18.598923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.691869, 16.349346, 18.562057>,  <7.923207, 16.289400, 18.539938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.691869, 16.349346, 18.562057>,  <7.306306, 16.449255, 18.598923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.691869, 16.349346, 18.562057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127521, 0.129263, 0.983377,
		-0.233709, -0.959638, 0.156450,
		0.963908, -0.249774, -0.092164,
		7.981042, 16.274414, 18.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.479856, 15.898635, 19.081802>,  <7.306306, 16.449255, 18.598923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.479856, 15.898635, 19.081802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.819499, 16.099495, 19.016243>,  <8.023284, 16.220011, 18.976908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.819499, 16.099495, 19.016243>,  <7.479856, 15.898635, 19.081802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.819499, 16.099495, 19.016243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166580, 0.039891, 0.985221,
		0.501267, -0.863860, -0.049776,
		0.849107, 0.502150, -0.163898,
		8.074231, 16.250139, 18.967073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018848, 15.661312, 19.602043>,  <7.479856, 15.898635, 19.081802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018848, 15.661312, 19.602043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.147573, 16.012497, 19.460272>,  <8.224809, 16.223207, 19.375210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.147573, 16.012497, 19.460272>,  <8.018848, 15.661312, 19.602043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.147573, 16.012497, 19.460272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314464, 0.253979, 0.914662,
		0.893056, -0.405805, -0.194354,
		0.321812, 0.877962, -0.354429,
		8.244117, 16.275885, 19.353943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.575568, 15.843141, 20.063459>,  <8.018848, 15.661312, 19.602043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.575568, 15.843141, 20.063459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.468998, 16.174112, 19.865723>,  <8.405056, 16.372696, 19.747080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.468998, 16.174112, 19.865723>,  <8.575568, 15.843141, 20.063459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.468998, 16.174112, 19.865723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286203, 0.557664, 0.779166,
		0.920383, 0.066107, -0.385389,
		-0.266426, 0.827430, -0.494344,
		8.389071, 16.422342, 19.717419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.224236, 16.361673, 20.100607>,  <8.575568, 15.843141, 20.063459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.224236, 16.361673, 20.100607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.895956, 16.577061, 20.024187>,  <8.698988, 16.706293, 19.978334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.895956, 16.577061, 20.024187>,  <9.224236, 16.361673, 20.100607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.895956, 16.577061, 20.024187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109408, 0.476300, 0.872450,
		0.560784, 0.695118, -0.449813,
		-0.820702, 0.538469, -0.191050,
		8.649746, 16.738602, 19.966871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.336646, 17.060989, 20.262772>,  <9.224236, 16.361673, 20.100607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.336646, 17.060989, 20.262772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.938359, 17.039867, 20.293129>,  <8.699388, 17.027195, 20.311344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.938359, 17.039867, 20.293129>,  <9.336646, 17.060989, 20.262772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.938359, 17.039867, 20.293129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043034, 0.461827, 0.885925,
		-0.081832, 0.885397, -0.457577,
		-0.995717, -0.052806, 0.075894,
		8.639645, 17.024025, 20.315897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.243854, 17.600506, 20.608376>,  <9.336646, 17.060989, 20.262772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.243854, 17.600506, 20.608376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891008, 17.413956, 20.634825>,  <8.679301, 17.302025, 20.650694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891008, 17.413956, 20.634825>,  <9.243854, 17.600506, 20.608376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891008, 17.413956, 20.634825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223665, 0.538253, 0.812563,
		-0.414550, 0.701982, -0.579111,
		-0.882113, -0.466375, 0.066124,
		8.626374, 17.274044, 20.654661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.783705, 18.106068, 20.930414>,  <9.243854, 17.600506, 20.608376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.783705, 18.106068, 20.930414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.581985, 17.762632, 20.967318>,  <8.460953, 17.556572, 20.989460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.581985, 17.762632, 20.967318>,  <8.783705, 18.106068, 20.930414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.581985, 17.762632, 20.967318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466447, 0.360755, 0.807640,
		-0.726711, 0.364261, -0.582414,
		-0.504300, -0.858586, 0.092256,
		8.430695, 17.505056, 20.994995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.066236, 18.187792, 20.995806>,  <8.783705, 18.106068, 20.930414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.066236, 18.187792, 20.995806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.157228, 17.838331, 21.167847>,  <8.211823, 17.628654, 21.271070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.157228, 17.838331, 21.167847>,  <8.066236, 18.187792, 20.995806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.157228, 17.838331, 21.167847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325803, 0.347943, 0.879084,
		-0.917663, -0.340102, -0.205487,
		0.227480, -0.873651, 0.430101,
		8.225471, 17.576237, 21.296877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.519103, 18.112417, 21.531557>,  <8.066236, 18.187792, 20.995806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.519103, 18.112417, 21.531557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.753655, 17.809513, 21.646595>,  <7.894387, 17.627769, 21.715618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.753655, 17.809513, 21.646595>,  <7.519103, 18.112417, 21.531557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.753655, 17.809513, 21.646595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276221, 0.146833, 0.949812,
		-0.761485, -0.636391, -0.123071,
		0.586381, -0.757262, 0.287596,
		7.929570, 17.582335, 21.732874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.030622, 17.646414, 21.864496>,  <7.519103, 18.112417, 21.531557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.030622, 17.646414, 21.864496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.406426, 17.631178, 22.000654>,  <7.631908, 17.622036, 22.082350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.406426, 17.631178, 22.000654>,  <7.030622, 17.646414, 21.864496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.406426, 17.631178, 22.000654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331905, 0.144254, 0.932218,
		-0.084610, -0.988807, 0.122886,
		0.939510, -0.038088, 0.340395,
		7.688279, 17.619751, 22.102774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.974844, 17.176003, 22.505430>,  <7.030622, 17.646414, 21.864496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.974844, 17.176003, 22.505430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.290620, 17.421059, 22.490166>,  <7.480085, 17.568092, 22.481007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.290620, 17.421059, 22.490166>,  <6.974844, 17.176003, 22.505430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.290620, 17.421059, 22.490166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281785, 0.416933, 0.864155,
		0.545330, -0.671443, 0.501776,
		0.789438, 0.612643, -0.038163,
		7.527452, 17.604851, 22.478718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.493624, 12.022561, 25.098747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.126814, 12.005419, 24.940136>,  <17.906729, 11.995133, 24.844969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.126814, 12.005419, 24.940136>,  <18.493624, 12.022561, 25.098747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126814, 12.005419, 24.940136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393483, -0.065121, 0.917023,
		-0.065121, 0.996957, 0.042855,
		-0.917023, -0.042855, -0.396526,
		17.851707, 11.992562, 24.821178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116663, 12.568269, 25.503382>,  <18.493624, 12.022561, 25.098747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.116663, 12.568269, 25.503382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899065, 12.282937, 25.326643>,  <17.768507, 12.111738, 25.220600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899065, 12.282937, 25.326643>,  <18.116663, 12.568269, 25.503382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899065, 12.282937, 25.326643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432477, -0.212891, 0.876152,
		-0.719051, 0.667710, -0.192687,
		-0.543994, -0.713330, -0.441849,
		17.735867, 12.068938, 25.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.506147, 12.588527, 25.915056>,  <18.116663, 12.568269, 25.503382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.506147, 12.588527, 25.915056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.509413, 12.228527, 25.740730>,  <17.511372, 12.012527, 25.636135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.509413, 12.228527, 25.740730>,  <17.506147, 12.588527, 25.915056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509413, 12.228527, 25.740730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323028, -0.414837, 0.850625,
		-0.946354, 0.133835, -0.294112,
		0.008165, -0.899999, -0.435815,
		17.511862, 11.958528, 25.609985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941978, 12.232990, 26.206615>,  <17.506147, 12.588527, 25.915056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941978, 12.232990, 26.206615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.125237, 11.916663, 26.044277>,  <17.235191, 11.726867, 25.946875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.125237, 11.916663, 26.044277>,  <16.941978, 12.232990, 26.206615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125237, 11.916663, 26.044277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289966, -0.564573, 0.772772,
		-0.840252, -0.236359, -0.487967,
		0.458145, -0.790817, -0.405847,
		17.262680, 11.679419, 25.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497799, 11.594050, 26.218487>,  <16.941978, 12.232990, 26.206615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497799, 11.594050, 26.218487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.865957, 11.441995, 26.181898>,  <17.086853, 11.350761, 26.159945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.865957, 11.441995, 26.181898>,  <16.497799, 11.594050, 26.218487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.865957, 11.441995, 26.181898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207455, -0.673100, 0.709858,
		-0.331413, -0.634375, -0.698380,
		0.920396, -0.380138, -0.091470,
		17.142076, 11.327953, 26.154457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427906, 10.953903, 26.198366>,  <16.497799, 11.594050, 26.218487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427906, 10.953903, 26.198366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.816330, 10.955471, 26.293884>,  <17.049385, 10.956411, 26.351194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.816330, 10.955471, 26.293884>,  <16.427906, 10.953903, 26.198366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.816330, 10.955471, 26.293884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175865, -0.664756, 0.726066,
		0.161587, -0.747050, -0.644830,
		0.971062, 0.003920, 0.238796,
		17.107649, 10.956647, 26.365522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630417, 10.201295, 26.225340>,  <16.427906, 10.953903, 26.198366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630417, 10.201295, 26.225340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.914667, 10.412391, 26.411461>,  <17.085217, 10.539048, 26.523132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.914667, 10.412391, 26.411461>,  <16.630417, 10.201295, 26.225340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914667, 10.412391, 26.411461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015269, -0.649617, 0.760108,
		0.703407, -0.547255, -0.453575,
		0.710624, 0.527740, 0.465301,
		17.127853, 10.570713, 26.551050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364677, 9.849563, 26.179718>,  <16.630417, 10.201295, 26.225340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364677, 9.849563, 26.179718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.341469, 10.091644, 26.497299>,  <17.327543, 10.236894, 26.687847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.341469, 10.091644, 26.497299>,  <17.364677, 9.849563, 26.179718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341469, 10.091644, 26.497299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169728, -0.777735, 0.605245,
		0.983781, 0.169873, -0.057594,
		-0.058022, 0.605204, 0.793953,
		17.324062, 10.273206, 26.735485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917765, 9.619296, 26.656105>,  <17.364677, 9.849563, 26.179718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917765, 9.619296, 26.656105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.682308, 9.854459, 26.878048>,  <17.541035, 9.995556, 27.011213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.682308, 9.854459, 26.878048>,  <17.917765, 9.619296, 26.656105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682308, 9.854459, 26.878048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056793, -0.654600, 0.753839,
		0.806397, 0.475253, 0.351935,
		-0.588641, 0.587906, 0.554859,
		17.505716, 10.030830, 27.044506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298506, 9.639948, 27.283882>,  <17.917765, 9.619296, 26.656105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298506, 9.639948, 27.283882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.911844, 9.718612, 27.349489>,  <17.679848, 9.765810, 27.388853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.911844, 9.718612, 27.349489>,  <18.298506, 9.639948, 27.283882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911844, 9.718612, 27.349489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007348, -0.618932, 0.785410,
		0.255975, 0.760427, 0.596849,
		-0.966656, 0.196659, 0.164019,
		17.621847, 9.777610, 27.398695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214886, 9.802620, 28.009853>,  <18.298506, 9.639948, 27.283882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214886, 9.802620, 28.009853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.828100, 9.750200, 27.922392>,  <17.596029, 9.718749, 27.869915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.828100, 9.750200, 27.922392>,  <18.214886, 9.802620, 28.009853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828100, 9.750200, 27.922392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106195, -0.572694, 0.812861,
		-0.231747, 0.809226, 0.539857,
		-0.966962, -0.131048, -0.218656,
		17.538012, 9.710886, 27.856794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838982, 10.151644, 28.494003>,  <18.214886, 9.802620, 28.009853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838982, 10.151644, 28.494003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.617897, 9.860717, 28.331266>,  <17.485247, 9.686160, 28.233624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.617897, 9.860717, 28.331266>,  <17.838982, 10.151644, 28.494003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617897, 9.860717, 28.331266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277362, -0.299813, 0.912788,
		-0.785864, 0.617350, -0.036021,
		-0.552710, -0.727318, -0.406842,
		17.452084, 9.642522, 28.209213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.416145, 10.158386, 29.119579>,  <17.838982, 10.151644, 28.494003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.416145, 10.158386, 29.119579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.381987, 9.760127, 29.104645>,  <17.361490, 9.521172, 29.095684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.381987, 9.760127, 29.104645>,  <17.416145, 10.158386, 29.119579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.381987, 9.760127, 29.104645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549965, 0.015860, 0.835037,
		-0.830810, 0.091844, -0.548926,
		-0.085399, -0.995647, -0.037334,
		17.356367, 9.461432, 29.093445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317646, 10.683848, 29.599895>,  <17.416145, 10.158386, 29.119579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317646, 10.683848, 29.599895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.342295, 10.769512, 29.989836>,  <17.357084, 10.820910, 30.223801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.342295, 10.769512, 29.989836>,  <17.317646, 10.683848, 29.599895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342295, 10.769512, 29.989836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954267, -0.298909, 0.005344,
		0.292537, 0.929940, -0.222785,
		0.061622, 0.214160, 0.974853,
		17.360781, 10.833760, 30.282291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806467, 10.308046, 29.878473>,  <17.317646, 10.683848, 29.599895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806467, 10.308046, 29.878473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.622030, 10.492889, 30.181484>,  <16.511368, 10.603795, 30.363291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.622030, 10.492889, 30.181484>,  <16.806467, 10.308046, 29.878473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622030, 10.492889, 30.181484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102054, 0.875647, -0.472046,
		-0.881463, -0.140348, -0.450916,
		-0.461094, 0.462109, 0.757528,
		16.483702, 10.631522, 30.408743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207144, 10.609427, 29.607357>,  <16.806467, 10.308046, 29.878473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207144, 10.609427, 29.607357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.292809, 10.808326, 29.943661>,  <16.344208, 10.927665, 30.145443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.292809, 10.808326, 29.943661>,  <16.207144, 10.609427, 29.607357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292809, 10.808326, 29.943661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178537, 0.866159, -0.466789,
		-0.960343, -0.050138, 0.274277,
		0.214163, 0.497246, 0.840761,
		16.357058, 10.957500, 30.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765215, 11.137292, 29.586277>,  <16.207144, 10.609427, 29.607357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765215, 11.137292, 29.586277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.047306, 11.252981, 29.845200>,  <16.216560, 11.322394, 30.000553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.047306, 11.252981, 29.845200>,  <15.765215, 11.137292, 29.586277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047306, 11.252981, 29.845200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107536, 0.946081, -0.305561,
		-0.700779, 0.145881, 0.698304,
		0.705227, 0.289223, 0.647306,
		16.258875, 11.339748, 30.039391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503822, 11.730099, 29.855532>,  <15.765215, 11.137292, 29.586277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503822, 11.730099, 29.855532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.898096, 11.734920, 29.922796>,  <16.134661, 11.737812, 29.963156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.898096, 11.734920, 29.922796>,  <15.503822, 11.730099, 29.855532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898096, 11.734920, 29.922796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046452, 0.939421, -0.339604,
		-0.162068, 0.342554, 0.925414,
		0.985686, 0.012052, 0.168163,
		16.193802, 11.738535, 29.973246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573047, 12.297779, 30.119192>,  <15.503822, 11.730099, 29.855532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573047, 12.297779, 30.119192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.962220, 12.225956, 30.061010>,  <16.195724, 12.182862, 30.026102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.962220, 12.225956, 30.061010>,  <15.573047, 12.297779, 30.119192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962220, 12.225956, 30.061010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084488, 0.862284, -0.499327,
		0.215082, 0.473523, 0.854117,
		0.972934, -0.179559, -0.145455,
		16.254101, 12.172089, 30.017374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911219, 12.989969, 30.226986>,  <15.573047, 12.297779, 30.119192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911219, 12.989969, 30.226986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.162807, 12.772544, 30.004660>,  <16.313761, 12.642089, 29.871264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.162807, 12.772544, 30.004660>,  <15.911219, 12.989969, 30.226986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162807, 12.772544, 30.004660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125333, 0.776488, -0.617542,
		0.767259, 0.318755, 0.556515,
		0.628972, -0.543564, -0.555817,
		16.351500, 12.609475, 29.837914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385057, 13.464278, 30.080912>,  <15.911219, 12.989969, 30.226986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385057, 13.464278, 30.080912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.422865, 13.173354, 29.809004>,  <16.445549, 12.998799, 29.645859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.422865, 13.173354, 29.809004>,  <16.385057, 13.464278, 30.080912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422865, 13.173354, 29.809004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126449, 0.686066, -0.716466,
		0.987460, -0.018237, 0.156814,
		0.094518, -0.727310, -0.679769,
		16.451220, 12.955161, 29.605074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833107, 13.737173, 29.677647>,  <16.385057, 13.464278, 30.080912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833107, 13.737173, 29.677647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.679647, 13.449328, 29.446138>,  <16.587572, 13.276622, 29.307234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.679647, 13.449328, 29.446138>,  <16.833107, 13.737173, 29.677647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679647, 13.449328, 29.446138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259083, 0.517685, -0.815400,
		0.886392, -0.462775, -0.012170,
		-0.383647, -0.719612, -0.578769,
		16.564552, 13.233445, 29.272507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342190, 13.483850, 29.026369>,  <16.833107, 13.737173, 29.677647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342190, 13.483850, 29.026369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.959503, 13.432925, 28.921688>,  <16.729891, 13.402370, 28.858879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.959503, 13.432925, 28.921688>,  <17.342190, 13.483850, 29.026369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959503, 13.432925, 28.921688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222230, 0.261045, -0.939398,
		0.187913, -0.956895, -0.221453,
		-0.956715, -0.127311, -0.261704,
		16.672489, 13.394732, 28.843176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368395, 13.174545, 28.312162>,  <17.342190, 13.483850, 29.026369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368395, 13.174545, 28.312162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.998419, 13.326319, 28.321251>,  <16.776434, 13.417382, 28.326704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.998419, 13.326319, 28.321251>,  <17.368395, 13.174545, 28.312162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998419, 13.326319, 28.321251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003318, 0.067838, -0.997691,
		-0.380099, -0.922729, -0.064005,
		-0.924940, 0.379434, 0.022723,
		16.720936, 13.440148, 28.328068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988977, 12.955807, 27.639990>,  <17.368395, 13.174545, 28.312162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988977, 12.955807, 27.639990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.748569, 13.247508, 27.770813>,  <16.604324, 13.422529, 27.849308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.748569, 13.247508, 27.770813>,  <16.988977, 12.955807, 27.639990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748569, 13.247508, 27.770813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069239, 0.360169, -0.930314,
		-0.796231, -0.581780, -0.165975,
		-0.601017, 0.729253, 0.327059,
		16.568264, 13.466284, 27.868931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414072, 12.958732, 27.261284>,  <16.988977, 12.955807, 27.639990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414072, 12.958732, 27.261284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.429293, 13.333437, 27.400440>,  <16.438425, 13.558260, 27.483934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.429293, 13.333437, 27.400440>,  <16.414072, 12.958732, 27.261284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429293, 13.333437, 27.400440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002356, 0.348058, -0.937470,
		-0.999273, 0.036492, 0.011037,
		0.038052, 0.936762, 0.347891,
		16.440708, 13.614466, 27.504808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968926, 13.247688, 26.885382>,  <16.414072, 12.958732, 27.261284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968926, 13.247688, 26.885382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.198996, 13.548538, 27.014057>,  <16.337038, 13.729048, 27.091263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.198996, 13.548538, 27.014057>,  <15.968926, 13.247688, 26.885382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198996, 13.548538, 27.014057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012382, 0.401209, -0.915903,
		-0.817938, 0.522819, 0.240078,
		0.575173, 0.752124, 0.321691,
		16.371548, 13.774176, 27.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796898, 13.822039, 26.487040>,  <15.968926, 13.247688, 26.885382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.796898, 13.822039, 26.487040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.141165, 13.950323, 26.645227>,  <16.347725, 14.027293, 26.740141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.141165, 13.950323, 26.645227>,  <15.796898, 13.822039, 26.487040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141165, 13.950323, 26.645227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134897, 0.605323, -0.784466,
		-0.490974, 0.728512, 0.477718,
		0.860667, 0.320710, 0.395472,
		16.399364, 14.046536, 26.763868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137460, 14.104949, 26.537430>,  <15.796898, 13.822039, 26.487040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137460, 14.104949, 26.537430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761607, 14.183105, 26.425060>,  <14.536096, 14.229998, 26.357639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761607, 14.183105, 26.425060>,  <15.137460, 14.104949, 26.537430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761607, 14.183105, 26.425060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342061, -0.558822, 0.755455,
		-0.009378, 0.805941, 0.591921,
		-0.939631, 0.195389, -0.280922,
		14.479718, 14.241721, 26.340784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799802, 14.488956, 27.079227>,  <15.137460, 14.104949, 26.537430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799802, 14.488956, 27.079227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.534223, 14.300981, 26.846563>,  <14.374875, 14.188195, 26.706964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.534223, 14.300981, 26.846563>,  <14.799802, 14.488956, 27.079227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534223, 14.300981, 26.846563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254948, -0.588987, 0.766874,
		-0.702976, 0.657458, 0.271246,
		-0.663948, -0.469940, -0.581662,
		14.335038, 14.159999, 26.672066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295314, 14.520503, 27.507872>,  <14.799802, 14.488956, 27.079227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295314, 14.520503, 27.507872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.169794, 14.249370, 27.241919>,  <14.094482, 14.086689, 27.082346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.169794, 14.249370, 27.241919>,  <14.295314, 14.520503, 27.507872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169794, 14.249370, 27.241919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314613, -0.586466, 0.746375,
		-0.895851, 0.443393, -0.029223,
		-0.313799, -0.677835, -0.664884,
		14.075654, 14.046020, 27.042454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526500, 14.337530, 27.525822>,  <14.295314, 14.520503, 27.507872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526500, 14.337530, 27.525822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.670937, 14.016974, 27.335081>,  <13.757599, 13.824641, 27.220636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.670937, 14.016974, 27.335081>,  <13.526500, 14.337530, 27.525822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670937, 14.016974, 27.335081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232786, -0.572626, 0.786072,
		-0.903008, -0.172840, -0.393323,
		0.361092, -0.801390, -0.476851,
		13.779264, 13.776558, 27.192026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075758, 13.796025, 27.635288>,  <13.526500, 14.337530, 27.525822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075758, 13.796025, 27.635288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.397457, 13.577193, 27.542431>,  <13.590476, 13.445894, 27.486717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.397457, 13.577193, 27.542431>,  <13.075758, 13.796025, 27.635288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397457, 13.577193, 27.542431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243276, -0.659454, 0.711293,
		-0.542220, -0.515581, -0.663456,
		0.804248, -0.547080, -0.232141,
		13.638731, 13.413069, 27.472788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851192, 13.091231, 27.542837>,  <13.075758, 13.796025, 27.635288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851192, 13.091231, 27.542837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.246988, 13.056769, 27.589281>,  <13.484467, 13.036092, 27.617147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.246988, 13.056769, 27.589281>,  <12.851192, 13.091231, 27.542837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246988, 13.056769, 27.589281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143583, -0.679853, 0.719155,
		0.016979, -0.728270, -0.685080,
		0.989493, -0.086156, 0.116111,
		13.543836, 13.030923, 27.624115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965493, 12.371786, 27.495975>,  <12.851192, 13.091231, 27.542837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965493, 12.371786, 27.495975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.284975, 12.530633, 27.676804>,  <13.476665, 12.625941, 27.785301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.284975, 12.530633, 27.676804>,  <12.965493, 12.371786, 27.495975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284975, 12.530633, 27.676804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096147, -0.657414, 0.747370,
		0.593992, -0.640393, -0.486898,
		0.798705, 0.397118, 0.452070,
		13.524587, 12.649769, 27.812426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144289, 11.606384, 27.181448>,  <12.965493, 12.371786, 27.495975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144289, 11.606384, 27.181448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.975658, 11.326164, 26.951141>,  <12.874480, 11.158032, 26.812958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.975658, 11.326164, 26.951141>,  <13.144289, 11.606384, 27.181448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975658, 11.326164, 26.951141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328126, 0.474066, -0.817064,
		0.845344, -0.533378, 0.030014,
		-0.421575, -0.700549, -0.575764,
		12.849186, 11.115999, 26.778412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568921, 11.459177, 26.749292>,  <13.144289, 11.606384, 27.181448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568921, 11.459177, 26.749292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.255847, 11.315988, 26.545622>,  <13.068003, 11.230074, 26.423420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.255847, 11.315988, 26.545622>,  <13.568921, 11.459177, 26.749292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.255847, 11.315988, 26.545622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389240, 0.356852, -0.849205,
		0.485694, -0.862851, -0.139965,
		-0.782684, -0.357974, -0.509177,
		13.021042, 11.208595, 26.392868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757428, 11.056184, 26.121574>,  <13.568921, 11.459177, 26.749292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757428, 11.056184, 26.121574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.380473, 11.168028, 26.048119>,  <13.154300, 11.235134, 26.004045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.380473, 11.168028, 26.048119>,  <13.757428, 11.056184, 26.121574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380473, 11.168028, 26.048119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287018, 0.393868, -0.873206,
		-0.171829, -0.875606, -0.451430,
		-0.942388, 0.279610, -0.183637,
		13.097756, 11.251911, 25.993027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.617120, 10.778465, 25.409277>,  <13.757428, 11.056184, 26.121574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.617120, 10.778465, 25.409277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.352723, 11.071160, 25.475788>,  <13.194085, 11.246778, 25.515696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.352723, 11.071160, 25.475788>,  <13.617120, 10.778465, 25.409277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.352723, 11.071160, 25.475788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171773, 0.363253, -0.915719,
		-0.730468, -0.576721, -0.365800,
		-0.660992, 0.731738, 0.166279,
		13.154426, 11.290682, 25.525671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125181, 10.926531, 24.823872>,  <13.617120, 10.778465, 25.409277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125181, 10.926531, 24.823872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.078115, 11.271000, 25.021675>,  <13.049876, 11.477681, 25.140356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.078115, 11.271000, 25.021675>,  <13.125181, 10.926531, 24.823872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078115, 11.271000, 25.021675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003003, 0.498273, -0.867015,
		-0.993049, -0.100533, -0.061215,
		-0.117665, 0.861172, 0.494508,
		13.042816, 11.529351, 25.170027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736747, 11.236733, 24.285116>,  <13.125181, 10.926531, 24.823872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736747, 11.236733, 24.285116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.871032, 11.520043, 24.533516>,  <12.951603, 11.690029, 24.682556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.871032, 11.520043, 24.533516>,  <12.736747, 11.236733, 24.285116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871032, 11.520043, 24.533516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135154, 0.616223, -0.775889,
		-0.932218, 0.344407, 0.111148,
		0.335713, 0.708275, 0.621001,
		12.971745, 11.732526, 24.719816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383701, 11.833502, 24.067415>,  <12.736747, 11.236733, 24.285116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383701, 11.833502, 24.067415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.706579, 11.955792, 24.269392>,  <12.900306, 12.029167, 24.390579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.706579, 11.955792, 24.269392>,  <12.383701, 11.833502, 24.067415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706579, 11.955792, 24.269392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321230, 0.490154, -0.810284,
		-0.495226, 0.816260, 0.297440,
		0.807194, 0.305727, 0.504944,
		12.948737, 12.047510, 24.420876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<14.742673, 7.526313, 26.750294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.934332, 7.765493, 27.007315>,  <15.049328, 7.909001, 27.161528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.934332, 7.765493, 27.007315>,  <14.742673, 7.526313, 26.750294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.934332, 7.765493, 27.007315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190214, 0.643924, -0.741067,
		-0.856875, 0.477303, 0.194797,
		0.479148, 0.597949, 0.642553,
		15.078076, 7.944878, 27.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687800, 8.317841, 26.877775>,  <14.742673, 7.526313, 26.750294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687800, 8.317841, 26.877775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.064344, 8.334376, 27.011719>,  <15.290271, 8.344298, 27.092085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.064344, 8.334376, 27.011719>,  <14.687800, 8.317841, 26.877775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.064344, 8.334376, 27.011719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334717, 0.010507, -0.942260,
		-0.042472, 0.999090, -0.003946,
		0.941361, 0.041341, 0.334859,
		15.346753, 8.346779, 27.112177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087539, 8.806615, 26.478157>,  <14.687800, 8.317841, 26.877775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087539, 8.806615, 26.478157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.343650, 8.528479, 26.608721>,  <15.497316, 8.361597, 26.687059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.343650, 8.528479, 26.608721>,  <15.087539, 8.806615, 26.478157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.343650, 8.528479, 26.608721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498244, 0.052527, -0.865444,
		0.584633, 0.716758, 0.380081,
		0.640279, -0.695341, 0.326412,
		15.535733, 8.319877, 26.706644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753711, 9.052380, 26.519953>,  <15.087539, 8.806615, 26.478157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753711, 9.052380, 26.519953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.819661, 8.659364, 26.485464>,  <15.859231, 8.423554, 26.464771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.819661, 8.659364, 26.485464>,  <15.753711, 9.052380, 26.519953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819661, 8.659364, 26.485464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521704, 0.161063, -0.837785,
		0.837043, 0.093149, 0.539150,
		0.164875, -0.982539, -0.086220,
		15.869123, 8.364602, 26.459599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320290, 9.089167, 26.286964>,  <15.753711, 9.052380, 26.519953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320290, 9.089167, 26.286964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.251753, 8.706769, 26.191706>,  <16.210630, 8.477330, 26.134550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.251753, 8.706769, 26.191706>,  <16.320290, 9.089167, 26.286964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251753, 8.706769, 26.191706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281244, 0.184202, -0.941791,
		0.944215, -0.228348, 0.237306,
		-0.171344, -0.955995, -0.238148,
		16.200350, 8.419971, 26.120260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774492, 8.950982, 25.815374>,  <16.320290, 9.089167, 26.286964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774492, 8.950982, 25.815374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.515081, 8.653433, 25.750792>,  <16.359436, 8.474903, 25.712042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.515081, 8.653433, 25.750792>,  <16.774492, 8.950982, 25.815374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515081, 8.653433, 25.750792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118726, 0.110661, -0.986741,
		0.751877, -0.659095, 0.016551,
		-0.648525, -0.743873, -0.161455,
		16.320524, 8.430271, 25.702354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068972, 8.667598, 25.207891>,  <16.774492, 8.950982, 25.815374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068972, 8.667598, 25.207891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.702127, 8.510170, 25.233221>,  <16.482021, 8.415713, 25.248419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.702127, 8.510170, 25.233221>,  <17.068972, 8.667598, 25.207891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702127, 8.510170, 25.233221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137939, 0.164283, -0.976721,
		0.374006, -0.904496, -0.204954,
		-0.917111, -0.393571, 0.063323,
		16.426994, 8.392099, 25.252218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001986, 7.977081, 24.888327>,  <17.068972, 8.667598, 25.207891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001986, 7.977081, 24.888327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.636948, 8.140574, 24.884220>,  <16.417925, 8.238670, 24.881756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.636948, 8.140574, 24.884220>,  <17.001986, 7.977081, 24.888327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636948, 8.140574, 24.884220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003285, -0.017782, -0.999837,
		-0.408848, -0.912481, 0.014885,
		-0.912597, 0.408733, -0.010268,
		16.363169, 8.263194, 24.881140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734440, 7.721825, 24.337147>,  <17.001986, 7.977081, 24.888327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734440, 7.721825, 24.337147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.520634, 8.052644, 24.406759>,  <16.392349, 8.251135, 24.448526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.520634, 8.052644, 24.406759>,  <16.734440, 7.721825, 24.337147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520634, 8.052644, 24.406759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026959, 0.189126, -0.981583,
		-0.844728, -0.529363, -0.078795,
		-0.534516, 0.827046, 0.174031,
		16.360279, 8.300757, 24.458969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013298, 7.646700, 23.975885>,  <16.734440, 7.721825, 24.337147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013298, 7.646700, 23.975885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094793, 8.034073, 24.033337>,  <16.143690, 8.266497, 24.067808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094793, 8.034073, 24.033337>,  <16.013298, 7.646700, 23.975885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094793, 8.034073, 24.033337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081146, 0.162904, -0.983299,
		-0.975657, 0.188681, 0.111774,
		0.203738, 0.968433, 0.143628,
		16.155914, 8.324603, 24.076426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787558, 7.980210, 23.377117>,  <16.013298, 7.646700, 23.975885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787558, 7.980210, 23.377117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.941752, 8.317847, 23.526197>,  <16.034269, 8.520430, 23.615644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.941752, 8.317847, 23.526197>,  <15.787558, 7.980210, 23.377117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941752, 8.317847, 23.526197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036015, 0.389845, -0.920176,
		-0.922010, 0.368139, 0.119880,
		0.385487, 0.844094, 0.372699,
		16.057398, 8.571075, 23.638008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438898, 8.662997, 23.070892>,  <15.787558, 7.980210, 23.377117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438898, 8.662997, 23.070892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.817772, 8.714940, 23.188183>,  <16.045095, 8.746105, 23.258556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.817772, 8.714940, 23.188183>,  <15.438898, 8.662997, 23.070892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817772, 8.714940, 23.188183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231965, 0.353940, -0.906045,
		-0.221440, 0.926209, 0.305124,
		0.947183, 0.129856, 0.293225,
		16.101927, 8.753897, 23.276150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979803, 8.834668, 23.594872>,  <15.438898, 8.662997, 23.070892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979803, 8.834668, 23.594872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.587210, 8.911203, 23.591270>,  <14.351654, 8.957125, 23.589109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.587210, 8.911203, 23.591270>,  <14.979803, 8.834668, 23.594872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587210, 8.911203, 23.591270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059022, -0.257381, 0.964506,
		0.182230, 0.947177, 0.263908,
		-0.981483, 0.191338, -0.009002,
		14.292765, 8.968605, 23.588570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.766733, 9.218821, 24.210928>,  <14.979803, 8.834668, 23.594872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.766733, 9.218821, 24.210928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.417366, 9.069787, 24.085503>,  <14.207746, 8.980367, 24.010248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.417366, 9.069787, 24.085503>,  <14.766733, 9.218821, 24.210928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417366, 9.069787, 24.085503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215699, -0.281294, 0.935066,
		-0.436593, 0.884339, 0.165321,
		-0.873419, -0.372584, -0.313562,
		14.155340, 8.958012, 23.991434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336477, 9.285556, 24.754520>,  <14.766733, 9.218821, 24.210928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336477, 9.285556, 24.754520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086359, 9.066924, 24.531717>,  <13.936288, 8.935745, 24.398035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086359, 9.066924, 24.531717>,  <14.336477, 9.285556, 24.754520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086359, 9.066924, 24.531717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489334, -0.281393, 0.825452,
		-0.607913, 0.788713, -0.091506,
		-0.625296, -0.546580, -0.557007,
		13.898770, 8.902950, 24.364614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621942, 9.469013, 24.869247>,  <14.336477, 9.285556, 24.754520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.621942, 9.469013, 24.869247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.615061, 9.080044, 24.776215>,  <13.610932, 8.846662, 24.720394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.615061, 9.080044, 24.776215>,  <13.621942, 9.469013, 24.869247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615061, 9.080044, 24.776215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339357, -0.213131, 0.916194,
		-0.940500, 0.094689, -0.326333,
		-0.017202, -0.972424, -0.232584,
		13.609900, 8.788317, 24.706440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960215, 9.244236, 25.112213>,  <13.621942, 9.469013, 24.869247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.960215, 9.244236, 25.112213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.229796, 8.948851, 25.103666>,  <13.391545, 8.771620, 25.098537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.229796, 8.948851, 25.103666>,  <12.960215, 9.244236, 25.112213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229796, 8.948851, 25.103666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148046, -0.163337, 0.975399,
		-0.723787, -0.654211, -0.219408,
		0.673954, -0.738464, -0.021368,
		13.431983, 8.727311, 25.097256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608174, 8.703396, 25.419703>,  <12.960215, 9.244236, 25.112213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608174, 8.703396, 25.419703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.990318, 8.590348, 25.454145>,  <13.219604, 8.522520, 25.474812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.990318, 8.590348, 25.454145>,  <12.608174, 8.703396, 25.419703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990318, 8.590348, 25.454145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189291, -0.361746, 0.912858,
		-0.226839, -0.888407, -0.399094,
		0.955360, -0.282617, 0.086110,
		13.276926, 8.505563, 25.479979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512216, 8.073382, 25.630123>,  <12.608174, 8.703396, 25.419703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512216, 8.073382, 25.630123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.898249, 8.142968, 25.708458>,  <13.129869, 8.184719, 25.755459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.898249, 8.142968, 25.708458>,  <12.512216, 8.073382, 25.630123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898249, 8.142968, 25.708458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125424, -0.349467, 0.928516,
		0.229968, -0.920657, -0.315445,
		0.965082, 0.173964, 0.195839,
		13.187774, 8.195157, 25.767210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769115, 7.454598, 25.891590>,  <12.512216, 8.073382, 25.630123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769115, 7.454598, 25.891590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.046954, 7.716018, 26.011862>,  <13.213657, 7.872869, 26.084024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.046954, 7.716018, 26.011862>,  <12.769115, 7.454598, 25.891590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046954, 7.716018, 26.011862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114536, -0.513093, 0.850657,
		0.710222, -0.556426, -0.431248,
		0.694598, 0.653549, 0.300679,
		13.255334, 7.912082, 26.102066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238796, 7.081923, 26.210018>,  <12.769115, 7.454598, 25.891590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238796, 7.081923, 26.210018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.307188, 7.451522, 26.346836>,  <13.348223, 7.673282, 26.428926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.307188, 7.451522, 26.346836>,  <13.238796, 7.081923, 26.210018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307188, 7.451522, 26.346836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162526, -0.368852, 0.915169,
		0.971778, -0.100883, -0.213240,
		0.170979, 0.923997, 0.342046,
		13.358481, 7.728722, 26.449450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742739, 7.005188, 26.680706>,  <13.238796, 7.081923, 26.210018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742739, 7.005188, 26.680706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.590883, 7.360517, 26.784054>,  <13.499770, 7.573714, 26.846064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.590883, 7.360517, 26.784054>,  <13.742739, 7.005188, 26.680706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590883, 7.360517, 26.784054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165657, -0.340040, 0.925705,
		0.910182, 0.308634, 0.276250,
		-0.379640, 0.888323, 0.258371,
		13.476992, 7.627014, 26.861565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.057547, 7.053896, 27.431780>,  <13.742739, 7.005188, 26.680706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.057547, 7.053896, 27.431780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.765737, 7.322329, 27.378950>,  <13.590651, 7.483388, 27.347252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.765737, 7.322329, 27.378950>,  <14.057547, 7.053896, 27.431780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765737, 7.322329, 27.378950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130386, 0.053109, 0.990040,
		0.671412, 0.739479, 0.048756,
		-0.729524, 0.671081, -0.132075,
		13.546879, 7.523654, 27.339327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238176, 7.699271, 27.796423>,  <14.057547, 7.053896, 27.431780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238176, 7.699271, 27.796423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840302, 7.663498, 27.776020>,  <13.601578, 7.642034, 27.763779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840302, 7.663498, 27.776020>,  <14.238176, 7.699271, 27.796423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840302, 7.663498, 27.776020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025783, -0.263263, 0.964379,
		-0.099677, 0.960570, 0.259558,
		-0.994686, -0.089434, -0.051008,
		13.541897, 7.636668, 27.760717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879903, 7.953158, 28.369389>,  <14.238176, 7.699271, 27.796423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879903, 7.953158, 28.369389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.615603, 7.687014, 28.230417>,  <13.457024, 7.527328, 28.147034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.615603, 7.687014, 28.230417>,  <13.879903, 7.953158, 28.369389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615603, 7.687014, 28.230417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223929, -0.267053, 0.937304,
		-0.716426, 0.697122, 0.027462,
		-0.660749, -0.665359, -0.347430,
		13.417378, 7.487406, 28.126188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270089, 8.233198, 28.691959>,  <13.879903, 7.953158, 28.369389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270089, 8.233198, 28.691959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.224886, 7.848197, 28.593317>,  <13.197764, 7.617196, 28.534132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.224886, 7.848197, 28.593317>,  <13.270089, 8.233198, 28.691959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224886, 7.848197, 28.593317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307261, -0.202179, 0.929900,
		-0.944892, 0.180859, -0.272892,
		-0.113008, -0.962504, -0.246608,
		13.190984, 7.559445, 28.519335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.728884, 8.620484, 28.506805>,  <13.270089, 8.233198, 28.691959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.728884, 8.620484, 28.506805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.532137, 8.910425, 28.699743>,  <12.414088, 9.084390, 28.815506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.532137, 8.910425, 28.699743>,  <12.728884, 8.620484, 28.506805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532137, 8.910425, 28.699743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222466, 0.430973, -0.874512,
		-0.841769, -0.537449, -0.050727,
		-0.491868, 0.724852, 0.482344,
		12.384577, 9.127881, 28.844446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166404, 8.764116, 28.092064>,  <12.728884, 8.620484, 28.506805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166404, 8.764116, 28.092064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.230063, 9.080153, 28.328852>,  <12.268259, 9.269774, 28.470924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.230063, 9.080153, 28.328852>,  <12.166404, 8.764116, 28.092064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.230063, 9.080153, 28.328852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069608, 0.607101, -0.791570,
		-0.984798, 0.084772, 0.151616,
		0.159150, 0.790090, 0.591971,
		12.277808, 9.317180, 28.506443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670071, 9.184225, 27.870863>,  <12.166404, 8.764116, 28.092064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670071, 9.184225, 27.870863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.962720, 9.406446, 28.028894>,  <12.138309, 9.539778, 28.123714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.962720, 9.406446, 28.028894>,  <11.670071, 9.184225, 27.870863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962720, 9.406446, 28.028894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122839, 0.677495, -0.725197,
		-0.670550, 0.482041, 0.563915,
		0.731624, 0.555551, 0.395081,
		12.182207, 9.573111, 28.147419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.486322, 9.852791, 27.790422>,  <11.670071, 9.184225, 27.870863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.486322, 9.852791, 27.790422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.879921, 9.895047, 27.847824>,  <12.116080, 9.920402, 27.882265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.879921, 9.895047, 27.847824>,  <11.486322, 9.852791, 27.790422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.879921, 9.895047, 27.847824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022750, 0.724251, -0.689161,
		-0.176736, 0.681397, 0.710256,
		0.983996, 0.105641, 0.143502,
		12.175119, 9.926740, 27.890875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626883, 10.437805, 27.601593>,  <11.486322, 9.852791, 27.790422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626883, 10.437805, 27.601593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.017853, 10.353629, 27.609106>,  <12.252435, 10.303123, 27.613613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.017853, 10.353629, 27.609106>,  <11.626883, 10.437805, 27.601593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017853, 10.353629, 27.609106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186573, 0.818011, -0.544103,
		0.099137, 0.535325, 0.838808,
		0.977426, -0.210440, 0.018782,
		12.311081, 10.290497, 27.614740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915497, 11.051232, 27.624249>,  <11.626883, 10.437805, 27.601593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915497, 11.051232, 27.624249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.213115, 10.814912, 27.499443>,  <12.391685, 10.673120, 27.424561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.213115, 10.814912, 27.499443>,  <11.915497, 11.051232, 27.624249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213115, 10.814912, 27.499443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283429, 0.701994, -0.653354,
		0.605033, 0.397692, 0.689766,
		0.744045, -0.590800, -0.312012,
		12.436328, 10.637671, 27.405840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567763, 11.434388, 27.623280>,  <11.915497, 11.051232, 27.624249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567763, 11.434388, 27.623280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.591050, 11.155885, 27.337109>,  <12.605022, 10.988783, 27.165407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.591050, 11.155885, 27.337109>,  <12.567763, 11.434388, 27.623280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.591050, 11.155885, 27.337109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368831, 0.680938, -0.632682,
		0.927671, -0.227039, 0.296444,
		0.058217, -0.696259, -0.715426,
		12.608515, 10.947007, 27.122480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222924, 11.789813, 27.869741>,  <12.567763, 11.434388, 27.623280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222924, 11.789813, 27.869741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.406580, 12.101186, 28.040966>,  <13.516773, 12.288010, 28.143702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.406580, 12.101186, 28.040966>,  <13.222924, 11.789813, 27.869741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.406580, 12.101186, 28.040966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199765, -0.559983, 0.804061,
		0.865613, -0.283663, -0.412612,
		0.459138, 0.778431, 0.428063,
		13.544321, 12.334715, 28.169384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786167, 11.464523, 28.080915>,  <13.222924, 11.789813, 27.869741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786167, 11.464523, 28.080915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.773075, 11.795172, 28.305637>,  <13.765220, 11.993561, 28.440470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.773075, 11.795172, 28.305637>,  <13.786167, 11.464523, 28.080915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773075, 11.795172, 28.305637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314804, -0.524969, 0.790763,
		0.948592, 0.202741, -0.243041,
		-0.032731, 0.826622, 0.561805,
		13.763256, 12.043159, 28.474178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458962, 11.634545, 28.376604>,  <13.786167, 11.464523, 28.080915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458962, 11.634545, 28.376604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.172937, 11.788310, 28.610155>,  <14.001323, 11.880569, 28.750286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.172937, 11.788310, 28.610155>,  <14.458962, 11.634545, 28.376604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172937, 11.788310, 28.610155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310725, -0.573408, 0.758059,
		0.626207, 0.723485, 0.290576,
		-0.715063, 0.384412, 0.583877,
		13.958419, 11.903634, 28.785318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813443, 11.620986, 29.005911>,  <14.458962, 11.634545, 28.376604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813443, 11.620986, 29.005911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.416375, 11.624570, 29.054121>,  <14.178134, 11.626720, 29.083046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.416375, 11.624570, 29.054121>,  <14.813443, 11.620986, 29.005911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416375, 11.624570, 29.054121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101677, -0.477143, 0.872924,
		0.065329, 0.878780, 0.472734,
		-0.992670, 0.008961, 0.120523,
		14.118574, 11.627258, 29.090279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819959, 11.813704, 29.629208>,  <14.813443, 11.620986, 29.005911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819959, 11.813704, 29.629208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.450871, 11.662338, 29.599842>,  <14.229418, 11.571518, 29.582222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.450871, 11.662338, 29.599842>,  <14.819959, 11.813704, 29.629208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450871, 11.662338, 29.599842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084963, -0.385428, 0.918818,
		-0.375992, 0.841574, 0.387793,
		-0.922720, -0.378416, -0.073415,
		14.174055, 11.548814, 29.577818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627611, 11.849108, 30.259348>,  <14.819959, 11.813704, 29.629208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627611, 11.849108, 30.259348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.370413, 11.595696, 30.087210>,  <14.216094, 11.443650, 29.983927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.370413, 11.595696, 30.087210>,  <14.627611, 11.849108, 30.259348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370413, 11.595696, 30.087210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002861, -0.563889, 0.825846,
		-0.765864, 0.529785, 0.364392,
		-0.642997, -0.633528, -0.430346,
		14.177514, 11.405638, 29.958105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009221, 11.580143, 30.796770>,  <14.627611, 11.849108, 30.259348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009221, 11.580143, 30.796770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.035393, 11.313755, 30.499529>,  <14.051096, 11.153922, 30.321184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.035393, 11.313755, 30.499529>,  <14.009221, 11.580143, 30.796770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035393, 11.313755, 30.499529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091313, -0.745570, 0.660142,
		-0.993670, 0.024662, -0.109594,
		0.065429, -0.665971, -0.743103,
		14.055021, 11.113964, 30.276598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528640, 11.155777, 30.962379>,  <14.009221, 11.580143, 30.796770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528640, 11.155777, 30.962379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.773685, 10.951282, 30.721268>,  <13.920712, 10.828584, 30.576601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.773685, 10.951282, 30.721268>,  <13.528640, 11.155777, 30.962379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773685, 10.951282, 30.721268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015930, -0.770470, 0.637277,
		-0.790229, -0.380796, -0.480137,
		0.612604, -0.511243, -0.602782,
		13.957468, 10.797910, 30.540434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252114, 10.554631, 30.769693>,  <13.528640, 11.155777, 30.962379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.252114, 10.554631, 30.769693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.636429, 10.473781, 30.693760>,  <13.867018, 10.425270, 30.648201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.636429, 10.473781, 30.693760>,  <13.252114, 10.554631, 30.769693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636429, 10.473781, 30.693760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025922, -0.747059, 0.664252,
		-0.276078, -0.633283, -0.723003,
		0.960786, -0.202127, -0.189831,
		13.924664, 10.413142, 30.636810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.485487, 16.863022, 16.958286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845263, 16.700300, 17.022190>,  <17.061127, 16.602667, 17.060532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845263, 16.700300, 17.022190>,  <16.485487, 16.863022, 16.958286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845263, 16.700300, 17.022190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259299, -0.202442, 0.944342,
		-0.351821, -0.890801, -0.287568,
		0.899436, -0.406806, 0.159760,
		17.115093, 16.578259, 17.070118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425346, 16.233452, 17.208071>,  <16.485487, 16.863022, 16.958286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425346, 16.233452, 17.208071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783291, 16.343035, 17.349024>,  <16.998058, 16.408785, 17.433596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783291, 16.343035, 17.349024>,  <16.425346, 16.233452, 17.208071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783291, 16.343035, 17.349024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289093, -0.245769, 0.925215,
		0.340073, -0.929809, -0.140730,
		0.894861, 0.273957, 0.352381,
		17.051748, 16.425222, 17.454739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651869, 15.670824, 17.543356>,  <16.425346, 16.233452, 17.208071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651869, 15.670824, 17.543356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882391, 15.972674, 17.668837>,  <17.020704, 16.153784, 17.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882391, 15.972674, 17.668837>,  <16.651869, 15.670824, 17.543356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882391, 15.972674, 17.668837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310101, -0.153224, 0.938275,
		0.756114, -0.638013, 0.145706,
		0.576306, 0.754626, 0.313704,
		17.055283, 16.199062, 17.762947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940887, 15.408330, 18.100409>,  <16.651869, 15.670824, 17.543356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940887, 15.408330, 18.100409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970114, 15.805227, 18.140635>,  <16.987650, 16.043365, 18.164770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970114, 15.805227, 18.140635>,  <16.940887, 15.408330, 18.100409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970114, 15.805227, 18.140635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317179, -0.072479, 0.945592,
		0.945547, -0.100986, 0.309423,
		0.073065, 0.992244, 0.100563,
		16.992033, 16.102901, 18.170803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289215, 15.509170, 18.705868>,  <16.940887, 15.408330, 18.100409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289215, 15.509170, 18.705868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103443, 15.852832, 18.619930>,  <16.991980, 16.059029, 18.568367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103443, 15.852832, 18.619930>,  <17.289215, 15.509170, 18.705868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103443, 15.852832, 18.619930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446483, -0.017640, 0.894619,
		0.764827, 0.511410, 0.391791,
		-0.464428, 0.859156, -0.214844,
		16.964115, 16.110579, 18.555477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400129, 15.914330, 19.273531>,  <17.289215, 15.509170, 18.705868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400129, 15.914330, 19.273531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.089241, 16.082396, 19.086174>,  <16.902708, 16.183235, 18.973761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.089241, 16.082396, 19.086174>,  <17.400129, 15.914330, 19.273531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089241, 16.082396, 19.086174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441167, 0.166910, 0.881767,
		0.448666, 0.891966, 0.055637,
		-0.777220, 0.420164, -0.468393,
		16.856075, 16.208445, 18.945656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297661, 16.510706, 19.703144>,  <17.400129, 15.914330, 19.273531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297661, 16.510706, 19.703144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966599, 16.468981, 19.482561>,  <16.767962, 16.443945, 19.350212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966599, 16.468981, 19.482561>,  <17.297661, 16.510706, 19.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966599, 16.468981, 19.482561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548840, 0.355807, 0.756423,
		0.117306, 0.928719, -0.351738,
		-0.827656, -0.104315, -0.551456,
		16.718302, 16.437687, 19.317123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915037, 17.064178, 19.764595>,  <17.297661, 16.510706, 19.703144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915037, 17.064178, 19.764595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.620075, 16.828897, 19.631781>,  <16.443098, 16.687729, 19.552092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.620075, 16.828897, 19.631781>,  <16.915037, 17.064178, 19.764595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620075, 16.828897, 19.631781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542494, 0.222893, 0.809950,
		-0.402409, 0.777389, -0.483460,
		-0.737406, -0.588205, -0.332035,
		16.398853, 16.652435, 19.532169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366114, 17.438889, 19.720005>,  <16.915037, 17.064178, 19.764595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366114, 17.438889, 19.720005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236002, 17.064014, 19.770405>,  <16.157936, 16.839090, 19.800644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236002, 17.064014, 19.770405>,  <16.366114, 17.438889, 19.720005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236002, 17.064014, 19.770405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432054, 0.265819, 0.861783,
		-0.841144, 0.225880, -0.491380,
		-0.325278, -0.937187, 0.126000,
		16.138418, 16.782858, 19.808205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529012, 17.518881, 19.941044>,  <16.366114, 17.438889, 19.720005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529012, 17.518881, 19.941044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631151, 17.145220, 20.040770>,  <15.692435, 16.921024, 20.100605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631151, 17.145220, 20.040770>,  <15.529012, 17.518881, 19.941044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631151, 17.145220, 20.040770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503956, 0.091467, 0.858872,
		-0.825121, -0.344955, -0.447415,
		0.255349, -0.934152, 0.249314,
		15.707756, 16.864975, 20.115564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879897, 17.312119, 20.231142>,  <15.529012, 17.518881, 19.941044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879897, 17.312119, 20.231142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152511, 17.046616, 20.354393>,  <15.316079, 16.887314, 20.428343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152511, 17.046616, 20.354393>,  <14.879897, 17.312119, 20.231142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152511, 17.046616, 20.354393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451756, -0.050371, 0.890718,
		-0.575698, -0.746252, -0.334185,
		0.681534, -0.663756, 0.308125,
		15.356971, 16.847488, 20.446831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493241, 16.633314, 20.438801>,  <14.879897, 17.312119, 20.231142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493241, 16.633314, 20.438801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842893, 16.642548, 20.632858>,  <15.052684, 16.648088, 20.749292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842893, 16.642548, 20.632858>,  <14.493241, 16.633314, 20.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842893, 16.642548, 20.632858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483397, -0.055689, 0.873628,
		0.047189, -0.998181, -0.037518,
		0.874129, 0.023089, 0.485145,
		15.105131, 16.649473, 20.778402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248423, 16.083775, 19.795202>,  <14.493241, 16.633314, 20.438801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248423, 16.083775, 19.795202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975537, 15.795258, 19.747332>,  <13.811806, 15.622148, 19.718609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975537, 15.795258, 19.747332>,  <14.248423, 16.083775, 19.795202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975537, 15.795258, 19.747332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224778, 0.362662, -0.904406,
		0.695743, -0.590098, -0.409544,
		-0.682214, -0.721291, -0.119679,
		13.770873, 15.578871, 19.711428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301552, 16.029207, 19.063284>,  <14.248423, 16.083775, 19.795202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301552, 16.029207, 19.063284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953352, 15.861481, 19.166363>,  <13.744432, 15.760845, 19.228210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953352, 15.861481, 19.166363>,  <14.301552, 16.029207, 19.063284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953352, 15.861481, 19.166363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409321, 0.326056, -0.852141,
		0.273287, -0.847270, -0.455464,
		-0.870500, -0.419310, 0.257698,
		13.692203, 15.735686, 19.243671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155353, 15.588542, 18.486336>,  <14.301552, 16.029207, 19.063284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155353, 15.588542, 18.486336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822524, 15.675035, 18.690651>,  <13.622828, 15.726930, 18.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822524, 15.675035, 18.690651>,  <14.155353, 15.588542, 18.486336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822524, 15.675035, 18.690651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413031, 0.373115, -0.830777,
		-0.370222, -0.902236, -0.221148,
		-0.832071, 0.216231, 0.510787,
		13.572903, 15.739903, 18.843887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.681443, 15.238976, 18.141863>,  <14.155353, 15.588542, 18.486336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.681443, 15.238976, 18.141863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478478, 15.526314, 18.332237>,  <13.356700, 15.698716, 18.446463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478478, 15.526314, 18.332237>,  <13.681443, 15.238976, 18.141863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478478, 15.526314, 18.332237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355425, 0.328678, -0.875011,
		-0.784989, -0.613150, 0.088542,
		-0.507411, 0.718344, 0.475937,
		13.326255, 15.741817, 18.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100370, 15.337035, 17.765444>,  <13.681443, 15.238976, 18.141863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100370, 15.337035, 17.765444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079073, 15.667587, 17.989679>,  <13.066295, 15.865919, 18.124220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079073, 15.667587, 17.989679>,  <13.100370, 15.337035, 17.765444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079073, 15.667587, 17.989679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397916, 0.497331, -0.770925,
		-0.915875, -0.264114, 0.302351,
		-0.053243, 0.826381, 0.560588,
		13.063100, 15.915502, 18.157856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376222, 15.488416, 17.717669>,  <13.100370, 15.337035, 17.765444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376222, 15.488416, 17.717669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607113, 15.807235, 17.788691>,  <12.745647, 15.998526, 17.831305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607113, 15.807235, 17.788691>,  <12.376222, 15.488416, 17.717669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607113, 15.807235, 17.788691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287296, 0.401760, -0.869512,
		-0.764376, 0.450895, 0.460895,
		0.577227, 0.797047, 0.177555,
		12.780281, 16.046349, 17.841957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.077549, 16.105213, 17.627768>,  <12.376222, 15.488416, 17.717669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.077549, 16.105213, 17.627768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447080, 16.248638, 17.574133>,  <12.668797, 16.334692, 17.541952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447080, 16.248638, 17.574133>,  <12.077549, 16.105213, 17.627768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447080, 16.248638, 17.574133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286998, 0.416927, -0.862441,
		-0.253333, 0.835228, 0.488075,
		0.923826, 0.358561, -0.134087,
		12.724228, 16.356207, 17.533907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.926418, 16.734930, 17.313435>,  <12.077549, 16.105213, 17.627768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.926418, 16.734930, 17.313435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315681, 16.691633, 17.232197>,  <12.549239, 16.665655, 17.183455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315681, 16.691633, 17.232197>,  <11.926418, 16.734930, 17.313435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315681, 16.691633, 17.232197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164095, 0.292372, -0.942121,
		0.161357, 0.950159, 0.266762,
		0.973158, -0.108244, -0.203092,
		12.607629, 16.659161, 17.171268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.990808, 17.221897, 16.867565>,  <11.926418, 16.734930, 17.313435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.990808, 17.221897, 16.867565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321683, 17.003683, 16.813673>,  <12.520208, 16.872755, 16.781338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321683, 17.003683, 16.813673>,  <11.990808, 17.221897, 16.867565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.321683, 17.003683, 16.813673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008695, 0.227311, -0.973783,
		0.561857, 0.806674, 0.183286,
		0.827189, -0.545533, -0.134730,
		12.569839, 16.840023, 16.773254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533953, 17.702719, 16.595963>,  <11.990808, 17.221897, 16.867565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533953, 17.702719, 16.595963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656193, 17.336079, 16.492851>,  <12.729537, 17.116095, 16.430984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656193, 17.336079, 16.492851>,  <12.533953, 17.702719, 16.595963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656193, 17.336079, 16.492851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093737, 0.240450, -0.966125,
		0.947534, 0.319412, -0.012438,
		0.305601, -0.916602, -0.257776,
		12.747873, 17.061098, 16.415518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147159, 17.800264, 16.114561>,  <12.533953, 17.702719, 16.595963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147159, 17.800264, 16.114561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985559, 17.438951, 16.056780>,  <12.888598, 17.222164, 16.022110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985559, 17.438951, 16.056780>,  <13.147159, 17.800264, 16.114561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.985559, 17.438951, 16.056780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101334, 0.201136, -0.974308,
		0.909129, -0.378982, -0.172792,
		-0.404000, -0.903281, -0.144455,
		12.864359, 17.167967, 16.013443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471536, 17.388031, 15.528567>,  <13.147159, 17.800264, 16.114561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471536, 17.388031, 15.528567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094847, 17.271782, 15.596327>,  <12.868834, 17.202032, 15.636983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094847, 17.271782, 15.596327>,  <13.471536, 17.388031, 15.528567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094847, 17.271782, 15.596327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235392, 0.209582, -0.949034,
		0.240318, -0.933600, -0.265780,
		-0.941721, -0.290633, 0.169396,
		12.812329, 17.184595, 15.647146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322540, 17.130224, 14.860659>,  <13.471536, 17.388031, 15.528567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322540, 17.130224, 14.860659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970532, 17.184082, 15.042840>,  <12.759328, 17.216396, 15.152148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970532, 17.184082, 15.042840>,  <13.322540, 17.130224, 14.860659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.970532, 17.184082, 15.042840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411050, 0.264468, -0.872407,
		-0.237916, -0.954949, -0.177392,
		-0.880019, 0.134643, 0.455453,
		12.706527, 17.224474, 15.179476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955782, 16.849503, 14.421998>,  <13.322540, 17.130224, 14.860659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955782, 16.849503, 14.421998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690722, 17.058971, 14.636162>,  <12.531687, 17.184652, 14.764660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690722, 17.058971, 14.636162>,  <12.955782, 16.849503, 14.421998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690722, 17.058971, 14.636162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463848, 0.274310, -0.842377,
		-0.587998, -0.806549, 0.061134,
		-0.662649, 0.523673, 0.535410,
		12.491928, 17.216074, 14.796784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.238814, 16.646406, 14.489512>,  <12.955782, 16.849503, 14.421998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.238814, 16.646406, 14.489512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.291196, 17.042778, 14.501589>,  <12.322624, 17.280602, 14.508835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.291196, 17.042778, 14.501589>,  <12.238814, 16.646406, 14.489512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.291196, 17.042778, 14.501589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347696, 0.074426, -0.934649,
		-0.928417, 0.111898, 0.354289,
		0.130953, 0.990929, 0.030192,
		12.330482, 17.340057, 14.510647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.545957, 16.043108, 14.871091>,  <12.238814, 16.646406, 14.489512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.545957, 16.043108, 14.871091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917475, 16.101114, 14.734674>,  <13.140386, 16.135918, 14.652823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917475, 16.101114, 14.734674>,  <12.545957, 16.043108, 14.871091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917475, 16.101114, 14.734674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308465, -0.812564, 0.494560,
		-0.205401, -0.564544, -0.799438,
		0.928795, 0.145015, -0.341043,
		13.196114, 16.144619, 14.632360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760543, 15.410106, 14.679362>,  <12.545957, 16.043108, 14.871091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760543, 15.410106, 14.679362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082197, 15.639428, 14.742207>,  <13.275190, 15.777021, 14.779913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082197, 15.639428, 14.742207>,  <12.760543, 15.410106, 14.679362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082197, 15.639428, 14.742207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371615, -0.691113, 0.619891,
		0.463969, -0.440093, -0.768799,
		0.804136, 0.573307, 0.157110,
		13.323439, 15.811420, 14.789339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114186, 15.027212, 15.364573>,  <12.760543, 15.410106, 14.679362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114186, 15.027212, 15.364573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503094, 14.976894, 15.443435>,  <13.736438, 14.946704, 15.490751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503094, 14.976894, 15.443435>,  <13.114186, 15.027212, 15.364573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503094, 14.976894, 15.443435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204633, -0.865727, 0.456773,
		0.113221, -0.484450, -0.867462,
		0.972269, -0.125795, 0.197153,
		13.794774, 14.939156, 15.502581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113901, 14.408281, 15.771471>,  <13.114186, 15.027212, 15.364573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113901, 14.408281, 15.771471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493397, 14.532375, 15.795635>,  <13.721094, 14.606832, 15.810134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493397, 14.532375, 15.795635>,  <13.113901, 14.408281, 15.771471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.493397, 14.532375, 15.795635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199015, -0.734864, 0.648358,
		0.245537, -0.603099, -0.758936,
		0.948739, 0.310235, 0.060410,
		13.778018, 14.625446, 15.813758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594043, 13.777418, 15.690034>,  <13.113901, 14.408281, 15.771471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594043, 13.777418, 15.690034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796099, 14.074245, 15.866292>,  <13.917333, 14.252342, 15.972047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796099, 14.074245, 15.866292>,  <13.594043, 13.777418, 15.690034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796099, 14.074245, 15.866292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320751, -0.635425, 0.702391,
		0.801219, -0.213469, -0.558998,
		0.505140, 0.742068, 0.440645,
		13.947640, 14.296866, 15.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254316, 13.464406, 15.825706>,  <13.594043, 13.777418, 15.690034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254316, 13.464406, 15.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189030, 13.767778, 16.078100>,  <14.149858, 13.949801, 16.229538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189030, 13.767778, 16.078100>,  <14.254316, 13.464406, 15.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189030, 13.767778, 16.078100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034299, -0.634814, 0.771903,
		0.985994, 0.147629, 0.077599,
		-0.163216, 0.758430, 0.630987,
		14.140065, 13.995308, 16.267397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803139, 13.313065, 16.435947>,  <14.254316, 13.464406, 15.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803139, 13.313065, 16.435947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561234, 13.581875, 16.606895>,  <14.416090, 13.743161, 16.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561234, 13.581875, 16.606895>,  <14.803139, 13.313065, 16.435947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561234, 13.581875, 16.606895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046087, -0.565254, 0.823628,
		0.795071, 0.478404, 0.372816,
		-0.604763, 0.672025, 0.427369,
		14.379805, 13.783483, 16.735106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071898, 13.344332, 17.068718>,  <14.803139, 13.313065, 16.435947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071898, 13.344332, 17.068718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698537, 13.485700, 17.093565>,  <14.474521, 13.570520, 17.108473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698537, 13.485700, 17.093565>,  <15.071898, 13.344332, 17.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698537, 13.485700, 17.093565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132203, -0.499626, 0.856094,
		0.333595, 0.790866, 0.513074,
		-0.933400, 0.353419, 0.062118,
		14.418517, 13.591725, 17.112200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997056, 13.705784, 17.748085>,  <15.071898, 13.344332, 17.068718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997056, 13.705784, 17.748085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638398, 13.581686, 17.621737>,  <14.423203, 13.507227, 17.545927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638398, 13.581686, 17.621737>,  <14.997056, 13.705784, 17.748085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638398, 13.581686, 17.621737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068510, -0.607620, 0.791268,
		-0.437417, 0.731127, 0.523565,
		-0.896645, -0.310245, -0.315872,
		14.369405, 13.488612, 17.526976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661602, 13.620723, 18.381178>,  <14.997056, 13.705784, 17.748085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661602, 13.620723, 18.381178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403481, 13.441221, 18.133886>,  <14.248610, 13.333520, 17.985512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403481, 13.441221, 18.133886>,  <14.661602, 13.620723, 18.381178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.403481, 13.441221, 18.133886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273564, -0.619863, 0.735482,
		-0.713267, 0.643731, 0.277235,
		-0.645300, -0.448754, -0.618229,
		14.209891, 13.306595, 17.948418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018544, 13.584724, 18.714832>,  <14.661602, 13.620723, 18.381178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018544, 13.584724, 18.714832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035376, 13.285203, 18.450251>,  <14.045475, 13.105490, 18.291502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035376, 13.285203, 18.450251>,  <14.018544, 13.584724, 18.714832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035376, 13.285203, 18.450251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215770, -0.653229, 0.725766,
		-0.975537, 0.112182, -0.189056,
		0.042079, -0.748804, -0.661454,
		14.047999, 13.060562, 18.251814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588229, 13.118700, 19.046223>,  <14.018544, 13.584724, 18.714832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588229, 13.118700, 19.046223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778872, 12.919475, 18.756456>,  <13.893258, 12.799939, 18.582596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778872, 12.919475, 18.756456>,  <13.588229, 13.118700, 19.046223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778872, 12.919475, 18.756456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058572, -0.840186, 0.539125,
		-0.877162, -0.214521, -0.429613,
		0.476608, -0.498064, -0.724415,
		13.921855, 12.770056, 18.539131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155175, 12.525241, 18.789185>,  <13.588229, 13.118700, 19.046223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155175, 12.525241, 18.789185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.537860, 12.438602, 18.711430>,  <13.767471, 12.386620, 18.664776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.537860, 12.438602, 18.711430>,  <13.155175, 12.525241, 18.789185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.537860, 12.438602, 18.711430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105060, -0.879916, 0.463369,
		-0.271410, -0.422888, -0.864582,
		0.956712, -0.216596, -0.194389,
		13.824874, 12.373624, 18.653112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236417, 11.828852, 18.499329>,  <13.155175, 12.525241, 18.789185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236417, 11.828852, 18.499329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595440, 11.879907, 18.668135>,  <13.810854, 11.910540, 18.769419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595440, 11.879907, 18.668135>,  <13.236417, 11.828852, 18.499329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595440, 11.879907, 18.668135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167713, -0.786383, 0.594537,
		0.407752, -0.604409, -0.684418,
		0.897558, 0.127638, 0.422016,
		13.864708, 11.918198, 18.794739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.497893, 11.229843, 18.526394>,  <13.236417, 11.828852, 18.499329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.497893, 11.229843, 18.526394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709381, 11.432729, 18.798626>,  <13.836273, 11.554461, 18.961966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709381, 11.432729, 18.798626>,  <13.497893, 11.229843, 18.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709381, 11.432729, 18.798626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121386, -0.748394, 0.652053,
		0.840073, -0.427365, -0.334120,
		0.528718, 0.507214, 0.680581,
		13.867996, 11.584893, 19.002800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793709, 10.724501, 18.931269>,  <13.497893, 11.229843, 18.526394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793709, 10.724501, 18.931269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908217, 11.026940, 19.166679>,  <13.976922, 11.208404, 19.307926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908217, 11.026940, 19.166679>,  <13.793709, 10.724501, 18.931269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908217, 11.026940, 19.166679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027072, -0.620372, 0.783841,
		0.957766, -0.208458, -0.198063,
		0.286270, 0.756098, 0.588528,
		13.994099, 11.253770, 19.343237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416343, 10.533198, 19.354401>,  <13.793709, 10.724501, 18.931269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416343, 10.533198, 19.354401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235926, 10.829450, 19.553612>,  <14.127675, 11.007200, 19.673138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235926, 10.829450, 19.553612>,  <14.416343, 10.533198, 19.354401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235926, 10.829450, 19.553612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015279, -0.564338, 0.825402,
		0.892372, 0.364682, 0.265856,
		-0.451042, 0.740628, 0.498027,
		14.100613, 11.051638, 19.703020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821794, 10.662538, 19.965761>,  <14.416343, 10.533198, 19.354401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821794, 10.662538, 19.965761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471909, 10.833615, 20.056936>,  <14.261977, 10.936262, 20.111641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471909, 10.833615, 20.056936>,  <14.821794, 10.662538, 19.965761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471909, 10.833615, 20.056936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072287, -0.580200, 0.811260,
		0.479220, 0.693142, 0.538425,
		-0.874713, 0.427693, 0.227939,
		14.209495, 10.961924, 20.125319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817767, 11.044903, 20.604797>,  <14.821794, 10.662538, 19.965761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817767, 11.044903, 20.604797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440763, 10.926284, 20.543179>,  <14.214560, 10.855113, 20.506208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440763, 10.926284, 20.543179>,  <14.817767, 11.044903, 20.604797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440763, 10.926284, 20.543179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023525, -0.518718, 0.854621,
		-0.333341, 0.801868, 0.495875,
		-0.942513, -0.296546, -0.154046,
		14.158009, 10.837320, 20.496965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537386, 11.136839, 21.230310>,  <14.817767, 11.044903, 20.604797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537386, 11.136839, 21.230310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267109, 10.906695, 21.045961>,  <14.104942, 10.768609, 20.935352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267109, 10.906695, 21.045961>,  <14.537386, 11.136839, 21.230310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267109, 10.906695, 21.045961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027969, -0.604720, 0.795947,
		-0.736653, 0.550706, 0.392513,
		-0.675693, -0.575358, -0.460871,
		14.064401, 10.734088, 20.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017717, 11.089653, 21.654867>,  <14.537386, 11.136839, 21.230310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017717, 11.089653, 21.654867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960443, 10.777710, 21.411123>,  <13.926078, 10.590544, 21.264877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960443, 10.777710, 21.411123>,  <14.017717, 11.089653, 21.654867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960443, 10.777710, 21.411123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195916, -0.581185, 0.789836,
		-0.970110, 0.232479, -0.069568,
		-0.143188, -0.779857, -0.609360,
		13.917486, 10.543753, 21.228315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.380608, 10.823492, 21.785830>,  <14.017717, 11.089653, 21.654867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.380608, 10.823492, 21.785830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.604304, 10.530204, 21.631098>,  <13.738522, 10.354231, 21.538260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.604304, 10.530204, 21.631098>,  <13.380608, 10.823492, 21.785830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.604304, 10.530204, 21.631098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191216, -0.568124, 0.800419,
		-0.806652, -0.373659, -0.457922,
		0.559240, -0.733221, -0.386829,
		13.772077, 10.310238, 21.515049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005645, 10.235023, 21.778791>,  <13.380608, 10.823492, 21.785830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005645, 10.235023, 21.778791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.370395, 10.075384, 21.740414>,  <13.589245, 9.979601, 21.717386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.370395, 10.075384, 21.740414>,  <13.005645, 10.235023, 21.778791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.370395, 10.075384, 21.740414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269668, -0.758711, 0.592990,
		-0.309456, -0.514859, -0.799473,
		0.911875, -0.399097, -0.095946,
		13.643957, 9.955655, 21.711630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845775, 9.569741, 21.942272>,  <13.005645, 10.235023, 21.778791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845775, 9.569741, 21.942272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245090, 9.585024, 21.959970>,  <13.484680, 9.594193, 21.970589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245090, 9.585024, 21.959970>,  <12.845775, 9.569741, 21.942272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245090, 9.585024, 21.959970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000195, -0.759028, 0.651058,
		0.058457, -0.649936, -0.757737,
		0.998290, 0.038206, 0.044244,
		13.544578, 9.596486, 21.973244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008644, 8.963633, 21.818762>,  <12.845775, 9.569741, 21.942272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008644, 8.963633, 21.818762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326201, 9.109448, 22.013428>,  <13.516736, 9.196939, 22.130228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326201, 9.109448, 22.013428>,  <13.008644, 8.963633, 21.818762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326201, 9.109448, 22.013428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154467, -0.653198, 0.741264,
		0.588109, -0.663659, -0.462260,
		0.793894, 0.364541, 0.486665,
		13.564369, 9.218811, 22.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245281, 8.330005, 22.138823>,  <13.008644, 8.963633, 21.818762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245281, 8.330005, 22.138823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452917, 8.620077, 22.319780>,  <13.577498, 8.794121, 22.428354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452917, 8.620077, 22.319780>,  <13.245281, 8.330005, 22.138823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.452917, 8.620077, 22.319780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109978, -0.468218, 0.876742,
		0.847616, -0.504860, -0.163293,
		0.519088, 0.725182, 0.452392,
		13.608644, 8.837631, 22.455498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868052, 8.101214, 22.508297>,  <13.245281, 8.330005, 22.138823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868052, 8.101214, 22.508297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720200, 8.429410, 22.682732>,  <13.631489, 8.626328, 22.787394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720200, 8.429410, 22.682732>,  <13.868052, 8.101214, 22.508297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.720200, 8.429410, 22.682732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058051, -0.448018, 0.892137,
		0.927364, 0.355076, 0.117971,
		-0.369630, 0.820488, 0.436089,
		13.609311, 8.675556, 22.813559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
