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
	<3.391012, 1.682645, 3.678546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196106, 1.705643, 4.027090>,  <3.079162, 1.719441, 4.236216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196106, 1.705643, 4.027090>,  <3.391012, 1.682645, 3.678546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.196106, 1.705643, 4.027090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506945, 0.793853, -0.335865,
		-0.711041, -0.605386, -0.357670,
		-0.487265, 0.057495, 0.871359,
		3.049926, 1.722891, 4.288497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.700447, 1.673227, 3.451684>,  <3.391012, 1.682645, 3.678546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.700447, 1.673227, 3.451684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.755516, 1.846474, 3.807989>,  <2.788557, 1.950421, 4.021772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.755516, 1.846474, 3.807989>,  <2.700447, 1.673227, 3.451684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.755516, 1.846474, 3.807989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463809, 0.822822, -0.328397,
		-0.875173, -0.367933, 0.314162,
		0.137672, 0.433116, 0.890762,
		2.796818, 1.976408, 4.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736349, 1.202781, 3.036379>,  <2.700447, 1.673227, 3.451684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736349, 1.202781, 3.036379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.386024, 1.354568, 2.917076>,  <2.175830, 1.445641, 2.845494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.386024, 1.354568, 2.917076>,  <2.736349, 1.202781, 3.036379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.386024, 1.354568, 2.917076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205969, -0.265020, -0.941988,
		-0.436500, -0.886435, 0.153948,
		-0.875811, 0.379469, -0.298259,
		2.123281, 1.468409, 2.827598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.448206, 0.741506, 2.624990>,  <2.736349, 1.202781, 3.036379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.448206, 0.741506, 2.624990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.311821, 1.101227, 2.515447>,  <2.229990, 1.317060, 2.449721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.311821, 1.101227, 2.515447>,  <2.448206, 0.741506, 2.624990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.311821, 1.101227, 2.515447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170637, -0.227269, -0.958766,
		-0.924460, -0.373634, -0.075964,
		-0.340964, 0.899303, -0.273857,
		2.209532, 1.371018, 2.433290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.888818, 0.670229, 2.240812>,  <2.448206, 0.741506, 2.624990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.888818, 0.670229, 2.240812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.034851, 1.023010, 2.121565>,  <2.122471, 1.234679, 2.050018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.034851, 1.023010, 2.121565>,  <1.888818, 0.670229, 2.240812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.034851, 1.023010, 2.121565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020797, -0.312413, -0.949719,
		-0.930743, 0.352925, -0.095714,
		0.365082, 0.881954, -0.298116,
		2.144376, 1.287596, 2.032131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.524521, 0.838922, 1.604945>,  <1.888818, 0.670229, 2.240812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.524521, 0.838922, 1.604945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.838615, 1.086472, 1.596945>,  <2.027072, 1.235001, 1.592145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.838615, 1.086472, 1.596945>,  <1.524521, 0.838922, 1.604945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.838615, 1.086472, 1.596945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154238, -0.226777, -0.961656,
		-0.599679, 0.752043, -0.273527,
		0.785236, 0.618873, -0.020000,
		2.074186, 1.272133, 1.590945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.527739, 1.062546, 0.931195>,  <1.524521, 0.838922, 1.604945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.527739, 1.062546, 0.931195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.906662, 1.128181, 1.041238>,  <2.134016, 1.167563, 1.107264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.906662, 1.128181, 1.041238>,  <1.527739, 1.062546, 0.931195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.906662, 1.128181, 1.041238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315719, -0.333129, -0.888452,
		-0.054139, 0.928493, -0.367382,
		0.947307, 0.164090, 0.275108,
		2.190854, 1.177408, 1.123770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.853536, 1.351972, 0.340409>,  <1.527739, 1.062546, 0.931195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.853536, 1.351972, 0.340409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139526, 1.192886, 0.570412>,  <2.311121, 1.097435, 0.708414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139526, 1.192886, 0.570412>,  <1.853536, 1.351972, 0.340409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.139526, 1.192886, 0.570412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362383, -0.492527, -0.791262,
		0.597903, 0.774106, -0.208020,
		0.714975, -0.397715, 0.575007,
		2.354019, 1.073572, 0.742914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.974198, -1.092591, 0.487379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.685066, -1.227501, 0.728630>,  <2.511587, -1.308447, 0.873381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.685066, -1.227501, 0.728630>,  <2.974198, -1.092591, 0.487379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.685066, -1.227501, 0.728630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476705, 0.388487, 0.788562,
		-0.500269, 0.857510, -0.120030,
		-0.722830, -0.337275, 0.603127,
		2.468217, -1.328683, 0.909568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.684622, -0.518040, 0.868609>,  <2.974198, -1.092591, 0.487379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.684622, -0.518040, 0.868609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.681747, -0.870102, 1.058462>,  <2.680023, -1.081339, 1.172374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.681747, -0.870102, 1.058462>,  <2.684622, -0.518040, 0.868609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.681747, -0.870102, 1.058462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497102, 0.408698, 0.765412,
		-0.867662, 0.241441, 0.434590,
		-0.007186, -0.880155, 0.474633,
		2.679592, -1.134148, 1.200852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024043, 0.080648, 0.995581>,  <2.684622, -0.518040, 0.868609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024043, 0.080648, 0.995581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.004349, 0.429039, 0.800040>,  <2.992532, 0.638073, 0.682716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.004349, 0.429039, 0.800040>,  <3.024043, 0.080648, 0.995581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.004349, 0.429039, 0.800040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194163, 0.471761, 0.860083,
		0.979733, 0.137263, 0.145885,
		-0.049235, 0.870977, -0.488851,
		2.989578, 0.690332, 0.653385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.393683, 0.622246, 1.377342>,  <3.024043, 0.080648, 0.995581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.393683, 0.622246, 1.377342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.081978, 0.804466, 1.205193>,  <2.894955, 0.913799, 1.101903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.081978, 0.804466, 1.205193>,  <3.393683, 0.622246, 1.377342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.081978, 0.804466, 1.205193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188421, 0.484651, 0.854173,
		0.597701, 0.746717, -0.291835,
		-0.779263, 0.455552, -0.430374,
		2.848199, 0.941132, 1.076081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.375268, 1.300892, 1.590046>,  <3.393683, 0.622246, 1.377342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.375268, 1.300892, 1.590046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998428, 1.259781, 1.462368>,  <2.772325, 1.235114, 1.385760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998428, 1.259781, 1.462368>,  <3.375268, 1.300892, 1.590046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.998428, 1.259781, 1.462368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320422, 0.556614, 0.766493,
		0.098891, 0.824390, -0.557317,
		-0.942099, -0.102777, -0.319196,
		2.715799, 1.228948, 1.366609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.055203, 2.045369, 1.543285>,  <3.375268, 1.300892, 1.590046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.055203, 2.045369, 1.543285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768204, 1.771538, 1.594739>,  <2.596004, 1.607239, 1.625611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768204, 1.771538, 1.594739>,  <3.055203, 2.045369, 1.543285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.768204, 1.771538, 1.594739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374699, 0.535000, 0.757216,
		-0.587193, 0.495103, -0.640373,
		-0.717499, -0.684579, 0.128634,
		2.552954, 1.566164, 1.633329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.520208, 2.488267, 1.869007>,  <3.055203, 2.045369, 1.543285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.520208, 2.488267, 1.869007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.410553, 2.104912, 1.900860>,  <2.344760, 1.874899, 1.919972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.410553, 2.104912, 1.900860>,  <2.520208, 2.488267, 1.869007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.410553, 2.104912, 1.900860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416867, 0.193044, 0.888232,
		-0.866643, 0.210301, -0.452441,
		-0.274137, -0.958388, 0.079633,
		2.328312, 1.817395, 1.924750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836901, 2.536348, 2.070818>,  <2.520208, 2.488267, 1.869007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836901, 2.536348, 2.070818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974396, 2.179665, 2.188599>,  <2.056893, 1.965655, 2.259267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974396, 2.179665, 2.188599>,  <1.836901, 2.536348, 2.070818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974396, 2.179665, 2.188599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466671, 0.109892, 0.877577,
		-0.814901, -0.439068, -0.378360,
		0.343737, -0.891708, 0.294452,
		2.077517, 1.912152, 2.276935>
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
