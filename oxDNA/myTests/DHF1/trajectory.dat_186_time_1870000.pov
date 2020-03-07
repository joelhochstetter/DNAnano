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
	<-0.847029, 3.426494, 1.358753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.475311, 3.281464, 1.330612>,  <-0.252281, 3.194445, 1.313728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.475311, 3.281464, 1.330612>,  <-0.847029, 3.426494, 1.358753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.475311, 3.281464, 1.330612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241933, -0.741509, 0.625806,
		-0.279068, -0.564538, -0.776799,
		0.929295, -0.362576, -0.070351,
		-0.196523, 3.172691, 1.309507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.883375, 2.750053, 1.164225>,  <-0.847029, 3.426494, 1.358753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.883375, 2.750053, 1.164225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.546173, 2.790794, 1.375496>,  <-0.343852, 2.815239, 1.502258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.546173, 2.790794, 1.375496>,  <-0.883375, 2.750053, 1.164225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.546173, 2.790794, 1.375496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320585, -0.693336, 0.645376,
		0.431937, -0.713380, -0.551833,
		0.843004, 0.101852, 0.528177,
		-0.293272, 2.821350, 1.533949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.393970, 2.092390, 1.211428>,  <-0.883375, 2.750053, 1.164225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.393970, 2.092390, 1.211428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.387566, 2.322670, 1.538429>,  <-0.383723, 2.460838, 1.734630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.387566, 2.322670, 1.538429>,  <-0.393970, 2.092390, 1.211428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.387566, 2.322670, 1.538429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159744, -0.805634, 0.570470,
		0.987029, -0.139726, 0.079065,
		0.016012, 0.575700, 0.817504,
		-0.382762, 2.495380, 1.783680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.131110, 1.669201, 0.796656>,  <-0.393970, 2.092390, 1.211428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.131110, 1.669201, 0.796656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393517, 1.507507, 0.541710>,  <0.550961, 1.410491, 0.388742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393517, 1.507507, 0.541710>,  <0.131110, 1.669201, 0.796656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.393517, 1.507507, 0.541710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749286, 0.450204, 0.485681,
		0.090615, -0.796185, 0.598230,
		0.656017, -0.404235, -0.637366,
		0.590322, 1.386237, 0.350500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704497, 1.152241, 1.080454>,  <0.131110, 1.669201, 0.796656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704497, 1.152241, 1.080454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819244, 1.356384, 0.756172>,  <0.888093, 1.478870, 0.561603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819244, 1.356384, 0.756172>,  <0.704497, 1.152241, 1.080454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819244, 1.356384, 0.756172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711862, 0.452749, 0.536909,
		0.641060, -0.731132, -0.233425,
		0.286869, 0.510357, -0.810705,
		0.905305, 1.509491, 0.512961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.449603, 1.115436, 0.974786>,  <0.704497, 1.152241, 1.080454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.449603, 1.115436, 0.974786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333961, 1.449905, 0.788353>,  <1.264576, 1.650587, 0.676493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333961, 1.449905, 0.788353>,  <1.449603, 1.115436, 0.974786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333961, 1.449905, 0.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823492, 0.465492, 0.324313,
		0.488139, -0.290054, -0.823158,
		-0.289105, 0.836174, -0.466082,
		1.247230, 1.700758, 0.648528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.013996, 1.377415, 0.560380>,  <1.449603, 1.115436, 0.974786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.013996, 1.377415, 0.560380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796669, 1.712753, 0.578186>,  <1.666273, 1.913957, 0.588870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796669, 1.712753, 0.578186>,  <2.013996, 1.377415, 0.560380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.796669, 1.712753, 0.578186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820846, 0.519356, 0.237657,
		0.176120, 0.165663, -0.970329,
		-0.543317, 0.838347, 0.044515,
		1.633674, 1.964257, 0.591540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.417923, 1.986640, 0.191897>,  <2.013996, 1.377415, 0.560380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.417923, 1.986640, 0.191897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167343, 2.152626, 0.455826>,  <2.016995, 2.252218, 0.614183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167343, 2.152626, 0.455826>,  <2.417923, 1.986640, 0.191897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.167343, 2.152626, 0.455826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654737, 0.739462, 0.156572,
		-0.422942, 0.530095, -0.734928,
		-0.626449, 0.414964, 0.659823,
		1.979408, 2.277115, 0.653773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.153864, 3.380214, 1.415193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.861855, 3.362747, 1.688004>,  <2.686649, 3.352267, 1.851690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.861855, 3.362747, 1.688004>,  <3.153864, 3.380214, 1.415193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.861855, 3.362747, 1.688004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629140, -0.346833, -0.695622,
		0.266925, -0.936910, 0.225723,
		-0.730023, -0.043667, 0.682026,
		2.642848, 3.349647, 1.892611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.891331, 2.700238, 1.474027>,  <3.153864, 3.380214, 1.415193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.891331, 2.700238, 1.474027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610249, 2.973618, 1.553123>,  <2.441599, 3.137645, 1.600581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610249, 2.973618, 1.553123>,  <2.891331, 2.700238, 1.474027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.610249, 2.973618, 1.553123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590106, -0.404602, -0.698621,
		-0.397444, -0.607634, 0.687618,
		-0.702718, 0.683431, 0.197762,
		2.399436, 3.178652, 1.612446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.222003, 2.425711, 1.758100>,  <2.891331, 2.700238, 1.474027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.222003, 2.425711, 1.758100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.163857, 2.748871, 1.529655>,  <2.128969, 2.942767, 1.392589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.163857, 2.748871, 1.529655>,  <2.222003, 2.425711, 1.758100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.163857, 2.748871, 1.529655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666056, -0.506755, -0.547328,
		-0.731600, 0.300830, 0.611771,
		-0.145365, 0.807899, -0.571112,
		2.120247, 2.991241, 1.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506054, 2.466418, 1.763015>,  <2.222003, 2.425711, 1.758100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506054, 2.466418, 1.763015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.678814, 2.635254, 1.444191>,  <1.782470, 2.736556, 1.252897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.678814, 2.635254, 1.444191>,  <1.506054, 2.466418, 1.763015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.678814, 2.635254, 1.444191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693419, -0.409715, -0.592709,
		-0.576743, 0.808687, 0.115729,
		0.431900, 0.422090, -0.797059,
		1.808384, 2.761881, 1.205073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.015589, 2.790380, 1.325427>,  <1.506054, 2.466418, 1.763015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.015589, 2.790380, 1.325427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326591, 2.659317, 1.110718>,  <1.513193, 2.580679, 0.981892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326591, 2.659317, 1.110718>,  <1.015589, 2.790380, 1.325427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.326591, 2.659317, 1.110718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626049, -0.484120, -0.611303,
		-0.059566, 0.811338, -0.581535,
		0.777505, -0.327657, -0.536774,
		1.559843, 2.561020, 0.949686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.888675, 2.990311, 0.618035>,  <1.015589, 2.790380, 1.325427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.888675, 2.990311, 0.618035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117542, 2.662292, 0.613159>,  <1.254863, 2.465482, 0.610234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117542, 2.662292, 0.613159>,  <0.888675, 2.990311, 0.618035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.117542, 2.662292, 0.613159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558451, -0.378676, -0.738063,
		0.600629, 0.429103, -0.674622,
		0.572169, -0.820045, -0.012189,
		1.289193, 2.416279, 0.609502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.917064, 2.736694, -0.091878>,  <0.888675, 2.990311, 0.618035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.917064, 2.736694, -0.091878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.005585, 2.428406, 0.147125>,  <1.058697, 2.243433, 0.290527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.005585, 2.428406, 0.147125>,  <0.917064, 2.736694, -0.091878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005585, 2.428406, 0.147125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560259, -0.601976, -0.568977,
		0.798208, -0.208844, -0.565021,
		0.221301, -0.770720, 0.597508,
		1.071975, 2.197190, 0.326378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.098278, 2.176410, -0.533354>,  <0.917064, 2.736694, -0.091878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.098278, 2.176410, -0.533354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045662, 1.970795, -0.194305>,  <1.014092, 1.847426, 0.009124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045662, 1.970795, -0.194305>,  <1.098278, 2.176410, -0.533354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.045662, 1.970795, -0.194305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461382, -0.725048, -0.511304,
		0.877396, -0.458334, -0.141795,
		-0.131539, -0.514038, 0.847622,
		1.006200, 1.816583, 0.059981>
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
