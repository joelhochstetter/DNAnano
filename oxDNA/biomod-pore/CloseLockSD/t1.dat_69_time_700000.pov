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
	<4.198825, 15.108774, 14.903187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.141922, 14.878300, 15.225124>,  <4.107780, 14.740015, 15.418286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.141922, 14.878300, 15.225124>,  <4.198825, 15.108774, 14.903187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.141922, 14.878300, 15.225124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064923, 0.816793, 0.573266,
		-0.987698, 0.029299, -0.153603,
		-0.142258, -0.576186, 0.804843,
		4.099244, 14.705444, 15.466578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573005, 15.337972, 15.251428>,  <4.198825, 15.108774, 14.903187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573005, 15.337972, 15.251428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.877296, 15.211330, 15.478075>,  <4.059870, 15.135345, 15.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.877296, 15.211330, 15.478075>,  <3.573005, 15.337972, 15.251428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.877296, 15.211330, 15.478075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015628, 0.881648, 0.471648,
		-0.648885, -0.349939, 0.675641,
		0.760726, -0.316604, 0.566619,
		4.105514, 15.116349, 15.648061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402270, 15.273597, 16.048458>,  <3.573005, 15.337972, 15.251428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402270, 15.273597, 16.048458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780667, 15.385296, 15.982583>,  <4.007705, 15.452315, 15.943058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780667, 15.385296, 15.982583>,  <3.402270, 15.273597, 16.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780667, 15.385296, 15.982583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163559, 0.849699, 0.501259,
		0.279909, -0.447250, 0.849481,
		0.945991, 0.279247, -0.164687,
		4.064464, 15.469070, 15.933177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.755672, 15.981437, 15.780585>,  <3.402270, 15.273597, 16.048458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.755672, 15.981437, 15.780585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150478, 15.999045, 15.718800>,  <4.387362, 16.009611, 15.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150478, 15.999045, 15.718800>,  <3.755672, 15.981437, 15.780585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.150478, 15.999045, 15.718800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073116, 0.733132, 0.676145,
		0.143006, -0.678660, 0.720395,
		0.987017, 0.044020, -0.154464,
		4.446584, 16.012251, 15.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.107006, 15.930796, 16.430496>,  <3.755672, 15.981437, 15.780585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.107006, 15.930796, 16.430496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332837, 16.138988, 16.174261>,  <4.468335, 16.263905, 16.020519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332837, 16.138988, 16.174261>,  <4.107006, 15.930796, 16.430496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.332837, 16.138988, 16.174261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099248, 0.727671, 0.678709,
		0.819393, -0.446759, 0.359168,
		0.564575, 0.520482, -0.640588,
		4.502210, 16.295134, 15.982085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.612401, 16.274841, 16.836075>,  <4.107006, 15.930796, 16.430496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.612401, 16.274841, 16.836075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608158, 16.488499, 16.497944>,  <4.605611, 16.616693, 16.295065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608158, 16.488499, 16.497944>,  <4.612401, 16.274841, 16.836075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608158, 16.488499, 16.497944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041135, 0.844893, 0.533351,
		0.999097, -0.029114, -0.030935,
		-0.010609, 0.534142, -0.845328,
		4.604975, 16.648741, 16.244345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.173840, 16.749510, 16.894011>,  <4.612401, 16.274841, 16.836075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.173840, 16.749510, 16.894011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.902226, 16.895807, 16.639406>,  <4.739257, 16.983585, 16.486645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.902226, 16.895807, 16.639406>,  <5.173840, 16.749510, 16.894011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.902226, 16.895807, 16.639406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072814, 0.896334, 0.437360,
		0.730486, 0.250635, -0.635274,
		-0.679035, 0.365742, -0.636509,
		4.698515, 17.005529, 16.448454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.467198, 17.400173, 16.782854>,  <5.173840, 16.749510, 16.894011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.467198, 17.400173, 16.782854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102893, 17.457470, 16.627937>,  <4.884310, 17.491848, 16.534988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102893, 17.457470, 16.627937>,  <5.467198, 17.400173, 16.782854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.102893, 17.457470, 16.627937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114230, 0.988703, 0.097050,
		0.396816, 0.044149, -0.916836,
		-0.910763, 0.143241, -0.387290,
		4.829664, 17.500443, 16.511751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.555478, 17.958990, 16.455160>,  <5.467198, 17.400173, 16.782854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.555478, 17.958990, 16.455160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165191, 17.953098, 16.542574>,  <4.931019, 17.949564, 16.595022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165191, 17.953098, 16.542574>,  <5.555478, 17.958990, 16.455160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.165191, 17.953098, 16.542574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016092, 0.990220, 0.138584,
		-0.218440, 0.138735, -0.965938,
		-0.975718, -0.014728, 0.218536,
		4.872476, 17.948679, 16.608135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.250980, 18.490067, 16.135351>,  <5.555478, 17.958990, 16.455160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.250980, 18.490067, 16.135351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940494, 18.432188, 16.380806>,  <4.754202, 18.397461, 16.528080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940494, 18.432188, 16.380806>,  <5.250980, 18.490067, 16.135351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.940494, 18.432188, 16.380806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058841, 0.985685, 0.157993,
		-0.627715, 0.086530, -0.773619,
		-0.776216, -0.144695, 0.613638,
		4.707629, 18.388779, 16.564898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710662, 18.922455, 15.942494>,  <5.250980, 18.490067, 16.135351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710662, 18.922455, 15.942494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656661, 18.838972, 16.329941>,  <4.624260, 18.788883, 16.562408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656661, 18.838972, 16.329941>,  <4.710662, 18.922455, 15.942494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.656661, 18.838972, 16.329941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168531, 0.968157, 0.185118,
		-0.976407, -0.138250, -0.165878,
		-0.135004, -0.208707, 0.968615,
		4.616160, 18.776360, 16.620525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.158458, 19.321695, 16.038963>,  <4.710662, 18.922455, 15.942494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.158458, 19.321695, 16.038963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319656, 19.239260, 16.395641>,  <4.416375, 19.189798, 16.609648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319656, 19.239260, 16.395641>,  <4.158458, 19.321695, 16.038963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319656, 19.239260, 16.395641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029169, 0.970930, 0.237582,
		-0.914737, -0.121754, 0.385269,
		0.402996, -0.206087, 0.891697,
		4.440555, 19.177433, 16.663151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.703619, 19.658031, 16.522141>,  <4.158458, 19.321695, 16.038963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.703619, 19.658031, 16.522141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.061543, 19.601089, 16.691399>,  <4.276297, 19.566925, 16.792953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.061543, 19.601089, 16.691399>,  <3.703619, 19.658031, 16.522141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.061543, 19.601089, 16.691399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031833, 0.925045, 0.378522,
		-0.445313, -0.352175, 0.823207,
		0.894809, -0.142356, 0.423145,
		4.329985, 19.558382, 16.818342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.628892, 20.027321, 17.159184>,  <3.703619, 19.658031, 16.522141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.628892, 20.027321, 17.159184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021320, 19.963230, 17.115679>,  <4.256777, 19.924776, 17.089575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021320, 19.963230, 17.115679>,  <3.628892, 20.027321, 17.159184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021320, 19.963230, 17.115679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182586, 0.952480, 0.243811,
		0.064531, -0.259054, 0.963705,
		0.981070, -0.160225, -0.108764,
		4.315641, 19.915163, 17.083050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.918723, 20.315371, 17.733177>,  <3.628892, 20.027321, 17.159184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.918723, 20.315371, 17.733177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226739, 20.302526, 17.478302>,  <4.411549, 20.294821, 17.325377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226739, 20.302526, 17.478302>,  <3.918723, 20.315371, 17.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.226739, 20.302526, 17.478302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172026, 0.972192, 0.158903,
		0.614365, -0.231975, 0.754151,
		0.770041, -0.032109, -0.637186,
		4.457752, 20.292894, 17.287146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.456635, 20.657038, 18.028231>,  <3.918723, 20.315371, 17.733177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.456635, 20.657038, 18.028231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.578234, 20.663227, 17.647211>,  <4.651193, 20.666941, 17.418600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.578234, 20.663227, 17.647211>,  <4.456635, 20.657038, 18.028231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.578234, 20.663227, 17.647211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280575, 0.954067, 0.105042,
		0.910419, -0.299194, 0.285691,
		0.303997, 0.015474, -0.952547,
		4.669433, 20.667870, 17.361446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.076060, 21.003319, 18.009212>,  <4.456635, 20.657038, 18.028231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.076060, 21.003319, 18.009212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.970699, 21.015097, 17.623518>,  <4.907482, 21.022163, 17.392101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.970699, 21.015097, 17.623518>,  <5.076060, 21.003319, 18.009212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.970699, 21.015097, 17.623518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239426, 0.970255, -0.035774,
		0.934502, -0.240286, -0.262619,
		-0.263403, 0.029447, -0.964236,
		4.891678, 21.023932, 17.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.696101, 21.330444, 17.571287>,  <5.076060, 21.003319, 18.009212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.696101, 21.330444, 17.571287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.369315, 21.369320, 17.343912>,  <5.173244, 21.392645, 17.207487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.369315, 21.369320, 17.343912>,  <5.696101, 21.330444, 17.571287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.369315, 21.369320, 17.343912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309650, 0.905479, -0.290216,
		0.486502, -0.413113, -0.769839,
		-0.816965, 0.097190, -0.568438,
		5.124226, 21.398478, 17.173380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.006455, 21.611309, 16.988569>,  <5.696101, 21.330444, 17.571287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.006455, 21.611309, 16.988569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613726, 21.685852, 16.974186>,  <5.378088, 21.730577, 16.965555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613726, 21.685852, 16.974186>,  <6.006455, 21.611309, 16.988569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.613726, 21.685852, 16.974186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179210, 0.847874, -0.498992,
		-0.062502, -0.496366, -0.865860,
		-0.981824, 0.186358, -0.035960,
		5.319179, 21.741760, 16.963398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.769584, 21.798044, 16.268152>,  <6.006455, 21.611309, 16.988569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.769584, 21.798044, 16.268152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.529911, 21.960344, 16.544224>,  <5.386106, 22.057724, 16.709867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.529911, 21.960344, 16.544224>,  <5.769584, 21.798044, 16.268152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.529911, 21.960344, 16.544224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134429, 0.900814, -0.412872,
		-0.789246, -0.154606, -0.594296,
		-0.599183, 0.405748, 0.690180,
		5.350156, 22.082069, 16.751278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164914, 22.292078, 15.872241>,  <5.769584, 21.798044, 16.268152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164914, 22.292078, 15.872241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.177951, 22.396259, 16.258215>,  <5.185773, 22.458769, 16.489799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.177951, 22.396259, 16.258215>,  <5.164914, 22.292078, 15.872241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.177951, 22.396259, 16.258215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166430, 0.953384, -0.251715,
		-0.985514, -0.152390, 0.074421,
		0.032593, 0.260455, 0.964936,
		5.187729, 22.474396, 16.547695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.773466, 22.747137, 15.806469>,  <5.164914, 22.292078, 15.872241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.773466, 22.747137, 15.806469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.946533, 22.810522, 16.161476>,  <5.050374, 22.848553, 16.374481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.946533, 22.810522, 16.161476>,  <4.773466, 22.747137, 15.806469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.946533, 22.810522, 16.161476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087251, 0.987171, -0.133722,
		-0.897321, -0.019579, 0.440944,
		0.432668, 0.158464, 0.887518,
		5.076334, 22.858061, 16.427731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.478326, 23.271059, 16.089092>,  <4.773466, 22.747137, 15.806469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.478326, 23.271059, 16.089092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.780903, 23.268764, 16.350706>,  <4.962450, 23.267387, 16.507675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.780903, 23.268764, 16.350706>,  <4.478326, 23.271059, 16.089092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.780903, 23.268764, 16.350706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109724, 0.986903, -0.118248,
		-0.644791, 0.161211, 0.747165,
		0.756443, -0.005736, 0.654035,
		5.007836, 23.267044, 16.546917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.311491, 23.858114, 16.421740>,  <4.478326, 23.271059, 16.089092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.311491, 23.858114, 16.421740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697365, 23.775707, 16.487391>,  <4.928889, 23.726263, 16.526781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697365, 23.775707, 16.487391>,  <4.311491, 23.858114, 16.421740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.697365, 23.775707, 16.487391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238217, 0.948269, -0.209855,
		-0.112403, 0.241542, 0.963858,
		0.964685, -0.206019, 0.164127,
		4.986771, 23.713902, 16.536629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.511746, 24.410492, 16.954758>,  <4.311491, 23.858114, 16.421740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.511746, 24.410492, 16.954758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799914, 24.292978, 16.703461>,  <4.972815, 24.222469, 16.552683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799914, 24.292978, 16.703461>,  <4.511746, 24.410492, 16.954758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799914, 24.292978, 16.703461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410946, 0.910526, 0.045453,
		0.558677, -0.290918, 0.776690,
		0.720419, -0.293784, -0.628241,
		5.016040, 24.204844, 16.514988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.217107, 24.483074, 17.199394>,  <4.511746, 24.410492, 16.954758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.217107, 24.483074, 17.199394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.236085, 24.509354, 16.800711>,  <5.247472, 24.525122, 16.561501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.236085, 24.509354, 16.800711>,  <5.217107, 24.483074, 17.199394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.236085, 24.509354, 16.800711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335038, 0.938984, 0.077841,
		0.941009, -0.337629, 0.022539,
		0.047445, 0.065698, -0.996711,
		5.250318, 24.529062, 16.501698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.843768, 24.624100, 17.112972>,  <5.217107, 24.483074, 17.199394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.843768, 24.624100, 17.112972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.579812, 24.777521, 16.854538>,  <5.421438, 24.869574, 16.699476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.579812, 24.777521, 16.854538>,  <5.843768, 24.624100, 17.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.579812, 24.777521, 16.854538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322205, 0.921268, 0.217827,
		0.678768, -0.064430, -0.731521,
		-0.659892, 0.383554, -0.646088,
		5.381844, 24.892588, 16.660711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.274770, 24.982668, 16.487471>,  <5.843768, 24.624100, 17.112972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.274770, 24.982668, 16.487471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.924127, 25.139187, 16.599503>,  <5.713741, 25.233099, 16.666721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.924127, 25.139187, 16.599503>,  <6.274770, 24.982668, 16.487471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.924127, 25.139187, 16.599503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424303, 0.903090, 0.066300,
		-0.226994, 0.176957, -0.957685,
		-0.876608, 0.391299, 0.280080,
		5.661144, 25.256577, 16.683527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.045232, 25.141203, 16.662512>,  <6.274770, 24.982668, 16.487471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.045232, 25.141203, 16.662512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218738, 25.400066, 16.913282>,  <7.322842, 25.555384, 17.063745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218738, 25.400066, 16.913282>,  <7.045232, 25.141203, 16.662512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.218738, 25.400066, 16.913282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501429, -0.751472, 0.428787,
		0.748610, 0.128366, -0.650466,
		0.433765, 0.647156, 0.626926,
		7.348868, 25.594213, 17.101360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.332999, 24.645153, 16.965559>,  <7.045232, 25.141203, 16.662512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.332999, 24.645153, 16.965559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462562, 24.980671, 17.140606>,  <7.540300, 25.181982, 17.245634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462562, 24.980671, 17.140606>,  <7.332999, 24.645153, 16.965559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.462562, 24.980671, 17.140606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783256, -0.497191, 0.373245,
		0.530655, 0.221869, -0.818034,
		0.323907, 0.838794, 0.437617,
		7.559734, 25.232309, 17.271891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.978230, 24.458515, 17.080664>,  <7.332999, 24.645153, 16.965559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.978230, 24.458515, 17.080664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.926158, 24.746140, 17.353724>,  <7.894916, 24.918715, 17.517559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.926158, 24.746140, 17.353724>,  <7.978230, 24.458515, 17.080664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.926158, 24.746140, 17.353724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704934, -0.417041, 0.573712,
		0.697224, 0.555906, -0.452600,
		-0.130177, 0.719059, 0.682648,
		7.887105, 24.961857, 17.558517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.673280, 24.670124, 17.267118>,  <7.978230, 24.458515, 17.080664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.673280, 24.670124, 17.267118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.427726, 24.779182, 17.563446>,  <8.280394, 24.844618, 17.741241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.427726, 24.779182, 17.563446>,  <8.673280, 24.670124, 17.267118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.427726, 24.779182, 17.563446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646898, -0.364082, 0.670050,
		0.452404, 0.890567, 0.047131,
		-0.613884, 0.272645, 0.740818,
		8.243561, 24.860975, 17.785692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.385944, 24.912403, 17.084061>,  <8.673280, 24.670124, 17.267118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.385944, 24.912403, 17.084061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583808, 24.789438, 17.409222>,  <9.702526, 24.715660, 17.604319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583808, 24.789438, 17.409222>,  <9.385944, 24.912403, 17.084061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583808, 24.789438, 17.409222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204337, -0.950270, -0.235019,
		0.844724, -0.049852, -0.532875,
		0.494658, -0.307413, 0.812903,
		9.732205, 24.697214, 17.653093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.077123, 24.498491, 16.926327>,  <9.385944, 24.912403, 17.084061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.077123, 24.498491, 16.926327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834486, 24.399212, 17.228437>,  <9.688904, 24.339643, 17.409704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834486, 24.399212, 17.228437>,  <10.077123, 24.498491, 16.926327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834486, 24.399212, 17.228437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030175, -0.942146, -0.333842,
		0.794441, -0.225296, 0.564007,
		-0.606591, -0.248199, 0.755278,
		9.652509, 24.324753, 17.455021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.191338, 23.789982, 17.064207>,  <10.077123, 24.498491, 16.926327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.191338, 23.789982, 17.064207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.824848, 23.857054, 17.209764>,  <9.604955, 23.897297, 17.297098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.824848, 23.857054, 17.209764>,  <10.191338, 23.789982, 17.064207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.824848, 23.857054, 17.209764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258458, -0.941336, -0.216994,
		0.306161, -0.292866, 0.905812,
		-0.916223, 0.167679, 0.363894,
		9.549981, 23.907358, 17.318933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.097575, 23.278027, 17.581312>,  <10.191338, 23.789982, 17.064207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.097575, 23.278027, 17.581312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766836, 23.387398, 17.384716>,  <9.568393, 23.453020, 17.266758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766836, 23.387398, 17.384716>,  <10.097575, 23.278027, 17.581312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766836, 23.387398, 17.384716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340240, -0.939009, 0.050000,
		-0.447841, 0.208566, 0.869448,
		-0.826847, 0.273429, -0.491489,
		9.518782, 23.469427, 17.237270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.581754, 22.846626, 17.870789>,  <10.097575, 23.278027, 17.581312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.581754, 22.846626, 17.870789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.466778, 22.976583, 17.510384>,  <9.397792, 23.054558, 17.294140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.466778, 22.976583, 17.510384>,  <9.581754, 22.846626, 17.870789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.466778, 22.976583, 17.510384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242165, -0.934800, -0.259819,
		-0.926679, 0.143512, 0.347375,
		-0.287439, 0.324891, -0.901013,
		9.380546, 23.074051, 17.240080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.001009, 22.516140, 17.828833>,  <9.581754, 22.846626, 17.870789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.001009, 22.516140, 17.828833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088862, 22.614208, 17.451124>,  <9.141575, 22.673050, 17.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088862, 22.614208, 17.451124>,  <9.001009, 22.516140, 17.828833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.088862, 22.614208, 17.451124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406221, -0.857026, -0.317003,
		-0.886987, 0.453208, -0.088638,
		0.219633, 0.245171, -0.944273,
		9.154753, 22.687759, 17.167843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.435808, 22.502739, 17.506674>,  <9.001009, 22.516140, 17.828833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.435808, 22.502739, 17.506674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.738187, 22.429752, 17.255198>,  <8.919614, 22.385960, 17.104313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.738187, 22.429752, 17.255198>,  <8.435808, 22.502739, 17.506674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.738187, 22.429752, 17.255198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529307, -0.735468, -0.422990,
		-0.385199, 0.652527, -0.652557,
		0.755947, -0.182468, -0.628689,
		8.964971, 22.375011, 17.066591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124538, 22.333000, 16.893993>,  <8.435808, 22.502739, 17.506674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124538, 22.333000, 16.893993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.494285, 22.191437, 16.837008>,  <8.716132, 22.106499, 16.802816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.494285, 22.191437, 16.837008>,  <8.124538, 22.333000, 16.893993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.494285, 22.191437, 16.837008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365169, -0.712668, -0.598962,
		0.110446, 0.605685, -0.788002,
		0.924366, -0.353907, -0.142466,
		8.771595, 22.085264, 16.794268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.109553, 22.162319, 16.118443>,  <8.124538, 22.333000, 16.893993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.109553, 22.162319, 16.118443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.386346, 21.941029, 16.303957>,  <8.552422, 21.808254, 16.415266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.386346, 21.941029, 16.303957>,  <8.109553, 22.162319, 16.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.386346, 21.941029, 16.303957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274684, -0.795892, -0.539542,
		0.667615, 0.245958, -0.702706,
		0.691982, -0.553228, 0.463788,
		8.593941, 21.775061, 16.443094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.549973, 21.865356, 15.647267>,  <8.109553, 22.162319, 16.118443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.549973, 21.865356, 15.647267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588748, 21.614309, 15.956252>,  <8.612013, 21.463680, 16.141644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588748, 21.614309, 15.956252>,  <8.549973, 21.865356, 15.647267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.588748, 21.614309, 15.956252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276448, -0.762557, -0.584879,
		0.956127, -0.156849, -0.247424,
		0.096937, -0.627618, 0.772462,
		8.617829, 21.426023, 16.187990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.685088, 21.310043, 15.290125>,  <8.549973, 21.865356, 15.647267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.685088, 21.310043, 15.290125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.603632, 21.147764, 15.646538>,  <8.554758, 21.050396, 15.860386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.603632, 21.147764, 15.646538>,  <8.685088, 21.310043, 15.290125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.603632, 21.147764, 15.646538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191597, -0.875992, -0.442637,
		0.960115, -0.260858, 0.100656,
		-0.203639, -0.405698, 0.891033,
		8.542540, 21.026054, 15.913848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.976104, 20.621532, 15.234461>,  <8.685088, 21.310043, 15.290125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.976104, 20.621532, 15.234461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.696288, 20.611948, 15.520138>,  <8.528399, 20.606197, 15.691544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.696288, 20.611948, 15.520138>,  <8.976104, 20.621532, 15.234461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.696288, 20.611948, 15.520138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358780, -0.852560, -0.380025,
		0.617998, -0.522080, 0.587801,
		-0.699539, -0.023963, 0.714192,
		8.486426, 20.604759, 15.734395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.954267, 19.924225, 15.469617>,  <8.976104, 20.621532, 15.234461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.954267, 19.924225, 15.469617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604903, 20.038830, 15.627131>,  <8.395285, 20.107594, 15.721639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604903, 20.038830, 15.627131>,  <8.954267, 19.924225, 15.469617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.604903, 20.038830, 15.627131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402042, -0.880529, -0.251060,
		0.274807, -0.377596, 0.884252,
		-0.873409, 0.286514, 0.393785,
		8.342880, 20.124784, 15.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.754600, 19.410162, 15.871448>,  <8.954267, 19.924225, 15.469617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.754600, 19.410162, 15.871448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.421555, 19.620308, 15.801305>,  <8.221727, 19.746395, 15.759219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.421555, 19.620308, 15.801305>,  <8.754600, 19.410162, 15.871448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.421555, 19.620308, 15.801305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504834, -0.850104, -0.149888,
		-0.227817, -0.036273, 0.973028,
		-0.832612, 0.525364, -0.175356,
		8.171771, 19.777918, 15.748698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.223414, 19.319397, 16.361538>,  <8.754600, 19.410162, 15.871448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.223414, 19.319397, 16.361538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009991, 19.450157, 16.049526>,  <7.881936, 19.528614, 15.862319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009991, 19.450157, 16.049526>,  <8.223414, 19.319397, 16.361538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.009991, 19.450157, 16.049526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577815, -0.814384, 0.053940,
		-0.617611, 0.479494, 0.623411,
		-0.533560, 0.326902, -0.780031,
		7.849923, 19.548227, 15.815516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.560225, 19.050348, 16.433563>,  <8.223414, 19.319397, 16.361538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.560225, 19.050348, 16.433563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.531485, 19.153694, 16.048214>,  <7.514241, 19.215702, 15.817005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.531485, 19.153694, 16.048214>,  <7.560225, 19.050348, 16.433563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.531485, 19.153694, 16.048214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554723, -0.813060, -0.176681,
		-0.828927, 0.521709, 0.201741,
		-0.071852, 0.258367, -0.963371,
		7.509930, 19.231205, 15.759203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.887241, 18.900686, 16.201405>,  <7.560225, 19.050348, 16.433563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.887241, 18.900686, 16.201405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.060806, 18.949512, 15.844346>,  <7.164945, 18.978807, 15.630111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.060806, 18.949512, 15.844346>,  <6.887241, 18.900686, 16.201405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.060806, 18.949512, 15.844346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436903, -0.837979, -0.326966,
		-0.787931, 0.531876, -0.310279,
		0.433913, 0.122064, -0.892648,
		7.190980, 18.986132, 15.576551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.424112, 18.762346, 15.725631>,  <6.887241, 18.900686, 16.201405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.424112, 18.762346, 15.725631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.770228, 18.678835, 15.543341>,  <6.977898, 18.628729, 15.433967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.770228, 18.678835, 15.543341>,  <6.424112, 18.762346, 15.725631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.770228, 18.678835, 15.543341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334411, -0.917683, -0.214539,
		-0.373420, 0.338038, -0.863880,
		0.865290, -0.208777, -0.455725,
		7.029816, 18.616201, 15.406623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.266787, 18.465313, 15.168827>,  <6.424112, 18.762346, 15.725631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.266787, 18.465313, 15.168827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.647075, 18.347914, 15.208804>,  <6.875248, 18.277473, 15.232790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.647075, 18.347914, 15.208804>,  <6.266787, 18.465313, 15.168827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.647075, 18.347914, 15.208804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239496, -0.899896, -0.364457,
		0.196905, 0.322561, -0.925842,
		0.950721, -0.293498, 0.099942,
		6.932292, 18.259865, 15.238787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.487263, 18.278425, 14.490703>,  <6.266787, 18.465313, 15.168827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.487263, 18.278425, 14.490703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.735139, 18.097008, 14.746915>,  <6.883865, 17.988157, 14.900642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.735139, 18.097008, 14.746915>,  <6.487263, 18.278425, 14.490703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.735139, 18.097008, 14.746915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190532, -0.878645, -0.437813,
		0.761367, 0.149268, -0.630904,
		0.619692, -0.453544, 0.640531,
		6.921047, 17.960945, 14.939075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.024590, 17.700441, 14.202964>,  <6.487263, 18.278425, 14.490703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.024590, 17.700441, 14.202964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018775, 17.589912, 14.587346>,  <7.015287, 17.523594, 14.817975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018775, 17.589912, 14.587346>,  <7.024590, 17.700441, 14.202964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.018775, 17.589912, 14.587346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238403, -0.932382, -0.271714,
		0.971057, -0.233044, -0.052324,
		-0.014535, -0.276324, 0.960955,
		7.014415, 17.507015, 14.875632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.340276, 17.018250, 14.286718>,  <7.024590, 17.700441, 14.202964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.340276, 17.018250, 14.286718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.115359, 17.050814, 14.615887>,  <6.980409, 17.070353, 14.813388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.115359, 17.050814, 14.615887>,  <7.340276, 17.018250, 14.286718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.115359, 17.050814, 14.615887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272308, -0.957869, -0.091302,
		0.780818, -0.275427, 0.560770,
		-0.562292, 0.081412, 0.822922,
		6.946672, 17.075237, 14.862763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.631042, 16.585720, 14.790392>,  <7.340276, 17.018250, 14.286718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.631042, 16.585720, 14.790392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244594, 16.643358, 14.876040>,  <7.012725, 16.677942, 14.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244594, 16.643358, 14.876040>,  <7.631042, 16.585720, 14.790392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.244594, 16.643358, 14.876040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171399, -0.978482, -0.114869,
		0.192962, -0.147677, 0.970029,
		-0.966120, 0.144097, 0.214121,
		6.954758, 16.686588, 14.940277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.441150, 15.985364, 15.209532>,  <7.631042, 16.585720, 14.790392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.441150, 15.985364, 15.209532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096233, 16.146416, 15.086671>,  <6.889283, 16.243048, 15.012955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096233, 16.146416, 15.086671>,  <7.441150, 15.985364, 15.209532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.096233, 16.146416, 15.086671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356430, -0.913387, -0.196679,
		-0.359737, -0.060117, 0.931115,
		-0.862292, 0.402630, -0.307151,
		6.837546, 16.267204, 14.994526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.735839, 15.323899, 14.805552>,  <7.441150, 15.985364, 15.209532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.735839, 15.323899, 14.805552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009581, 15.562846, 14.972794>,  <8.173825, 15.706215, 15.073138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009581, 15.562846, 14.972794>,  <7.735839, 15.323899, 14.805552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.009581, 15.562846, 14.972794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536273, 0.800874, -0.266480,
		-0.494035, -0.041851, 0.868434,
		0.684354, 0.597368, 0.418104,
		8.214887, 15.742057, 15.098225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.403603, 15.465962, 14.475303>,  <7.735839, 15.323899, 14.805552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.403603, 15.465962, 14.475303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.173531, 15.785778, 14.544474>,  <8.035487, 15.977668, 14.585977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.173531, 15.785778, 14.544474>,  <8.403603, 15.465962, 14.475303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.173531, 15.785778, 14.544474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556626, -0.537448, 0.633496,
		0.599445, 0.268119, 0.754174,
		-0.575181, 0.799539, 0.172928,
		8.000977, 16.025640, 14.596352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.974968, 15.872390, 14.527819>,  <8.403603, 15.465962, 14.475303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.974968, 15.872390, 14.527819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319843, 15.718443, 14.396056>,  <9.526769, 15.626075, 14.316998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319843, 15.718443, 14.396056>,  <8.974968, 15.872390, 14.527819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.319843, 15.718443, 14.396056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354202, -0.006894, 0.935144,
		-0.362176, -0.922946, 0.130376,
		0.862189, -0.384867, -0.329406,
		9.578500, 15.602983, 14.297235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.184043, 15.245345, 14.799267>,  <8.974968, 15.872390, 14.527819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.184043, 15.245345, 14.799267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.519752, 15.427849, 14.680979>,  <9.721177, 15.537351, 14.610006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.519752, 15.427849, 14.680979>,  <9.184043, 15.245345, 14.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.519752, 15.427849, 14.680979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385724, -0.116314, 0.915253,
		0.383196, -0.882212, -0.273609,
		0.839272, 0.456259, -0.295719,
		9.771533, 15.564727, 14.592263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.850407, 14.835006, 14.937396>,  <9.184043, 15.245345, 14.799267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.850407, 14.835006, 14.937396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959682, 15.219391, 14.954920>,  <10.025247, 15.450022, 14.965434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959682, 15.219391, 14.954920>,  <9.850407, 14.835006, 14.937396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959682, 15.219391, 14.954920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543862, -0.191854, 0.816949,
		0.793463, -0.199354, -0.575043,
		0.273186, 0.960963, 0.043808,
		10.041637, 15.507680, 14.968062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495174, 14.965583, 14.875933>,  <9.850407, 14.835006, 14.937396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495174, 14.965583, 14.875933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395970, 15.277229, 15.106227>,  <10.336448, 15.464217, 15.244403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395970, 15.277229, 15.106227>,  <10.495174, 14.965583, 14.875933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395970, 15.277229, 15.106227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753418, -0.218464, 0.620190,
		0.608977, 0.587582, -0.532817,
		-0.248011, 0.779115, 0.575735,
		10.321568, 15.510963, 15.278947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.058998, 15.533890, 15.033102>,  <10.495174, 14.965583, 14.875933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.058998, 15.533890, 15.033102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812732, 15.454083, 15.338034>,  <10.664971, 15.406199, 15.520993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812732, 15.454083, 15.338034>,  <11.058998, 15.533890, 15.033102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.812732, 15.454083, 15.338034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781849, -0.033962, 0.622542,
		-0.098317, 0.979306, 0.176901,
		-0.615667, -0.199516, 0.762330,
		10.628032, 15.394229, 15.566732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255625, 16.005720, 15.568274>,  <11.058998, 15.533890, 15.033102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255625, 16.005720, 15.568274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102011, 15.647035, 15.656298>,  <11.009843, 15.431824, 15.709112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102011, 15.647035, 15.656298>,  <11.255625, 16.005720, 15.568274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.102011, 15.647035, 15.656298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866698, -0.267918, 0.420779,
		-0.318360, 0.352319, 0.880067,
		-0.384034, -0.896712, 0.220060,
		10.986800, 15.378021, 15.722316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552149, 16.098175, 16.359343>,  <11.255625, 16.005720, 15.568274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552149, 16.098175, 16.359343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932606, 16.101702, 16.482794>,  <12.160880, 16.103817, 16.556864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932606, 16.101702, 16.482794>,  <11.552149, 16.098175, 16.359343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932606, 16.101702, 16.482794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282425, 0.428758, 0.858139,
		-0.124761, -0.903376, 0.410300,
		0.951142, 0.008816, 0.308628,
		12.217948, 16.104347, 16.575382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549074, 15.811973, 17.054811>,  <11.552149, 16.098175, 16.359343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549074, 15.811973, 17.054811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.921393, 15.957521, 17.068733>,  <12.144785, 16.044851, 17.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.921393, 15.957521, 17.068733>,  <11.549074, 15.811973, 17.054811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.921393, 15.957521, 17.068733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119078, 0.211820, 0.970027,
		0.345595, -0.907044, 0.240491,
		0.930798, 0.363874, 0.034805,
		12.200633, 16.066683, 17.079174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.818819, 15.625434, 17.755648>,  <11.549074, 15.811973, 17.054811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.818819, 15.625434, 17.755648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022077, 15.941170, 17.617817>,  <12.144031, 16.130611, 17.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022077, 15.941170, 17.617817>,  <11.818819, 15.625434, 17.755648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.022077, 15.941170, 17.617817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063326, 0.433237, 0.899053,
		0.858942, -0.435027, 0.270132,
		0.508143, 0.789340, -0.344577,
		12.174520, 16.177971, 17.514444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417492, 15.747579, 18.203543>,  <11.818819, 15.625434, 17.755648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417492, 15.747579, 18.203543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298181, 16.084442, 18.023853>,  <12.226594, 16.286560, 17.916040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298181, 16.084442, 18.023853>,  <12.417492, 15.747579, 18.203543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298181, 16.084442, 18.023853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155491, 0.421486, 0.893405,
		0.941729, 0.336333, 0.005228,
		-0.298278, 0.842158, -0.449222,
		12.208697, 16.337090, 17.889086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779441, 16.228575, 18.486826>,  <12.417492, 15.747579, 18.203543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779441, 16.228575, 18.486826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469239, 16.432175, 18.337421>,  <12.283118, 16.554335, 18.247780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469239, 16.432175, 18.337421>,  <12.779441, 16.228575, 18.486826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.469239, 16.432175, 18.337421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142501, 0.435224, 0.888973,
		0.615049, 0.742629, -0.264985,
		-0.775505, 0.509001, -0.373510,
		12.236588, 16.584875, 18.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920115, 16.848927, 18.749197>,  <12.779441, 16.228575, 18.486826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920115, 16.848927, 18.749197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540042, 16.838293, 18.624975>,  <12.311997, 16.831913, 18.550442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540042, 16.838293, 18.624975>,  <12.920115, 16.848927, 18.749197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540042, 16.838293, 18.624975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293727, 0.409716, 0.863630,
		0.104281, 0.911826, -0.397114,
		-0.950184, -0.026583, -0.310554,
		12.254987, 16.830318, 18.531809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675200, 17.418760, 19.026571>,  <12.920115, 16.848927, 18.749197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675200, 17.418760, 19.026571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.345037, 17.207937, 18.945669>,  <12.146938, 17.081444, 18.897127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.345037, 17.207937, 18.945669>,  <12.675200, 17.418760, 19.026571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.345037, 17.207937, 18.945669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336072, 0.170888, 0.926203,
		-0.453601, 0.832470, -0.318183,
		-0.825410, -0.527059, -0.202255,
		12.097414, 17.049820, 18.884993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144403, 17.883364, 19.159983>,  <12.675200, 17.418760, 19.026571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144403, 17.883364, 19.159983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980518, 17.519575, 19.188267>,  <11.882188, 17.301302, 19.205238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980518, 17.519575, 19.188267>,  <12.144403, 17.883364, 19.159983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.980518, 17.519575, 19.188267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264883, 0.192788, 0.944812,
		-0.872911, 0.368368, -0.319891,
		-0.409710, -0.909471, 0.070712,
		11.857605, 17.246735, 19.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550154, 17.954191, 19.468561>,  <12.144403, 17.883364, 19.159983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550154, 17.954191, 19.468561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629319, 17.564367, 19.510628>,  <11.676819, 17.330473, 19.535868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629319, 17.564367, 19.510628>,  <11.550154, 17.954191, 19.468561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629319, 17.564367, 19.510628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275064, 0.047761, 0.960239,
		-0.940835, -0.218973, -0.258614,
		0.197914, -0.974561, 0.105167,
		11.688693, 17.271999, 19.542177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121468, 17.868610, 19.969749>,  <11.550154, 17.954191, 19.468561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121468, 17.868610, 19.969749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344284, 17.536736, 19.955208>,  <11.477974, 17.337610, 19.946484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344284, 17.536736, 19.955208>,  <11.121468, 17.868610, 19.969749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.344284, 17.536736, 19.955208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164566, -0.153179, 0.974399,
		-0.814016, -0.536799, -0.221866,
		0.557041, -0.829689, -0.036352,
		11.511396, 17.287828, 19.944302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.711164, 17.237350, 20.225662>,  <11.121468, 17.868610, 19.969749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.711164, 17.237350, 20.225662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.100865, 17.167002, 20.282085>,  <11.334686, 17.124792, 20.315939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.100865, 17.167002, 20.282085>,  <10.711164, 17.237350, 20.225662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.100865, 17.167002, 20.282085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174129, -0.189588, 0.966300,
		-0.143194, -0.965986, -0.215330,
		0.974256, -0.175864, 0.141059,
		11.393142, 17.114241, 20.324402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.752212, 16.703827, 20.644987>,  <10.711164, 17.237350, 20.225662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.752212, 16.703827, 20.644987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124773, 16.839832, 20.696949>,  <11.348310, 16.921436, 20.728127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124773, 16.839832, 20.696949>,  <10.752212, 16.703827, 20.644987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124773, 16.839832, 20.696949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092645, -0.123680, 0.987988,
		0.351997, -0.932252, -0.083695,
		0.931405, 0.340015, 0.129904,
		11.404195, 16.941837, 20.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077177, 16.230820, 21.088308>,  <10.752212, 16.703827, 20.644987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077177, 16.230820, 21.088308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.282361, 16.569769, 21.143200>,  <11.405472, 16.773138, 21.176134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.282361, 16.569769, 21.143200>,  <11.077177, 16.230820, 21.088308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.282361, 16.569769, 21.143200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111599, -0.092676, 0.989422,
		0.851128, -0.522848, 0.047027,
		0.512959, 0.847373, 0.137229,
		11.436249, 16.823980, 21.184368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509452, 16.128658, 21.508474>,  <11.077177, 16.230820, 21.088308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509452, 16.128658, 21.508474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501143, 16.527359, 21.539610>,  <11.496159, 16.766579, 21.558290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501143, 16.527359, 21.539610>,  <11.509452, 16.128658, 21.508474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501143, 16.527359, 21.539610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209668, -0.080466, 0.974456,
		0.977552, 0.003921, 0.210658,
		-0.020772, 0.996750, 0.077838,
		11.494912, 16.826384, 21.562962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831577, 16.340446, 22.064297>,  <11.509452, 16.128658, 21.508474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831577, 16.340446, 22.064297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636683, 16.686373, 22.015800>,  <11.519747, 16.893929, 21.986704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636683, 16.686373, 22.015800>,  <11.831577, 16.340446, 22.064297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.636683, 16.686373, 22.015800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111081, 0.076329, 0.990876,
		0.866177, 0.496257, 0.058875,
		-0.487235, 0.864814, -0.121239,
		11.490513, 16.945816, 21.979429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099159, 16.760145, 22.542225>,  <11.831577, 16.340446, 22.064297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099159, 16.760145, 22.542225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752582, 16.944136, 22.464565>,  <11.544635, 17.054531, 22.417969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752582, 16.944136, 22.464565>,  <12.099159, 16.760145, 22.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752582, 16.944136, 22.464565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196104, 0.044076, 0.979592,
		0.459149, 0.886835, 0.052014,
		-0.866444, 0.459979, -0.194149,
		11.492648, 17.082129, 22.406321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040614, 17.440392, 22.965788>,  <12.099159, 16.760145, 22.542225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040614, 17.440392, 22.965788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.677360, 17.304518, 22.867889>,  <11.459407, 17.222994, 22.809151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.677360, 17.304518, 22.867889>,  <12.040614, 17.440392, 22.965788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677360, 17.304518, 22.867889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256907, -0.009462, 0.966390,
		-0.330584, 0.940492, -0.078675,
		-0.908137, -0.339685, -0.244747,
		11.404919, 17.202612, 22.794466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.603275, 17.755814, 23.373455>,  <12.040614, 17.440392, 22.965788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.603275, 17.755814, 23.373455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343710, 17.479036, 23.246883>,  <11.187971, 17.312969, 23.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343710, 17.479036, 23.246883>,  <11.603275, 17.755814, 23.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343710, 17.479036, 23.246883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328299, -0.120543, 0.936851,
		-0.686390, 0.711818, -0.148942,
		-0.648913, -0.691943, -0.316429,
		11.149036, 17.271454, 23.151955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024257, 18.020992, 23.513613>,  <11.603275, 17.755814, 23.373455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024257, 18.020992, 23.513613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.954303, 17.628731, 23.478439>,  <10.912331, 17.393373, 23.457335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.954303, 17.628731, 23.478439>,  <11.024257, 18.020992, 23.513613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.954303, 17.628731, 23.478439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381359, -0.014872, 0.924307,
		-0.907734, 0.195181, -0.371381,
		-0.174884, -0.980654, -0.087934,
		10.901837, 17.334534, 23.452059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345114, 17.965233, 23.717806>,  <11.024257, 18.020992, 23.513613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345114, 17.965233, 23.717806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512814, 17.604343, 23.758249>,  <10.613433, 17.387810, 23.782515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512814, 17.604343, 23.758249>,  <10.345114, 17.965233, 23.717806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512814, 17.604343, 23.758249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253265, -0.009281, 0.967353,
		-0.871830, -0.431169, -0.232392,
		0.419249, -0.902223, 0.101109,
		10.638588, 17.333675, 23.788582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.890123, 17.621986, 24.147535>,  <10.345114, 17.965233, 23.717806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.890123, 17.621986, 24.147535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.196779, 17.365993, 24.168259>,  <10.380773, 17.212397, 24.180693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.196779, 17.365993, 24.168259>,  <9.890123, 17.621986, 24.147535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.196779, 17.365993, 24.168259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245109, -0.217132, 0.944868,
		-0.593451, -0.737072, -0.323328,
		0.766640, -0.639984, 0.051806,
		10.426771, 17.173998, 24.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.650538, 17.087618, 24.543617>,  <9.890123, 17.621986, 24.147535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.650538, 17.087618, 24.543617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048910, 17.058372, 24.564709>,  <10.287933, 17.040825, 24.577364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048910, 17.058372, 24.564709>,  <9.650538, 17.087618, 24.543617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048910, 17.058372, 24.564709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072692, -0.305501, 0.949413,
		-0.053305, -0.949381, -0.309572,
		0.995929, -0.073111, 0.052727,
		10.347689, 17.036438, 24.580526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.772257, 16.554527, 24.958452>,  <9.650538, 17.087618, 24.543617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.772257, 16.554527, 24.958452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.120818, 16.749653, 24.979212>,  <10.329955, 16.866728, 24.991669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.120818, 16.749653, 24.979212>,  <9.772257, 16.554527, 24.958452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.120818, 16.749653, 24.979212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027453, -0.154121, 0.987670,
		0.489801, -0.859233, -0.147694,
		0.871402, 0.487816, 0.051900,
		10.382238, 16.895998, 24.994781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.193026, 16.128456, 25.332401>,  <9.772257, 16.554527, 24.958452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.193026, 16.128456, 25.332401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298759, 16.510576, 25.385353>,  <10.362200, 16.739849, 25.417124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298759, 16.510576, 25.385353>,  <10.193026, 16.128456, 25.332401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298759, 16.510576, 25.385353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094616, -0.110914, 0.989316,
		0.959779, -0.274035, 0.061069,
		0.264334, 0.955302, 0.132381,
		10.378059, 16.797167, 25.425068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331347, 16.118000, 26.053293>,  <10.193026, 16.128456, 25.332401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331347, 16.118000, 26.053293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323077, 16.508780, 25.968307>,  <10.318116, 16.743248, 25.917316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323077, 16.508780, 25.968307>,  <10.331347, 16.118000, 26.053293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.323077, 16.508780, 25.968307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023762, 0.212931, 0.976778,
		0.999504, 0.015144, -0.027616,
		-0.020672, 0.976950, -0.212466,
		10.316875, 16.801865, 25.904568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842560, 16.387230, 26.412870>,  <10.331347, 16.118000, 26.053293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842560, 16.387230, 26.412870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.588289, 16.684465, 26.329216>,  <10.435727, 16.862806, 26.279024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.588289, 16.684465, 26.329216>,  <10.842560, 16.387230, 26.412870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.588289, 16.684465, 26.329216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045135, 0.234677, 0.971025,
		0.770636, 0.626696, -0.115639,
		-0.635675, 0.743087, -0.209137,
		10.397587, 16.907393, 26.266476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.167487, 16.944048, 26.833027>,  <10.842560, 16.387230, 26.412870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.167487, 16.944048, 26.833027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.781248, 17.031406, 26.776567>,  <10.549504, 17.083822, 26.742691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.781248, 17.031406, 26.776567>,  <11.167487, 16.944048, 26.833027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.781248, 17.031406, 26.776567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041252, 0.407283, 0.912370,
		0.256746, 0.886805, -0.384262,
		-0.965598, 0.218396, -0.141151,
		10.491569, 17.096926, 26.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.118709, 17.614260, 27.084787>,  <11.167487, 16.944048, 26.833027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.118709, 17.614260, 27.084787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754045, 17.450783, 27.067591>,  <10.535248, 17.352695, 27.057274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754045, 17.450783, 27.067591>,  <11.118709, 17.614260, 27.084787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754045, 17.450783, 27.067591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259009, 0.490220, 0.832225,
		-0.319051, 0.769839, -0.552769,
		-0.911658, -0.408694, -0.042990,
		10.480548, 17.328175, 27.054693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.735036, 18.159641, 27.458555>,  <11.118709, 17.614260, 27.084787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.735036, 18.159641, 27.458555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.523125, 17.821203, 27.435019>,  <10.395978, 17.618141, 27.420897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.523125, 17.821203, 27.435019>,  <10.735036, 18.159641, 27.458555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.523125, 17.821203, 27.435019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385998, 0.178752, 0.905016,
		-0.755209, 0.502170, -0.421289,
		-0.529778, -0.846093, -0.058842,
		10.364191, 17.567375, 27.417366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.057416, 18.250330, 27.894611>,  <10.735036, 18.159641, 27.458555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.057416, 18.250330, 27.894611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.131859, 17.858494, 27.864235>,  <10.176524, 17.623392, 27.846008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.131859, 17.858494, 27.864235>,  <10.057416, 18.250330, 27.894611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.131859, 17.858494, 27.864235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365713, -0.140804, 0.920015,
		-0.911931, -0.143447, -0.384454,
		0.186106, -0.979590, -0.075943,
		10.187691, 17.564617, 27.841452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.598594, 17.944532, 28.366354>,  <10.057416, 18.250330, 27.894611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.598594, 17.944532, 28.366354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834500, 17.633015, 28.280884>,  <9.976044, 17.446104, 28.229603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834500, 17.633015, 28.280884>,  <9.598594, 17.944532, 28.366354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834500, 17.633015, 28.280884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108404, -0.338537, 0.934688,
		-0.800266, -0.528084, -0.284082,
		0.589765, -0.778794, -0.213673,
		10.011430, 17.399376, 28.216782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.216029, 17.453259, 28.695847>,  <9.598594, 17.944532, 28.366354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.216029, 17.453259, 28.695847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.600582, 17.346691, 28.668234>,  <9.831314, 17.282751, 28.651667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.600582, 17.346691, 28.668234>,  <9.216029, 17.453259, 28.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.600582, 17.346691, 28.668234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031260, -0.143492, 0.989158,
		-0.273436, -0.953116, -0.129623,
		0.961382, -0.266419, -0.069031,
		9.888997, 17.266766, 28.647524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249972, 16.863140, 29.066572>,  <9.216029, 17.453259, 28.695847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249972, 16.863140, 29.066572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.616383, 17.021055, 29.038170>,  <9.836228, 17.115805, 29.021128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.616383, 17.021055, 29.038170>,  <9.249972, 16.863140, 29.066572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.616383, 17.021055, 29.038170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117796, -0.095542, 0.988431,
		0.383436, -0.913791, -0.134023,
		0.916024, 0.394788, -0.071006,
		9.891190, 17.139492, 29.016869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.566742, 16.490591, 29.483999>,  <9.249972, 16.863140, 29.066572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.566742, 16.490591, 29.483999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.803199, 16.810764, 29.444283>,  <9.945073, 17.002869, 29.420452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.803199, 16.810764, 29.444283>,  <9.566742, 16.490591, 29.483999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.803199, 16.810764, 29.444283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016717, 0.110916, 0.993689,
		0.806394, -0.589072, 0.052186,
		0.591143, 0.800432, -0.099290,
		9.980541, 17.050894, 29.414495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.133284, 16.305658, 29.868231>,  <9.566742, 16.490591, 29.483999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.133284, 16.305658, 29.868231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.120161, 16.705029, 29.850040>,  <10.112288, 16.944651, 29.839127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.120161, 16.705029, 29.850040>,  <10.133284, 16.305658, 29.868231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.120161, 16.705029, 29.850040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211846, 0.051414, 0.975950,
		0.976752, 0.022385, -0.213200,
		-0.032808, 0.998427, -0.045476,
		10.110319, 17.004557, 29.836397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733178, 16.498983, 30.266670>,  <10.133284, 16.305658, 29.868231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733178, 16.498983, 30.266670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.464869, 16.795610, 30.271395>,  <10.303883, 16.973587, 30.274229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.464869, 16.795610, 30.271395>,  <10.733178, 16.498983, 30.266670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.464869, 16.795610, 30.271395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190149, 0.156557, 0.969192,
		0.716871, 0.652356, -0.246022,
		-0.670775, 0.741567, 0.011814,
		10.263636, 17.018080, 30.274939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.036910, 17.027615, 30.659206>,  <10.733178, 16.498983, 30.266670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.036910, 17.027615, 30.659206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646735, 17.115423, 30.651920>,  <10.412630, 17.168108, 30.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646735, 17.115423, 30.651920>,  <11.036910, 17.027615, 30.659206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646735, 17.115423, 30.651920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004797, 0.061513, 0.998095,
		0.220224, 0.973666, -0.058949,
		-0.975437, 0.219522, -0.018217,
		10.354104, 17.181280, 30.646456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.910921, 17.387211, 31.326954>,  <11.036910, 17.027615, 30.659206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.910921, 17.387211, 31.326954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549186, 17.280159, 31.193960>,  <10.332145, 17.215927, 31.114164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549186, 17.280159, 31.193960>,  <10.910921, 17.387211, 31.326954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.549186, 17.280159, 31.193960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307513, -0.131653, 0.942392,
		-0.295986, 0.954485, 0.036758,
		-0.904338, -0.267631, -0.332484,
		10.277884, 17.199869, 31.094215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390404, 17.725739, 31.758913>,  <10.910921, 17.387211, 31.326954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390404, 17.725739, 31.758913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215174, 17.398905, 31.608997>,  <10.110036, 17.202805, 31.519047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215174, 17.398905, 31.608997>,  <10.390404, 17.725739, 31.758913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215174, 17.398905, 31.608997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159309, -0.339760, 0.926921,
		-0.884710, 0.465768, 0.018672,
		-0.438074, -0.817082, -0.374790,
		10.083752, 17.153780, 31.496561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790562, 17.666842, 32.173920>,  <10.390404, 17.725739, 31.758913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790562, 17.666842, 32.173920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.854495, 17.302071, 32.022739>,  <9.892855, 17.083208, 31.932032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.854495, 17.302071, 32.022739>,  <9.790562, 17.666842, 32.173920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.854495, 17.302071, 32.022739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271317, -0.408708, 0.871404,
		-0.949126, -0.036735, -0.312746,
		0.159833, -0.911926, -0.377948,
		9.902445, 17.028492, 31.909355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.117496, 17.242428, 32.275833>,  <9.790562, 17.666842, 32.173920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.117496, 17.242428, 32.275833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.449986, 17.024431, 32.319752>,  <9.649479, 16.893633, 32.346104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.449986, 17.024431, 32.319752>,  <9.117496, 17.242428, 32.275833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.449986, 17.024431, 32.319752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487498, -0.619595, 0.615181,
		-0.267239, -0.564877, -0.780703,
		0.831222, -0.544991, 0.109796,
		9.699352, 16.860933, 32.352692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.107007, 16.453140, 32.029369>,  <9.117496, 17.242428, 32.275833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.107007, 16.453140, 32.029369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353200, 16.505720, 32.340214>,  <9.500916, 16.537268, 32.526722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353200, 16.505720, 32.340214>,  <9.107007, 16.453140, 32.029369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353200, 16.505720, 32.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445365, -0.755475, 0.480528,
		0.650254, -0.641855, -0.406438,
		0.615484, 0.131452, 0.777111,
		9.537845, 16.545156, 32.573345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469350, 15.863998, 32.145412>,  <9.107007, 16.453140, 32.029369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469350, 15.863998, 32.145412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.432761, 16.073778, 32.484016>,  <9.410809, 16.199646, 32.687180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.432761, 16.073778, 32.484016>,  <9.469350, 15.863998, 32.145412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.432761, 16.073778, 32.484016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378932, -0.804458, 0.457447,
		0.920893, -0.278929, 0.272315,
		-0.091471, 0.524449, 0.846514,
		9.405320, 16.231113, 32.737972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.728786, 15.430272, 32.699425>,  <9.469350, 15.863998, 32.145412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.728786, 15.430272, 32.699425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.464111, 15.707947, 32.812756>,  <9.305306, 15.874552, 32.880756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.464111, 15.707947, 32.812756>,  <9.728786, 15.430272, 32.699425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.464111, 15.707947, 32.812756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578557, -0.713082, 0.395962,
		0.476909, 0.098081, 0.873463,
		-0.661687, 0.694186, 0.283330,
		9.265605, 15.916203, 32.897755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.618170, 15.342069, 33.437321>,  <9.728786, 15.430272, 32.699425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.618170, 15.342069, 33.437321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294417, 15.494703, 33.258751>,  <9.100165, 15.586285, 33.151611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294417, 15.494703, 33.258751>,  <9.618170, 15.342069, 33.437321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294417, 15.494703, 33.258751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576342, -0.662142, 0.478956,
		-0.112830, 0.644949, 0.755851,
		-0.809382, 0.381588, -0.446421,
		9.051602, 15.609179, 33.124825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.118585, 15.398956, 34.033772>,  <9.618170, 15.342069, 33.437321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.118585, 15.398956, 34.033772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495516, 15.351586, 34.158985>,  <10.721675, 15.323164, 34.234116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495516, 15.351586, 34.158985>,  <10.118585, 15.398956, 34.033772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.495516, 15.351586, 34.158985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332890, 0.234811, -0.913262,
		0.034649, 0.964800, 0.260692,
		0.942329, -0.118425, 0.313037,
		10.778214, 15.316059, 34.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556683, 16.007938, 34.006695>,  <10.118585, 15.398956, 34.033772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556683, 16.007938, 34.006695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.738273, 15.657432, 33.942123>,  <10.847226, 15.447127, 33.903381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.738273, 15.657432, 33.942123>,  <10.556683, 16.007938, 34.006695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.738273, 15.657432, 33.942123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302171, 0.321851, -0.897276,
		0.838212, 0.358560, 0.410895,
		0.453974, -0.876268, -0.161433,
		10.874465, 15.394551, 33.893692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.224729, 16.123775, 33.872269>,  <10.556683, 16.007938, 34.006695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.224729, 16.123775, 33.872269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109103, 15.776459, 33.711018>,  <11.039728, 15.568069, 33.614265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109103, 15.776459, 33.711018>,  <11.224729, 16.123775, 33.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109103, 15.776459, 33.711018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356496, 0.293183, -0.887104,
		0.888455, -0.400144, 0.224794,
		-0.289064, -0.868290, -0.403130,
		11.022384, 15.515971, 33.590080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782482, 15.755036, 33.526821>,  <11.224729, 16.123775, 33.872269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782482, 15.755036, 33.526821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434733, 15.668826, 33.348949>,  <11.226085, 15.617100, 33.242226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434733, 15.668826, 33.348949>,  <11.782482, 15.755036, 33.526821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.434733, 15.668826, 33.348949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391561, 0.248503, -0.885960,
		0.301448, -0.944350, -0.131652,
		-0.869373, -0.215522, -0.444682,
		11.173922, 15.604168, 33.215546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045586, 15.097430, 33.738174>,  <11.782482, 15.755036, 33.526821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045586, 15.097430, 33.738174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154769, 14.730544, 33.854248>,  <12.220279, 14.510412, 33.923893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154769, 14.730544, 33.854248>,  <12.045586, 15.097430, 33.738174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154769, 14.730544, 33.854248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958108, 0.231988, -0.167960,
		0.086736, 0.323877, 0.942115,
		0.272958, -0.917216, 0.290187,
		12.236656, 14.455379, 33.941303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282598, 14.758417, 33.061779>,  <12.045586, 15.097430, 33.738174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282598, 14.758417, 33.061779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913344, 14.639375, 32.964409>,  <11.691792, 14.567949, 32.905987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913344, 14.639375, 32.964409>,  <12.282598, 14.758417, 33.061779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913344, 14.639375, 32.964409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246351, 0.028266, -0.968768,
		0.295192, -0.954270, 0.047222,
		-0.923132, -0.297606, -0.243429,
		11.636405, 14.550093, 32.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304619, 14.082819, 32.771099>,  <12.282598, 14.758417, 33.061779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304619, 14.082819, 32.771099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006859, 14.318279, 32.645016>,  <11.828203, 14.459556, 32.569366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006859, 14.318279, 32.645016>,  <12.304619, 14.082819, 32.771099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006859, 14.318279, 32.645016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228431, -0.219082, -0.948590,
		-0.627446, -0.778134, 0.028619,
		-0.744400, 0.588651, -0.315212,
		11.783539, 14.494875, 32.550453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.029799, 13.776944, 32.150536>,  <12.304619, 14.082819, 32.771099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.029799, 13.776944, 32.150536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915921, 14.159781, 32.128925>,  <11.847594, 14.389484, 32.115959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915921, 14.159781, 32.128925>,  <12.029799, 13.776944, 32.150536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.915921, 14.159781, 32.128925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137191, -0.015101, -0.990430,
		-0.948750, -0.289384, -0.127005,
		-0.284696, 0.957094, -0.054028,
		11.830512, 14.446910, 32.112717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429927, 13.797510, 31.743423>,  <12.029799, 13.776944, 32.150536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429927, 13.797510, 31.743423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630327, 14.143048, 31.722364>,  <11.750567, 14.350371, 31.709728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630327, 14.143048, 31.722364>,  <11.429927, 13.797510, 31.743423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630327, 14.143048, 31.722364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009245, -0.055488, -0.998416,
		-0.865398, 0.500694, -0.019813,
		0.501000, 0.863844, -0.052648,
		11.780627, 14.402202, 31.706570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.291821, 14.087698, 31.085121>,  <11.429927, 13.797510, 31.743423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.291821, 14.087698, 31.085121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606399, 14.305554, 31.201653>,  <11.795145, 14.436268, 31.271570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606399, 14.305554, 31.201653>,  <11.291821, 14.087698, 31.085121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606399, 14.305554, 31.201653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305476, 0.066971, -0.949842,
		-0.536833, 0.835991, -0.113706,
		0.786445, 0.544641, 0.291327,
		11.842332, 14.468946, 31.289051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319841, 14.732889, 30.646196>,  <11.291821, 14.087698, 31.085121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319841, 14.732889, 30.646196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678584, 14.659357, 30.807121>,  <11.893829, 14.615238, 30.903675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678584, 14.659357, 30.807121>,  <11.319841, 14.732889, 30.646196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.678584, 14.659357, 30.807121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401711, -0.042183, -0.914794,
		0.185137, 0.982053, 0.036014,
		0.896857, -0.183830, 0.402311,
		11.947641, 14.604208, 30.927814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.696162, 15.061477, 30.156595>,  <11.319841, 14.732889, 30.646196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.696162, 15.061477, 30.156595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.956457, 14.824546, 30.346622>,  <12.112634, 14.682387, 30.460638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.956457, 14.824546, 30.346622>,  <11.696162, 15.061477, 30.156595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.956457, 14.824546, 30.346622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518160, -0.110920, -0.848061,
		0.555024, 0.798026, 0.234741,
		0.650737, -0.592327, 0.475068,
		12.151678, 14.646848, 30.489143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453150, 15.303841, 29.983406>,  <11.696162, 15.061477, 30.156595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453150, 15.303841, 29.983406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.488873, 14.920167, 30.090729>,  <12.510308, 14.689962, 30.155123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.488873, 14.920167, 30.090729>,  <12.453150, 15.303841, 29.983406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488873, 14.920167, 30.090729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416677, -0.208694, -0.884775,
		0.904657, 0.190816, 0.381032,
		0.089310, -0.959185, 0.268305,
		12.515666, 14.632411, 30.171221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208696, 15.065847, 29.762247>,  <12.453150, 15.303841, 29.983406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208696, 15.065847, 29.762247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.987176, 14.738348, 29.822853>,  <12.854263, 14.541848, 29.859217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.987176, 14.738348, 29.822853>,  <13.208696, 15.065847, 29.762247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.987176, 14.738348, 29.822853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381065, -0.411009, -0.828168,
		0.740334, -0.400904, 0.539613,
		-0.553801, -0.818748, 0.151513,
		12.821035, 14.492723, 29.868307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612460, 14.387619, 29.883930>,  <13.208696, 15.065847, 29.762247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612460, 14.387619, 29.883930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244449, 14.274542, 29.775391>,  <13.023642, 14.206696, 29.710266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244449, 14.274542, 29.775391>,  <13.612460, 14.387619, 29.883930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244449, 14.274542, 29.775391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372365, -0.415093, -0.830086,
		0.122024, -0.864744, 0.487162,
		-0.920029, -0.282692, -0.271349,
		12.968440, 14.189734, 29.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.792548, 13.774842, 29.701944>,  <13.612460, 14.387619, 29.883930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.792548, 13.774842, 29.701944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422594, 13.794987, 29.551186>,  <13.200622, 13.807074, 29.460732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422594, 13.794987, 29.551186>,  <13.792548, 13.774842, 29.701944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422594, 13.794987, 29.551186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330890, -0.381755, -0.863003,
		-0.187342, -0.922891, 0.336416,
		-0.924886, 0.050360, -0.376894,
		13.145128, 13.810095, 29.438118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534991, 13.135670, 29.446556>,  <13.792548, 13.774842, 29.701944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534991, 13.135670, 29.446556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322161, 13.396837, 29.230928>,  <13.194463, 13.553537, 29.101553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322161, 13.396837, 29.230928>,  <13.534991, 13.135670, 29.446556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322161, 13.396837, 29.230928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302548, -0.448026, -0.841272,
		-0.790798, -0.610713, 0.040844,
		-0.532075, 0.652918, -0.539067,
		13.162538, 13.592712, 29.069208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385950, 12.801332, 28.819431>,  <13.534991, 13.135670, 29.446556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385950, 12.801332, 28.819431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281007, 13.175019, 28.722763>,  <13.218040, 13.399232, 28.664762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281007, 13.175019, 28.722763>,  <13.385950, 12.801332, 28.819431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281007, 13.175019, 28.722763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302116, -0.158331, -0.940030,
		-0.916457, -0.319638, -0.240703,
		-0.262359, 0.934218, -0.241672,
		13.202299, 13.455284, 28.650261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847983, 12.733378, 28.278677>,  <13.385950, 12.801332, 28.819431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847983, 12.733378, 28.278677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018630, 13.094954, 28.266708>,  <13.121017, 13.311898, 28.259527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018630, 13.094954, 28.266708>,  <12.847983, 12.733378, 28.278677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018630, 13.094954, 28.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111398, -0.085349, -0.990104,
		-0.897546, 0.419061, -0.137108,
		0.426616, 0.903938, -0.029922,
		13.146615, 13.366135, 28.257732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.513926, 13.056610, 27.742592>,  <12.847983, 12.733378, 28.278677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.513926, 13.056610, 27.742592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855013, 13.263063, 27.774786>,  <13.059666, 13.386935, 27.794102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855013, 13.263063, 27.774786>,  <12.513926, 13.056610, 27.742592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855013, 13.263063, 27.774786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080548, 0.022316, -0.996501,
		-0.516123, 0.856218, -0.022544,
		0.852719, 0.516133, 0.080485,
		13.110828, 13.417903, 27.798931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546360, 13.485370, 27.162020>,  <12.513926, 13.056610, 27.742592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546360, 13.485370, 27.162020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921890, 13.493707, 27.299524>,  <13.147208, 13.498709, 27.382027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921890, 13.493707, 27.299524>,  <12.546360, 13.485370, 27.162020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921890, 13.493707, 27.299524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343868, -0.001749, -0.939016,
		-0.018971, 0.999781, -0.008809,
		0.938826, 0.020844, 0.343760,
		13.203538, 13.499960, 27.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848304, 14.064333, 26.840605>,  <12.546360, 13.485370, 27.162020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848304, 14.064333, 26.840605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148923, 13.824302, 26.950211>,  <13.329294, 13.680283, 27.015974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148923, 13.824302, 26.950211>,  <12.848304, 14.064333, 26.840605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148923, 13.824302, 26.950211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366915, 0.035050, -0.929594,
		0.548225, 0.799173, 0.246519,
		0.751547, -0.600079, 0.274013,
		13.374387, 13.644279, 27.032415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409409, 14.449368, 26.673304>,  <12.848304, 14.064333, 26.840605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409409, 14.449368, 26.673304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.522661, 14.066127, 26.690636>,  <13.590612, 13.836183, 26.701035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.522661, 14.066127, 26.690636>,  <13.409409, 14.449368, 26.673304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.522661, 14.066127, 26.690636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028885, -0.053679, -0.998140,
		0.958646, 0.281353, -0.042873,
		0.283132, -0.958102, 0.043332,
		13.607600, 13.778696, 26.703636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110894, 14.349694, 26.258736>,  <13.409409, 14.449368, 26.673304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110894, 14.349694, 26.258736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931473, 13.995193, 26.304955>,  <13.823820, 13.782492, 26.332685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931473, 13.995193, 26.304955>,  <14.110894, 14.349694, 26.258736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931473, 13.995193, 26.304955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044241, -0.107107, -0.993263,
		0.892660, -0.450643, 0.008834,
		-0.448553, -0.886255, 0.115547,
		13.796906, 13.729316, 26.339619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331884, 14.001749, 25.783503>,  <14.110894, 14.349694, 26.258736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331884, 14.001749, 25.783503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004326, 13.785594, 25.860847>,  <13.807791, 13.655901, 25.907255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004326, 13.785594, 25.860847>,  <14.331884, 14.001749, 25.783503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004326, 13.785594, 25.860847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166696, -0.098445, -0.981081,
		0.549199, -0.835638, -0.009464,
		-0.818897, -0.540387, 0.193364,
		13.758657, 13.623478, 25.918856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296379, 13.580669, 25.260664>,  <14.331884, 14.001749, 25.783503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296379, 13.580669, 25.260664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926478, 13.496652, 25.387608>,  <13.704538, 13.446241, 25.463774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926478, 13.496652, 25.387608>,  <14.296379, 13.580669, 25.260664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926478, 13.496652, 25.387608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272838, -0.215455, -0.937624,
		0.265319, -0.953656, 0.141934,
		-0.924751, -0.210045, 0.317358,
		13.649053, 13.433639, 25.482815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101662, 12.981318, 25.001024>,  <14.296379, 13.580669, 25.260664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101662, 12.981318, 25.001024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.755536, 13.168380, 25.073172>,  <13.547861, 13.280617, 25.116459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.755536, 13.168380, 25.073172>,  <14.101662, 12.981318, 25.001024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.755536, 13.168380, 25.073172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301226, -0.197578, -0.932859,
		-0.400619, -0.861546, 0.311836,
		-0.865314, 0.467655, 0.180367,
		13.495942, 13.308676, 25.127281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708932, 12.545726, 24.624294>,  <14.101662, 12.981318, 25.001024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708932, 12.545726, 24.624294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485154, 12.874592, 24.666372>,  <13.350887, 13.071911, 24.691620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485154, 12.874592, 24.666372>,  <13.708932, 12.545726, 24.624294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485154, 12.874592, 24.666372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370422, -0.134458, -0.919080,
		-0.741491, -0.553142, 0.379770,
		-0.559445, 0.822165, 0.105197,
		13.317321, 13.121242, 24.697931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117705, 12.396869, 24.233816>,  <13.708932, 12.545726, 24.624294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117705, 12.396869, 24.233816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124533, 12.796382, 24.252321>,  <13.128629, 13.036090, 24.263424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124533, 12.796382, 24.252321>,  <13.117705, 12.396869, 24.233816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124533, 12.796382, 24.252321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436847, 0.049067, -0.898197,
		-0.899374, -0.004879, 0.437153,
		0.017067, 0.998783, 0.046261,
		13.129653, 13.096017, 24.266199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.508050, 12.573022, 24.030069>,  <13.117705, 12.396869, 24.233816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.508050, 12.573022, 24.030069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.707327, 12.915459, 23.975063>,  <12.826893, 13.120920, 23.942059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.707327, 12.915459, 23.975063>,  <12.508050, 12.573022, 24.030069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.707327, 12.915459, 23.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463381, 0.128825, -0.876745,
		-0.732859, 0.500511, 0.460876,
		0.498193, 0.856092, -0.137517,
		12.856785, 13.172286, 23.933807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018411, 13.068361, 23.875547>,  <12.508050, 12.573022, 24.030069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018411, 13.068361, 23.875547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366009, 13.202450, 23.729959>,  <12.574568, 13.282903, 23.642607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366009, 13.202450, 23.729959>,  <12.018411, 13.068361, 23.875547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366009, 13.202450, 23.729959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440853, 0.190466, -0.877138,
		-0.224712, 0.922686, 0.313298,
		0.868995, 0.335222, -0.363969,
		12.626707, 13.303017, 23.620770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.789055, 13.674726, 23.339382>,  <12.018411, 13.068361, 23.875547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.789055, 13.674726, 23.339382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165154, 13.570832, 23.251314>,  <12.390813, 13.508496, 23.198473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165154, 13.570832, 23.251314>,  <11.789055, 13.674726, 23.339382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165154, 13.570832, 23.251314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164895, 0.218390, -0.961829,
		0.297903, 0.940662, 0.162512,
		0.940247, -0.259734, -0.220170,
		12.447227, 13.492912, 23.185263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.961962, 14.123812, 22.803080>,  <11.789055, 13.674726, 23.339382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.961962, 14.123812, 22.803080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225246, 13.824862, 22.766878>,  <12.383218, 13.645494, 22.745157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225246, 13.824862, 22.766878>,  <11.961962, 14.123812, 22.803080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225246, 13.824862, 22.766878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068601, 0.179263, -0.981406,
		0.749700, 0.639765, 0.169263,
		0.658213, -0.747372, -0.090505,
		12.422710, 13.600651, 22.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534465, 14.356346, 22.389174>,  <11.961962, 14.123812, 22.803080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534465, 14.356346, 22.389174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571403, 13.958365, 22.373466>,  <12.593565, 13.719577, 22.364042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571403, 13.958365, 22.373466>,  <12.534465, 14.356346, 22.389174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571403, 13.958365, 22.373466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117462, 0.050048, -0.991815,
		0.988775, 0.086976, 0.121490,
		0.092345, -0.994952, -0.039270,
		12.599106, 13.659880, 22.361685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.145615, 14.234908, 22.093103>,  <12.534465, 14.356346, 22.389174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.145615, 14.234908, 22.093103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931614, 13.905349, 22.018307>,  <12.803213, 13.707613, 21.973429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931614, 13.905349, 22.018307>,  <13.145615, 14.234908, 22.093103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931614, 13.905349, 22.018307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245369, 0.060266, -0.967555,
		0.808435, -0.563525, 0.169917,
		-0.535001, -0.823898, -0.186993,
		12.771113, 13.658179, 21.962210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495599, 13.938618, 21.587461>,  <13.145615, 14.234908, 22.093103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495599, 13.938618, 21.587461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130313, 13.780549, 21.547707>,  <12.911141, 13.685708, 21.523853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130313, 13.780549, 21.547707>,  <13.495599, 13.938618, 21.587461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130313, 13.780549, 21.547707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111426, -0.007572, -0.993744,
		0.391947, -0.918576, 0.050948,
		-0.913215, -0.395172, -0.099385,
		12.856348, 13.661998, 21.517891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.468623, 13.370322, 21.108562>,  <13.495599, 13.938618, 21.587461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.468623, 13.370322, 21.108562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075977, 13.445787, 21.120146>,  <12.840389, 13.491066, 21.127096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075977, 13.445787, 21.120146>,  <13.468623, 13.370322, 21.108562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075977, 13.445787, 21.120146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020620, 0.046013, -0.998728,
		-0.189755, -0.980963, -0.041277,
		-0.981615, 0.188663, 0.028958,
		12.781493, 13.502386, 21.128834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133960, 12.827494, 20.563942>,  <13.468623, 13.370322, 21.108562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133960, 12.827494, 20.563942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913287, 13.152829, 20.637836>,  <12.780884, 13.348030, 20.682173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913287, 13.152829, 20.637836>,  <13.133960, 12.827494, 20.563942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913287, 13.152829, 20.637836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070569, 0.175182, -0.982004,
		-0.831065, -0.554789, -0.039248,
		-0.551681, 0.813339, 0.184739,
		12.747783, 13.396831, 20.693258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.822761, 12.846897, 19.956707>,  <13.133960, 12.827494, 20.563942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.822761, 12.846897, 19.956707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734715, 13.201727, 20.119015>,  <12.681889, 13.414624, 20.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734715, 13.201727, 20.119015>,  <12.822761, 12.846897, 19.956707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734715, 13.201727, 20.119015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044320, 0.406449, -0.912598,
		-0.974467, -0.218859, -0.050150,
		-0.220113, 0.887074, 0.405771,
		12.668681, 13.467849, 20.240746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.269304, 13.041993, 19.603025>,  <12.822761, 12.846897, 19.956707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.269304, 13.041993, 19.603025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447574, 13.372031, 19.741930>,  <12.554536, 13.570054, 19.825274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447574, 13.372031, 19.741930>,  <12.269304, 13.041993, 19.603025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447574, 13.372031, 19.741930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003618, 0.386255, -0.922385,
		-0.895188, 0.412340, 0.169159,
		0.445675, 0.825096, 0.347263,
		12.581276, 13.619560, 19.846109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858314, 13.655737, 19.348776>,  <12.269304, 13.041993, 19.603025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858314, 13.655737, 19.348776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.204648, 13.820462, 19.462435>,  <12.412449, 13.919297, 19.530630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.204648, 13.820462, 19.462435>,  <11.858314, 13.655737, 19.348776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.204648, 13.820462, 19.462435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014060, 0.587719, -0.808943,
		-0.500131, 0.696416, 0.514658,
		0.865836, 0.411813, 0.284145,
		12.464398, 13.944006, 19.547678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849185, 14.368511, 19.134659>,  <11.858314, 13.655737, 19.348776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849185, 14.368511, 19.134659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241887, 14.310853, 19.184265>,  <12.477509, 14.276258, 19.214029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241887, 14.310853, 19.184265>,  <11.849185, 14.368511, 19.134659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241887, 14.310853, 19.184265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186516, 0.603060, -0.775584,
		0.037009, 0.784564, 0.618942,
		0.981755, -0.144146, 0.124015,
		12.536413, 14.267610, 19.221470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050852, 15.023805, 19.124720>,  <11.849185, 14.368511, 19.134659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050852, 15.023805, 19.124720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359527, 14.778527, 19.057198>,  <12.544731, 14.631361, 19.016684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359527, 14.778527, 19.057198>,  <12.050852, 15.023805, 19.124720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359527, 14.778527, 19.057198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303743, 0.588514, -0.749261,
		0.558785, 0.526921, 0.640401,
		0.771686, -0.613193, -0.168804,
		12.591032, 14.594569, 19.006556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683905, 15.420812, 19.022781>,  <12.050852, 15.023805, 19.124720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683905, 15.420812, 19.022781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745852, 15.075125, 18.831306>,  <12.783020, 14.867712, 18.716421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745852, 15.075125, 18.831306>,  <12.683905, 15.420812, 19.022781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745852, 15.075125, 18.831306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428800, 0.495316, -0.755508,
		0.890026, -0.088258, 0.447286,
		0.154868, -0.864218, -0.478690,
		12.792312, 14.815860, 18.687700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271272, 15.589122, 18.640398>,  <12.683905, 15.420812, 19.022781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.271272, 15.589122, 18.640398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131832, 15.261929, 18.457365>,  <13.048168, 15.065613, 18.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131832, 15.261929, 18.457365>,  <13.271272, 15.589122, 18.640398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131832, 15.261929, 18.457365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397861, 0.312899, -0.862439,
		0.848638, -0.482700, 0.216367,
		-0.348598, -0.817983, -0.457585,
		13.027252, 15.016534, 18.320089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743329, 15.415610, 18.266642>,  <13.271272, 15.589122, 18.640398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743329, 15.415610, 18.266642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444238, 15.217010, 18.090284>,  <13.264783, 15.097849, 17.984470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444238, 15.217010, 18.090284>,  <13.743329, 15.415610, 18.266642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444238, 15.217010, 18.090284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194855, 0.470688, -0.860514,
		0.634772, -0.729341, -0.255200,
		-0.747727, -0.496503, -0.440895,
		13.219919, 15.068059, 17.958015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321653, 15.712995, 18.723690>,  <13.743329, 15.415610, 18.266642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321653, 15.712995, 18.723690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609073, 15.614290, 18.463598>,  <14.781524, 15.555068, 18.307543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609073, 15.614290, 18.463598>,  <14.321653, 15.712995, 18.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609073, 15.614290, 18.463598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310132, -0.723149, 0.617149,
		-0.622500, -0.645109, -0.443090,
		0.718548, -0.246759, -0.650230,
		14.824637, 15.540262, 18.268530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381904, 14.932157, 18.562819>,  <14.321653, 15.712995, 18.723690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381904, 14.932157, 18.562819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723935, 15.139318, 18.572746>,  <14.929153, 15.263616, 18.578703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723935, 15.139318, 18.572746>,  <14.381904, 14.932157, 18.562819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723935, 15.139318, 18.572746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302282, -0.536824, 0.787684,
		0.421269, -0.666028, -0.615580,
		0.855078, 0.517906, 0.024820,
		14.980458, 15.294690, 18.580193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793959, 14.485949, 18.753950>,  <14.381904, 14.932157, 18.562819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793959, 14.485949, 18.753950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988533, 14.824451, 18.840878>,  <15.105278, 15.027554, 18.893034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988533, 14.824451, 18.840878>,  <14.793959, 14.485949, 18.753950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988533, 14.824451, 18.840878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266357, -0.380523, 0.885582,
		0.832126, -0.372895, -0.410507,
		0.486436, 0.846257, 0.217320,
		15.134464, 15.078329, 18.906073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.404080, 14.307503, 18.932650>,  <14.793959, 14.485949, 18.753950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.404080, 14.307503, 18.932650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335020, 14.663571, 19.101309>,  <15.293584, 14.877213, 19.202503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335020, 14.663571, 19.101309>,  <15.404080, 14.307503, 18.932650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.335020, 14.663571, 19.101309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374805, -0.336499, 0.863880,
		0.910885, 0.307186, -0.275544,
		-0.172652, 0.890171, 0.421647,
		15.283225, 14.930623, 19.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802400, 14.351169, 19.458580>,  <15.404080, 14.307503, 18.932650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802400, 14.351169, 19.458580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604841, 14.684229, 19.558788>,  <15.486306, 14.884065, 19.618914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604841, 14.684229, 19.558788>,  <15.802400, 14.351169, 19.458580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604841, 14.684229, 19.558788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355338, -0.069680, 0.932137,
		0.793601, 0.549397, -0.261458,
		-0.493895, 0.832651, 0.250520,
		15.456673, 14.934024, 19.633944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290848, 14.780347, 19.798958>,  <15.802400, 14.351169, 19.458580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290848, 14.780347, 19.798958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925416, 14.890146, 19.918972>,  <15.706157, 14.956026, 19.990980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925416, 14.890146, 19.918972>,  <16.290848, 14.780347, 19.798958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925416, 14.890146, 19.918972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335923, 0.093602, 0.937227,
		0.229183, 0.957021, -0.177723,
		-0.913581, 0.274498, 0.300034,
		15.651341, 14.972496, 20.008982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359991, 15.452380, 20.223125>,  <16.290848, 14.780347, 19.798958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359991, 15.452380, 20.223125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024944, 15.253462, 20.313543>,  <15.823916, 15.134111, 20.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024944, 15.253462, 20.313543>,  <16.359991, 15.452380, 20.223125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024944, 15.253462, 20.313543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240649, 0.035557, 0.969961,
		-0.490394, 0.866853, 0.089890,
		-0.837617, -0.497295, 0.226045,
		15.773660, 15.104274, 20.381357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098059, 15.824579, 20.834608>,  <16.359991, 15.452380, 20.223125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098059, 15.824579, 20.834608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909511, 15.473598, 20.799084>,  <15.796382, 15.263010, 20.777769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909511, 15.473598, 20.799084>,  <16.098059, 15.824579, 20.834608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909511, 15.473598, 20.799084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132228, -0.169874, 0.976555,
		-0.871967, 0.448574, 0.196097,
		-0.471369, -0.877453, -0.088810,
		15.768100, 15.210362, 20.772440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672922, 15.817657, 21.437170>,  <16.098059, 15.824579, 20.834608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672922, 15.817657, 21.437170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651561, 15.435072, 21.322397>,  <15.638744, 15.205521, 21.253534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651561, 15.435072, 21.322397>,  <15.672922, 15.817657, 21.437170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651561, 15.435072, 21.322397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041611, -0.284959, 0.957636,
		-0.997706, 0.063080, -0.024582,
		-0.053403, -0.956462, -0.286930,
		15.635540, 15.148133, 21.236319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966523, 15.404351, 21.664274>,  <15.672922, 15.817657, 21.437170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966523, 15.404351, 21.664274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300428, 15.188704, 21.619507>,  <15.500772, 15.059317, 21.592648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300428, 15.188704, 21.619507>,  <14.966523, 15.404351, 21.664274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300428, 15.188704, 21.619507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065718, -0.299359, 0.951875,
		-0.546675, -0.787234, -0.285323,
		0.834762, -0.539117, -0.111917,
		15.550857, 15.026970, 21.585932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004415, 14.852553, 22.134613>,  <14.966523, 15.404351, 21.664274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004415, 14.852553, 22.134613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380197, 14.752211, 22.041235>,  <15.605665, 14.692005, 21.985209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380197, 14.752211, 22.041235>,  <15.004415, 14.852553, 22.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380197, 14.752211, 22.041235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146469, -0.321923, 0.935368,
		-0.309782, -0.912931, -0.265692,
		0.939459, -0.250845, -0.233443,
		15.662033, 14.676953, 21.971201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191410, 14.109698, 22.443735>,  <15.004415, 14.852553, 22.134613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191410, 14.109698, 22.443735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533339, 14.312875, 22.401257>,  <15.738496, 14.434780, 22.375771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533339, 14.312875, 22.401257>,  <15.191410, 14.109698, 22.443735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.533339, 14.312875, 22.401257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316809, -0.348753, 0.882045,
		0.410990, -0.787635, -0.459041,
		0.854821, 0.507940, -0.106195,
		15.789785, 14.465257, 22.369398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650772, 13.666605, 22.810474>,  <15.191410, 14.109698, 22.443735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650772, 13.666605, 22.810474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868526, 13.999155, 22.765820>,  <15.999178, 14.198685, 22.739027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868526, 13.999155, 22.765820>,  <15.650772, 13.666605, 22.810474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868526, 13.999155, 22.765820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453026, -0.179379, 0.873264,
		0.705984, -0.525966, -0.474285,
		0.544384, 0.831374, -0.111638,
		16.031841, 14.248568, 22.732328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337568, 13.473765, 22.838095>,  <15.650772, 13.666605, 22.810474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.337568, 13.473765, 22.838095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343822, 13.857134, 22.952066>,  <16.347574, 14.087155, 23.020449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343822, 13.857134, 22.952066>,  <16.337568, 13.473765, 22.838095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343822, 13.857134, 22.952066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489374, -0.255833, 0.833704,
		0.871934, 0.126402, -0.473026,
		0.015634, 0.958422, 0.284927,
		16.348513, 14.144660, 23.037544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021797, 13.655892, 23.159380>,  <16.337568, 13.473765, 22.838095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021797, 13.655892, 23.159380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.766619, 13.931805, 23.296333>,  <16.613512, 14.097352, 23.378506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.766619, 13.931805, 23.296333>,  <17.021797, 13.655892, 23.159380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766619, 13.931805, 23.296333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267338, -0.218586, 0.938483,
		0.722188, 0.690234, -0.044959,
		-0.637945, 0.689781, 0.342386,
		16.575235, 14.138739, 23.399050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395380, 13.889388, 23.685560>,  <17.021797, 13.655892, 23.159380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395380, 13.889388, 23.685560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034306, 14.052168, 23.741489>,  <16.817661, 14.149836, 23.775047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034306, 14.052168, 23.741489>,  <17.395380, 13.889388, 23.685560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034306, 14.052168, 23.741489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189780, 0.084880, 0.978151,
		0.386190, 0.909498, -0.153851,
		-0.902685, 0.406950, 0.139825,
		16.763500, 14.174253, 23.783438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482265, 14.453976, 24.184359>,  <17.395380, 13.889388, 23.685560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482265, 14.453976, 24.184359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096428, 14.348902, 24.193779>,  <16.864925, 14.285857, 24.199432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096428, 14.348902, 24.193779>,  <17.482265, 14.453976, 24.184359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096428, 14.348902, 24.193779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001151, 0.093494, 0.995619,
		-0.263737, 0.960341, -0.090486,
		-0.964594, -0.262685, 0.023553,
		16.807049, 14.270096, 24.200844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198044, 15.025100, 24.576218>,  <17.482265, 14.453976, 24.184359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198044, 15.025100, 24.576218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981256, 14.691336, 24.616276>,  <16.851183, 14.491077, 24.640310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981256, 14.691336, 24.616276>,  <17.198044, 15.025100, 24.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981256, 14.691336, 24.616276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090404, 0.176359, 0.980165,
		-0.835521, 0.522167, -0.171016,
		-0.541970, -0.834409, 0.100146,
		16.818665, 14.441013, 24.646320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727840, 15.187899, 25.084970>,  <17.198044, 15.025100, 24.576218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727840, 15.187899, 25.084970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698923, 14.790184, 25.053553>,  <16.681574, 14.551556, 25.034702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698923, 14.790184, 25.053553>,  <16.727840, 15.187899, 25.084970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698923, 14.790184, 25.053553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123329, -0.069234, 0.989948,
		-0.989729, 0.081251, -0.117619,
		-0.072291, -0.994286, -0.078543,
		16.677237, 14.491899, 25.029989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086290, 14.994350, 25.349848>,  <16.727840, 15.187899, 25.084970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086290, 14.994350, 25.349848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307312, 14.666382, 25.409731>,  <16.439924, 14.469601, 25.445662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307312, 14.666382, 25.409731>,  <16.086290, 14.994350, 25.349848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307312, 14.666382, 25.409731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314271, -0.038597, 0.948548,
		-0.771957, -0.571173, -0.279004,
		0.552554, -0.819922, 0.149708,
		16.473078, 14.420405, 25.454643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604052, 14.670992, 25.816343>,  <16.086290, 14.994350, 25.349848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604052, 14.670992, 25.816343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950994, 14.478554, 25.867319>,  <16.159159, 14.363091, 25.897905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950994, 14.478554, 25.867319>,  <15.604052, 14.670992, 25.816343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950994, 14.478554, 25.867319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161211, -0.029326, 0.986484,
		-0.470856, -0.876177, -0.102993,
		0.867355, -0.481096, 0.127441,
		16.211201, 14.334226, 25.905552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454311, 14.139571, 26.314293>,  <15.604052, 14.670992, 25.816343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454311, 14.139571, 26.314293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850298, 14.192740, 26.333467>,  <16.087891, 14.224642, 26.344973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850298, 14.192740, 26.333467>,  <15.454311, 14.139571, 26.314293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850298, 14.192740, 26.333467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061856, 0.102646, 0.992793,
		0.127045, -0.985797, 0.109838,
		0.989966, 0.132924, 0.047937,
		16.147287, 14.232617, 26.347849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742042, 13.597181, 26.686802>,  <15.454311, 14.139571, 26.314293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742042, 13.597181, 26.686802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991488, 13.908789, 26.712835>,  <16.141155, 14.095753, 26.728455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991488, 13.908789, 26.712835>,  <15.742042, 13.597181, 26.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991488, 13.908789, 26.712835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068041, -0.028850, 0.997265,
		0.778765, -0.626338, 0.035014,
		0.623615, 0.779018, 0.065084,
		16.178572, 14.142494, 26.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213373, 13.416411, 27.200966>,  <15.742042, 13.597181, 26.686802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213373, 13.416411, 27.200966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229628, 13.815610, 27.181572>,  <16.239380, 14.055129, 27.169935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229628, 13.815610, 27.181572>,  <16.213373, 13.416411, 27.200966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229628, 13.815610, 27.181572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057593, 0.046107, 0.997275,
		0.997513, -0.043316, -0.055604,
		0.040635, 0.997997, -0.048487,
		16.241817, 14.115009, 27.167027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512363, 13.636276, 27.803722>,  <16.213373, 13.416411, 27.200966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512363, 13.636276, 27.803722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325769, 13.966846, 27.677605>,  <16.213812, 14.165189, 27.601934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325769, 13.966846, 27.677605>,  <16.512363, 13.636276, 27.803722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.325769, 13.966846, 27.677605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155557, 0.274252, 0.948993,
		0.870742, 0.491740, 0.000621,
		-0.466487, 0.826425, -0.315297,
		16.185823, 14.214774, 27.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712801, 14.055831, 28.319206>,  <16.512363, 13.636276, 27.803722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712801, 14.055831, 28.319206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401175, 14.236326, 28.145107>,  <16.214199, 14.344624, 28.040648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401175, 14.236326, 28.145107>,  <16.712801, 14.055831, 28.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401175, 14.236326, 28.145107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279918, 0.370848, 0.885504,
		0.560985, 0.811699, -0.162605,
		-0.779065, 0.451238, -0.435249,
		16.167456, 14.371697, 28.014532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672863, 14.739747, 28.625874>,  <16.712801, 14.055831, 28.319206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672863, 14.739747, 28.625874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309355, 14.674796, 28.472111>,  <16.091249, 14.635825, 28.379854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309355, 14.674796, 28.472111>,  <16.672863, 14.739747, 28.625874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309355, 14.674796, 28.472111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408741, 0.531931, 0.741607,
		0.084057, 0.831073, -0.549775,
		-0.908771, -0.162378, -0.384406,
		16.036724, 14.626082, 28.356789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421034, 15.347239, 28.789186>,  <16.672863, 14.739747, 28.625874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421034, 15.347239, 28.789186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.106863, 15.108692, 28.722916>,  <15.918361, 14.965564, 28.683153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.106863, 15.108692, 28.722916>,  <16.421034, 15.347239, 28.789186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106863, 15.108692, 28.722916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466756, 0.394887, 0.791330,
		-0.406500, 0.698863, -0.588513,
		-0.785428, -0.596368, -0.165677,
		15.871235, 14.929782, 28.673212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783271, 15.769289, 28.809248>,  <16.421034, 15.347239, 28.789186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783271, 15.769289, 28.809248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630486, 15.404085, 28.866547>,  <15.538815, 15.184963, 28.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630486, 15.404085, 28.866547>,  <15.783271, 15.769289, 28.809248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630486, 15.404085, 28.866547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718185, 0.390787, 0.575756,
		-0.581650, 0.117040, -0.804975,
		-0.381961, -0.913010, 0.143245,
		15.515899, 15.130182, 28.909521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086741, 15.910384, 28.925831>,  <15.783271, 15.769289, 28.809248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086741, 15.910384, 28.925831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.146384, 15.556442, 29.102375>,  <15.182170, 15.344077, 29.208302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.146384, 15.556442, 29.102375>,  <15.086741, 15.910384, 28.925831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.146384, 15.556442, 29.102375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632023, 0.257991, 0.730745,
		-0.760470, -0.387910, -0.520780,
		0.149106, -0.884854, 0.441362,
		15.191116, 15.290986, 29.234783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466348, 15.748621, 29.228016>,  <15.086741, 15.910384, 28.925831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466348, 15.748621, 29.228016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719275, 15.500556, 29.413733>,  <14.871033, 15.351717, 29.525164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719275, 15.500556, 29.413733>,  <14.466348, 15.748621, 29.228016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719275, 15.500556, 29.413733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388030, 0.265186, 0.882672,
		-0.670525, -0.738291, -0.072959,
		0.632320, -0.620164, 0.464293,
		14.908972, 15.314507, 29.553020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007900, 15.395639, 29.672993>,  <14.466348, 15.748621, 29.228016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007900, 15.395639, 29.672993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376705, 15.323503, 29.810030>,  <14.597988, 15.280221, 29.892252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376705, 15.323503, 29.810030>,  <14.007900, 15.395639, 29.672993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376705, 15.323503, 29.810030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274159, 0.320675, 0.906644,
		-0.273367, -0.929862, 0.246225,
		0.922013, -0.180342, 0.342592,
		14.653309, 15.269400, 29.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000908, 15.159348, 30.468636>,  <14.007900, 15.395639, 29.672993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000908, 15.159348, 30.468636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361852, 15.317156, 30.399237>,  <14.578418, 15.411840, 30.357597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361852, 15.317156, 30.399237>,  <14.000908, 15.159348, 30.468636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361852, 15.317156, 30.399237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086502, 0.560156, 0.823859,
		0.422211, -0.728410, 0.539589,
		0.902361, 0.394518, -0.173495,
		14.632560, 15.435512, 30.347189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317123, 15.220478, 31.125879>,  <14.000908, 15.159348, 30.468636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317123, 15.220478, 31.125879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562264, 15.459980, 30.919617>,  <14.709350, 15.603682, 30.795858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562264, 15.459980, 30.919617>,  <14.317123, 15.220478, 31.125879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562264, 15.459980, 30.919617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016091, 0.642978, 0.765716,
		0.790033, -0.477569, 0.384417,
		0.612854, 0.598755, -0.515658,
		14.746120, 15.639606, 30.764919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644298, 15.633805, 31.592260>,  <14.317123, 15.220478, 31.125879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644298, 15.633805, 31.592260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.681255, 15.853972, 31.260357>,  <14.703430, 15.986073, 31.061214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.681255, 15.853972, 31.260357>,  <14.644298, 15.633805, 31.592260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.681255, 15.853972, 31.260357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004884, 0.833565, 0.552399,
		0.995710, -0.046986, 0.079705,
		0.092395, 0.550419, -0.829760,
		14.708974, 16.019098, 31.011429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070089, 16.194683, 31.806849>,  <14.644298, 15.633805, 31.592260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070089, 16.194683, 31.806849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898788, 16.299337, 31.460867>,  <14.796008, 16.362129, 31.253279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898788, 16.299337, 31.460867>,  <15.070089, 16.194683, 31.806849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.898788, 16.299337, 31.460867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188315, 0.910316, 0.368595,
		0.883820, 0.320736, -0.340575,
		-0.428252, 0.261637, -0.864955,
		14.770312, 16.377829, 31.201380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251445, 16.933214, 31.659159>,  <15.070089, 16.194683, 31.806849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251445, 16.933214, 31.659159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906227, 16.840027, 31.479879>,  <14.699097, 16.784115, 31.372313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906227, 16.840027, 31.479879>,  <15.251445, 16.933214, 31.659159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906227, 16.840027, 31.479879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424056, 0.816274, 0.392267,
		0.274465, 0.528604, -0.803273,
		-0.863045, -0.232969, -0.448196,
		14.647314, 16.770136, 31.345421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322873, 17.664217, 31.807409>,  <15.251445, 16.933214, 31.659159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322873, 17.664217, 31.807409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.212714, 18.022509, 31.947025>,  <15.146619, 18.237484, 32.030796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.212714, 18.022509, 31.947025>,  <15.322873, 17.664217, 31.807409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212714, 18.022509, 31.947025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051316, 0.348864, -0.935768,
		-0.959960, -0.275618, -0.050111,
		-0.275396, 0.895728, 0.349039,
		15.130095, 18.291227, 32.051739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739886, 17.834114, 31.535904>,  <15.322873, 17.664217, 31.807409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739886, 17.834114, 31.535904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.934162, 18.172569, 31.623678>,  <15.050728, 18.375643, 31.676342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.934162, 18.172569, 31.623678>,  <14.739886, 17.834114, 31.535904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.934162, 18.172569, 31.623678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031197, 0.267650, -0.963011,
		-0.873574, 0.460880, 0.156392,
		0.485691, 0.846140, 0.219434,
		15.079869, 18.426411, 31.689508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264505, 18.468878, 31.228807>,  <14.739886, 17.834114, 31.535904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264505, 18.468878, 31.228807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639545, 18.580957, 31.311167>,  <14.864570, 18.648205, 31.360582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639545, 18.580957, 31.311167>,  <14.264505, 18.468878, 31.228807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639545, 18.580957, 31.311167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128320, 0.271530, -0.953837,
		-0.323173, 0.920739, 0.218631,
		0.937600, 0.280200, 0.205900,
		14.920825, 18.665018, 31.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525543, 19.015335, 30.641932>,  <14.264505, 18.468878, 31.228807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525543, 19.015335, 30.641932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864263, 18.897669, 30.819199>,  <15.067494, 18.827070, 30.925560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864263, 18.897669, 30.819199>,  <14.525543, 19.015335, 30.641932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864263, 18.897669, 30.819199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510405, 0.214848, -0.832663,
		0.149725, 0.931294, 0.332076,
		0.846799, -0.294164, 0.443169,
		15.118302, 18.809420, 30.952148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030712, 19.538059, 30.471889>,  <14.525543, 19.015335, 30.641932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030712, 19.538059, 30.471889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226973, 19.199200, 30.553474>,  <15.344729, 18.995884, 30.602425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226973, 19.199200, 30.553474>,  <15.030712, 19.538059, 30.471889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226973, 19.199200, 30.553474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613507, 0.169642, -0.771253,
		0.618765, 0.503549, 0.602967,
		0.490652, -0.847148, 0.203962,
		15.374168, 18.945055, 30.614662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724899, 19.742874, 30.216829>,  <15.030712, 19.538059, 30.471889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724899, 19.742874, 30.216829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721432, 19.343769, 30.243345>,  <15.719352, 19.104305, 30.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721432, 19.343769, 30.243345>,  <15.724899, 19.742874, 30.216829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721432, 19.343769, 30.243345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702256, -0.053266, -0.709929,
		0.711872, 0.040397, 0.701146,
		-0.008668, -0.997763, 0.066288,
		15.718831, 19.044439, 30.263231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460566, 19.420334, 30.131044>,  <15.724899, 19.742874, 30.216829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460566, 19.420334, 30.131044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211510, 19.116774, 30.054739>,  <16.062077, 18.934637, 30.008957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211510, 19.116774, 30.054739>,  <16.460566, 19.420334, 30.131044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211510, 19.116774, 30.054739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440850, -0.138788, -0.886786,
		0.646505, -0.636247, 0.420975,
		-0.622642, -0.758899, -0.190762,
		16.024717, 18.889105, 29.997511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834766, 18.936045, 29.731934>,  <16.460566, 19.420334, 30.131044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834766, 18.936045, 29.731934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453678, 18.834841, 29.664627>,  <16.225025, 18.774118, 29.624243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453678, 18.834841, 29.664627>,  <16.834766, 18.936045, 29.731934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453678, 18.834841, 29.664627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219368, -0.189547, -0.957053,
		0.210252, -0.948713, 0.236088,
		-0.952718, -0.253012, -0.168264,
		16.167862, 18.758938, 29.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834627, 18.284327, 29.314852>,  <16.834766, 18.936045, 29.731934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834627, 18.284327, 29.314852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.456514, 18.405602, 29.266653>,  <16.229647, 18.478367, 29.237734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.456514, 18.405602, 29.266653>,  <16.834627, 18.284327, 29.314852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456514, 18.405602, 29.266653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000119, -0.369007, -0.929426,
		-0.326254, -0.878585, 0.348780,
		-0.945282, 0.303188, -0.120494,
		16.172930, 18.496559, 29.230505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533184, 17.705742, 29.065187>,  <16.834627, 18.284327, 29.314852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533184, 17.705742, 29.065187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.310303, 18.023094, 28.967148>,  <16.176575, 18.213505, 28.908323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.310303, 18.023094, 28.967148>,  <16.533184, 17.705742, 29.065187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310303, 18.023094, 28.967148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083388, -0.347138, -0.934100,
		-0.826180, -0.500043, 0.259583,
		-0.557201, 0.793380, -0.245101,
		16.143143, 18.261108, 28.893618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951968, 17.524572, 28.686945>,  <16.533184, 17.705742, 29.065187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951968, 17.524572, 28.686945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959348, 17.914787, 28.599321>,  <15.963776, 18.148916, 28.546747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959348, 17.914787, 28.599321>,  <15.951968, 17.524572, 28.686945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959348, 17.914787, 28.599321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168343, -0.212940, -0.962454,
		-0.985556, 0.054633, 0.160296,
		0.018448, 0.975537, -0.219061,
		15.964882, 18.207449, 28.533604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358438, 17.572966, 28.333307>,  <15.951968, 17.524572, 28.686945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358438, 17.572966, 28.333307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607699, 17.857462, 28.203188>,  <15.757257, 18.028160, 28.125116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607699, 17.857462, 28.203188>,  <15.358438, 17.572966, 28.333307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607699, 17.857462, 28.203188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286856, -0.179092, -0.941084,
		-0.727595, 0.679753, 0.092421,
		0.623153, 0.711240, -0.325297,
		15.794645, 18.070833, 28.105598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004086, 17.916544, 27.870543>,  <15.358438, 17.572966, 28.333307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004086, 17.916544, 27.870543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382487, 17.983549, 27.759533>,  <15.609528, 18.023752, 27.692928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382487, 17.983549, 27.759533>,  <15.004086, 17.916544, 27.870543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382487, 17.983549, 27.759533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248245, -0.176174, -0.952542,
		-0.208457, 0.970001, -0.125076,
		0.946002, 0.167514, -0.277523,
		15.666288, 18.033804, 27.676275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989827, 18.374195, 27.275328>,  <15.004086, 17.916544, 27.870543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989827, 18.374195, 27.275328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330247, 18.164524, 27.287682>,  <15.534498, 18.038721, 27.295094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330247, 18.164524, 27.287682>,  <14.989827, 18.374195, 27.275328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330247, 18.164524, 27.287682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140043, -0.283272, -0.948760,
		0.506067, 0.803115, -0.314486,
		0.851049, -0.524178, 0.030884,
		15.585562, 18.007271, 27.296947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298331, 18.565351, 26.698433>,  <14.989827, 18.374195, 27.275328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298331, 18.565351, 26.698433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444097, 18.210077, 26.810381>,  <15.531555, 17.996912, 26.877550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444097, 18.210077, 26.810381>,  <15.298331, 18.565351, 26.698433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444097, 18.210077, 26.810381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059926, -0.322279, -0.944746,
		0.929307, 0.327506, -0.170669,
		0.364413, -0.888187, 0.279870,
		15.553420, 17.943621, 26.894342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617439, 18.364960, 26.087646>,  <15.298331, 18.565351, 26.698433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617439, 18.364960, 26.087646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610286, 18.036346, 26.315599>,  <15.605993, 17.839178, 26.452372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610286, 18.036346, 26.315599>,  <15.617439, 18.364960, 26.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610286, 18.036346, 26.315599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116032, -0.567828, -0.814928,
		0.993084, 0.051551, 0.105479,
		-0.017884, -0.821531, 0.569883,
		15.604920, 17.789886, 26.486565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245909, 17.972921, 25.763880>,  <15.617439, 18.364960, 26.087646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245909, 17.972921, 25.763880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035089, 17.707008, 25.975647>,  <15.908598, 17.547461, 26.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035089, 17.707008, 25.975647>,  <16.245909, 17.972921, 25.763880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035089, 17.707008, 25.975647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006955, -0.626318, -0.779537,
		0.849806, -0.407172, 0.334723,
		-0.527049, -0.664783, 0.529417,
		15.876975, 17.507574, 26.134472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687357, 17.429247, 25.823717>,  <16.245909, 17.972921, 25.763880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687357, 17.429247, 25.823717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308037, 17.309141, 25.864845>,  <16.080444, 17.237078, 25.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308037, 17.309141, 25.864845>,  <16.687357, 17.429247, 25.823717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308037, 17.309141, 25.864845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079084, -0.537301, -0.839675,
		0.307369, -0.788131, 0.533268,
		-0.948299, -0.300263, 0.102821,
		16.023548, 17.219063, 25.895691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724726, 16.724693, 25.743038>,  <16.687357, 17.429247, 25.823717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724726, 16.724693, 25.743038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.348677, 16.822256, 25.647810>,  <16.123047, 16.880793, 25.590673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.348677, 16.822256, 25.647810>,  <16.724726, 16.724693, 25.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.348677, 16.822256, 25.647810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114806, -0.431070, -0.894985,
		-0.320917, -0.868729, 0.377257,
		-0.940123, 0.243905, -0.238072,
		16.066639, 16.895428, 25.576387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322790, 16.036654, 25.586266>,  <16.724726, 16.724693, 25.743038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322790, 16.036654, 25.586266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118277, 16.324869, 25.398901>,  <15.995568, 16.497799, 25.286482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118277, 16.324869, 25.398901>,  <16.322790, 16.036654, 25.586266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118277, 16.324869, 25.398901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373540, -0.304543, -0.876197,
		-0.773988, -0.622956, -0.113443,
		-0.511284, 0.720541, -0.468411,
		15.964891, 16.541031, 25.258377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936337, 15.686501, 25.121941>,  <16.322790, 16.036654, 25.586266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936337, 15.686501, 25.121941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903898, 16.065231, 24.997398>,  <15.884436, 16.292469, 24.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903898, 16.065231, 24.997398>,  <15.936337, 15.686501, 25.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903898, 16.065231, 24.997398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263824, -0.280851, -0.922778,
		-0.961156, -0.156977, -0.227020,
		-0.081096, 0.946827, -0.311356,
		15.879569, 16.349279, 24.903992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489253, 15.515809, 24.533228>,  <15.936337, 15.686501, 25.121941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489253, 15.515809, 24.533228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685855, 15.864143, 24.529934>,  <15.803816, 16.073145, 24.527958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685855, 15.864143, 24.529934>,  <15.489253, 15.515809, 24.533228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685855, 15.864143, 24.529934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313290, -0.185631, -0.931338,
		-0.812571, 0.455177, -0.364062,
		0.491505, 0.870836, -0.008236,
		15.833306, 16.125395, 24.527464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280614, 15.801822, 23.934486>,  <15.489253, 15.515809, 24.533228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280614, 15.801822, 23.934486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606749, 15.995934, 24.060806>,  <15.802429, 16.112400, 24.136599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606749, 15.995934, 24.060806>,  <15.280614, 15.801822, 23.934486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606749, 15.995934, 24.060806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430629, -0.143674, -0.891020,
		-0.387021, 0.862474, -0.326118,
		0.815337, 0.485279, 0.315801,
		15.851350, 16.141518, 24.155546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528054, 16.096689, 23.287239>,  <15.280614, 15.801822, 23.934486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528054, 16.096689, 23.287239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843880, 16.158661, 23.524755>,  <16.033375, 16.195845, 23.667265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843880, 16.158661, 23.524755>,  <15.528054, 16.096689, 23.287239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843880, 16.158661, 23.524755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578371, 0.135554, -0.804432,
		-0.205121, 0.978582, 0.017422,
		0.789564, 0.154929, 0.593789,
		16.080750, 16.205139, 23.702892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893196, 16.595169, 23.001091>,  <15.528054, 16.096689, 23.287239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893196, 16.595169, 23.001091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.194086, 16.468691, 23.232323>,  <16.374620, 16.392803, 23.371061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.194086, 16.468691, 23.232323>,  <15.893196, 16.595169, 23.001091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194086, 16.468691, 23.232323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654154, 0.253205, -0.712720,
		0.078988, 0.914279, 0.397309,
		0.752226, -0.316197, 0.578079,
		16.419754, 16.373831, 23.405746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469849, 17.081896, 22.949343>,  <15.893196, 16.595169, 23.001091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.469849, 17.081896, 22.949343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.619511, 16.728382, 23.061726>,  <16.709307, 16.516273, 23.129154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.619511, 16.728382, 23.061726>,  <16.469849, 17.081896, 22.949343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619511, 16.728382, 23.061726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721981, 0.087458, -0.686363,
		0.582024, 0.459650, 0.670798,
		0.374153, -0.883783, 0.280956,
		16.731756, 16.463247, 23.146013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234196, 17.134111, 22.953203>,  <16.469849, 17.081896, 22.949343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234196, 17.134111, 22.953203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131319, 16.749336, 22.916258>,  <17.069593, 16.518471, 22.894091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131319, 16.749336, 22.916258>,  <17.234196, 17.134111, 22.953203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131319, 16.749336, 22.916258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736988, -0.133426, -0.662605,
		0.625061, -0.238487, 0.743252,
		-0.257191, -0.961937, -0.092363,
		17.054161, 16.460754, 22.888550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894650, 16.815077, 22.871178>,  <17.234196, 17.134111, 22.953203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894650, 16.815077, 22.871178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615814, 16.567059, 22.727171>,  <17.448513, 16.418247, 22.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615814, 16.567059, 22.727171>,  <17.894650, 16.815077, 22.871178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615814, 16.567059, 22.727171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587564, -0.206252, -0.782450,
		0.410901, -0.756969, 0.508093,
		-0.697086, -0.620047, -0.360019,
		17.406689, 16.381044, 22.619165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260719, 16.143919, 22.721193>,  <17.894650, 16.815077, 22.871178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260719, 16.143919, 22.721193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937910, 16.172232, 22.486687>,  <17.744225, 16.189219, 22.345984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937910, 16.172232, 22.486687>,  <18.260719, 16.143919, 22.721193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937910, 16.172232, 22.486687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589661, 0.043014, -0.806504,
		-0.031868, -0.996564, -0.076451,
		-0.807022, 0.070782, -0.586264,
		17.695803, 16.193466, 22.310808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387550, 15.654280, 22.211550>,  <18.260719, 16.143919, 22.721193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387550, 15.654280, 22.211550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117439, 15.902756, 22.052490>,  <17.955372, 16.051842, 21.957054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117439, 15.902756, 22.052490>,  <18.387550, 15.654280, 22.211550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117439, 15.902756, 22.052490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552034, 0.068122, -0.831035,
		-0.489141, -0.780694, -0.388919,
		-0.675278, 0.621189, -0.397648,
		17.914856, 16.089113, 21.933195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284531, 15.380895, 21.586153>,  <18.387550, 15.654280, 22.211550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284531, 15.380895, 21.586153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149477, 15.756454, 21.559397>,  <18.068445, 15.981789, 21.543343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149477, 15.756454, 21.559397>,  <18.284531, 15.380895, 21.586153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149477, 15.756454, 21.559397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682606, 0.195298, -0.704207,
		-0.648115, -0.283425, -0.706836,
		-0.337634, 0.938898, -0.066892,
		18.048187, 16.038122, 21.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041952, 15.581018, 20.865513>,  <18.284531, 15.380895, 21.586153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041952, 15.581018, 20.865513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147375, 15.925870, 21.038614>,  <18.210629, 16.132780, 21.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147375, 15.925870, 21.038614>,  <18.041952, 15.581018, 20.865513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147375, 15.925870, 21.038614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635283, 0.182468, -0.750414,
		-0.725917, 0.472695, -0.499604,
		0.263555, 0.862128, 0.432752,
		18.226442, 16.184509, 21.168440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328150, 15.965775, 20.260588>,  <18.041952, 15.581018, 20.865513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328150, 15.965775, 20.260588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401440, 16.227461, 20.554100>,  <18.445414, 16.384472, 20.730207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401440, 16.227461, 20.554100>,  <18.328150, 15.965775, 20.260588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401440, 16.227461, 20.554100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690627, 0.445536, -0.569677,
		-0.699616, 0.611148, -0.370184,
		0.183227, 0.654214, 0.733779,
		18.456408, 16.423725, 20.774233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314419, 16.561327, 19.871195>,  <18.328150, 15.965775, 20.260588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314419, 16.561327, 19.871195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532703, 16.626345, 20.200018>,  <18.663673, 16.665356, 20.397312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532703, 16.626345, 20.200018>,  <18.314419, 16.561327, 19.871195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532703, 16.626345, 20.200018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570149, 0.646908, -0.506398,
		-0.614109, 0.745042, 0.260349,
		0.545710, 0.162546, 0.822058,
		18.696417, 16.675108, 20.446636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440912, 17.393061, 19.990385>,  <18.314419, 16.561327, 19.871195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440912, 17.393061, 19.990385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750389, 17.210905, 20.166574>,  <18.936075, 17.101612, 20.272287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750389, 17.210905, 20.166574>,  <18.440912, 17.393061, 19.990385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750389, 17.210905, 20.166574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633432, 0.542060, -0.552209,
		0.012707, 0.706251, 0.707848,
		0.773694, -0.455390, 0.440474,
		18.982498, 17.074287, 20.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900129, 17.873308, 20.077915>,  <18.440912, 17.393061, 19.990385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900129, 17.873308, 20.077915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.110634, 17.533188, 20.080217>,  <19.236937, 17.329115, 20.081598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.110634, 17.533188, 20.080217>,  <18.900129, 17.873308, 20.077915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.110634, 17.533188, 20.080217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757963, 0.466024, -0.456414,
		0.385408, 0.244556, 0.889749,
		0.526263, -0.850303, 0.005755,
		19.268513, 17.278097, 20.081944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.532421, 18.038643, 20.353518>,  <18.900129, 17.873308, 20.077915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.532421, 18.038643, 20.353518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600010, 17.675232, 20.200665>,  <19.640562, 17.457186, 20.108953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600010, 17.675232, 20.200665>,  <19.532421, 18.038643, 20.353518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600010, 17.675232, 20.200665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847379, 0.331921, -0.414461,
		0.503387, -0.253778, 0.825953,
		0.168970, -0.908529, -0.382131,
		19.650702, 17.402674, 20.086025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.190723, 17.773449, 20.582977>,  <19.532421, 18.038643, 20.353518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.190723, 17.773449, 20.582977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105597, 17.599117, 20.233175>,  <20.054522, 17.494518, 20.023294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105597, 17.599117, 20.233175>,  <20.190723, 17.773449, 20.582977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105597, 17.599117, 20.233175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853023, 0.353606, -0.383816,
		0.476509, -0.827656, 0.296520,
		-0.212816, -0.435830, -0.874507,
		20.041752, 17.468369, 19.970823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827862, 17.477213, 20.320747>,  <20.190723, 17.773449, 20.582977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827862, 17.477213, 20.320747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608105, 17.463924, 19.986786>,  <20.476250, 17.455952, 19.786409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608105, 17.463924, 19.986786>,  <20.827862, 17.477213, 20.320747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608105, 17.463924, 19.986786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805682, 0.243769, -0.539864,
		0.221459, -0.969264, -0.107159,
		-0.549393, -0.033222, -0.834903,
		20.443287, 17.453959, 19.736315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206356, 17.012747, 19.801428>,  <20.827862, 17.477213, 20.320747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.206356, 17.012747, 19.801428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959036, 17.246725, 19.591457>,  <20.810644, 17.387112, 19.465475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959036, 17.246725, 19.591457>,  <21.206356, 17.012747, 19.801428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.959036, 17.246725, 19.591457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761010, 0.278682, -0.585833,
		-0.196392, -0.761693, -0.617457,
		-0.618300, 0.584944, -0.524925,
		20.773546, 17.422209, 19.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.582706, 17.021666, 19.212254>,  <21.206356, 17.012747, 19.801428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.582706, 17.021666, 19.212254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321283, 17.321875, 19.173115>,  <21.164429, 17.502001, 19.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321283, 17.321875, 19.173115>,  <21.582706, 17.021666, 19.212254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321283, 17.321875, 19.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673634, 0.517859, -0.527295,
		-0.345077, -0.410531, -0.844030,
		-0.653559, 0.750524, -0.097847,
		21.125216, 17.547031, 19.143761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.488400, 17.274452, 18.438593>,  <21.582706, 17.021666, 19.212254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.488400, 17.274452, 18.438593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396555, 17.578615, 18.681595>,  <21.341448, 17.761112, 18.827396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396555, 17.578615, 18.681595>,  <21.488400, 17.274452, 18.438593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396555, 17.578615, 18.681595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611420, 0.598336, -0.517841,
		-0.757261, 0.252539, -0.602312,
		-0.229610, 0.760407, 0.607504,
		21.327671, 17.806738, 18.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743435, 16.996986, 17.738321>,  <21.488400, 17.274452, 18.438593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743435, 16.996986, 17.738321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977201, 16.735479, 17.930588>,  <22.117462, 16.578575, 18.045948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977201, 16.735479, 17.930588>,  <21.743435, 16.996986, 17.738321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977201, 16.735479, 17.930588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367241, -0.741314, -0.561772,
		0.723594, 0.151789, -0.673329,
		0.584419, -0.653769, 0.480668,
		22.152527, 16.539349, 18.074787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169333, 16.647633, 17.060881>,  <21.743435, 16.996986, 17.738321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169333, 16.647633, 17.060881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522612, 16.609707, 17.244606>,  <22.734579, 16.586952, 17.354841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522612, 16.609707, 17.244606>,  <22.169333, 16.647633, 17.060881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522612, 16.609707, 17.244606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422314, -0.265179, -0.866794,
		0.203984, 0.959526, -0.194165,
		0.883200, -0.094814, 0.459313,
		22.787571, 16.581263, 17.382401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640476, 17.208332, 16.780518>,  <22.169333, 16.647633, 17.060881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640476, 17.208332, 16.780518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780014, 16.849632, 16.889441>,  <22.863737, 16.634413, 16.954794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780014, 16.849632, 16.889441>,  <22.640476, 17.208332, 16.780518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.780014, 16.849632, 16.889441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284461, -0.175538, -0.942480,
		0.892967, 0.406238, 0.193855,
		0.348842, -0.896748, 0.272309,
		22.884666, 16.580608, 16.971132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.681458, 17.339586, 17.527260>,  <22.640476, 17.208332, 16.780518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.681458, 17.339586, 17.527260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907740, 17.480612, 17.229084>,  <23.043509, 17.565228, 17.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907740, 17.480612, 17.229084>,  <22.681458, 17.339586, 17.527260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.907740, 17.480612, 17.229084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453111, 0.888190, 0.076220,
		0.688963, 0.294648, 0.662202,
		0.565703, 0.352564, -0.745438,
		23.077450, 17.586382, 17.005453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.114021, 17.919376, 17.753145>,  <22.681458, 17.339586, 17.527260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.114021, 17.919376, 17.753145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006897, 17.923454, 17.367779>,  <22.942623, 17.925901, 17.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006897, 17.923454, 17.367779>,  <23.114021, 17.919376, 17.753145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006897, 17.923454, 17.367779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311054, 0.945484, 0.096469,
		0.911879, 0.325510, -0.250039,
		-0.267809, 0.010193, -0.963418,
		22.926554, 17.926512, 17.078753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396866, 18.474546, 17.387100>,  <23.114021, 17.919376, 17.753145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396866, 18.474546, 17.387100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106361, 18.373108, 17.131527>,  <22.932058, 18.312244, 16.978184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106361, 18.373108, 17.131527>,  <23.396866, 18.474546, 17.387100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.106361, 18.373108, 17.131527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257491, 0.962155, -0.089197,
		0.637371, 0.099739, -0.764075,
		-0.726262, -0.253594, -0.638931,
		22.888483, 18.297029, 16.939848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.463835, 18.925264, 16.821629>,  <23.396866, 18.474546, 17.387100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.463835, 18.925264, 16.821629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.095697, 18.771532, 16.850624>,  <22.874815, 18.679293, 16.868021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.095697, 18.771532, 16.850624>,  <23.463835, 18.925264, 16.821629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.095697, 18.771532, 16.850624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389891, 0.916192, -0.092616,
		-0.030818, -0.113501, -0.993060,
		-0.920345, -0.384331, 0.072488,
		22.819593, 18.656233, 16.872370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068275, 19.263718, 16.304600>,  <23.463835, 18.925264, 16.821629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068275, 19.263718, 16.304600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793488, 19.135220, 16.565331>,  <22.628614, 19.058121, 16.721769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793488, 19.135220, 16.565331>,  <23.068275, 19.263718, 16.304600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.793488, 19.135220, 16.565331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474001, 0.877983, -0.066851,
		-0.550817, -0.354890, -0.755416,
		-0.686968, -0.321245, 0.651826,
		22.587397, 19.038845, 16.760878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499640, 19.409002, 15.938183>,  <23.068275, 19.263718, 16.304600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499640, 19.409002, 15.938183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438736, 19.378178, 16.332315>,  <22.402193, 19.359682, 16.568794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438736, 19.378178, 16.332315>,  <22.499640, 19.409002, 15.938183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438736, 19.378178, 16.332315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457522, 0.889198, -0.001155,
		-0.876065, -0.450987, -0.170648,
		-0.152261, -0.077064, 0.985331,
		22.393057, 19.355059, 16.627914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.815508, 19.488344, 16.025951>,  <22.499640, 19.409002, 15.938183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.815508, 19.488344, 16.025951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937353, 19.583759, 16.394800>,  <22.010460, 19.641008, 16.616110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937353, 19.583759, 16.394800>,  <21.815508, 19.488344, 16.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937353, 19.583759, 16.394800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531848, 0.845743, -0.043088,
		-0.790156, -0.477304, 0.384492,
		0.304615, 0.238538, 0.922122,
		22.028738, 19.655321, 16.671436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189878, 19.701590, 16.400742>,  <21.815508, 19.488344, 16.025951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189878, 19.701590, 16.400742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.524437, 19.855900, 16.556498>,  <21.725172, 19.948486, 16.649950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.524437, 19.855900, 16.556498>,  <21.189878, 19.701590, 16.400742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524437, 19.855900, 16.556498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383578, 0.919406, -0.086958,
		-0.391552, -0.076629, 0.916960,
		0.836395, 0.385774, 0.389388,
		21.775354, 19.971632, 16.673313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997459, 20.289257, 16.818022>,  <21.189878, 19.701590, 16.400742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.997459, 20.289257, 16.818022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387558, 20.360487, 16.765585>,  <21.621616, 20.403225, 16.734123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387558, 20.360487, 16.765585>,  <20.997459, 20.289257, 16.818022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387558, 20.360487, 16.765585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195857, 0.970835, -0.138272,
		0.102644, 0.160524, 0.981680,
		0.975246, 0.178077, -0.131090,
		21.680132, 20.413910, 16.726257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053331, 20.881008, 17.076883>,  <20.997459, 20.289257, 16.818022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053331, 20.881008, 17.076883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395243, 20.866817, 16.869772>,  <21.600389, 20.858303, 16.745504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395243, 20.866817, 16.869772>,  <21.053331, 20.881008, 17.076883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395243, 20.866817, 16.869772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159885, 0.931139, -0.327746,
		0.493750, 0.362936, 0.790246,
		0.854779, -0.035476, -0.517778,
		21.651676, 20.856174, 16.714439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294479, 21.518221, 17.154297>,  <21.053331, 20.881008, 17.076883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294479, 21.518221, 17.154297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.524273, 21.415461, 16.843435>,  <21.662149, 21.353806, 16.656918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.524273, 21.415461, 16.843435>,  <21.294479, 21.518221, 17.154297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524273, 21.415461, 16.843435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111209, 0.916167, -0.385058,
		0.810926, 0.307636, 0.497754,
		0.574484, -0.256899, -0.777156,
		21.696619, 21.338390, 16.610289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795347, 21.952072, 17.092854>,  <21.294479, 21.518221, 17.154297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795347, 21.952072, 17.092854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.778967, 21.813040, 16.718151>,  <21.769138, 21.729620, 16.493330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.778967, 21.813040, 16.718151>,  <21.795347, 21.952072, 17.092854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.778967, 21.813040, 16.718151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033210, 0.936549, -0.348959,
		0.998609, -0.045399, -0.026808,
		-0.040949, -0.347583, -0.936754,
		21.766682, 21.708765, 16.437124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.318554, 22.390825, 16.685957>,  <21.795347, 21.952072, 17.092854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.318554, 22.390825, 16.685957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.088085, 22.233379, 16.399435>,  <21.949804, 22.138912, 16.227522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.088085, 22.233379, 16.399435>,  <22.318554, 22.390825, 16.685957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.088085, 22.233379, 16.399435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076615, 0.846528, -0.526803,
		0.813727, -0.358410, -0.457592,
		-0.576176, -0.393615, -0.716302,
		21.915234, 22.115294, 16.184544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.571493, 22.631649, 16.058697>,  <22.318554, 22.390825, 16.685957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.571493, 22.631649, 16.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200457, 22.522707, 15.956405>,  <21.977835, 22.457342, 15.895029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200457, 22.522707, 15.956405>,  <22.571493, 22.631649, 16.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200457, 22.522707, 15.956405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095993, 0.835275, -0.541388,
		0.361054, -0.477639, -0.800938,
		-0.927591, -0.272355, -0.255730,
		21.922180, 22.441000, 15.879685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496912, 22.786753, 15.412428>,  <22.571493, 22.631649, 16.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496912, 22.786753, 15.412428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.103352, 22.761028, 15.479123>,  <21.867216, 22.745594, 15.519140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.103352, 22.761028, 15.479123>,  <22.496912, 22.786753, 15.412428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103352, 22.761028, 15.479123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149080, 0.809878, -0.567338,
		-0.098553, -0.583062, -0.806428,
		-0.983902, -0.064309, 0.166739,
		21.808182, 22.741735, 15.529144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154198, 22.770061, 14.667484>,  <22.496912, 22.786753, 15.412428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154198, 22.770061, 14.667484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873842, 22.901939, 14.920485>,  <21.705629, 22.981066, 15.072285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873842, 22.901939, 14.920485>,  <22.154198, 22.770061, 14.667484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873842, 22.901939, 14.920485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381912, 0.575469, -0.723173,
		-0.602410, -0.748423, -0.277426,
		-0.700889, 0.329695, 0.632500,
		21.663576, 23.000849, 15.110234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538933, 22.729057, 14.361382>,  <22.154198, 22.770061, 14.667484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538933, 22.729057, 14.361382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443882, 22.972673, 14.664064>,  <21.386852, 23.118843, 14.845675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443882, 22.972673, 14.664064>,  <21.538933, 22.729057, 14.361382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443882, 22.972673, 14.664064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270562, 0.706690, -0.653747,
		-0.932915, -0.360083, -0.003144,
		-0.237625, 0.609040, 0.756707,
		21.372595, 23.155386, 14.891076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862976, 22.841635, 14.112737>,  <21.538933, 22.729057, 14.361382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862976, 22.841635, 14.112737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988668, 23.118168, 14.372989>,  <21.064083, 23.284088, 14.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988668, 23.118168, 14.372989>,  <20.862976, 22.841635, 14.112737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.988668, 23.118168, 14.372989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351353, 0.721369, -0.596807,
		-0.881936, -0.041066, 0.469578,
		0.314231, 0.691332, 0.650630,
		21.082937, 23.325567, 14.568177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331793, 23.293314, 14.178391>,  <20.862976, 22.841635, 14.112737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331793, 23.293314, 14.178391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659817, 23.483799, 14.305340>,  <20.856630, 23.598089, 14.381510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659817, 23.483799, 14.305340>,  <20.331793, 23.293314, 14.178391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659817, 23.483799, 14.305340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184197, 0.744705, -0.641471,
		-0.541827, 0.467585, 0.698418,
		0.820058, 0.476213, 0.317374,
		20.905834, 23.626663, 14.400552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.069649, 23.855629, 14.375572>,  <20.331793, 23.293314, 14.178391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.069649, 23.855629, 14.375572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452652, 23.907600, 14.272579>,  <20.682453, 23.938784, 14.210784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452652, 23.907600, 14.272579>,  <20.069649, 23.855629, 14.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.452652, 23.907600, 14.272579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279816, 0.634774, -0.720253,
		0.069862, 0.761696, 0.644157,
		0.957508, 0.129927, -0.257482,
		20.739904, 23.946579, 14.195334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.140057, 24.616024, 14.249352>,  <20.069649, 23.855629, 14.375572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.140057, 24.616024, 14.249352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448633, 24.440042, 14.065475>,  <20.633780, 24.334454, 13.955149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448633, 24.440042, 14.065475>,  <20.140057, 24.616024, 14.249352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448633, 24.440042, 14.065475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093840, 0.635885, -0.766058,
		0.629340, 0.634108, 0.449265,
		0.771444, -0.439952, -0.459692,
		20.680067, 24.308058, 13.927567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.560320, 25.159298, 13.987764>,  <20.140057, 24.616024, 14.249352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.560320, 25.159298, 13.987764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712429, 24.852648, 13.780814>,  <20.803694, 24.668657, 13.656644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712429, 24.852648, 13.780814>,  <20.560320, 25.159298, 13.987764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712429, 24.852648, 13.780814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113379, 0.593823, -0.796567,
		0.917898, 0.244254, 0.312735,
		0.380274, -0.766625, -0.517376,
		20.826511, 24.622660, 13.625602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.054022, 25.513102, 13.610328>,  <20.560320, 25.159298, 13.987764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.054022, 25.513102, 13.610328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994482, 25.153234, 13.446161>,  <20.958759, 24.937315, 13.347661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994482, 25.153234, 13.446161>,  <21.054022, 25.513102, 13.610328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994482, 25.153234, 13.446161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008197, 0.416149, -0.909259,
		0.988826, -0.131977, -0.069318,
		-0.148847, -0.899668, -0.410417,
		20.949827, 24.883333, 13.323036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.624971, 25.387470, 13.144527>,  <21.054022, 25.513102, 13.610328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.624971, 25.387470, 13.144527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291265, 25.192202, 13.042002>,  <21.091042, 25.075041, 12.980487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291265, 25.192202, 13.042002>,  <21.624971, 25.387470, 13.144527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291265, 25.192202, 13.042002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174017, 0.674231, -0.717726,
		0.523185, -0.554169, -0.647436,
		-0.834263, -0.488169, -0.256313,
		21.040987, 25.045752, 12.965108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626066, 25.451799, 12.452453>,  <21.624971, 25.387470, 13.144527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626066, 25.451799, 12.452453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.254911, 25.314825, 12.511465>,  <21.032219, 25.232639, 12.546873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.254911, 25.314825, 12.511465>,  <21.626066, 25.451799, 12.452453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.254911, 25.314825, 12.511465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307458, 0.478829, -0.822309,
		0.210946, -0.808369, -0.549583,
		-0.927886, -0.342437, 0.147532,
		20.976545, 25.212093, 12.555725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371178, 25.174503, 11.897635>,  <21.626066, 25.451799, 12.452453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371178, 25.174503, 11.897635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047960, 25.297523, 12.098623>,  <20.854029, 25.371336, 12.219216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047960, 25.297523, 12.098623>,  <21.371178, 25.174503, 11.897635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047960, 25.297523, 12.098623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389278, 0.361442, -0.847244,
		-0.442183, -0.880212, -0.172340,
		-0.808045, 0.307549, 0.502471,
		20.805546, 25.389788, 12.249365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513325, 24.398560, 12.019883>,  <21.371178, 25.174503, 11.897635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513325, 24.398560, 12.019883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805283, 24.277573, 12.265082>,  <21.980457, 24.204981, 12.412202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805283, 24.277573, 12.265082>,  <21.513325, 24.398560, 12.019883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805283, 24.277573, 12.265082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092238, 0.932153, 0.350118,
		-0.677308, -0.199007, 0.708273,
		0.729895, -0.302468, 0.612998,
		22.024252, 24.186832, 12.448982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817715, 24.368504, 11.806058>,  <21.513325, 24.398560, 12.019883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817715, 24.368504, 11.806058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543848, 24.470928, 11.533099>,  <20.379528, 24.532383, 11.369324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543848, 24.470928, 11.533099>,  <20.817715, 24.368504, 11.806058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.543848, 24.470928, 11.533099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209001, 0.827964, 0.520380,
		0.698249, 0.498908, -0.513362,
		-0.684666, 0.256061, -0.682396,
		20.338448, 24.547747, 11.328381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927200, 23.777365, 11.410395>,  <20.817715, 24.368504, 11.806058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927200, 23.777365, 11.410395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773479, 23.421843, 11.310528>,  <20.681246, 23.208529, 11.250607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773479, 23.421843, 11.310528>,  <20.927200, 23.777365, 11.410395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773479, 23.421843, 11.310528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079287, -0.301210, 0.950256,
		-0.919796, 0.345391, 0.186227,
		-0.384303, -0.888807, -0.249667,
		20.658188, 23.155201, 11.235628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249516, 23.702826, 11.647354>,  <20.927200, 23.777365, 11.410395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249516, 23.702826, 11.647354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431400, 23.346712, 11.637290>,  <20.540531, 23.133043, 11.631251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431400, 23.346712, 11.637290>,  <20.249516, 23.702826, 11.647354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431400, 23.346712, 11.637290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169983, -0.114479, 0.978775,
		-0.874267, -0.440783, -0.203388,
		0.454712, -0.890283, -0.025160,
		20.567814, 23.079628, 11.629742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.860149, 23.201965, 12.028161>,  <20.249516, 23.702826, 11.647354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.860149, 23.201965, 12.028161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240042, 23.078333, 12.048073>,  <20.467978, 23.004152, 12.060019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240042, 23.078333, 12.048073>,  <19.860149, 23.201965, 12.028161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240042, 23.078333, 12.048073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163420, -0.353832, 0.920922,
		-0.267028, -0.882763, -0.386556,
		0.949731, -0.309083, 0.049778,
		20.524961, 22.985607, 12.063006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911863, 22.452478, 12.045069>,  <19.860149, 23.201965, 12.028161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911863, 22.452478, 12.045069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228706, 22.632339, 12.210178>,  <20.418812, 22.740255, 12.309244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228706, 22.632339, 12.210178>,  <19.911863, 22.452478, 12.045069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228706, 22.632339, 12.210178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070501, -0.604328, 0.793611,
		0.606299, -0.657724, -0.446990,
		0.792105, 0.449653, 0.412773,
		20.466337, 22.767235, 12.334010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345509, 22.238548, 11.519108>,  <19.911863, 22.452478, 12.045069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345509, 22.238548, 11.519108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994837, 22.067411, 11.607098>,  <18.784433, 21.964729, 11.659892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994837, 22.067411, 11.607098>,  <19.345509, 22.238548, 11.519108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994837, 22.067411, 11.607098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457303, -0.599155, 0.657182,
		-0.149370, 0.676732, 0.720918,
		-0.876677, -0.427841, 0.219976,
		18.731834, 21.939058, 11.673090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110928, 22.377319, 12.198174>,  <19.345509, 22.238548, 11.519108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110928, 22.377319, 12.198174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006710, 22.016932, 12.059394>,  <18.944180, 21.800699, 11.976126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006710, 22.016932, 12.059394>,  <19.110928, 22.377319, 12.198174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006710, 22.016932, 12.059394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671236, -0.427340, 0.605658,
		-0.693944, -0.075086, 0.716103,
		-0.260543, -0.900967, -0.346951,
		18.928547, 21.746641, 11.955309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101164, 21.890902, 12.875355>,  <19.110928, 22.377319, 12.198174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101164, 21.890902, 12.875355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183752, 21.676678, 12.547807>,  <19.233305, 21.548143, 12.351278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183752, 21.676678, 12.547807>,  <19.101164, 21.890902, 12.875355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183752, 21.676678, 12.547807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821656, -0.359512, 0.442302,
		-0.531272, -0.764152, 0.365817,
		0.206470, -0.535559, -0.818869,
		19.245693, 21.516010, 12.302146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340105, 21.297886, 13.221332>,  <19.101164, 21.890902, 12.875355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340105, 21.297886, 13.221332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459820, 21.274063, 12.840410>,  <19.531649, 21.259769, 12.611857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459820, 21.274063, 12.840410>,  <19.340105, 21.297886, 13.221332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459820, 21.274063, 12.840410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795098, -0.536186, 0.283414,
		-0.527490, -0.841997, -0.113123,
		0.299288, -0.059554, -0.952302,
		19.549606, 21.256197, 12.554719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499193, 20.602934, 13.161569>,  <19.340105, 21.297886, 13.221332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499193, 20.602934, 13.161569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682503, 20.781996, 12.854429>,  <19.792488, 20.889433, 12.670145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682503, 20.781996, 12.854429>,  <19.499193, 20.602934, 13.161569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682503, 20.781996, 12.854429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822904, -0.540165, 0.176216,
		-0.335882, -0.712621, -0.615918,
		0.458272, 0.447654, -0.767849,
		19.819984, 20.916292, 12.624075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815350, 20.010511, 12.745315>,  <19.499193, 20.602934, 13.161569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815350, 20.010511, 12.745315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030294, 20.338776, 12.667590>,  <20.159262, 20.535734, 12.620955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030294, 20.338776, 12.667590>,  <19.815350, 20.010511, 12.745315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030294, 20.338776, 12.667590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830628, -0.475142, 0.290340,
		0.145945, -0.317419, -0.936988,
		0.537362, 0.820661, -0.194312,
		20.191504, 20.584974, 12.609297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491488, 19.766235, 12.479331>,  <19.815350, 20.010511, 12.745315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491488, 19.766235, 12.479331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560863, 20.146317, 12.582897>,  <20.602489, 20.374365, 12.645037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560863, 20.146317, 12.582897>,  <20.491488, 19.766235, 12.479331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560863, 20.146317, 12.582897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962821, -0.218884, 0.158320,
		0.207108, 0.221830, -0.952837,
		0.173441, 0.950201, 0.258915,
		20.612896, 20.431377, 12.660572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099960, 19.896347, 12.114367>,  <20.491488, 19.766235, 12.479331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099960, 19.896347, 12.114367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083950, 20.170582, 12.405123>,  <21.074345, 20.335123, 12.579576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083950, 20.170582, 12.405123>,  <21.099960, 19.896347, 12.114367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083950, 20.170582, 12.405123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933111, -0.234527, 0.272581,
		0.357353, 0.689181, -0.630340,
		-0.040026, 0.685585, 0.726892,
		21.071941, 20.376257, 12.623190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823099, 20.138855, 12.212683>,  <21.099960, 19.896347, 12.114367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823099, 20.138855, 12.212683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642330, 20.203829, 12.563540>,  <21.533869, 20.242813, 12.774055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642330, 20.203829, 12.563540>,  <21.823099, 20.138855, 12.212683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642330, 20.203829, 12.563540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859091, -0.185590, 0.476989,
		0.240269, 0.969108, -0.055674,
		-0.451922, 0.162435, 0.877144,
		21.506754, 20.252560, 12.826684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.354021, 20.506149, 12.543033>,  <21.823099, 20.138855, 12.212683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.354021, 20.506149, 12.543033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092640, 20.366301, 12.811587>,  <21.935810, 20.282391, 12.972720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092640, 20.366301, 12.811587>,  <22.354021, 20.506149, 12.543033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092640, 20.366301, 12.811587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756507, -0.270786, 0.595291,
		-0.026325, 0.896905, 0.441439,
		-0.653455, -0.349623, 0.671387,
		21.896603, 20.261414, 13.013003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.587946, 20.725464, 13.122776>,  <22.354021, 20.506149, 12.543033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.587946, 20.725464, 13.122776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.358034, 20.429720, 13.263048>,  <22.220087, 20.252274, 13.347212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.358034, 20.429720, 13.263048>,  <22.587946, 20.725464, 13.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358034, 20.429720, 13.263048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750673, -0.305807, 0.585639,
		-0.325756, 0.599860, 0.730788,
		-0.574781, -0.739358, 0.350680,
		22.185600, 20.207912, 13.368253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679756, 20.679417, 13.837320>,  <22.587946, 20.725464, 13.122776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679756, 20.679417, 13.837320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526350, 20.317259, 13.764465>,  <22.434307, 20.099964, 13.720753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526350, 20.317259, 13.764465>,  <22.679756, 20.679417, 13.837320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526350, 20.317259, 13.764465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651756, -0.405064, 0.641199,
		-0.654317, 0.127200, 0.745446,
		-0.383514, -0.905397, -0.182137,
		22.411295, 20.045639, 13.709825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603327, 20.403770, 14.501316>,  <22.679756, 20.679417, 13.837320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603327, 20.403770, 14.501316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588314, 20.094872, 14.247632>,  <22.579306, 19.909533, 14.095422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588314, 20.094872, 14.247632>,  <22.603327, 20.403770, 14.501316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588314, 20.094872, 14.247632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557824, -0.542763, 0.627886,
		-0.829110, -0.330212, 0.451150,
		-0.037532, -0.772249, -0.634211,
		22.577055, 19.863197, 14.057369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596363, 19.872595, 14.917191>,  <22.603327, 20.403770, 14.501316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596363, 19.872595, 14.917191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734421, 19.722961, 14.572880>,  <22.817255, 19.633183, 14.366293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734421, 19.722961, 14.572880>,  <22.596363, 19.872595, 14.917191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734421, 19.722961, 14.572880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720166, -0.482573, 0.498482,
		-0.601861, -0.791951, 0.102846,
		0.345142, -0.374083, -0.860778,
		22.837963, 19.610737, 14.314647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.381746, 19.154213, 14.863729>,  <22.596363, 19.872595, 14.917191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.381746, 19.154213, 14.863729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719740, 19.188690, 14.652611>,  <22.922537, 19.209375, 14.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719740, 19.188690, 14.652611>,  <22.381746, 19.154213, 14.863729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719740, 19.188690, 14.652611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480530, -0.555519, 0.678594,
		-0.234712, -0.827024, -0.510824,
		0.844986, 0.086192, -0.527797,
		22.973236, 19.214548, 14.494271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497038, 18.573895, 14.941776>,  <22.381746, 19.154213, 14.863729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497038, 18.573895, 14.941776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832489, 18.753725, 14.818755>,  <23.033760, 18.861624, 14.744943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832489, 18.753725, 14.818755>,  <22.497038, 18.573895, 14.941776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832489, 18.753725, 14.818755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523418, -0.508800, 0.683488,
		0.150797, -0.734169, -0.662009,
		0.838626, 0.449575, -0.307552,
		23.084076, 18.888597, 14.726490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994110, 18.083891, 15.021755>,  <22.497038, 18.573895, 14.941776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994110, 18.083891, 15.021755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.214872, 18.416927, 15.003030>,  <23.347330, 18.616749, 14.991795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.214872, 18.416927, 15.003030>,  <22.994110, 18.083891, 15.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.214872, 18.416927, 15.003030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710313, -0.439955, 0.549450,
		0.436872, -0.336496, -0.834215,
		0.551904, 0.832592, -0.046813,
		23.380444, 18.666704, 14.988986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614746, 17.858641, 14.778066>,  <22.994110, 18.083891, 15.021755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614746, 17.858641, 14.778066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.713934, 18.199795, 14.961849>,  <23.773447, 18.404488, 15.072119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.713934, 18.199795, 14.961849>,  <23.614746, 17.858641, 14.778066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.713934, 18.199795, 14.961849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865093, -0.408409, 0.291232,
		0.436034, 0.325257, -0.839096,
		0.247970, 0.852883, 0.459458,
		23.788324, 18.455660, 15.099687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307987, 17.999855, 14.660280>,  <23.614746, 17.858641, 14.778066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307987, 17.999855, 14.660280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258690, 18.232313, 14.982046>,  <24.229111, 18.371788, 15.175106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258690, 18.232313, 14.982046>,  <24.307987, 17.999855, 14.660280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258690, 18.232313, 14.982046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894594, -0.285805, 0.343537,
		0.429550, 0.761963, -0.484663,
		-0.123244, 0.581143, 0.804415,
		24.221716, 18.406656, 15.223371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954533, 18.322308, 14.723940>,  <24.307987, 17.999855, 14.660280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954533, 18.322308, 14.723940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785231, 18.334549, 15.086137>,  <24.683649, 18.341894, 15.303455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785231, 18.334549, 15.086137>,  <24.954533, 18.322308, 14.723940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785231, 18.334549, 15.086137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895334, -0.138844, 0.423200,
		0.138675, 0.989841, 0.031364,
		-0.423256, 0.030606, 0.905493,
		24.658255, 18.343731, 15.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303497, 17.650494, 14.893749>,  <24.954533, 18.322308, 14.723940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303497, 17.650494, 14.893749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130112, 17.423500, 14.613729>,  <25.026081, 17.287304, 14.445718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130112, 17.423500, 14.613729>,  <25.303497, 17.650494, 14.893749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130112, 17.423500, 14.613729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416940, -0.814968, 0.402479,
		-0.798919, -0.117419, 0.589866,
		-0.433463, -0.567486, -0.700049,
		25.000072, 17.253254, 14.403714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023886, 17.032526, 15.159467>,  <25.303497, 17.650494, 14.893749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023886, 17.032526, 15.159467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057230, 16.926970, 14.775089>,  <25.077236, 16.863636, 14.544463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057230, 16.926970, 14.775089>,  <25.023886, 17.032526, 15.159467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057230, 16.926970, 14.775089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534521, -0.802001, 0.266612,
		-0.841034, -0.535870, 0.074198,
		0.083363, -0.263890, -0.960944,
		25.082239, 16.847803, 14.486806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684258, 16.323929, 14.884501>,  <25.023886, 17.032526, 15.159467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684258, 16.323929, 14.884501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032433, 16.425898, 14.716048>,  <25.241337, 16.487080, 14.614976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032433, 16.425898, 14.716048>,  <24.684258, 16.323929, 14.884501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032433, 16.425898, 14.716048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338719, -0.930921, 0.136583,
		-0.357224, -0.261533, -0.896655,
		0.870437, 0.254923, -0.421134,
		25.293564, 16.502375, 14.589708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847034, 15.824185, 14.278914>,  <24.684258, 16.323929, 14.884501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847034, 15.824185, 14.278914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151049, 15.995927, 14.474056>,  <25.333456, 16.098972, 14.591142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151049, 15.995927, 14.474056>,  <24.847034, 15.824185, 14.278914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151049, 15.995927, 14.474056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320140, -0.900634, 0.293885,
		0.565560, -0.067180, -0.821966,
		0.760034, 0.429354, 0.487855,
		25.379059, 16.124733, 14.620413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302219, 15.397309, 14.071501>,  <24.847034, 15.824185, 14.278914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302219, 15.397309, 14.071501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354824, 15.580320, 14.423267>,  <25.386387, 15.690127, 14.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354824, 15.580320, 14.423267>,  <25.302219, 15.397309, 14.071501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354824, 15.580320, 14.423267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381343, -0.842206, 0.381140,
		0.915031, 0.285234, -0.285236,
		0.131514, 0.457527, 0.879416,
		25.394278, 15.717579, 14.687092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881088, 15.030694, 14.559637>,  <25.302219, 15.397309, 14.071501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881088, 15.030694, 14.559637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616598, 15.226616, 14.786924>,  <25.457905, 15.344170, 14.923297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616598, 15.226616, 14.786924>,  <25.881088, 15.030694, 14.559637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616598, 15.226616, 14.786924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016313, -0.766644, 0.641865,
		0.750010, 0.415148, 0.514914,
		-0.661225, 0.489805, 0.568219,
		25.418230, 15.373557, 14.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640665, 14.871154, 14.679774>,  <25.881088, 15.030694, 14.559637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640665, 14.871154, 14.679774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737867, 14.716022, 15.035422>,  <26.796188, 14.622942, 15.248812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737867, 14.716022, 15.035422>,  <26.640665, 14.871154, 14.679774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737867, 14.716022, 15.035422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155630, -0.920310, -0.358900,
		0.957459, -0.051159, -0.283999,
		0.243006, -0.387830, 0.889121,
		26.810768, 14.599672, 15.302158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.011209, 19.981960, 24.939789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.639973, 19.880716, 25.049028>,  <11.417231, 19.819969, 25.114573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.639973, 19.880716, 25.049028>,  <12.011209, 19.981960, 24.939789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.639973, 19.880716, 25.049028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243971, -0.140722, -0.959519,
		0.281294, -0.957148, 0.068851,
		-0.928090, -0.253109, 0.273100,
		11.361546, 19.804783, 25.130959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977696, 19.234539, 24.816578>,  <12.011209, 19.981960, 24.939789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977696, 19.234539, 24.816578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.622172, 19.417559, 24.806261>,  <11.408858, 19.527370, 24.800072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.622172, 19.417559, 24.806261>,  <11.977696, 19.234539, 24.816578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.622172, 19.417559, 24.806261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122753, -0.291918, -0.948533,
		-0.441532, -0.839899, 0.315625,
		-0.888809, 0.457552, -0.025791,
		11.355530, 19.554823, 24.798525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.522404, 18.763418, 24.540028>,  <11.977696, 19.234539, 24.816578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.522404, 18.763418, 24.540028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.356594, 19.119263, 24.463339>,  <11.257108, 19.332769, 24.417326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.356594, 19.119263, 24.463339>,  <11.522404, 18.763418, 24.540028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.356594, 19.119263, 24.463339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056401, -0.235383, -0.970265,
		-0.908289, -0.391385, 0.147747,
		-0.414525, 0.889614, -0.191722,
		11.232237, 19.386147, 24.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.989404, 18.644411, 24.043867>,  <11.522404, 18.763418, 24.540028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.989404, 18.644411, 24.043867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.085608, 19.031715, 24.016665>,  <11.143332, 19.264097, 24.000343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.085608, 19.031715, 24.016665>,  <10.989404, 18.644411, 24.043867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.085608, 19.031715, 24.016665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054480, -0.056485, -0.996916,
		-0.969116, 0.243476, 0.039166,
		0.240513, 0.968261, -0.068005,
		11.157763, 19.322193, 23.996264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.928579, 18.684877, 23.294086>,  <10.989404, 18.644411, 24.043867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.928579, 18.684877, 23.294086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.055145, 19.048529, 23.402430>,  <11.131085, 19.266720, 23.467436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.055145, 19.048529, 23.402430>,  <10.928579, 18.684877, 23.294086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055145, 19.048529, 23.402430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247179, 0.196650, -0.948805,
		-0.915851, 0.367167, -0.162495,
		0.316415, 0.909130, 0.270859,
		11.150070, 19.321268, 23.483686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942197, 18.988827, 22.699825>,  <10.928579, 18.684877, 23.294086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942197, 18.988827, 22.699825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.141265, 19.254004, 22.923550>,  <11.260706, 19.413111, 23.057785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.141265, 19.254004, 22.923550>,  <10.942197, 18.988827, 22.699825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141265, 19.254004, 22.923550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437642, 0.364814, -0.821815,
		-0.748862, 0.653771, -0.108575,
		0.497669, 0.662943, 0.559313,
		11.290565, 19.452887, 23.091343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.814900, 19.572905, 22.382151>,  <10.942197, 18.988827, 22.699825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.814900, 19.572905, 22.382151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.163924, 19.588890, 22.576899>,  <11.373339, 19.598482, 22.693747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.163924, 19.588890, 22.576899>,  <10.814900, 19.572905, 22.382151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.163924, 19.588890, 22.576899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473260, 0.177895, -0.862774,
		-0.121093, 0.983238, 0.136309,
		0.872561, 0.039966, 0.486868,
		11.425693, 19.600880, 22.722960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.175378, 20.109045, 22.089394>,  <10.814900, 19.572905, 22.382151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.175378, 20.109045, 22.089394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.439279, 19.852524, 22.246090>,  <11.597619, 19.698612, 22.340107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.439279, 19.852524, 22.246090>,  <11.175378, 20.109045, 22.089394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.439279, 19.852524, 22.246090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576540, 0.097593, -0.811220,
		0.482006, 0.761057, 0.434123,
		0.659752, -0.641302, 0.391739,
		11.637204, 19.660133, 22.363611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797100, 20.380499, 22.025099>,  <11.175378, 20.109045, 22.089394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797100, 20.380499, 22.025099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.903109, 19.996462, 22.060844>,  <11.966714, 19.766039, 22.082293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.903109, 19.996462, 22.060844>,  <11.797100, 20.380499, 22.025099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903109, 19.996462, 22.060844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655165, 0.111297, -0.747242,
		0.707476, 0.256584, 0.658516,
		0.265021, -0.960093, 0.089365,
		11.982615, 19.708435, 22.087654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462754, 20.299202, 21.734013>,  <11.797100, 20.380499, 22.025099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462754, 20.299202, 21.734013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.380133, 19.909832, 21.773565>,  <12.330560, 19.676210, 21.797297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.380133, 19.909832, 21.773565>,  <12.462754, 20.299202, 21.734013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380133, 19.909832, 21.773565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632187, -0.209908, -0.745840,
		0.746776, -0.091547, 0.658745,
		-0.206555, -0.973426, 0.098880,
		12.318166, 19.617804, 21.803228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.066192, 19.941536, 21.850729>,  <12.462754, 20.299202, 21.734013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.066192, 19.941536, 21.850729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.828188, 19.653700, 21.707535>,  <12.685386, 19.480999, 21.621618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.828188, 19.653700, 21.707535>,  <13.066192, 19.941536, 21.850729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828188, 19.653700, 21.707535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709219, -0.260546, -0.655076,
		0.378115, -0.643665, 0.665375,
		-0.595010, -0.719591, -0.357983,
		12.649685, 19.437822, 21.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536798, 19.424623, 21.561810>,  <13.066192, 19.941536, 21.850729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536798, 19.424623, 21.561810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.187185, 19.311861, 21.403519>,  <12.977418, 19.244204, 21.308544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.187185, 19.311861, 21.403519>,  <13.536798, 19.424623, 21.561810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187185, 19.311861, 21.403519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485651, -0.482409, -0.728989,
		0.014602, -0.829344, 0.558547,
		-0.874031, -0.281904, -0.395728,
		12.924976, 19.227289, 21.284800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547323, 18.688524, 21.506847>,  <13.536798, 19.424623, 21.561810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547323, 18.688524, 21.506847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.311318, 18.850973, 21.227720>,  <13.169715, 18.948442, 21.060244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.311318, 18.850973, 21.227720>,  <13.547323, 18.688524, 21.506847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.311318, 18.850973, 21.227720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467300, -0.533045, -0.705332,
		-0.658419, -0.742246, 0.124723,
		-0.590013, 0.406121, -0.697818,
		13.134315, 18.972809, 21.018375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287263, 18.113726, 21.050814>,  <13.547323, 18.688524, 21.506847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287263, 18.113726, 21.050814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.279480, 18.451200, 20.836222>,  <13.274811, 18.653687, 20.707466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.279480, 18.451200, 20.836222>,  <13.287263, 18.113726, 21.050814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279480, 18.451200, 20.836222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457313, -0.469651, -0.755177,
		-0.889093, -0.260032, -0.376692,
		-0.019457, 0.843689, -0.536480,
		13.273643, 18.704308, 20.675278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.259995, 17.792828, 20.446461>,  <13.287263, 18.113726, 21.050814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.259995, 17.792828, 20.446461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.283490, 18.177034, 20.337679>,  <13.297587, 18.407558, 20.272409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.283490, 18.177034, 20.337679>,  <13.259995, 17.792828, 20.446461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283490, 18.177034, 20.337679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358663, -0.274541, -0.892182,
		-0.931617, -0.045134, -0.360628,
		0.058739, 0.960515, -0.271955,
		13.301112, 18.465189, 20.256092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892622, 17.921591, 19.791935>,  <13.259995, 17.792828, 20.446461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892622, 17.921591, 19.791935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.195732, 18.175627, 19.851847>,  <13.377599, 18.328049, 19.887794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.195732, 18.175627, 19.851847>,  <12.892622, 17.921591, 19.791935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195732, 18.175627, 19.851847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425704, -0.307214, -0.851115,
		-0.494521, 0.708716, -0.503160,
		0.757776, 0.635091, 0.149779,
		13.423065, 18.366154, 19.896780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.953203, 18.280357, 19.158222>,  <12.892622, 17.921591, 19.791935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.953203, 18.280357, 19.158222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.294585, 18.345224, 19.356340>,  <13.499414, 18.384146, 19.475212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.294585, 18.345224, 19.356340>,  <12.953203, 18.280357, 19.158222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294585, 18.345224, 19.356340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519749, -0.194755, -0.831824,
		-0.038435, 0.967353, -0.250501,
		0.853454, 0.162169, 0.495295,
		13.550621, 18.393875, 19.504929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336993, 18.753843, 18.799845>,  <12.953203, 18.280357, 19.158222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336993, 18.753843, 18.799845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.618473, 18.590551, 19.032450>,  <13.787361, 18.492577, 19.172012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.618473, 18.590551, 19.032450>,  <13.336993, 18.753843, 18.799845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618473, 18.590551, 19.032450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466920, -0.351193, -0.811572,
		0.535529, 0.842623, -0.056524,
		0.703700, -0.408229, 0.581512,
		13.829583, 18.468082, 19.206903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052451, 18.852274, 18.471209>,  <13.336993, 18.753843, 18.799845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052451, 18.852274, 18.471209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.104815, 18.546499, 18.723717>,  <14.136232, 18.363035, 18.875221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.104815, 18.546499, 18.723717>,  <14.052451, 18.852274, 18.471209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.104815, 18.546499, 18.723717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558704, -0.469120, -0.683942,
		0.818970, 0.442227, 0.365681,
		0.130909, -0.764436, 0.631269,
		14.144088, 18.317169, 18.913097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865548, 18.703661, 18.546822>,  <14.052451, 18.852274, 18.471209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865548, 18.703661, 18.546822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652583, 18.382036, 18.652668>,  <14.524804, 18.189062, 18.716175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652583, 18.382036, 18.652668>,  <14.865548, 18.703661, 18.546822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652583, 18.382036, 18.652668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400547, -0.514699, -0.758055,
		0.745721, -0.297606, 0.596096,
		-0.532411, -0.804062, 0.264617,
		14.492860, 18.140818, 18.732054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394672, 18.187424, 18.541231>,  <14.865548, 18.703661, 18.546822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394672, 18.187424, 18.541231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.045881, 17.992540, 18.522118>,  <14.836607, 17.875610, 18.510651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.045881, 17.992540, 18.522118>,  <15.394672, 18.187424, 18.541231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045881, 17.992540, 18.522118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345160, -0.542645, -0.765768,
		0.347160, -0.684225, 0.641339,
		-0.871978, -0.487208, -0.047782,
		14.784288, 17.846378, 18.507782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594586, 17.521372, 18.271109>,  <15.394672, 18.187424, 18.541231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594586, 17.521372, 18.271109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.202934, 17.548983, 18.194649>,  <14.967943, 17.565550, 18.148773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.202934, 17.548983, 18.194649>,  <15.594586, 17.521372, 18.271109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202934, 17.548983, 18.194649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122120, -0.551971, -0.824873,
		-0.162446, -0.831002, 0.532022,
		-0.979131, 0.069027, -0.191148,
		14.909195, 17.569691, 18.137304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408747, 17.695841, 18.387087>,  <15.594586, 17.521372, 18.271109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408747, 17.695841, 18.387087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.793028, 17.765045, 18.473909>,  <17.023598, 17.806568, 18.526003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.793028, 17.765045, 18.473909>,  <16.408747, 17.695841, 18.387087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793028, 17.765045, 18.473909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272928, 0.731224, 0.625157,
		-0.050555, -0.659832, 0.749710,
		0.960705, 0.173012, 0.217054,
		17.081240, 17.816950, 18.539026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557932, 17.580269, 19.170633>,  <16.408747, 17.695841, 18.387087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557932, 17.580269, 19.170633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.799473, 17.853138, 19.005707>,  <16.944397, 18.016859, 18.906752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.799473, 17.853138, 19.005707>,  <16.557932, 17.580269, 19.170633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799473, 17.853138, 19.005707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268902, 0.661290, 0.700277,
		0.750368, -0.311992, 0.582759,
		0.603853, 0.682171, -0.412316,
		16.980629, 18.057789, 18.882011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803371, 17.856760, 19.783154>,  <16.557932, 17.580269, 19.170633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803371, 17.856760, 19.783154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.915480, 18.114056, 19.498142>,  <16.982744, 18.268433, 19.327135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.915480, 18.114056, 19.498142>,  <16.803371, 17.856760, 19.783154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915480, 18.114056, 19.498142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040053, 0.733793, 0.678191,
		0.959086, -0.218614, 0.179895,
		0.280268, 0.643238, -0.712527,
		16.999559, 18.307026, 19.284384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349558, 18.215500, 20.109524>,  <16.803371, 17.856760, 19.783154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349558, 18.215500, 20.109524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.211840, 18.461475, 19.825747>,  <17.129210, 18.609060, 19.655479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.211840, 18.461475, 19.825747>,  <17.349558, 18.215500, 20.109524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211840, 18.461475, 19.825747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075574, 0.735039, 0.673800,
		0.935815, 0.285601, -0.206596,
		-0.344294, 0.614939, -0.709444,
		17.108551, 18.645958, 19.612913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707199, 18.835541, 20.206419>,  <17.349558, 18.215500, 20.109524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707199, 18.835541, 20.206419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.400976, 18.936728, 19.969799>,  <17.217243, 18.997440, 19.827827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.400976, 18.936728, 19.969799>,  <17.707199, 18.835541, 20.206419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400976, 18.936728, 19.969799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239395, 0.741430, 0.626874,
		0.597172, 0.621521, -0.507047,
		-0.765555, 0.252967, -0.591551,
		17.171310, 19.012617, 19.792334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776239, 19.579254, 20.095043>,  <17.707199, 18.835541, 20.206419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776239, 19.579254, 20.095043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.394785, 19.463003, 20.063761>,  <17.165913, 19.393251, 20.044991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.394785, 19.463003, 20.063761>,  <17.776239, 19.579254, 20.095043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394785, 19.463003, 20.063761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280448, 0.763791, 0.581354,
		-0.109226, 0.576332, -0.809883,
		-0.953635, -0.290629, -0.078206,
		17.108694, 19.375814, 20.040298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394129, 20.158424, 20.106884>,  <17.776239, 19.579254, 20.095043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394129, 20.158424, 20.106884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.089657, 19.905891, 20.166252>,  <16.906975, 19.754372, 20.201874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.089657, 19.905891, 20.166252>,  <17.394129, 20.158424, 20.106884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089657, 19.905891, 20.166252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489390, 0.709312, 0.507320,
		-0.425565, 0.313524, -0.848880,
		-0.761178, -0.631331, 0.148423,
		16.861303, 19.716492, 20.210779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886059, 20.615713, 20.298012>,  <17.394129, 20.158424, 20.106884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886059, 20.615713, 20.298012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.756348, 20.260803, 20.429216>,  <16.678520, 20.047857, 20.507938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.756348, 20.260803, 20.429216>,  <16.886059, 20.615713, 20.298012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.756348, 20.260803, 20.429216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599985, 0.460993, 0.653838,
		-0.731343, 0.015225, -0.681840,
		-0.324278, -0.887273, 0.328010,
		16.659063, 19.994621, 20.527618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203693, 20.683125, 20.345020>,  <16.886059, 20.615713, 20.298012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203693, 20.683125, 20.345020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253523, 20.357731, 20.572254>,  <16.283421, 20.162495, 20.708595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253523, 20.357731, 20.572254>,  <16.203693, 20.683125, 20.345020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253523, 20.357731, 20.572254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733855, 0.309798, 0.604551,
		-0.667786, -0.492205, -0.558387,
		0.124576, -0.813486, 0.568086,
		16.290895, 20.113686, 20.742680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534719, 20.414206, 20.587315>,  <16.203693, 20.683125, 20.345020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534719, 20.414206, 20.587315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.729980, 20.205975, 20.867516>,  <15.847137, 20.081036, 21.035637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.729980, 20.205975, 20.867516>,  <15.534719, 20.414206, 20.587315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729980, 20.205975, 20.867516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493875, 0.496993, 0.713502,
		-0.719578, -0.694260, -0.014491,
		0.488155, -0.520577, 0.700503,
		15.876427, 20.049801, 21.077667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994318, 20.127012, 21.024288>,  <15.534719, 20.414206, 20.587315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994318, 20.127012, 21.024288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.341275, 20.165997, 21.219482>,  <15.549450, 20.189386, 21.336599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.341275, 20.165997, 21.219482>,  <14.994318, 20.127012, 21.024288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341275, 20.165997, 21.219482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460073, 0.530762, 0.711776,
		-0.189634, -0.841899, 0.505218,
		0.867394, 0.097461, 0.487985,
		15.601494, 20.195234, 21.365877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.704416, 19.943390, 21.680763>,  <14.994318, 20.127012, 21.024288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.704416, 19.943390, 21.680763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.071539, 20.090073, 21.741634>,  <15.291812, 20.178083, 21.778156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.071539, 20.090073, 21.741634>,  <14.704416, 19.943390, 21.680763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071539, 20.090073, 21.741634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306534, 0.410895, 0.858605,
		0.252329, -0.834680, 0.489530,
		0.917806, 0.366708, 0.152177,
		15.346881, 20.200085, 21.787287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.094022, 19.566000, 22.124502>,  <14.704416, 19.943390, 21.680763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.094022, 19.566000, 22.124502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.171688, 19.958340, 22.130650>,  <15.218287, 20.193743, 22.134338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.171688, 19.958340, 22.130650>,  <15.094022, 19.566000, 22.124502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171688, 19.958340, 22.130650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299814, 0.044420, 0.952963,
		0.934030, -0.189640, 0.302697,
		0.194165, 0.980849, 0.015367,
		15.229938, 20.252594, 22.135260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560439, 19.609423, 22.603172>,  <15.094022, 19.566000, 22.124502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560439, 19.609423, 22.603172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.409307, 19.975729, 22.548599>,  <15.318627, 20.195513, 22.515856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.409307, 19.975729, 22.548599>,  <15.560439, 19.609423, 22.603172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409307, 19.975729, 22.548599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112998, 0.100646, 0.988485,
		0.918953, 0.388897, 0.065452,
		-0.377831, 0.915767, -0.136434,
		15.295958, 20.250460, 22.507669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936236, 20.046389, 23.104355>,  <15.560439, 19.609423, 22.603172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936236, 20.046389, 23.104355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.589396, 20.225672, 23.017410>,  <15.381291, 20.333241, 22.965244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.589396, 20.225672, 23.017410>,  <15.936236, 20.046389, 23.104355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589396, 20.225672, 23.017410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154659, 0.172551, 0.972783,
		0.473513, 0.877119, -0.080300,
		-0.867102, 0.448206, -0.217359,
		15.329265, 20.360134, 22.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887447, 20.662611, 23.606558>,  <15.936236, 20.046389, 23.104355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887447, 20.662611, 23.606558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.537237, 20.529741, 23.466208>,  <15.327111, 20.450020, 23.381996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.537237, 20.529741, 23.466208>,  <15.887447, 20.662611, 23.606558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537237, 20.529741, 23.466208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383367, 0.035578, 0.922911,
		-0.294084, 0.942547, -0.158494,
		-0.875525, -0.332175, -0.350878,
		15.274580, 20.430088, 23.360945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454884, 20.949686, 24.088320>,  <15.887447, 20.662611, 23.606558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454884, 20.949686, 24.088320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.203651, 20.729586, 23.868233>,  <15.052912, 20.597525, 23.736181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.203651, 20.729586, 23.868233>,  <15.454884, 20.949686, 24.088320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203651, 20.729586, 23.868233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614754, -0.082621, 0.784379,
		-0.477065, 0.830902, -0.286376,
		-0.628082, -0.550251, -0.550216,
		15.015227, 20.564510, 23.703169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734926, 21.272678, 23.976727>,  <15.454884, 20.949686, 24.088320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734926, 21.272678, 23.976727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706706, 20.874670, 23.948578>,  <14.689774, 20.635864, 23.931688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706706, 20.874670, 23.948578>,  <14.734926, 21.272678, 23.976727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706706, 20.874670, 23.948578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585931, -0.015754, 0.810208,
		-0.807284, 0.098393, -0.581903,
		-0.070551, -0.995023, -0.070369,
		14.685541, 20.576162, 23.927467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.798726, 21.064671, 23.990086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.024388, 20.751633, 24.095366>,  <14.159786, 20.563810, 24.158533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.024388, 20.751633, 24.095366>,  <13.798726, 21.064671, 23.990086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024388, 20.751633, 24.095366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616099, -0.186782, 0.765202,
		-0.549681, -0.593851, -0.587529,
		0.564156, -0.782594, 0.263201,
		14.193635, 20.516855, 24.174326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.302741, 20.558149, 24.243790>,  <13.798726, 21.064671, 23.990086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.302741, 20.558149, 24.243790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658144, 20.434053, 24.379026>,  <13.871386, 20.359596, 24.460169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658144, 20.434053, 24.379026>,  <13.302741, 20.558149, 24.243790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658144, 20.434053, 24.379026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403418, -0.177058, 0.897722,
		-0.218655, -0.934022, -0.282477,
		0.888506, -0.310248, 0.338087,
		13.924697, 20.340982, 24.480453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.200280, 19.899946, 24.535728>,  <13.302741, 20.558149, 24.243790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.200280, 19.899946, 24.535728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498367, 20.107603, 24.703131>,  <13.677219, 20.232197, 24.803572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498367, 20.107603, 24.703131>,  <13.200280, 19.899946, 24.535728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498367, 20.107603, 24.703131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448237, -0.074673, 0.890791,
		0.493697, -0.851420, 0.177050,
		0.745216, 0.519141, 0.418503,
		13.721932, 20.263346, 24.828682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291128, 19.642473, 25.173506>,  <13.200280, 19.899946, 24.535728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291128, 19.642473, 25.173506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.523026, 19.964502, 25.223703>,  <13.662166, 20.157721, 25.253822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.523026, 19.964502, 25.223703>,  <13.291128, 19.642473, 25.173506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523026, 19.964502, 25.223703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315920, 0.080130, 0.945396,
		0.751059, -0.587736, 0.300794,
		0.579746, 0.805075, 0.125495,
		13.696950, 20.206024, 25.261353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569847, 19.515131, 25.814119>,  <13.291128, 19.642473, 25.173506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569847, 19.515131, 25.814119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.617206, 19.907644, 25.753374>,  <13.645621, 20.143152, 25.716927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.617206, 19.907644, 25.753374>,  <13.569847, 19.515131, 25.814119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617206, 19.907644, 25.753374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308743, 0.181740, 0.933621,
		0.943748, -0.063651, 0.324482,
		0.118397, 0.981284, -0.151865,
		13.652724, 20.202030, 25.707815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158077, 19.786118, 26.293821>,  <13.569847, 19.515131, 25.814119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158077, 19.786118, 26.293821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.918101, 20.092073, 26.199999>,  <13.774116, 20.275646, 26.143705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.918101, 20.092073, 26.199999>,  <14.158077, 19.786118, 26.293821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918101, 20.092073, 26.199999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208606, 0.133480, 0.968848,
		0.772370, 0.630180, 0.079480,
		-0.599939, 0.764890, -0.234556,
		13.738119, 20.321541, 26.129633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427623, 20.271679, 26.648260>,  <14.158077, 19.786118, 26.293821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427623, 20.271679, 26.648260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.064421, 20.398079, 26.538229>,  <13.846499, 20.473919, 26.472210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.064421, 20.398079, 26.538229>,  <14.427623, 20.271679, 26.648260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.064421, 20.398079, 26.538229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271407, 0.056510, 0.960804,
		0.319160, 0.947074, 0.034453,
		-0.908006, 0.316001, -0.275079,
		13.792019, 20.492880, 26.455706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386208, 21.014788, 26.910612>,  <14.427623, 20.271679, 26.648260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386208, 21.014788, 26.910612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.026037, 20.848425, 26.859612>,  <13.809936, 20.748608, 26.829012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.026037, 20.848425, 26.859612>,  <14.386208, 21.014788, 26.910612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026037, 20.848425, 26.859612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283224, 0.338028, 0.897508,
		-0.330181, 0.844250, -0.422164,
		-0.900425, -0.415907, -0.127501,
		13.755910, 20.723654, 26.821362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904562, 21.515331, 27.140938>,  <14.386208, 21.014788, 26.910612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904562, 21.515331, 27.140938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.716442, 21.162838, 27.159895>,  <13.603570, 20.951342, 27.171270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.716442, 21.162838, 27.159895>,  <13.904562, 21.515331, 27.140938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.716442, 21.162838, 27.159895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257516, 0.188402, 0.947729,
		-0.844100, 0.433511, -0.315537,
		-0.470299, -0.881234, 0.047394,
		13.575353, 20.898468, 27.174112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246627, 21.653330, 27.543312>,  <13.904562, 21.515331, 27.140938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246627, 21.653330, 27.543312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.341069, 21.264643, 27.545172>,  <13.397735, 21.031431, 27.546288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.341069, 21.264643, 27.545172>,  <13.246627, 21.653330, 27.543312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341069, 21.264643, 27.545172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252781, -0.056798, 0.965855,
		-0.938273, -0.229220, -0.259042,
		0.236106, -0.971716, 0.004651,
		13.411901, 20.973127, 27.546566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.893489, 21.432739, 28.055655>,  <13.246627, 21.653330, 27.543312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.893489, 21.432739, 28.055655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.136483, 21.117729, 28.014149>,  <13.282280, 20.928724, 27.989244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.136483, 21.117729, 28.014149>,  <12.893489, 21.432739, 28.055655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.136483, 21.117729, 28.014149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070453, -0.183537, 0.980485,
		-0.791200, -0.588319, -0.166979,
		0.607485, -0.787524, -0.103765,
		13.318728, 20.881472, 27.983019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538898, 20.894323, 28.360785>,  <12.893489, 21.432739, 28.055655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538898, 20.894323, 28.360785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.927061, 20.802420, 28.331066>,  <13.159959, 20.747278, 28.313234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.927061, 20.802420, 28.331066>,  <12.538898, 20.894323, 28.360785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927061, 20.802420, 28.331066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072357, -0.016869, 0.997236,
		-0.230377, -0.973102, 0.000255,
		0.970408, -0.229758, -0.074297,
		13.218184, 20.733492, 28.308777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512155, 20.584717, 28.935991>,  <12.538898, 20.894323, 28.360785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512155, 20.584717, 28.935991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.905416, 20.618412, 28.871109>,  <13.141374, 20.638628, 28.832180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.905416, 20.618412, 28.871109>,  <12.512155, 20.584717, 28.935991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905416, 20.618412, 28.871109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170265, -0.099429, 0.980369,
		0.066456, -0.991472, -0.112097,
		0.983155, 0.084238, -0.162205,
		13.200363, 20.643682, 28.822447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850969, 20.117319, 29.388756>,  <12.512155, 20.584717, 28.935991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850969, 20.117319, 29.388756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.168710, 20.352676, 29.328362>,  <13.359354, 20.493891, 29.292126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.168710, 20.352676, 29.328362>,  <12.850969, 20.117319, 29.388756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168710, 20.352676, 29.328362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265825, -0.113210, 0.957351,
		0.546207, -0.800609, -0.246338,
		0.794352, 0.588394, -0.150986,
		13.407016, 20.529194, 29.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.426970, 19.766123, 29.841709>,  <12.850969, 20.117319, 29.388756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.426970, 19.766123, 29.841709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.500730, 20.154856, 29.782999>,  <13.544986, 20.388096, 29.747774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.500730, 20.154856, 29.782999>,  <13.426970, 19.766123, 29.841709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500730, 20.154856, 29.782999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271622, 0.093129, 0.957888,
		0.944573, -0.216501, -0.246798,
		0.184399, 0.971831, -0.146774,
		13.556049, 20.446405, 29.738968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050632, 19.855015, 30.136646>,  <13.426970, 19.766123, 29.841709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050632, 19.855015, 30.136646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.885104, 20.219133, 30.140850>,  <13.785788, 20.437605, 30.143372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.885104, 20.219133, 30.140850>,  <14.050632, 19.855015, 30.136646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885104, 20.219133, 30.140850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217471, 0.087638, 0.972125,
		0.884002, 0.404569, -0.234230,
		-0.413819, 0.910299, 0.010510,
		13.760959, 20.492224, 30.144003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428410, 20.234861, 30.562262>,  <14.050632, 19.855015, 30.136646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428410, 20.234861, 30.562262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.067944, 20.407808, 30.549866>,  <13.851664, 20.511576, 30.542429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.067944, 20.407808, 30.549866>,  <14.428410, 20.234861, 30.562262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.067944, 20.407808, 30.549866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073443, -0.081834, 0.993936,
		0.427210, 0.897976, 0.105501,
		-0.901165, 0.432368, -0.030990,
		13.797594, 20.537519, 30.540569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486497, 20.672388, 31.047886>,  <14.428410, 20.234861, 30.562262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486497, 20.672388, 31.047886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.092295, 20.627764, 30.996763>,  <13.855774, 20.600988, 30.966089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.092295, 20.627764, 30.996763>,  <14.486497, 20.672388, 31.047886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.092295, 20.627764, 30.996763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118479, -0.086613, 0.989172,
		-0.121422, 0.989976, 0.072140,
		-0.985505, -0.111561, -0.127808,
		13.796643, 20.594296, 30.958422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225039, 21.186903, 31.349846>,  <14.486497, 20.672388, 31.047886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225039, 21.186903, 31.349846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.920262, 20.929268, 31.322742>,  <13.737396, 20.774687, 31.306480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.920262, 20.929268, 31.322742>,  <14.225039, 21.186903, 31.349846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920262, 20.929268, 31.322742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145316, 0.068068, 0.987041,
		-0.631131, 0.761915, -0.145460,
		-0.761943, -0.644090, -0.067759,
		13.691679, 20.736040, 31.302414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737560, 21.505909, 31.769682>,  <14.225039, 21.186903, 31.349846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737560, 21.505909, 31.769682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.595202, 21.133936, 31.732658>,  <13.509788, 20.910753, 31.710445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.595202, 21.133936, 31.732658>,  <13.737560, 21.505909, 31.769682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595202, 21.133936, 31.732658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291360, 0.016307, 0.956474,
		-0.887946, 0.367372, -0.276749,
		-0.355895, -0.929931, -0.092558,
		13.488434, 20.854956, 31.704891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091233, 21.540079, 32.113750>,  <13.737560, 21.505909, 31.769682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091233, 21.540079, 32.113750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.211939, 21.158730, 32.115421>,  <13.284362, 20.929920, 32.116425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.211939, 21.158730, 32.115421>,  <13.091233, 21.540079, 32.113750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211939, 21.158730, 32.115421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453590, -0.139714, 0.880191,
		-0.838567, -0.267504, -0.474601,
		0.301763, -0.953374, 0.004177,
		13.302468, 20.872717, 32.116676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.507117, 21.105347, 32.233829>,  <13.091233, 21.540079, 32.113750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.507117, 21.105347, 32.233829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849278, 20.936737, 32.354229>,  <13.054575, 20.835571, 32.426468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849278, 20.936737, 32.354229>,  <12.507117, 21.105347, 32.233829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849278, 20.936737, 32.354229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324586, 0.016630, 0.945710,
		-0.403644, -0.906665, -0.122595,
		0.855403, -0.421523, 0.301003,
		13.105900, 20.810280, 32.444530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329785, 20.509842, 32.781189>,  <12.507117, 21.105347, 32.233829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329785, 20.509842, 32.781189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.709406, 20.630217, 32.818581>,  <12.937179, 20.702442, 32.841015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.709406, 20.630217, 32.818581>,  <12.329785, 20.509842, 32.781189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709406, 20.630217, 32.818581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048867, -0.152494, 0.987096,
		0.311310, -0.941372, -0.130018,
		0.949051, 0.300939, 0.093475,
		12.994122, 20.720499, 32.846622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778327, 20.680248, 33.244579>,  <12.329785, 20.509842, 32.781189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778327, 20.680248, 33.244579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.401520, 20.591923, 33.345646>,  <11.175435, 20.538927, 33.406288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.401520, 20.591923, 33.345646>,  <11.778327, 20.680248, 33.244579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.401520, 20.591923, 33.345646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168108, -0.341126, -0.924864,
		0.290415, -0.913715, 0.284226,
		-0.942018, -0.220813, 0.252671,
		11.118915, 20.525679, 33.421448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.675769, 19.952763, 33.097752>,  <11.778327, 20.680248, 33.244579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.675769, 19.952763, 33.097752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.309295, 20.113010, 33.101879>,  <11.089410, 20.209160, 33.104355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.309295, 20.113010, 33.101879>,  <11.675769, 19.952763, 33.097752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.309295, 20.113010, 33.101879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249647, -0.550402, -0.796702,
		-0.313496, -0.732504, 0.604284,
		-0.916186, 0.400620, 0.010319,
		11.034439, 20.233196, 33.104977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.378753, 19.408537, 32.768314>,  <11.675769, 19.952763, 33.097752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.378753, 19.408537, 32.768314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.114233, 19.707651, 32.744644>,  <10.955522, 19.887119, 32.730442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.114233, 19.707651, 32.744644>,  <11.378753, 19.408537, 32.768314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.114233, 19.707651, 32.744644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282491, -0.321340, -0.903847,
		-0.694898, -0.580997, 0.423744,
		-0.661299, 0.747785, -0.059171,
		10.915843, 19.931986, 32.726894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.729635, 19.114384, 32.515606>,  <11.378753, 19.408537, 32.768314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.729635, 19.114384, 32.515606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.744225, 19.504940, 32.430439>,  <10.752978, 19.739273, 32.379337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.744225, 19.504940, 32.430439>,  <10.729635, 19.114384, 32.515606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.744225, 19.504940, 32.430439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295144, -0.193031, -0.935751,
		-0.954757, 0.096970, 0.281135,
		0.036472, 0.976389, -0.212918,
		10.755166, 19.797857, 32.366562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043250, 19.285814, 32.231339>,  <10.729635, 19.114384, 32.515606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043250, 19.285814, 32.231339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.330226, 19.535210, 32.107056>,  <10.502412, 19.684847, 32.032486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.330226, 19.535210, 32.107056>,  <10.043250, 19.285814, 32.231339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.330226, 19.535210, 32.107056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162866, -0.283535, -0.945030,
		-0.677314, 0.728607, -0.101874,
		0.717440, 0.623490, -0.310708,
		10.545458, 19.722258, 32.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.866455, 19.322495, 31.653746>,  <10.043250, 19.285814, 32.231339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.866455, 19.322495, 31.653746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.220010, 19.501493, 31.599354>,  <10.432143, 19.608892, 31.566719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.220010, 19.501493, 31.599354>,  <9.866455, 19.322495, 31.653746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.220010, 19.501493, 31.599354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020736, -0.327949, -0.944468,
		-0.467240, 0.831984, -0.299149,
		0.883887, 0.447496, -0.135979,
		10.485176, 19.635742, 31.558559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.765038, 19.652599, 31.005905>,  <9.866455, 19.322495, 31.653746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.765038, 19.652599, 31.005905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.160031, 19.699892, 31.047668>,  <10.397027, 19.728268, 31.072727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.160031, 19.699892, 31.047668>,  <9.765038, 19.652599, 31.005905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.160031, 19.699892, 31.047668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106850, -0.014485, -0.994170,
		-0.116030, 0.992880, -0.026937,
		0.987482, 0.118231, 0.104409,
		10.456276, 19.735361, 31.078991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.009602, 20.095884, 30.515076>,  <9.765038, 19.652599, 31.005905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.009602, 20.095884, 30.515076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.354064, 19.920023, 30.617146>,  <10.560741, 19.814507, 30.678389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.354064, 19.920023, 30.617146>,  <10.009602, 20.095884, 30.515076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.354064, 19.920023, 30.617146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296854, 0.027441, -0.954529,
		0.412658, 0.897749, 0.154143,
		0.861157, -0.439652, 0.255177,
		10.612411, 19.788128, 30.693699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.603337, 20.533529, 30.232895>,  <10.009602, 20.095884, 30.515076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.603337, 20.533529, 30.232895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.731254, 20.159605, 30.294682>,  <10.808003, 19.935249, 30.331753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.731254, 20.159605, 30.294682>,  <10.603337, 20.533529, 30.232895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.731254, 20.159605, 30.294682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344396, -0.037192, -0.938088,
		0.882680, 0.353190, 0.310052,
		0.319792, -0.934812, 0.154466,
		10.827191, 19.879162, 30.341021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.317315, 20.535749, 30.115160>,  <10.603337, 20.533529, 30.232895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.317315, 20.535749, 30.115160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.218000, 20.149117, 30.089636>,  <11.158412, 19.917137, 30.074322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.218000, 20.149117, 30.089636>,  <11.317315, 20.535749, 30.115160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218000, 20.149117, 30.089636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416922, -0.047171, -0.907718,
		0.874374, -0.251977, 0.414701,
		-0.248286, -0.966583, -0.063809,
		11.143515, 19.859142, 30.070494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.903134, 20.270168, 29.876959>,  <11.317315, 20.535749, 30.115160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.903134, 20.270168, 29.876959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.604762, 20.016529, 29.795464>,  <11.425738, 19.864346, 29.746567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.604762, 20.016529, 29.795464>,  <11.903134, 20.270168, 29.876959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604762, 20.016529, 29.795464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289615, -0.033347, -0.956562,
		0.599758, -0.772535, 0.208518,
		-0.745931, -0.634096, -0.203738,
		11.380982, 19.826300, 29.734343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182872, 19.859419, 29.373470>,  <11.903134, 20.270168, 29.876959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182872, 19.859419, 29.373470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.798690, 19.750608, 29.349705>,  <11.568181, 19.685322, 29.335445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.798690, 19.750608, 29.349705>,  <12.182872, 19.859419, 29.373470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.798690, 19.750608, 29.349705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131546, -0.255239, -0.957888,
		0.245405, -0.927823, 0.280929,
		-0.960454, -0.272025, -0.059415,
		11.510553, 19.669001, 29.331881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.179616, 19.223600, 28.947121>,  <12.182872, 19.859419, 29.373470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.179616, 19.223600, 28.947121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.812170, 19.381649, 28.949080>,  <11.591702, 19.476479, 28.950254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.812170, 19.381649, 28.949080>,  <12.179616, 19.223600, 28.947121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812170, 19.381649, 28.949080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031196, -0.060163, -0.997701,
		-0.393919, -0.916656, 0.067593,
		-0.918615, 0.395122, 0.004896,
		11.536585, 19.500185, 28.950548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.793699, 18.813005, 28.507700>,  <12.179616, 19.223600, 28.947121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.793699, 18.813005, 28.507700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.602292, 19.164062, 28.518768>,  <11.487448, 19.374697, 28.525410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.602292, 19.164062, 28.518768>,  <11.793699, 18.813005, 28.507700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602292, 19.164062, 28.518768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022168, 0.043580, -0.998804,
		-0.877798, -0.477331, -0.040309,
		-0.478517, 0.877642, 0.027673,
		11.458736, 19.427355, 28.527071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294392, 18.704247, 28.019762>,  <11.793699, 18.813005, 28.507700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294392, 18.704247, 28.019762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.309323, 19.102425, 28.054848>,  <11.318282, 19.341331, 28.075899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.309323, 19.102425, 28.054848>,  <11.294392, 18.704247, 28.019762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.309323, 19.102425, 28.054848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109676, 0.091327, -0.989763,
		-0.993266, 0.027326, 0.112585,
		0.037329, 0.995446, 0.087715,
		11.320522, 19.401058, 28.081161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770522, 18.891397, 27.513525>,  <11.294392, 18.704247, 28.019762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770522, 18.891397, 27.513525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.005557, 19.208450, 27.578609>,  <11.146578, 19.398682, 27.617661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.005557, 19.208450, 27.578609>,  <10.770522, 18.891397, 27.513525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005557, 19.208450, 27.578609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090610, 0.264277, -0.960181,
		-0.804071, 0.549448, 0.227106,
		0.587588, 0.792632, 0.162712,
		11.181833, 19.446239, 27.627422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.416339, 19.460176, 27.223438>,  <10.770522, 18.891397, 27.513525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.416339, 19.460176, 27.223438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795003, 19.588623, 27.234159>,  <11.022202, 19.665691, 27.240593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795003, 19.588623, 27.234159>,  <10.416339, 19.460176, 27.223438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795003, 19.588623, 27.234159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065457, 0.273082, -0.959761,
		-0.315517, 0.906813, 0.279535,
		0.946660, 0.321118, 0.026805,
		11.079000, 19.684959, 27.242201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.407683, 20.198578, 27.044083>,  <10.416339, 19.460176, 27.223438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.407683, 20.198578, 27.044083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.776880, 20.069784, 26.959787>,  <10.998399, 19.992508, 26.909210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.776880, 20.069784, 26.959787>,  <10.407683, 20.198578, 27.044083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.776880, 20.069784, 26.959787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159395, 0.178554, -0.970933,
		0.350255, 0.929755, 0.113481,
		0.922992, -0.321986, -0.210738,
		11.053778, 19.973188, 26.896566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.594202, 20.639404, 26.516956>,  <10.407683, 20.198578, 27.044083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.594202, 20.639404, 26.516956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.863564, 20.343859, 26.507126>,  <11.025182, 20.166531, 26.501228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.863564, 20.343859, 26.507126>,  <10.594202, 20.639404, 26.516956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.863564, 20.343859, 26.507126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011699, 0.043891, -0.998968,
		0.739180, 0.672423, 0.038200,
		0.673406, -0.738864, -0.024576,
		11.065586, 20.122200, 26.499754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.172876, 20.825632, 26.055202>,  <10.594202, 20.639404, 26.516956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.172876, 20.825632, 26.055202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.146312, 20.426523, 26.052683>,  <11.130373, 20.187057, 26.051170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.146312, 20.426523, 26.052683>,  <11.172876, 20.825632, 26.055202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146312, 20.426523, 26.052683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045216, 0.009316, -0.998934,
		0.996767, -0.066056, -0.045734,
		-0.066412, -0.997772, -0.006299,
		11.126389, 20.127192, 26.050793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670753, 20.658052, 25.504841>,  <11.172876, 20.825632, 26.055202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670753, 20.658052, 25.504841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.437059, 20.339609, 25.567938>,  <11.296844, 20.148542, 25.605795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.437059, 20.339609, 25.567938>,  <11.670753, 20.658052, 25.504841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437059, 20.339609, 25.567938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103932, -0.119371, -0.987395,
		0.804905, -0.593262, -0.013001,
		-0.584232, -0.796110, 0.157741,
		11.261790, 20.100777, 25.615259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.981922, 23.949671, 11.278406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337027, 24.021931, 11.109057>,  <19.550089, 24.065287, 11.007448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337027, 24.021931, 11.109057>,  <18.981922, 23.949671, 11.278406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337027, 24.021931, 11.109057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432085, -0.644129, 0.631190,
		-0.158682, -0.743279, -0.649890,
		0.887763, 0.180649, -0.423371,
		19.603355, 24.076126, 10.982046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252926, 24.357616, 11.784604>,  <18.981922, 23.949671, 11.278406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252926, 24.357616, 11.784604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.558298, 24.615562, 11.799124>,  <19.741522, 24.770330, 11.807836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.558298, 24.615562, 11.799124>,  <19.252926, 24.357616, 11.784604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558298, 24.615562, 11.799124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085592, 0.156714, -0.983928,
		-0.640191, 0.748056, 0.174836,
		0.763433, 0.644867, 0.036299,
		19.787329, 24.809023, 11.810014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194845, 25.130362, 11.651770>,  <19.252926, 24.357616, 11.784604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194845, 25.130362, 11.651770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.578968, 25.058315, 11.566570>,  <19.809443, 25.015087, 11.515450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.578968, 25.058315, 11.566570>,  <19.194845, 25.130362, 11.651770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578968, 25.058315, 11.566570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126465, 0.399475, -0.907979,
		0.248628, 0.898876, 0.360840,
		0.960307, -0.180115, -0.212998,
		19.867060, 25.004280, 11.502671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683533, 25.699217, 11.414377>,  <19.194845, 25.130362, 11.651770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683533, 25.699217, 11.414377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822147, 25.357487, 11.259438>,  <19.905317, 25.152449, 11.166473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822147, 25.357487, 11.259438>,  <19.683533, 25.699217, 11.414377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822147, 25.357487, 11.259438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204931, 0.334010, -0.920022,
		0.915377, 0.398202, -0.059331,
		0.346538, -0.854326, -0.387349,
		19.926109, 25.101189, 11.143233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874262, 26.140377, 10.788539>,  <19.683533, 25.699217, 11.414377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874262, 26.140377, 10.788539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768316, 26.256702, 11.156295>,  <19.704750, 26.326498, 11.376948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768316, 26.256702, 11.156295>,  <19.874262, 26.140377, 10.788539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768316, 26.256702, 11.156295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558828, -0.730718, 0.392125,
		0.785849, 0.617639, 0.031025,
		-0.264862, 0.290813, 0.919389,
		19.688858, 26.343946, 11.432112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489664, 26.242367, 11.147407>,  <19.874262, 26.140377, 10.788539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489664, 26.242367, 11.147407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.197634, 26.177464, 11.412937>,  <20.022415, 26.138521, 11.572255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.197634, 26.177464, 11.412937>,  <20.489664, 26.242367, 11.147407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197634, 26.177464, 11.412937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605048, -0.605035, 0.517542,
		0.317662, 0.779490, 0.539895,
		-0.730074, -0.162258, 0.663826,
		19.978611, 26.128786, 11.612084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652824, 26.383099, 11.898993>,  <20.489664, 26.242367, 11.147407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652824, 26.383099, 11.898993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.354223, 26.118301, 11.872151>,  <20.175062, 25.959423, 11.856047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.354223, 26.118301, 11.872151>,  <20.652824, 26.383099, 11.898993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.354223, 26.118301, 11.872151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514596, -0.638320, 0.572485,
		-0.421814, 0.392829, 0.817165,
		-0.746501, -0.661992, -0.067104,
		20.130274, 25.919704, 11.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233057, 26.123606, 12.586356>,  <20.652824, 26.383099, 11.898993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233057, 26.123606, 12.586356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.234785, 25.838293, 12.306009>,  <20.235823, 25.667107, 12.137801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.234785, 25.838293, 12.306009>,  <20.233057, 26.123606, 12.586356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234785, 25.838293, 12.306009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401421, -0.640687, 0.654509,
		-0.915883, -0.284170, 0.283558,
		0.004320, -0.713280, -0.700866,
		20.236080, 25.624310, 12.095750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862055, 25.528763, 12.826494>,  <20.233057, 26.123606, 12.586356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862055, 25.528763, 12.826494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.109371, 25.387678, 12.545550>,  <20.257761, 25.303026, 12.376985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.109371, 25.387678, 12.545550>,  <19.862055, 25.528763, 12.826494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.109371, 25.387678, 12.545550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373325, -0.654595, 0.657369,
		-0.691624, -0.668655, -0.273053,
		0.618292, -0.352714, -0.702359,
		20.294859, 25.281864, 12.334843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742750, 24.720882, 12.769889>,  <19.862055, 25.528763, 12.826494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742750, 24.720882, 12.769889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.105190, 24.854111, 12.665547>,  <20.322655, 24.934048, 12.602942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.105190, 24.854111, 12.665547>,  <19.742750, 24.720882, 12.769889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105190, 24.854111, 12.665547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421933, -0.666489, 0.614626,
		0.030858, -0.666976, -0.744440,
		0.906102, 0.333070, -0.260853,
		20.377020, 24.954031, 12.587292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155676, 24.132345, 12.521099>,  <19.742750, 24.720882, 12.769889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155676, 24.132345, 12.521099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417967, 24.403227, 12.654618>,  <20.575340, 24.565756, 12.734730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417967, 24.403227, 12.654618>,  <20.155676, 24.132345, 12.521099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417967, 24.403227, 12.654618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396621, -0.685172, 0.610927,
		0.642430, -0.268209, -0.717877,
		0.655725, 0.677203, 0.333797,
		20.614685, 24.606388, 12.754758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.653099, 23.721926, 12.786558>,  <20.155676, 24.132345, 12.521099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.653099, 23.721926, 12.786558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.762821, 24.072773, 12.944252>,  <20.828653, 24.283281, 13.038868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.762821, 24.072773, 12.944252>,  <20.653099, 23.721926, 12.786558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762821, 24.072773, 12.944252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351766, -0.473067, 0.807755,
		0.894996, -0.082892, -0.438304,
		0.274304, 0.877118, 0.394235,
		20.845112, 24.335909, 13.062523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339825, 23.603546, 12.993531>,  <20.653099, 23.721926, 12.786558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339825, 23.603546, 12.993531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211773, 23.924055, 13.195710>,  <21.134943, 24.116362, 13.317018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211773, 23.924055, 13.195710>,  <21.339825, 23.603546, 12.993531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211773, 23.924055, 13.195710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362507, -0.389317, 0.846771,
		0.875275, 0.454304, -0.165835,
		-0.320129, 0.801274, 0.505448,
		21.115734, 24.164438, 13.347344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.835100, 23.904871, 13.439056>,  <21.339825, 23.603546, 12.993531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.835100, 23.904871, 13.439056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486969, 24.030796, 13.590541>,  <21.278090, 24.106352, 13.681432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486969, 24.030796, 13.590541>,  <21.835100, 23.904871, 13.439056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.486969, 24.030796, 13.590541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293534, -0.285862, 0.912207,
		0.395433, 0.905084, 0.156385,
		-0.870328, 0.314813, 0.378712,
		21.225870, 24.125240, 13.704154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032545, 24.089552, 14.017567>,  <21.835100, 23.904871, 13.439056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032545, 24.089552, 14.017567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.636971, 24.058695, 14.068251>,  <21.399626, 24.040180, 14.098661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.636971, 24.058695, 14.068251>,  <22.032545, 24.089552, 14.017567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636971, 24.058695, 14.068251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148339, -0.522905, 0.839384,
		0.001503, 0.848893, 0.528563,
		-0.988935, -0.077145, 0.126710,
		21.340290, 24.035551, 14.106263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998009, 24.287773, 14.730545>,  <22.032545, 24.089552, 14.017567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998009, 24.287773, 14.730545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.675934, 24.073032, 14.629778>,  <21.482689, 23.944187, 14.569318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.675934, 24.073032, 14.629778>,  <21.998009, 24.287773, 14.730545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.675934, 24.073032, 14.629778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031844, -0.463334, 0.885612,
		-0.592163, 0.705062, 0.390167,
		-0.805189, -0.536851, -0.251917,
		21.434378, 23.911978, 14.554203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.581995, 24.299313, 15.372077>,  <21.998009, 24.287773, 14.730545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.581995, 24.299313, 15.372077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469070, 23.998920, 15.133306>,  <21.401316, 23.818686, 14.990043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469070, 23.998920, 15.133306>,  <21.581995, 24.299313, 15.372077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469070, 23.998920, 15.133306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134260, -0.585187, 0.799707,
		-0.949881, 0.305912, 0.064379,
		-0.282314, -0.750982, -0.596929,
		21.384377, 23.773626, 14.954226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110445, 24.016811, 15.834514>,  <21.581995, 24.299313, 15.372077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110445, 24.016811, 15.834514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198133, 23.759041, 15.541487>,  <21.250748, 23.604378, 15.365670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198133, 23.759041, 15.541487>,  <21.110445, 24.016811, 15.834514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198133, 23.759041, 15.541487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142587, -0.763931, 0.629348,
		-0.965200, -0.033512, -0.259357,
		0.219222, -0.644427, -0.732567,
		21.263901, 23.565712, 15.321716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917526, 23.371075, 16.132734>,  <21.110445, 24.016811, 15.834514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917526, 23.371075, 16.132734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131193, 23.246571, 15.818336>,  <21.259394, 23.171869, 15.629698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131193, 23.246571, 15.818336>,  <20.917526, 23.371075, 16.132734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131193, 23.246571, 15.818336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033771, -0.936865, 0.348055,
		-0.844704, -0.159375, -0.510954,
		0.534166, -0.311259, -0.785992,
		21.291443, 23.153193, 15.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566124, 22.770273, 15.898385>,  <20.917526, 23.371075, 16.132734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566124, 22.770273, 15.898385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952509, 22.766689, 15.794976>,  <21.184340, 22.764540, 15.732931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952509, 22.766689, 15.794976>,  <20.566124, 22.770273, 15.898385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952509, 22.766689, 15.794976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072026, -0.950563, 0.302063,
		-0.248447, -0.310402, -0.917565,
		0.965964, -0.008958, -0.258522,
		21.242298, 22.764002, 15.717420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732710, 22.113461, 15.554358>,  <20.566124, 22.770273, 15.898385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732710, 22.113461, 15.554358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.112068, 22.207146, 15.639858>,  <21.339684, 22.263357, 15.691158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.112068, 22.207146, 15.639858>,  <20.732710, 22.113461, 15.554358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.112068, 22.207146, 15.639858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185136, -0.956281, 0.226390,
		0.257430, -0.175134, -0.950294,
		0.948396, 0.234213, 0.213752,
		21.396587, 22.277411, 15.703983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099739, 21.574646, 15.286236>,  <20.732710, 22.113461, 15.554358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099739, 21.574646, 15.286236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378309, 21.724958, 15.530786>,  <21.545452, 21.815145, 15.677516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378309, 21.724958, 15.530786>,  <21.099739, 21.574646, 15.286236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378309, 21.724958, 15.530786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138779, -0.906380, 0.399019,
		0.704082, -0.193041, -0.683377,
		0.696426, 0.375780, 0.611376,
		21.587236, 21.837692, 15.714198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676983, 21.183035, 15.265559>,  <21.099739, 21.574646, 15.286236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676983, 21.183035, 15.265559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.720806, 21.350986, 15.625937>,  <21.747101, 21.451757, 15.842163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.720806, 21.350986, 15.625937>,  <21.676983, 21.183035, 15.265559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720806, 21.350986, 15.625937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224590, -0.893415, 0.389061,
		0.968275, 0.159718, -0.192183,
		0.109559, 0.419880, 0.900943,
		21.753674, 21.476950, 15.896219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272415, 20.894770, 15.530121>,  <21.676983, 21.183035, 15.265559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272415, 20.894770, 15.530121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.111931, 21.025459, 15.872415>,  <22.015640, 21.103874, 16.077791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.111931, 21.025459, 15.872415>,  <22.272415, 20.894770, 15.530121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.111931, 21.025459, 15.872415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265236, -0.852760, 0.449945,
		0.876744, 0.407494, 0.255477,
		-0.401211, 0.326725, 0.855734,
		21.991568, 21.123476, 16.129135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693258, 20.731737, 15.978442>,  <22.272415, 20.894770, 15.530121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693258, 20.731737, 15.978442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.391098, 20.794174, 16.233002>,  <22.209801, 20.831636, 16.385738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.391098, 20.794174, 16.233002>,  <22.693258, 20.731737, 15.978442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391098, 20.794174, 16.233002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216257, -0.857408, 0.466994,
		0.618547, 0.490394, 0.613932,
		-0.755402, 0.156090, 0.636399,
		22.164478, 20.841002, 16.423922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956902, 20.618984, 16.662895>,  <22.693258, 20.731737, 15.978442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956902, 20.618984, 16.662895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.560217, 20.570669, 16.680428>,  <22.322206, 20.541679, 16.690947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.560217, 20.570669, 16.680428>,  <22.956902, 20.618984, 16.662895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.560217, 20.570669, 16.680428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127138, -0.872972, 0.470910,
		-0.018617, 0.472579, 0.881092,
		-0.991710, -0.120787, 0.043830,
		22.262703, 20.534433, 16.693577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.858343, 20.413059, 17.353573>,  <22.956902, 20.618984, 16.662895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.858343, 20.413059, 17.353573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540981, 20.281637, 17.148611>,  <22.350563, 20.202784, 17.025635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540981, 20.281637, 17.148611>,  <22.858343, 20.413059, 17.353573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540981, 20.281637, 17.148611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156538, -0.923634, 0.349850,
		-0.588219, 0.197363, 0.784249,
		-0.793407, -0.328553, -0.512405,
		22.302959, 20.183071, 16.994890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514696, 19.888195, 17.830681>,  <22.858343, 20.413059, 17.353573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514696, 19.888195, 17.830681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359440, 19.819046, 17.468584>,  <22.266285, 19.777555, 17.251326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359440, 19.819046, 17.468584>,  <22.514696, 19.888195, 17.830681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359440, 19.819046, 17.468584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250855, -0.964980, 0.076722,
		-0.886802, -0.197305, 0.417915,
		-0.388142, -0.172874, -0.905241,
		22.242998, 19.767183, 17.197012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092865, 19.215765, 17.868519>,  <22.514696, 19.888195, 17.830681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092865, 19.215765, 17.868519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.183329, 19.269835, 17.482653>,  <22.237606, 19.302277, 17.251133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.183329, 19.269835, 17.482653>,  <22.092865, 19.215765, 17.868519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.183329, 19.269835, 17.482653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130574, -0.985594, -0.107495,
		-0.965299, -0.101649, -0.240552,
		0.226160, 0.135175, -0.964665,
		22.251177, 19.310387, 17.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631584, 18.665173, 17.534883>,  <22.092865, 19.215765, 17.868519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631584, 18.665173, 17.534883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.936152, 18.771919, 17.298573>,  <22.118893, 18.835968, 17.156786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.936152, 18.771919, 17.298573>,  <21.631584, 18.665173, 17.534883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.936152, 18.771919, 17.298573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100001, -0.948778, -0.299700,
		-0.640499, 0.169119, -0.749106,
		0.761420, 0.266869, -0.590780,
		22.164577, 18.851980, 17.121338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.597868, 18.167349, 16.962204>,  <21.631584, 18.665173, 17.534883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.597868, 18.167349, 16.962204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964565, 18.323601, 16.928759>,  <22.184584, 18.417353, 16.908691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964565, 18.323601, 16.928759>,  <21.597868, 18.167349, 16.962204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964565, 18.323601, 16.928759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354900, -0.892483, -0.278426,
		-0.183386, 0.225570, -0.956811,
		0.916742, 0.390632, -0.083615,
		22.239588, 18.440790, 16.903675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921701, 18.105541, 16.254709>,  <21.597868, 18.167349, 16.962204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921701, 18.105541, 16.254709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212872, 18.129253, 16.527945>,  <22.387573, 18.143480, 16.691885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212872, 18.129253, 16.527945>,  <21.921701, 18.105541, 16.254709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212872, 18.129253, 16.527945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479217, -0.756509, -0.445022,
		0.490381, 0.651291, -0.579091,
		0.727926, 0.059280, 0.683088,
		22.431250, 18.147038, 16.732870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.566113, 18.239960, 15.899931>,  <21.921701, 18.105541, 16.254709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.566113, 18.239960, 15.899931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625395, 18.036739, 16.239323>,  <22.660965, 17.914806, 16.442957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625395, 18.036739, 16.239323>,  <22.566113, 18.239960, 15.899931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625395, 18.036739, 16.239323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412690, -0.747910, -0.519921,
		0.898733, 0.427215, 0.098822,
		0.148208, -0.508053, 0.848479,
		22.669857, 17.884323, 16.493866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.310324, 18.101332, 16.245775>,  <22.566113, 18.239960, 15.899931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.310324, 18.101332, 16.245775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040319, 17.811689, 16.302385>,  <22.878317, 17.637903, 16.336351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040319, 17.811689, 16.302385>,  <23.310324, 18.101332, 16.245775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040319, 17.811689, 16.302385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601883, -0.651375, -0.462004,
		0.426726, -0.226676, 0.875513,
		-0.675013, -0.724105, 0.141526,
		22.837816, 17.594458, 16.344843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938173, 18.407860, 16.439817>,  <23.310324, 18.101332, 16.245775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938173, 18.407860, 16.439817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.164642, 18.417227, 16.110237>,  <24.300524, 18.422848, 15.912489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.164642, 18.417227, 16.110237>,  <23.938173, 18.407860, 16.439817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164642, 18.417227, 16.110237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660356, 0.611141, -0.436390,
		0.493332, 0.791175, 0.361477,
		0.566174, 0.023418, -0.823953,
		24.334496, 18.424252, 15.863051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984385, 19.123989, 16.239019>,  <23.938173, 18.407860, 16.439817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984385, 19.123989, 16.239019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.056744, 18.894247, 15.919672>,  <24.100159, 18.756403, 15.728064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.056744, 18.894247, 15.919672>,  <23.984385, 19.123989, 16.239019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.056744, 18.894247, 15.919672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604300, 0.575543, -0.550973,
		0.775950, 0.582124, -0.242968,
		0.180896, -0.574353, -0.798370,
		24.111013, 18.721941, 15.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116524, 19.612352, 15.629770>,  <23.984385, 19.123989, 16.239019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116524, 19.612352, 15.629770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.030447, 19.258766, 15.463734>,  <23.978802, 19.046616, 15.364112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.030447, 19.258766, 15.463734>,  <24.116524, 19.612352, 15.629770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.030447, 19.258766, 15.463734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567382, 0.459119, -0.683584,
		0.794840, 0.088413, -0.600344,
		-0.215191, -0.883964, -0.415091,
		23.965889, 18.993576, 15.339207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240723, 19.616161, 14.903378>,  <24.116524, 19.612352, 15.629770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240723, 19.616161, 14.903378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967449, 19.324165, 14.911105>,  <23.803486, 19.148968, 14.915741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967449, 19.324165, 14.911105>,  <24.240723, 19.616161, 14.903378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967449, 19.324165, 14.911105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502456, 0.450716, -0.737830,
		0.529905, -0.513777, -0.674710,
		-0.683183, -0.729992, 0.019314,
		23.762493, 19.105167, 14.916900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135653, 19.449047, 14.241411>,  <24.240723, 19.616161, 14.903378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135653, 19.449047, 14.241411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.815313, 19.235847, 14.350630>,  <23.623110, 19.107927, 14.416161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.815313, 19.235847, 14.350630>,  <24.135653, 19.449047, 14.241411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.815313, 19.235847, 14.350630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555652, 0.491273, -0.670747,
		0.223368, -0.688885, -0.689597,
		-0.800848, -0.532999, 0.273046,
		23.575058, 19.075949, 14.432544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.876215, 19.064762, 13.646236>,  <24.135653, 19.449047, 14.241411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.876215, 19.064762, 13.646236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576838, 19.115711, 13.906576>,  <23.397211, 19.146280, 14.062780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576838, 19.115711, 13.906576>,  <23.876215, 19.064762, 13.646236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576838, 19.115711, 13.906576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541490, 0.449251, -0.710607,
		-0.382908, -0.884279, -0.267268,
		-0.748445, 0.127374, 0.650850,
		23.352304, 19.153923, 14.101831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213957, 19.006132, 13.239131>,  <23.876215, 19.064762, 13.646236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213957, 19.006132, 13.239131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.081469, 19.182896, 13.572599>,  <23.001976, 19.288954, 13.772680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.081469, 19.182896, 13.572599>,  <23.213957, 19.006132, 13.239131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081469, 19.182896, 13.572599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726103, 0.444853, -0.524291,
		-0.602550, -0.778988, 0.173525,
		-0.331223, 0.441909, 0.833672,
		22.982101, 19.315468, 13.822701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492300, 18.977346, 13.145971>,  <23.213957, 19.006132, 13.239131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492300, 18.977346, 13.145971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.528910, 19.236135, 13.448771>,  <22.550875, 19.391409, 13.630451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.528910, 19.236135, 13.448771>,  <22.492300, 18.977346, 13.145971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528910, 19.236135, 13.448771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744180, 0.549560, -0.379711,
		-0.661680, -0.528591, 0.531763,
		0.091524, 0.646974, 0.756999,
		22.556366, 19.430227, 13.675871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804974, 18.912588, 13.423221>,  <22.492300, 18.977346, 13.145971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804974, 18.912588, 13.423221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.980965, 19.252819, 13.538415>,  <22.086559, 19.456959, 13.607532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.980965, 19.252819, 13.538415>,  <21.804974, 18.912588, 13.423221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980965, 19.252819, 13.538415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861459, 0.490339, -0.132122,
		-0.253592, -0.189958, 0.948476,
		0.439978, 0.850578, 0.287986,
		22.112959, 19.507992, 13.624811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330187, 19.272539, 13.787652>,  <21.804974, 18.912588, 13.423221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330187, 19.272539, 13.787652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598679, 19.538841, 13.657288>,  <21.759773, 19.698624, 13.579069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598679, 19.538841, 13.657288>,  <21.330187, 19.272539, 13.787652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598679, 19.538841, 13.657288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734559, 0.538489, -0.412860,
		-0.099365, 0.516524, 0.850488,
		0.671230, 0.665757, -0.325910,
		21.800047, 19.738567, 13.559514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059547, 19.860529, 13.933537>,  <21.330187, 19.272539, 13.787652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059547, 19.860529, 13.933537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319513, 19.987583, 13.657356>,  <21.475492, 20.063816, 13.491648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319513, 19.987583, 13.657356>,  <21.059547, 19.860529, 13.933537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319513, 19.987583, 13.657356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708022, 0.583265, -0.398129,
		0.276256, 0.747603, 0.603963,
		0.649913, 0.317633, -0.690450,
		21.514488, 20.082872, 13.450221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009964, 20.612747, 13.954927>,  <21.059547, 19.860529, 13.933537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009964, 20.612747, 13.954927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172836, 20.518578, 13.601933>,  <21.270559, 20.462076, 13.390138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172836, 20.518578, 13.601933>,  <21.009964, 20.612747, 13.954927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172836, 20.518578, 13.601933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711911, 0.523485, -0.468131,
		0.572176, 0.818865, 0.045553,
		0.407182, -0.235424, -0.882484,
		21.294991, 20.447950, 13.337188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058350, 21.287985, 13.580164>,  <21.009964, 20.612747, 13.954927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058350, 21.287985, 13.580164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.035162, 21.003843, 13.299582>,  <21.021250, 20.833359, 13.131233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.035162, 21.003843, 13.299582>,  <21.058350, 21.287985, 13.580164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035162, 21.003843, 13.299582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725473, 0.512657, -0.459208,
		0.685805, 0.482266, -0.545060,
		-0.057969, -0.710353, -0.701454,
		21.017771, 20.790737, 13.089147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843046, 21.650803, 13.033650>,  <21.058350, 21.287985, 13.580164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843046, 21.650803, 13.033650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769194, 21.281036, 12.900165>,  <20.724882, 21.059175, 12.820073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769194, 21.281036, 12.900165>,  <20.843046, 21.650803, 13.033650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769194, 21.281036, 12.900165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735349, 0.355215, -0.577134,
		0.652053, 0.138838, -0.745353,
		-0.184633, -0.924416, -0.333714,
		20.713804, 21.003712, 12.800051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783976, 21.744156, 12.267509>,  <20.843046, 21.650803, 13.033650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783976, 21.744156, 12.267509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608690, 21.398083, 12.365016>,  <20.503519, 21.190439, 12.423521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608690, 21.398083, 12.365016>,  <20.783976, 21.744156, 12.267509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608690, 21.398083, 12.365016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801693, 0.253543, -0.541298,
		0.406517, -0.432633, -0.804719,
		-0.438215, -0.865185, 0.243769,
		20.477226, 21.138527, 12.438147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481121, 21.463022, 11.643331>,  <20.783976, 21.744156, 12.267509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481121, 21.463022, 11.643331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.277082, 21.300396, 11.946515>,  <20.154659, 21.202820, 12.128426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.277082, 21.300396, 11.946515>,  <20.481121, 21.463022, 11.643331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277082, 21.300396, 11.946515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844190, 0.405452, -0.350645,
		-0.164758, -0.818727, -0.550038,
		-0.510096, -0.406565, 0.757962,
		20.124054, 21.178427, 12.173903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002905, 21.093397, 11.355247>,  <20.481121, 21.463022, 11.643331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002905, 21.093397, 11.355247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859829, 21.131044, 11.726882>,  <19.773983, 21.153633, 11.949862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859829, 21.131044, 11.726882>,  <20.002905, 21.093397, 11.355247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859829, 21.131044, 11.726882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891963, 0.260166, -0.369752,
		-0.276516, -0.960966, -0.009110,
		-0.357689, 0.094117, 0.929086,
		19.752522, 21.159279, 12.005608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371260, 20.816809, 11.160044>,  <20.002905, 21.093397, 11.355247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371260, 20.816809, 11.160044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.340290, 21.017233, 11.504820>,  <19.321709, 21.137487, 11.711686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.340290, 21.017233, 11.504820>,  <19.371260, 20.816809, 11.160044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340290, 21.017233, 11.504820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871424, 0.386016, -0.302676,
		-0.484382, -0.774550, 0.406750,
		-0.077426, 0.501062, 0.861941,
		19.317062, 21.167551, 11.763402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.429527, 20.843452, 22.033968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112490, 20.603731, 21.989021>,  <15.922267, 20.459898, 21.962053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112490, 20.603731, 21.989021>,  <16.429527, 20.843452, 22.033968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112490, 20.603731, 21.989021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460779, -0.468007, -0.754090,
		0.399343, -0.649464, 0.647088,
		-0.792595, -0.599305, -0.112364,
		15.874711, 20.423939, 21.955313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600937, 20.228508, 22.183504>,  <16.429527, 20.843452, 22.033968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600937, 20.228508, 22.183504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299559, 20.230921, 21.920511>,  <16.118732, 20.232368, 21.762716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299559, 20.230921, 21.920511>,  <16.600937, 20.228508, 22.183504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299559, 20.230921, 21.920511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578694, -0.468626, -0.667460,
		-0.312141, -0.883376, 0.349593,
		-0.753446, 0.006034, -0.657482,
		16.073524, 20.232731, 21.723267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839231, 19.623350, 21.788666>,  <16.600937, 20.228508, 22.183504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839231, 19.623350, 21.788666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521351, 19.760408, 21.588249>,  <16.330622, 19.842644, 21.467999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521351, 19.760408, 21.588249>,  <16.839231, 19.623350, 21.788666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.521351, 19.760408, 21.588249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312544, -0.476621, -0.821674,
		-0.520354, -0.809582, 0.271677,
		-0.794700, 0.342651, -0.501042,
		16.282940, 19.863203, 21.437937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503002, 19.085629, 21.531401>,  <16.839231, 19.623350, 21.788666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503002, 19.085629, 21.531401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429525, 19.390480, 21.283072>,  <16.385439, 19.573391, 21.134075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429525, 19.390480, 21.283072>,  <16.503002, 19.085629, 21.531401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429525, 19.390480, 21.283072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397317, -0.520114, -0.756056,
		-0.899109, -0.385544, -0.207265,
		-0.183692, 0.762127, -0.620822,
		16.374418, 19.619118, 21.096825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013195, 18.995667, 21.026070>,  <16.503002, 19.085629, 21.531401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013195, 18.995667, 21.026070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229204, 19.295523, 20.873013>,  <16.358810, 19.475435, 20.781178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229204, 19.295523, 20.873013>,  <16.013195, 18.995667, 21.026070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229204, 19.295523, 20.873013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082267, -0.499472, -0.862415,
		-0.837619, 0.434246, -0.331398,
		0.540024, 0.749639, -0.382643,
		16.391211, 19.520414, 20.758219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862771, 19.008669, 20.286161>,  <16.013195, 18.995667, 21.026070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862771, 19.008669, 20.286161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210463, 19.206429, 20.284821>,  <16.419077, 19.325085, 20.284016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210463, 19.206429, 20.284821>,  <15.862771, 19.008669, 20.286161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210463, 19.206429, 20.284821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189251, -0.338985, -0.921560,
		-0.456754, 0.800412, -0.388221,
		0.869229, 0.494398, -0.003353,
		16.471231, 19.354748, 20.283815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883088, 19.412638, 19.777721>,  <15.862771, 19.008669, 20.286161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883088, 19.412638, 19.777721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267025, 19.328806, 19.852318>,  <16.497387, 19.278507, 19.897076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267025, 19.328806, 19.852318>,  <15.883088, 19.412638, 19.777721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267025, 19.328806, 19.852318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108902, -0.334270, -0.936164,
		0.258540, 0.918880, -0.298023,
		0.959843, -0.209580, 0.186490,
		16.554977, 19.265932, 19.908264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222387, 19.524376, 19.103622>,  <15.883088, 19.412638, 19.777721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222387, 19.524376, 19.103622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504650, 19.334324, 19.313879>,  <16.674007, 19.220293, 19.440033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504650, 19.334324, 19.313879>,  <16.222387, 19.524376, 19.103622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504650, 19.334324, 19.313879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335322, -0.429581, -0.838463,
		0.624185, 0.767926, -0.143816,
		0.705658, -0.475131, 0.525640,
		16.716347, 19.191784, 19.471571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798145, 19.474970, 18.682713>,  <16.222387, 19.524376, 19.103622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798145, 19.474970, 18.682713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878937, 19.197199, 18.958967>,  <16.927412, 19.030537, 19.124720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878937, 19.197199, 18.958967>,  <16.798145, 19.474970, 18.682713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878937, 19.197199, 18.958967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456989, -0.556875, -0.693579,
		0.866237, 0.455700, 0.204869,
		0.201978, -0.694426, 0.690636,
		16.939529, 18.988871, 19.166159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401688, 19.269445, 18.447672>,  <16.798145, 19.474970, 18.682713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401688, 19.269445, 18.447672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309708, 18.988445, 18.717075>,  <17.254520, 18.819845, 18.878717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309708, 18.988445, 18.717075>,  <17.401688, 19.269445, 18.447672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309708, 18.988445, 18.717075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381783, -0.701696, -0.601551,
		0.895190, 0.118808, 0.429558,
		-0.229950, -0.702500, 0.673510,
		17.240723, 18.777695, 18.919128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813179, 18.757259, 18.270489>,  <17.401688, 19.269445, 18.447672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813179, 18.757259, 18.270489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577654, 18.534771, 18.505068>,  <17.436338, 18.401278, 18.645815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577654, 18.534771, 18.505068>,  <17.813179, 18.757259, 18.270489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.577654, 18.534771, 18.505068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312198, -0.825759, -0.469740,
		0.745543, -0.093501, 0.659866,
		-0.588811, -0.556220, 0.586448,
		17.401011, 18.367905, 18.681002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295822, 18.281437, 18.651518>,  <17.813179, 18.757259, 18.270489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295822, 18.281437, 18.651518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930441, 18.121826, 18.619566>,  <17.711212, 18.026060, 18.600395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930441, 18.121826, 18.619566>,  <18.295822, 18.281437, 18.651518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930441, 18.121826, 18.619566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395225, -0.823111, -0.407781,
		0.096964, -0.404059, 0.909579,
		-0.913452, -0.399028, -0.079882,
		17.656404, 18.002117, 18.595602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075716, 18.480156, 18.737036>,  <18.295822, 18.281437, 18.651518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075716, 18.480156, 18.737036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860472, 18.370447, 18.418236>,  <18.731325, 18.304623, 18.226955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860472, 18.370447, 18.418236>,  <19.075716, 18.480156, 18.737036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860472, 18.370447, 18.418236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842625, 0.152136, 0.516563,
		-0.020426, 0.949542, -0.312974,
		-0.538113, -0.274271, -0.797001,
		18.699038, 18.288166, 18.179136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614183, 18.696955, 19.337698>,  <19.075716, 18.480156, 18.737036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614183, 18.696955, 19.337698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680300, 19.083475, 19.258759>,  <19.719969, 19.315388, 19.211395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680300, 19.083475, 19.258759>,  <19.614183, 18.696955, 19.337698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680300, 19.083475, 19.258759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977640, 0.134161, -0.161929,
		-0.129995, 0.219700, 0.966868,
		0.165291, 0.966299, -0.197347,
		19.729887, 19.373365, 19.199554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.391809, 18.648159, 19.115726>,  <19.614183, 18.696955, 19.337698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.391809, 18.648159, 19.115726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583651, 18.297920, 19.092724>,  <20.698755, 18.087776, 19.078922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583651, 18.297920, 19.092724>,  <20.391809, 18.648159, 19.115726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583651, 18.297920, 19.092724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805524, -0.465317, 0.366894,
		-0.348009, -0.129644, -0.928484,
		0.479604, -0.875598, -0.057503,
		20.727531, 18.035240, 19.075472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.027256, 18.156141, 18.719244>,  <20.391809, 18.648159, 19.115726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.027256, 18.156141, 18.719244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.258474, 17.950451, 18.972681>,  <20.397205, 17.827038, 19.124743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.258474, 17.950451, 18.972681>,  <20.027256, 18.156141, 18.719244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258474, 17.950451, 18.972681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794347, -0.532302, 0.292689,
		0.186755, -0.672479, -0.716166,
		0.578045, -0.514223, 0.633592,
		20.431889, 17.796185, 19.162758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776295, 17.396711, 18.642239>,  <20.027256, 18.156141, 18.719244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776295, 17.396711, 18.642239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972347, 17.431955, 18.989111>,  <20.089979, 17.453102, 19.197235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972347, 17.431955, 18.989111>,  <19.776295, 17.396711, 18.642239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972347, 17.431955, 18.989111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646440, -0.630629, 0.429444,
		0.584709, -0.771067, -0.252135,
		0.490133, 0.088109, 0.867183,
		20.119387, 17.458387, 19.249266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587456, 16.766363, 18.964739>,  <19.776295, 17.396711, 18.642239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587456, 16.766363, 18.964739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742826, 16.983994, 19.262224>,  <19.836048, 17.114573, 19.440716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742826, 16.983994, 19.262224>,  <19.587456, 16.766363, 18.964739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.742826, 16.983994, 19.262224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548654, -0.511882, 0.661026,
		0.740341, -0.664800, 0.099682,
		0.388425, 0.544076, 0.743712,
		19.859354, 17.147217, 19.485338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989550, 16.347765, 19.461805>,  <19.587456, 16.766363, 18.964739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989550, 16.347765, 19.461805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872942, 16.681618, 19.648739>,  <19.802977, 16.881929, 19.760899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872942, 16.681618, 19.648739>,  <19.989550, 16.347765, 19.461805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872942, 16.681618, 19.648739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392587, -0.549906, 0.737210,
		0.872291, 0.031441, 0.487975,
		-0.291519, 0.834634, 0.467335,
		19.785486, 16.932009, 19.788939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892263, 16.113317, 20.142115>,  <19.989550, 16.347765, 19.461805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892263, 16.113317, 20.142115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696836, 16.461847, 20.123817>,  <19.579580, 16.670965, 20.112839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696836, 16.461847, 20.123817>,  <19.892263, 16.113317, 20.142115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696836, 16.461847, 20.123817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698789, -0.359352, 0.618515,
		0.522490, 0.334151, 0.784440,
		-0.488568, 0.871326, -0.045743,
		19.550266, 16.723246, 20.110094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953335, 16.436052, 20.873703>,  <19.892263, 16.113317, 20.142115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953335, 16.436052, 20.873703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647408, 16.620855, 20.694103>,  <19.463852, 16.731737, 20.586344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647408, 16.620855, 20.694103>,  <19.953335, 16.436052, 20.873703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647408, 16.620855, 20.694103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608231, -0.288059, 0.739646,
		0.212384, 0.838791, 0.501321,
		-0.764819, 0.462009, -0.448999,
		19.417961, 16.759459, 20.559402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556885, 16.775248, 21.476969>,  <19.953335, 16.436052, 20.873703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556885, 16.775248, 21.476969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295795, 16.742996, 21.175652>,  <19.139143, 16.723644, 20.994862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295795, 16.742996, 21.175652>,  <19.556885, 16.775248, 21.476969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.295795, 16.742996, 21.175652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742595, -0.128810, 0.657237,
		-0.150025, 0.988386, 0.024202,
		-0.652722, -0.080630, -0.753295,
		19.099979, 16.718807, 20.949663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900433, 17.117807, 21.821987>,  <19.556885, 16.775248, 21.476969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900433, 17.117807, 21.821987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762859, 16.918297, 21.503759>,  <18.680315, 16.798590, 21.312822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762859, 16.918297, 21.503759>,  <18.900433, 17.117807, 21.821987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762859, 16.918297, 21.503759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833015, -0.228943, 0.503658,
		-0.433353, 0.835947, -0.336747,
		-0.343935, -0.498777, -0.795569,
		18.659679, 16.768663, 21.265089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278255, 17.334261, 21.704365>,  <18.900433, 17.117807, 21.821987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278255, 17.334261, 21.704365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268354, 16.975283, 21.528193>,  <18.262413, 16.759895, 21.422489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268354, 16.975283, 21.528193>,  <18.278255, 17.334261, 21.704365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268354, 16.975283, 21.528193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802629, -0.244800, 0.543930,
		-0.595965, 0.366966, -0.714256,
		-0.024754, -0.897446, -0.440430,
		18.260929, 16.706049, 21.396063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588184, 17.250202, 21.442112>,  <18.278255, 17.334261, 21.704365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588184, 17.250202, 21.442112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737764, 16.882767, 21.493263>,  <17.827513, 16.662306, 21.523954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737764, 16.882767, 21.493263>,  <17.588184, 17.250202, 21.442112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737764, 16.882767, 21.493263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848882, -0.283465, 0.446146,
		-0.373576, -0.275390, -0.885777,
		0.373951, -0.918590, 0.127878,
		17.849949, 16.607189, 21.531628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058447, 16.868664, 21.389576>,  <17.588184, 17.250202, 21.442112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058447, 16.868664, 21.389576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318590, 16.632048, 21.580202>,  <17.474676, 16.490078, 21.694578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318590, 16.632048, 21.580202>,  <17.058447, 16.868664, 21.389576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318590, 16.632048, 21.580202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750211, -0.401680, 0.525202,
		-0.119251, -0.699094, -0.705016,
		0.650356, -0.591541, 0.476567,
		17.513697, 16.454586, 21.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673754, 16.259670, 21.529919>,  <17.058447, 16.868664, 21.389576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673754, 16.259670, 21.529919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980341, 16.220287, 21.783794>,  <17.164293, 16.196657, 21.936121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980341, 16.220287, 21.783794>,  <16.673754, 16.259670, 21.529919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980341, 16.220287, 21.783794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639626, -0.206771, 0.740354,
		0.058343, -0.973423, -0.221458,
		0.766469, -0.098456, 0.634691,
		17.210281, 16.190750, 21.974201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467140, 15.744312, 22.023834>,  <16.673754, 16.259670, 21.529919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467140, 15.744312, 22.023834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772804, 15.908763, 22.222645>,  <16.956203, 16.007433, 22.341930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772804, 15.908763, 22.222645>,  <16.467140, 15.744312, 22.023834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772804, 15.908763, 22.222645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524959, -0.051344, 0.849577,
		0.374803, -0.910132, 0.176589,
		0.764160, 0.411126, 0.497026,
		17.002052, 16.032101, 22.371752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895161, 15.075912, 22.078461>,  <16.467140, 15.744312, 22.023834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895161, 15.075912, 22.078461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560823, 14.875813, 22.168898>,  <16.360220, 14.755754, 22.223160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560823, 14.875813, 22.168898>,  <16.895161, 15.075912, 22.078461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560823, 14.875813, 22.168898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224567, -0.064240, -0.972339,
		0.500933, -0.863497, -0.058644,
		-0.835844, -0.500246, 0.226093,
		16.310070, 14.725739, 22.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941238, 14.472101, 21.717119>,  <16.895161, 15.075912, 22.078461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941238, 14.472101, 21.717119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563709, 14.581149, 21.791817>,  <16.337191, 14.646578, 21.836636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563709, 14.581149, 21.791817>,  <16.941238, 14.472101, 21.717119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563709, 14.581149, 21.791817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237227, -0.165582, -0.957239,
		-0.230039, -0.947767, 0.220953,
		-0.943825, 0.272619, 0.186746,
		16.280561, 14.662935, 21.847841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459242, 14.032507, 21.288605>,  <16.941238, 14.472101, 21.717119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459242, 14.032507, 21.288605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166033, 14.286297, 21.386683>,  <15.990108, 14.438571, 21.445530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166033, 14.286297, 21.386683>,  <16.459242, 14.032507, 21.288605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166033, 14.286297, 21.386683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424759, -0.145419, -0.893551,
		-0.531280, -0.759141, 0.376094,
		-0.733022, 0.634475, 0.245194,
		15.946126, 14.476640, 21.460241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756877, 13.871305, 20.974136>,  <16.459242, 14.032507, 21.288605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756877, 13.871305, 20.974136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708416, 14.261485, 21.047695>,  <15.679339, 14.495593, 21.091831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708416, 14.261485, 21.047695>,  <15.756877, 13.871305, 20.974136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708416, 14.261485, 21.047695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436250, 0.114089, -0.892564,
		-0.891632, -0.188363, 0.411718,
		-0.121153, 0.975450, 0.183898,
		15.672070, 14.554120, 21.102865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078526, 14.075554, 20.758886>,  <15.756877, 13.871305, 20.974136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078526, 14.075554, 20.758886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272835, 14.423847, 20.789486>,  <15.389420, 14.632823, 20.807846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272835, 14.423847, 20.789486>,  <15.078526, 14.075554, 20.758886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272835, 14.423847, 20.789486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385192, 0.291811, -0.875484,
		-0.784636, 0.395818, 0.477153,
		0.485771, 0.870732, 0.076500,
		15.418566, 14.685067, 20.812435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609971, 14.577004, 20.588057>,  <15.078526, 14.075554, 20.758886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609971, 14.577004, 20.588057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967391, 14.744030, 20.522078>,  <15.181843, 14.844245, 20.482491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967391, 14.744030, 20.522078>,  <14.609971, 14.577004, 20.588057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967391, 14.744030, 20.522078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308590, 0.304367, -0.901184,
		-0.326097, 0.856155, 0.400824,
		0.893551, 0.417563, -0.164947,
		15.235456, 14.869299, 20.472593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498398, 15.301335, 20.416695>,  <14.609971, 14.577004, 20.588057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498398, 15.301335, 20.416695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853440, 15.182769, 20.275675>,  <15.066466, 15.111629, 20.191063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853440, 15.182769, 20.275675>,  <14.498398, 15.301335, 20.416695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853440, 15.182769, 20.275675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173930, 0.493047, -0.852440,
		0.426500, 0.817950, 0.386076,
		0.887607, -0.296416, -0.352551,
		15.119722, 15.093844, 20.169910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794129, 15.957104, 20.070515>,  <14.498398, 15.301335, 20.416695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794129, 15.957104, 20.070515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995811, 15.643737, 19.925167>,  <15.116819, 15.455716, 19.837959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995811, 15.643737, 19.925167>,  <14.794129, 15.957104, 20.070515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995811, 15.643737, 19.925167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082661, 0.375053, -0.923311,
		0.859620, 0.495572, 0.124345,
		0.504203, -0.783418, -0.363367,
		15.147072, 15.408711, 19.816156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145583, 16.248600, 19.502296>,  <14.794129, 15.957104, 20.070515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.145583, 16.248600, 19.502296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203938, 15.858013, 19.438759>,  <15.238950, 15.623661, 19.400637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203938, 15.858013, 19.438759>,  <15.145583, 16.248600, 19.502296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203938, 15.858013, 19.438759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198247, 0.186159, -0.962312,
		0.969235, 0.108897, 0.220739,
		0.145886, -0.976466, -0.158843,
		15.247704, 15.565073, 19.391106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705697, 16.236776, 19.112541>,  <15.145583, 16.248600, 19.502296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705697, 16.236776, 19.112541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523834, 15.885776, 19.051514>,  <15.414717, 15.675175, 19.014896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523834, 15.885776, 19.051514>,  <15.705697, 16.236776, 19.112541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523834, 15.885776, 19.051514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223234, 0.053562, -0.973292,
		0.862238, -0.476573, 0.171536,
		-0.454656, -0.877502, -0.152570,
		15.387437, 15.622525, 19.005743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060717, 16.125071, 18.618652>,  <15.705697, 16.236776, 19.112541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060717, 16.125071, 18.618652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753680, 15.869339, 18.600471>,  <15.569459, 15.715900, 18.589563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753680, 15.869339, 18.600471>,  <16.060717, 16.125071, 18.618652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753680, 15.869339, 18.600471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100560, 0.190163, -0.976589,
		0.633004, -0.745049, -0.210258,
		-0.767590, -0.639328, -0.045452,
		15.523403, 15.677541, 18.586836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013107, 15.856748, 17.910566>,  <16.060717, 16.125071, 18.618652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013107, 15.856748, 17.910566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648032, 15.784934, 18.057409>,  <15.428987, 15.741846, 18.145515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648032, 15.784934, 18.057409>,  <16.013107, 15.856748, 17.910566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648032, 15.784934, 18.057409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393735, 0.145803, -0.907587,
		0.109409, -0.972888, -0.203758,
		-0.912690, -0.179525, 0.367108,
		15.374226, 15.731073, 18.167542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.029556, 14.873035, 27.427486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.356341, 14.734061, 27.611599>,  <15.552413, 14.650677, 27.722067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.356341, 14.734061, 27.611599>,  <15.029556, 14.873035, 27.427486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356341, 14.734061, 27.611599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449263, -0.116979, -0.885708,
		0.361571, 0.930378, 0.060523,
		0.816964, -0.347437, 0.460280,
		15.601431, 14.629830, 27.749683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685237, 15.346169, 27.119793>,  <15.029556, 14.873035, 27.427486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685237, 15.346169, 27.119793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.794040, 14.996222, 27.280106>,  <15.859322, 14.786255, 27.376293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.794040, 14.996222, 27.280106>,  <15.685237, 15.346169, 27.119793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794040, 14.996222, 27.280106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599468, -0.171744, -0.781756,
		0.752761, 0.452899, 0.477737,
		0.272007, -0.874864, 0.400781,
		15.875642, 14.733764, 27.400339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478901, 15.361588, 26.950533>,  <15.685237, 15.346169, 27.119793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478901, 15.361588, 26.950533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.344154, 14.989573, 27.009254>,  <16.263306, 14.766365, 27.044487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.344154, 14.989573, 27.009254>,  <16.478901, 15.361588, 26.950533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344154, 14.989573, 27.009254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355614, -0.270046, -0.894770,
		0.871813, -0.249213, 0.421704,
		-0.336868, -0.930037, 0.146806,
		16.243093, 14.710563, 27.053297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101894, 15.047519, 26.736176>,  <16.478901, 15.361588, 26.950533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.101894, 15.047519, 26.736176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.804022, 14.780820, 26.748161>,  <16.625298, 14.620801, 26.755352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.804022, 14.780820, 26.748161>,  <17.101894, 15.047519, 26.736176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804022, 14.780820, 26.748161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279102, -0.351881, -0.893466,
		0.606259, -0.656985, 0.448130,
		-0.744682, -0.666746, 0.029965,
		16.580618, 14.580796, 26.757151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447510, 14.354351, 26.547997>,  <17.101894, 15.047519, 26.736176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447510, 14.354351, 26.547997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054470, 14.336734, 26.475819>,  <16.818645, 14.326163, 26.432512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054470, 14.336734, 26.475819>,  <17.447510, 14.354351, 26.547997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054470, 14.336734, 26.475819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183792, -0.370967, -0.910277,
		-0.026847, -0.927601, 0.372606,
		-0.982599, -0.044044, -0.180445,
		16.759691, 14.323521, 26.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295567, 13.704814, 26.120548>,  <17.447510, 14.354351, 26.547997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295567, 13.704814, 26.120548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.963774, 13.918688, 26.055962>,  <16.764698, 14.047012, 26.017210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.963774, 13.918688, 26.055962>,  <17.295567, 13.704814, 26.120548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963774, 13.918688, 26.055962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065465, -0.380170, -0.922597,
		-0.554685, -0.754706, 0.350347,
		-0.829481, 0.534686, -0.161468,
		16.714930, 14.079094, 26.007521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023418, 13.290064, 25.585648>,  <17.295567, 13.704814, 26.120548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023418, 13.290064, 25.585648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.827644, 13.637104, 25.550495>,  <16.710180, 13.845328, 25.529404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.827644, 13.637104, 25.550495>,  <17.023418, 13.290064, 25.585648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827644, 13.637104, 25.550495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149113, -0.182554, -0.971823,
		-0.859196, -0.462540, 0.218719,
		-0.489435, 0.867600, -0.087879,
		16.680813, 13.897385, 25.524132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668159, 13.184669, 25.035511>,  <17.023418, 13.290064, 25.585648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668159, 13.184669, 25.035511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.651875, 13.583555, 25.060516>,  <16.642103, 13.822886, 25.075520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.651875, 13.583555, 25.060516>,  <16.668159, 13.184669, 25.035511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651875, 13.583555, 25.060516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191717, 0.053606, -0.979985,
		-0.980605, -0.051883, 0.189000,
		-0.040714, 0.997213, 0.062513,
		16.639660, 13.882719, 25.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081636, 13.373095, 24.752932>,  <16.668159, 13.184669, 25.035511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081636, 13.373095, 24.752932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298960, 13.707599, 24.723314>,  <16.429354, 13.908301, 24.705544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298960, 13.707599, 24.723314>,  <16.081636, 13.373095, 24.752932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298960, 13.707599, 24.723314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179689, 0.029684, -0.983275,
		-0.820076, 0.547528, 0.166395,
		0.543310, 0.836260, -0.074042,
		16.461952, 13.958477, 24.701101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636796, 13.765114, 24.264019>,  <16.081636, 13.373095, 24.752932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636796, 13.765114, 24.264019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.005331, 13.917751, 24.234295>,  <16.226452, 14.009334, 24.216459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.005331, 13.917751, 24.234295>,  <15.636796, 13.765114, 24.264019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005331, 13.917751, 24.234295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204067, 0.312006, -0.927906,
		-0.330897, 0.870080, 0.365334,
		0.921338, 0.381593, -0.074312,
		16.281733, 14.032229, 24.212002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514705, 14.409650, 23.931105>,  <15.636796, 13.765114, 24.264019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514705, 14.409650, 23.931105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.910987, 14.366789, 23.897591>,  <16.148756, 14.341072, 23.877481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.910987, 14.366789, 23.897591>,  <15.514705, 14.409650, 23.931105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910987, 14.366789, 23.897591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044559, 0.326321, -0.944208,
		0.128516, 0.939166, 0.318513,
		0.990706, -0.107153, -0.083786,
		16.208199, 14.334642, 23.872456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782678, 15.145114, 23.658846>,  <15.514705, 14.409650, 23.931105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782678, 15.145114, 23.658846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009985, 14.826180, 23.577528>,  <16.146370, 14.634820, 23.528738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009985, 14.826180, 23.577528>,  <15.782678, 15.145114, 23.658846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.009985, 14.826180, 23.577528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018341, 0.234729, -0.971888,
		0.822639, 0.556022, 0.118765,
		0.568269, -0.797334, -0.203295,
		16.180466, 14.586980, 23.516539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387577, 15.365294, 23.355753>,  <15.782678, 15.145114, 23.658846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387577, 15.365294, 23.355753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.363001, 14.984779, 23.234903>,  <16.348255, 14.756471, 23.162394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.363001, 14.984779, 23.234903>,  <16.387577, 15.365294, 23.355753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363001, 14.984779, 23.234903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205275, 0.308269, -0.928888,
		0.976774, 0.004947, -0.214215,
		-0.061441, -0.951286, -0.302125,
		16.344568, 14.699393, 23.144266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449209, 15.484589, 22.704945>,  <16.387577, 15.365294, 23.355753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449209, 15.484589, 22.704945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.335388, 15.101283, 22.715992>,  <16.267096, 14.871300, 22.722620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.335388, 15.101283, 22.715992>,  <16.449209, 15.484589, 22.704945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335388, 15.101283, 22.715992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168295, 0.021569, -0.985501,
		0.943773, -0.285074, -0.167408,
		-0.284551, -0.958263, 0.027620,
		16.250023, 14.813805, 22.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183746, 15.212514, 22.801210>,  <16.449209, 15.484589, 22.704945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183746, 15.212514, 22.801210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.156633, 15.600087, 22.896351>,  <17.140366, 15.832631, 22.953436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.156633, 15.600087, 22.896351>,  <17.183746, 15.212514, 22.801210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156633, 15.600087, 22.896351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449217, -0.242507, 0.859880,
		0.890848, -0.048562, 0.451699,
		-0.067783, 0.968933, 0.237852,
		17.136299, 15.890767, 22.967707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370371, 15.393821, 23.449499>,  <17.183746, 15.212514, 22.801210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370371, 15.393821, 23.449499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.173969, 15.737362, 23.391140>,  <17.056128, 15.943486, 23.356125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.173969, 15.737362, 23.391140>,  <17.370371, 15.393821, 23.449499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173969, 15.737362, 23.391140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425533, -0.090315, 0.900425,
		0.760156, 0.504197, 0.409815,
		-0.491004, 0.858853, -0.145899,
		17.026669, 15.995018, 23.347370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383106, 15.821185, 24.010677>,  <17.370371, 15.393821, 23.449499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383106, 15.821185, 24.010677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066462, 15.982027, 23.826649>,  <16.876474, 16.078531, 23.716232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066462, 15.982027, 23.826649>,  <17.383106, 15.821185, 24.010677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066462, 15.982027, 23.826649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479682, 0.057445, 0.875560,
		0.378495, 0.913790, 0.147409,
		-0.791610, 0.402105, -0.460071,
		16.828979, 16.102659, 23.688627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032263, 16.053402, 24.544687>,  <17.383106, 15.821185, 24.010677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032263, 16.053402, 24.544687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.761332, 16.152262, 24.267517>,  <16.598772, 16.211576, 24.101215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.761332, 16.152262, 24.267517>,  <17.032263, 16.053402, 24.544687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761332, 16.152262, 24.267517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633997, 0.281700, 0.720203,
		0.373194, 0.927126, -0.034112,
		-0.677329, 0.247148, -0.692924,
		16.558132, 16.226406, 24.059639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028080, 16.758814, 24.318872>,  <17.032263, 16.053402, 24.544687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028080, 16.758814, 24.318872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.663092, 16.610834, 24.248974>,  <16.444099, 16.522047, 24.207035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.663092, 16.610834, 24.248974>,  <17.028080, 16.758814, 24.318872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.663092, 16.610834, 24.248974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316248, 0.366746, 0.874920,
		-0.259587, 0.853601, -0.451640,
		-0.912470, -0.369948, -0.174747,
		16.389351, 16.499849, 24.196550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469381, 17.256245, 24.336515>,  <17.028080, 16.758814, 24.318872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.469381, 17.256245, 24.336515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.263929, 16.918098, 24.395226>,  <16.140657, 16.715210, 24.430452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.263929, 16.918098, 24.395226>,  <16.469381, 17.256245, 24.336515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263929, 16.918098, 24.395226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293825, 0.334021, 0.895598,
		-0.806134, 0.416879, -0.419953,
		-0.513629, -0.845365, 0.146776,
		16.109840, 16.664490, 24.439259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723922, 17.543583, 24.374802>,  <16.469381, 17.256245, 24.336515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723922, 17.543583, 24.374802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.775632, 17.186840, 24.548182>,  <15.806658, 16.972795, 24.652210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.775632, 17.186840, 24.548182>,  <15.723922, 17.543583, 24.374802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775632, 17.186840, 24.548182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402359, 0.352339, 0.844964,
		-0.906308, -0.283637, -0.313298,
		0.129276, -0.891856, 0.433452,
		15.814415, 16.919283, 24.678217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167507, 17.467333, 24.772964>,  <15.723922, 17.543583, 24.374802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167507, 17.467333, 24.772964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.418672, 17.190914, 24.916176>,  <15.569370, 17.025063, 25.002104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.418672, 17.190914, 24.916176>,  <15.167507, 17.467333, 24.772964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418672, 17.190914, 24.916176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294232, 0.215109, 0.931212,
		-0.720525, -0.690062, -0.068258,
		0.627911, -0.691045, 0.358029,
		15.607045, 16.983601, 25.023584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823738, 17.104168, 25.227730>,  <15.167507, 17.467333, 24.772964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823738, 17.104168, 25.227730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.205538, 17.062971, 25.339678>,  <15.434617, 17.038254, 25.406847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.205538, 17.062971, 25.339678>,  <14.823738, 17.104168, 25.227730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205538, 17.062971, 25.339678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257142, 0.191057, 0.947299,
		-0.151036, -0.976161, 0.155879,
		0.954498, -0.102993, 0.279868,
		15.491887, 17.032074, 25.423637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790271, 16.906586, 26.000124>,  <14.823738, 17.104168, 25.227730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790271, 16.906586, 26.000124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.185872, 16.963797, 25.985075>,  <15.423233, 16.998123, 25.976046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.185872, 16.963797, 25.985075>,  <14.790271, 16.906586, 26.000124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185872, 16.963797, 25.985075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003072, 0.234457, 0.972122,
		0.147859, -0.961547, 0.231439,
		0.989004, 0.143026, -0.037620,
		15.482574, 17.006704, 25.973789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059071, 16.640388, 26.640432>,  <14.790271, 16.906586, 26.000124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059071, 16.640388, 26.640432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.330899, 16.903383, 26.510269>,  <15.493997, 17.061180, 26.432171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.330899, 16.903383, 26.510269>,  <15.059071, 16.640388, 26.640432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330899, 16.903383, 26.510269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156565, 0.303371, 0.939922,
		0.716709, -0.689691, 0.103222,
		0.679570, 0.657490, -0.325410,
		15.534770, 17.100630, 26.412645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588015, 16.543945, 27.042793>,  <15.059071, 16.640388, 26.640432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588015, 16.543945, 27.042793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.597471, 16.915916, 26.896000>,  <15.603146, 17.139099, 26.807924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.597471, 16.915916, 26.896000>,  <15.588015, 16.543945, 27.042793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597471, 16.915916, 26.896000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200377, 0.355231, 0.913050,
		0.979433, -0.095122, -0.177938,
		0.023642, 0.929926, -0.366985,
		15.604564, 17.194895, 26.785904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128000, 16.867296, 27.314648>,  <15.588015, 16.543945, 27.042793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128000, 16.867296, 27.314648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.932686, 17.189928, 27.181379>,  <15.815496, 17.383507, 27.101418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.932686, 17.189928, 27.181379>,  <16.128000, 16.867296, 27.314648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932686, 17.189928, 27.181379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033134, 0.398637, 0.916510,
		0.872053, 0.436481, -0.221374,
		-0.488288, 0.806581, -0.333171,
		15.786200, 17.431902, 27.081429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591084, 17.427040, 27.305836>,  <16.128000, 16.867296, 27.314648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591084, 17.427040, 27.305836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568459, 17.127661, 27.041525>,  <16.554884, 16.948032, 26.882938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568459, 17.127661, 27.041525>,  <16.591084, 17.427040, 27.305836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568459, 17.127661, 27.041525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969146, -0.200193, 0.143800,
		-0.239910, -0.632254, 0.736680,
		-0.056560, -0.748450, -0.660775,
		16.551491, 16.903126, 26.843292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.310379, 17.596577, 26.534924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.665619, 17.421638, 26.591505>,  <9.878762, 17.316675, 26.625454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.665619, 17.421638, 26.591505>,  <9.310379, 17.596577, 26.534924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.665619, 17.421638, 26.591505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121050, -0.074343, -0.989859,
		0.443428, 0.896215, -0.013083,
		0.888099, -0.437347, 0.141452,
		9.932049, 17.290434, 26.633942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.689201, 18.032055, 26.133821>,  <9.310379, 17.596577, 26.534924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.689201, 18.032055, 26.133821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.913336, 17.702744, 26.170124>,  <10.047816, 17.505157, 26.191906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.913336, 17.702744, 26.170124>,  <9.689201, 18.032055, 26.133821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.913336, 17.702744, 26.170124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260629, 0.071250, -0.962806,
		0.786191, 0.563149, 0.254494,
		0.560336, -0.823278, 0.090757,
		10.081436, 17.455761, 26.197351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.246850, 18.099796, 25.665455>,  <9.689201, 18.032055, 26.133821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.246850, 18.099796, 25.665455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.258555, 17.706299, 25.736320>,  <10.265578, 17.470200, 25.778841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.258555, 17.706299, 25.736320>,  <10.246850, 18.099796, 25.665455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258555, 17.706299, 25.736320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382097, -0.152772, -0.911407,
		0.923659, 0.094366, 0.371416,
		0.029264, -0.983746, 0.177166,
		10.267335, 17.411175, 25.789471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.819207, 18.003578, 25.559313>,  <10.246850, 18.099796, 25.665455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.819207, 18.003578, 25.559313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715321, 17.620338, 25.510988>,  <10.652988, 17.390394, 25.481995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715321, 17.620338, 25.510988>,  <10.819207, 18.003578, 25.559313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715321, 17.620338, 25.510988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518030, -0.032649, -0.854739,
		0.814979, -0.284573, 0.504803,
		-0.259717, -0.958098, -0.120810,
		10.637405, 17.332909, 25.474745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319436, 17.787205, 25.131203>,  <10.819207, 18.003578, 25.559313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319436, 17.787205, 25.131203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.045267, 17.501637, 25.073908>,  <10.880766, 17.330296, 25.039532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.045267, 17.501637, 25.073908>,  <11.319436, 17.787205, 25.131203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.045267, 17.501637, 25.073908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340539, -0.140421, -0.929685,
		0.643608, -0.686003, 0.339365,
		-0.685421, -0.713920, -0.143235,
		10.839641, 17.287460, 25.030937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614707, 17.069929, 24.838638>,  <11.319436, 17.787205, 25.131203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614707, 17.069929, 24.838638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.229180, 17.088005, 24.733555>,  <10.997865, 17.098850, 24.670506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.229180, 17.088005, 24.733555>,  <11.614707, 17.069929, 24.838638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229180, 17.088005, 24.733555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245758, -0.231079, -0.941385,
		-0.103247, -0.971885, 0.211613,
		-0.963817, 0.045190, -0.262707,
		10.940035, 17.101562, 24.654743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.601332, 16.588778, 24.281353>,  <11.614707, 17.069929, 24.838638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.601332, 16.588778, 24.281353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.250356, 16.779133, 24.257252>,  <11.039770, 16.893347, 24.242790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.250356, 16.779133, 24.257252>,  <11.601332, 16.588778, 24.281353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250356, 16.779133, 24.257252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066349, -0.003996, -0.997788,
		-0.475076, -0.879497, -0.028068,
		-0.877440, 0.475887, -0.060252,
		10.987123, 16.921900, 24.239176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.078149, 16.129354, 23.955761>,  <11.601332, 16.588778, 24.281353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.078149, 16.129354, 23.955761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.948563, 16.504124, 23.903271>,  <10.870811, 16.728985, 23.871777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.948563, 16.504124, 23.903271>,  <11.078149, 16.129354, 23.955761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.948563, 16.504124, 23.903271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310825, -0.025600, -0.950122,
		-0.893552, -0.348595, -0.282926,
		-0.323965, 0.936924, -0.131226,
		10.851373, 16.785200, 23.863903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.783596, 16.020054, 23.308062>,  <11.078149, 16.129354, 23.955761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.783596, 16.020054, 23.308062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.844233, 16.410727, 23.368870>,  <10.880614, 16.645130, 23.405355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.844233, 16.410727, 23.368870>,  <10.783596, 16.020054, 23.308062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844233, 16.410727, 23.368870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153647, 0.128647, -0.979716,
		-0.976429, 0.171874, -0.130563,
		0.151591, 0.976683, 0.152022,
		10.889709, 16.703732, 23.414476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.366216, 16.308165, 22.732040>,  <10.783596, 16.020054, 23.308062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.366216, 16.308165, 22.732040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.610942, 16.594282, 22.867117>,  <10.757777, 16.765953, 22.948164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.610942, 16.594282, 22.867117>,  <10.366216, 16.308165, 22.732040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.610942, 16.594282, 22.867117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151116, 0.313359, -0.937534,
		-0.776432, 0.624628, 0.083626,
		0.611815, 0.715294, 0.337693,
		10.794486, 16.808870, 22.968426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.261598, 16.892954, 22.368399>,  <10.366216, 16.308165, 22.732040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.261598, 16.892954, 22.368399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.616849, 17.003601, 22.515211>,  <10.830000, 17.069988, 22.603298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.616849, 17.003601, 22.515211>,  <10.261598, 16.892954, 22.368399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616849, 17.003601, 22.515211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205044, 0.476238, -0.855076,
		-0.411322, 0.834674, 0.366242,
		0.888128, 0.276616, 0.367032,
		10.883287, 17.086586, 22.625320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.312163, 17.470863, 22.016518>,  <10.261598, 16.892954, 22.368399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.312163, 17.470863, 22.016518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674862, 17.362411, 22.145700>,  <10.892481, 17.297340, 22.223209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674862, 17.362411, 22.145700>,  <10.312163, 17.470863, 22.016518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674862, 17.362411, 22.145700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388242, 0.237906, -0.890319,
		0.164557, 0.932679, 0.320984,
		0.906746, -0.271128, 0.322957,
		10.946886, 17.281073, 22.242588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811263, 18.010962, 22.060923>,  <10.312163, 17.470863, 22.016518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.811263, 18.010962, 22.060923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.999893, 17.663813, 21.998421>,  <11.113071, 17.455524, 21.960920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.999893, 17.663813, 21.998421>,  <10.811263, 18.010962, 22.060923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999893, 17.663813, 21.998421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277811, 0.314387, -0.907734,
		0.836921, 0.384656, 0.389362,
		0.471576, -0.867871, -0.156255,
		11.141366, 17.403452, 21.951544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302311, 18.096224, 21.649876>,  <10.811263, 18.010962, 22.060923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302311, 18.096224, 21.649876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.346572, 17.700180, 21.615381>,  <11.373129, 17.462553, 21.594685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.346572, 17.700180, 21.615381>,  <11.302311, 18.096224, 21.649876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.346572, 17.700180, 21.615381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062248, 0.093501, -0.993671,
		0.991908, 0.104584, 0.071978,
		0.110652, -0.990111, -0.086234,
		11.379767, 17.403147, 21.589512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915880, 18.403593, 21.792364>,  <11.302311, 18.096224, 21.649876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915880, 18.403593, 21.792364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.061434, 18.776123, 21.798342>,  <12.148766, 18.999641, 21.801929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.061434, 18.776123, 21.798342>,  <11.915880, 18.403593, 21.792364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061434, 18.776123, 21.798342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325076, 0.111943, 0.939039,
		0.872878, -0.346559, 0.343485,
		0.363883, 0.931325, 0.014946,
		12.170599, 19.055521, 21.802826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.278448, 18.481495, 22.347452>,  <11.915880, 18.403593, 21.792364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.278448, 18.481495, 22.347452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.196603, 18.864948, 22.268301>,  <12.147495, 19.095020, 22.220810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.196603, 18.864948, 22.268301>,  <12.278448, 18.481495, 22.347452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196603, 18.864948, 22.268301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229958, 0.149421, 0.961661,
		0.951448, 0.242273, 0.189872,
		-0.204614, 0.958633, -0.197879,
		12.135219, 19.152538, 22.208937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.432466, 18.813055, 22.887772>,  <12.278448, 18.481495, 22.347452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.432466, 18.813055, 22.887772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.206685, 19.091478, 22.710279>,  <12.071217, 19.258533, 22.603785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.206685, 19.091478, 22.710279>,  <12.432466, 18.813055, 22.887772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.206685, 19.091478, 22.710279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306677, 0.322245, 0.895604,
		0.766383, 0.641607, 0.031574,
		-0.564452, 0.696059, -0.443729,
		12.037350, 19.300297, 22.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.537089, 19.481838, 23.274199>,  <12.432466, 18.813055, 22.887772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.537089, 19.481838, 23.274199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.181419, 19.527742, 23.097021>,  <11.968018, 19.555285, 22.990715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.181419, 19.527742, 23.097021>,  <12.537089, 19.481838, 23.274199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181419, 19.527742, 23.097021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416941, 0.195564, 0.887646,
		0.188489, 0.973953, -0.126043,
		-0.889175, 0.114760, -0.442942,
		11.914667, 19.562170, 22.964138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293571, 20.023409, 23.634169>,  <12.537089, 19.481838, 23.274199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293571, 20.023409, 23.634169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972894, 19.860968, 23.458727>,  <11.780488, 19.763504, 23.353462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972894, 19.860968, 23.458727>,  <12.293571, 20.023409, 23.634169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.972894, 19.860968, 23.458727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541177, 0.181557, 0.821075,
		-0.253808, 0.895611, -0.365326,
		-0.801691, -0.406102, -0.438603,
		11.732387, 19.739138, 23.327147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.821397, 20.473167, 23.605415>,  <12.293571, 20.023409, 23.634169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.821397, 20.473167, 23.605415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.621320, 20.128094, 23.575535>,  <11.501274, 19.921049, 23.557606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.621320, 20.128094, 23.575535>,  <11.821397, 20.473167, 23.605415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621320, 20.128094, 23.575535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439914, 0.178860, 0.880048,
		-0.745844, 0.473055, -0.468972,
		-0.500192, -0.862686, -0.074702,
		11.471262, 19.869287, 23.553123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098292, 20.564156, 23.815067>,  <11.821397, 20.473167, 23.605415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098292, 20.564156, 23.815067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.119781, 20.168907, 23.872660>,  <11.132675, 19.931759, 23.907215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.119781, 20.168907, 23.872660>,  <11.098292, 20.564156, 23.815067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119781, 20.168907, 23.872660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390607, 0.111904, 0.913731,
		-0.918989, -0.105327, -0.379956,
		0.053722, -0.988122, 0.143980,
		11.135898, 19.872471, 23.915854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.445303, 20.381346, 24.164963>,  <11.098292, 20.564156, 23.815067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.445303, 20.381346, 24.164963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.691294, 20.074232, 24.236864>,  <10.838888, 19.889963, 24.280005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.691294, 20.074232, 24.236864>,  <10.445303, 20.381346, 24.164963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.691294, 20.074232, 24.236864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302146, -0.018879, 0.953075,
		-0.728362, -0.640430, -0.243593,
		0.614977, -0.767784, 0.179752,
		10.875787, 19.843897, 24.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.129459, 19.975710, 24.741060>,  <10.445303, 20.381346, 24.164963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.129459, 19.975710, 24.741060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.488238, 19.799904, 24.760286>,  <10.703506, 19.694420, 24.771822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.488238, 19.799904, 24.760286>,  <10.129459, 19.975710, 24.741060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.488238, 19.799904, 24.760286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085056, -0.064852, 0.994264,
		-0.433877, -0.895891, -0.095552,
		0.896948, -0.439515, 0.048063,
		10.757322, 19.668049, 24.774706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.148609, 19.435354, 25.378878>,  <10.129459, 19.975710, 24.741060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.148609, 19.435354, 25.378878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.525056, 19.555286, 25.316399>,  <10.750924, 19.627247, 25.278912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.525056, 19.555286, 25.316399>,  <10.148609, 19.435354, 25.378878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.525056, 19.555286, 25.316399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174747, -0.035901, 0.983959,
		0.289415, -0.953316, -0.086182,
		0.941118, 0.299832, -0.156199,
		10.807391, 19.645235, 25.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551253, 18.989084, 25.739759>,  <10.148609, 19.435354, 25.378878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551253, 18.989084, 25.739759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.764965, 19.324533, 25.697321>,  <10.893192, 19.525803, 25.671858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.764965, 19.324533, 25.697321>,  <10.551253, 18.989084, 25.739759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.764965, 19.324533, 25.697321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355124, -0.108785, 0.928468,
		0.767093, -0.533738, -0.355936,
		0.534279, 0.838623, -0.106095,
		10.925249, 19.576120, 25.665493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238019, 18.809307, 25.947269>,  <10.551253, 18.989084, 25.739759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238019, 18.809307, 25.947269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209600, 19.207710, 25.968901>,  <11.192550, 19.446753, 25.981880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209600, 19.207710, 25.968901>,  <11.238019, 18.809307, 25.947269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209600, 19.207710, 25.968901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423193, -0.018996, 0.905840,
		0.903250, 0.087243, -0.420153,
		-0.071047, 0.996006, 0.054078,
		11.188287, 19.506512, 25.985125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863764, 19.068521, 26.436026>,  <11.238019, 18.809307, 25.947269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863764, 19.068521, 26.436026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.619471, 19.385206, 26.441591>,  <11.472895, 19.575218, 26.444931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.619471, 19.385206, 26.441591>,  <11.863764, 19.068521, 26.436026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619471, 19.385206, 26.441591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090551, 0.052376, 0.994514,
		0.786641, 0.608643, -0.103678,
		-0.610734, 0.791714, 0.013912,
		11.436251, 19.622721, 26.445765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247172, 19.583139, 26.728472>,  <11.863764, 19.068521, 26.436026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247172, 19.583139, 26.728472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.860465, 19.670261, 26.782017>,  <11.628441, 19.722534, 26.814144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.860465, 19.670261, 26.782017>,  <12.247172, 19.583139, 26.728472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860465, 19.670261, 26.782017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129726, -0.033246, 0.990992,
		0.220295, 0.975425, 0.003886,
		-0.966768, 0.217807, 0.133862,
		11.570435, 19.735603, 26.822176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.587144, 20.252590, 26.649374>,  <12.247172, 19.583139, 26.728472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.587144, 20.252590, 26.649374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.954641, 20.402872, 26.697966>,  <13.175139, 20.493042, 26.727121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.954641, 20.402872, 26.697966>,  <12.587144, 20.252590, 26.649374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954641, 20.402872, 26.697966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093130, 0.092794, -0.991320,
		-0.383716, 0.922082, 0.050264,
		0.918743, 0.375704, 0.121480,
		13.230265, 20.515583, 26.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636157, 20.927984, 26.236864>,  <12.587144, 20.252590, 26.649374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636157, 20.927984, 26.236864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.005838, 20.778336, 26.267536>,  <13.227648, 20.688547, 26.285940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.005838, 20.778336, 26.267536>,  <12.636157, 20.927984, 26.236864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005838, 20.778336, 26.267536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141753, 0.149618, -0.978530,
		0.354616, 0.915231, 0.191310,
		0.924204, -0.374121, 0.076680,
		13.283100, 20.666100, 26.290541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985826, 21.270000, 25.635027>,  <12.636157, 20.927984, 26.236864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985826, 21.270000, 25.635027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.226203, 20.992746, 25.794243>,  <13.370429, 20.826395, 25.889772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.226203, 20.992746, 25.794243>,  <12.985826, 21.270000, 25.635027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226203, 20.992746, 25.794243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455340, -0.112406, -0.883193,
		0.656913, 0.711990, 0.248062,
		0.600942, -0.693134, 0.398038,
		13.406486, 20.784805, 25.913654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645306, 21.494030, 25.459438>,  <12.985826, 21.270000, 25.635027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645306, 21.494030, 25.459438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.672209, 21.105377, 25.550129>,  <13.688351, 20.872185, 25.604544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.672209, 21.105377, 25.550129>,  <13.645306, 21.494030, 25.459438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672209, 21.105377, 25.550129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656327, -0.128067, -0.743528,
		0.751473, 0.198815, 0.629096,
		0.067258, -0.971633, 0.226726,
		13.692387, 20.813887, 25.618147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405434, 21.223167, 25.583008>,  <13.645306, 21.494030, 25.459438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405434, 21.223167, 25.583008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.180826, 20.916342, 25.458874>,  <14.046062, 20.732246, 25.384394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.180826, 20.916342, 25.458874>,  <14.405434, 21.223167, 25.583008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180826, 20.916342, 25.458874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608046, -0.128131, -0.783494,
		0.561228, -0.628643, 0.538359,
		-0.561519, -0.767066, -0.310333,
		14.012371, 20.686222, 25.365774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811570, 20.645338, 25.471937>,  <14.405434, 21.223167, 25.583008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811570, 20.645338, 25.471937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480087, 20.551382, 25.268734>,  <14.281198, 20.495008, 25.146812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480087, 20.551382, 25.268734>,  <14.811570, 20.645338, 25.471937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480087, 20.551382, 25.268734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551876, -0.191885, -0.811550,
		0.093148, -0.952894, 0.288648,
		-0.828707, -0.234892, -0.508006,
		14.231475, 20.480915, 25.116333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029586, 19.998411, 25.043877>,  <14.811570, 20.645338, 25.471937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029586, 19.998411, 25.043877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.696554, 20.111383, 24.853279>,  <14.496736, 20.179167, 24.738920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.696554, 20.111383, 24.853279>,  <15.029586, 19.998411, 25.043877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696554, 20.111383, 24.853279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470684, -0.092759, -0.877412,
		-0.292008, -0.954792, -0.055707,
		-0.832579, 0.282432, -0.476492,
		14.446780, 20.196114, 24.710331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971867, 19.517502, 24.442196>,  <15.029586, 19.998411, 25.043877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971867, 19.517502, 24.442196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.708672, 19.806013, 24.355652>,  <14.550755, 19.979120, 24.303724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.708672, 19.806013, 24.355652>,  <14.971867, 19.517502, 24.442196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708672, 19.806013, 24.355652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296088, -0.016370, -0.955020,
		-0.692376, -0.692454, -0.202790,
		-0.657988, 0.721277, -0.216362,
		14.511275, 20.022396, 24.290743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510915, 19.308821, 23.813700>,  <14.971867, 19.517502, 24.442196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510915, 19.308821, 23.813700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.576767, 19.700529, 23.860897>,  <14.616279, 19.935555, 23.889215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.576767, 19.700529, 23.860897>,  <14.510915, 19.308821, 23.813700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576767, 19.700529, 23.860897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346729, 0.054535, -0.936379,
		-0.923404, 0.195069, -0.330564,
		0.164631, 0.979272, 0.117994,
		14.626157, 19.994310, 23.896296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129872, 19.712875, 23.261194>,  <14.510915, 19.308821, 23.813700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129872, 19.712875, 23.261194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.416274, 19.957481, 23.395887>,  <14.588115, 20.104244, 23.476704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.416274, 19.957481, 23.395887>,  <14.129872, 19.712875, 23.261194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416274, 19.957481, 23.395887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214295, 0.266539, -0.939699,
		-0.664391, 0.744989, 0.059799,
		0.716004, 0.611513, 0.336733,
		14.631076, 20.140936, 23.496908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064992, 20.355854, 22.936516>,  <14.129872, 19.712875, 23.261194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064992, 20.355854, 22.936516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.452368, 20.349224, 23.035994>,  <14.684793, 20.345245, 23.095680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.452368, 20.349224, 23.035994>,  <14.064992, 20.355854, 22.936516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452368, 20.349224, 23.035994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234980, 0.393426, -0.888820,
		-0.083111, 0.919207, 0.384904,
		0.968441, -0.016574, 0.248693,
		14.742900, 20.344252, 23.110601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299723, 21.037289, 22.697701>,  <14.064992, 20.355854, 22.936516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299723, 21.037289, 22.697701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.614219, 20.799799, 22.766190>,  <14.802917, 20.657305, 22.807283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.614219, 20.799799, 22.766190>,  <14.299723, 21.037289, 22.697701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614219, 20.799799, 22.766190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458653, 0.375051, -0.805589,
		0.414081, 0.711918, 0.567194,
		0.786241, -0.593724, 0.171222,
		14.850091, 20.621681, 22.817556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.851413, 21.495857, 22.561356>,  <14.299723, 21.037289, 22.697701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.851413, 21.495857, 22.561356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.998908, 21.124149, 22.552505>,  <15.087405, 20.901125, 22.547195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.998908, 21.124149, 22.552505>,  <14.851413, 21.495857, 22.561356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998908, 21.124149, 22.552505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489864, 0.214499, -0.844999,
		0.789979, 0.300744, 0.534310,
		0.368737, -0.929270, -0.022126,
		15.109529, 20.845367, 22.545868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509871, 21.517788, 22.157307>,  <14.851413, 21.495857, 22.561356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509871, 21.517788, 22.157307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.384183, 21.138391, 22.141167>,  <15.308769, 20.910753, 22.131483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.384183, 21.138391, 22.141167>,  <15.509871, 21.517788, 22.157307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384183, 21.138391, 22.141167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192282, -0.021963, -0.981094,
		0.929673, -0.316040, 0.189279,
		-0.314222, -0.948492, -0.040351,
		15.289916, 20.853844, 22.129061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<2.429660, 25.279490, 16.078114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.412454, 25.138901, 15.704029>,  <2.402131, 25.054548, 15.479579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.412454, 25.138901, 15.704029>,  <2.429660, 25.279490, 16.078114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.412454, 25.138901, 15.704029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578316, -0.772067, 0.263559,
		-0.814678, -0.529511, 0.236469,
		-0.043013, -0.351470, -0.935211,
		2.399550, 25.033461, 15.423466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.380424, 24.497284, 16.142065>,  <2.429660, 25.279490, 16.078114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.380424, 24.497284, 16.142065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.518176, 24.602457, 15.781561>,  <2.600828, 24.665562, 15.565259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.518176, 24.602457, 15.781561>,  <2.380424, 24.497284, 16.142065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.518176, 24.602457, 15.781561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717457, -0.692871, 0.072010,
		-0.605522, -0.671413, -0.427256,
		0.344382, 0.262934, -0.901258,
		2.621491, 24.681337, 15.511184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.472403, 23.867199, 15.741418>,  <2.380424, 24.497284, 16.142065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.472403, 23.867199, 15.741418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.725392, 24.172258, 15.687243>,  <2.877185, 24.355295, 15.654737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.725392, 24.172258, 15.687243>,  <2.472403, 23.867199, 15.741418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.725392, 24.172258, 15.687243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760361, -0.577944, 0.296364,
		0.147747, -0.290423, -0.945423,
		0.632473, 0.762650, -0.135437,
		2.915134, 24.401052, 15.646611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.028639, 23.722759, 15.211383>,  <2.472403, 23.867199, 15.741418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.028639, 23.722759, 15.211383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.127251, 23.996824, 15.485544>,  <3.186419, 24.161263, 15.650041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.127251, 23.996824, 15.485544>,  <3.028639, 23.722759, 15.211383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.127251, 23.996824, 15.485544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781905, -0.558464, 0.277024,
		0.572579, 0.467625, -0.673409,
		0.246532, 0.685161, 0.685403,
		3.201211, 24.202372, 15.691165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.703127, 23.931480, 15.149084>,  <3.028639, 23.722759, 15.211383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.703127, 23.931480, 15.149084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.608881, 24.033815, 15.524111>,  <3.552333, 24.095217, 15.749127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.608881, 24.033815, 15.524111>,  <3.703127, 23.931480, 15.149084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608881, 24.033815, 15.524111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781393, -0.523747, 0.339285,
		0.577850, 0.812549, -0.076508,
		-0.235615, 0.255839, 0.937567,
		3.538197, 24.110567, 15.805381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.341538, 24.021498, 15.443195>,  <3.703127, 23.931480, 15.149084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.341538, 24.021498, 15.443195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.053802, 23.937012, 15.707904>,  <3.881161, 23.886320, 15.866729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.053802, 23.937012, 15.707904>,  <4.341538, 24.021498, 15.443195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.053802, 23.937012, 15.707904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570052, -0.723903, 0.388594,
		0.396980, 0.656774, 0.641136,
		-0.719338, -0.211217, 0.661770,
		3.838001, 23.873646, 15.906435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.936844, 24.567011, 15.422582>,  <4.341538, 24.021498, 15.443195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.936844, 24.567011, 15.422582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.306356, 24.590031, 15.271153>,  <4.528064, 24.603842, 15.180297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.306356, 24.590031, 15.271153>,  <3.936844, 24.567011, 15.422582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.306356, 24.590031, 15.271153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249425, 0.659700, 0.708931,
		0.290541, -0.749322, 0.595064,
		0.923782, 0.057550, -0.378570,
		4.583491, 24.607296, 15.157582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436438, 24.499016, 15.946594>,  <3.936844, 24.567011, 15.422582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436438, 24.499016, 15.946594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.597359, 24.724358, 15.657933>,  <4.693911, 24.859564, 15.484736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.597359, 24.724358, 15.657933>,  <4.436438, 24.499016, 15.946594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.597359, 24.724358, 15.657933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171877, 0.727762, 0.663943,
		0.899228, -0.391141, 0.195952,
		0.402302, 0.563357, -0.721652,
		4.718050, 24.893364, 15.441438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.154666, 24.585676, 15.586385>,  <4.436438, 24.499016, 15.946594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.154666, 24.585676, 15.586385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.085439, 24.851517, 15.877135>,  <5.043902, 25.011021, 16.051586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.085439, 24.851517, 15.877135>,  <5.154666, 24.585676, 15.586385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085439, 24.851517, 15.877135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845746, -0.277928, 0.455488,
		0.504738, 0.693585, -0.513985,
		-0.173069, 0.664603, 0.726877,
		5.033518, 25.050898, 16.095198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.600508, 23.997784, 15.529015>,  <5.154666, 24.585676, 15.586385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.600508, 23.997784, 15.529015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.591486, 24.199764, 15.874156>,  <5.586073, 24.320953, 16.081242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.591486, 24.199764, 15.874156>,  <5.600508, 23.997784, 15.529015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.591486, 24.199764, 15.874156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158018, -0.854024, 0.495654,
		0.987179, -0.125168, 0.099053,
		-0.022554, 0.504951, 0.862853,
		5.584720, 24.351250, 16.133013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.213371, 23.884781, 16.011934>,  <5.600508, 23.997784, 15.529015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.213371, 23.884781, 16.011934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.855606, 23.952713, 16.177431>,  <5.640947, 23.993471, 16.276730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.855606, 23.952713, 16.177431>,  <6.213371, 23.884781, 16.011934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.855606, 23.952713, 16.177431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035247, -0.895456, 0.443753,
		0.445851, 0.411481, 0.794921,
		-0.894413, 0.169829, 0.413744,
		5.587282, 24.003662, 16.301554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.247614, 23.514837, 16.646967>,  <6.213371, 23.884781, 16.011934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.247614, 23.514837, 16.646967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.858829, 23.583050, 16.582212>,  <5.625558, 23.623978, 16.543360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.858829, 23.583050, 16.582212>,  <6.247614, 23.514837, 16.646967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.858829, 23.583050, 16.582212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215255, -0.922382, 0.320743,
		-0.094624, 0.346597, 0.933229,
		-0.971963, 0.170532, -0.161886,
		5.567240, 23.634209, 16.533646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.065706, 23.135115, 17.244289>,  <6.247614, 23.514837, 16.646967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.065706, 23.135115, 17.244289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.733057, 23.191689, 17.029478>,  <5.533467, 23.225634, 16.900591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.733057, 23.191689, 17.029478>,  <6.065706, 23.135115, 17.244289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.733057, 23.191689, 17.029478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306492, -0.923304, 0.231457,
		-0.463103, 0.357080, 0.811190,
		-0.831624, 0.141435, -0.537027,
		5.483570, 23.234119, 16.868370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.538898, 22.916248, 17.644983>,  <6.065706, 23.135115, 17.244289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.538898, 22.916248, 17.644983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.374884, 22.934696, 17.280622>,  <5.276475, 22.945765, 17.062006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.374884, 22.934696, 17.280622>,  <5.538898, 22.916248, 17.644983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.374884, 22.934696, 17.280622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481594, -0.859091, 0.173291,
		-0.774557, 0.509740, 0.374469,
		-0.410036, 0.046118, -0.910903,
		5.251873, 22.948532, 17.007351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.854861, 22.774506, 17.720028>,  <5.538898, 22.916248, 17.644983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.854861, 22.774506, 17.720028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.977844, 22.686558, 17.349703>,  <5.051634, 22.633789, 17.127508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.977844, 22.686558, 17.349703>,  <4.854861, 22.774506, 17.720028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.977844, 22.686558, 17.349703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265632, -0.954093, 0.138373,
		-0.913734, 0.203381, -0.351748,
		0.307458, -0.219872, -0.925811,
		5.070081, 22.620596, 17.071959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.270341, 22.293209, 17.590361>,  <4.854861, 22.774506, 17.720028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.270341, 22.293209, 17.590361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.557921, 22.262838, 17.313999>,  <4.730469, 22.244616, 17.148182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.557921, 22.262838, 17.313999>,  <4.270341, 22.293209, 17.590361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.557921, 22.262838, 17.313999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012435, -0.995261, 0.096437,
		-0.694952, -0.060741, -0.716486,
		0.718948, -0.075929, -0.690903,
		4.773605, 22.240059, 17.106728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.977224, 21.851580, 17.040129>,  <4.270341, 22.293209, 17.590361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.977224, 21.851580, 17.040129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.372575, 21.859747, 16.979870>,  <4.609785, 21.864647, 16.943714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.372575, 21.859747, 16.979870>,  <3.977224, 21.851580, 17.040129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372575, 21.859747, 16.979870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009554, -0.997324, -0.072488,
		-0.151726, 0.070206, -0.985926,
		0.988376, 0.020417, -0.150649,
		4.669088, 21.865871, 16.934675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093671, 21.474745, 16.345863>,  <3.977224, 21.851580, 17.040129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093671, 21.474745, 16.345863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.411879, 21.463417, 16.587969>,  <4.602804, 21.456621, 16.733232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.411879, 21.463417, 16.587969>,  <4.093671, 21.474745, 16.345863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.411879, 21.463417, 16.587969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051371, -0.992159, -0.113940,
		0.603746, 0.121735, -0.787827,
		0.795520, -0.028319, 0.605265,
		4.650535, 21.454922, 16.769548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.573032, 21.113358, 16.056286>,  <4.093671, 21.474745, 16.345863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.573032, 21.113358, 16.056286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.655642, 21.083139, 16.446495>,  <4.705207, 21.065008, 16.680620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.655642, 21.083139, 16.446495>,  <4.573032, 21.113358, 16.056286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.655642, 21.083139, 16.446495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103591, -0.989723, -0.098576,
		0.972943, 0.121414, -0.196575,
		0.206523, -0.075546, 0.975521,
		4.717598, 21.060476, 16.739151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998610, 20.548903, 16.112482>,  <4.573032, 21.113358, 16.056286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998610, 20.548903, 16.112482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.882526, 20.572805, 16.494520>,  <4.812876, 20.587147, 16.723743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.882526, 20.572805, 16.494520>,  <4.998610, 20.548903, 16.112482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882526, 20.572805, 16.494520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053086, -0.995506, 0.078417,
		0.955490, 0.073460, 0.285733,
		-0.290209, 0.059758, 0.955095,
		4.795463, 20.590733, 16.781050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.493999, 20.260866, 16.610111>,  <4.998610, 20.548903, 16.112482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.493999, 20.260866, 16.610111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.169557, 20.268251, 16.843956>,  <4.974892, 20.272682, 16.984262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.169557, 20.268251, 16.843956>,  <5.493999, 20.260866, 16.610111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.169557, 20.268251, 16.843956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081689, -0.986130, 0.144481,
		0.579170, 0.164945, 0.798345,
		-0.811103, 0.018463, 0.584611,
		4.926226, 20.273790, 17.019339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.608674, 19.770309, 17.054209>,  <5.493999, 20.260866, 16.610111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.608674, 19.770309, 17.054209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.211013, 19.804827, 17.080183>,  <4.972417, 19.825537, 17.095768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.211013, 19.804827, 17.080183>,  <5.608674, 19.770309, 17.054209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.211013, 19.804827, 17.080183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076936, -0.987869, 0.134894,
		0.075787, 0.129110, 0.988730,
		-0.994151, 0.086292, 0.064935,
		4.912768, 19.830715, 17.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.363421, 19.328005, 17.587662>,  <5.608674, 19.770309, 17.054209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.363421, 19.328005, 17.587662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.040794, 19.399551, 17.362289>,  <4.847218, 19.442480, 17.227066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.040794, 19.399551, 17.362289>,  <5.363421, 19.328005, 17.587662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.040794, 19.399551, 17.362289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226484, -0.973899, 0.015042,
		-0.546035, 0.139740, 0.826026,
		-0.806568, 0.178868, -0.563431,
		4.798824, 19.453213, 17.193260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.812417, 18.931444, 17.870609>,  <5.363421, 19.328005, 17.587662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.812417, 18.931444, 17.870609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.711453, 19.004421, 17.490503>,  <4.650875, 19.048206, 17.262440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.711453, 19.004421, 17.490503>,  <4.812417, 18.931444, 17.870609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.711453, 19.004421, 17.490503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089352, -0.982263, -0.164850,
		-0.963486, 0.043299, 0.264234,
		-0.252410, 0.182441, -0.950266,
		4.635731, 19.059153, 17.205423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.284573, 18.491678, 17.874332>,  <4.812417, 18.931444, 17.870609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.284573, 18.491678, 17.874332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.400656, 18.563999, 17.498442>,  <4.470306, 18.607391, 17.272907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.400656, 18.563999, 17.498442>,  <4.284573, 18.491678, 17.874332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.400656, 18.563999, 17.498442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138281, -0.963761, -0.228129,
		-0.946920, 0.196151, -0.254689,
		0.290207, 0.180801, -0.939729,
		4.487719, 18.618240, 17.216522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829327, 18.110121, 17.449341>,  <4.284573, 18.491678, 17.874332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829327, 18.110121, 17.449341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.134987, 18.187401, 17.203171>,  <4.318383, 18.233768, 17.055468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.134987, 18.187401, 17.203171>,  <3.829327, 18.110121, 17.449341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134987, 18.187401, 17.203171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105968, -0.903529, -0.415218,
		-0.636275, 0.382505, -0.669959,
		0.764150, 0.193198, -0.615426,
		4.364233, 18.245359, 17.018543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.557488, 17.927364, 16.873758>,  <3.829327, 18.110121, 17.449341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.557488, 17.927364, 16.873758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.942552, 17.916136, 16.766056>,  <4.173590, 17.909399, 16.701435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.942552, 17.916136, 16.766056>,  <3.557488, 17.927364, 16.873758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.942552, 17.916136, 16.766056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167721, -0.842574, -0.511800,
		-0.212500, 0.537849, -0.815820,
		0.962660, -0.028073, -0.269255,
		4.231349, 17.907713, 16.685280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.590691, 17.687059, 16.167927>,  <3.557488, 17.927364, 16.873758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.590691, 17.687059, 16.167927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.973559, 17.626486, 16.266632>,  <4.203279, 17.590141, 16.325855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.973559, 17.626486, 16.266632>,  <3.590691, 17.687059, 16.167927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973559, 17.626486, 16.266632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009603, -0.835232, -0.549813,
		0.289367, 0.528635, -0.798005,
		0.957170, -0.151434, 0.246765,
		4.260710, 17.581055, 16.340662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932822, 17.553532, 15.551255>,  <3.590691, 17.687059, 16.167927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932822, 17.553532, 15.551255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.188978, 17.386833, 15.809317>,  <4.342671, 17.286814, 15.964153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.188978, 17.386833, 15.809317>,  <3.932822, 17.553532, 15.551255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188978, 17.386833, 15.809317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073689, -0.802775, -0.591711,
		0.764507, 0.426466, -0.483379,
		0.640389, -0.416748, 0.645153,
		4.381095, 17.261808, 16.002863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.489135, 17.291330, 15.186271>,  <3.932822, 17.553532, 15.551255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.489135, 17.291330, 15.186271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.501505, 17.077690, 15.524214>,  <4.508927, 16.949507, 15.726979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.501505, 17.077690, 15.524214>,  <4.489135, 17.291330, 15.186271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501505, 17.077690, 15.524214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146932, -0.833649, -0.532391,
		0.988663, 0.140601, 0.052695,
		0.030926, -0.534098, 0.844856,
		4.510783, 16.917461, 15.777671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.110662, 17.073900, 15.136663>,  <4.489135, 17.291330, 15.186271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.110662, 17.073900, 15.136663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923772, 16.826300, 15.389184>,  <4.811638, 16.677740, 15.540696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923772, 16.826300, 15.389184>,  <5.110662, 17.073900, 15.136663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.923772, 16.826300, 15.389184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123322, -0.752676, -0.646739,
		0.875496, -0.224319, 0.428005,
		-0.467225, -0.618999, 0.631301,
		4.783605, 16.640600, 15.578574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.709832, 16.829012, 14.759582>,  <5.110662, 17.073900, 15.136663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.709832, 16.829012, 14.759582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.046513, 16.636305, 14.857100>,  <6.248521, 16.520679, 14.915612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.046513, 16.636305, 14.857100>,  <5.709832, 16.829012, 14.759582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.046513, 16.636305, 14.857100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212469, 0.710623, 0.670725,
		-0.496383, -0.512751, 0.700493,
		0.841701, -0.481770, 0.243798,
		6.299023, 16.491774, 14.930240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.762455, 16.901094, 15.440820>,  <5.709832, 16.829012, 14.759582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.762455, 16.901094, 15.440820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.124532, 16.822123, 15.290277>,  <6.341778, 16.774740, 15.199950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.124532, 16.822123, 15.290277>,  <5.762455, 16.901094, 15.440820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.124532, 16.822123, 15.290277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358659, 0.829955, 0.427245,
		0.228009, -0.521724, 0.822081,
		0.905194, -0.197431, -0.376358,
		6.396090, 16.762894, 15.177369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.222004, 17.201004, 15.942405>,  <5.762455, 16.901094, 15.440820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.222004, 17.201004, 15.942405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.445809, 17.147459, 15.615229>,  <6.580092, 17.115332, 15.418923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.445809, 17.147459, 15.615229>,  <6.222004, 17.201004, 15.942405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.445809, 17.147459, 15.615229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553265, 0.795129, 0.248330,
		0.617125, -0.591481, 0.518947,
		0.559512, -0.133865, -0.817940,
		6.613663, 17.107300, 15.369846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.994153, 17.165844, 16.103939>,  <6.222004, 17.201004, 15.942405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.994153, 17.165844, 16.103939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999872, 17.282072, 15.721241>,  <7.003303, 17.351809, 15.491622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999872, 17.282072, 15.721241>,  <6.994153, 17.165844, 16.103939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.999872, 17.282072, 15.721241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503774, 0.824435, 0.257912,
		0.863717, -0.485672, -0.134596,
		0.014295, 0.290569, -0.956747,
		7.004160, 17.369242, 15.434216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.676475, 17.401957, 15.873654>,  <6.994153, 17.165844, 16.103939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.676475, 17.401957, 15.873654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.447176, 17.566183, 15.590014>,  <7.309596, 17.664719, 15.419830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.447176, 17.566183, 15.590014>,  <7.676475, 17.401957, 15.873654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.447176, 17.566183, 15.590014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587220, 0.809404, -0.006078,
		0.571452, -0.419882, -0.705082,
		-0.573249, 0.410565, -0.709099,
		7.275201, 17.689352, 15.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.149039, 17.823009, 15.430305>,  <7.676475, 17.401957, 15.873654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.149039, 17.823009, 15.430305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778410, 17.963959, 15.377698>,  <7.556032, 18.048529, 15.346134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778410, 17.963959, 15.377698>,  <8.149039, 17.823009, 15.430305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.778410, 17.963959, 15.377698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351677, 0.935664, 0.029247,
		0.133362, -0.019152, -0.990882,
		-0.926573, 0.352371, -0.131517,
		7.500438, 18.069670, 15.338243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.170404, 18.390457, 14.922322>,  <8.149039, 17.823009, 15.430305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.170404, 18.390457, 14.922322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.809982, 18.458292, 15.081990>,  <7.593728, 18.498993, 15.177792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.809982, 18.458292, 15.081990>,  <8.170404, 18.390457, 14.922322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.809982, 18.458292, 15.081990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116148, 0.981120, -0.154640,
		-0.417859, -0.092977, -0.903742,
		-0.901057, 0.169586, 0.399171,
		7.539665, 18.509169, 15.201741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.785974, 18.884615, 14.458795>,  <8.170404, 18.390457, 14.922322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.785974, 18.884615, 14.458795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.609497, 18.917362, 14.816263>,  <7.503611, 18.937010, 15.030745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.609497, 18.917362, 14.816263>,  <7.785974, 18.884615, 14.458795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.609497, 18.917362, 14.816263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090411, 0.994818, -0.046498,
		-0.892847, 0.060283, -0.446308,
		-0.441192, 0.081867, 0.893671,
		7.477139, 18.941923, 15.084364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.424911, 19.519289, 14.502172>,  <7.785974, 18.884615, 14.458795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.424911, 19.519289, 14.502172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.451001, 19.441029, 14.893574>,  <7.466654, 19.394072, 15.128414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.451001, 19.441029, 14.893574>,  <7.424911, 19.519289, 14.502172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.451001, 19.441029, 14.893574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169482, 0.968515, 0.182358,
		-0.983373, 0.153945, 0.096329,
		0.065223, -0.195651, 0.978502,
		7.470568, 19.382334, 15.187124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.267547, 20.126104, 14.808925>,  <7.424911, 19.519289, 14.502172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.267547, 20.126104, 14.808925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.422582, 19.954430, 15.135255>,  <7.515604, 19.851425, 15.331053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.422582, 19.954430, 15.135255>,  <7.267547, 20.126104, 14.808925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.422582, 19.954430, 15.135255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261293, 0.899858, 0.349259,
		-0.884025, 0.077801, 0.460919,
		0.387589, -0.429189, 0.815826,
		7.538859, 19.825672, 15.380003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.152193, 20.557333, 15.375889>,  <7.267547, 20.126104, 14.808925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.152193, 20.557333, 15.375889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.455418, 20.318218, 15.480189>,  <7.637352, 20.174749, 15.542769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.455418, 20.318218, 15.480189>,  <7.152193, 20.557333, 15.375889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.455418, 20.318218, 15.480189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419342, 0.752977, 0.507127,
		-0.499495, -0.275090, 0.821481,
		0.758062, -0.597789, 0.260751,
		7.682836, 20.138882, 15.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.175357, 20.615330, 16.088770>,  <7.152193, 20.557333, 15.375889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.175357, 20.615330, 16.088770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.543341, 20.512259, 15.970599>,  <7.764131, 20.450415, 15.899697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.543341, 20.512259, 15.970599>,  <7.175357, 20.615330, 16.088770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.543341, 20.512259, 15.970599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388688, 0.697549, 0.601952,
		0.050963, -0.668600, 0.741874,
		0.919958, -0.257680, -0.295426,
		7.819328, 20.434954, 15.881971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.552943, 20.724339, 16.654156>,  <7.175357, 20.615330, 16.088770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.552943, 20.724339, 16.654156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.835598, 20.691767, 16.373005>,  <8.005190, 20.672224, 16.204315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.835598, 20.691767, 16.373005>,  <7.552943, 20.724339, 16.654156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.835598, 20.691767, 16.373005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556841, 0.676889, 0.481403,
		0.436569, -0.731567, 0.523657,
		0.706637, -0.081428, -0.702876,
		8.047588, 20.667337, 16.162142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.112602, 20.479235, 17.004959>,  <7.552943, 20.724339, 16.654156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.112602, 20.479235, 17.004959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.239977, 20.658232, 16.670691>,  <8.316401, 20.765629, 16.470129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.239977, 20.658232, 16.670691>,  <8.112602, 20.479235, 17.004959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.239977, 20.658232, 16.670691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625544, 0.563172, 0.539936,
		0.712245, -0.694685, -0.100592,
		0.318435, 0.447492, -0.835673,
		8.335507, 20.792479, 16.419989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.868871, 20.604841, 17.155933>,  <8.112602, 20.479235, 17.004959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.868871, 20.604841, 17.155933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776371, 20.858046, 16.860415>,  <8.720871, 21.009968, 16.683104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776371, 20.858046, 16.860415>,  <8.868871, 20.604841, 17.155933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.776371, 20.858046, 16.860415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506960, 0.726539, 0.463825,
		0.830371, -0.267281, -0.488922,
		-0.231250, 0.633010, -0.738797,
		8.706996, 21.047949, 16.638775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.509941, 21.065193, 17.020893>,  <8.868871, 20.604841, 17.155933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.509941, 21.065193, 17.020893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222782, 21.295088, 16.863770>,  <9.050487, 21.433025, 16.769495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222782, 21.295088, 16.863770>,  <9.509941, 21.065193, 17.020893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222782, 21.295088, 16.863770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349682, 0.785627, 0.510404,
		0.601950, 0.229060, -0.764976,
		-0.717899, 0.574737, -0.392810,
		9.007413, 21.467508, 16.745926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.930430, 21.579142, 16.688206>,  <9.509941, 21.065193, 17.020893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.930430, 21.579142, 16.688206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.564408, 21.739021, 16.709801>,  <9.344795, 21.834949, 16.722757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.564408, 21.739021, 16.709801>,  <9.930430, 21.579142, 16.688206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.564408, 21.739021, 16.709801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402379, 0.895485, 0.190259,
		0.027701, 0.195821, -0.980248,
		-0.915054, 0.399701, 0.053989,
		9.289892, 21.858932, 16.725998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.885275, 22.109764, 16.197330>,  <9.930430, 21.579142, 16.688206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.885275, 22.109764, 16.197330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.593898, 22.179346, 16.462393>,  <9.419071, 22.221096, 16.621429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.593898, 22.179346, 16.462393>,  <9.885275, 22.109764, 16.197330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.593898, 22.179346, 16.462393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218026, 0.975804, -0.016491,
		-0.649489, 0.132463, -0.748744,
		-0.728443, 0.173956, 0.662654,
		9.375365, 22.231533, 16.661188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.699250, 22.871029, 15.969358>,  <9.885275, 22.109764, 16.197330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.699250, 22.871029, 15.969358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.487596, 22.822998, 16.305357>,  <9.360602, 22.794180, 16.506956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.487596, 22.822998, 16.305357>,  <9.699250, 22.871029, 15.969358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.487596, 22.822998, 16.305357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097814, 0.974707, 0.200947,
		-0.842880, 0.188491, -0.504008,
		-0.529137, -0.120075, 0.839998,
		9.328855, 22.786976, 16.557356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.070729, 23.253147, 15.993124>,  <9.699250, 22.871029, 15.969358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.070729, 23.253147, 15.993124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.145220, 23.238214, 16.385843>,  <9.189914, 23.229256, 16.621475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.145220, 23.238214, 16.385843>,  <9.070729, 23.253147, 15.993124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.145220, 23.238214, 16.385843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024203, 0.998800, 0.042567,
		-0.982209, -0.031689, 0.185098,
		0.186225, -0.037330, 0.981798,
		9.201087, 23.227016, 16.680382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.520617, 23.521772, 16.495407>,  <9.070729, 23.253147, 15.993124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.520617, 23.521772, 16.495407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.861067, 23.568121, 16.700212>,  <9.065337, 23.595930, 16.823095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.861067, 23.568121, 16.700212>,  <8.520617, 23.521772, 16.495407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.861067, 23.568121, 16.700212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121235, 0.992356, -0.023044,
		-0.510772, -0.042460, 0.858667,
		0.851125, 0.115871, 0.512016,
		9.116405, 23.602882, 16.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.923630, 18.420076, 27.714455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.533102, 18.356829, 27.655394>,  <16.298786, 18.318880, 27.619957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.533102, 18.356829, 27.655394>,  <16.923630, 18.420076, 27.714455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533102, 18.356829, 27.655394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199706, 0.396256, 0.896158,
		-0.083189, 0.904423, -0.418449,
		-0.976318, -0.158117, -0.147654,
		16.240206, 18.309393, 27.611097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526501, 19.028172, 27.636368>,  <16.923630, 18.420076, 27.714455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526501, 19.028172, 27.636368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.275154, 18.754318, 27.784117>,  <16.124346, 18.590006, 27.872766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.275154, 18.754318, 27.784117>,  <16.526501, 19.028172, 27.636368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275154, 18.754318, 27.784117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004267, 0.477846, 0.878433,
		-0.777906, 0.550401, -0.303184,
		-0.628366, -0.684632, 0.369371,
		16.086645, 18.548929, 27.894928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029127, 19.410807, 28.099512>,  <16.526501, 19.028172, 27.636368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029127, 19.410807, 28.099512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.017796, 19.036314, 28.239609>,  <16.010996, 18.811619, 28.323668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.017796, 19.036314, 28.239609>,  <16.029127, 19.410807, 28.099512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017796, 19.036314, 28.239609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146412, 0.350489, 0.925052,
		-0.988818, -0.025071, -0.147005,
		-0.028331, -0.936231, 0.350241,
		16.009296, 18.755445, 28.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454006, 19.362148, 28.543840>,  <16.029127, 19.410807, 28.099512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454006, 19.362148, 28.543840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.659453, 19.038738, 28.658718>,  <15.782722, 18.844692, 28.727646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.659453, 19.038738, 28.658718>,  <15.454006, 19.362148, 28.543840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659453, 19.038738, 28.658718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171930, 0.230948, 0.957655,
		-0.840617, -0.541246, -0.020391,
		0.513618, -0.808527, 0.287196,
		15.813539, 18.796181, 28.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004623, 19.003517, 28.907110>,  <15.454006, 19.362148, 28.543840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004623, 19.003517, 28.907110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375135, 18.896982, 29.013746>,  <15.597443, 18.833061, 29.077728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375135, 18.896982, 29.013746>,  <15.004623, 19.003517, 28.907110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375135, 18.896982, 29.013746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250297, 0.094021, 0.963593,
		-0.281705, -0.959283, 0.020427,
		0.926279, -0.266337, 0.266592,
		15.653019, 18.817081, 29.093723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896686, 18.462812, 29.404251>,  <15.004623, 19.003517, 28.907110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896686, 18.462812, 29.404251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.278000, 18.569967, 29.460085>,  <15.506788, 18.634260, 29.493586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.278000, 18.569967, 29.460085>,  <14.896686, 18.462812, 29.404251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278000, 18.569967, 29.460085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115728, -0.102950, 0.987931,
		0.279023, -0.957934, -0.067139,
		0.953285, 0.267886, 0.139585,
		15.563986, 18.650333, 29.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129251, 17.984247, 29.871279>,  <14.896686, 18.462812, 29.404251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129251, 17.984247, 29.871279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.407583, 18.269499, 29.905380>,  <15.574582, 18.440649, 29.925840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.407583, 18.269499, 29.905380>,  <15.129251, 17.984247, 29.871279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407583, 18.269499, 29.905380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060345, -0.060231, 0.996359,
		0.715667, -0.698441, 0.001123,
		0.695830, 0.713128, 0.085253,
		15.616332, 18.483437, 29.930956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571777, 17.744438, 30.298000>,  <15.129251, 17.984247, 29.871279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571777, 17.744438, 30.298000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.622700, 18.141006, 30.309830>,  <15.653254, 18.378948, 30.316927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.622700, 18.141006, 30.309830>,  <15.571777, 17.744438, 30.298000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622700, 18.141006, 30.309830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007164, -0.030733, 0.999502,
		0.991838, -0.127031, -0.011015,
		0.127306, 0.991423, 0.029572,
		15.660892, 18.438433, 30.318701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027500, 17.870436, 30.857492>,  <15.571777, 17.744438, 30.298000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027500, 17.870436, 30.857492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.803416, 18.191935, 30.777336>,  <15.668966, 18.384834, 30.729242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.803416, 18.191935, 30.777336>,  <16.027500, 17.870436, 30.857492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803416, 18.191935, 30.777336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314964, 0.017066, 0.948950,
		0.766136, 0.594727, 0.243590,
		-0.560209, 0.803747, -0.200392,
		15.635353, 18.433058, 30.717218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266798, 18.382530, 31.322691>,  <16.027500, 17.870436, 30.857492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266798, 18.382530, 31.322691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897569, 18.488150, 31.210827>,  <15.676031, 18.551521, 31.143707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897569, 18.488150, 31.210827>,  <16.266798, 18.382530, 31.322691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897569, 18.488150, 31.210827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185094, 0.332416, 0.924792,
		0.337154, 0.905416, -0.257971,
		-0.923075, 0.264049, -0.279663,
		15.620646, 18.567364, 31.126928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204487, 18.991104, 31.686693>,  <16.266798, 18.382530, 31.322691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204487, 18.991104, 31.686693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.841448, 18.866541, 31.574057>,  <15.623625, 18.791803, 31.506475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.841448, 18.866541, 31.574057>,  <16.204487, 18.991104, 31.686693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841448, 18.866541, 31.574057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350450, 0.192576, 0.916570,
		-0.231201, 0.930558, -0.283915,
		-0.907596, -0.311410, -0.281590,
		15.569169, 18.773117, 31.489580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697859, 19.561407, 31.902966>,  <16.204487, 18.991104, 31.686693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697859, 19.561407, 31.902966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.519859, 19.205816, 31.859703>,  <15.413060, 18.992462, 31.833746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.519859, 19.205816, 31.859703>,  <15.697859, 19.561407, 31.902966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519859, 19.205816, 31.859703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238152, 0.001051, 0.971227,
		-0.863285, 0.457952, -0.212179,
		-0.444998, -0.888977, -0.108154,
		15.386360, 18.939123, 31.827257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040429, 19.613941, 32.283249>,  <15.697859, 19.561407, 31.902966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040429, 19.613941, 32.283249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.111423, 19.221313, 32.254894>,  <15.154020, 18.985737, 32.237881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.111423, 19.221313, 32.254894>,  <15.040429, 19.613941, 32.283249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.111423, 19.221313, 32.254894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422352, -0.141031, 0.895393,
		-0.888885, -0.128982, -0.439598,
		0.177487, -0.981567, -0.070885,
		15.164669, 18.926844, 32.233627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444518, 19.298849, 32.532040>,  <15.040429, 19.613941, 32.283249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444518, 19.298849, 32.532040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.732334, 19.023876, 32.571438>,  <14.905024, 18.858892, 32.595078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.732334, 19.023876, 32.571438>,  <14.444518, 19.298849, 32.532040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.732334, 19.023876, 32.571438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387805, -0.280092, 0.878155,
		-0.576082, -0.670066, -0.468126,
		0.719540, -0.687430, 0.098499,
		14.948196, 18.817648, 32.600986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995226, 19.914173, 32.632496>,  <14.444518, 19.298849, 32.532040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995226, 19.914173, 32.632496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.680817, 20.155321, 32.577774>,  <13.492171, 20.300011, 32.544941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.680817, 20.155321, 32.577774>,  <13.995226, 19.914173, 32.632496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680817, 20.155321, 32.577774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154239, -0.023047, -0.987765,
		-0.598648, -0.797506, -0.074871,
		-0.786023, 0.602871, -0.136804,
		13.445010, 20.336182, 32.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669719, 19.663212, 32.068951>,  <13.995226, 19.914173, 32.632496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669719, 19.663212, 32.068951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.559258, 20.047319, 32.085094>,  <13.492983, 20.277784, 32.094780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.559258, 20.047319, 32.085094>,  <13.669719, 19.663212, 32.068951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559258, 20.047319, 32.085094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080771, 0.065031, -0.994609,
		-0.957715, -0.271401, -0.095520,
		-0.276150, 0.960267, 0.040360,
		13.476414, 20.335400, 32.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099262, 19.660498, 31.633753>,  <13.669719, 19.663212, 32.068951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099262, 19.660498, 31.633753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.208078, 20.044731, 31.656639>,  <13.273368, 20.275270, 31.670372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.208078, 20.044731, 31.656639>,  <13.099262, 19.660498, 31.633753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208078, 20.044731, 31.656639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135089, 0.096993, -0.986075,
		-0.952757, 0.260522, 0.156150,
		0.272040, 0.960583, 0.057217,
		13.289690, 20.332907, 31.673803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608634, 19.970144, 31.312840>,  <13.099262, 19.660498, 31.633753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608634, 19.970144, 31.312840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.916931, 20.224718, 31.300800>,  <13.101910, 20.377462, 31.293577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.916931, 20.224718, 31.300800>,  <12.608634, 19.970144, 31.312840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916931, 20.224718, 31.300800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050026, 0.013353, -0.998659,
		-0.635178, 0.771216, 0.042130,
		0.770744, 0.636434, -0.030099,
		13.148154, 20.415648, 31.291771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.522122, 20.408447, 30.670383>,  <12.608634, 19.970144, 31.312840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.522122, 20.408447, 30.670383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.895799, 20.495564, 30.783419>,  <13.120005, 20.547832, 30.851240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.895799, 20.495564, 30.783419>,  <12.522122, 20.408447, 30.670383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895799, 20.495564, 30.783419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162965, 0.444123, -0.881020,
		-0.317381, 0.869093, 0.379403,
		0.934190, 0.217789, 0.282588,
		13.176056, 20.560900, 30.868195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667651, 21.158159, 30.521460>,  <12.522122, 20.408447, 30.670383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667651, 21.158159, 30.521460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.005045, 20.943430, 30.513916>,  <13.207481, 20.814592, 30.509390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.005045, 20.943430, 30.513916>,  <12.667651, 21.158159, 30.521460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005045, 20.943430, 30.513916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092829, 0.180261, -0.979229,
		0.529071, 0.824214, 0.201880,
		0.843485, -0.536822, -0.018860,
		13.258090, 20.782383, 30.508259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117864, 21.581448, 30.070335>,  <12.667651, 21.158159, 30.521460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117864, 21.581448, 30.070335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.343836, 21.251469, 30.077419>,  <13.479419, 21.053480, 30.081669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.343836, 21.251469, 30.077419>,  <13.117864, 21.581448, 30.070335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343836, 21.251469, 30.077419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085354, 0.037078, -0.995661,
		0.820713, 0.563990, 0.091359,
		0.564930, -0.824949, 0.017708,
		13.513314, 21.003984, 30.082731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.753695, 21.723331, 29.580910>,  <13.117864, 21.581448, 30.070335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.753695, 21.723331, 29.580910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.704538, 21.328489, 29.621943>,  <13.675045, 21.091585, 29.646563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.704538, 21.328489, 29.621943>,  <13.753695, 21.723331, 29.580910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704538, 21.328489, 29.621943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161059, -0.121831, -0.979396,
		0.979264, -0.103837, 0.173954,
		-0.122890, -0.987104, 0.102581,
		13.667671, 21.032358, 29.652718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285716, 21.411133, 29.132172>,  <13.753695, 21.723331, 29.580910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285716, 21.411133, 29.132172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.996502, 21.138109, 29.174755>,  <13.822973, 20.974295, 29.200304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.996502, 21.138109, 29.174755>,  <14.285716, 21.411133, 29.132172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996502, 21.138109, 29.174755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155649, -0.311106, -0.937543,
		0.673048, -0.661306, 0.331180,
		-0.723035, -0.682559, 0.106458,
		13.779592, 20.933342, 29.206692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493822, 20.851744, 28.799767>,  <14.285716, 21.411133, 29.132172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493822, 20.851744, 28.799767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.100549, 20.778835, 28.795279>,  <13.864585, 20.735090, 28.792585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.100549, 20.778835, 28.795279>,  <14.493822, 20.851744, 28.799767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100549, 20.778835, 28.795279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045691, -0.186036, -0.981480,
		0.176810, -0.965488, 0.191235,
		-0.983184, -0.182273, -0.011221,
		13.805593, 20.724154, 28.791912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443042, 20.364914, 28.174147>,  <14.493822, 20.851744, 28.799767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443042, 20.364914, 28.174147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.058427, 20.449692, 28.244032>,  <13.827658, 20.500559, 28.285963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.058427, 20.449692, 28.244032>,  <14.443042, 20.364914, 28.174147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.058427, 20.449692, 28.244032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239407, -0.334871, -0.911343,
		-0.134648, -0.918118, 0.372732,
		-0.961537, 0.211945, 0.174714,
		13.769965, 20.513275, 28.296446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083420, 19.810392, 27.896881>,  <14.443042, 20.364914, 28.174147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083420, 19.810392, 27.896881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.861388, 20.143051, 27.903177>,  <13.728169, 20.342648, 27.906954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.861388, 20.143051, 27.903177>,  <14.083420, 19.810392, 27.896881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861388, 20.143051, 27.903177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268314, -0.161111, -0.949763,
		-0.787334, -0.531416, 0.312573,
		-0.555079, 0.831649, 0.015738,
		13.694864, 20.392546, 27.907898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410253, 19.698065, 27.623703>,  <14.083420, 19.810392, 27.896881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410253, 19.698065, 27.623703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.438609, 20.095459, 27.588020>,  <13.455623, 20.333897, 27.566610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.438609, 20.095459, 27.588020>,  <13.410253, 19.698065, 27.623703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438609, 20.095459, 27.588020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175908, -0.075578, -0.981501,
		-0.981851, 0.085272, 0.169404,
		0.070892, 0.993487, -0.089207,
		13.459877, 20.393505, 27.561258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033980, 19.725117, 27.047789>,  <13.410253, 19.698065, 27.623703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033980, 19.725117, 27.047789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.182882, 20.092678, 27.100008>,  <13.272223, 20.313215, 27.131340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.182882, 20.092678, 27.100008>,  <13.033980, 19.725117, 27.047789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182882, 20.092678, 27.100008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002232, 0.141544, -0.989929,
		-0.928128, 0.368215, 0.054742,
		0.372256, 0.918903, 0.130549,
		13.294559, 20.368349, 27.139174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338232, 19.913565, 27.366329>,  <13.033980, 19.725117, 27.047789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338232, 19.913565, 27.366329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.947946, 19.832212, 27.333803>,  <11.713774, 19.783401, 27.314287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.947946, 19.832212, 27.333803>,  <12.338232, 19.913565, 27.366329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947946, 19.832212, 27.333803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081691, -0.006554, 0.996636,
		-0.203231, 0.979078, -0.010220,
		-0.975717, -0.203382, -0.081314,
		11.655231, 19.771198, 27.309408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036376, 20.418388, 27.856228>,  <12.338232, 19.913565, 27.366329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036376, 20.418388, 27.856228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.765770, 20.135059, 27.775627>,  <11.603406, 19.965061, 27.727266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.765770, 20.135059, 27.775627>,  <12.036376, 20.418388, 27.856228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765770, 20.135059, 27.775627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341437, 0.059257, 0.938035,
		-0.652493, 0.703395, -0.281936,
		-0.676516, -0.708324, -0.201501,
		11.562815, 19.922562, 27.715178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357391, 20.701468, 28.179571>,  <12.036376, 20.418388, 27.856228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357391, 20.701468, 28.179571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.355463, 20.302145, 28.156378>,  <11.354306, 20.062551, 28.142462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.355463, 20.302145, 28.156378>,  <11.357391, 20.701468, 28.179571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.355463, 20.302145, 28.156378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147510, -0.056640, 0.987437,
		-0.989049, 0.013314, -0.146987,
		-0.004822, -0.998306, -0.057984,
		11.354016, 20.002653, 28.138983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.789453, 20.521784, 28.511059>,  <11.357391, 20.701468, 28.179571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.789453, 20.521784, 28.511059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.009126, 20.187601, 28.519203>,  <11.140929, 19.987091, 28.524090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.009126, 20.187601, 28.519203>,  <10.789453, 20.521784, 28.511059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.009126, 20.187601, 28.519203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223785, -0.123541, 0.966777,
		-0.805183, -0.535493, -0.254809,
		0.549182, -0.835455, 0.020363,
		11.173881, 19.936964, 28.525312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410710, 20.167711, 28.842737>,  <10.789453, 20.521784, 28.511059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410710, 20.167711, 28.842737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.750554, 19.957973, 28.865452>,  <10.954460, 19.832130, 28.879080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.750554, 19.957973, 28.865452>,  <10.410710, 20.167711, 28.842737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750554, 19.957973, 28.865452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178414, -0.184414, 0.966519,
		-0.496319, -0.831295, -0.250231,
		0.849609, -0.524347, 0.056786,
		11.005437, 19.800669, 28.882488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.217614, 19.560215, 29.176149>,  <10.410710, 20.167711, 28.842737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.217614, 19.560215, 29.176149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.614264, 19.567955, 29.227228>,  <10.852255, 19.572599, 29.257875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.614264, 19.567955, 29.227228>,  <10.217614, 19.560215, 29.176149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.614264, 19.567955, 29.227228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118657, -0.253935, 0.959915,
		0.051000, -0.967028, -0.249513,
		0.991625, 0.019349, 0.127695,
		10.911752, 19.573759, 29.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496249, 18.895695, 29.431984>,  <10.217614, 19.560215, 29.176149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496249, 18.895695, 29.431984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.751474, 19.182459, 29.544352>,  <10.904610, 19.354517, 29.611773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.751474, 19.182459, 29.544352>,  <10.496249, 18.895695, 29.431984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.751474, 19.182459, 29.544352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084469, -0.297464, 0.950989,
		0.765337, -0.630520, -0.129245,
		0.638063, 0.716910, 0.280920,
		10.942893, 19.397532, 29.628628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.699066, 18.161057, 29.303520>,  <10.496249, 18.895695, 29.431984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.699066, 18.161057, 29.303520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.495753, 17.818810, 29.342646>,  <10.373765, 17.613461, 29.366121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.495753, 17.818810, 29.342646>,  <10.699066, 18.161057, 29.303520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.495753, 17.818810, 29.342646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070627, -0.154611, -0.985448,
		0.858289, -0.493978, 0.139016,
		-0.508283, -0.855617, 0.097812,
		10.343268, 17.562124, 29.371990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048748, 17.763269, 28.835468>,  <10.699066, 18.161057, 29.303520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048748, 17.763269, 28.835468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.702414, 17.572947, 28.897356>,  <10.494613, 17.458754, 28.934488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.702414, 17.572947, 28.897356>,  <11.048748, 17.763269, 28.835468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.702414, 17.572947, 28.897356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020066, -0.275961, -0.960959,
		0.499926, -0.835138, 0.229389,
		-0.865836, -0.475805, 0.154718,
		10.442663, 17.430204, 28.943771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.166832, 17.089014, 28.615210>,  <11.048748, 17.763269, 28.835468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.166832, 17.089014, 28.615210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.767907, 17.118307, 28.614264>,  <10.528552, 17.135883, 28.613695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.767907, 17.118307, 28.614264>,  <11.166832, 17.089014, 28.615210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767907, 17.118307, 28.614264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017698, -0.272117, -0.962102,
		-0.071100, -0.959474, 0.272681,
		-0.997312, 0.073231, -0.002367,
		10.468714, 17.140276, 28.613554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.884516, 16.467199, 28.179703>,  <11.166832, 17.089014, 28.615210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.884516, 16.467199, 28.179703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.621293, 16.767891, 28.196964>,  <10.463359, 16.948307, 28.207321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.621293, 16.767891, 28.196964>,  <10.884516, 16.467199, 28.179703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.621293, 16.767891, 28.196964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101418, -0.031700, -0.994339,
		-0.746106, -0.658708, 0.097100,
		-0.658057, 0.751730, 0.043153,
		10.423876, 16.993410, 28.209909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244145, 16.255257, 27.789984>,  <10.884516, 16.467199, 28.179703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244145, 16.255257, 27.789984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.223878, 16.654741, 27.788841>,  <10.211718, 16.894432, 27.788155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.223878, 16.654741, 27.788841>,  <10.244145, 16.255257, 27.789984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.223878, 16.654741, 27.788841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008553, -0.003295, -0.999958,
		-0.998679, -0.050643, 0.008709,
		-0.050670, 0.998711, -0.002858,
		10.208677, 16.954355, 27.787985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540743, 16.496902, 27.492718>,  <10.244145, 16.255257, 27.789984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540743, 16.496902, 27.492718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.793675, 16.805674, 27.466539>,  <9.945435, 16.990936, 27.450832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.793675, 16.805674, 27.466539>,  <9.540743, 16.496902, 27.492718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.793675, 16.805674, 27.466539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193080, 0.075219, -0.978296,
		-0.750252, 0.631243, 0.196607,
		0.632331, 0.771929, -0.065447,
		9.983375, 17.037252, 27.446905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.185224, 17.039722, 27.130878>,  <9.540743, 16.496902, 27.492718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.185224, 17.039722, 27.130878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.568810, 17.132780, 27.066061>,  <9.798963, 17.188614, 27.027170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.568810, 17.132780, 27.066061>,  <9.185224, 17.039722, 27.130878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.568810, 17.132780, 27.066061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178569, 0.051680, -0.982569,
		-0.220215, 0.971188, 0.091102,
		0.958967, 0.232644, -0.162044,
		9.856501, 17.202574, 27.017448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.894288, 16.446342, 31.266659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.033980, 16.227322, 31.570822>,  <14.117796, 16.095909, 31.753321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.033980, 16.227322, 31.570822>,  <13.894288, 16.446342, 31.266659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.033980, 16.227322, 31.570822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320346, 0.832375, 0.452251,
		-0.880578, 0.085655, 0.466097,
		0.349230, -0.547554, 0.760410,
		14.138749, 16.063055, 31.798944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718003, 16.670517, 30.622547>,  <13.894288, 16.446342, 31.266659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718003, 16.670517, 30.622547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.069430, 16.759605, 30.791550>,  <14.280287, 16.813059, 30.892952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.069430, 16.759605, 30.791550>,  <13.718003, 16.670517, 30.622547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069430, 16.759605, 30.791550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464261, -0.605969, -0.645960,
		0.112159, 0.763674, -0.635785,
		0.878569, 0.222720, 0.422508,
		14.333001, 16.826422, 30.918303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145566, 16.784990, 30.108303>,  <13.718003, 16.670517, 30.622547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145566, 16.784990, 30.108303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.350462, 16.689009, 30.438160>,  <14.473399, 16.631420, 30.636074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.350462, 16.689009, 30.438160>,  <14.145566, 16.784990, 30.108303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350462, 16.689009, 30.438160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385263, -0.793949, -0.470337,
		0.767582, 0.558629, -0.314246,
		0.512239, -0.239955, 0.824641,
		14.504134, 16.617022, 30.685553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853720, 16.712641, 29.957615>,  <14.145566, 16.784990, 30.108303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853720, 16.712641, 29.957615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.821370, 16.501535, 30.295828>,  <14.801961, 16.374872, 30.498756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.821370, 16.501535, 30.295828>,  <14.853720, 16.712641, 29.957615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.821370, 16.501535, 30.295828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373941, -0.802413, -0.465083,
		0.923920, 0.278566, 0.262246,
		-0.080873, -0.527764, 0.845532,
		14.797109, 16.343206, 30.549488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520377, 16.356764, 30.070829>,  <14.853720, 16.712641, 29.957615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520377, 16.356764, 30.070829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.251386, 16.148672, 30.281404>,  <15.089991, 16.023817, 30.407749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.251386, 16.148672, 30.281404>,  <15.520377, 16.356764, 30.070829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251386, 16.148672, 30.281404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332185, -0.847774, -0.413440,
		0.661382, -0.103155, 0.742922,
		-0.672478, -0.520229, 0.526436,
		15.049643, 15.992603, 30.439335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807137, 15.884079, 30.522808>,  <15.520377, 16.356764, 30.070829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807137, 15.884079, 30.522808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.448519, 15.760914, 30.395437>,  <15.233348, 15.687015, 30.319016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.448519, 15.760914, 30.395437>,  <15.807137, 15.884079, 30.522808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.448519, 15.760914, 30.395437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433676, -0.756510, -0.489507,
		-0.090167, -0.576959, 0.811781,
		-0.896546, -0.307912, -0.318426,
		15.179555, 15.668540, 30.299910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902871, 15.223816, 30.351469>,  <15.807137, 15.884079, 30.522808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902871, 15.223816, 30.351469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.524733, 15.232063, 30.221302>,  <15.297850, 15.237012, 30.143202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.524733, 15.232063, 30.221302>,  <15.902871, 15.223816, 30.351469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524733, 15.232063, 30.221302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242093, -0.624170, -0.742834,
		-0.218430, -0.781016, 0.585066,
		-0.945346, 0.020617, -0.325416,
		15.241129, 15.238249, 30.123676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770911, 14.520010, 30.058146>,  <15.902871, 15.223816, 30.351469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770911, 14.520010, 30.058146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.490501, 14.757913, 29.900751>,  <15.322256, 14.900654, 29.806314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.490501, 14.757913, 29.900751>,  <15.770911, 14.520010, 30.058146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490501, 14.757913, 29.900751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185137, -0.381066, -0.905822,
		-0.688687, -0.707851, 0.157025,
		-0.701024, 0.594757, -0.393484,
		15.280194, 14.936339, 29.782705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344139, 14.074414, 29.811850>,  <15.770911, 14.520010, 30.058146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344139, 14.074414, 29.811850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.295743, 14.419987, 29.616306>,  <15.266706, 14.627331, 29.498980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.295743, 14.419987, 29.616306>,  <15.344139, 14.074414, 29.811850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295743, 14.419987, 29.616306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120408, -0.476067, -0.871127,
		-0.985324, -0.164261, -0.046424,
		-0.120992, 0.863932, -0.488859,
		15.259445, 14.679166, 29.469648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158547, 13.847836, 29.122902>,  <15.344139, 14.074414, 29.811850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158547, 13.847836, 29.122902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.252911, 14.234959, 29.087805>,  <15.309528, 14.467232, 29.066746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.252911, 14.234959, 29.087805>,  <15.158547, 13.847836, 29.122902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252911, 14.234959, 29.087805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285275, -0.155284, -0.945783,
		-0.928959, 0.198087, -0.312724,
		0.235908, 0.967806, -0.087743,
		15.323683, 14.525301, 29.061481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832696, 14.107319, 28.585688>,  <15.158547, 13.847836, 29.122902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832696, 14.107319, 28.585688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.134695, 14.368616, 28.608490>,  <15.315895, 14.525394, 28.622171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.134695, 14.368616, 28.608490>,  <14.832696, 14.107319, 28.585688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.134695, 14.368616, 28.608490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288310, -0.252622, -0.923612,
		-0.588943, 0.713761, -0.379067,
		0.754999, 0.653244, 0.057004,
		15.361195, 14.564590, 28.625591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849265, 14.376842, 27.969025>,  <14.832696, 14.107319, 28.585688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849265, 14.376842, 27.969025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.218483, 14.450554, 28.104099>,  <15.440014, 14.494781, 28.185144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.218483, 14.450554, 28.104099>,  <14.849265, 14.376842, 27.969025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218483, 14.450554, 28.104099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365873, -0.149317, -0.918608,
		-0.118858, 0.971466, -0.205249,
		0.923044, 0.184279, 0.337685,
		15.495396, 14.505837, 28.205404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215333, 14.071218, 27.993210>,  <14.849265, 14.376842, 27.969025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215333, 14.071218, 27.993210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.875990, 13.875813, 27.911579>,  <13.672384, 13.758572, 27.862600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.875990, 13.875813, 27.911579>,  <14.215333, 14.071218, 27.993210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875990, 13.875813, 27.911579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400960, 0.341135, 0.850211,
		-0.345718, 0.803110, -0.485277,
		-0.848357, -0.488510, -0.204079,
		13.621483, 13.729260, 27.850355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711489, 14.572994, 28.158417>,  <14.215333, 14.071218, 27.993210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.711489, 14.572994, 28.158417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.529716, 14.217263, 28.178776>,  <13.420653, 14.003824, 28.190990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.529716, 14.217263, 28.178776>,  <13.711489, 14.572994, 28.158417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.529716, 14.217263, 28.178776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438761, 0.273192, 0.856070,
		-0.775231, 0.366692, -0.514348,
		-0.454430, -0.889327, 0.050897,
		13.393388, 13.950465, 28.194044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.049989, 14.685466, 28.236538>,  <13.711489, 14.572994, 28.158417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.049989, 14.685466, 28.236538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.109619, 14.312343, 28.367775>,  <13.145397, 14.088469, 28.446518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.109619, 14.312343, 28.367775>,  <13.049989, 14.685466, 28.236538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109619, 14.312343, 28.367775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522049, 0.207546, 0.827279,
		-0.839787, -0.294609, -0.456031,
		0.149076, -0.932808, 0.328094,
		13.154342, 14.032500, 28.466204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433678, 14.559706, 28.627272>,  <13.049989, 14.685466, 28.236538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433678, 14.559706, 28.627272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.677853, 14.271593, 28.759064>,  <12.824358, 14.098725, 28.838139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.677853, 14.271593, 28.759064>,  <12.433678, 14.559706, 28.627272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.677853, 14.271593, 28.759064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522569, -0.053641, 0.850908,
		-0.595220, -0.691604, -0.409142,
		0.610438, -0.720282, 0.329482,
		12.860984, 14.055509, 28.857908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982024, 13.993168, 28.859375>,  <12.433678, 14.559706, 28.627272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982024, 13.993168, 28.859375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.344652, 13.981496, 29.027792>,  <12.562229, 13.974493, 29.128843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.344652, 13.981496, 29.027792>,  <11.982024, 13.993168, 28.859375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344652, 13.981496, 29.027792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421730, -0.023568, 0.906415,
		-0.016530, -0.999296, -0.033674,
		0.906571, -0.029185, 0.421044,
		12.616624, 13.972742, 29.154104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905992, 13.536805, 29.466948>,  <11.982024, 13.993168, 28.859375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905992, 13.536805, 29.466948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.219588, 13.781787, 29.507458>,  <12.407746, 13.928776, 29.531763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.219588, 13.781787, 29.507458>,  <11.905992, 13.536805, 29.466948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219588, 13.781787, 29.507458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232526, 0.138461, 0.962684,
		0.575577, -0.778285, 0.250964,
		0.783991, 0.612455, 0.101276,
		12.454785, 13.965523, 29.537840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296478, 13.332610, 30.071806>,  <11.905992, 13.536805, 29.466948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296478, 13.332610, 30.071806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.441308, 13.699666, 30.006275>,  <12.528206, 13.919900, 29.966957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.441308, 13.699666, 30.006275>,  <12.296478, 13.332610, 30.071806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441308, 13.699666, 30.006275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211396, 0.252006, 0.944354,
		0.907862, -0.307295, 0.285230,
		0.362075, 0.917640, -0.163825,
		12.549931, 13.974958, 29.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.717409, 13.450232, 30.623016>,  <12.296478, 13.332610, 30.071806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.717409, 13.450232, 30.623016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.659862, 13.821097, 30.484644>,  <12.625333, 14.043616, 30.401621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.659862, 13.821097, 30.484644>,  <12.717409, 13.450232, 30.623016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659862, 13.821097, 30.484644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239052, 0.306655, 0.921313,
		0.960289, 0.215245, 0.177522,
		-0.143870, 0.927163, -0.345932,
		12.616700, 14.099246, 30.380865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.052031, 13.907819, 31.113453>,  <12.717409, 13.450232, 30.623016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.052031, 13.907819, 31.113453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.787663, 14.135347, 30.917646>,  <12.629042, 14.271865, 30.800163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.787663, 14.135347, 30.917646>,  <13.052031, 13.907819, 31.113453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787663, 14.135347, 30.917646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299499, 0.398168, 0.867042,
		0.688102, 0.719656, -0.092796,
		-0.660921, 0.568821, -0.489516,
		12.589386, 14.305994, 30.770792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143714, 14.513362, 31.426340>,  <13.052031, 13.907819, 31.113453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143714, 14.513362, 31.426340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.778677, 14.533353, 31.264019>,  <12.559655, 14.545347, 31.166626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.778677, 14.533353, 31.264019>,  <13.143714, 14.513362, 31.426340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.778677, 14.533353, 31.264019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356578, 0.388370, 0.849718,
		0.200070, 0.920147, -0.336602,
		-0.912592, 0.049978, -0.405805,
		12.504899, 14.548347, 31.142277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847582, 15.185789, 31.514076>,  <13.143714, 14.513362, 31.426340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847582, 15.185789, 31.514076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.523038, 14.958490, 31.459248>,  <12.328311, 14.822111, 31.426352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.523038, 14.958490, 31.459248>,  <12.847582, 15.185789, 31.514076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523038, 14.958490, 31.459248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366466, 0.311793, 0.876634,
		-0.455408, 0.761498, -0.461220,
		-0.811361, -0.568248, -0.137070,
		12.279630, 14.788016, 31.418127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274583, 15.595309, 31.827070>,  <12.847582, 15.185789, 31.514076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274583, 15.595309, 31.827070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.121440, 15.230254, 31.769781>,  <12.029554, 15.011221, 31.735407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.121440, 15.230254, 31.769781>,  <12.274583, 15.595309, 31.827070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.121440, 15.230254, 31.769781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488699, 0.068517, 0.869758,
		-0.783960, 0.402987, -0.472237,
		-0.382857, -0.912637, -0.143224,
		12.006583, 14.956463, 31.726814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.535373, 15.720199, 31.953615>,  <12.274583, 15.595309, 31.827070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.535373, 15.720199, 31.953615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.604424, 15.330818, 32.013737>,  <11.645854, 15.097190, 32.049809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.604424, 15.330818, 32.013737>,  <11.535373, 15.720199, 31.953615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604424, 15.330818, 32.013737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419174, 0.065482, 0.905541,
		-0.891344, -0.219323, -0.396742,
		0.172627, -0.973452, 0.150302,
		11.656212, 15.038782, 32.058826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917658, 15.372181, 32.194138>,  <11.535373, 15.720199, 31.953615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917658, 15.372181, 32.194138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.220461, 15.137970, 32.310135>,  <11.402143, 14.997443, 32.379734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.220461, 15.137970, 32.310135>,  <10.917658, 15.372181, 32.194138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220461, 15.137970, 32.310135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295606, 0.088908, 0.951164,
		-0.582714, -0.805763, -0.105781,
		0.757008, -0.585526, 0.289996,
		11.447563, 14.962312, 32.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672112, 16.102671, 31.779343>,  <10.917658, 15.372181, 32.194138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672112, 16.102671, 31.779343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.320084, 16.248640, 31.900871>,  <10.108867, 16.336222, 31.973789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.320084, 16.248640, 31.900871>,  <10.672112, 16.102671, 31.779343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320084, 16.248640, 31.900871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162527, 0.369691, -0.914830,
		-0.446164, -0.854493, -0.266044,
		-0.880069, 0.364925, 0.303822,
		10.056063, 16.358118, 31.992018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.143361, 15.883496, 31.343390>,  <10.672112, 16.102671, 31.779343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.143361, 15.883496, 31.343390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.066071, 16.239954, 31.507597>,  <10.019696, 16.453829, 31.606121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.066071, 16.239954, 31.507597>,  <10.143361, 15.883496, 31.343390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.066071, 16.239954, 31.507597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211492, 0.370738, -0.904337,
		-0.958089, -0.261563, 0.116833,
		-0.193227, 0.891144, 0.410518,
		10.008102, 16.507298, 31.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496164, 16.093117, 31.190735>,  <10.143361, 15.883496, 31.343390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496164, 16.093117, 31.190735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.685717, 16.436424, 31.269537>,  <9.799448, 16.642408, 31.316818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.685717, 16.436424, 31.269537>,  <9.496164, 16.093117, 31.190735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.685717, 16.436424, 31.269537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145118, 0.296775, -0.943856,
		-0.868549, 0.418687, 0.265187,
		0.473881, 0.858269, 0.197005,
		9.827881, 16.693905, 31.328638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.107978, 16.788168, 30.836432>,  <9.496164, 16.093117, 31.190735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.107978, 16.788168, 30.836432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.479358, 16.913452, 30.916313>,  <9.702186, 16.988623, 30.964241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.479358, 16.913452, 30.916313>,  <9.107978, 16.788168, 30.836432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479358, 16.913452, 30.916313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096770, 0.315107, -0.944110,
		-0.358631, 0.895884, 0.262252,
		0.928450, 0.313209, 0.199702,
		9.757893, 17.007414, 30.976223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085901, 17.495972, 30.536919>,  <9.107978, 16.788168, 30.836432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085901, 17.495972, 30.536919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.466227, 17.378309, 30.575750>,  <9.694422, 17.307711, 30.599049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.466227, 17.378309, 30.575750>,  <9.085901, 17.495972, 30.536919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.466227, 17.378309, 30.575750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187878, 0.298469, -0.935745,
		0.246282, 0.907958, 0.339054,
		0.950814, -0.294158, 0.097078,
		9.751471, 17.290062, 30.604874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.508610, 18.026587, 30.222563>,  <9.085901, 17.495972, 30.536919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.508610, 18.026587, 30.222563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.741272, 17.701309, 30.230484>,  <9.880870, 17.506144, 30.235237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.741272, 17.701309, 30.230484>,  <9.508610, 18.026587, 30.222563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.741272, 17.701309, 30.230484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243831, 0.151076, -0.957978,
		0.776030, 0.562043, 0.286156,
		0.581656, -0.813194, 0.019804,
		9.915769, 17.457352, 30.236425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103493, 18.279161, 29.836290>,  <9.508610, 18.026587, 30.222563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103493, 18.279161, 29.836290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.095588, 17.879475, 29.822605>,  <10.090845, 17.639662, 29.814394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.095588, 17.879475, 29.822605>,  <10.103493, 18.279161, 29.836290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.095588, 17.879475, 29.822605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048546, 0.035136, -0.998202,
		0.998625, -0.018065, -0.049202,
		-0.019761, -0.999219, -0.034211,
		10.089660, 17.579708, 29.812342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.746494, 18.621264, 30.039412>,  <10.103493, 18.279161, 29.836290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.746494, 18.621264, 30.039412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.871174, 19.001305, 30.044275>,  <10.945981, 19.229330, 30.047194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.871174, 19.001305, 30.044275>,  <10.746494, 18.621264, 30.039412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.871174, 19.001305, 30.044275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178523, 0.045989, 0.982860,
		0.933260, -0.308526, 0.183951,
		0.311698, 0.950103, 0.012159,
		10.964684, 19.286335, 30.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260951, 18.680616, 30.631178>,  <10.746494, 18.621264, 30.039412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.260951, 18.680616, 30.631178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.133867, 19.048515, 30.538984>,  <11.057617, 19.269255, 30.483669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.133867, 19.048515, 30.538984>,  <11.260951, 18.680616, 30.631178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.133867, 19.048515, 30.538984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155547, 0.189227, 0.969535,
		0.935343, 0.343881, 0.082945,
		-0.317709, 0.919749, -0.230482,
		11.038554, 19.324440, 30.469839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634591, 19.144411, 31.035112>,  <11.260951, 18.680616, 30.631178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.634591, 19.144411, 31.035112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.313802, 19.350224, 30.913723>,  <11.121328, 19.473711, 30.840889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.313802, 19.350224, 30.913723>,  <11.634591, 19.144411, 31.035112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.313802, 19.350224, 30.913723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066025, 0.428561, 0.901097,
		0.593700, 0.742693, -0.309722,
		-0.801973, 0.514532, -0.303473,
		11.073210, 19.504583, 30.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.781032, 19.782173, 31.322721>,  <11.634591, 19.144411, 31.035112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.781032, 19.782173, 31.322721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.386019, 19.751091, 31.267962>,  <11.149011, 19.732443, 31.235106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.386019, 19.751091, 31.267962>,  <11.781032, 19.782173, 31.322721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.386019, 19.751091, 31.267962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154016, 0.297145, 0.942329,
		-0.032543, 0.951665, -0.305408,
		-0.987532, -0.077704, -0.136901,
		11.089759, 19.727779, 31.226891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521042, 20.384308, 31.482201>,  <11.781032, 19.782173, 31.322721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521042, 20.384308, 31.482201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.197677, 20.151560, 31.517740>,  <11.003657, 20.011911, 31.539064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.197677, 20.151560, 31.517740>,  <11.521042, 20.384308, 31.482201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197677, 20.151560, 31.517740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135766, 0.331199, 0.933742,
		-0.572744, 0.742788, -0.346744,
		-0.808414, -0.581871, 0.088847,
		10.955153, 19.976999, 31.544394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.111554, 20.836870, 31.736759>,  <11.521042, 20.384308, 31.482201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.111554, 20.836870, 31.736759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.949836, 20.474913, 31.789995>,  <10.852804, 20.257738, 31.821936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.949836, 20.474913, 31.789995>,  <11.111554, 20.836870, 31.736759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.949836, 20.474913, 31.789995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172813, 0.218466, 0.960421,
		-0.898153, 0.365296, -0.244702,
		-0.404297, -0.904893, 0.133088,
		10.828547, 20.203445, 31.829922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611906, 21.032356, 32.037987>,  <11.111554, 20.836870, 31.736759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611906, 21.032356, 32.037987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.646290, 20.645939, 32.135452>,  <10.666921, 20.414089, 32.193932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.646290, 20.645939, 32.135452>,  <10.611906, 21.032356, 32.037987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646290, 20.645939, 32.135452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136455, 0.230849, 0.963374,
		-0.986910, -0.116061, -0.111977,
		0.085960, -0.966043, 0.243665,
		10.672078, 20.356127, 32.208553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043105, 20.874723, 32.482166>,  <10.611906, 21.032356, 32.037987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043105, 20.874723, 32.482166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.317942, 20.598501, 32.572533>,  <10.482843, 20.432768, 32.626751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.317942, 20.598501, 32.572533>,  <10.043105, 20.874723, 32.482166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.317942, 20.598501, 32.572533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035609, 0.278555, 0.959760,
		-0.725699, -0.667486, 0.166802,
		0.687090, -0.690557, 0.225916,
		10.524069, 20.391335, 32.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.872323, 20.704514, 33.154602>,  <10.043105, 20.874723, 32.482166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.872323, 20.704514, 33.154602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.249219, 20.572811, 33.130032>,  <10.475357, 20.493790, 33.115288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.249219, 20.572811, 33.130032>,  <9.872323, 20.704514, 33.154602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.249219, 20.572811, 33.130032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175430, 0.328920, 0.927920,
		-0.285319, -0.885100, 0.367684,
		0.942240, -0.329256, -0.061426,
		10.531891, 20.474035, 33.111603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.623489, 17.588234, 17.955982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016037, 17.571507, 18.030993>,  <14.251566, 17.561470, 18.075998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016037, 17.571507, 18.030993>,  <13.623489, 17.588234, 17.955982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016037, 17.571507, 18.030993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160636, 0.356899, 0.920228,
		-0.105410, -0.933207, 0.343532,
		0.981369, -0.041818, 0.187527,
		14.310448, 17.558962, 18.087250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.759291, 17.111591, 18.523232>,  <13.623489, 17.588234, 17.955982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.759291, 17.111591, 18.523232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086415, 17.341671, 18.530491>,  <14.282690, 17.479719, 18.534845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.086415, 17.341671, 18.530491>,  <13.759291, 17.111591, 18.523232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086415, 17.341671, 18.530491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193706, 0.245441, 0.949861,
		0.541907, -0.780322, 0.312144,
		0.817811, 0.575201, 0.018147,
		14.331758, 17.514231, 18.535934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941402, 16.997055, 19.165134>,  <13.759291, 17.111591, 18.523232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941402, 16.997055, 19.165134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101991, 17.338366, 19.032022>,  <14.198344, 17.543152, 18.952156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101991, 17.338366, 19.032022>,  <13.941402, 16.997055, 19.165134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101991, 17.338366, 19.032022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244338, 0.449963, 0.858971,
		0.882677, -0.263542, 0.389135,
		0.401471, 0.853275, -0.332779,
		14.222432, 17.594349, 18.932188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299604, 17.293900, 19.726158>,  <13.941402, 16.997055, 19.165134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299604, 17.293900, 19.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235079, 17.604279, 19.482229>,  <14.196363, 17.790506, 19.335871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235079, 17.604279, 19.482229>,  <14.299604, 17.293900, 19.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235079, 17.604279, 19.482229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321026, 0.543055, 0.775908,
		0.933231, 0.320934, 0.161497,
		-0.161314, 0.775946, -0.609824,
		14.186685, 17.837063, 19.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633222, 17.872839, 19.991589>,  <14.299604, 17.293900, 19.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633222, 17.872839, 19.991589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376416, 18.061058, 19.749464>,  <14.222333, 18.173990, 19.604189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376416, 18.061058, 19.749464>,  <14.633222, 17.872839, 19.991589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376416, 18.061058, 19.749464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316714, 0.556231, 0.768310,
		0.698220, 0.684976, -0.208079,
		-0.642013, 0.470548, -0.605313,
		14.183812, 18.202223, 19.567871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634419, 18.556345, 20.244978>,  <14.633222, 17.872839, 19.991589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634419, 18.556345, 20.244978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307255, 18.503660, 20.020952>,  <14.110956, 18.472050, 19.886536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307255, 18.503660, 20.020952>,  <14.634419, 18.556345, 20.244978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307255, 18.503660, 20.020952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544098, 0.493512, 0.678531,
		0.187029, 0.859709, -0.475312,
		-0.817911, -0.131712, -0.560066,
		14.061882, 18.464148, 19.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375854, 19.222422, 20.004421>,  <14.634419, 18.556345, 20.244978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375854, 19.222422, 20.004421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075809, 18.959061, 19.979630>,  <13.895783, 18.801044, 19.964754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075809, 18.959061, 19.979630>,  <14.375854, 19.222422, 20.004421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075809, 18.959061, 19.979630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558815, 0.580943, 0.591803,
		-0.353638, 0.478552, -0.803697,
		-0.750110, -0.658402, -0.061978,
		13.850777, 18.761539, 19.961037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.728418, 19.616362, 19.794193>,  <14.375854, 19.222422, 20.004421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.728418, 19.616362, 19.794193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602558, 19.273504, 19.957315>,  <13.527042, 19.067791, 20.055189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602558, 19.273504, 19.957315>,  <13.728418, 19.616362, 19.794193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602558, 19.273504, 19.957315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689018, 0.501750, 0.522974,
		-0.652878, -0.116430, -0.748461,
		-0.314651, -0.857141, 0.407804,
		13.508162, 19.016361, 20.079657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056842, 19.735062, 19.966103>,  <13.728418, 19.616362, 19.794193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056842, 19.735062, 19.966103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117924, 19.407261, 20.187046>,  <13.154573, 19.210581, 20.319613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117924, 19.407261, 20.187046>,  <13.056842, 19.735062, 19.966103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117924, 19.407261, 20.187046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691162, 0.310933, 0.652392,
		-0.706382, -0.481393, -0.518927,
		0.152705, -0.819500, 0.552359,
		13.163735, 19.161411, 20.352755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354222, 19.585192, 20.149849>,  <13.056842, 19.735062, 19.966103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354222, 19.585192, 20.149849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.599150, 19.390289, 20.398895>,  <12.746106, 19.273348, 20.548323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.599150, 19.390289, 20.398895>,  <12.354222, 19.585192, 20.149849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599150, 19.390289, 20.398895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650124, 0.137813, 0.747226,
		-0.449893, -0.862317, -0.232390,
		0.612319, -0.487255, 0.622614,
		12.782845, 19.244114, 20.585680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902382, 19.050306, 20.490538>,  <12.354222, 19.585192, 20.149849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902382, 19.050306, 20.490538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219244, 19.109781, 20.727310>,  <12.409361, 19.145466, 20.869373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219244, 19.109781, 20.727310>,  <11.902382, 19.050306, 20.490538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219244, 19.109781, 20.727310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602075, 0.031492, 0.797818,
		0.099986, -0.988382, 0.114469,
		0.792154, 0.148690, 0.591932,
		12.456890, 19.154388, 20.904890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801820, 18.643902, 21.028843>,  <11.902382, 19.050306, 20.490538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801820, 18.643902, 21.028843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059745, 18.894169, 21.204460>,  <12.214499, 19.044329, 21.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059745, 18.894169, 21.204460>,  <11.801820, 18.643902, 21.028843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.059745, 18.894169, 21.204460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523747, -0.056680, 0.849986,
		0.556692, -0.778029, 0.291143,
		0.644812, 0.625666, 0.439043,
		12.253188, 19.081869, 21.336174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096115, 17.909601, 21.301151>,  <11.801820, 18.643902, 21.028843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096115, 17.909601, 21.301151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890140, 17.567078, 21.285275>,  <11.766554, 17.361565, 21.275747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890140, 17.567078, 21.285275>,  <12.096115, 17.909601, 21.301151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.890140, 17.567078, 21.285275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563182, -0.303033, -0.768763,
		0.646269, -0.418222, 0.638300,
		-0.514940, -0.856307, -0.039694,
		11.735658, 17.310186, 21.273367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554411, 17.510429, 20.936758>,  <12.096115, 17.909601, 21.301151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554411, 17.510429, 20.936758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198002, 17.336813, 20.883558>,  <11.984157, 17.232643, 20.851639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198002, 17.336813, 20.883558>,  <12.554411, 17.510429, 20.936758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198002, 17.336813, 20.883558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205641, -0.124723, -0.970647,
		0.404712, -0.892218, 0.200388,
		-0.891022, -0.434041, -0.133000,
		11.930696, 17.206600, 20.843658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675438, 16.937050, 20.417313>,  <12.554411, 17.510429, 20.936758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675438, 16.937050, 20.417313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281559, 17.002066, 20.392159>,  <12.045232, 17.041075, 20.377066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281559, 17.002066, 20.392159>,  <12.675438, 16.937050, 20.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281559, 17.002066, 20.392159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075718, 0.073986, -0.994381,
		-0.156973, -0.983924, -0.085161,
		-0.984696, 0.162539, -0.062887,
		11.986150, 17.050827, 20.373293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.474653, 16.404541, 20.057018>,  <12.675438, 16.937050, 20.417313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.474653, 16.404541, 20.057018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185493, 16.679979, 20.034204>,  <12.011997, 16.845242, 20.020517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185493, 16.679979, 20.034204>,  <12.474653, 16.404541, 20.057018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.185493, 16.679979, 20.034204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018603, -0.063117, -0.997833,
		-0.690703, -0.722393, 0.032817,
		-0.722899, 0.688596, -0.057033,
		11.968624, 16.886559, 20.017094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980252, 16.046515, 19.553371>,  <12.474653, 16.404541, 20.057018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980252, 16.046515, 19.553371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908707, 16.439711, 19.570038>,  <11.865780, 16.675629, 19.580038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908707, 16.439711, 19.570038>,  <11.980252, 16.046515, 19.553371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908707, 16.439711, 19.570038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272003, -0.008704, -0.962257,
		-0.945528, -0.183446, 0.268933,
		-0.178863, 0.982991, 0.041668,
		11.855048, 16.734608, 19.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408252, 16.024549, 19.101982>,  <11.980252, 16.046515, 19.553371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408252, 16.024549, 19.101982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542340, 16.398205, 19.150991>,  <11.622793, 16.622398, 19.180397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542340, 16.398205, 19.150991>,  <11.408252, 16.024549, 19.101982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542340, 16.398205, 19.150991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026698, 0.139415, -0.989874,
		-0.941761, 0.328556, 0.071675,
		0.335221, 0.934138, 0.122524,
		11.642907, 16.678446, 19.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959190, 16.433226, 18.680880>,  <11.408252, 16.024549, 19.101982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959190, 16.433226, 18.680880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307056, 16.620974, 18.742035>,  <11.515776, 16.733622, 18.778728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307056, 16.620974, 18.742035>,  <10.959190, 16.433226, 18.680880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307056, 16.620974, 18.742035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179403, -0.011979, -0.983703,
		-0.459889, 0.882920, -0.094624,
		0.869665, 0.469370, 0.152889,
		11.567956, 16.761784, 18.787901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.987165, 16.848158, 18.157251>,  <10.959190, 16.433226, 18.680880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.987165, 16.848158, 18.157251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370893, 16.861156, 18.269432>,  <11.601129, 16.868956, 18.336740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370893, 16.861156, 18.269432>,  <10.987165, 16.848158, 18.157251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370893, 16.861156, 18.269432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281340, -0.193028, -0.939994,
		0.023589, 0.980655, -0.194317,
		0.959318, 0.032495, 0.280450,
		11.658688, 16.870905, 18.353567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319282, 17.249506, 17.641413>,  <10.987165, 16.848158, 18.157251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319282, 17.249506, 17.641413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603466, 17.047224, 17.837170>,  <11.773977, 16.925856, 17.954624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603466, 17.047224, 17.837170>,  <11.319282, 17.249506, 17.641413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.603466, 17.047224, 17.837170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448602, -0.210363, -0.868621,
		0.542217, 0.836665, 0.077405,
		0.710462, -0.505706, 0.489393,
		11.816605, 16.895512, 17.983988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875078, 17.375319, 17.189409>,  <11.319282, 17.249506, 17.641413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875078, 17.375319, 17.189409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013077, 17.074148, 17.413580>,  <12.095876, 16.893446, 17.548082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013077, 17.074148, 17.413580>,  <11.875078, 17.375319, 17.189409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013077, 17.074148, 17.413580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370675, -0.439256, -0.818324,
		0.862310, 0.490054, 0.127550,
		0.344996, -0.752928, 0.560426,
		12.116575, 16.848270, 17.581707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658844, 17.300913, 17.088900>,  <11.875078, 17.375319, 17.189409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658844, 17.300913, 17.088900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477171, 16.967379, 17.214399>,  <12.368167, 16.767258, 17.289700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477171, 16.967379, 17.214399>,  <12.658844, 17.300913, 17.088900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.477171, 16.967379, 17.214399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343291, -0.488771, -0.802031,
		0.822112, -0.256562, 0.508240,
		-0.454183, -0.833834, 0.313749,
		12.340916, 16.717228, 17.308523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.173776, 16.799681, 16.883312>,  <12.658844, 17.300913, 17.088900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.173776, 16.799681, 16.883312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850718, 16.576019, 16.958204>,  <12.656882, 16.441822, 17.003139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850718, 16.576019, 16.958204>,  <13.173776, 16.799681, 16.883312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850718, 16.576019, 16.958204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253374, -0.615786, -0.746062,
		0.532458, -0.555114, 0.639012,
		-0.807645, -0.559156, 0.187229,
		12.608424, 16.408272, 17.014374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409942, 16.134596, 17.023945>,  <13.173776, 16.799681, 16.883312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409942, 16.134596, 17.023945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043173, 16.129063, 16.864414>,  <12.823112, 16.125744, 16.768696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043173, 16.129063, 16.864414>,  <13.409942, 16.134596, 17.023945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043173, 16.129063, 16.864414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363889, -0.439259, -0.821363,
		-0.163827, -0.898254, 0.407799,
		-0.916922, -0.013832, -0.398828,
		12.768096, 16.124914, 16.744766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185249, 15.473683, 16.848803>,  <13.409942, 16.134596, 17.023945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185249, 15.473683, 16.848803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071632, 15.742644, 16.575396>,  <13.003462, 15.904020, 16.411352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071632, 15.742644, 16.575396>,  <13.185249, 15.473683, 16.848803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.071632, 15.742644, 16.575396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379502, -0.575819, -0.724162,
		-0.880510, -0.465089, -0.091620,
		-0.284043, 0.672402, -0.683517,
		12.986420, 15.944365, 16.370340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.906328, 15.550068, 17.528370>,  <13.185249, 15.473683, 16.848803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.906328, 15.550068, 17.528370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149344, 15.237473, 17.471563>,  <13.295155, 15.049915, 17.437479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149344, 15.237473, 17.471563>,  <12.906328, 15.550068, 17.528370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149344, 15.237473, 17.471563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717755, 0.616732, -0.323217,
		0.340178, 0.094433, 0.935608,
		0.607542, -0.781488, -0.142018,
		13.331607, 15.003026, 17.428957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.315822, 15.148452, 17.422617>,  <12.906328, 15.550068, 17.528370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.315822, 15.148452, 17.422617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683177, 14.993955, 17.388258>,  <12.903590, 14.901257, 17.367643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683177, 14.993955, 17.388258>,  <12.315822, 15.148452, 17.422617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683177, 14.993955, 17.388258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077305, -0.388054, 0.918389,
		-0.388054, -0.836798, -0.386243,
		-0.918389, 0.386243, 0.085897,
		12.958694, 14.878081, 17.362490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186536, 14.444958, 17.419596>,  <12.315822, 15.148452, 17.422617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186536, 14.444958, 17.419596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.524017, 14.591992, 17.576078>,  <12.726506, 14.680213, 17.669968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.524017, 14.591992, 17.576078>,  <12.186536, 14.444958, 17.419596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.524017, 14.591992, 17.576078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282134, -0.316349, 0.905717,
		0.456689, -0.874530, -0.163196,
		0.843704, 0.367588, 0.391208,
		12.777128, 14.702269, 17.693441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.662945, 13.879200, 17.761221>,  <12.186536, 14.444958, 17.419596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.662945, 13.879200, 17.761221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.759570, 14.233280, 17.920250>,  <12.817546, 14.445728, 18.015667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.759570, 14.233280, 17.920250>,  <12.662945, 13.879200, 17.761221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759570, 14.233280, 17.920250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353882, -0.301131, 0.885487,
		0.903557, -0.354596, 0.240514,
		0.241564, 0.885202, 0.397574,
		12.832039, 14.498840, 18.039522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193072, 13.677807, 18.123863>,  <12.662945, 13.879200, 17.761221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.193072, 13.677807, 18.123863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018465, 13.996683, 18.290688>,  <12.913701, 14.188009, 18.390781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018465, 13.996683, 18.290688>,  <13.193072, 13.677807, 18.123863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018465, 13.996683, 18.290688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090294, -0.422399, 0.901902,
		0.895153, 0.431354, 0.112403,
		-0.436517, 0.797191, 0.417060,
		12.887510, 14.235841, 18.415806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.486102, 13.646107, 18.790445>,  <13.193072, 13.677807, 18.123863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.486102, 13.646107, 18.790445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215653, 13.937501, 18.834568>,  <13.053384, 14.112337, 18.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215653, 13.937501, 18.834568>,  <13.486102, 13.646107, 18.790445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215653, 13.937501, 18.834568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133931, -0.268736, 0.953857,
		0.724514, 0.630150, 0.279265,
		-0.676122, 0.728485, 0.110306,
		13.012816, 14.156047, 18.867661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767130, 14.016845, 19.385956>,  <13.486102, 13.646107, 18.790445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767130, 14.016845, 19.385956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376621, 14.087286, 19.335545>,  <13.142316, 14.129551, 19.305298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376621, 14.087286, 19.335545>,  <13.767130, 14.016845, 19.385956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.376621, 14.087286, 19.335545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164504, -0.224626, 0.960459,
		0.140830, 0.958400, 0.248265,
		-0.976271, 0.176102, -0.126027,
		13.083740, 14.140117, 19.297737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582982, 14.475034, 19.958820>,  <13.767130, 14.016845, 19.385956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582982, 14.475034, 19.958820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237022, 14.311114, 19.842878>,  <13.029447, 14.212763, 19.773314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237022, 14.311114, 19.842878>,  <13.582982, 14.475034, 19.958820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237022, 14.311114, 19.842878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195507, -0.256823, 0.946477,
		-0.462305, 0.875276, 0.142008,
		-0.864899, -0.409798, -0.289854,
		12.977552, 14.188175, 19.755922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134683, 14.660203, 20.448486>,  <13.582982, 14.475034, 19.958820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134683, 14.660203, 20.448486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969851, 14.341003, 20.272583>,  <12.870952, 14.149484, 20.167040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969851, 14.341003, 20.272583>,  <13.134683, 14.660203, 20.448486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969851, 14.341003, 20.272583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324246, -0.322614, 0.889261,
		-0.851501, 0.509037, -0.125805,
		-0.412080, -0.797998, -0.439760,
		12.846227, 14.101604, 20.140656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459958, 14.632627, 20.711990>,  <13.134683, 14.660203, 20.448486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459958, 14.632627, 20.711990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518245, 14.264613, 20.566496>,  <12.553217, 14.043805, 20.479200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518245, 14.264613, 20.566496>,  <12.459958, 14.632627, 20.711990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518245, 14.264613, 20.566496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302135, -0.391477, 0.869172,
		-0.942062, -0.016755, -0.335019,
		0.145716, -0.920035, -0.363734,
		12.561959, 13.988603, 20.457376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858114, 14.281351, 20.926115>,  <12.459958, 14.632627, 20.711990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858114, 14.281351, 20.926115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143967, 14.018312, 20.830727>,  <12.315478, 13.860489, 20.773493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143967, 14.018312, 20.830727>,  <11.858114, 14.281351, 20.926115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.143967, 14.018312, 20.830727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184038, -0.505659, 0.842875,
		-0.674858, -0.558456, -0.482383,
		0.714630, -0.657598, -0.238471,
		12.358356, 13.821033, 20.759186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521248, 13.712728, 21.101105>,  <11.858114, 14.281351, 20.926115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521248, 13.712728, 21.101105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917868, 13.662780, 21.115170>,  <12.155840, 13.632812, 21.123608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917868, 13.662780, 21.115170>,  <11.521248, 13.712728, 21.101105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917868, 13.662780, 21.115170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076739, -0.346057, 0.935070,
		-0.104592, -0.929867, -0.352715,
		0.991550, -0.124868, 0.035162,
		12.215333, 13.625319, 21.125717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699375, 13.145405, 21.511827>,  <11.521248, 13.712728, 21.101105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699375, 13.145405, 21.511827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061381, 13.315487, 21.516716>,  <12.278584, 13.417536, 21.519650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061381, 13.315487, 21.516716>,  <11.699375, 13.145405, 21.511827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061381, 13.315487, 21.516716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109783, -0.261227, 0.959014,
		0.410970, -0.866581, -0.283094,
		0.905015, 0.425204, 0.012220,
		12.332886, 13.443048, 21.520382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043675, 12.562931, 21.802122>,  <11.699375, 13.145405, 21.511827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043675, 12.562931, 21.802122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269355, 12.889231, 21.853085>,  <12.404762, 13.085011, 21.883661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269355, 12.889231, 21.853085>,  <12.043675, 12.562931, 21.802122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269355, 12.889231, 21.853085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084050, -0.210256, 0.974027,
		0.821350, -0.538836, -0.187190,
		0.564198, 0.815750, 0.127405,
		12.438615, 13.133956, 21.891306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.646456, 12.351599, 22.268766>,  <12.043675, 12.562931, 21.802122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.646456, 12.351599, 22.268766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.639198, 12.750747, 22.293837>,  <12.634844, 12.990235, 22.308878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.639198, 12.750747, 22.293837>,  <12.646456, 12.351599, 22.268766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.639198, 12.750747, 22.293837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247690, -0.056244, 0.967206,
		0.968670, 0.033073, -0.246141,
		-0.018144, 0.997869, 0.062674,
		12.633755, 13.050108, 22.312639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.067245, 12.513608, 22.715958>,  <12.646456, 12.351599, 22.268766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.067245, 12.513608, 22.715958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914569, 12.882949, 22.699312>,  <12.822964, 13.104553, 22.689325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914569, 12.882949, 22.699312>,  <13.067245, 12.513608, 22.715958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.914569, 12.882949, 22.699312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276191, 0.156906, 0.948208,
		0.882061, 0.350427, -0.314911,
		-0.381689, 0.923353, -0.041616,
		12.800062, 13.159955, 22.686827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.561767, 12.973354, 22.849770>,  <13.067245, 12.513608, 22.715958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.561767, 12.973354, 22.849770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.220866, 13.150871, 22.960560>,  <13.016326, 13.257381, 23.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.220866, 13.150871, 22.960560>,  <13.561767, 12.973354, 22.849770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.220866, 13.150871, 22.960560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439265, 0.319551, 0.839603,
		0.284101, 0.837219, -0.467280,
		-0.852252, 0.443792, 0.276977,
		12.965191, 13.284009, 23.043653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725649, 13.634867, 23.156345>,  <13.561767, 12.973354, 22.849770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725649, 13.634867, 23.156345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373641, 13.532192, 23.316185>,  <13.162436, 13.470588, 23.412088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373641, 13.532192, 23.316185>,  <13.725649, 13.634867, 23.156345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373641, 13.532192, 23.316185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287169, 0.382567, 0.878166,
		-0.378286, 0.887556, -0.262955,
		-0.880019, -0.256685, 0.399598,
		13.109635, 13.455187, 23.436064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553254, 14.220399, 23.568117>,  <13.725649, 13.634867, 23.156345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553254, 14.220399, 23.568117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344310, 13.903562, 23.694435>,  <13.218944, 13.713459, 23.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344310, 13.903562, 23.694435>,  <13.553254, 14.220399, 23.568117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344310, 13.903562, 23.694435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316497, 0.163792, 0.934346,
		-0.791814, 0.588014, 0.165137,
		-0.522360, -0.792094, 0.315797,
		13.187602, 13.665934, 23.789175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.365919, 14.404656, 24.338640>,  <13.553254, 14.220399, 23.568117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.365919, 14.404656, 24.338640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266450, 14.018031, 24.313602>,  <13.206768, 13.786057, 24.298580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266450, 14.018031, 24.313602>,  <13.365919, 14.404656, 24.338640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266450, 14.018031, 24.313602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018053, -0.069239, 0.997437,
		-0.968419, 0.246906, 0.034668,
		-0.248674, -0.966563, -0.062595,
		13.191848, 13.728063, 24.294825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730882, 14.301593, 24.752510>,  <13.365919, 14.404656, 24.338640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730882, 14.301593, 24.752510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903945, 13.941039, 24.745443>,  <13.007783, 13.724707, 24.741203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903945, 13.941039, 24.745443>,  <12.730882, 14.301593, 24.752510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903945, 13.941039, 24.745443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046588, -0.041924, 0.998034,
		-0.900353, -0.430985, -0.060133,
		0.432659, -0.901385, -0.017667,
		13.033743, 13.670624, 24.740143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308235, 13.828964, 25.280149>,  <12.730882, 14.301593, 24.752510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308235, 13.828964, 25.280149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666543, 13.655098, 25.242920>,  <12.881528, 13.550778, 25.220583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666543, 13.655098, 25.242920>,  <12.308235, 13.828964, 25.280149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.666543, 13.655098, 25.242920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125602, 0.046647, 0.990983,
		-0.426405, -0.899383, 0.096380,
		0.895769, -0.434666, -0.093074,
		12.935274, 13.524698, 25.214998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420647, 13.288423, 25.757753>,  <12.308235, 13.828964, 25.280149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420647, 13.288423, 25.757753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815022, 13.325509, 25.702135>,  <13.051646, 13.347761, 25.668764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815022, 13.325509, 25.702135>,  <12.420647, 13.288423, 25.757753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.815022, 13.325509, 25.702135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146207, -0.075522, 0.986367,
		0.080952, -0.992824, -0.088015,
		0.985936, 0.092717, -0.139044,
		13.110803, 13.353324, 25.660421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.766661, 12.853136, 26.225119>,  <12.420647, 13.288423, 25.757753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.766661, 12.853136, 26.225119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078986, 13.078081, 26.116251>,  <13.266382, 13.213048, 26.050930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078986, 13.078081, 26.116251>,  <12.766661, 12.853136, 26.225119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078986, 13.078081, 26.116251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363669, -0.054883, 0.929910,
		0.508009, -0.825067, -0.247367,
		0.780815, 0.562362, -0.272171,
		13.313231, 13.246790, 26.034599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354357, 12.475773, 26.422052>,  <12.766661, 12.853136, 26.225119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354357, 12.475773, 26.422052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462820, 12.860033, 26.397980>,  <13.527898, 13.090590, 26.383535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462820, 12.860033, 26.397980>,  <13.354357, 12.475773, 26.422052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462820, 12.860033, 26.397980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355200, -0.041757, 0.933857,
		0.894598, -0.274601, -0.352546,
		0.271159, 0.960651, -0.060183,
		13.544168, 13.148229, 26.379925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017265, 12.478240, 26.747036>,  <13.354357, 12.475773, 26.422052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017265, 12.478240, 26.747036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873912, 12.851144, 26.727230>,  <13.787900, 13.074886, 26.715347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873912, 12.851144, 26.727230>,  <14.017265, 12.478240, 26.747036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873912, 12.851144, 26.727230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179470, 0.120845, 0.976313,
		0.916162, 0.341008, -0.210622,
		-0.358383, 0.932261, -0.049513,
		13.766397, 13.130822, 26.712376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294309, 12.838802, 27.342640>,  <14.017265, 12.478240, 26.747036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294309, 12.838802, 27.342640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013777, 13.113960, 27.267876>,  <13.845457, 13.279056, 27.223017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013777, 13.113960, 27.267876>,  <14.294309, 12.838802, 27.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013777, 13.113960, 27.267876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047998, 0.216041, 0.975204,
		0.711219, 0.692911, -0.118498,
		-0.701330, 0.687896, -0.186911,
		13.803378, 13.320329, 27.211802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396626, 13.398170, 27.853546>,  <14.294309, 12.838802, 27.342640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396626, 13.398170, 27.853546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.021534, 13.424018, 27.717028>,  <13.796478, 13.439527, 27.635117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.021534, 13.424018, 27.717028>,  <14.396626, 13.398170, 27.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.021534, 13.424018, 27.717028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302957, 0.328519, 0.894591,
		0.169931, 0.942284, -0.288485,
		-0.937732, 0.064620, -0.341297,
		13.740214, 13.443404, 27.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
