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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<47.221786, 40.434258, 44.974064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300552, 40.630257, 45.313740>,  <47.347813, 40.747856, 45.517548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300552, 40.630257, 45.313740>,  <47.221786, 40.434258, 44.974064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300552, 40.630257, 45.313740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758152, -0.473080, 0.448776,
		0.621636, -0.732185, 0.278340,
		0.196910, 0.490000, 0.849192,
		47.359627, 40.777256, 45.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135502, 39.992161, 45.466030>,  <47.221786, 40.434258, 44.974064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135502, 39.992161, 45.466030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142891, 40.333656, 45.674183>,  <47.147324, 40.538551, 45.799072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142891, 40.333656, 45.674183>,  <47.135502, 39.992161, 45.466030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142891, 40.333656, 45.674183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670349, -0.375580, 0.639978,
		0.741816, -0.360658, 0.565362,
		0.018474, 0.853736, 0.520378,
		47.148434, 40.589779, 45.830296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127754, 39.842735, 46.125343>,  <47.135502, 39.992161, 45.466030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127754, 39.842735, 46.125343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952652, 40.202332, 46.130703>,  <46.847591, 40.418091, 46.133919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952652, 40.202332, 46.130703>,  <47.127754, 39.842735, 46.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952652, 40.202332, 46.130703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733954, -0.365920, 0.572201,
		0.519308, 0.240650, 0.820004,
		-0.437757, 0.898993, 0.013399,
		46.821323, 40.472031, 46.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174934, 40.174175, 46.813213>,  <47.127754, 39.842735, 46.125343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174934, 40.174175, 46.813213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854767, 40.335594, 46.635910>,  <46.662666, 40.432446, 46.529526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854767, 40.335594, 46.635910>,  <47.174934, 40.174175, 46.813213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854767, 40.335594, 46.635910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559364, -0.236975, 0.794326,
		0.215509, 0.883737, 0.415410,
		-0.800417, 0.403550, -0.443260,
		46.614643, 40.456657, 46.502934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769810, 40.340248, 47.399612>,  <47.174934, 40.174175, 46.813213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769810, 40.340248, 47.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517250, 40.367340, 47.090614>,  <46.365715, 40.383595, 46.905216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517250, 40.367340, 47.090614>,  <46.769810, 40.340248, 47.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517250, 40.367340, 47.090614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769259, -0.180423, 0.612934,
		-0.097861, 0.981254, 0.166021,
		-0.631398, 0.067731, -0.772495,
		46.327831, 40.387661, 46.858868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266075, 40.690968, 47.598679>,  <46.769810, 40.340248, 47.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266075, 40.690968, 47.598679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099686, 40.533623, 47.270718>,  <45.999851, 40.439217, 47.073940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099686, 40.533623, 47.270718>,  <46.266075, 40.690968, 47.598679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099686, 40.533623, 47.270718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797047, -0.276365, 0.536971,
		-0.437816, 0.876862, -0.198569,
		-0.415972, -0.393364, -0.819898,
		45.974895, 40.415615, 47.024750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604031, 41.015938, 47.577850>,  <46.266075, 40.690968, 47.598679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604031, 41.015938, 47.577850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602036, 40.679207, 47.361958>,  <45.600838, 40.477169, 47.232422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602036, 40.679207, 47.361958>,  <45.604031, 41.015938, 47.577850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602036, 40.679207, 47.361958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802680, -0.318525, 0.504229,
		-0.596389, 0.435743, -0.674128,
		-0.004988, -0.841825, -0.539727,
		45.600540, 40.426659, 47.200039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898102, 40.952377, 47.245441>,  <45.604031, 41.015938, 47.577850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898102, 40.952377, 47.245441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061325, 40.587837, 47.267086>,  <45.159260, 40.369114, 47.280071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061325, 40.587837, 47.267086>,  <44.898102, 40.952377, 47.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061325, 40.587837, 47.267086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670025, -0.258693, 0.695805,
		-0.620124, -0.320185, -0.716190,
		0.408059, -0.911351, 0.054110,
		45.183743, 40.314430, 47.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336884, 40.489849, 47.124390>,  <44.898102, 40.952377, 47.245441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336884, 40.489849, 47.124390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616226, 40.266144, 47.303062>,  <44.783833, 40.131920, 47.410267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616226, 40.266144, 47.303062>,  <44.336884, 40.489849, 47.124390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616226, 40.266144, 47.303062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712655, -0.485329, 0.506535,
		-0.066501, -0.672070, -0.737496,
		0.698355, -0.559266, 0.446679,
		44.825733, 40.098366, 47.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030655, 39.905022, 47.160831>,  <44.336884, 40.489849, 47.124390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030655, 39.905022, 47.160831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313324, 39.843628, 47.437107>,  <44.482925, 39.806789, 47.602875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313324, 39.843628, 47.437107>,  <44.030655, 39.905022, 47.160831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313324, 39.843628, 47.437107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658284, -0.500483, 0.562298,
		0.259373, -0.852032, -0.454717,
		0.706674, -0.153488, 0.690690,
		44.525326, 39.797581, 47.644314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968159, 39.244946, 47.444374>,  <44.030655, 39.905022, 47.160831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968159, 39.244946, 47.444374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195930, 39.393829, 47.737553>,  <44.332596, 39.483158, 47.913460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195930, 39.393829, 47.737553>,  <43.968159, 39.244946, 47.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195930, 39.393829, 47.737553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518645, -0.529084, 0.671623,
		0.637772, -0.762583, -0.108235,
		0.569433, 0.372207, 0.732945,
		44.366760, 39.505493, 47.957436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091396, 38.636429, 47.887489>,  <43.968159, 39.244946, 47.444374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091396, 38.636429, 47.887489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158787, 38.965599, 48.104527>,  <44.199219, 39.163101, 48.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158787, 38.965599, 48.104527>,  <44.091396, 38.636429, 47.887489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158787, 38.965599, 48.104527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328071, -0.472265, 0.818129,
		0.929508, -0.315842, 0.190414,
		0.168474, 0.822927, 0.542593,
		44.209328, 39.212479, 48.267303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453831, 38.378990, 48.455910>,  <44.091396, 38.636429, 47.887489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453831, 38.378990, 48.455910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301479, 38.724426, 48.588058>,  <44.210068, 38.931686, 48.667347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301479, 38.724426, 48.588058>,  <44.453831, 38.378990, 48.455910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301479, 38.724426, 48.588058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418586, -0.479639, 0.771189,
		0.824449, 0.155442, 0.544171,
		-0.380881, 0.863588, 0.330372,
		44.187214, 38.983501, 48.687168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470291, 38.372166, 49.247494>,  <44.453831, 38.378990, 48.455910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470291, 38.372166, 49.247494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209904, 38.664368, 49.164928>,  <44.053673, 38.839687, 49.115391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209904, 38.664368, 49.164928>,  <44.470291, 38.372166, 49.247494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209904, 38.664368, 49.164928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442100, -0.143798, 0.885364,
		0.617079, 0.667599, 0.416563,
		-0.650970, 0.730502, -0.206410,
		44.014614, 38.883518, 49.103004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397961, 38.809929, 49.878822>,  <44.470291, 38.372166, 49.247494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397961, 38.809929, 49.878822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078262, 38.888596, 49.651657>,  <43.886444, 38.935795, 49.515358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078262, 38.888596, 49.651657>,  <44.397961, 38.809929, 49.878822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078262, 38.888596, 49.651657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594417, -0.119191, 0.795275,
		0.088712, 0.973199, 0.212164,
		-0.799249, 0.196664, -0.567912,
		43.838486, 38.947594, 49.481285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065601, 39.318260, 50.206398>,  <44.397961, 38.809929, 49.878822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065601, 39.318260, 50.206398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785381, 39.134285, 49.988155>,  <43.617249, 39.023899, 49.857212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785381, 39.134285, 49.988155>,  <44.065601, 39.318260, 50.206398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785381, 39.134285, 49.988155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603018, -0.027266, 0.797261,
		-0.381566, 0.887533, -0.258249,
		-0.700554, -0.459937, -0.545602,
		43.575214, 38.996304, 49.824474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411835, 39.599865, 50.407803>,  <44.065601, 39.318260, 50.206398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411835, 39.599865, 50.407803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339558, 39.240570, 50.247540>,  <43.296192, 39.024994, 50.151382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339558, 39.240570, 50.247540>,  <43.411835, 39.599865, 50.407803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339558, 39.240570, 50.247540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686226, -0.176688, 0.705603,
		-0.704588, 0.402440, -0.584464,
		-0.180695, -0.898233, -0.400657,
		43.285351, 38.971100, 50.127342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761223, 39.536179, 50.580235>,  <43.411835, 39.599865, 50.407803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761223, 39.536179, 50.580235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841751, 39.164139, 50.457352>,  <42.890068, 38.940914, 50.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841751, 39.164139, 50.457352>,  <42.761223, 39.536179, 50.580235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841751, 39.164139, 50.457352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663076, -0.360251, 0.656163,
		-0.720972, 0.071603, -0.689255,
		0.201322, -0.930104, -0.307209,
		42.902149, 38.885109, 50.365189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140846, 39.147762, 50.566113>,  <42.761223, 39.536179, 50.580235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140846, 39.147762, 50.566113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391953, 38.837479, 50.591957>,  <42.542618, 38.651306, 50.607464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391953, 38.837479, 50.591957>,  <42.140846, 39.147762, 50.566113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391953, 38.837479, 50.591957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666798, -0.493082, 0.558794,
		-0.401603, -0.393880, -0.826786,
		0.627771, -0.775712, 0.064615,
		42.580284, 38.604763, 50.611340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742630, 38.613125, 50.335854>,  <42.140846, 39.147762, 50.566113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742630, 38.613125, 50.335854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045982, 38.487778, 50.564472>,  <42.227993, 38.412567, 50.701641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045982, 38.487778, 50.564472>,  <41.742630, 38.613125, 50.335854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045982, 38.487778, 50.564472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651070, -0.406088, 0.641249,
		0.031149, -0.858424, -0.511995,
		0.758379, -0.313370, 0.571543,
		42.273495, 38.393768, 50.735935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362537, 38.119095, 50.658707>,  <41.742630, 38.613125, 50.335854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362537, 38.119095, 50.658707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720703, 38.117920, 50.836796>,  <41.935604, 38.117214, 50.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720703, 38.117920, 50.836796>,  <41.362537, 38.119095, 50.658707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720703, 38.117920, 50.836796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373253, -0.550086, 0.747052,
		0.242717, -0.835103, -0.493652,
		0.895417, -0.002935, 0.445220,
		41.989326, 38.117039, 50.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508621, 37.409790, 50.972942>,  <41.362537, 38.119095, 50.658707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508621, 37.409790, 50.972942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735428, 37.670074, 51.174957>,  <41.871513, 37.826244, 51.296165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735428, 37.670074, 51.174957>,  <41.508621, 37.409790, 50.972942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735428, 37.670074, 51.174957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397196, -0.321135, 0.859713,
		0.721611, -0.688073, 0.076371,
		0.567020, 0.650713, 0.505035,
		41.905533, 37.865288, 51.326469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699818, 36.983059, 51.464745>,  <41.508621, 37.409790, 50.972942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699818, 36.983059, 51.464745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727531, 37.364616, 51.581566>,  <41.744160, 37.593552, 51.651657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727531, 37.364616, 51.581566>,  <41.699818, 36.983059, 51.464745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727531, 37.364616, 51.581566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486693, -0.223232, 0.844569,
		0.870821, -0.200653, 0.448786,
		0.069282, 0.953890, 0.292052,
		41.748318, 37.650784, 51.669182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021187, 36.985615, 52.128822>,  <41.699818, 36.983059, 51.464745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021187, 36.985615, 52.128822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814491, 37.326492, 52.095963>,  <41.690475, 37.531017, 52.076244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814491, 37.326492, 52.095963>,  <42.021187, 36.985615, 52.128822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814491, 37.326492, 52.095963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557076, -0.261813, 0.788112,
		0.650115, 0.453013, 0.610025,
		-0.516738, 0.852193, -0.082154,
		41.659470, 37.582150, 52.071316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120956, 37.238708, 52.797787>,  <42.021187, 36.985615, 52.128822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120956, 37.238708, 52.797787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800880, 37.427780, 52.650124>,  <41.608833, 37.541222, 52.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800880, 37.427780, 52.650124>,  <42.120956, 37.238708, 52.797787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800880, 37.427780, 52.650124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503438, -0.194851, 0.841774,
		0.325956, 0.859425, 0.393880,
		-0.800189, 0.472676, -0.369154,
		41.560825, 37.569584, 52.539379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812401, 37.588001, 53.360413>,  <42.120956, 37.238708, 52.797787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812401, 37.588001, 53.360413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518639, 37.592636, 53.088970>,  <41.342381, 37.595417, 52.926105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518639, 37.592636, 53.088970>,  <41.812401, 37.588001, 53.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518639, 37.592636, 53.088970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677676, -0.067635, 0.732244,
		-0.037414, 0.997643, 0.057523,
		-0.734408, 0.011586, -0.678609,
		41.298317, 37.596111, 52.885387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371937, 38.098549, 53.591179>,  <41.812401, 37.588001, 53.360413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371937, 38.098549, 53.591179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147083, 37.886635, 53.337143>,  <41.012173, 37.759487, 53.184723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147083, 37.886635, 53.337143>,  <41.371937, 38.098549, 53.591179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147083, 37.886635, 53.337143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608020, -0.255822, 0.751577,
		-0.560645, 0.808629, -0.178316,
		-0.562130, -0.529787, -0.635087,
		40.978443, 37.727699, 53.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578457, 38.342087, 53.616360>,  <41.371937, 38.098549, 53.591179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578457, 38.342087, 53.616360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558060, 37.964417, 53.486168>,  <40.545822, 37.737816, 53.408051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558060, 37.964417, 53.486168>,  <40.578457, 38.342087, 53.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558060, 37.964417, 53.486168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786490, -0.162894, 0.595735,
		-0.615495, 0.286365, -0.734276,
		-0.050989, -0.944172, -0.325483,
		40.542763, 37.681164, 53.388523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860413, 38.218468, 53.565125>,  <40.578457, 38.342087, 53.616360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860413, 38.218468, 53.565125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013184, 37.848831, 53.559792>,  <40.104847, 37.627048, 53.556591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013184, 37.848831, 53.559792>,  <39.860413, 38.218468, 53.565125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013184, 37.848831, 53.559792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788687, -0.333421, 0.516530,
		-0.481769, -0.186760, -0.856165,
		0.381930, -0.924095, -0.013337,
		40.127762, 37.571602, 53.555790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295490, 37.826496, 53.472691>,  <39.860413, 38.218468, 53.565125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295490, 37.826496, 53.472691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602974, 37.610947, 53.610504>,  <39.787464, 37.481617, 53.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602974, 37.610947, 53.610504>,  <39.295490, 37.826496, 53.472691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602974, 37.610947, 53.610504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607334, -0.446049, 0.657409,
		-0.200580, -0.714603, -0.670157,
		0.768709, -0.538872, 0.344534,
		39.833588, 37.449284, 53.713863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048206, 37.104134, 53.465141>,  <39.295490, 37.826496, 53.472691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048206, 37.104134, 53.465141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342072, 37.135460, 53.734703>,  <39.518391, 37.154255, 53.896439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342072, 37.135460, 53.734703>,  <39.048206, 37.104134, 53.465141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342072, 37.135460, 53.734703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600556, -0.387018, 0.699678,
		0.315605, -0.918741, -0.237296,
		0.734661, 0.078312, 0.673900,
		39.562469, 37.158955, 53.936874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976894, 36.497959, 53.924767>,  <39.048206, 37.104134, 53.465141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976894, 36.497959, 53.924767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204487, 36.741234, 54.146168>,  <39.341042, 36.887199, 54.279011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204487, 36.741234, 54.146168>,  <38.976894, 36.497959, 53.924767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204487, 36.741234, 54.146168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508223, -0.269095, 0.818106,
		0.646509, -0.746790, 0.155986,
		0.568978, 0.608189, 0.553508,
		39.375179, 36.923691, 54.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286518, 36.073120, 54.480648>,  <38.976894, 36.497959, 53.924767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286518, 36.073120, 54.480648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270615, 36.450439, 54.612476>,  <39.261070, 36.676830, 54.691574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270615, 36.450439, 54.612476>,  <39.286518, 36.073120, 54.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270615, 36.450439, 54.612476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452805, -0.311028, 0.835601,
		0.890722, -0.116003, 0.439496,
		-0.039764, 0.943295, 0.329566,
		39.258686, 36.733429, 54.711346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186905, 35.945347, 55.186890>,  <39.286518, 36.073120, 54.480648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186905, 35.945347, 55.186890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131348, 36.340721, 55.162548>,  <39.098015, 36.577946, 55.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131348, 36.340721, 55.162548>,  <39.186905, 35.945347, 55.186890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131348, 36.340721, 55.162548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550086, -0.025906, 0.834706,
		0.823477, 0.149408, 0.547323,
		-0.138891, 0.988436, -0.060854,
		39.089680, 36.637253, 55.144291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323120, 36.201012, 55.878040>,  <39.186905, 35.945347, 55.186890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323120, 36.201012, 55.878040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097488, 36.471504, 55.688507>,  <38.962109, 36.633801, 55.574787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097488, 36.471504, 55.688507>,  <39.323120, 36.201012, 55.878040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097488, 36.471504, 55.688507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540965, 0.130889, 0.830798,
		0.623833, 0.724966, 0.291987,
		-0.564082, 0.676234, -0.473834,
		38.928265, 36.674374, 55.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312580, 36.877422, 56.260056>,  <39.323120, 36.201012, 55.878040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312580, 36.877422, 56.260056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975784, 36.857971, 56.045139>,  <38.773705, 36.846302, 55.916191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975784, 36.857971, 56.045139>,  <39.312580, 36.877422, 56.260056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975784, 36.857971, 56.045139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535301, 0.199127, 0.820854,
		0.067074, 0.978767, -0.193693,
		-0.841994, -0.048626, -0.537291,
		38.723186, 36.843384, 55.883953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910614, 37.424725, 56.484093>,  <39.312580, 36.877422, 56.260056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910614, 37.424725, 56.484093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653252, 37.152672, 56.343552>,  <38.498837, 36.989441, 56.259228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653252, 37.152672, 56.343552>,  <38.910614, 37.424725, 56.484093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653252, 37.152672, 56.343552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633547, 0.215447, 0.743102,
		-0.429710, 0.700714, -0.569516,
		-0.643402, -0.680134, -0.351355,
		38.460232, 36.948631, 56.238144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276356, 37.858227, 56.486237>,  <38.910614, 37.424725, 56.484093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276356, 37.858227, 56.486237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165005, 37.475197, 56.456413>,  <38.098194, 37.245380, 56.438519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165005, 37.475197, 56.456413>,  <38.276356, 37.858227, 56.486237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165005, 37.475197, 56.456413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517900, 0.084280, 0.851279,
		-0.808878, 0.275591, -0.519389,
		-0.278379, -0.957573, -0.074557,
		38.081490, 37.187923, 56.434048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703094, 37.887169, 56.747108>,  <38.276356, 37.858227, 56.486237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703094, 37.887169, 56.747108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738037, 37.491066, 56.790485>,  <37.759003, 37.253403, 56.816513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738037, 37.491066, 56.790485>,  <37.703094, 37.887169, 56.747108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738037, 37.491066, 56.790485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606095, 0.033559, 0.794684,
		-0.790580, -0.135150, -0.597258,
		0.087358, -0.990257, 0.108445,
		37.764244, 37.193989, 56.823017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045773, 37.551369, 56.948788>,  <37.703094, 37.887169, 56.747108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045773, 37.551369, 56.948788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301247, 37.274277, 57.082779>,  <37.454529, 37.108021, 57.163174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301247, 37.274277, 57.082779>,  <37.045773, 37.551369, 56.948788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301247, 37.274277, 57.082779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487960, -0.028015, 0.872416,
		-0.594963, -0.720654, -0.355917,
		0.638681, -0.692729, 0.334983,
		37.492851, 37.066460, 57.183273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648022, 37.124901, 57.277039>,  <37.045773, 37.551369, 56.948788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648022, 37.124901, 57.277039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004082, 37.016632, 57.423668>,  <37.217716, 36.951672, 57.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004082, 37.016632, 57.423668>,  <36.648022, 37.124901, 57.277039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004082, 37.016632, 57.423668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391462, -0.042476, 0.919213,
		-0.233230, -0.961735, -0.143766,
		0.890147, -0.270667, 0.366576,
		37.271126, 36.935432, 57.533642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486172, 36.512806, 57.650986>,  <36.648022, 37.124901, 57.277039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486172, 36.512806, 57.650986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844498, 36.602837, 57.804268>,  <37.059494, 36.656857, 57.896236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844498, 36.602837, 57.804268>,  <36.486172, 36.512806, 57.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844498, 36.602837, 57.804268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347269, -0.183567, 0.919623,
		0.277332, -0.956892, -0.086280,
		0.895819, 0.225078, 0.383208,
		37.113243, 36.670361, 57.919231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845238, 35.852207, 57.948414>,  <36.486172, 36.512806, 57.650986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845238, 35.852207, 57.948414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966949, 36.194878, 58.115036>,  <37.039974, 36.400482, 58.215008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966949, 36.194878, 58.115036>,  <36.845238, 35.852207, 57.948414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966949, 36.194878, 58.115036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151799, -0.388093, 0.909033,
		0.940411, -0.339830, 0.011955,
		0.304277, 0.856679, 0.416553,
		37.058231, 36.451881, 58.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402584, 35.776684, 58.474754>,  <36.845238, 35.852207, 57.948414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402584, 35.776684, 58.474754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180618, 36.094200, 58.574326>,  <37.047440, 36.284710, 58.634068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180618, 36.094200, 58.574326>,  <37.402584, 35.776684, 58.474754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180618, 36.094200, 58.574326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014425, -0.289995, 0.956919,
		0.831783, 0.534598, 0.149472,
		-0.554913, 0.793794, 0.248924,
		37.014145, 36.332336, 58.649002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289707, 35.627628, 59.145306>,  <37.402584, 35.776684, 58.474754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289707, 35.627628, 59.145306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073318, 35.964043, 59.144470>,  <36.943485, 36.165890, 59.143967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073318, 35.964043, 59.144470>,  <37.289707, 35.627628, 59.145306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073318, 35.964043, 59.144470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379184, -0.241679, 0.893202,
		0.750709, 0.483995, 0.449650,
		-0.540976, 0.841035, -0.002093,
		36.911026, 36.216354, 59.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327217, 36.100616, 59.834576>,  <37.289707, 35.627628, 59.145306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327217, 36.100616, 59.834576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973885, 36.063789, 59.650726>,  <36.761887, 36.041691, 59.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973885, 36.063789, 59.650726>,  <37.327217, 36.100616, 59.834576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973885, 36.063789, 59.650726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411788, -0.316074, 0.854710,
		-0.223969, 0.944257, 0.241283,
		-0.883328, -0.092071, -0.459624,
		36.708885, 36.036167, 59.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682087, 36.572994, 59.930737>,  <37.327217, 36.100616, 59.834576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682087, 36.572994, 59.930737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532272, 36.210670, 59.851509>,  <36.442383, 35.993275, 59.803974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532272, 36.210670, 59.851509>,  <36.682087, 36.572994, 59.930737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532272, 36.210670, 59.851509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624246, 0.088383, 0.776212,
		-0.685595, 0.414361, -0.598552,
		-0.374534, -0.905810, -0.198068,
		36.419910, 35.938927, 59.792088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040970, 37.127846, 60.322475>,  <36.682087, 36.572994, 59.930737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040970, 37.127846, 60.322475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109886, 37.412376, 60.595043>,  <37.151237, 37.583096, 60.758583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109886, 37.412376, 60.595043>,  <37.040970, 37.127846, 60.322475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109886, 37.412376, 60.595043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602581, 0.471123, -0.644158,
		-0.779238, 0.521592, -0.347461,
		0.172291, 0.711326, 0.681418,
		37.161575, 37.625774, 60.799469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947849, 37.839775, 60.121616>,  <37.040970, 37.127846, 60.322475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947849, 37.839775, 60.121616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257351, 37.779411, 60.367714>,  <37.443050, 37.743191, 60.515373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257351, 37.779411, 60.367714>,  <36.947849, 37.839775, 60.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257351, 37.779411, 60.367714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633381, 0.166704, -0.755671,
		0.011477, 0.974390, 0.224573,
		0.773755, -0.150913, 0.615246,
		37.489479, 37.734138, 60.552288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393795, 38.388855, 59.965626>,  <36.947849, 37.839775, 60.121616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393795, 38.388855, 59.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609703, 38.100372, 60.139301>,  <37.739246, 37.927284, 60.243507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609703, 38.100372, 60.139301>,  <37.393795, 38.388855, 59.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609703, 38.100372, 60.139301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742569, 0.164959, -0.649137,
		0.396537, 0.672796, 0.624583,
		0.539768, -0.721203, 0.434185,
		37.771633, 37.884010, 60.269558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087864, 38.680782, 60.006828>,  <37.393795, 38.388855, 59.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087864, 38.680782, 60.006828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127510, 38.282898, 59.995995>,  <38.151299, 38.044167, 59.989494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127510, 38.282898, 59.995995>,  <38.087864, 38.680782, 60.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127510, 38.282898, 59.995995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808063, 0.096342, -0.581164,
		0.580698, 0.035713, 0.813335,
		0.099113, -0.994707, -0.027087,
		38.157246, 37.984486, 59.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733967, 38.400909, 60.271927>,  <38.087864, 38.680782, 60.006828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733967, 38.400909, 60.271927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598080, 38.133812, 60.006989>,  <38.516548, 37.973553, 59.848026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598080, 38.133812, 60.006989>,  <38.733967, 38.400909, 60.271927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598080, 38.133812, 60.006989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892322, -0.006270, -0.451355,
		0.297238, -0.744362, 0.597975,
		-0.339721, -0.667747, -0.662347,
		38.496162, 37.933487, 59.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309544, 37.945789, 60.201153>,  <38.733967, 38.400909, 60.271927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309544, 37.945789, 60.201153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100086, 37.908051, 59.862473>,  <38.974411, 37.885406, 59.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100086, 37.908051, 59.862473>,  <39.309544, 37.945789, 60.201153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100086, 37.908051, 59.862473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844427, 0.074198, -0.530507,
		0.112875, -0.992771, 0.040815,
		-0.523644, -0.094347, -0.846697,
		38.942993, 37.879745, 59.608463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650982, 37.478596, 59.752815>,  <39.309544, 37.945789, 60.201153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650982, 37.478596, 59.752815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431511, 37.706467, 59.508057>,  <39.299828, 37.843189, 59.361202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431511, 37.706467, 59.508057>,  <39.650982, 37.478596, 59.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431511, 37.706467, 59.508057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777166, 0.077767, -0.624472,
		-0.308160, -0.818183, -0.485400,
		-0.548681, 0.569674, -0.611899,
		39.266907, 37.877369, 59.324486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859451, 37.278149, 59.096760>,  <39.650982, 37.478596, 59.752815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859451, 37.278149, 59.096760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696049, 37.636230, 59.025520>,  <39.598007, 37.851082, 58.982777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696049, 37.636230, 59.025520>,  <39.859451, 37.278149, 59.096760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696049, 37.636230, 59.025520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727833, 0.201738, -0.655409,
		-0.550797, -0.397371, -0.733975,
		-0.408511, 0.895208, -0.178103,
		39.573494, 37.904793, 58.972088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877144, 37.315300, 58.374420>,  <39.859451, 37.278149, 59.096760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877144, 37.315300, 58.374420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800369, 37.694908, 58.474438>,  <39.754307, 37.922672, 58.534451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800369, 37.694908, 58.474438>,  <39.877144, 37.315300, 58.374420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800369, 37.694908, 58.474438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514127, 0.314255, -0.798071,
		-0.835963, -0.024622, -0.548233,
		-0.191935, 0.949019, 0.250047,
		39.742790, 37.979614, 58.549450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871277, 37.626972, 57.823689>,  <39.877144, 37.315300, 58.374420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871277, 37.626972, 57.823689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905998, 37.956764, 58.047367>,  <39.926830, 38.154640, 58.181572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905998, 37.956764, 58.047367>,  <39.871277, 37.626972, 57.823689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905998, 37.956764, 58.047367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533539, 0.435551, -0.725004,
		-0.841309, 0.361286, -0.402084,
		0.086806, 0.824480, 0.559193,
		39.932041, 38.204109, 58.215126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744865, 38.308426, 57.440742>,  <39.871277, 37.626972, 57.823689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744865, 38.308426, 57.440742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990944, 38.402176, 57.741837>,  <40.138592, 38.458424, 57.922493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990944, 38.402176, 57.741837>,  <39.744865, 38.308426, 57.440742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990944, 38.402176, 57.741837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699771, 0.277433, -0.658295,
		-0.363118, 0.931719, 0.006669,
		0.615196, 0.234371, 0.752731,
		40.175503, 38.472488, 57.967655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215191, 38.787514, 57.126221>,  <39.744865, 38.308426, 57.440742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215191, 38.787514, 57.126221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389885, 38.705956, 57.476692>,  <40.494701, 38.657021, 57.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389885, 38.705956, 57.476692>,  <40.215191, 38.787514, 57.126221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389885, 38.705956, 57.476692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883682, 0.279594, -0.375410,
		-0.168431, 0.938219, 0.302284,
		0.436734, -0.203892, 0.876180,
		40.520905, 38.644787, 57.739548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503929, 39.433254, 57.399414>,  <40.215191, 38.787514, 57.126221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503929, 39.433254, 57.399414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702187, 39.119370, 57.548309>,  <40.821140, 38.931038, 57.637646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702187, 39.119370, 57.548309>,  <40.503929, 39.433254, 57.399414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702187, 39.119370, 57.548309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842956, 0.331398, -0.423794,
		0.209200, 0.523828, 0.825736,
		0.495642, -0.784716, 0.372236,
		40.850880, 38.883953, 57.659981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997677, 39.662094, 57.759098>,  <40.503929, 39.433254, 57.399414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997677, 39.662094, 57.759098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126575, 39.286827, 57.708496>,  <41.203915, 39.061668, 57.678135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126575, 39.286827, 57.708496>,  <40.997677, 39.662094, 57.759098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126575, 39.286827, 57.708496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798680, 0.341176, -0.495691,
		0.508201, 0.058695, 0.859236,
		0.322246, -0.938165, -0.126508,
		41.223248, 39.005379, 57.670544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685123, 39.635399, 57.913158>,  <40.997677, 39.662094, 57.759098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685123, 39.635399, 57.913158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639942, 39.320930, 57.670120>,  <41.612835, 39.132248, 57.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639942, 39.320930, 57.670120>,  <41.685123, 39.635399, 57.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639942, 39.320930, 57.670120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701457, 0.370000, -0.609145,
		0.703705, -0.495006, 0.509676,
		-0.112950, -0.786174, -0.607596,
		41.606056, 39.085079, 57.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304470, 39.640472, 57.776550>,  <41.685123, 39.635399, 57.913158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304470, 39.640472, 57.776550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100655, 39.430634, 57.503735>,  <41.978367, 39.304729, 57.340046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100655, 39.430634, 57.503735>,  <42.304470, 39.640472, 57.776550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100655, 39.430634, 57.503735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656634, 0.275182, -0.702215,
		0.556062, -0.805652, 0.204252,
		-0.509535, -0.524594, -0.682037,
		41.947792, 39.273254, 57.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776562, 39.218151, 57.431133>,  <42.304470, 39.640472, 57.776550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776562, 39.218151, 57.431133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461037, 39.233803, 57.185776>,  <42.271721, 39.243195, 57.038563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461037, 39.233803, 57.185776>,  <42.776562, 39.218151, 57.431133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461037, 39.233803, 57.185776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614358, 0.080262, -0.784935,
		0.018515, -0.996006, -0.087354,
		-0.788810, 0.039134, -0.613390,
		42.224392, 39.245541, 57.001759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039574, 38.946045, 56.692871>,  <42.776562, 39.218151, 57.431133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039574, 38.946045, 56.692871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717072, 39.163025, 56.598469>,  <42.523571, 39.293213, 56.541828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717072, 39.163025, 56.598469>,  <43.039574, 38.946045, 56.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717072, 39.163025, 56.598469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456648, 0.317095, -0.831218,
		-0.376055, -0.777948, -0.503368,
		-0.806260, 0.542446, -0.236003,
		42.475193, 39.325760, 56.527668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876534, 38.705215, 56.125175>,  <43.039574, 38.946045, 56.692871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876534, 38.705215, 56.125175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689423, 39.058441, 56.110302>,  <42.577156, 39.270378, 56.101379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689423, 39.058441, 56.110302>,  <42.876534, 38.705215, 56.125175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689423, 39.058441, 56.110302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351308, 0.147166, -0.924621,
		-0.811029, -0.445578, -0.379069,
		-0.467777, 0.883064, -0.037179,
		42.549091, 39.323360, 56.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476639, 38.621391, 55.632896>,  <42.876534, 38.705215, 56.125175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476639, 38.621391, 55.632896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522861, 39.014343, 55.691647>,  <42.550594, 39.250114, 55.726894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522861, 39.014343, 55.691647>,  <42.476639, 38.621391, 55.632896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522861, 39.014343, 55.691647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349124, 0.098260, -0.931911,
		-0.929924, 0.158965, -0.331618,
		0.115556, 0.982382, 0.146873,
		42.557529, 39.309059, 55.735710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243980, 39.037701, 55.015442>,  <42.476639, 38.621391, 55.632896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243980, 39.037701, 55.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458767, 39.311691, 55.212406>,  <42.587639, 39.476086, 55.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458767, 39.311691, 55.212406>,  <42.243980, 39.037701, 55.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458767, 39.311691, 55.212406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454805, 0.256546, -0.852840,
		-0.710505, 0.681898, -0.173776,
		0.536969, 0.684981, 0.492408,
		42.619858, 39.517185, 55.360130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254528, 39.697342, 54.663952>,  <42.243980, 39.037701, 55.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254528, 39.697342, 54.663952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590549, 39.649353, 54.875576>,  <42.792164, 39.620560, 55.002552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590549, 39.649353, 54.875576>,  <42.254528, 39.697342, 54.663952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590549, 39.649353, 54.875576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542295, 0.212358, -0.812908,
		-0.014821, 0.969799, 0.243456,
		0.840057, -0.119976, 0.529065,
		42.842567, 39.613361, 55.034294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701450, 40.120140, 54.183788>,  <42.254528, 39.697342, 54.663952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701450, 40.120140, 54.183788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953583, 39.949593, 54.443295>,  <43.104862, 39.847263, 54.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953583, 39.949593, 54.443295>,  <42.701450, 40.120140, 54.183788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953583, 39.949593, 54.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719452, 0.006856, -0.694509,
		0.291668, 0.904524, 0.311073,
		0.630332, -0.426368, 0.648762,
		43.142681, 39.821682, 54.637924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390064, 40.418858, 54.026314>,  <42.701450, 40.120140, 54.183788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390064, 40.418858, 54.026314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439381, 40.078194, 54.230068>,  <43.468971, 39.873795, 54.352322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439381, 40.078194, 54.230068>,  <43.390064, 40.418858, 54.026314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439381, 40.078194, 54.230068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730206, -0.269742, -0.627724,
		0.672010, 0.449355, 0.588628,
		0.123293, -0.851657, 0.509391,
		43.476368, 39.822697, 54.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035202, 40.496235, 54.245918>,  <43.390064, 40.418858, 54.026314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035202, 40.496235, 54.245918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971172, 40.101395, 54.245193>,  <43.932755, 39.864491, 54.244759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971172, 40.101395, 54.245193>,  <44.035202, 40.496235, 54.245918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971172, 40.101395, 54.245193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835315, -0.134484, -0.533069,
		0.525951, -0.086841, 0.846070,
		-0.160075, -0.987103, -0.001808,
		43.923149, 39.805264, 54.244652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722816, 40.231987, 54.389271>,  <44.035202, 40.496235, 54.245918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722816, 40.231987, 54.389271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507347, 39.932480, 54.234779>,  <44.378067, 39.752777, 54.142082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507347, 39.932480, 54.234779>,  <44.722816, 40.231987, 54.389271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507347, 39.932480, 54.234779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725090, -0.178567, -0.665100,
		0.429038, -0.638325, 0.639115,
		-0.538675, -0.748769, -0.386231,
		44.345745, 39.707848, 54.118912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076263, 39.444710, 54.509869>,  <44.722816, 40.231987, 54.389271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076263, 39.444710, 54.509869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832848, 39.472137, 54.193645>,  <44.686798, 39.488594, 54.003910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832848, 39.472137, 54.193645>,  <45.076263, 39.444710, 54.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832848, 39.472137, 54.193645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719643, -0.372095, -0.586225,
		-0.334355, -0.925659, 0.177093,
		-0.608540, 0.068564, -0.790556,
		44.650288, 39.492706, 53.956478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283844, 38.847694, 54.107815>,  <45.076263, 39.444710, 54.509869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283844, 38.847694, 54.107815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075802, 39.092316, 53.869320>,  <44.950977, 39.239086, 53.726223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075802, 39.092316, 53.869320>,  <45.283844, 38.847694, 54.107815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075802, 39.092316, 53.869320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666336, -0.146168, -0.731184,
		-0.534307, -0.777587, -0.331475,
		-0.520108, 0.611550, -0.596233,
		44.919769, 39.275780, 53.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416687, 38.625076, 53.408516>,  <45.283844, 38.847694, 54.107815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416687, 38.625076, 53.408516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219887, 38.961983, 53.320404>,  <45.101807, 39.164127, 53.267536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219887, 38.961983, 53.320404>,  <45.416687, 38.625076, 53.408516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219887, 38.961983, 53.320404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554859, 0.108387, -0.824854,
		-0.670869, -0.528056, -0.520665,
		-0.492002, 0.842264, -0.220283,
		45.072285, 39.214661, 53.254318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126202, 38.538895, 52.672680>,  <45.416687, 38.625076, 53.408516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126202, 38.538895, 52.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172211, 38.924202, 52.769745>,  <45.199818, 39.155388, 52.827984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172211, 38.924202, 52.769745>,  <45.126202, 38.538895, 52.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172211, 38.924202, 52.769745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517356, 0.150448, -0.842442,
		-0.848005, 0.222442, -0.481048,
		0.115022, 0.963268, 0.242663,
		45.206718, 39.213181, 52.842545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951622, 38.982697, 52.061447>,  <45.126202, 38.538895, 52.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951622, 38.982697, 52.061447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159286, 39.236633, 52.290344>,  <45.283886, 39.388996, 52.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159286, 39.236633, 52.290344>,  <44.951622, 38.982697, 52.061447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159286, 39.236633, 52.290344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443116, 0.372595, -0.815366,
		-0.730838, 0.676871, -0.087872,
		0.519157, 0.634838, 0.572239,
		45.315033, 39.427086, 52.462017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927635, 39.630157, 51.752174>,  <44.951622, 38.982697, 52.061447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927635, 39.630157, 51.752174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259895, 39.613464, 51.974266>,  <45.459251, 39.603447, 52.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259895, 39.613464, 51.974266>,  <44.927635, 39.630157, 51.752174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259895, 39.613464, 51.974266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532558, 0.350555, -0.770385,
		-0.162487, 0.935612, 0.313414,
		0.830650, -0.041734, 0.555228,
		45.509090, 39.600945, 52.140835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239574, 40.195206, 51.584846>,  <44.927635, 39.630157, 51.752174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239574, 40.195206, 51.584846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558868, 40.037102, 51.766655>,  <45.750446, 39.942242, 51.875740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558868, 40.037102, 51.766655>,  <45.239574, 40.195206, 51.584846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558868, 40.037102, 51.766655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593214, 0.384950, -0.707044,
		0.104495, 0.834017, 0.541753,
		0.798234, -0.395258, 0.454526,
		45.798340, 39.918526, 51.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675987, 40.679474, 51.641567>,  <45.239574, 40.195206, 51.584846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675987, 40.679474, 51.641567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907402, 40.353470, 51.654537>,  <46.046249, 40.157867, 51.662319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907402, 40.353470, 51.654537>,  <45.675987, 40.679474, 51.641567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907402, 40.353470, 51.654537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597558, 0.396447, -0.696961,
		0.555174, 0.422596, 0.716376,
		0.578538, -0.815010, 0.032429,
		46.080963, 40.108967, 51.664265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346928, 40.922077, 51.442543>,  <45.675987, 40.679474, 51.641567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346928, 40.922077, 51.442543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380768, 40.528107, 51.382195>,  <46.401070, 40.291725, 51.345985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380768, 40.528107, 51.382195>,  <46.346928, 40.922077, 51.442543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380768, 40.528107, 51.382195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665179, 0.168560, -0.727409,
		0.741876, -0.038823, 0.669412,
		0.084596, -0.984927, -0.150875,
		46.406147, 40.232628, 51.336933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055634, 40.816422, 51.451111>,  <46.346928, 40.922077, 51.442543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055634, 40.816422, 51.451111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892319, 40.513451, 51.247303>,  <46.794331, 40.331669, 51.125019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892319, 40.513451, 51.247303>,  <47.055634, 40.816422, 51.451111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892319, 40.513451, 51.247303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626776, 0.173195, -0.759707,
		0.663666, -0.629534, 0.404022,
		-0.408288, -0.757423, -0.509520,
		46.769833, 40.286224, 51.094448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605442, 40.544189, 51.263241>,  <47.055634, 40.816422, 51.451111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605442, 40.544189, 51.263241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327972, 40.397240, 51.015419>,  <47.161491, 40.309071, 50.866726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327972, 40.397240, 51.015419>,  <47.605442, 40.544189, 51.263241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327972, 40.397240, 51.015419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617361, 0.139852, -0.774149,
		0.371050, -0.919498, 0.129792,
		-0.693677, -0.367376, -0.619554,
		47.119869, 40.287025, 50.829552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.027809, 40.060013, 50.774189>,  <47.605442, 40.544189, 51.263241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.027809, 40.060013, 50.774189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665558, 40.127930, 50.618752>,  <47.448208, 40.168678, 50.525490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665558, 40.127930, 50.618752>,  <48.027809, 40.060013, 50.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665558, 40.127930, 50.618752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410975, 0.125441, -0.902975,
		-0.104570, -0.977464, -0.183383,
		-0.905630, 0.169790, -0.388595,
		47.393867, 40.178867, 50.502174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001434, 39.735264, 50.122623>,  <48.027809, 40.060013, 50.774189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001434, 39.735264, 50.122623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708817, 40.002472, 50.068081>,  <47.533245, 40.162796, 50.035355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708817, 40.002472, 50.068081>,  <48.001434, 39.735264, 50.122623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708817, 40.002472, 50.068081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259646, 0.088040, -0.961682,
		-0.630421, -0.738915, -0.237854,
		-0.731542, 0.668023, -0.136354,
		47.489353, 40.202877, 50.027176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708115, 39.570065, 49.356480>,  <48.001434, 39.735264, 50.122623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708115, 39.570065, 49.356480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538147, 39.917915, 49.457031>,  <47.436169, 40.126625, 49.517365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538147, 39.917915, 49.457031>,  <47.708115, 39.570065, 49.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538147, 39.917915, 49.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078856, 0.312203, -0.946737,
		-0.901791, -0.382462, -0.201236,
		-0.424917, 0.869628, 0.251383,
		47.410671, 40.178802, 49.532448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183144, 39.664288, 48.880035>,  <47.708115, 39.570065, 49.356480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183144, 39.664288, 48.880035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291351, 40.021133, 49.024780>,  <47.356277, 40.235241, 49.111626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291351, 40.021133, 49.024780>,  <47.183144, 39.664288, 48.880035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291351, 40.021133, 49.024780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073630, 0.393947, -0.916179,
		-0.959894, 0.221203, 0.172258,
		0.270522, 0.892118, 0.361861,
		47.372509, 40.288769, 49.133339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739029, 40.149929, 48.552341>,  <47.183144, 39.664288, 48.880035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739029, 40.149929, 48.552341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063591, 40.351822, 48.670238>,  <47.258327, 40.472958, 48.740978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063591, 40.351822, 48.670238>,  <46.739029, 40.149929, 48.552341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063591, 40.351822, 48.670238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049789, 0.562130, -0.825549,
		-0.582361, 0.655178, 0.481245,
		0.811404, 0.504728, 0.294742,
		47.307011, 40.503239, 48.758659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619431, 40.923260, 48.482464>,  <46.739029, 40.149929, 48.552341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619431, 40.923260, 48.482464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016083, 40.877907, 48.507191>,  <47.254074, 40.850693, 48.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016083, 40.877907, 48.507191>,  <46.619431, 40.923260, 48.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016083, 40.877907, 48.507191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124704, 0.716358, -0.686498,
		0.033559, 0.688458, 0.724499,
		0.991626, -0.113386, 0.061813,
		47.313572, 40.843891, 48.525734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911797, 41.580589, 48.348946>,  <46.619431, 40.923260, 48.482464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911797, 41.580589, 48.348946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.263756, 41.399719, 48.290543>,  <47.474930, 41.291199, 48.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.263756, 41.399719, 48.290543>,  <46.911797, 41.580589, 48.348946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.263756, 41.399719, 48.290543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277911, 0.738977, -0.613741,
		0.385417, 0.499451, 0.775888,
		0.879897, -0.452174, -0.146011,
		47.527725, 41.264069, 48.246738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.520218, 42.074043, 48.442883>,  <46.911797, 41.580589, 48.348946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.520218, 42.074043, 48.442883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654251, 41.759842, 48.234764>,  <47.734673, 41.571323, 48.109894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654251, 41.759842, 48.234764>,  <47.520218, 42.074043, 48.442883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654251, 41.759842, 48.234764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397241, 0.618523, -0.677959,
		0.854352, 0.020492, 0.519291,
		0.335086, -0.785500, -0.520296,
		47.754776, 41.524193, 48.078674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907669, 42.698521, 48.257671>,  <47.520218, 42.074043, 48.442883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907669, 42.698521, 48.257671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.980133, 43.086578, 48.193180>,  <48.023609, 43.319412, 48.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.980133, 43.086578, 48.193180>,  <47.907669, 42.698521, 48.257671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.980133, 43.086578, 48.193180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504320, 0.232383, 0.831661,
		0.844301, -0.069350, 0.531363,
		0.181156, 0.970149, -0.161226,
		48.034481, 43.377625, 48.144814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.268940, 43.000221, 48.866859>,  <47.907669, 42.698521, 48.257671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.268940, 43.000221, 48.866859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.057640, 43.263649, 48.652481>,  <47.930859, 43.421707, 48.523853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.057640, 43.263649, 48.652481>,  <48.268940, 43.000221, 48.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.057640, 43.263649, 48.652481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556243, 0.208485, 0.804442,
		0.641517, 0.723064, 0.256192,
		-0.528251, 0.658568, -0.535946,
		47.899166, 43.461220, 48.491695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.061058, 43.628040, 49.287640>,  <48.268940, 43.000221, 48.866859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.061058, 43.628040, 49.287640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787834, 43.637978, 48.995667>,  <47.623898, 43.643940, 48.820480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787834, 43.637978, 48.995667>,  <48.061058, 43.628040, 49.287640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.787834, 43.637978, 48.995667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719425, 0.149403, 0.678311,
		0.125907, 0.988464, -0.084178,
		-0.683063, 0.024844, -0.729937,
		47.582916, 43.645432, 48.776684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.642590, 44.226906, 49.385296>,  <48.061058, 43.628040, 49.287640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.642590, 44.226906, 49.385296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411079, 43.994324, 49.156586>,  <47.272175, 43.854774, 49.019360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411079, 43.994324, 49.156586>,  <47.642590, 44.226906, 49.385296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.411079, 43.994324, 49.156586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756925, 0.122142, 0.641986,
		-0.303451, 0.804355, -0.510813,
		-0.578776, -0.581458, -0.571773,
		47.237446, 43.819885, 48.985054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997795, 44.519169, 49.521725>,  <47.642590, 44.226906, 49.385296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997795, 44.519169, 49.521725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938828, 44.161781, 49.352028>,  <46.903446, 43.947350, 49.250210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938828, 44.161781, 49.352028>,  <46.997795, 44.519169, 49.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938828, 44.161781, 49.352028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775624, -0.161727, 0.610124,
		-0.613738, 0.418995, -0.669155,
		-0.147419, -0.893469, -0.424241,
		46.894604, 43.893742, 49.224754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353497, 44.446384, 49.472641>,  <46.997795, 44.519169, 49.521725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353497, 44.446384, 49.472641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472069, 44.064369, 49.474705>,  <46.543213, 43.835159, 49.475941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472069, 44.064369, 49.474705>,  <46.353497, 44.446384, 49.472641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472069, 44.064369, 49.474705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685092, -0.208877, 0.697868,
		-0.665414, -0.210404, -0.716208,
		0.296434, -0.955040, 0.005156,
		46.560997, 43.777859, 49.476250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786560, 44.065571, 49.690475>,  <46.353497, 44.446384, 49.472641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786560, 44.065571, 49.690475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050232, 43.766212, 49.719807>,  <46.208435, 43.586597, 49.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050232, 43.766212, 49.719807>,  <45.786560, 44.065571, 49.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050232, 43.766212, 49.719807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503370, -0.366701, 0.782400,
		-0.558657, -0.552656, -0.618444,
		0.659182, -0.748399, 0.073330,
		46.247986, 43.541695, 49.741806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444248, 43.525665, 49.827232>,  <45.786560, 44.065571, 49.690475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444248, 43.525665, 49.827232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809685, 43.430061, 49.958824>,  <46.028946, 43.372700, 50.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809685, 43.430061, 49.958824>,  <45.444248, 43.525665, 49.827232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809685, 43.430061, 49.958824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386417, -0.258368, 0.885397,
		-0.126619, -0.936014, -0.328399,
		0.913592, -0.239007, 0.328977,
		46.083763, 43.358360, 50.057518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478477, 42.808769, 50.131920>,  <45.444248, 43.525665, 49.827232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478477, 42.808769, 50.131920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778633, 43.009743, 50.303726>,  <45.958725, 43.130325, 50.406811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778633, 43.009743, 50.303726>,  <45.478477, 42.808769, 50.131920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778633, 43.009743, 50.303726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357627, -0.237874, 0.903061,
		0.555899, -0.831249, 0.001187,
		0.750386, 0.502435, 0.429511,
		46.003750, 43.160473, 50.432579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652531, 42.372662, 50.631649>,  <45.478477, 42.808769, 50.131920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652531, 42.372662, 50.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789528, 42.738594, 50.717228>,  <45.871727, 42.958153, 50.768574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789528, 42.738594, 50.717228>,  <45.652531, 42.372662, 50.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789528, 42.738594, 50.717228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228759, -0.139665, 0.963412,
		0.911244, -0.378906, 0.161442,
		0.342495, 0.914835, 0.213947,
		45.892277, 43.013046, 50.781410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968277, 42.271687, 51.267307>,  <45.652531, 42.372662, 50.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968277, 42.271687, 51.267307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907982, 42.666985, 51.257072>,  <45.871807, 42.904163, 51.250931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907982, 42.666985, 51.257072>,  <45.968277, 42.271687, 51.267307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907982, 42.666985, 51.257072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089671, 0.012104, 0.995898,
		0.984499, 0.152410, 0.086792,
		-0.150734, 0.988243, -0.025583,
		45.862762, 42.963459, 51.249397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306751, 42.511486, 51.832935>,  <45.968277, 42.271687, 51.267307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306751, 42.511486, 51.832935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086716, 42.832382, 51.740139>,  <45.954697, 43.024918, 51.684460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086716, 42.832382, 51.740139>,  <46.306751, 42.511486, 51.832935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086716, 42.832382, 51.740139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149611, 0.178638, 0.972474,
		0.821597, 0.569654, 0.021757,
		-0.550087, 0.802236, -0.231995,
		45.921688, 43.073051, 51.670540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396671, 42.954906, 52.398430>,  <46.306751, 42.511486, 51.832935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396671, 42.954906, 52.398430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061272, 43.090881, 52.228088>,  <45.860031, 43.172466, 52.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061272, 43.090881, 52.228088>,  <46.396671, 42.954906, 52.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061272, 43.090881, 52.228088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438601, 0.042681, 0.897668,
		0.323331, 0.939477, 0.113310,
		-0.838503, 0.339941, -0.425856,
		45.809719, 43.192863, 52.100330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126556, 43.537083, 52.772957>,  <46.396671, 42.954906, 52.398430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126556, 43.537083, 52.772957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818642, 43.373032, 52.577316>,  <45.633892, 43.274601, 52.459930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818642, 43.373032, 52.577316>,  <46.126556, 43.537083, 52.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818642, 43.373032, 52.577316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501258, -0.085984, 0.861015,
		-0.395184, 0.907964, -0.139392,
		-0.769785, -0.410131, -0.489104,
		45.587708, 43.249992, 52.430584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543880, 43.889172, 53.065838>,  <46.126556, 43.537083, 52.772957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543880, 43.889172, 53.065838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434418, 43.548637, 52.886803>,  <45.368740, 43.344315, 52.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434418, 43.548637, 52.886803>,  <45.543880, 43.889172, 53.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434418, 43.548637, 52.886803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606045, -0.208730, 0.767555,
		-0.746874, 0.481304, -0.458830,
		-0.273656, -0.851339, -0.447587,
		45.352322, 43.293236, 52.752525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875835, 43.859039, 53.118347>,  <45.543880, 43.889172, 53.065838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875835, 43.859039, 53.118347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961147, 43.470932, 53.072590>,  <45.012333, 43.238068, 53.045135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961147, 43.470932, 53.072590>,  <44.875835, 43.859039, 53.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961147, 43.470932, 53.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701460, -0.233575, 0.673347,
		-0.680049, -0.063369, -0.730423,
		0.213278, -0.970272, -0.114392,
		45.025131, 43.179852, 53.038273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187336, 43.499249, 53.059669>,  <44.875835, 43.859039, 53.118347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187336, 43.499249, 53.059669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458687, 43.221512, 53.155739>,  <44.621498, 43.054871, 53.213379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458687, 43.221512, 53.155739>,  <44.187336, 43.499249, 53.059669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458687, 43.221512, 53.155739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654909, -0.423316, 0.626017,
		-0.333002, -0.581971, -0.741903,
		0.678383, -0.694344, 0.240173,
		44.662201, 43.013206, 53.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894829, 42.897476, 53.019352>,  <44.187336, 43.499249, 53.059669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894829, 42.897476, 53.019352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207638, 42.781097, 53.239822>,  <44.395321, 42.711269, 53.372105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207638, 42.781097, 53.239822>,  <43.894829, 42.897476, 53.019352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207638, 42.781097, 53.239822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607530, -0.553251, 0.569931,
		0.139116, -0.780552, -0.609414,
		0.782020, -0.290951, 0.551175,
		44.442245, 42.693813, 53.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800976, 42.188042, 53.067661>,  <43.894829, 42.897476, 53.019352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800976, 42.188042, 53.067661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019196, 42.332466, 53.370186>,  <44.150127, 42.419121, 53.551701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019196, 42.332466, 53.370186>,  <43.800976, 42.188042, 53.067661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019196, 42.332466, 53.370186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496768, -0.587493, 0.638806,
		0.674977, -0.724213, -0.141143,
		0.545552, 0.361064, 0.756310,
		44.182861, 42.440784, 53.597080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932995, 41.591930, 53.505051>,  <43.800976, 42.188042, 53.067661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932995, 41.591930, 53.505051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007683, 41.921211, 53.719517>,  <44.052498, 42.118782, 53.848194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007683, 41.921211, 53.719517>,  <43.932995, 41.591930, 53.505051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007683, 41.921211, 53.719517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604512, -0.333927, 0.723228,
		0.774403, -0.459158, 0.435285,
		0.186722, 0.823205, 0.536161,
		44.063698, 42.168171, 53.880363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014759, 41.428459, 54.185764>,  <43.932995, 41.591930, 53.505051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014759, 41.428459, 54.185764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896034, 41.810425, 54.188393>,  <43.824799, 42.039604, 54.189968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896034, 41.810425, 54.188393>,  <44.014759, 41.428459, 54.185764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896034, 41.810425, 54.188393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706745, -0.224286, 0.670975,
		0.642196, 0.194510, 0.741451,
		-0.296809, 0.954914, 0.006566,
		43.806992, 42.096901, 54.190361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917923, 41.547901, 54.883755>,  <44.014759, 41.428459, 54.185764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917923, 41.547901, 54.883755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698318, 41.810715, 54.677109>,  <43.566555, 41.968403, 54.553120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698318, 41.810715, 54.677109>,  <43.917923, 41.547901, 54.883755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698318, 41.810715, 54.677109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737941, -0.090811, 0.668727,
		0.392461, 0.748373, 0.534707,
		-0.549015, 0.657032, -0.516616,
		43.533615, 42.007824, 54.522125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696918, 42.049599, 55.319180>,  <43.917923, 41.547901, 54.883755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696918, 42.049599, 55.319180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442089, 42.080864, 55.012447>,  <43.289192, 42.099621, 54.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442089, 42.080864, 55.012447>,  <43.696918, 42.049599, 55.319180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442089, 42.080864, 55.012447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764049, 0.067384, 0.641630,
		0.101821, 0.994661, 0.016789,
		-0.637073, 0.078159, -0.766831,
		43.250969, 42.104313, 54.782398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192593, 42.645016, 55.486881>,  <43.696918, 42.049599, 55.319180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192593, 42.645016, 55.486881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019241, 42.407356, 55.215832>,  <42.915230, 42.264759, 55.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019241, 42.407356, 55.215832>,  <43.192593, 42.645016, 55.486881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019241, 42.407356, 55.215832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845831, 0.008640, 0.533380,
		-0.311052, 0.804310, -0.506293,
		-0.433378, -0.594147, -0.677623,
		42.889229, 42.229111, 55.012547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558907, 42.944206, 55.220833>,  <43.192593, 42.645016, 55.486881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558907, 42.944206, 55.220833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523315, 42.551376, 55.154373>,  <42.501961, 42.315678, 55.114498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523315, 42.551376, 55.154373>,  <42.558907, 42.944206, 55.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523315, 42.551376, 55.154373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815311, -0.024008, 0.578526,
		-0.572146, 0.186940, -0.798563,
		-0.088977, -0.982078, -0.166151,
		42.496624, 42.256752, 55.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884483, 42.917782, 55.143692>,  <42.558907, 42.944206, 55.220833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884483, 42.917782, 55.143692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999641, 42.540794, 55.211658>,  <42.068737, 42.314602, 55.252438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999641, 42.540794, 55.211658>,  <41.884483, 42.917782, 55.143692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999641, 42.540794, 55.211658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775880, -0.125536, 0.618265,
		-0.561364, -0.309829, -0.767383,
		0.287891, -0.942468, 0.169919,
		42.086010, 42.258053, 55.262634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333851, 42.514225, 55.051105>,  <41.884483, 42.917782, 55.143692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333851, 42.514225, 55.051105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570038, 42.266914, 55.258598>,  <41.711750, 42.118526, 55.383095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570038, 42.266914, 55.258598>,  <41.333851, 42.514225, 55.051105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570038, 42.266914, 55.258598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767613, -0.231758, 0.597544,
		-0.249240, -0.751001, -0.611454,
		0.590465, -0.618293, 0.518715,
		41.747177, 42.081432, 55.414215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994785, 41.925663, 55.146961>,  <41.333851, 42.514225, 55.051105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994785, 41.925663, 55.146961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265793, 41.900528, 55.440086>,  <41.428398, 41.885448, 55.615963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265793, 41.900528, 55.440086>,  <40.994785, 41.925663, 55.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265793, 41.900528, 55.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720419, -0.257456, 0.643982,
		0.148205, -0.964245, -0.219698,
		0.677519, -0.062833, 0.732817,
		41.469048, 41.881676, 55.659931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916180, 41.263374, 55.409782>,  <40.994785, 41.925663, 55.146961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916180, 41.263374, 55.409782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109718, 41.452461, 55.704384>,  <41.225842, 41.565914, 55.881145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109718, 41.452461, 55.704384>,  <40.916180, 41.263374, 55.409782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109718, 41.452461, 55.704384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657965, -0.358404, 0.662290,
		0.577040, -0.805038, 0.137618,
		0.483846, 0.472716, 0.736500,
		41.254871, 41.594276, 55.925335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933113, 40.792313, 56.015240>,  <40.916180, 41.263374, 55.409782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933113, 40.792313, 56.015240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004921, 41.137383, 56.204372>,  <41.048008, 41.344425, 56.317852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004921, 41.137383, 56.204372>,  <40.933113, 40.792313, 56.015240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004921, 41.137383, 56.204372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581325, -0.294717, 0.758422,
		0.793620, -0.411022, 0.448584,
		0.179522, 0.862672, 0.472830,
		41.058777, 41.396183, 56.346222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873577, 40.665119, 56.791973>,  <40.933113, 40.792313, 56.015240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873577, 40.665119, 56.791973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842232, 41.063873, 56.788399>,  <40.823425, 41.303127, 56.786255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842232, 41.063873, 56.788399>,  <40.873577, 40.665119, 56.791973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842232, 41.063873, 56.788399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493887, -0.031038, 0.868972,
		0.865988, 0.072510, 0.494780,
		-0.078366, 0.996885, -0.008934,
		40.818722, 41.362938, 56.785717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124043, 40.863983, 57.507492>,  <40.873577, 40.665119, 56.791973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124043, 40.863983, 57.507492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879662, 41.142303, 57.356445>,  <40.733032, 41.309296, 57.265816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879662, 41.142303, 57.356445>,  <41.124043, 40.863983, 57.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879662, 41.142303, 57.356445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501761, 0.028615, 0.864533,
		0.612346, 0.717667, 0.331642,
		-0.610956, 0.695799, -0.377619,
		40.696373, 41.351044, 57.243160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974606, 41.325832, 58.079781>,  <41.124043, 40.863983, 57.507492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974606, 41.325832, 58.079781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693199, 41.417778, 57.810791>,  <40.524353, 41.472946, 57.649395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693199, 41.417778, 57.810791>,  <40.974606, 41.325832, 58.079781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693199, 41.417778, 57.810791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695771, -0.029992, 0.717637,
		0.144790, 0.972760, 0.181032,
		-0.703519, 0.229864, -0.672476,
		40.482143, 41.486736, 57.609047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613213, 41.868443, 58.246372>,  <40.974606, 41.325832, 58.079781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613213, 41.868443, 58.246372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345512, 41.729919, 57.983414>,  <40.184891, 41.646805, 57.825638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345512, 41.729919, 57.983414>,  <40.613213, 41.868443, 58.246372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345512, 41.729919, 57.983414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705978, 0.020450, 0.707938,
		-0.231719, 0.937899, -0.258170,
		-0.669254, -0.346306, -0.657398,
		40.144737, 41.626026, 57.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003513, 42.332081, 58.176983>,  <40.613213, 41.868443, 58.246372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003513, 42.332081, 58.176983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910324, 41.950623, 58.100780>,  <39.854412, 41.721748, 58.055061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910324, 41.950623, 58.100780>,  <40.003513, 42.332081, 58.176983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910324, 41.950623, 58.100780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828299, 0.091946, 0.552690,
		-0.509552, 0.286555, -0.811322,
		-0.232974, -0.953642, -0.190501,
		39.840431, 41.664532, 58.043629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277962, 42.299435, 58.036976>,  <40.003513, 42.332081, 58.176983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277962, 42.299435, 58.036976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353226, 41.916870, 58.126297>,  <39.398384, 41.687332, 58.179890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353226, 41.916870, 58.126297>,  <39.277962, 42.299435, 58.036976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353226, 41.916870, 58.126297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906453, -0.081585, 0.414351,
		-0.378074, -0.280379, -0.882297,
		0.188158, -0.956416, 0.223305,
		39.409672, 41.629944, 58.193287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808323, 41.894928, 57.674591>,  <39.277962, 42.299435, 58.036976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808323, 41.894928, 57.674591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946106, 41.655609, 57.963974>,  <39.028778, 41.512020, 58.137604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946106, 41.655609, 57.963974>,  <38.808323, 41.894928, 57.674591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946106, 41.655609, 57.963974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937678, -0.181578, 0.296293,
		-0.045906, -0.780433, -0.623552,
		0.344461, -0.598293, 0.723459,
		39.049442, 41.476120, 58.181011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277977, 41.497932, 57.668407>,  <38.808323, 41.894928, 57.674591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277977, 41.497932, 57.668407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476562, 41.422943, 58.007439>,  <38.595715, 41.377949, 58.210857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476562, 41.422943, 58.007439>,  <38.277977, 41.497932, 57.668407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476562, 41.422943, 58.007439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868044, -0.101389, 0.486025,
		-0.005178, -0.977025, -0.213063,
		0.496461, -0.187464, 0.847575,
		38.625500, 41.366703, 58.261711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552425, 41.309200, 57.671124>,  <38.277977, 41.497932, 57.668407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552425, 41.309200, 57.671124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223801, 41.536293, 57.650269>,  <37.026627, 41.672550, 57.637756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223801, 41.536293, 57.650269>,  <37.552425, 41.309200, 57.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223801, 41.536293, 57.650269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463800, 0.612374, -0.640224,
		-0.331550, -0.550163, -0.766417,
		-0.821562, 0.567731, -0.052133,
		36.977333, 41.706612, 57.634628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438435, 41.398071, 56.951298>,  <37.552425, 41.309200, 57.671124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438435, 41.398071, 56.951298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262421, 41.685707, 57.166435>,  <37.156811, 41.858288, 57.295517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262421, 41.685707, 57.166435>,  <37.438435, 41.398071, 56.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262421, 41.685707, 57.166435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387534, 0.692374, -0.608634,
		-0.810052, -0.059389, -0.583343,
		-0.440038, 0.719090, 0.537844,
		37.130409, 41.901436, 57.327789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055687, 41.735008, 56.456841>,  <37.438435, 41.398071, 56.951298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055687, 41.735008, 56.456841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113998, 41.997162, 56.753277>,  <37.148987, 42.154453, 56.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113998, 41.997162, 56.753277>,  <37.055687, 41.735008, 56.456841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113998, 41.997162, 56.753277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409004, 0.642154, -0.648347,
		-0.900813, 0.397625, -0.174443,
		0.145780, 0.655387, 0.741091,
		37.157734, 42.193779, 56.975605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816746, 42.387222, 56.135368>,  <37.055687, 41.735008, 56.456841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816746, 42.387222, 56.135368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030197, 42.502457, 56.453423>,  <37.158268, 42.571598, 56.644257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030197, 42.502457, 56.453423>,  <36.816746, 42.387222, 56.135368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030197, 42.502457, 56.453423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520220, 0.629462, -0.577190,
		-0.666789, 0.721654, 0.186034,
		0.533633, 0.288086, 0.795137,
		37.190289, 42.588882, 56.691963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952335, 43.144241, 56.049370>,  <36.816746, 42.387222, 56.135368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952335, 43.144241, 56.049370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242519, 43.037453, 56.303123>,  <37.416630, 42.973381, 56.455376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242519, 43.037453, 56.303123>,  <36.952335, 43.144241, 56.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242519, 43.037453, 56.303123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598902, 0.699049, -0.390701,
		-0.339160, 0.663370, 0.667016,
		0.725456, -0.266967, 0.634383,
		37.460155, 42.957363, 56.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229488, 43.745838, 56.342125>,  <36.952335, 43.144241, 56.049370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229488, 43.745838, 56.342125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501377, 43.453659, 56.368721>,  <37.664513, 43.278351, 56.384678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501377, 43.453659, 56.368721>,  <37.229488, 43.745838, 56.342125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501377, 43.453659, 56.368721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701985, 0.621598, -0.347610,
		0.212582, 0.282952, 0.935279,
		0.679725, -0.730448, 0.066488,
		37.705296, 43.234524, 56.388668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817738, 44.105362, 56.492107>,  <37.229488, 43.745838, 56.342125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817738, 44.105362, 56.492107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967552, 43.751564, 56.380829>,  <38.057442, 43.539288, 56.314060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967552, 43.751564, 56.380829>,  <37.817738, 44.105362, 56.492107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967552, 43.751564, 56.380829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747550, 0.465556, -0.473737,
		0.548534, -0.030535, 0.835570,
		0.374539, -0.884492, -0.278199,
		38.079914, 43.486217, 56.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581207, 44.163406, 56.513283>,  <37.817738, 44.105362, 56.492107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581207, 44.163406, 56.513283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524952, 43.845230, 56.277489>,  <38.491199, 43.654324, 56.136013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524952, 43.845230, 56.277489>,  <38.581207, 44.163406, 56.513283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524952, 43.845230, 56.277489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818102, 0.241965, -0.521691,
		0.557609, -0.555630, 0.616723,
		-0.140642, -0.795442, -0.589484,
		38.482758, 43.606598, 56.100643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137028, 43.866650, 56.506626>,  <38.581207, 44.163406, 56.513283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137028, 43.866650, 56.506626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952988, 43.776146, 56.163204>,  <38.842564, 43.721844, 55.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952988, 43.776146, 56.163204>,  <39.137028, 43.866650, 56.506626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952988, 43.776146, 56.163204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844958, 0.185393, -0.501672,
		0.272680, -0.956261, 0.105884,
		-0.460099, -0.226263, -0.858553,
		38.814957, 43.708267, 55.905640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735668, 43.743279, 56.043053>,  <39.137028, 43.866650, 56.506626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735668, 43.743279, 56.043053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422676, 43.784164, 55.797359>,  <39.234882, 43.808697, 55.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422676, 43.784164, 55.797359>,  <39.735668, 43.743279, 56.043053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422676, 43.784164, 55.797359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620010, 0.036735, -0.783733,
		-0.057544, -0.994084, -0.092117,
		-0.782480, 0.102213, -0.614229,
		39.187931, 43.814827, 55.613091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859142, 43.333549, 55.414509>,  <39.735668, 43.743279, 56.043053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859142, 43.333549, 55.414509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591820, 43.603333, 55.288986>,  <39.431427, 43.765202, 55.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591820, 43.603333, 55.288986>,  <39.859142, 43.333549, 55.414509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591820, 43.603333, 55.288986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598968, 0.237731, -0.764671,
		-0.441135, -0.698995, -0.562855,
		-0.668309, 0.674456, -0.313804,
		39.391327, 43.805668, 55.194843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071465, 43.282524, 54.760513>,  <39.859142, 43.333549, 55.414509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071465, 43.282524, 54.760513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848679, 43.613968, 54.783138>,  <39.715008, 43.812832, 54.796711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848679, 43.613968, 54.783138>,  <40.071465, 43.282524, 54.760513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848679, 43.613968, 54.783138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389229, 0.320573, -0.863558,
		-0.733682, -0.458959, -0.501067,
		-0.556966, 0.828607, 0.056559,
		39.681587, 43.862549, 54.800106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860458, 43.503887, 54.045307>,  <40.071465, 43.282524, 54.760513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860458, 43.503887, 54.045307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849289, 43.829979, 54.276695>,  <39.842587, 44.025635, 54.415527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849289, 43.829979, 54.276695>,  <39.860458, 43.503887, 54.045307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849289, 43.829979, 54.276695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389178, 0.541902, -0.744905,
		-0.920739, 0.204329, -0.332399,
		-0.027922, 0.815225, 0.578470,
		39.840912, 44.074547, 54.450237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760334, 44.028172, 53.575634>,  <39.860458, 43.503887, 54.045307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760334, 44.028172, 53.575634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893036, 44.222984, 53.898804>,  <39.972656, 44.339870, 54.092705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893036, 44.222984, 53.898804>,  <39.760334, 44.028172, 53.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893036, 44.222984, 53.898804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562021, 0.585806, -0.583920,
		-0.757673, 0.647790, -0.079375,
		0.331759, 0.487031, 0.807921,
		39.992565, 44.369095, 54.141182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872818, 44.767868, 53.422649>,  <39.760334, 44.028172, 53.575634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872818, 44.767868, 53.422649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115582, 44.688919, 53.730598>,  <40.261242, 44.641548, 53.915367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115582, 44.688919, 53.730598>,  <39.872818, 44.767868, 53.422649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115582, 44.688919, 53.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739597, 0.494878, -0.456171,
		-0.290956, 0.846250, 0.446324,
		0.606911, -0.197375, 0.769872,
		40.297653, 44.629707, 53.961559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292385, 45.270008, 53.355625>,  <39.872818, 44.767868, 53.422649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292385, 45.270008, 53.355625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488235, 45.014839, 53.593388>,  <40.605743, 44.861736, 53.736046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488235, 45.014839, 53.593388>,  <40.292385, 45.270008, 53.355625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488235, 45.014839, 53.593388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859027, 0.236050, -0.454260,
		0.149472, 0.733031, 0.663569,
		0.489623, -0.637923, 0.594411,
		40.635120, 44.823463, 53.771709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772503, 45.672604, 53.702263>,  <40.292385, 45.270008, 53.355625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772503, 45.672604, 53.702263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901768, 45.294189, 53.711956>,  <40.979324, 45.067142, 53.717770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901768, 45.294189, 53.711956>,  <40.772503, 45.672604, 53.702263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901768, 45.294189, 53.711956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912315, 0.304631, -0.273645,
		0.251497, 0.110536, 0.961525,
		0.323158, -0.946035, 0.024230,
		40.998714, 45.010380, 53.719223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533653, 45.692913, 53.911320>,  <40.772503, 45.672604, 53.702263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533653, 45.692913, 53.911320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501923, 45.331604, 53.742649>,  <41.482883, 45.114819, 53.641445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501923, 45.331604, 53.742649>,  <41.533653, 45.692913, 53.911320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501923, 45.331604, 53.742649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892761, 0.123819, -0.433183,
		0.443492, -0.410821, 0.796581,
		-0.079329, -0.903269, -0.421678,
		41.478123, 45.060623, 53.616146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229622, 45.290367, 53.956657>,  <41.533653, 45.692913, 53.911320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229622, 45.290367, 53.956657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020935, 45.110252, 53.666817>,  <41.895721, 45.002182, 53.492912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020935, 45.110252, 53.666817>,  <42.229622, 45.290367, 53.956657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020935, 45.110252, 53.666817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839596, -0.120389, -0.529703,
		0.151286, -0.884729, 0.440870,
		-0.521720, -0.450289, -0.724602,
		41.864418, 44.975166, 53.449436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674725, 44.703178, 53.786980>,  <42.229622, 45.290367, 53.956657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674725, 44.703178, 53.786980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430851, 44.742966, 53.472427>,  <42.284527, 44.766838, 53.283695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430851, 44.742966, 53.472427>,  <42.674725, 44.703178, 53.786980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430851, 44.742966, 53.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770626, -0.157842, -0.617432,
		-0.185543, -0.982441, 0.019574,
		-0.609680, 0.099476, -0.786381,
		42.247948, 44.772808, 53.236515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871151, 44.168541, 53.290848>,  <42.674725, 44.703178, 53.786980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871151, 44.168541, 53.290848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679352, 44.413620, 53.039551>,  <42.564274, 44.560669, 52.888775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679352, 44.413620, 53.039551>,  <42.871151, 44.168541, 53.290848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679352, 44.413620, 53.039551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728313, -0.121512, -0.674384,
		-0.489533, -0.780919, -0.387971,
		-0.479497, 0.612698, -0.628239,
		42.535503, 44.597431, 52.851078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847523, 43.863216, 52.612240>,  <42.871151, 44.168541, 53.290848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847523, 43.863216, 52.612240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792595, 44.249161, 52.522629>,  <42.759640, 44.480728, 52.468861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792595, 44.249161, 52.522629>,  <42.847523, 43.863216, 52.612240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792595, 44.249161, 52.522629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582810, -0.104174, -0.805903,
		-0.800922, -0.241229, -0.548026,
		-0.137317, 0.964861, -0.224026,
		42.751400, 44.538620, 52.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808250, 43.878922, 51.889194>,  <42.847523, 43.863216, 52.612240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808250, 43.878922, 51.889194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894699, 44.245865, 52.022911>,  <42.946568, 44.466030, 52.103142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894699, 44.245865, 52.022911>,  <42.808250, 43.878922, 51.889194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894699, 44.245865, 52.022911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653467, 0.118491, -0.747623,
		-0.725448, 0.380022, -0.573854,
		0.216117, 0.917357, 0.334291,
		42.959534, 44.521072, 52.123199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711506, 44.408077, 51.364334>,  <42.808250, 43.878922, 51.889194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711506, 44.408077, 51.364334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978462, 44.548454, 51.627068>,  <43.138634, 44.632679, 51.784706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978462, 44.548454, 51.627068>,  <42.711506, 44.408077, 51.364334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978462, 44.548454, 51.627068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614110, 0.239574, -0.751980,
		-0.421262, 0.905231, -0.055628,
		0.667388, 0.350943, 0.656835,
		43.178680, 44.653736, 51.824120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871841, 44.964165, 51.058582>,  <42.711506, 44.408077, 51.364334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871841, 44.964165, 51.058582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153770, 44.917305, 51.338440>,  <43.322929, 44.889191, 51.506355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153770, 44.917305, 51.338440>,  <42.871841, 44.964165, 51.058582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153770, 44.917305, 51.338440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684692, 0.370293, -0.627757,
		-0.185534, 0.921498, 0.341201,
		0.704822, -0.117147, 0.699645,
		43.365215, 44.882160, 51.548332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137276, 45.592339, 51.085758>,  <42.871841, 44.964165, 51.058582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137276, 45.592339, 51.085758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414337, 45.350998, 51.243843>,  <43.580574, 45.206192, 51.338696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414337, 45.350998, 51.243843>,  <43.137276, 45.592339, 51.085758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414337, 45.350998, 51.243843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712119, 0.485077, -0.507530,
		0.114509, 0.632984, 0.765650,
		0.692657, -0.603350, 0.395214,
		43.622135, 45.169994, 51.362408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718060, 46.026764, 51.425282>,  <43.137276, 45.592339, 51.085758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718060, 46.026764, 51.425282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846855, 45.659645, 51.332359>,  <43.924133, 45.439373, 51.276608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846855, 45.659645, 51.332359>,  <43.718060, 46.026764, 51.425282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846855, 45.659645, 51.332359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705193, 0.396222, -0.587972,
		0.631684, 0.025505, 0.774806,
		0.321992, -0.917800, -0.232301,
		43.943451, 45.384304, 51.262669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400963, 46.103073, 51.088112>,  <43.718060, 46.026764, 51.425282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400963, 46.103073, 51.088112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324699, 45.721512, 50.995403>,  <44.278942, 45.492577, 50.939777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324699, 45.721512, 50.995403>,  <44.400963, 46.103073, 51.088112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324699, 45.721512, 50.995403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627341, 0.063201, -0.776176,
		0.755045, -0.293385, 0.586373,
		-0.190659, -0.953903, -0.231772,
		44.267502, 45.435341, 50.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083462, 45.707161, 51.001652>,  <44.400963, 46.103073, 51.088112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083462, 45.707161, 51.001652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783859, 45.555313, 50.784443>,  <44.604095, 45.464203, 50.654118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783859, 45.555313, 50.784443>,  <45.083462, 45.707161, 51.001652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783859, 45.555313, 50.784443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550896, 0.098507, -0.828740,
		0.368101, -0.919881, 0.135351,
		-0.749010, -0.379625, -0.543019,
		44.559155, 45.441425, 50.621536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365059, 45.244576, 50.551052>,  <45.083462, 45.707161, 51.001652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365059, 45.244576, 50.551052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010361, 45.299934, 50.374630>,  <44.797543, 45.333149, 50.268776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010361, 45.299934, 50.374630>,  <45.365059, 45.244576, 50.551052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010361, 45.299934, 50.374630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435152, -0.071990, -0.897474,
		-0.155960, -0.987757, 0.003613,
		-0.886746, 0.138398, -0.441052,
		44.744335, 45.341454, 50.242313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406963, 44.886883, 49.966900>,  <45.365059, 45.244576, 50.551052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406963, 44.886883, 49.966900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113693, 45.141991, 49.872494>,  <44.937733, 45.295055, 49.815849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113693, 45.141991, 49.872494>,  <45.406963, 44.886883, 49.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113693, 45.141991, 49.872494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316461, 0.012788, -0.948519,
		-0.601922, -0.770118, -0.211206,
		-0.733173, 0.637773, -0.236015,
		44.893742, 45.333321, 49.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083939, 44.644852, 49.306564>,  <45.406963, 44.886883, 49.966900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083939, 44.644852, 49.306564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005333, 45.036430, 49.328644>,  <44.958172, 45.271378, 49.341892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005333, 45.036430, 49.328644>,  <45.083939, 44.644852, 49.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005333, 45.036430, 49.328644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193587, 0.093921, -0.976577,
		-0.961201, -0.181223, -0.207968,
		-0.196511, 0.978947, 0.055194,
		44.946381, 45.330116, 49.345203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749992, 44.698174, 48.691162>,  <45.083939, 44.644852, 49.306564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749992, 44.698174, 48.691162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797623, 45.082779, 48.790207>,  <44.826202, 45.313541, 48.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797623, 45.082779, 48.790207>,  <44.749992, 44.698174, 48.691162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797623, 45.082779, 48.790207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045333, 0.243859, -0.968751,
		-0.991850, 0.126581, -0.014551,
		0.119077, 0.961514, 0.247610,
		44.833347, 45.371235, 48.864491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273296, 45.049770, 48.376480>,  <44.749992, 44.698174, 48.691162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273296, 45.049770, 48.376480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564499, 45.319122, 48.427959>,  <44.739220, 45.480732, 48.458847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564499, 45.319122, 48.427959>,  <44.273296, 45.049770, 48.376480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564499, 45.319122, 48.427959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004355, 0.192266, -0.981333,
		-0.685555, 0.713857, 0.142904,
		0.728008, 0.673380, 0.128701,
		44.782902, 45.521137, 48.466568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020782, 45.693752, 48.166122>,  <44.273296, 45.049770, 48.376480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020782, 45.693752, 48.166122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418819, 45.688805, 48.126862>,  <44.657642, 45.685837, 48.103306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418819, 45.688805, 48.126862>,  <44.020782, 45.693752, 48.166122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418819, 45.688805, 48.126862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092685, 0.230194, -0.968721,
		0.034580, 0.973066, 0.227918,
		0.995095, -0.012373, -0.098148,
		44.717346, 45.685093, 48.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061306, 45.955570, 47.526302>,  <44.020782, 45.693752, 48.166122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061306, 45.955570, 47.526302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444695, 45.866020, 47.596973>,  <44.674728, 45.812290, 47.639374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444695, 45.866020, 47.596973>,  <44.061306, 45.955570, 47.526302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444695, 45.866020, 47.596973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248525, 0.351801, -0.902481,
		0.139889, 0.908909, 0.392830,
		0.958471, -0.223875, 0.176673,
		44.732235, 45.798859, 47.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436951, 46.577190, 47.327282>,  <44.061306, 45.955570, 47.526302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436951, 46.577190, 47.327282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691566, 46.269073, 47.311989>,  <44.844337, 46.084202, 47.302814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691566, 46.269073, 47.311989>,  <44.436951, 46.577190, 47.327282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691566, 46.269073, 47.311989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298764, 0.291978, -0.908564,
		0.711024, 0.566918, 0.415992,
		0.636542, -0.770294, -0.038228,
		44.882530, 46.037987, 47.300522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031242, 46.796627, 46.987793>,  <44.436951, 46.577190, 47.327282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031242, 46.796627, 46.987793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051926, 46.400841, 46.933693>,  <45.064335, 46.163368, 46.901234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051926, 46.400841, 46.933693>,  <45.031242, 46.796627, 46.987793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051926, 46.400841, 46.933693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191345, 0.142738, -0.971088,
		0.980160, 0.024336, 0.196709,
		0.051710, -0.989461, -0.135250,
		45.067440, 46.104004, 46.893120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609917, 46.695183, 46.659122>,  <45.031242, 46.796627, 46.987793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609917, 46.695183, 46.659122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426025, 46.346680, 46.590355>,  <45.315689, 46.137577, 46.549095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426025, 46.346680, 46.590355>,  <45.609917, 46.695183, 46.659122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426025, 46.346680, 46.590355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365584, -0.009252, -0.930732,
		0.809320, -0.490734, 0.322772,
		-0.459728, -0.871260, -0.171916,
		45.288109, 46.085300, 46.538780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046272, 46.348923, 46.240082>,  <45.609917, 46.695183, 46.659122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046272, 46.348923, 46.240082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698318, 46.166435, 46.165066>,  <45.489548, 46.056942, 46.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698318, 46.166435, 46.165066>,  <46.046272, 46.348923, 46.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698318, 46.166435, 46.165066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263939, -0.109325, -0.958324,
		0.416704, -0.883126, 0.215514,
		-0.869882, -0.456219, -0.187535,
		45.437355, 46.029568, 46.108807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.898998, 39.930233, 51.042110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044617, 39.558945, 51.011429>,  <39.131989, 39.336174, 50.993019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044617, 39.558945, 51.011429>,  <38.898998, 39.930233, 51.042110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044617, 39.558945, 51.011429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738343, 0.337814, -0.583722,
		0.567732, 0.155868, 0.808322,
		0.364046, -0.928217, -0.076704,
		39.153831, 39.280479, 50.988419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571220, 40.097404, 51.167835>,  <38.898998, 39.930233, 51.042110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571220, 40.097404, 51.167835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552208, 39.731857, 51.006550>,  <39.540802, 39.512527, 50.909779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552208, 39.731857, 51.006550>,  <39.571220, 40.097404, 51.167835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552208, 39.731857, 51.006550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714205, 0.251119, -0.653338,
		0.698321, -0.319028, 0.640757,
		-0.047527, -0.913871, -0.403213,
		39.537949, 39.457695, 50.885586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179604, 40.021263, 50.948040>,  <39.571220, 40.097404, 51.167835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179604, 40.021263, 50.948040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992645, 39.727585, 50.751064>,  <39.880470, 39.551376, 50.632877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992645, 39.727585, 50.751064>,  <40.179604, 40.021263, 50.948040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992645, 39.727585, 50.751064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662657, 0.077750, -0.744876,
		0.585173, -0.674470, 0.450181,
		-0.467395, -0.734197, -0.492439,
		39.852428, 39.507324, 50.603333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750591, 39.476135, 50.867100>,  <40.179604, 40.021263, 50.948040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750591, 39.476135, 50.867100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453568, 39.421585, 50.604797>,  <40.275352, 39.388855, 50.447418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453568, 39.421585, 50.604797>,  <40.750591, 39.476135, 50.867100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453568, 39.421585, 50.604797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627311, 0.201485, -0.752253,
		0.234710, -0.969952, -0.064067,
		-0.742558, -0.136372, -0.655752,
		40.230801, 39.380672, 50.408073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022877, 39.040031, 50.345032>,  <40.750591, 39.476135, 50.867100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022877, 39.040031, 50.345032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.700882, 39.178368, 50.152206>,  <40.507683, 39.261368, 50.036510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.700882, 39.178368, 50.152206>,  <41.022877, 39.040031, 50.345032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700882, 39.178368, 50.152206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561762, 0.182958, -0.806815,
		-0.190828, -0.920284, -0.341557,
		-0.804989, 0.345837, -0.482067,
		40.459385, 39.282120, 50.007587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995472, 38.689522, 49.719414>,  <41.022877, 39.040031, 50.345032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995472, 38.689522, 49.719414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791927, 39.030113, 49.668755>,  <40.669800, 39.234467, 49.638359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791927, 39.030113, 49.668755>,  <40.995472, 38.689522, 49.719414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791927, 39.030113, 49.668755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504821, 0.175999, -0.845092,
		-0.697289, -0.493970, -0.519404,
		-0.508865, 0.851480, -0.126645,
		40.639267, 39.285557, 49.630760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879635, 38.725899, 48.959030>,  <40.995472, 38.689522, 49.719414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879635, 38.725899, 48.959030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802513, 39.101669, 49.072380>,  <40.756241, 39.327133, 49.140388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802513, 39.101669, 49.072380>,  <40.879635, 38.725899, 48.959030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802513, 39.101669, 49.072380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506197, 0.342624, -0.791437,
		-0.840589, -0.009153, -0.541597,
		-0.192808, 0.939428, 0.283373,
		40.744671, 39.383499, 49.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635857, 38.939011, 48.371876>,  <40.879635, 38.725899, 48.959030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635857, 38.939011, 48.371876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777115, 39.242241, 48.591187>,  <40.861870, 39.424179, 48.722771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777115, 39.242241, 48.591187>,  <40.635857, 38.939011, 48.371876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777115, 39.242241, 48.591187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562588, 0.296168, -0.771867,
		-0.747517, 0.581034, -0.321895,
		0.353146, 0.758079, 0.548274,
		40.883060, 39.469666, 48.755669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592121, 39.604889, 47.914246>,  <40.635857, 38.939011, 48.371876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592121, 39.604889, 47.914246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847092, 39.680229, 48.213100>,  <41.000072, 39.725433, 48.392414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847092, 39.680229, 48.213100>,  <40.592121, 39.604889, 47.914246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847092, 39.680229, 48.213100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638488, 0.413657, -0.649015,
		-0.431300, 0.890737, 0.143417,
		0.637427, 0.188350, 0.747136,
		41.038319, 39.736732, 48.437241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624187, 40.294403, 47.892799>,  <40.592121, 39.604889, 47.914246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624187, 40.294403, 47.892799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.956966, 40.169250, 48.076092>,  <41.156631, 40.094158, 48.186066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.956966, 40.169250, 48.076092>,  <40.624187, 40.294403, 47.892799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956966, 40.169250, 48.076092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545431, 0.612772, -0.571854,
		-0.101866, 0.725682, 0.680447,
		0.831943, -0.312884, 0.458230,
		41.206551, 40.075386, 48.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961960, 40.886902, 48.048294>,  <40.624187, 40.294403, 47.892799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961960, 40.886902, 48.048294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.263084, 40.624405, 48.068790>,  <41.443760, 40.466908, 48.081089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.263084, 40.624405, 48.068790>,  <40.961960, 40.886902, 48.048294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263084, 40.624405, 48.068790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559289, 0.596664, -0.575489,
		0.347086, 0.461892, 0.816203,
		0.752813, -0.656237, 0.051237,
		41.488930, 40.427532, 48.084160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579819, 41.357723, 48.076515>,  <40.961960, 40.886902, 48.048294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579819, 41.357723, 48.076515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726379, 40.998314, 47.979843>,  <41.814316, 40.782669, 47.921841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726379, 40.998314, 47.979843>,  <41.579819, 41.357723, 48.076515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726379, 40.998314, 47.979843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540591, 0.416976, -0.730679,
		0.757305, 0.137073, 0.638514,
		0.366401, -0.898522, -0.241677,
		41.836300, 40.728756, 47.907341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387821, 41.369839, 48.170769>,  <41.579819, 41.357723, 48.076515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387821, 41.369839, 48.170769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.296570, 41.063118, 47.930779>,  <42.241817, 40.879086, 47.786785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.296570, 41.063118, 47.930779>,  <42.387821, 41.369839, 48.170769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296570, 41.063118, 47.930779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653884, 0.335912, -0.677937,
		0.721383, -0.546971, 0.424769,
		-0.228127, -0.766802, -0.599977,
		42.228130, 40.833076, 47.750786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998886, 41.021179, 48.105656>,  <42.387821, 41.369839, 48.170769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998886, 41.021179, 48.105656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.773273, 40.936943, 47.786274>,  <42.637905, 40.886402, 47.594646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.773273, 40.936943, 47.786274>,  <42.998886, 41.021179, 48.105656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773273, 40.936943, 47.786274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763261, 0.236045, -0.601428,
		0.315126, -0.948648, 0.027600,
		-0.564029, -0.210592, -0.798450,
		42.604065, 40.873764, 47.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383633, 40.676830, 47.569008>,  <42.998886, 41.021179, 48.105656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383633, 40.676830, 47.569008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.074158, 40.828323, 47.365845>,  <42.888474, 40.919220, 47.243946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.074158, 40.828323, 47.365845>,  <43.383633, 40.676830, 47.569008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074158, 40.828323, 47.365845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615154, 0.257177, -0.745282,
		-0.151641, -0.889056, -0.431954,
		-0.773687, 0.378733, -0.507908,
		42.842052, 40.941944, 47.213474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649239, 40.532284, 46.951153>,  <43.383633, 40.676830, 47.569008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649239, 40.532284, 46.951153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.324707, 40.759674, 46.896633>,  <43.129986, 40.896107, 46.863922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.324707, 40.759674, 46.896633>,  <43.649239, 40.532284, 46.951153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324707, 40.759674, 46.896633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497786, 0.549572, -0.670954,
		-0.306515, -0.612214, -0.728864,
		-0.811331, 0.568476, -0.136300,
		43.081306, 40.930218, 46.855743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524151, 40.625828, 46.152260>,  <43.649239, 40.532284, 46.951153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524151, 40.625828, 46.152260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.339859, 40.917336, 46.354893>,  <43.229282, 41.092239, 46.476471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.339859, 40.917336, 46.354893>,  <43.524151, 40.625828, 46.152260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339859, 40.917336, 46.354893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178637, 0.635236, -0.751375,
		-0.869375, -0.255690, -0.422859,
		-0.460734, 0.728765, 0.506582,
		43.201637, 41.135963, 46.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263664, 40.998493, 45.678391>,  <43.524151, 40.625828, 46.152260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263664, 40.998493, 45.678391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289062, 41.250595, 45.987907>,  <43.304302, 41.401855, 46.173618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289062, 41.250595, 45.987907>,  <43.263664, 40.998493, 45.678391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289062, 41.250595, 45.987907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197972, 0.751990, -0.628744,
		-0.978149, 0.193112, -0.077024,
		0.063497, 0.630253, 0.773789,
		43.308113, 41.439671, 46.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001064, 41.647999, 45.419292>,  <43.263664, 40.998493, 45.678391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001064, 41.647999, 45.419292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.180447, 41.768158, 45.756020>,  <43.288074, 41.840256, 45.958054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.180447, 41.768158, 45.756020>,  <43.001064, 41.647999, 45.419292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180447, 41.768158, 45.756020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374377, 0.792099, -0.482100,
		-0.811623, 0.531355, 0.242754,
		0.448452, 0.300402, 0.841813,
		43.314983, 41.858280, 46.008564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849663, 42.371845, 45.567329>,  <43.001064, 41.647999, 45.419292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849663, 42.371845, 45.567329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.189365, 42.297867, 45.765144>,  <43.393185, 42.253479, 45.883835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.189365, 42.297867, 45.765144>,  <42.849663, 42.371845, 45.567329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189365, 42.297867, 45.765144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450440, 0.742440, -0.495869,
		-0.275454, 0.643876, 0.713826,
		0.849252, -0.184947, 0.494536,
		43.444141, 42.242382, 45.913506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132866, 43.020672, 45.741566>,  <42.849663, 42.371845, 45.567329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132866, 43.020672, 45.741566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.442589, 42.767647, 45.748684>,  <43.628422, 42.615833, 45.752953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.442589, 42.767647, 45.748684>,  <43.132866, 43.020672, 45.741566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442589, 42.767647, 45.748684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564424, 0.677643, -0.471409,
		0.286138, 0.375058, 0.881735,
		0.774307, -0.632560, 0.017792,
		43.674881, 42.577877, 45.754021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661095, 43.365623, 45.893749>,  <43.132866, 43.020672, 45.741566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661095, 43.365623, 45.893749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.835701, 43.052177, 45.716934>,  <43.940464, 42.864109, 45.610844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.835701, 43.052177, 45.716934>,  <43.661095, 43.365623, 45.893749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835701, 43.052177, 45.716934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617113, 0.618310, -0.486686,
		0.654693, -0.060342, 0.753483,
		0.436519, -0.783614, -0.442041,
		43.966656, 42.817093, 45.584320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996037, 43.938335, 45.411919>,  <43.661095, 43.365623, 45.893749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996037, 43.938335, 45.411919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715446, 44.216827, 45.350998>,  <43.547092, 44.383923, 45.314445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715446, 44.216827, 45.350998>,  <43.996037, 43.938335, 45.411919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715446, 44.216827, 45.350998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471153, -0.292686, 0.832075,
		0.534739, 0.655439, 0.533343,
		-0.701476, 0.696229, -0.152302,
		43.505005, 44.425697, 45.305309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917500, 44.372677, 45.995476>,  <43.996037, 43.938335, 45.411919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917500, 44.372677, 45.995476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.561813, 44.385841, 45.812950>,  <43.348404, 44.393742, 45.703434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.561813, 44.385841, 45.812950>,  <43.917500, 44.372677, 45.995476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561813, 44.385841, 45.812950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453133, -0.200800, 0.868533,
		-0.063039, 0.979079, 0.193469,
		-0.889211, 0.032916, -0.456311,
		43.295052, 44.395718, 45.676056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458881, 44.667404, 46.453922>,  <43.917500, 44.372677, 45.995476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458881, 44.667404, 46.453922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.190086, 44.525642, 46.193821>,  <43.028809, 44.440586, 46.037762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.190086, 44.525642, 46.193821>,  <43.458881, 44.667404, 46.453922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190086, 44.525642, 46.193821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676761, -0.062645, 0.733532,
		-0.300703, 0.932991, -0.197751,
		-0.671991, -0.354406, -0.650250,
		42.988487, 44.419319, 45.998745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761829, 45.063389, 46.529282>,  <43.458881, 44.667404, 46.453922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761829, 45.063389, 46.529282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.701149, 44.713875, 46.344460>,  <42.664742, 44.504166, 46.233566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.701149, 44.713875, 46.344460>,  <42.761829, 45.063389, 46.529282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701149, 44.713875, 46.344460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731763, -0.214967, 0.646770,
		-0.664462, 0.436229, -0.606791,
		-0.151700, -0.873781, -0.462053,
		42.655640, 44.451740, 46.205845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054039, 45.014912, 46.458466>,  <42.761829, 45.063389, 46.529282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054039, 45.014912, 46.458466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.171436, 44.633598, 46.429890>,  <42.241875, 44.404808, 46.412746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.171436, 44.633598, 46.429890>,  <42.054039, 45.014912, 46.458466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171436, 44.633598, 46.429890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755876, -0.277168, 0.593152,
		-0.585244, -0.120090, -0.801915,
		0.293497, -0.953287, -0.071438,
		42.259487, 44.347610, 46.408459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515102, 44.640293, 46.263443>,  <42.054039, 45.014912, 46.458466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515102, 44.640293, 46.263443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.765274, 44.380913, 46.437042>,  <41.915379, 44.225285, 46.541203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.765274, 44.380913, 46.437042>,  <41.515102, 44.640293, 46.263443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765274, 44.380913, 46.437042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705939, -0.233296, 0.668747,
		-0.332400, -0.724627, -0.603677,
		0.625428, -0.648451, 0.433995,
		41.952904, 44.186378, 46.567242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047176, 44.083187, 46.369755>,  <41.515102, 44.640293, 46.263443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047176, 44.083187, 46.369755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.376110, 43.998047, 46.580833>,  <41.573471, 43.946964, 46.707481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.376110, 43.998047, 46.580833>,  <41.047176, 44.083187, 46.369755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376110, 43.998047, 46.580833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568947, -0.294393, 0.767875,
		-0.008092, -0.931680, -0.363189,
		0.822334, -0.212849, 0.527695,
		41.622810, 43.934193, 46.739143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878040, 43.466877, 46.768513>,  <41.047176, 44.083187, 46.369755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878040, 43.466877, 46.768513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184326, 43.649796, 46.949425>,  <41.368099, 43.759548, 47.057972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184326, 43.649796, 46.949425>,  <40.878040, 43.466877, 46.768513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184326, 43.649796, 46.949425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371580, -0.259446, 0.891412,
		0.524986, -0.850626, -0.028737,
		0.765714, 0.457300, 0.452281,
		41.414040, 43.786987, 47.085110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178112, 42.979397, 47.246616>,  <40.878040, 43.466877, 46.768513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178112, 42.979397, 47.246616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.307655, 43.334808, 47.376625>,  <41.385380, 43.548054, 47.454628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.307655, 43.334808, 47.376625>,  <41.178112, 42.979397, 47.246616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307655, 43.334808, 47.376625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306903, -0.226296, 0.924446,
		0.894946, -0.399137, 0.199405,
		0.323856, 0.888527, 0.325019,
		41.404812, 43.601368, 47.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391323, 42.837002, 47.930340>,  <41.178112, 42.979397, 47.246616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391323, 42.837002, 47.930340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370323, 43.236450, 47.929565>,  <41.357723, 43.476120, 47.929100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370323, 43.236450, 47.929565>,  <41.391323, 42.837002, 47.930340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370323, 43.236450, 47.929565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438535, -0.021317, 0.898461,
		0.897179, 0.048017, 0.439049,
		-0.052501, 0.998619, -0.001932,
		41.354572, 43.536037, 47.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766655, 43.105453, 48.570690>,  <41.391323, 42.837002, 47.930340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766655, 43.105453, 48.570690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520508, 43.392662, 48.440601>,  <41.372818, 43.564987, 48.362549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520508, 43.392662, 48.440601>,  <41.766655, 43.105453, 48.570690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520508, 43.392662, 48.440601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323601, 0.146095, 0.934847,
		0.718753, 0.680515, 0.142450,
		-0.615367, 0.718022, -0.325221,
		41.335899, 43.608070, 48.343037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980141, 43.647659, 48.981785>,  <41.766655, 43.105453, 48.570690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980141, 43.647659, 48.981785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606964, 43.704597, 48.849510>,  <41.383057, 43.738758, 48.770145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606964, 43.704597, 48.849510>,  <41.980141, 43.647659, 48.981785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606964, 43.704597, 48.849510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331670, 0.017462, 0.943234,
		0.140037, 0.989663, 0.030920,
		-0.932944, 0.142343, -0.330687,
		41.327080, 43.747299, 48.750305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644249, 44.054150, 49.487030>,  <41.980141, 43.647659, 48.981785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644249, 44.054150, 49.487030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338409, 43.892464, 49.286228>,  <41.154907, 43.795452, 49.165749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338409, 43.892464, 49.286228>,  <41.644249, 44.054150, 49.487030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338409, 43.892464, 49.286228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535186, -0.035811, 0.843975,
		-0.359121, 0.913964, -0.188947,
		-0.764596, -0.404211, -0.502001,
		41.109032, 43.771202, 49.135628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077877, 44.429176, 49.812984>,  <41.644249, 44.054150, 49.487030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077877, 44.429176, 49.812984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942719, 44.101509, 49.627602>,  <40.861622, 43.904911, 49.516373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942719, 44.101509, 49.627602>,  <41.077877, 44.429176, 49.812984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942719, 44.101509, 49.627602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533616, -0.238886, 0.811287,
		-0.775292, 0.521443, -0.356400,
		-0.337901, -0.819165, -0.463456,
		40.841347, 43.855759, 49.488564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303173, 44.363487, 50.004803>,  <41.077877, 44.429176, 49.812984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303173, 44.363487, 50.004803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419167, 44.006111, 49.867592>,  <40.488762, 43.791683, 49.785267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419167, 44.006111, 49.867592>,  <40.303173, 44.363487, 50.004803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419167, 44.006111, 49.867592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635081, -0.447782, 0.629415,
		-0.715948, 0.035328, -0.697259,
		0.289985, -0.893444, -0.343025,
		40.506161, 43.738079, 49.764683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674751, 44.039356, 49.949860>,  <40.303173, 44.363487, 50.004803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674751, 44.039356, 49.949860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954247, 43.753914, 49.929703>,  <40.121944, 43.582649, 49.917606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954247, 43.753914, 49.929703>,  <39.674751, 44.039356, 49.949860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954247, 43.753914, 49.929703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574826, -0.601992, 0.554240,
		-0.425845, -0.358298, -0.830830,
		0.698736, -0.713602, -0.050396,
		40.163868, 43.539833, 49.914585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288460, 43.488087, 49.838165>,  <39.674751, 44.039356, 49.949860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288460, 43.488087, 49.838165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633884, 43.348183, 49.983452>,  <39.841141, 43.264240, 50.070621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633884, 43.348183, 49.983452>,  <39.288460, 43.488087, 49.838165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633884, 43.348183, 49.983452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502234, -0.660766, 0.557808,
		0.044901, -0.664122, -0.746275,
		0.863565, -0.349758, 0.363213,
		39.892956, 43.243256, 50.092415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377274, 42.794899, 49.653744>,  <39.288460, 43.488087, 49.838165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377274, 42.794899, 49.653744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598244, 42.850281, 49.982536>,  <39.730824, 42.883511, 50.179813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598244, 42.850281, 49.982536>,  <39.377274, 42.794899, 49.653744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598244, 42.850281, 49.982536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555283, -0.674329, 0.486766,
		0.621682, -0.725335, -0.295635,
		0.552424, 0.138453, 0.821985,
		39.763969, 42.891815, 50.229134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.439022, 42.109818, 49.864281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.563148, 42.299004, 50.194130>,  <39.637623, 42.412514, 50.392040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.563148, 42.299004, 50.194130>,  <39.439022, 42.109818, 49.864281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563148, 42.299004, 50.194130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438095, -0.698693, 0.565597,
		0.843668, -0.536779, -0.009613,
		0.310317, 0.472965, 0.824625,
		39.656242, 42.440891, 50.441517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752396, 41.604206, 50.292786>,  <39.439022, 42.109818, 49.864281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752396, 41.604206, 50.292786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627487, 41.916603, 50.509129>,  <39.552540, 42.104042, 50.638935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627487, 41.916603, 50.509129>,  <39.752396, 41.604206, 50.292786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627487, 41.916603, 50.509129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508941, -0.618272, 0.598931,
		0.802162, -0.088235, 0.590552,
		-0.312275, 0.780996, 0.540860,
		39.533806, 42.150902, 50.671387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805714, 41.268848, 50.884865>,  <39.752396, 41.604206, 50.292786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805714, 41.268848, 50.884865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541237, 41.559982, 50.957611>,  <39.382549, 41.734665, 51.001259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541237, 41.559982, 50.957611>,  <39.805714, 41.268848, 50.884865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541237, 41.559982, 50.957611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510399, -0.614085, 0.601991,
		0.549836, 0.305205, 0.777516,
		-0.661191, 0.727839, 0.181870,
		39.342880, 41.778336, 51.012173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665775, 41.253315, 51.636635>,  <39.805714, 41.268848, 50.884865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665775, 41.253315, 51.636635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352039, 41.463188, 51.504261>,  <39.163795, 41.589111, 51.424835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352039, 41.463188, 51.504261>,  <39.665775, 41.253315, 51.636635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352039, 41.463188, 51.504261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574355, -0.412698, 0.706963,
		0.234352, 0.744576, 0.625049,
		-0.784344, 0.524678, -0.330934,
		39.116737, 41.620590, 51.404980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270210, 41.340221, 52.245094>,  <39.665775, 41.253315, 51.636635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270210, 41.340221, 52.245094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025818, 41.450966, 51.948433>,  <38.879181, 41.517414, 51.770435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025818, 41.450966, 51.948433>,  <39.270210, 41.340221, 52.245094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025818, 41.450966, 51.948433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777833, -0.384184, 0.497371,
		-0.147226, 0.880766, 0.450084,
		-0.610983, 0.276864, -0.741651,
		38.842522, 41.534027, 51.725937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836056, 41.767338, 52.484943>,  <39.270210, 41.340221, 52.245094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836056, 41.767338, 52.484943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636726, 41.616875, 52.172485>,  <38.517128, 41.526596, 51.985012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636726, 41.616875, 52.172485>,  <38.836056, 41.767338, 52.484943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636726, 41.616875, 52.172485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785565, -0.185308, 0.590380,
		-0.366825, 0.907838, -0.203150,
		-0.498324, -0.376154, -0.781141,
		38.487228, 41.504028, 51.938145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217331, 42.015049, 52.537342>,  <38.836056, 41.767338, 52.484943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217331, 42.015049, 52.537342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163921, 41.705994, 52.289085>,  <38.131878, 41.520561, 52.140129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163921, 41.705994, 52.289085>,  <38.217331, 42.015049, 52.537342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163921, 41.705994, 52.289085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776395, -0.307669, 0.550046,
		-0.615941, 0.555306, -0.558795,
		-0.133520, -0.772641, -0.620643,
		38.123867, 41.474201, 52.102894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613743, 42.072529, 52.248207>,  <38.217331, 42.015049, 52.537342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613743, 42.072529, 52.248207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684738, 41.679932, 52.219429>,  <37.727337, 41.444374, 52.202164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684738, 41.679932, 52.219429>,  <37.613743, 42.072529, 52.248207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684738, 41.679932, 52.219429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857413, -0.190105, 0.478230,
		-0.483054, -0.023198, -0.875283,
		0.177490, -0.981490, -0.071941,
		37.737984, 41.385487, 52.197845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954578, 41.788574, 52.118313>,  <37.613743, 42.072529, 52.248207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954578, 41.788574, 52.118313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176796, 41.483437, 52.250641>,  <37.310127, 41.300354, 52.330040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176796, 41.483437, 52.250641>,  <36.954578, 41.788574, 52.118313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176796, 41.483437, 52.250641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745554, -0.280844, 0.604381,
		-0.368136, -0.582408, -0.724760,
		0.555541, -0.762842, 0.330827,
		37.343456, 41.254581, 52.349888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477497, 41.317577, 52.242668>,  <36.954578, 41.788574, 52.118313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477497, 41.317577, 52.242668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795280, 41.207008, 52.458977>,  <36.985950, 41.140667, 52.588760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795280, 41.207008, 52.458977>,  <36.477497, 41.317577, 52.242668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795280, 41.207008, 52.458977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602291, -0.244198, 0.760008,
		-0.078026, -0.929494, -0.360490,
		0.794454, -0.276421, 0.540772,
		37.033615, 41.124081, 52.621208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301594, 40.676899, 52.555775>,  <36.477497, 41.317577, 52.242668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301594, 40.676899, 52.555775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621262, 40.800140, 52.762230>,  <36.813061, 40.874084, 52.886105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621262, 40.800140, 52.762230>,  <36.301594, 40.676899, 52.555775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621262, 40.800140, 52.762230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412642, -0.343176, 0.843776,
		0.437096, -0.887301, -0.147119,
		0.799171, 0.308103, 0.516138,
		36.861012, 40.892570, 52.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422974, 40.228649, 53.034924>,  <36.301594, 40.676899, 52.555775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422974, 40.228649, 53.034924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602074, 40.556290, 53.178364>,  <36.709534, 40.752872, 53.264427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602074, 40.556290, 53.178364>,  <36.422974, 40.228649, 53.034924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602074, 40.556290, 53.178364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396083, -0.177868, 0.900823,
		0.801646, -0.545382, 0.244789,
		0.447752, 0.819098, 0.358604,
		36.736401, 40.802017, 53.285946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522301, 40.056046, 53.684944>,  <36.422974, 40.228649, 53.034924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522301, 40.056046, 53.684944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589512, 40.450356, 53.686455>,  <36.629837, 40.686943, 53.687363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589512, 40.450356, 53.686455>,  <36.522301, 40.056046, 53.684944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589512, 40.450356, 53.686455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427418, 0.069396, 0.901387,
		0.888303, -0.153070, 0.432999,
		0.168024, 0.985776, 0.003780,
		36.639919, 40.746090, 53.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077129, 40.204559, 54.264114>,  <36.522301, 40.056046, 53.684944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077129, 40.204559, 54.264114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845551, 40.520271, 54.182274>,  <36.706604, 40.709698, 54.133171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845551, 40.520271, 54.182274>,  <37.077129, 40.204559, 54.264114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845551, 40.520271, 54.182274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405893, -0.061354, 0.911859,
		0.707156, 0.610965, 0.355883,
		-0.578949, 0.789277, -0.204599,
		36.671867, 40.757053, 54.120895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111782, 40.585918, 54.868481>,  <37.077129, 40.204559, 54.264114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111782, 40.585918, 54.868481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779865, 40.707886, 54.681515>,  <36.580715, 40.781067, 54.569336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779865, 40.707886, 54.681515>,  <37.111782, 40.585918, 54.868481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779865, 40.707886, 54.681515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472225, 0.062718, 0.879244,
		0.297412, 0.950312, 0.091947,
		-0.829789, 0.304917, -0.467414,
		36.530930, 40.799362, 54.541290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774727, 41.082088, 55.395107>,  <37.111782, 40.585918, 54.868481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774727, 41.082088, 55.395107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490318, 41.007896, 55.123798>,  <36.319675, 40.963383, 54.961014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490318, 41.007896, 55.123798>,  <36.774727, 41.082088, 55.395107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490318, 41.007896, 55.123798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688285, -0.013876, 0.725308,
		-0.143940, 0.982550, -0.117796,
		-0.711017, -0.185478, -0.678272,
		36.277012, 40.952251, 54.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389084, 41.591610, 55.481651>,  <36.774727, 41.082088, 55.395107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389084, 41.591610, 55.481651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181458, 41.280403, 55.340088>,  <36.056881, 41.093678, 55.255150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181458, 41.280403, 55.340088>,  <36.389084, 41.591610, 55.481651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181458, 41.280403, 55.340088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658264, 0.099756, 0.746148,
		-0.545213, 0.620269, -0.563923,
		-0.519067, -0.778020, -0.353912,
		36.025738, 41.046997, 55.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668629, 41.783634, 55.407185>,  <36.389084, 41.591610, 55.481651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668629, 41.783634, 55.407185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645493, 41.384491, 55.394997>,  <35.631611, 41.145004, 55.387684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645493, 41.384491, 55.394997>,  <35.668629, 41.783634, 55.407185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645493, 41.384491, 55.394997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818030, 0.029880, 0.574398,
		-0.572259, 0.058147, -0.818009,
		-0.057842, -0.997861, -0.030467,
		35.628139, 41.085133, 55.385857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948826, 41.633026, 55.302265>,  <35.668629, 41.783634, 55.407185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948826, 41.633026, 55.302265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095978, 41.285072, 55.433693>,  <35.184269, 41.076298, 55.512550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095978, 41.285072, 55.433693>,  <34.948826, 41.633026, 55.302265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095978, 41.285072, 55.433693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748857, -0.067677, 0.659267,
		-0.551251, -0.488586, -0.676318,
		0.367880, -0.869887, 0.328573,
		35.206341, 41.024105, 55.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359097, 41.208706, 55.300838>,  <34.948826, 41.633026, 55.302265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359097, 41.208706, 55.300838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625301, 41.032112, 55.541569>,  <34.785023, 40.926155, 55.686005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625301, 41.032112, 55.541569>,  <34.359097, 41.208706, 55.300838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625301, 41.032112, 55.541569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739584, -0.281434, 0.611400,
		-0.100547, -0.851993, -0.513808,
		0.665511, -0.441478, 0.601823,
		34.824955, 40.899670, 55.722115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090939, 40.548332, 55.510582>,  <34.359097, 41.208706, 55.300838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090939, 40.548332, 55.510582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356941, 40.624870, 55.799347>,  <34.516541, 40.670795, 55.972607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356941, 40.624870, 55.799347>,  <34.090939, 40.548332, 55.510582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356941, 40.624870, 55.799347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645699, -0.338423, 0.684502,
		0.375290, -0.921333, -0.101498,
		0.665004, 0.191350, 0.721911,
		34.556442, 40.682274, 56.015919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839954, 40.147205, 56.039089>,  <34.090939, 40.548332, 55.510582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839954, 40.147205, 56.039089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121933, 40.353745, 56.233589>,  <34.291122, 40.477669, 56.350288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121933, 40.353745, 56.233589>,  <33.839954, 40.147205, 56.039089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121933, 40.353745, 56.233589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344677, -0.349774, 0.871124,
		0.619876, -0.781695, -0.068601,
		0.704948, 0.516344, 0.486249,
		34.333416, 40.508648, 56.379463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122593, 39.760136, 56.530415>,  <33.839954, 40.147205, 56.039089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122593, 39.760136, 56.530415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160927, 40.139999, 56.649723>,  <34.183929, 40.367916, 56.721310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160927, 40.139999, 56.649723>,  <34.122593, 39.760136, 56.530415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160927, 40.139999, 56.649723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435397, -0.229469, 0.870502,
		0.895123, -0.213294, 0.391486,
		0.095839, 0.949658, 0.298270,
		34.189678, 40.424896, 56.739204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301128, 39.040421, 56.862801>,  <34.122593, 39.760136, 56.530415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301128, 39.040421, 56.862801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316559, 38.692505, 57.059566>,  <34.325817, 38.483757, 57.177628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316559, 38.692505, 57.059566>,  <34.301128, 39.040421, 56.862801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316559, 38.692505, 57.059566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832234, -0.244505, -0.497598,
		0.553080, 0.428585, 0.714435,
		0.038580, -0.869789, 0.491914,
		34.328133, 38.431568, 57.207142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929497, 38.971287, 57.197472>,  <34.301128, 39.040421, 56.862801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929497, 38.971287, 57.197472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798763, 38.599068, 57.131432>,  <34.720325, 38.375736, 57.091808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798763, 38.599068, 57.131432>,  <34.929497, 38.971287, 57.197472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798763, 38.599068, 57.131432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904775, -0.257605, -0.339149,
		0.273064, -0.260224, 0.926131,
		-0.326831, -0.930550, -0.165102,
		34.700714, 38.319904, 57.081902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399616, 38.429890, 57.507862>,  <34.929497, 38.971287, 57.197472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399616, 38.429890, 57.507862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 38.241837, 57.212227>,  <35.090870, 38.129005, 57.034847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 38.241837, 57.212227>,  <35.399616, 38.429890, 57.507862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206650, 38.241837, 57.212227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875731, -0.277366, -0.395176,
		-0.019212, -0.837880, 0.545516,
		-0.482417, -0.470133, -0.739087,
		35.061924, 38.100796, 56.990501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891823, 37.892105, 57.272934>,  <35.399616, 38.429890, 57.507862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891823, 37.892105, 57.272934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614525, 37.945122, 56.989571>,  <35.448147, 37.976933, 56.819553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614525, 37.945122, 56.989571>,  <35.891823, 37.892105, 57.272934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614525, 37.945122, 56.989571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692770, -0.148458, -0.705713,
		-0.198708, -0.979996, 0.011094,
		-0.693243, 0.132545, -0.708411,
		35.406551, 37.984886, 56.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080284, 37.394215, 56.806015>,  <35.891823, 37.892105, 57.272934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080284, 37.394215, 56.806015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835320, 37.640778, 56.608025>,  <35.688339, 37.788715, 56.489231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835320, 37.640778, 56.608025>,  <36.080284, 37.394215, 56.806015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835320, 37.640778, 56.608025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563918, -0.098179, -0.819974,
		-0.554031, -0.781286, -0.287476,
		-0.612410, 0.616404, -0.494976,
		35.651596, 37.825699, 56.459534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097366, 37.064655, 56.223392>,  <36.080284, 37.394215, 56.806015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097366, 37.064655, 56.223392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942833, 37.421692, 56.130417>,  <35.850113, 37.635914, 56.074631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942833, 37.421692, 56.130417>,  <36.097366, 37.064655, 56.223392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942833, 37.421692, 56.130417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371803, -0.079920, -0.924865,
		-0.844105, -0.443723, -0.300994,
		-0.386329, 0.892593, -0.232438,
		35.826935, 37.689468, 56.060684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844177, 36.963181, 55.490730>,  <36.097366, 37.064655, 56.223392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844177, 36.963181, 55.490730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861237, 37.358459, 55.549583>,  <35.871471, 37.595627, 55.584896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861237, 37.358459, 55.549583>,  <35.844177, 36.963181, 55.490730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861237, 37.358459, 55.549583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168804, 0.138024, -0.975938,
		-0.984727, 0.066459, -0.160925,
		0.042648, 0.988197, 0.147135,
		35.874031, 37.654919, 55.593723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506645, 37.283257, 54.976543>,  <35.844177, 36.963181, 55.490730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506645, 37.283257, 54.976543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778427, 37.542046, 55.114971>,  <35.941498, 37.697319, 55.198029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778427, 37.542046, 55.114971>,  <35.506645, 37.283257, 54.976543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778427, 37.542046, 55.114971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349736, 0.129055, -0.927917,
		-0.645000, 0.751512, -0.138583,
		0.679456, 0.646973, 0.346071,
		35.982265, 37.736137, 55.218792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565144, 37.774639, 54.418003>,  <35.506645, 37.283257, 54.976543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565144, 37.774639, 54.418003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883888, 37.864799, 54.642220>,  <36.075134, 37.918896, 54.776749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883888, 37.864799, 54.642220>,  <35.565144, 37.774639, 54.418003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883888, 37.864799, 54.642220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530522, 0.182846, -0.827716,
		-0.289059, 0.956955, 0.026124,
		0.796864, 0.225400, 0.560538,
		36.122948, 37.932419, 54.810383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867416, 38.414124, 54.166580>,  <35.565144, 37.774639, 54.418003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867416, 38.414124, 54.166580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161758, 38.241173, 54.375031>,  <36.338364, 38.137402, 54.500099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161758, 38.241173, 54.375031>,  <35.867416, 38.414124, 54.166580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161758, 38.241173, 54.375031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642100, 0.201189, -0.739750,
		0.215004, 0.878963, 0.425673,
		0.735853, -0.432374, 0.521126,
		36.382515, 38.111462, 54.531368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361313, 38.920177, 54.372936>,  <35.867416, 38.414124, 54.166580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361313, 38.920177, 54.372936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546413, 38.565582, 54.373985>,  <36.657475, 38.352825, 54.374615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546413, 38.565582, 54.373985>,  <36.361313, 38.920177, 54.372936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546413, 38.565582, 54.373985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707873, 0.367732, -0.603067,
		0.533645, 0.280927, 0.797686,
		0.462752, -0.886484, 0.002622,
		36.685238, 38.299637, 54.374771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987736, 39.137096, 54.288128>,  <36.361313, 38.920177, 54.372936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987736, 39.137096, 54.288128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998337, 38.749771, 54.188797>,  <37.004700, 38.517376, 54.129200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998337, 38.749771, 54.188797>,  <36.987736, 39.137096, 54.288128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998337, 38.749771, 54.188797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578655, 0.217425, -0.786057,
		0.815142, -0.122861, 0.566082,
		0.026504, -0.968314, -0.248327,
		37.006287, 38.459278, 54.114300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677124, 39.025185, 54.162937>,  <36.987736, 39.137096, 54.288128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677124, 39.025185, 54.162937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483902, 38.721550, 53.988380>,  <37.367970, 38.539368, 53.883648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483902, 38.721550, 53.988380>,  <37.677124, 39.025185, 54.162937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483902, 38.721550, 53.988380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441663, 0.219100, -0.870017,
		0.756034, -0.613006, 0.229424,
		-0.483059, -0.759090, -0.436389,
		37.338985, 38.493824, 53.857464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137672, 38.827541, 53.727921>,  <37.677124, 39.025185, 54.162937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137672, 38.827541, 53.727921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811531, 38.642105, 53.589195>,  <37.615845, 38.530846, 53.505959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811531, 38.642105, 53.589195>,  <38.137672, 38.827541, 53.727921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811531, 38.642105, 53.589195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271539, 0.222854, -0.936271,
		0.511334, -0.857567, -0.055822,
		-0.815355, -0.463589, -0.346816,
		37.566925, 38.503029, 53.485149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410191, 38.206142, 53.491749>,  <38.137672, 38.827541, 53.727921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410191, 38.206142, 53.491749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068611, 38.306999, 53.309673>,  <37.863663, 38.367512, 53.200428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068611, 38.306999, 53.309673>,  <38.410191, 38.206142, 53.491749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068611, 38.306999, 53.309673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459093, -0.046737, -0.887158,
		-0.244963, -0.966561, -0.075845,
		-0.853947, 0.252141, -0.455191,
		37.812428, 38.382641, 53.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441917, 37.787758, 52.910301>,  <38.410191, 38.206142, 53.491749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441917, 37.787758, 52.910301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171883, 38.069412, 52.822266>,  <38.009861, 38.238407, 52.769444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171883, 38.069412, 52.822266>,  <38.441917, 37.787758, 52.910301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171883, 38.069412, 52.822266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429738, 0.132848, -0.893128,
		-0.599648, -0.697523, -0.392280,
		-0.675091, 0.704140, -0.220090,
		37.969357, 38.280655, 52.756237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304779, 37.654678, 52.249863>,  <38.441917, 37.787758, 52.910301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304779, 37.654678, 52.249863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165390, 38.024078, 52.314003>,  <38.081757, 38.245720, 52.352486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165390, 38.024078, 52.314003>,  <38.304779, 37.654678, 52.249863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165390, 38.024078, 52.314003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342109, 0.284584, -0.895530,
		-0.872657, -0.257207, -0.415108,
		-0.348470, 0.923502, 0.160351,
		38.060848, 38.301128, 52.362110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038113, 37.869110, 51.599834>,  <38.304779, 37.654678, 52.249863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038113, 37.869110, 51.599834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096230, 38.214111, 51.793732>,  <38.131100, 38.421112, 51.910069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096230, 38.214111, 51.793732>,  <38.038113, 37.869110, 51.599834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096230, 38.214111, 51.793732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373278, 0.405947, -0.834189,
		-0.916272, 0.302142, -0.262975,
		0.145290, 0.862507, 0.484740,
		38.139816, 38.472862, 51.939156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712475, 38.428932, 51.273880>,  <38.038113, 37.869110, 51.599834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712475, 38.428932, 51.273880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003365, 38.603554, 51.485752>,  <38.177898, 38.708328, 51.612873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003365, 38.603554, 51.485752>,  <37.712475, 38.428932, 51.273880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003365, 38.603554, 51.485752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332022, 0.451659, -0.828109,
		-0.600749, 0.778090, 0.183514,
		0.727229, 0.436555, 0.529677,
		38.221535, 38.734520, 51.644653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938889, 38.922527, 50.912720>,  <37.712475, 38.428932, 51.273880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938889, 38.922527, 50.912720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251762, 38.906975, 51.161453>,  <38.439487, 38.897644, 51.310696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251762, 38.906975, 51.161453>,  <37.938889, 38.922527, 50.912720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251762, 38.906975, 51.161453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583483, 0.395724, -0.709190,
		-0.218500, 0.917546, 0.332216,
		0.782180, -0.038885, 0.621838,
		38.486416, 38.895309, 51.348003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353481, 39.490311, 50.767830>,  <37.938889, 38.922527, 50.912720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353481, 39.490311, 50.767830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604595, 39.240944, 50.954269>,  <38.755264, 39.091324, 51.066132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604595, 39.240944, 50.954269>,  <38.353481, 39.490311, 50.767830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604595, 39.240944, 50.954269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760363, 0.363031, -0.538569,
		0.166544, 0.692506, 0.701925,
		0.627783, -0.623413, 0.466095,
		38.792931, 39.053921, 51.094097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.127712, 44.023956, 48.240822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486710, 43.951637, 48.401730>,  <40.702106, 43.908245, 48.498276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486710, 43.951637, 48.401730>,  <40.127712, 44.023956, 48.240822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486710, 43.951637, 48.401730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438670, 0.460305, -0.771808,
		-0.045624, 0.869155, 0.492432,
		0.897489, -0.180802, 0.402273,
		40.755955, 43.897396, 48.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557968, 44.598721, 48.027618>,  <40.127712, 44.023956, 48.240822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557968, 44.598721, 48.027618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778168, 44.277222, 48.117889>,  <40.910290, 44.084320, 48.172054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778168, 44.277222, 48.117889>,  <40.557968, 44.598721, 48.027618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778168, 44.277222, 48.117889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629006, 0.221588, -0.745151,
		0.548907, 0.552162, 0.627549,
		0.550501, -0.803751, 0.225682,
		40.943317, 44.036095, 48.185593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216084, 44.837173, 48.024616>,  <40.557968, 44.598721, 48.027618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216084, 44.837173, 48.024616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.268845, 44.444618, 47.968796>,  <41.300503, 44.209084, 47.935303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.268845, 44.444618, 47.968796>,  <41.216084, 44.837173, 48.024616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268845, 44.444618, 47.968796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620491, 0.191530, -0.760465,
		0.773041, 0.013718, 0.634208,
		0.131902, -0.981391, -0.139549,
		41.308414, 44.150200, 47.926929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950741, 44.761166, 47.936546>,  <41.216084, 44.837173, 48.024616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950741, 44.761166, 47.936546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768524, 44.442513, 47.777618>,  <41.659195, 44.251320, 47.682262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768524, 44.442513, 47.777618>,  <41.950741, 44.761166, 47.936546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768524, 44.442513, 47.777618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665828, -0.008650, -0.746055,
		0.590895, -0.604402, 0.534361,
		-0.455540, -0.796632, -0.397317,
		41.631863, 44.203522, 47.658424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407551, 44.353558, 47.719936>,  <41.950741, 44.761166, 47.936546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407551, 44.353558, 47.719936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104057, 44.196129, 47.512310>,  <41.921963, 44.101673, 47.387733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104057, 44.196129, 47.512310>,  <42.407551, 44.353558, 47.719936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104057, 44.196129, 47.512310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610144, -0.150313, -0.777901,
		0.228137, -0.906923, 0.354182,
		-0.758734, -0.393570, -0.519061,
		41.876438, 44.078056, 47.356590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697109, 43.702011, 47.457657>,  <42.407551, 44.353558, 47.719936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697109, 43.702011, 47.457657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376240, 43.797112, 47.238571>,  <42.183720, 43.854172, 47.107121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376240, 43.797112, 47.238571>,  <42.697109, 43.702011, 47.457657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376240, 43.797112, 47.238571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561742, -0.010451, -0.827246,
		-0.202405, -0.971269, -0.125172,
		-0.802171, 0.237753, -0.547719,
		42.135590, 43.868439, 47.074257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677349, 43.175022, 46.926071>,  <42.697109, 43.702011, 47.457657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677349, 43.175022, 46.926071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471863, 43.499138, 46.813267>,  <42.348572, 43.693607, 46.745583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471863, 43.499138, 46.813267>,  <42.677349, 43.175022, 46.926071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471863, 43.499138, 46.813267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556091, 0.064156, -0.828642,
		-0.653348, -0.582506, -0.483553,
		-0.513712, 0.810290, -0.282010,
		42.317749, 43.742226, 46.728664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656158, 43.124176, 46.284584>,  <42.677349, 43.175022, 46.926071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656158, 43.124176, 46.284584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543724, 43.506111, 46.323124>,  <42.476265, 43.735271, 46.346249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543724, 43.506111, 46.323124>,  <42.656158, 43.124176, 46.284584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543724, 43.506111, 46.323124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411765, 0.210684, -0.886602,
		-0.866857, -0.209536, -0.452387,
		-0.281086, 0.954833, 0.096354,
		42.459400, 43.792561, 46.352032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461113, 43.324692, 45.641918>,  <42.656158, 43.124176, 46.284584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461113, 43.324692, 45.641918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504490, 43.679413, 45.821621>,  <42.530518, 43.892246, 45.929443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504490, 43.679413, 45.821621>,  <42.461113, 43.324692, 45.641918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504490, 43.679413, 45.821621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290078, 0.404023, -0.867537,
		-0.950839, 0.224396, -0.213428,
		0.108442, 0.886799, 0.449253,
		42.537022, 43.945454, 45.956398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250149, 43.762463, 45.109821>,  <42.461113, 43.324692, 45.641918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250149, 43.762463, 45.109821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449532, 43.970985, 45.386887>,  <42.569160, 44.096100, 45.553123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449532, 43.970985, 45.386887>,  <42.250149, 43.762463, 45.109821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449532, 43.970985, 45.386887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411952, 0.560586, -0.718358,
		-0.762781, 0.643414, 0.064676,
		0.498458, 0.521307, 0.692660,
		42.599068, 44.127377, 45.594685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168705, 44.532795, 45.055584>,  <42.250149, 43.762463, 45.109821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168705, 44.532795, 45.055584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511017, 44.515915, 45.261833>,  <42.716404, 44.505787, 45.385582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511017, 44.515915, 45.261833>,  <42.168705, 44.532795, 45.055584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511017, 44.515915, 45.261833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467005, 0.491861, -0.734833,
		-0.222606, 0.869650, 0.440630,
		0.855776, -0.042198, 0.515622,
		42.767750, 44.503254, 45.416519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537987, 45.282684, 45.135239>,  <42.168705, 44.532795, 45.055584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537987, 45.282684, 45.135239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824944, 45.005447, 45.163429>,  <42.997120, 44.839104, 45.180344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824944, 45.005447, 45.163429>,  <42.537987, 45.282684, 45.135239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824944, 45.005447, 45.163429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530876, 0.478357, -0.699532,
		0.451127, 0.539256, 0.711117,
		0.717395, -0.693093, 0.070478,
		43.040161, 44.797520, 45.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212795, 45.591736, 45.413349>,  <42.537987, 45.282684, 45.135239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212795, 45.591736, 45.413349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251743, 45.283699, 45.161167>,  <43.275112, 45.098877, 45.009857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251743, 45.283699, 45.161167>,  <43.212795, 45.591736, 45.413349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251743, 45.283699, 45.161167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580985, 0.558310, -0.592238,
		0.808069, -0.308623, 0.501773,
		0.097367, -0.770092, -0.630458,
		43.280952, 45.052670, 44.972031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955414, 45.373230, 45.194801>,  <43.212795, 45.591736, 45.413349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955414, 45.373230, 45.194801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709702, 45.271347, 44.896061>,  <43.562275, 45.210217, 44.716816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709702, 45.271347, 44.896061>,  <43.955414, 45.373230, 45.194801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709702, 45.271347, 44.896061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616031, 0.436679, -0.655605,
		0.493122, -0.862806, -0.111334,
		-0.614277, -0.254708, -0.746852,
		43.525417, 45.194935, 44.672005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314152, 45.625744, 45.840229>,  <43.955414, 45.373230, 45.194801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314152, 45.625744, 45.840229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688759, 45.719666, 45.944382>,  <44.913525, 45.776016, 46.006874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688759, 45.719666, 45.944382>,  <44.314152, 45.625744, 45.840229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688759, 45.719666, 45.944382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187987, -0.290604, 0.938195,
		0.295959, -0.927587, -0.228016,
		0.936520, 0.234803, 0.260381,
		44.969715, 45.790108, 46.022495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609379, 45.012955, 46.291878>,  <44.314152, 45.625744, 45.840229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609379, 45.012955, 46.291878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813934, 45.347633, 46.370277>,  <44.936668, 45.548443, 46.417316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813934, 45.347633, 46.370277>,  <44.609379, 45.012955, 46.291878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813934, 45.347633, 46.370277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085812, -0.177216, 0.980424,
		0.855056, -0.518194, -0.018827,
		0.511386, 0.836701, 0.195997,
		44.967350, 45.598644, 46.429077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208637, 44.814316, 46.657455>,  <44.609379, 45.012955, 46.291878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208637, 44.814316, 46.657455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.177719, 45.204201, 46.741322>,  <45.159168, 45.438133, 46.791641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.177719, 45.204201, 46.741322>,  <45.208637, 44.814316, 46.657455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177719, 45.204201, 46.741322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038745, -0.207198, 0.977531,
		0.996255, 0.083678, -0.021751,
		-0.077291, 0.974714, 0.209664,
		45.154533, 45.496616, 46.804222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597805, 44.892628, 47.322380>,  <45.208637, 44.814316, 46.657455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597805, 44.892628, 47.322380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401222, 45.240219, 47.299229>,  <45.283272, 45.448772, 47.285339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401222, 45.240219, 47.299229>,  <45.597805, 44.892628, 47.322380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401222, 45.240219, 47.299229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024232, 0.080077, 0.996494,
		0.870566, 0.488329, -0.060411,
		-0.491455, 0.868978, -0.057879,
		45.253784, 45.500912, 47.281864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899860, 45.347084, 47.778419>,  <45.597805, 44.892628, 47.322380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899860, 45.347084, 47.778419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516716, 45.456169, 47.742340>,  <45.286831, 45.521618, 47.720692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516716, 45.456169, 47.742340>,  <45.899860, 45.347084, 47.778419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516716, 45.456169, 47.742340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087389, 0.022445, 0.995921,
		0.273622, 0.961834, 0.002333,
		-0.957859, 0.272710, -0.090195,
		45.229359, 45.537983, 47.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956734, 45.944733, 48.192039>,  <45.899860, 45.347084, 47.778419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956734, 45.944733, 48.192039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563568, 45.876213, 48.165115>,  <45.327667, 45.835102, 48.148960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563568, 45.876213, 48.165115>,  <45.956734, 45.944733, 48.192039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563568, 45.876213, 48.165115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106305, 0.229838, 0.967406,
		-0.150248, 0.958035, -0.244122,
		-0.982917, -0.171302, -0.067311,
		45.268692, 45.824821, 48.144920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690338, 46.331932, 48.755943>,  <45.956734, 45.944733, 48.192039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690338, 46.331932, 48.755943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391144, 46.082840, 48.664093>,  <45.211628, 45.933384, 48.608982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391144, 46.082840, 48.664093>,  <45.690338, 46.331932, 48.755943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391144, 46.082840, 48.664093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312874, 0.025698, 0.949447,
		-0.585349, 0.782014, -0.214058,
		-0.747981, -0.622731, -0.229629,
		45.166748, 45.896019, 48.595203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234089, 46.543442, 49.223949>,  <45.690338, 46.331932, 48.755943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234089, 46.543442, 49.223949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071770, 46.197945, 49.104431>,  <44.974380, 45.990646, 49.032722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071770, 46.197945, 49.104431>,  <45.234089, 46.543442, 49.223949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071770, 46.197945, 49.104431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351087, -0.154521, 0.923505,
		-0.843841, 0.479656, -0.240546,
		-0.405795, -0.863744, -0.298792,
		44.950031, 45.938820, 49.014793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577732, 46.584122, 49.552746>,  <45.234089, 46.543442, 49.223949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577732, 46.584122, 49.552746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660572, 46.205849, 49.452511>,  <44.710278, 45.978886, 49.392368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660572, 46.205849, 49.452511>,  <44.577732, 46.584122, 49.552746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660572, 46.205849, 49.452511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406226, -0.316142, 0.857342,
		-0.889994, -0.075764, -0.449635,
		0.207104, -0.945682, -0.250587,
		44.722702, 45.922146, 49.377335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944988, 46.182552, 49.601372>,  <44.577732, 46.584122, 49.552746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944988, 46.182552, 49.601372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233570, 45.912712, 49.663868>,  <44.406719, 45.750809, 49.701366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233570, 45.912712, 49.663868>,  <43.944988, 46.182552, 49.601372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233570, 45.912712, 49.663868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472403, -0.314526, 0.823352,
		-0.506294, -0.667821, -0.545601,
		0.721458, -0.674603, 0.156239,
		44.450008, 45.710331, 49.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580067, 45.525681, 49.734882>,  <43.944988, 46.182552, 49.601372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580067, 45.525681, 49.734882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943611, 45.436035, 49.875595>,  <44.161736, 45.382248, 49.960022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943611, 45.436035, 49.875595>,  <43.580067, 45.525681, 49.734882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943611, 45.436035, 49.875595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416447, -0.440173, 0.795499,
		-0.023435, -0.869495, -0.493386,
		0.908858, -0.224112, 0.351783,
		44.216267, 45.368801, 49.981129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670471, 44.762955, 49.945095>,  <43.580067, 45.525681, 49.734882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670471, 44.762955, 49.945095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935318, 44.970932, 50.160965>,  <44.094227, 45.095718, 50.290489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935318, 44.970932, 50.160965>,  <43.670471, 44.762955, 49.945095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935318, 44.970932, 50.160965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368746, -0.400891, 0.838638,
		0.652399, -0.754283, -0.073710,
		0.662120, 0.519946, 0.539679,
		44.133953, 45.126915, 50.322868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942188, 44.290413, 50.504063>,  <43.670471, 44.762955, 49.945095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942188, 44.290413, 50.504063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013550, 44.665581, 50.623051>,  <44.056366, 44.890682, 50.694443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013550, 44.665581, 50.623051>,  <43.942188, 44.290413, 50.504063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013550, 44.665581, 50.623051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334464, -0.226508, 0.914783,
		0.925368, -0.262694, 0.273289,
		0.178406, 0.937916, 0.297465,
		44.067070, 44.946957, 50.712292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440769, 44.135983, 51.026752>,  <43.942188, 44.290413, 50.504063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440769, 44.135983, 51.026752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302769, 44.507172, 51.083084>,  <44.219967, 44.729885, 51.116882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302769, 44.507172, 51.083084>,  <44.440769, 44.135983, 51.026752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302769, 44.507172, 51.083084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399368, -0.280918, 0.872692,
		0.849400, 0.244835, 0.467521,
		-0.345000, 0.927977, 0.140832,
		44.199268, 44.785564, 51.125336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157471, 44.091633, 51.378971>,  <44.440769, 44.135983, 51.026752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157471, 44.091633, 51.378971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370644, 43.772530, 51.491806>,  <45.498547, 43.581070, 51.559505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370644, 43.772530, 51.491806>,  <45.157471, 44.091633, 51.378971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370644, 43.772530, 51.491806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550420, 0.073638, -0.831634,
		0.642667, 0.598469, 0.478344,
		0.532932, -0.797754, 0.282085,
		45.530521, 43.533203, 51.576431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780136, 44.307743, 51.187534>,  <45.157471, 44.091633, 51.378971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780136, 44.307743, 51.187534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804794, 43.908684, 51.199463>,  <45.819588, 43.669247, 51.206619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804794, 43.908684, 51.199463>,  <45.780136, 44.307743, 51.187534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804794, 43.908684, 51.199463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623078, 0.015128, -0.782013,
		0.779726, 0.066788, 0.622548,
		0.061647, -0.997652, 0.029819,
		45.823288, 43.609386, 51.208408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472630, 44.137032, 51.151085>,  <45.780136, 44.307743, 51.187534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472630, 44.137032, 51.151085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.286873, 43.803185, 51.032585>,  <46.175419, 43.602879, 50.961487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.286873, 43.803185, 51.032585>,  <46.472630, 44.137032, 51.151085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286873, 43.803185, 51.032585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654373, -0.097956, -0.749801,
		0.596775, -0.542055, 0.591639,
		-0.464388, -0.834614, -0.296248,
		46.147556, 43.552799, 50.943710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997253, 43.856960, 50.814995>,  <46.472630, 44.137032, 51.151085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997253, 43.856960, 50.814995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.689651, 43.628716, 50.699730>,  <46.505089, 43.491768, 50.630573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.689651, 43.628716, 50.699730>,  <46.997253, 43.856960, 50.814995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689651, 43.628716, 50.699730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453246, -0.168833, -0.875250,
		0.450774, -0.803680, 0.388460,
		-0.769006, -0.570608, -0.288160,
		46.458950, 43.457535, 50.613281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248589, 43.202999, 50.553490>,  <46.997253, 43.856960, 50.814995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248589, 43.202999, 50.553490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.888283, 43.245094, 50.384941>,  <46.672100, 43.270351, 50.283813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.888283, 43.245094, 50.384941>,  <47.248589, 43.202999, 50.553490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888283, 43.245094, 50.384941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417538, -0.057192, -0.906858,
		-0.119535, -0.992801, 0.007576,
		-0.900762, 0.105238, -0.421369,
		46.618053, 43.276665, 50.258530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194462, 42.759460, 50.043903>,  <47.248589, 43.202999, 50.553490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194462, 42.759460, 50.043903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.914368, 43.031792, 49.957985>,  <46.746311, 43.195190, 49.906433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.914368, 43.031792, 49.957985>,  <47.194462, 42.759460, 50.043903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914368, 43.031792, 49.957985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399691, 0.124575, -0.908146,
		-0.591537, -0.721768, -0.359355,
		-0.700237, 0.680832, -0.214793,
		46.704296, 43.236042, 49.893547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004147, 42.553783, 49.360077>,  <47.194462, 42.759460, 50.043903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004147, 42.553783, 49.360077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.867439, 42.927887, 49.396946>,  <46.785416, 43.152348, 49.419067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.867439, 42.927887, 49.396946>,  <47.004147, 42.553783, 49.360077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867439, 42.927887, 49.396946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403335, 0.234557, -0.884480,
		-0.848833, -0.265109, -0.457384,
		-0.341766, 0.935254, 0.092172,
		46.764908, 43.208462, 49.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621384, 42.766964, 48.651276>,  <47.004147, 42.553783, 49.360077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621384, 42.766964, 48.651276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713287, 43.109756, 48.835793>,  <46.768429, 43.315434, 48.946503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713287, 43.109756, 48.835793>,  <46.621384, 42.766964, 48.651276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713287, 43.109756, 48.835793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377481, 0.358402, -0.853848,
		-0.897061, 0.370308, -0.241149,
		0.229759, 0.856983, 0.461293,
		46.782215, 43.366852, 48.974182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570591, 43.169075, 48.116348>,  <46.621384, 42.766964, 48.651276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570591, 43.169075, 48.116348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762871, 43.397308, 48.382690>,  <46.878239, 43.534248, 48.542496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762871, 43.397308, 48.382690>,  <46.570591, 43.169075, 48.116348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762871, 43.397308, 48.382690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584641, 0.357402, -0.728326,
		-0.653546, 0.739394, -0.161781,
		0.480700, 0.570579, 0.665859,
		46.907082, 43.568481, 48.582447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717087, 43.834320, 47.837765>,  <46.570591, 43.169075, 48.116348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717087, 43.834320, 47.837765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.983276, 43.755424, 48.125721>,  <47.142990, 43.708088, 48.298496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.983276, 43.755424, 48.125721>,  <46.717087, 43.834320, 47.837765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983276, 43.755424, 48.125721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743656, 0.258191, -0.616696,
		-0.064233, 0.945745, 0.318497,
		0.665470, -0.197240, 0.719893,
		47.182919, 43.696251, 48.341690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267780, 44.374420, 47.816399>,  <46.717087, 43.834320, 47.837765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267780, 44.374420, 47.816399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.446373, 44.074722, 48.012070>,  <47.553528, 43.894905, 48.129471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.446373, 44.074722, 48.012070>,  <47.267780, 44.374420, 47.816399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446373, 44.074722, 48.012070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765676, 0.037009, -0.642161,
		0.463032, 0.661260, 0.590201,
		0.446478, -0.749244, 0.489174,
		47.580315, 43.849949, 48.158821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.943348, 44.637291, 47.947086>,  <47.267780, 44.374420, 47.816399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.943348, 44.637291, 47.947086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.978203, 44.241234, 47.990944>,  <47.999115, 44.003601, 48.017258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.978203, 44.241234, 47.990944>,  <47.943348, 44.637291, 47.947086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.978203, 44.241234, 47.990944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628824, -0.030697, -0.776942,
		0.772650, 0.136648, 0.619951,
		0.087137, -0.990144, 0.109646,
		48.004345, 43.944191, 48.023838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.697720, 43.376667, 54.331440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719662, 42.979256, 54.291656>,  <43.732826, 42.740810, 54.267784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719662, 42.979256, 54.291656>,  <43.697720, 43.376667, 54.331440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719662, 42.979256, 54.291656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789380, 0.104153, -0.605005,
		0.611448, -0.045322, 0.789985,
		0.054859, -0.993528, -0.099461,
		43.736118, 42.681198, 54.261818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364380, 43.178692, 54.679398>,  <43.697720, 43.376667, 54.331440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364380, 43.178692, 54.679398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278084, 42.862938, 54.449501>,  <44.226307, 42.673485, 54.311565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278084, 42.862938, 54.449501>,  <44.364380, 43.178692, 54.679398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278084, 42.862938, 54.449501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800993, 0.193559, -0.566520,
		0.558449, -0.582584, 0.590534,
		-0.215742, -0.789386, -0.574739,
		44.213360, 42.626122, 54.277081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976437, 42.885651, 54.513248>,  <44.364380, 43.178692, 54.679398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976437, 42.885651, 54.513248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739304, 42.734161, 54.228966>,  <44.597023, 42.643269, 54.058395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739304, 42.734161, 54.228966>,  <44.976437, 42.885651, 54.513248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739304, 42.734161, 54.228966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710217, 0.170171, -0.683106,
		0.379653, -0.909729, 0.168095,
		-0.592837, -0.378727, -0.710711,
		44.561451, 42.620544, 54.015751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447212, 42.547482, 54.164753>,  <44.976437, 42.885651, 54.513248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447212, 42.547482, 54.164753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138973, 42.566887, 53.910564>,  <44.954029, 42.578529, 53.758053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138973, 42.566887, 53.910564>,  <45.447212, 42.547482, 54.164753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138973, 42.566887, 53.910564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630409, 0.204462, -0.748852,
		0.093598, -0.977671, -0.188143,
		-0.770600, 0.048516, -0.635470,
		44.907795, 42.581440, 53.719925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519764, 42.099136, 53.445644>,  <45.447212, 42.547482, 54.164753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519764, 42.099136, 53.445644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254333, 42.393661, 53.392708>,  <45.095078, 42.570377, 53.360947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254333, 42.393661, 53.392708>,  <45.519764, 42.099136, 53.445644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254333, 42.393661, 53.392708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421303, 0.221623, -0.879424,
		-0.618204, -0.639315, -0.457275,
		-0.663572, 0.736315, -0.132337,
		45.055264, 42.614555, 53.353008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257893, 41.903950, 52.774757>,  <45.519764, 42.099136, 53.445644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257893, 41.903950, 52.774757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190323, 42.290024, 52.854633>,  <45.149780, 42.521667, 52.902561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190323, 42.290024, 52.854633>,  <45.257893, 41.903950, 52.774757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190323, 42.290024, 52.854633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282690, 0.241538, -0.928303,
		-0.944219, -0.100364, -0.313651,
		-0.168927, 0.965187, 0.199693,
		45.139645, 42.579578, 52.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905262, 42.215179, 52.128647>,  <45.257893, 41.903950, 52.774757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905262, 42.215179, 52.128647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030830, 42.532265, 52.337669>,  <45.106171, 42.722515, 52.463081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030830, 42.532265, 52.337669>,  <44.905262, 42.215179, 52.128647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030830, 42.532265, 52.337669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303273, 0.437828, -0.846364,
		-0.899710, 0.424170, -0.102963,
		0.313922, 0.792708, 0.522557,
		45.125008, 42.770077, 52.494438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557869, 42.832451, 51.763851>,  <44.905262, 42.215179, 52.128647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557869, 42.832451, 51.763851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873749, 42.952965, 51.977619>,  <45.063278, 43.025272, 52.105881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873749, 42.952965, 51.977619>,  <44.557869, 42.832451, 51.763851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873749, 42.952965, 51.977619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388096, 0.429328, -0.815512,
		-0.475141, 0.851415, 0.222113,
		0.789698, 0.301282, 0.534422,
		45.110657, 43.043350, 52.137947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591866, 43.501854, 51.593056>,  <44.557869, 42.832451, 51.763851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591866, 43.501854, 51.593056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955002, 43.418732, 51.738739>,  <45.172882, 43.368858, 51.826149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955002, 43.418732, 51.738739>,  <44.591866, 43.501854, 51.593056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955002, 43.418732, 51.738739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410910, 0.267773, -0.871465,
		0.083574, 0.940804, 0.328485,
		0.907837, -0.207809, 0.364207,
		45.227352, 43.356388, 51.848000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502190, 44.282925, 51.720009>,  <44.591866, 43.501854, 51.593056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502190, 44.282925, 51.720009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239151, 44.565430, 51.615124>,  <44.081329, 44.734932, 51.552193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239151, 44.565430, 51.615124>,  <44.502190, 44.282925, 51.720009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239151, 44.565430, 51.615124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528590, -0.184541, 0.828575,
		0.536805, 0.683472, 0.494679,
		-0.657596, 0.706265, -0.262214,
		44.041874, 44.777309, 51.536461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373837, 44.779362, 52.288399>,  <44.502190, 44.282925, 51.720009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373837, 44.779362, 52.288399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044136, 44.834274, 52.068665>,  <43.846317, 44.867222, 51.936825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044136, 44.834274, 52.068665>,  <44.373837, 44.779362, 52.288399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044136, 44.834274, 52.068665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566016, -0.173440, 0.805943,
		0.015364, 0.975229, 0.220661,
		-0.824251, 0.137280, -0.549331,
		43.796860, 44.875458, 51.903866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922714, 45.299370, 52.672874>,  <44.373837, 44.779362, 52.288399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922714, 45.299370, 52.672874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697594, 45.113289, 52.399570>,  <43.562523, 45.001640, 52.235588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697594, 45.113289, 52.399570>,  <43.922714, 45.299370, 52.672874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697594, 45.113289, 52.399570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770020, -0.005479, 0.637996,
		-0.300539, 0.885189, -0.355130,
		-0.562801, -0.465200, -0.683260,
		43.528755, 44.973728, 52.194592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341202, 45.676563, 52.569183>,  <43.922714, 45.299370, 52.672874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341202, 45.676563, 52.569183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209747, 45.324448, 52.432304>,  <43.130875, 45.113178, 52.350178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209747, 45.324448, 52.432304>,  <43.341202, 45.676563, 52.569183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209747, 45.324448, 52.432304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792738, 0.060149, 0.606587,
		-0.513388, 0.470614, -0.717604,
		-0.328632, -0.880287, -0.342194,
		43.111156, 45.060360, 52.329647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608959, 45.821457, 52.377338>,  <43.341202, 45.676563, 52.569183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608959, 45.821457, 52.377338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651356, 45.424889, 52.407948>,  <42.676796, 45.186947, 52.426311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651356, 45.424889, 52.407948>,  <42.608959, 45.821457, 52.377338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651356, 45.424889, 52.407948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868750, -0.054891, 0.492199,
		-0.483775, -0.118647, -0.867113,
		0.105995, -0.991418, 0.076519,
		42.683155, 45.127464, 52.430904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902874, 45.464931, 52.124714>,  <42.608959, 45.821457, 52.377338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902874, 45.464931, 52.124714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087612, 45.194817, 52.354733>,  <42.198456, 45.032745, 52.492744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087612, 45.194817, 52.354733>,  <41.902874, 45.464931, 52.124714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087612, 45.194817, 52.354733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794332, -0.026439, 0.606908,
		-0.394637, -0.737077, -0.548616,
		0.461843, -0.675291, 0.575050,
		42.226166, 44.992229, 52.527248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441044, 44.857841, 52.169640>,  <41.902874, 45.464931, 52.124714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441044, 44.857841, 52.169640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680527, 44.839584, 52.489506>,  <41.824215, 44.828629, 52.681427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680527, 44.839584, 52.489506>,  <41.441044, 44.857841, 52.169640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680527, 44.839584, 52.489506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798292, -0.115555, 0.591081,
		0.065425, -0.992252, -0.105623,
		0.598706, -0.045647, 0.799667,
		41.860138, 44.825890, 52.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251190, 44.247284, 52.562218>,  <41.441044, 44.857841, 52.169640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251190, 44.247284, 52.562218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451515, 44.464958, 52.831451>,  <41.571709, 44.595562, 52.992992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451515, 44.464958, 52.831451>,  <41.251190, 44.247284, 52.562218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451515, 44.464958, 52.831451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666128, -0.254224, 0.701173,
		0.552686, -0.799517, 0.235182,
		0.500811, 0.544190, 0.673087,
		41.601757, 44.628216, 53.033379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287777, 43.857491, 53.124844>,  <41.251190, 44.247284, 52.562218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287777, 43.857491, 53.124844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377983, 44.213219, 53.283966>,  <41.432106, 44.426655, 53.379440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377983, 44.213219, 53.283966>,  <41.287777, 43.857491, 53.124844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377983, 44.213219, 53.283966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722273, -0.121406, 0.680869,
		0.653807, -0.440875, 0.614952,
		0.225519, 0.889320, 0.397808,
		41.445641, 44.480015, 53.403309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275772, 43.717857, 53.794773>,  <41.287777, 43.857491, 53.124844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275772, 43.717857, 53.794773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212250, 44.112274, 53.774738>,  <41.174137, 44.348923, 53.762718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212250, 44.112274, 53.774738>,  <41.275772, 43.717857, 53.794773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212250, 44.112274, 53.774738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716464, -0.080187, 0.693000,
		0.679309, 0.145933, 0.719196,
		-0.158802, 0.986040, -0.050085,
		41.164608, 44.408085, 53.759712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285320, 43.912994, 54.538429>,  <41.275772, 43.717857, 53.794773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285320, 43.912994, 54.538429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089340, 44.191689, 54.328854>,  <40.971752, 44.358906, 54.203110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089340, 44.191689, 54.328854>,  <41.285320, 43.912994, 54.538429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089340, 44.191689, 54.328854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750924, -0.032035, 0.659611,
		0.442790, 0.716614, 0.538890,
		-0.489950, 0.696734, -0.523938,
		40.942356, 44.400707, 54.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120625, 44.448986, 54.952339>,  <41.285320, 43.912994, 54.538429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120625, 44.448986, 54.952339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850983, 44.475037, 54.658035>,  <40.689198, 44.490665, 54.481453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850983, 44.475037, 54.658035>,  <41.120625, 44.448986, 54.952339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850983, 44.475037, 54.658035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733800, 0.054731, 0.677158,
		0.084369, 0.996375, 0.010895,
		-0.674107, 0.065126, -0.735757,
		40.648750, 44.494576, 54.437309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578312, 44.876945, 55.214642>,  <41.120625, 44.448986, 54.952339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578312, 44.876945, 55.214642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397682, 44.706581, 54.901035>,  <40.289307, 44.604362, 54.712872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397682, 44.706581, 54.901035>,  <40.578312, 44.876945, 55.214642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397682, 44.706581, 54.901035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838644, -0.097333, 0.535912,
		-0.304563, 0.899513, -0.313238,
		-0.451571, -0.425914, -0.784015,
		40.262211, 44.578808, 54.665833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786556, 45.100521, 55.223217>,  <40.578312, 44.876945, 55.214642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786556, 45.100521, 55.223217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806477, 44.774185, 54.992767>,  <39.818428, 44.578384, 54.854496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806477, 44.774185, 54.992767>,  <39.786556, 45.100521, 55.223217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806477, 44.774185, 54.992767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765395, -0.401751, 0.502758,
		-0.641631, 0.415927, -0.644449,
		0.049798, -0.815843, -0.576124,
		39.821415, 44.529430, 54.819931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.608761, 36.498108, 52.851780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562359, 36.863060, 53.008801>,  <40.534519, 37.082031, 53.103012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562359, 36.863060, 53.008801>,  <40.608761, 36.498108, 52.851780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562359, 36.863060, 53.008801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426372, 0.402699, -0.809963,
		-0.897079, 0.073415, -0.435730,
		-0.116005, 0.912383, 0.392555,
		40.527557, 37.136776, 53.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402340, 36.897675, 52.310596>,  <40.608761, 36.498108, 52.851780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402340, 36.897675, 52.310596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553577, 37.151802, 52.579941>,  <40.644321, 37.304279, 52.741547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553577, 37.151802, 52.579941>,  <40.402340, 36.897675, 52.310596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553577, 37.151802, 52.579941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613452, 0.372806, -0.696198,
		-0.693341, 0.676304, -0.248781,
		0.378095, 0.635318, 0.673362,
		40.667007, 37.342396, 52.781948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331566, 37.581097, 51.985828>,  <40.402340, 36.897675, 52.310596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331566, 37.581097, 51.985828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629448, 37.583427, 52.252777>,  <40.808178, 37.584827, 52.412945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629448, 37.583427, 52.252777>,  <40.331566, 37.581097, 51.985828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629448, 37.583427, 52.252777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580343, 0.488146, -0.651855,
		-0.329575, 0.872743, 0.360140,
		0.744703, 0.005830, 0.667371,
		40.852859, 37.585175, 52.452988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582848, 38.246025, 52.037460>,  <40.331566, 37.581097, 51.985828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582848, 38.246025, 52.037460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883358, 38.015739, 52.166546>,  <41.063663, 37.877567, 52.243996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883358, 38.015739, 52.166546>,  <40.582848, 38.246025, 52.037460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883358, 38.015739, 52.166546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631373, 0.484505, -0.605494,
		0.192237, 0.658642, 0.727486,
		0.751274, -0.575714, 0.322709,
		41.108742, 37.843025, 52.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138447, 38.744141, 52.076931>,  <40.582848, 38.246025, 52.037460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138447, 38.744141, 52.076931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276482, 38.368713, 52.075787>,  <41.359303, 38.143456, 52.075100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276482, 38.368713, 52.075787>,  <41.138447, 38.744141, 52.076931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276482, 38.368713, 52.075787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612721, 0.227591, -0.756819,
		0.710977, 0.259413, 0.653618,
		0.345086, -0.938567, -0.002865,
		41.380009, 38.087143, 52.074928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811939, 38.896889, 51.979549>,  <41.138447, 38.744141, 52.076931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811939, 38.896889, 51.979549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818810, 38.503517, 51.907360>,  <41.822933, 38.267494, 51.864044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818810, 38.503517, 51.907360>,  <41.811939, 38.896889, 51.979549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818810, 38.503517, 51.907360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595021, 0.155115, -0.788599,
		0.803526, -0.093841, 0.587826,
		0.017177, -0.983429, -0.180476,
		41.823963, 38.208488, 51.853218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458904, 38.700871, 52.067814>,  <41.811939, 38.896889, 51.979549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458904, 38.700871, 52.067814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284840, 38.441689, 51.817764>,  <42.180401, 38.286179, 51.667732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284840, 38.441689, 51.817764>,  <42.458904, 38.700871, 52.067814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284840, 38.441689, 51.817764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690533, 0.205346, -0.693539,
		0.577751, -0.733474, 0.358077,
		-0.435163, -0.647957, -0.625127,
		42.154289, 38.247303, 51.630226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018440, 38.335461, 51.784058>,  <42.458904, 38.700871, 52.067814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018440, 38.335461, 51.784058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.715740, 38.294952, 51.525734>,  <42.534119, 38.270645, 51.370739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.715740, 38.294952, 51.525734>,  <43.018440, 38.335461, 51.784058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715740, 38.294952, 51.525734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638177, 0.099593, -0.763421,
		0.141635, -0.989861, -0.010735,
		-0.756749, -0.101276, -0.645812,
		42.488716, 38.264568, 51.331989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345032, 38.047348, 51.310513>,  <43.018440, 38.335461, 51.784058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345032, 38.047348, 51.310513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.003639, 38.128067, 51.118328>,  <42.798801, 38.176498, 51.003017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.003639, 38.128067, 51.118328>,  <43.345032, 38.047348, 51.310513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003639, 38.128067, 51.118328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498925, 0.050235, -0.865188,
		-0.150455, -0.978138, -0.143555,
		-0.853485, 0.201795, -0.480460,
		42.747593, 38.188606, 50.974190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322048, 37.584141, 50.742378>,  <43.345032, 38.047348, 51.310513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322048, 37.584141, 50.742378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.089634, 37.902756, 50.675533>,  <42.950184, 38.093925, 50.635426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.089634, 37.902756, 50.675533>,  <43.322048, 37.584141, 50.742378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089634, 37.902756, 50.675533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469733, 0.160528, -0.868091,
		-0.664638, -0.582893, -0.467431,
		-0.581040, 0.796534, -0.167112,
		42.915321, 38.141716, 50.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176834, 37.567680, 50.140575>,  <43.322048, 37.584141, 50.742378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176834, 37.567680, 50.140575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.118362, 37.960426, 50.188850>,  <43.083279, 38.196075, 50.217815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.118362, 37.960426, 50.188850>,  <43.176834, 37.567680, 50.140575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118362, 37.960426, 50.188850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349849, 0.165426, -0.922085,
		-0.925331, -0.092568, -0.367687,
		-0.146180, 0.981868, 0.120689,
		43.074509, 38.254986, 50.225056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941807, 37.893452, 49.538673>,  <43.176834, 37.567680, 50.140575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941807, 37.893452, 49.538673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.041275, 38.232727, 49.725754>,  <43.100956, 38.436291, 49.838001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.041275, 38.232727, 49.725754>,  <42.941807, 37.893452, 49.538673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041275, 38.232727, 49.725754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351042, 0.371119, -0.859675,
		-0.902736, 0.377959, -0.205462,
		0.248671, 0.848185, 0.467702,
		43.115875, 38.487183, 49.866066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734303, 38.377609, 49.046932>,  <42.941807, 37.893452, 49.538673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734303, 38.377609, 49.046932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.988426, 38.563087, 49.293953>,  <43.140900, 38.674374, 49.442165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.988426, 38.563087, 49.293953>,  <42.734303, 38.377609, 49.046932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988426, 38.563087, 49.293953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446092, 0.432407, -0.783598,
		-0.630382, 0.773313, 0.067864,
		0.635311, 0.463693, 0.617551,
		43.179020, 38.702194, 49.479218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764385, 39.109097, 48.801311>,  <42.734303, 38.377609, 49.046932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764385, 39.109097, 48.801311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101223, 39.029449, 49.001804>,  <43.303326, 38.981663, 49.122101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101223, 39.029449, 49.001804>,  <42.764385, 39.109097, 48.801311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101223, 39.029449, 49.001804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538151, 0.371723, -0.756449,
		-0.035700, 0.906739, 0.420179,
		0.842092, -0.199115, 0.501233,
		43.353851, 38.969715, 49.152176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220966, 39.614159, 48.906334>,  <42.764385, 39.109097, 48.801311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220966, 39.614159, 48.906334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.929070, 39.782936, 48.691135>,  <41.753933, 39.884205, 48.562016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.929070, 39.782936, 48.691135>,  <42.220966, 39.614159, 48.906334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929070, 39.782936, 48.691135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654951, -0.205540, 0.727181,
		0.196252, 0.883014, 0.426346,
		-0.729742, 0.421946, -0.537994,
		41.710148, 39.909519, 48.529736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916298, 40.012321, 49.363186>,  <42.220966, 39.614159, 48.906334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916298, 40.012321, 49.363186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647533, 39.920044, 49.081673>,  <41.486275, 39.864677, 48.912766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647533, 39.920044, 49.081673>,  <41.916298, 40.012321, 49.363186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647533, 39.920044, 49.081673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641994, -0.292386, 0.708770,
		-0.369287, 0.928056, 0.048352,
		-0.671916, -0.230698, -0.703781,
		41.445957, 39.850834, 48.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266685, 40.335167, 49.660404>,  <41.916298, 40.012321, 49.363186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266685, 40.335167, 49.660404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153755, 40.065201, 49.387703>,  <41.085999, 39.903221, 49.224083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153755, 40.065201, 49.387703>,  <41.266685, 40.335167, 49.660404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153755, 40.065201, 49.387703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862909, -0.131839, 0.487859,
		-0.419144, 0.726024, -0.545167,
		-0.282323, -0.674913, -0.681752,
		41.069057, 39.862728, 49.183178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620461, 40.617359, 49.482616>,  <41.266685, 40.335167, 49.660404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620461, 40.617359, 49.482616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648201, 40.227951, 49.395481>,  <40.664845, 39.994308, 49.343201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648201, 40.227951, 49.395481>,  <40.620461, 40.617359, 49.482616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648201, 40.227951, 49.395481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823802, -0.179041, 0.537861,
		-0.562619, 0.142158, -0.814402,
		0.069350, -0.973517, -0.217842,
		40.669006, 39.935898, 49.330128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964428, 40.356106, 49.286774>,  <40.620461, 40.617359, 49.482616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964428, 40.356106, 49.286774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166122, 40.024796, 49.384514>,  <40.287140, 39.826008, 49.443157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166122, 40.024796, 49.384514>,  <39.964428, 40.356106, 49.286774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166122, 40.024796, 49.384514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733829, -0.261814, 0.626856,
		-0.455235, -0.495394, -0.739828,
		0.504238, -0.828274, 0.244348,
		40.317394, 39.776314, 49.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438946, 39.835213, 49.402615>,  <39.964428, 40.356106, 49.286774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438946, 39.835213, 49.402615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756172, 39.665092, 49.577042>,  <39.946510, 39.563019, 49.681698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756172, 39.665092, 49.577042>,  <39.438946, 39.835213, 49.402615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756172, 39.665092, 49.577042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599199, -0.415961, 0.684059,
		-0.109546, -0.803799, -0.584728,
		0.793070, -0.425304, 0.436069,
		39.994095, 39.537502, 49.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291569, 39.181229, 49.523800>,  <39.438946, 39.835213, 49.402615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291569, 39.181229, 49.523800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586777, 39.237892, 49.787697>,  <39.763901, 39.271889, 49.946037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586777, 39.237892, 49.787697>,  <39.291569, 39.181229, 49.523800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586777, 39.237892, 49.787697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560947, -0.414639, 0.716529,
		0.375059, -0.898892, -0.226548,
		0.738017, 0.141659, 0.659745,
		39.808182, 39.280392, 49.985619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328312, 38.534954, 49.915211>,  <39.291569, 39.181229, 49.523800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328312, 38.534954, 49.915211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.485931, 38.824844, 50.141308>,  <39.580505, 38.998779, 50.276966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.485931, 38.824844, 50.141308>,  <39.328312, 38.534954, 49.915211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485931, 38.824844, 50.141308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521867, -0.329816, 0.786687,
		0.756557, -0.604975, 0.248246,
		0.394051, 0.724725, 0.565241,
		39.604145, 39.042263, 50.310879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531048, 38.234322, 50.473186>,  <39.328312, 38.534954, 49.915211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531048, 38.234322, 50.473186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561409, 38.608902, 50.610184>,  <39.579628, 38.833649, 50.692383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561409, 38.608902, 50.610184>,  <39.531048, 38.234322, 50.473186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561409, 38.608902, 50.610184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574102, -0.239795, 0.782883,
		0.815258, -0.256054, 0.519414,
		0.075907, 0.936448, 0.342495,
		39.584183, 38.889835, 50.712933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670357, 38.114285, 51.110096>,  <39.531048, 38.234322, 50.473186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670357, 38.114285, 51.110096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551304, 38.495682, 51.091038>,  <39.479874, 38.724518, 51.079601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551304, 38.495682, 51.091038>,  <39.670357, 38.114285, 51.110096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551304, 38.495682, 51.091038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615713, -0.153577, 0.772860,
		0.729597, 0.259364, 0.632786,
		-0.297634, 0.953491, -0.047645,
		39.462013, 38.781731, 51.076744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541321, 38.270645, 51.762688>,  <39.670357, 38.114285, 51.110096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541321, 38.270645, 51.762688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330605, 38.536476, 51.550713>,  <39.204174, 38.695972, 51.423527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330605, 38.536476, 51.550713>,  <39.541321, 38.270645, 51.762688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330605, 38.536476, 51.550713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721481, -0.019970, 0.692146,
		0.449400, 0.746955, 0.489998,
		-0.526787, 0.664574, -0.529940,
		39.172569, 38.735847, 51.391731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423473, 38.760998, 52.197186>,  <39.541321, 38.270645, 51.762688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423473, 38.760998, 52.197186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133728, 38.789062, 51.922848>,  <38.959881, 38.805901, 51.758244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133728, 38.789062, 51.922848>,  <39.423473, 38.760998, 52.197186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133728, 38.789062, 51.922848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685009, 0.039137, 0.727482,
		0.077885, 0.996768, 0.019714,
		-0.724359, 0.070164, -0.685843,
		38.916420, 38.810112, 51.717094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991413, 39.318478, 52.447720>,  <39.423473, 38.760998, 52.197186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991413, 39.318478, 52.447720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767212, 39.135933, 52.171295>,  <38.632690, 39.026405, 52.005440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767212, 39.135933, 52.171295>,  <38.991413, 39.318478, 52.447720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767212, 39.135933, 52.171295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742060, -0.093706, 0.663751,
		-0.367666, 0.884848, -0.286123,
		-0.560507, -0.456359, -0.691063,
		38.599060, 38.999023, 51.963978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353336, 39.629276, 52.476059>,  <38.991413, 39.318478, 52.447720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353336, 39.629276, 52.476059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297421, 39.263161, 52.324955>,  <38.263870, 39.043491, 52.234291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297421, 39.263161, 52.324955>,  <38.353336, 39.629276, 52.476059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297421, 39.263161, 52.324955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758563, -0.146221, 0.634981,
		-0.636429, 0.375317, -0.673866,
		-0.139786, -0.915290, -0.377761,
		38.255486, 38.988575, 52.211628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035797, 40.126717, 51.992184>,  <38.353336, 39.629276, 52.476059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035797, 40.126717, 51.992184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942184, 40.508499, 52.066208>,  <37.886017, 40.737568, 52.110622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942184, 40.508499, 52.066208>,  <38.035797, 40.126717, 51.992184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942184, 40.508499, 52.066208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461942, 0.276653, -0.842658,
		-0.855477, -0.111716, -0.505646,
		-0.234028, 0.954454, 0.185064,
		37.871975, 40.794834, 52.121727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009769, 40.438038, 51.334721>,  <38.035797, 40.126717, 51.992184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009769, 40.438038, 51.334721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041786, 40.754517, 51.577240>,  <38.060997, 40.944405, 51.722752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041786, 40.754517, 51.577240>,  <38.009769, 40.438038, 51.334721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041786, 40.754517, 51.577240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459134, 0.510616, -0.726957,
		-0.884753, 0.336559, -0.322396,
		0.080043, 0.791201, 0.606295,
		38.065800, 40.991879, 51.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196987, 40.888142, 50.856468>,  <38.009769, 40.438038, 51.334721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196987, 40.888142, 50.856468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237896, 41.113991, 51.184063>,  <38.262440, 41.249500, 51.380619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237896, 41.113991, 51.184063>,  <38.196987, 40.888142, 50.856468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237896, 41.113991, 51.184063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601535, 0.620621, -0.502977,
		-0.792273, 0.544092, -0.276166,
		0.102271, 0.564619, 0.818991,
		38.268578, 41.283375, 51.429760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977901, 41.626503, 50.785721>,  <38.196987, 40.888142, 50.856468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977901, 41.626503, 50.785721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258316, 41.601509, 51.069874>,  <38.426563, 41.586514, 51.240368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258316, 41.601509, 51.069874>,  <37.977901, 41.626503, 50.785721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258316, 41.601509, 51.069874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534155, 0.705994, -0.465028,
		-0.472471, 0.705456, 0.528301,
		0.701034, -0.062483, 0.710385,
		38.468628, 41.582764, 51.282990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131470, 42.343967, 50.892845>,  <37.977901, 41.626503, 50.785721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131470, 42.343967, 50.892845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431526, 42.108704, 51.013748>,  <38.611561, 41.967545, 51.086288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431526, 42.108704, 51.013748>,  <38.131470, 42.343967, 50.892845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431526, 42.108704, 51.013748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656628, 0.608393, -0.445755,
		0.078282, 0.532851, 0.842581,
		0.750141, -0.588157, 0.302259,
		38.656567, 41.932255, 51.104427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534092, 42.688110, 51.467407>,  <38.131470, 42.343967, 50.892845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534092, 42.688110, 51.467407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792259, 42.424454, 51.313023>,  <38.947159, 42.266258, 51.220390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792259, 42.424454, 51.313023>,  <38.534092, 42.688110, 51.467407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792259, 42.424454, 51.313023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591161, 0.751037, -0.294062,
		0.483703, -0.038376, 0.874390,
		0.645415, -0.659144, -0.385965,
		38.985882, 42.226711, 51.197231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097546, 43.068047, 51.494843>,  <38.534092, 42.688110, 51.467407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097546, 43.068047, 51.494843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229820, 42.778122, 51.253082>,  <39.309185, 42.604168, 51.108028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229820, 42.778122, 51.253082>,  <39.097546, 43.068047, 51.494843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229820, 42.778122, 51.253082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787804, 0.564628, -0.246090,
		0.519629, -0.394769, 0.757722,
		0.330683, -0.724812, -0.604397,
		39.329025, 42.560677, 51.071762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862530, 43.093922, 51.560280>,  <39.097546, 43.068047, 51.494843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862530, 43.093922, 51.560280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790989, 42.905083, 51.214996>,  <39.748062, 42.791779, 51.007828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790989, 42.905083, 51.214996>,  <39.862530, 43.093922, 51.560280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790989, 42.905083, 51.214996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719312, 0.535850, -0.442103,
		0.671268, -0.699989, 0.243749,
		-0.178854, -0.472101, -0.863210,
		39.737331, 42.763451, 50.956032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517452, 43.116997, 51.316711>,  <39.862530, 43.093922, 51.560280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517452, 43.116997, 51.316711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301502, 43.027466, 50.992134>,  <40.171932, 42.973747, 50.797390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301502, 43.027466, 50.992134>,  <40.517452, 43.116997, 51.316711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301502, 43.027466, 50.992134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628671, 0.533814, -0.565522,
		0.559742, -0.815439, -0.147473,
		-0.539872, -0.223834, -0.811441,
		40.139542, 42.960316, 50.748703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983814, 42.916985, 50.716351>,  <40.517452, 43.116997, 51.316711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983814, 42.916985, 50.716351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650311, 43.012764, 50.517345>,  <40.450211, 43.070232, 50.397942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650311, 43.012764, 50.517345>,  <40.983814, 42.916985, 50.716351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650311, 43.012764, 50.517345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548800, 0.458274, -0.699145,
		0.060584, -0.855949, -0.513500,
		-0.833755, 0.239452, -0.497509,
		40.400185, 43.084599, 50.368092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008717, 42.545326, 50.062862>,  <40.983814, 42.916985, 50.716351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008717, 42.545326, 50.062862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776558, 42.869766, 50.033859>,  <40.637264, 43.064430, 50.016457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776558, 42.869766, 50.033859>,  <41.008717, 42.545326, 50.062862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776558, 42.869766, 50.033859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441718, 0.238771, -0.864797,
		-0.684125, -0.533951, -0.496859,
		-0.580395, 0.811101, -0.072506,
		40.602440, 43.113098, 50.012108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868172, 42.578884, 49.334312>,  <41.008717, 42.545326, 50.062862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868172, 42.578884, 49.334312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779625, 42.942680, 49.475071>,  <40.726498, 43.160957, 49.559525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779625, 42.942680, 49.475071>,  <40.868172, 42.578884, 49.334312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779625, 42.942680, 49.475071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107959, 0.381485, -0.918049,
		-0.969195, -0.165239, -0.182637,
		-0.221371, 0.909486, 0.351895,
		40.713215, 43.215527, 49.580639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310692, 42.704506, 48.914833>,  <40.868172, 42.578884, 49.334312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310692, 42.704506, 48.914833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.464684, 43.037354, 49.074520>,  <40.557079, 43.237061, 49.170334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.464684, 43.037354, 49.074520>,  <40.310692, 42.704506, 48.914833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464684, 43.037354, 49.074520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166329, 0.362920, -0.916855,
		-0.907815, 0.419369, 0.001310,
		0.384976, 0.832117, 0.399218,
		40.580177, 43.286987, 49.194286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093800, 43.310577, 48.440533>,  <40.310692, 42.704506, 48.914833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093800, 43.310577, 48.440533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411392, 43.442848, 48.644592>,  <40.601948, 43.522209, 48.767029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411392, 43.442848, 48.644592>,  <40.093800, 43.310577, 48.440533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411392, 43.442848, 48.644592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292434, 0.527947, -0.797342,
		-0.532991, 0.782258, 0.322479,
		0.793979, 0.330672, 0.510150,
		40.649586, 43.542049, 48.797638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.093674, 44.984898, 54.976284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272644, 44.632164, 54.916721>,  <39.380028, 44.420525, 54.880981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272644, 44.632164, 54.916721>,  <39.093674, 44.984898, 54.976284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272644, 44.632164, 54.916721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685758, -0.445175, 0.575808,
		-0.574059, -0.155515, -0.803910,
		0.447428, -0.881836, -0.148911,
		39.406872, 44.367615, 54.872047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528706, 44.647957, 54.706127>,  <39.093674, 44.984898, 54.976284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528706, 44.647957, 54.706127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786137, 44.374817, 54.844418>,  <38.940594, 44.210934, 54.927391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786137, 44.374817, 54.844418>,  <38.528706, 44.647957, 54.706127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786137, 44.374817, 54.844418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724652, -0.398225, 0.562402,
		-0.246359, -0.612481, -0.751116,
		0.643574, -0.682850, 0.345729,
		38.979210, 44.169960, 54.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211067, 43.953621, 54.738770>,  <38.528706, 44.647957, 54.706127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211067, 43.953621, 54.738770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499069, 43.918304, 55.014103>,  <38.671871, 43.897114, 55.179302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499069, 43.918304, 55.014103>,  <38.211067, 43.953621, 54.738770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499069, 43.918304, 55.014103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655999, -0.410191, 0.633569,
		0.226410, -0.907716, -0.353256,
		0.720003, -0.088290, 0.688332,
		38.715069, 43.891819, 55.220604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036385, 43.360901, 54.915974>,  <38.211067, 43.953621, 54.738770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036385, 43.360901, 54.915974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297783, 43.444130, 55.207081>,  <38.454620, 43.494068, 55.381744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297783, 43.444130, 55.207081>,  <38.036385, 43.360901, 54.915974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297783, 43.444130, 55.207081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476569, -0.633881, 0.609161,
		0.588070, -0.744916, -0.315076,
		0.653495, 0.208074, 0.727770,
		38.493832, 43.506554, 55.425411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280025, 42.763088, 55.202923>,  <38.036385, 43.360901, 54.915974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280025, 42.763088, 55.202923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346470, 43.013184, 55.507942>,  <38.386337, 43.163242, 55.690956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346470, 43.013184, 55.507942>,  <38.280025, 42.763088, 55.202923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346470, 43.013184, 55.507942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381228, -0.672450, 0.634410,
		0.909435, -0.396090, 0.126655,
		0.166114, 0.625238, 0.762550,
		38.396305, 43.200756, 55.736706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531174, 42.327869, 55.849899>,  <38.280025, 42.763088, 55.202923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531174, 42.327869, 55.849899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392609, 42.681519, 55.975330>,  <38.309471, 42.893707, 56.050587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392609, 42.681519, 55.975330>,  <38.531174, 42.327869, 55.849899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392609, 42.681519, 55.975330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571429, -0.463972, 0.676904,
		0.743955, 0.055300, 0.665937,
		-0.346409, 0.884122, 0.313574,
		38.288685, 42.946754, 56.069405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544025, 42.231174, 56.603458>,  <38.531174, 42.327869, 55.849899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544025, 42.231174, 56.603458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306843, 42.547859, 56.544685>,  <38.164532, 42.737869, 56.509422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306843, 42.547859, 56.544685>,  <38.544025, 42.231174, 56.603458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306843, 42.547859, 56.544685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665018, -0.378592, 0.643754,
		0.454040, 0.479433, 0.750993,
		-0.592957, 0.791714, -0.146936,
		38.128956, 42.785374, 56.500607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343567, 42.467892, 57.301449>,  <38.544025, 42.231174, 56.603458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343567, 42.467892, 57.301449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073158, 42.614967, 57.046009>,  <37.910915, 42.703213, 56.892746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073158, 42.614967, 57.046009>,  <38.343567, 42.467892, 57.301449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073158, 42.614967, 57.046009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735552, -0.284595, 0.614792,
		0.044310, 0.885331, 0.462845,
		-0.676018, 0.367688, -0.638596,
		37.870354, 42.725273, 56.854431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956223, 42.894714, 57.683880>,  <38.343567, 42.467892, 57.301449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956223, 42.894714, 57.683880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740990, 42.770042, 57.370621>,  <37.611851, 42.695240, 57.182663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740990, 42.770042, 57.370621>,  <37.956223, 42.894714, 57.683880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740990, 42.770042, 57.370621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632939, -0.464186, 0.619612,
		-0.556651, 0.829087, 0.052491,
		-0.538078, -0.311684, -0.783151,
		37.579567, 42.676537, 57.135677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227676, 43.164742, 57.800964>,  <37.956223, 42.894714, 57.683880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227676, 43.164742, 57.800964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207977, 42.840515, 57.567532>,  <37.196156, 42.645981, 57.427471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207977, 42.840515, 57.567532>,  <37.227676, 43.164742, 57.800964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207977, 42.840515, 57.567532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688111, -0.395962, 0.608044,
		-0.723932, 0.431514, -0.538255,
		-0.049250, -0.810561, -0.583579,
		37.193203, 42.597347, 57.392456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537224, 42.917114, 57.836452>,  <37.227676, 43.164742, 57.800964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537224, 42.917114, 57.836452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716980, 42.590691, 57.691078>,  <36.824833, 42.394836, 57.603851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716980, 42.590691, 57.691078>,  <36.537224, 42.917114, 57.836452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716980, 42.590691, 57.691078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682745, -0.576114, 0.449391,
		-0.576114, 0.046184, -0.816063,
		-0.449391, 0.816063, 0.363440,
		36.851799, 42.345871, 57.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053928, 42.549210, 57.498398>,  <36.537224, 42.917114, 57.836452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053928, 42.549210, 57.498398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340759, 42.280495, 57.572689>,  <36.512859, 42.119267, 57.617264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340759, 42.280495, 57.572689>,  <36.053928, 42.549210, 57.498398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340759, 42.280495, 57.572689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660287, -0.569426, 0.489669,
		-0.223199, -0.473763, -0.851898,
		0.717080, -0.671791, 0.185725,
		36.555882, 42.078957, 57.628407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727737, 41.866619, 57.349998>,  <36.053928, 42.549210, 57.498398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727737, 41.866619, 57.349998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022961, 41.847832, 57.619240>,  <36.200092, 41.836559, 57.780785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022961, 41.847832, 57.619240>,  <35.727737, 41.866619, 57.349998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022961, 41.847832, 57.619240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560184, -0.598742, 0.572452,
		0.376127, -0.799563, -0.468217,
		0.738054, -0.046973, 0.673106,
		36.244377, 41.833740, 57.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596123, 41.263390, 57.670338>,  <35.727737, 41.866619, 57.349998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596123, 41.263390, 57.670338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859589, 41.449768, 57.906662>,  <36.017666, 41.561596, 58.048458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859589, 41.449768, 57.906662>,  <35.596123, 41.263390, 57.670338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859589, 41.449768, 57.906662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487212, -0.334258, 0.806781,
		0.573403, -0.819245, 0.006854,
		0.658660, 0.465950, 0.590811,
		36.057186, 41.589554, 58.083904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097454, 41.341793, 57.035477>,  <35.596123, 41.263390, 57.670338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097454, 41.341793, 57.035477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911674, 41.053200, 56.830051>,  <34.800209, 40.880043, 56.706795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911674, 41.053200, 56.830051>,  <35.097454, 41.341793, 57.035477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911674, 41.053200, 56.830051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540191, 0.228731, -0.809862,
		0.701773, -0.653558, 0.283508,
		-0.464445, -0.721487, -0.513564,
		34.772343, 40.836754, 56.675983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595749, 40.892166, 56.804443>,  <35.097454, 41.341793, 57.035477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595749, 40.892166, 56.804443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.275848, 40.839363, 56.570187>,  <35.083908, 40.807682, 56.429634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.275848, 40.839363, 56.570187>,  <35.595749, 40.892166, 56.804443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275848, 40.839363, 56.570187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595510, -0.050992, -0.801728,
		0.075972, -0.989936, 0.119393,
		-0.799748, -0.132009, -0.585643,
		35.035923, 40.799759, 56.394493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811935, 40.370941, 56.417007>,  <35.595749, 40.892166, 56.804443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811935, 40.370941, 56.417007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506302, 40.522964, 56.208496>,  <35.322922, 40.614178, 56.083389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506302, 40.522964, 56.208496>,  <35.811935, 40.370941, 56.417007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506302, 40.522964, 56.208496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454348, -0.256610, -0.853065,
		-0.457983, -0.888653, 0.023391,
		-0.764081, 0.380061, -0.521280,
		35.277077, 40.636982, 56.052113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701107, 39.873516, 55.886662>,  <35.811935, 40.370941, 56.417007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701107, 39.873516, 55.886662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544357, 40.224983, 55.777573>,  <35.450306, 40.435863, 55.712120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544357, 40.224983, 55.777573>,  <35.701107, 39.873516, 55.886662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544357, 40.224983, 55.777573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496548, -0.047557, -0.866706,
		-0.774514, -0.475063, -0.417663,
		-0.391877, 0.878666, -0.272725,
		35.426796, 40.488583, 55.695755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633854, 39.812847, 55.245556>,  <35.701107, 39.873516, 55.886662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633854, 39.812847, 55.245556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617134, 40.210091, 55.289345>,  <35.607101, 40.448437, 55.315620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617134, 40.210091, 55.289345>,  <35.633854, 39.812847, 55.245556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617134, 40.210091, 55.289345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405305, 0.117006, -0.906663,
		-0.913225, 0.006473, -0.407403,
		-0.041800, 0.993110, 0.109477,
		35.604595, 40.508022, 55.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389198, 40.121006, 54.640438>,  <35.633854, 39.812847, 55.245556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389198, 40.121006, 54.640438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590210, 40.415070, 54.822426>,  <35.710815, 40.591507, 54.931618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590210, 40.415070, 54.822426>,  <35.389198, 40.121006, 54.640438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590210, 40.415070, 54.822426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438202, 0.237058, -0.867054,
		-0.745280, 0.635091, -0.203021,
		0.502530, 0.735162, 0.454973,
		35.740971, 40.635616, 54.958920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293732, 40.579639, 54.172192>,  <35.389198, 40.121006, 54.640438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293732, 40.579639, 54.172192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600304, 40.703659, 54.397205>,  <35.784248, 40.778072, 54.532215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600304, 40.703659, 54.397205>,  <35.293732, 40.579639, 54.172192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600304, 40.703659, 54.397205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533095, 0.181500, -0.826358,
		-0.358313, 0.933234, -0.026178,
		0.766435, 0.310051, 0.562536,
		35.830235, 40.796673, 54.565968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460041, 41.132088, 53.924786>,  <35.293732, 40.579639, 54.172192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460041, 41.132088, 53.924786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800621, 41.044624, 54.115456>,  <36.004971, 40.992146, 54.229858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800621, 41.044624, 54.115456>,  <35.460041, 41.132088, 53.924786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800621, 41.044624, 54.115456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522667, 0.279361, -0.805467,
		0.042960, 0.934958, 0.352149,
		0.851454, -0.218660, 0.476670,
		36.056057, 40.979027, 54.258457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977833, 41.823093, 53.985962>,  <35.460041, 41.132088, 53.924786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977833, 41.823093, 53.985962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181274, 41.479347, 54.007175>,  <36.303341, 41.273098, 54.019905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181274, 41.479347, 54.007175>,  <35.977833, 41.823093, 53.985962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181274, 41.479347, 54.007175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591568, 0.304032, -0.746734,
		0.625593, 0.411167, 0.663005,
		0.508607, -0.859364, 0.053033,
		36.333855, 41.221539, 54.023087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632240, 41.995693, 53.859558>,  <35.977833, 41.823093, 53.985962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632240, 41.995693, 53.859558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632290, 41.601295, 53.792843>,  <36.632320, 41.364658, 53.752815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632290, 41.601295, 53.792843>,  <36.632240, 41.995693, 53.859558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632290, 41.601295, 53.792843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675069, 0.123127, -0.727407,
		0.737755, -0.112501, 0.665629,
		0.000123, -0.985993, -0.166784,
		36.632328, 41.305496, 53.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364223, 41.806095, 53.728626>,  <36.632240, 41.995693, 53.859558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364223, 41.806095, 53.728626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150192, 41.503410, 53.578384>,  <37.021774, 41.321800, 53.488239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150192, 41.503410, 53.578384>,  <37.364223, 41.806095, 53.728626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150192, 41.503410, 53.578384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671133, -0.110723, -0.733021,
		0.513095, -0.644308, 0.567098,
		-0.535083, -0.756708, -0.375605,
		36.989666, 41.276398, 53.465702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926105, 41.256676, 53.588444>,  <37.364223, 41.806095, 53.728626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926105, 41.256676, 53.588444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593586, 41.172096, 53.382828>,  <37.394073, 41.121349, 53.259457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593586, 41.172096, 53.382828>,  <37.926105, 41.256676, 53.588444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593586, 41.172096, 53.382828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535426, -0.056360, -0.842699,
		0.149217, -0.975762, 0.160068,
		-0.831296, -0.211449, -0.514039,
		37.344196, 41.108662, 53.228615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061436, 40.602417, 53.309628>,  <37.926105, 41.256676, 53.588444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061436, 40.602417, 53.309628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770283, 40.771736, 53.093849>,  <37.595592, 40.873329, 52.964382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770283, 40.771736, 53.093849>,  <38.061436, 40.602417, 53.309628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770283, 40.771736, 53.093849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498345, -0.213813, -0.840200,
		-0.470998, -0.880398, -0.055319,
		-0.727883, 0.423300, -0.539447,
		37.551918, 40.898727, 52.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934181, 40.211369, 52.758911>,  <38.061436, 40.602417, 53.309628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934181, 40.211369, 52.758911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768410, 40.551064, 52.628036>,  <37.668949, 40.754879, 52.549511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768410, 40.551064, 52.628036>,  <37.934181, 40.211369, 52.758911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768410, 40.551064, 52.628036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445101, -0.124450, -0.886790,
		-0.793810, -0.513143, -0.326419,
		-0.414427, 0.849233, -0.327190,
		37.644081, 40.805832, 52.529881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594978, 39.529106, 52.538246>,  <37.934181, 40.211369, 52.758911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594978, 39.529106, 52.538246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746429, 39.161888, 52.491192>,  <37.837299, 38.941559, 52.462959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746429, 39.161888, 52.491192>,  <37.594978, 39.529106, 52.538246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746429, 39.161888, 52.491192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650994, -0.354503, 0.671219,
		-0.657910, -0.177561, -0.731865,
		0.378631, -0.918041, -0.117640,
		37.860020, 38.886475, 52.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033653, 39.209587, 52.429844>,  <37.594978, 39.529106, 52.538246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033653, 39.209587, 52.429844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299492, 38.929665, 52.534595>,  <37.458996, 38.761711, 52.597446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299492, 38.929665, 52.534595>,  <37.033653, 39.209587, 52.429844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299492, 38.929665, 52.534595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679135, -0.419594, 0.602259,
		-0.311583, -0.578110, -0.754125,
		0.664599, -0.699807, 0.261876,
		37.498871, 38.719723, 52.613159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686203, 38.628624, 52.573105>,  <37.033653, 39.209587, 52.429844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686203, 38.628624, 52.573105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031570, 38.574982, 52.767639>,  <37.238792, 38.542797, 52.884361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031570, 38.574982, 52.767639>,  <36.686203, 38.628624, 52.573105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031570, 38.574982, 52.767639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489586, -0.455326, 0.743629,
		0.121720, -0.880167, -0.458792,
		0.863417, -0.134104, 0.486340,
		37.290596, 38.534752, 52.913540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472179, 38.030178, 52.927505>,  <36.686203, 38.628624, 52.573105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472179, 38.030178, 52.927505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800564, 38.171669, 53.106796>,  <36.997593, 38.256561, 53.214371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800564, 38.171669, 53.106796>,  <36.472179, 38.030178, 52.927505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800564, 38.171669, 53.106796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255712, -0.474120, 0.842509,
		0.510529, -0.806282, -0.298781,
		0.820958, 0.353723, 0.448228,
		37.046852, 38.277786, 53.241264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761719, 37.410065, 53.250946>,  <36.472179, 38.030178, 52.927505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761719, 37.410065, 53.250946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939041, 37.719345, 53.432335>,  <37.045437, 37.904911, 53.541168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939041, 37.719345, 53.432335>,  <36.761719, 37.410065, 53.250946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939041, 37.719345, 53.432335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162948, -0.427961, 0.888987,
		0.881434, -0.467988, -0.063727,
		0.443308, 0.773199, 0.453477,
		37.072033, 37.951305, 53.568378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074940, 37.173779, 53.899727>,  <36.761719, 37.410065, 53.250946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074940, 37.173779, 53.899727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063313, 37.565926, 53.977741>,  <37.056335, 37.801212, 54.024551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063313, 37.565926, 53.977741>,  <37.074940, 37.173779, 53.899727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063313, 37.565926, 53.977741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129402, -0.197168, 0.971792,
		0.991166, 0.003011, 0.132593,
		-0.029069, 0.980365, 0.195036,
		37.054592, 37.860035, 54.036251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482872, 37.315338, 54.501900>,  <37.074940, 37.173779, 53.899727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482872, 37.315338, 54.501900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220730, 37.615128, 54.464363>,  <37.063446, 37.795002, 54.441841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220730, 37.615128, 54.464363>,  <37.482872, 37.315338, 54.501900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220730, 37.615128, 54.464363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243839, -0.092332, 0.965410,
		0.714882, 0.655567, 0.243260,
		-0.655352, 0.749471, -0.093846,
		37.024124, 37.839970, 54.436211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124275, 37.530285, 54.917751>,  <37.482872, 37.315338, 54.501900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124275, 37.530285, 54.917751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370689, 37.273102, 55.099785>,  <38.518539, 37.118793, 55.209007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370689, 37.273102, 55.099785>,  <38.124275, 37.530285, 54.917751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370689, 37.273102, 55.099785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648008, 0.085172, -0.756856,
		0.447866, 0.761151, 0.469111,
		0.616037, -0.642958, 0.455086,
		38.555500, 37.080215, 55.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793278, 37.840134, 55.103771>,  <38.124275, 37.530285, 54.917751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793278, 37.840134, 55.103771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852505, 37.445511, 55.076096>,  <38.888039, 37.208736, 55.059490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852505, 37.445511, 55.076096>,  <38.793278, 37.840134, 55.103771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852505, 37.445511, 55.076096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718837, 0.155408, -0.677585,
		0.679228, 0.050589, 0.732182,
		0.148065, -0.986554, -0.069192,
		38.896923, 37.149544, 55.055340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435261, 37.947929, 55.074535>,  <38.793278, 37.840134, 55.103771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435261, 37.947929, 55.074535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391117, 37.563911, 54.971668>,  <39.364632, 37.333500, 54.909946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391117, 37.563911, 54.971668>,  <39.435261, 37.947929, 55.074535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391117, 37.563911, 54.971668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772200, 0.080080, -0.630313,
		0.625723, -0.268145, 0.732509,
		-0.110356, -0.960044, -0.257169,
		39.358009, 37.275898, 54.894516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107899, 37.778645, 54.993389>,  <39.435261, 37.947929, 55.074535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107899, 37.778645, 54.993389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899063, 37.500252, 54.796200>,  <39.773762, 37.333214, 54.677887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899063, 37.500252, 54.796200>,  <40.107899, 37.778645, 54.993389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899063, 37.500252, 54.796200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681567, 0.007016, -0.731722,
		0.512726, -0.718022, 0.470698,
		-0.522090, -0.695985, -0.492978,
		39.742435, 37.291458, 54.648308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589539, 37.296192, 54.755344>,  <40.107899, 37.778645, 54.993389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589539, 37.296192, 54.755344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.270668, 37.239685, 54.520550>,  <40.079346, 37.205780, 54.379673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.270668, 37.239685, 54.520550>,  <40.589539, 37.296192, 54.755344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270668, 37.239685, 54.520550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601161, -0.095798, -0.793365,
		0.055845, -0.985325, 0.161292,
		-0.797175, -0.141268, -0.586989,
		40.031517, 37.197304, 54.344452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825840, 36.736053, 54.310051>,  <40.589539, 37.296192, 54.755344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825840, 36.736053, 54.310051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538605, 36.954361, 54.137314>,  <40.366264, 37.085346, 54.033672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538605, 36.954361, 54.137314>,  <40.825840, 36.736053, 54.310051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538605, 36.954361, 54.137314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541566, 0.048497, -0.839258,
		-0.437097, -0.836532, -0.330394,
		-0.718089, 0.545768, -0.431840,
		40.323177, 37.118092, 54.007763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839184, 36.550026, 53.611881>,  <40.825840, 36.736053, 54.310051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839184, 36.550026, 53.611881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.589546, 36.861809, 53.590141>,  <40.439762, 37.048878, 53.577099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.589546, 36.861809, 53.590141>,  <40.839184, 36.550026, 53.611881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589546, 36.861809, 53.590141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434510, 0.288416, -0.853239,
		-0.649387, -0.556118, -0.518680,
		-0.624098, 0.779454, -0.054345,
		40.402317, 37.095646, 53.573837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.425659, 41.092926, 59.297455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179047, 41.167213, 58.991409>,  <39.031078, 41.211784, 58.807781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179047, 41.167213, 58.991409>,  <39.425659, 41.092926, 59.297455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179047, 41.167213, 58.991409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754393, -0.138783, -0.641584,
		-0.225336, -0.972753, -0.054537,
		-0.616535, 0.185714, -0.765111,
		38.994087, 41.222927, 58.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469177, 40.500168, 58.840179>,  <39.425659, 41.092926, 59.297455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469177, 40.500168, 58.840179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333824, 40.817657, 58.637993>,  <39.252613, 41.008152, 58.516682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333824, 40.817657, 58.637993>,  <39.469177, 40.500168, 58.840179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333824, 40.817657, 58.637993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735377, -0.112097, -0.668323,
		-0.587125, -0.597861, -0.545753,
		-0.338387, 0.793723, -0.505468,
		39.232307, 41.055775, 58.486351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763134, 40.382935, 58.208454>,  <39.469177, 40.500168, 58.840179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763134, 40.382935, 58.208454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660667, 40.769470, 58.217949>,  <39.599190, 41.001392, 58.223648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660667, 40.769470, 58.217949>,  <39.763134, 40.382935, 58.208454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660667, 40.769470, 58.217949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531700, 0.161373, -0.831416,
		-0.807264, -0.200355, -0.555142,
		-0.256164, 0.966342, 0.023742,
		39.583817, 41.059372, 58.225071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503967, 40.505913, 57.531239>,  <39.763134, 40.382935, 58.208454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503967, 40.505913, 57.531239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585182, 40.864410, 57.688988>,  <39.633911, 41.079510, 57.783638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585182, 40.864410, 57.688988>,  <39.503967, 40.505913, 57.531239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585182, 40.864410, 57.688988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487822, 0.256633, -0.834368,
		-0.849003, 0.361792, -0.385099,
		0.203039, 0.896240, 0.394372,
		39.646095, 41.133282, 57.807301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322937, 40.997662, 57.006832>,  <39.503967, 40.505913, 57.531239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322937, 40.997662, 57.006832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584164, 41.168465, 57.257004>,  <39.740898, 41.270947, 57.407108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584164, 41.168465, 57.257004>,  <39.322937, 40.997662, 57.006832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584164, 41.168465, 57.257004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484846, 0.398663, -0.778455,
		-0.581746, 0.811621, 0.053318,
		0.653066, 0.427012, 0.625432,
		39.780083, 41.296570, 57.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423592, 41.619423, 56.769238>,  <39.322937, 40.997662, 57.006832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423592, 41.619423, 56.769238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750244, 41.577515, 56.996269>,  <39.946236, 41.552372, 57.132488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750244, 41.577515, 56.996269>,  <39.423592, 41.619423, 56.769238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750244, 41.577515, 56.996269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551636, 0.430913, -0.714151,
		-0.169756, 0.896291, 0.409689,
		0.816628, -0.104768, 0.567577,
		39.995232, 41.546085, 57.166542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935772, 42.248993, 56.736599>,  <39.423592, 41.619423, 56.769238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935772, 42.248993, 56.736599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161385, 41.945229, 56.866310>,  <40.296753, 41.762970, 56.944138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161385, 41.945229, 56.866310>,  <39.935772, 42.248993, 56.736599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161385, 41.945229, 56.866310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709354, 0.244579, -0.661058,
		0.422707, 0.602885, 0.676646,
		0.564035, -0.759415, 0.324274,
		40.330593, 41.717403, 56.963593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499859, 42.591904, 56.804028>,  <39.935772, 42.248993, 56.736599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499859, 42.591904, 56.804028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.584427, 42.202057, 56.774567>,  <40.635166, 41.968147, 56.756889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.584427, 42.202057, 56.774567>,  <40.499859, 42.591904, 56.804028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584427, 42.202057, 56.774567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761398, 0.211475, -0.612823,
		0.612843, 0.073484, 0.786781,
		0.211417, -0.974617, -0.073650,
		40.647854, 41.909672, 56.752472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246323, 42.521812, 56.942020>,  <40.499859, 42.591904, 56.804028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246323, 42.521812, 56.942020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.174911, 42.176079, 56.753956>,  <41.132065, 41.968639, 56.641117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.174911, 42.176079, 56.753956>,  <41.246323, 42.521812, 56.942020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174911, 42.176079, 56.753956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807856, 0.144015, -0.571514,
		0.561690, -0.481855, 0.672547,
		-0.178530, -0.864335, -0.470162,
		41.121353, 41.916779, 56.612907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869709, 42.323227, 56.866783>,  <41.246323, 42.521812, 56.942020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869709, 42.323227, 56.866783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.695244, 42.092804, 56.590260>,  <41.590565, 41.954548, 56.424343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.695244, 42.092804, 56.590260>,  <41.869709, 42.323227, 56.866783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695244, 42.092804, 56.590260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795932, 0.111448, -0.595039,
		0.419825, -0.809772, 0.409897,
		-0.436164, -0.576062, -0.691312,
		41.564396, 41.919987, 56.382866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329937, 41.820595, 56.606953>,  <41.869709, 42.323227, 56.866783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329937, 41.820595, 56.606953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.055283, 41.846306, 56.317291>,  <41.890491, 41.861732, 56.143494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.055283, 41.846306, 56.317291>,  <42.329937, 41.820595, 56.606953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055283, 41.846306, 56.317291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718786, -0.089321, -0.689470,
		-0.108996, -0.993927, 0.015133,
		-0.686635, 0.064272, -0.724156,
		41.849293, 41.865589, 56.100044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333584, 41.241337, 56.161964>,  <42.329937, 41.820595, 56.606953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333584, 41.241337, 56.161964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176559, 41.528496, 55.932003>,  <42.082344, 41.700790, 55.794025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.176559, 41.528496, 55.932003>,  <42.333584, 41.241337, 56.161964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176559, 41.528496, 55.932003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720196, -0.148830, -0.677618,
		-0.572025, -0.680052, -0.458604,
		-0.392562, 0.717899, -0.574905,
		42.058792, 41.743866, 55.759533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026829, 40.494576, 56.103191>,  <42.333584, 41.241337, 56.161964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026829, 40.494576, 56.103191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.163513, 40.118866, 56.090584>,  <42.245525, 39.893440, 56.083019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.163513, 40.118866, 56.090584>,  <42.026829, 40.494576, 56.103191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163513, 40.118866, 56.090584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500269, -0.210188, 0.839972,
		-0.795591, -0.271258, -0.541714,
		0.341710, -0.939276, -0.031522,
		42.266026, 39.837082, 56.081127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461548, 39.970909, 56.194496>,  <42.026829, 40.494576, 56.103191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461548, 39.970909, 56.194496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.786140, 39.776550, 56.324356>,  <41.980896, 39.659935, 56.402271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.786140, 39.776550, 56.324356>,  <41.461548, 39.970909, 56.194496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786140, 39.776550, 56.324356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533047, -0.387798, 0.751980,
		-0.239491, -0.783271, -0.573699,
		0.811483, -0.485901, 0.324646,
		42.029587, 39.630779, 56.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265434, 39.335670, 56.124409>,  <41.461548, 39.970909, 56.194496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265434, 39.335670, 56.124409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552986, 39.307671, 56.401047>,  <41.725517, 39.290871, 56.567032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552986, 39.307671, 56.401047>,  <41.265434, 39.335670, 56.124409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552986, 39.307671, 56.401047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608451, -0.544479, 0.577348,
		0.336149, -0.835849, -0.434005,
		0.718882, -0.069996, 0.691599,
		41.768650, 39.286671, 56.608528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447334, 38.615147, 56.298450>,  <41.265434, 39.335670, 56.124409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447334, 38.615147, 56.298450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592278, 38.806442, 56.618446>,  <41.679241, 38.921219, 56.810444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592278, 38.806442, 56.618446>,  <41.447334, 38.615147, 56.298450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592278, 38.806442, 56.618446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492018, -0.630835, 0.599971,
		0.791591, -0.611014, 0.006713,
		0.362356, 0.478235, 0.799994,
		41.700985, 38.949913, 56.858444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713894, 38.066467, 56.733669>,  <41.447334, 38.615147, 56.298450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713894, 38.066467, 56.733669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.658337, 38.391273, 56.960415>,  <41.625004, 38.586159, 57.096462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.658337, 38.391273, 56.960415>,  <41.713894, 38.066467, 56.733669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658337, 38.391273, 56.960415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463092, -0.559226, 0.687613,
		0.875360, -0.167006, 0.453712,
		-0.138893, 0.812019, 0.566863,
		41.616669, 38.634880, 57.130474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555691, 37.793613, 57.390640>,  <41.713894, 38.066467, 56.733669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555691, 37.793613, 57.390640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465794, 38.172195, 57.483349>,  <41.411854, 38.399345, 57.538975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465794, 38.172195, 57.483349>,  <41.555691, 37.793613, 57.390640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465794, 38.172195, 57.483349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675689, -0.322753, 0.662779,
		0.702093, -0.007649, 0.712044,
		-0.224745, 0.946452, 0.231771,
		41.398369, 38.456131, 57.552879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558292, 37.889709, 58.103054>,  <41.555691, 37.793613, 57.390640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558292, 37.889709, 58.103054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.341110, 38.204247, 57.985168>,  <41.210800, 38.392971, 57.914436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.341110, 38.204247, 57.985168>,  <41.558292, 37.889709, 58.103054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341110, 38.204247, 57.985168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728209, -0.266109, 0.631583,
		0.418218, 0.557535, 0.717111,
		-0.542960, 0.786346, -0.294711,
		41.178223, 38.440151, 57.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302616, 38.327286, 58.690487>,  <41.558292, 37.889709, 58.103054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302616, 38.327286, 58.690487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.045628, 38.435120, 58.403557>,  <40.891434, 38.499821, 58.231400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.045628, 38.435120, 58.403557>,  <41.302616, 38.327286, 58.690487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045628, 38.435120, 58.403557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746190, -0.006992, 0.665696,
		0.174446, 0.962951, 0.205653,
		-0.642471, 0.269585, -0.717325,
		40.852886, 38.515995, 58.188358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833176, 38.775967, 59.004910>,  <41.302616, 38.327286, 58.690487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833176, 38.775967, 59.004910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.632126, 38.680672, 58.672497>,  <40.511494, 38.623493, 58.473049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.632126, 38.680672, 58.672497>,  <40.833176, 38.775967, 59.004910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632126, 38.680672, 58.672497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836227, -0.109863, 0.537266,
		-0.219296, 0.964973, -0.144000,
		-0.502626, -0.238237, -0.831029,
		40.481339, 38.609200, 58.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237129, 39.218285, 59.024387>,  <40.833176, 38.775967, 59.004910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237129, 39.218285, 59.024387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134384, 38.921974, 58.776108>,  <40.072739, 38.744186, 58.627140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134384, 38.921974, 58.776108>,  <40.237129, 39.218285, 59.024387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134384, 38.921974, 58.776108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785518, -0.214123, 0.580613,
		-0.563011, 0.636713, -0.526892,
		-0.256864, -0.740776, -0.620703,
		40.057323, 38.699741, 58.589897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569328, 39.222649, 58.900612>,  <40.237129, 39.218285, 59.024387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569328, 39.222649, 58.900612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598793, 38.844429, 58.773796>,  <39.616470, 38.617496, 58.697704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598793, 38.844429, 58.773796>,  <39.569328, 39.222649, 58.900612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598793, 38.844429, 58.773796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811442, -0.241639, 0.532139,
		-0.579772, 0.218063, -0.785056,
		0.073661, -0.945547, -0.317041,
		39.620892, 38.560764, 58.678684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915508, 38.973831, 58.581211>,  <39.569328, 39.222649, 58.900612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915508, 38.973831, 58.581211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121239, 38.652817, 58.702148>,  <39.244675, 38.460209, 58.774712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121239, 38.652817, 58.702148>,  <38.915508, 38.973831, 58.581211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121239, 38.652817, 58.702148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767581, -0.273545, 0.579649,
		-0.382484, -0.530200, -0.756700,
		0.514321, -0.802534, 0.302345,
		39.275536, 38.412056, 58.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486965, 38.527935, 58.599453>,  <38.915508, 38.973831, 58.581211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486965, 38.527935, 58.599453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747536, 38.306786, 58.807289>,  <38.903877, 38.174095, 58.931992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747536, 38.306786, 58.807289>,  <38.486965, 38.527935, 58.599453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747536, 38.306786, 58.807289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753704, -0.393009, 0.526758,
		-0.087029, -0.734760, -0.672721,
		0.651426, -0.552876, 0.519588,
		38.942963, 38.140923, 58.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247959, 37.760212, 58.585835>,  <38.486965, 38.527935, 58.599453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247959, 37.760212, 58.585835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456688, 37.831963, 58.919426>,  <38.581924, 37.875015, 59.119579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456688, 37.831963, 58.919426>,  <38.247959, 37.760212, 58.585835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456688, 37.831963, 58.919426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685556, -0.493612, 0.535127,
		0.507654, -0.850982, -0.134603,
		0.521825, 0.179381, 0.833979,
		38.613235, 37.885777, 59.169621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274242, 37.043140, 58.433430>,  <38.247959, 37.760212, 58.585835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274242, 37.043140, 58.433430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931999, 36.924240, 58.263924>,  <37.726654, 36.852901, 58.162220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931999, 36.924240, 58.263924>,  <38.274242, 37.043140, 58.433430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931999, 36.924240, 58.263924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444101, -0.001000, -0.895976,
		0.265902, -0.954800, 0.132863,
		-0.855611, -0.297246, -0.423762,
		37.675316, 36.835068, 58.136795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488647, 36.604942, 57.951294>,  <38.274242, 37.043140, 58.433430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488647, 36.604942, 57.951294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118797, 36.710503, 57.841442>,  <37.896889, 36.773838, 57.775532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118797, 36.710503, 57.841442>,  <38.488647, 36.604942, 57.951294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118797, 36.710503, 57.841442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288449, 0.014315, -0.957388,
		-0.248725, -0.964444, -0.089359,
		-0.924626, 0.263901, -0.274632,
		37.841408, 36.789673, 57.759052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201717, 36.082718, 57.574688>,  <38.488647, 36.604942, 57.951294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201717, 36.082718, 57.574688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001331, 36.403679, 57.444954>,  <37.881100, 36.596256, 57.367115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001331, 36.403679, 57.444954>,  <38.201717, 36.082718, 57.574688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001331, 36.403679, 57.444954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257837, -0.219363, -0.940957,
		-0.826170, -0.555009, -0.096995,
		-0.500962, 0.802399, -0.324333,
		37.851044, 36.644398, 57.347652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922112, 35.924706, 56.867905>,  <38.201717, 36.082718, 57.574688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922112, 35.924706, 56.867905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.891544, 36.323448, 56.859512>,  <37.873203, 36.562695, 56.854477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.891544, 36.323448, 56.859512>,  <37.922112, 35.924706, 56.867905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891544, 36.323448, 56.859512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302272, 0.003111, -0.953217,
		-0.950153, -0.079186, -0.301559,
		-0.076419, 0.996855, -0.020980,
		37.868618, 36.622505, 56.853218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615620, 35.923603, 56.238632>,  <37.922112, 35.924706, 56.867905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615620, 35.923603, 56.238632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757961, 36.290779, 56.308769>,  <37.843365, 36.511086, 56.350853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757961, 36.290779, 56.308769>,  <37.615620, 35.923603, 56.238632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757961, 36.290779, 56.308769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336014, 0.049400, -0.940561,
		-0.872044, 0.393621, -0.290863,
		0.355856, 0.917944, 0.175342,
		37.864719, 36.566162, 56.361370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445244, 36.346710, 55.627922>,  <37.615620, 35.923603, 56.238632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445244, 36.346710, 55.627922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757843, 36.525116, 55.802429>,  <37.945404, 36.632160, 55.907135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757843, 36.525116, 55.802429>,  <37.445244, 36.346710, 55.627922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757843, 36.525116, 55.802429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446871, 0.087819, -0.890278,
		-0.435389, 0.890707, -0.130680,
		0.781500, 0.446014, 0.436267,
		37.992294, 36.658920, 55.933308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698071, 36.812763, 55.132927>,  <37.445244, 36.346710, 55.627922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698071, 36.812763, 55.132927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028374, 36.799896, 55.358166>,  <38.226555, 36.792175, 55.493309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028374, 36.799896, 55.358166>,  <37.698071, 36.812763, 55.132927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028374, 36.799896, 55.358166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531842, 0.376801, -0.758396,
		-0.187781, 0.925735, 0.328256,
		0.825762, -0.032167, 0.563101,
		38.276104, 36.790245, 55.527096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332806, 37.493938, 55.204670>,  <37.698071, 36.812763, 55.132927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332806, 37.493938, 55.204670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.056778, 37.695511, 54.996880>,  <36.891163, 37.816456, 54.872204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.056778, 37.695511, 54.996880>,  <37.332806, 37.493938, 55.204670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056778, 37.695511, 54.996880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511056, 0.168952, 0.842780,
		0.512473, 0.847057, 0.140951,
		-0.690068, 0.503935, -0.519476,
		36.849758, 37.846691, 54.841038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168072, 38.035149, 55.607395>,  <37.332806, 37.493938, 55.204670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168072, 38.035149, 55.607395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.857937, 38.011192, 55.355915>,  <36.671856, 37.996819, 55.205029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.857937, 38.011192, 55.355915>,  <37.168072, 38.035149, 55.607395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857937, 38.011192, 55.355915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625260, 0.212874, 0.750823,
		0.088867, 0.975243, -0.202496,
		-0.775340, -0.059889, -0.628697,
		36.625336, 37.993225, 55.167305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819492, 38.591740, 55.836082>,  <37.168072, 38.035149, 55.607395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819492, 38.591740, 55.836082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565331, 38.365807, 55.625473>,  <36.412834, 38.230247, 55.499107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565331, 38.365807, 55.625473>,  <36.819492, 38.591740, 55.836082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565331, 38.365807, 55.625473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661577, 0.046579, 0.748429,
		-0.398212, 0.823890, -0.403276,
		-0.635408, -0.564831, -0.526519,
		36.374706, 38.196358, 55.467518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129547, 38.926121, 55.740665>,  <36.819492, 38.591740, 55.836082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129547, 38.926121, 55.740665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051929, 38.534569, 55.714935>,  <36.005360, 38.299637, 55.699497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051929, 38.534569, 55.714935>,  <36.129547, 38.926121, 55.740665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051929, 38.534569, 55.714935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799752, 0.119878, 0.588240,
		-0.568107, 0.165586, -0.806124,
		-0.194041, -0.978882, -0.064324,
		35.993717, 38.240906, 55.695637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359119, 38.874416, 55.627750>,  <36.129547, 38.926121, 55.740665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359119, 38.874416, 55.627750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474442, 38.511009, 55.748726>,  <35.543636, 38.292965, 55.821312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474442, 38.511009, 55.748726>,  <35.359119, 38.874416, 55.627750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474442, 38.511009, 55.748726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789565, -0.046873, 0.611875,
		-0.541725, -0.415204, -0.730849,
		0.288309, -0.908520, 0.302438,
		35.560936, 38.238453, 55.839458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807640, 38.536488, 55.745064>,  <35.359119, 38.874416, 55.627750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807640, 38.536488, 55.745064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062939, 38.307716, 55.951183>,  <35.216118, 38.170452, 56.074856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062939, 38.307716, 55.951183>,  <34.807640, 38.536488, 55.745064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062939, 38.307716, 55.951183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720720, -0.208679, 0.661072,
		-0.270558, -0.793312, -0.545393,
		0.638249, -0.571934, 0.515296,
		35.254414, 38.136139, 56.105774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461266, 37.966160, 55.885735>,  <34.807640, 38.536488, 55.745064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461266, 37.966160, 55.885735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.759644, 37.977898, 56.151882>,  <34.938671, 37.984940, 56.311569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.759644, 37.977898, 56.151882>,  <34.461266, 37.966160, 55.885735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759644, 37.977898, 56.151882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647968, -0.198993, 0.735214,
		0.153975, -0.979562, -0.129425,
		0.745942, 0.029341, 0.665365,
		34.983425, 37.986698, 56.351490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285023, 37.377911, 56.271080>,  <34.461266, 37.966160, 55.885735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285023, 37.377911, 56.271080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.526878, 37.616592, 56.482117>,  <34.671993, 37.759800, 56.608738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.526878, 37.616592, 56.482117>,  <34.285023, 37.377911, 56.271080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526878, 37.616592, 56.482117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612861, -0.074535, 0.786668,
		0.508732, -0.798992, 0.320630,
		0.604643, 0.596704, 0.527589,
		34.708271, 37.795605, 56.640392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326267, 37.046124, 56.998070>,  <34.285023, 37.377911, 56.271080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326267, 37.046124, 56.998070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.400070, 37.438980, 57.012802>,  <34.444351, 37.674694, 57.021641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.400070, 37.438980, 57.012802>,  <34.326267, 37.046124, 56.998070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400070, 37.438980, 57.012802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765988, 0.120222, 0.631513,
		0.615807, -0.144729, 0.774490,
		0.184509, 0.982141, 0.036827,
		34.455421, 37.733624, 57.023849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.579975, 41.775475, 45.150196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.426430, 42.115059, 45.295471>,  <44.334301, 42.318810, 45.382637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.426430, 42.115059, 45.295471>,  <44.579975, 41.775475, 45.150196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426430, 42.115059, 45.295471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526225, -0.524331, 0.669451,
		0.758771, 0.065861, 0.648019,
		-0.383867, 0.848963, 0.363190,
		44.311268, 42.369747, 45.404427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656094, 41.707035, 45.794247>,  <44.579975, 41.775475, 45.150196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656094, 41.707035, 45.794247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.357559, 41.973137, 45.786121>,  <44.178436, 42.132797, 45.781246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.357559, 41.973137, 45.786121>,  <44.656094, 41.707035, 45.794247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357559, 41.973137, 45.786121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561928, -0.613469, 0.554881,
		0.356675, 0.425545, 0.831682,
		-0.746338, 0.665257, -0.020316,
		44.133659, 42.172714, 45.780025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531502, 41.989349, 46.537418>,  <44.656094, 41.707035, 45.794247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531502, 41.989349, 46.537418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.196079, 42.052704, 46.328903>,  <43.994827, 42.090717, 46.203796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.196079, 42.052704, 46.328903>,  <44.531502, 41.989349, 46.537418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196079, 42.052704, 46.328903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511842, -0.556839, 0.654178,
		-0.186660, 0.815380, 0.548009,
		-0.838556, 0.158384, -0.521285,
		43.944511, 42.100220, 46.172516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972370, 42.061291, 47.067703>,  <44.531502, 41.989349, 46.537418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972370, 42.061291, 47.067703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.756638, 42.048195, 46.731121>,  <43.627197, 42.040337, 46.529171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.756638, 42.048195, 46.731121>,  <43.972370, 42.061291, 47.067703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756638, 42.048195, 46.731121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634167, -0.641640, 0.431428,
		-0.554037, 0.766307, 0.325295,
		-0.539329, -0.032736, -0.841459,
		43.594837, 42.038376, 46.478683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254173, 42.360245, 47.138760>,  <43.972370, 42.061291, 47.067703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254173, 42.360245, 47.138760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261768, 42.073341, 46.860142>,  <43.266323, 41.901199, 46.692970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261768, 42.073341, 46.860142>,  <43.254173, 42.360245, 47.138760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261768, 42.073341, 46.860142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640525, -0.543657, 0.542371,
		-0.767703, 0.435857, -0.469745,
		0.018984, -0.717263, -0.696544,
		43.267464, 41.858162, 46.651180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572960, 42.046562, 47.106956>,  <43.254173, 42.360245, 47.138760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572960, 42.046562, 47.106956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.771278, 41.770126, 46.896591>,  <42.890270, 41.604263, 46.770370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.771278, 41.770126, 46.896591>,  <42.572960, 42.046562, 47.106956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771278, 41.770126, 46.896591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685178, -0.683371, 0.252063,
		-0.533593, 0.235374, -0.812329,
		0.495793, -0.691089, -0.525915,
		42.920017, 41.562801, 46.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113976, 41.720367, 46.738354>,  <42.572960, 42.046562, 47.106956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113976, 41.720367, 46.738354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.420475, 41.468048, 46.787262>,  <42.604374, 41.316654, 46.816608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.420475, 41.468048, 46.787262>,  <42.113976, 41.720367, 46.738354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420475, 41.468048, 46.787262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640096, -0.732792, 0.230850,
		-0.056019, -0.255156, -0.965276,
		0.766250, -0.630802, 0.122274,
		42.650349, 41.278809, 46.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775345, 41.111259, 46.508923>,  <42.113976, 41.720367, 46.738354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775345, 41.111259, 46.508923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.101292, 41.047813, 46.731934>,  <42.296860, 41.009747, 46.865742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.101292, 41.047813, 46.731934>,  <41.775345, 41.111259, 46.508923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101292, 41.047813, 46.731934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482929, -0.717734, 0.501636,
		0.320592, -0.678011, -0.661454,
		0.814863, -0.158615, 0.557530,
		42.345749, 41.000229, 46.899193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828201, 40.394718, 46.615982>,  <41.775345, 41.111259, 46.508923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828201, 40.394718, 46.615982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058853, 40.561928, 46.896767>,  <42.197243, 40.662254, 47.065239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058853, 40.561928, 46.896767>,  <41.828201, 40.394718, 46.615982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058853, 40.561928, 46.896767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363925, -0.637824, 0.678778,
		0.731478, -0.646864, -0.215655,
		0.576627, 0.418028, 0.701964,
		42.231842, 40.687336, 47.107357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208698, 39.815674, 46.966106>,  <41.828201, 40.394718, 46.615982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208698, 39.815674, 46.966106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.212029, 40.130608, 47.212696>,  <42.214027, 40.319569, 47.360649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.212029, 40.130608, 47.212696>,  <42.208698, 39.815674, 46.966106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212029, 40.130608, 47.212696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389224, -0.565322, 0.727266,
		0.921106, -0.246003, 0.301740,
		0.008329, 0.787333, 0.616472,
		42.214527, 40.366806, 47.397636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400848, 39.553020, 47.577774>,  <42.208698, 39.815674, 46.966106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400848, 39.553020, 47.577774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.214584, 39.889198, 47.688629>,  <42.102825, 40.090904, 47.755142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.214584, 39.889198, 47.688629>,  <42.400848, 39.553020, 47.577774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214584, 39.889198, 47.688629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350661, -0.462766, 0.814177,
		0.812523, 0.281951, 0.510206,
		-0.465664, 0.840447, 0.277139,
		42.074886, 40.141331, 47.771770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582539, 39.726170, 48.209591>,  <42.400848, 39.553020, 47.577774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582539, 39.726170, 48.209591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.241608, 39.933968, 48.185383>,  <42.037048, 40.058647, 48.170856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.241608, 39.933968, 48.185383>,  <42.582539, 39.726170, 48.209591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241608, 39.933968, 48.185383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389061, -0.552455, 0.737173,
		0.349520, 0.651861, 0.672988,
		-0.852330, 0.519491, -0.060519,
		41.985909, 40.089813, 48.167229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184155, 39.781879, 48.783417>,  <42.582539, 39.726170, 48.209591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184155, 39.781879, 48.783417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.441902, 39.496750, 48.894173>,  <43.596550, 39.325672, 48.960629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.441902, 39.496750, 48.894173>,  <43.184155, 39.781879, 48.783417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441902, 39.496750, 48.894173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714509, 0.432184, -0.550176,
		0.272509, 0.552360, 0.787805,
		0.644373, -0.712822, 0.276892,
		43.635216, 39.282902, 48.977242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715164, 40.086868, 49.159702>,  <43.184155, 39.781879, 48.783417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715164, 40.086868, 49.159702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.851315, 39.745171, 49.002525>,  <43.933002, 39.540150, 48.908218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.851315, 39.745171, 49.002525>,  <43.715164, 40.086868, 49.159702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851315, 39.745171, 49.002525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729583, 0.503560, -0.462749,
		0.593174, -0.129180, 0.794643,
		0.340373, -0.854248, -0.392946,
		43.953426, 39.488895, 48.884640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454250, 40.200108, 49.054031>,  <43.715164, 40.086868, 49.159702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454250, 40.200108, 49.054031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.427666, 39.871765, 48.827129>,  <44.411716, 39.674759, 48.690987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.427666, 39.871765, 48.827129>,  <44.454250, 40.200108, 49.054031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427666, 39.871765, 48.827129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472760, 0.474741, -0.742374,
		0.878681, -0.317515, 0.356516,
		-0.066462, -0.820856, -0.567255,
		44.407726, 39.625507, 48.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119541, 40.006943, 48.898617>,  <44.454250, 40.200108, 49.054031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119541, 40.006943, 48.898617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.889420, 39.845512, 48.614040>,  <44.751347, 39.748653, 48.443295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.889420, 39.845512, 48.614040>,  <45.119541, 40.006943, 48.898617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889420, 39.845512, 48.614040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625380, 0.343578, -0.700610,
		0.527182, -0.847988, 0.054722,
		-0.575308, -0.403571, -0.711443,
		44.716827, 39.724442, 48.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543522, 39.594696, 48.430195>,  <45.119541, 40.006943, 48.898617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543522, 39.594696, 48.430195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.229908, 39.655037, 48.189354>,  <45.041740, 39.691242, 48.044849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.229908, 39.655037, 48.189354>,  <45.543522, 39.594696, 48.430195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229908, 39.655037, 48.189354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619250, 0.256729, -0.742038,
		0.042638, -0.954638, -0.294701,
		-0.784036, 0.150855, -0.602106,
		44.994698, 39.700294, 48.008720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773563, 39.272945, 47.879387>,  <45.543522, 39.594696, 48.430195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773563, 39.272945, 47.879387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.504707, 39.535912, 47.743134>,  <45.343395, 39.693691, 47.661381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.504707, 39.535912, 47.743134>,  <45.773563, 39.272945, 47.879387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504707, 39.535912, 47.743134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562472, 0.154173, -0.812315,
		-0.481510, -0.737589, -0.473402,
		-0.672141, 0.657414, -0.340638,
		45.303066, 39.733135, 47.640942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618683, 39.076614, 47.193249>,  <45.773563, 39.272945, 47.879387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618683, 39.076614, 47.193249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.486206, 39.451981, 47.232620>,  <45.406719, 39.677200, 47.256245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.486206, 39.451981, 47.232620>,  <45.618683, 39.076614, 47.193249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486206, 39.451981, 47.232620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539648, 0.273953, -0.796072,
		-0.774011, -0.210536, -0.597145,
		-0.331191, 0.938416, 0.098427,
		45.386848, 39.733505, 47.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638107, 39.317719, 46.541275>,  <45.618683, 39.076614, 47.193249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638107, 39.317719, 46.541275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.579735, 39.667397, 46.726524>,  <45.544712, 39.877205, 46.837673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.579735, 39.667397, 46.726524>,  <45.638107, 39.317719, 46.541275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579735, 39.667397, 46.726524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643474, 0.439453, -0.626755,
		-0.751429, 0.206546, -0.626653,
		-0.145931, 0.874197, 0.463125,
		45.535957, 39.929657, 46.865463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362587, 39.810528, 46.021458>,  <45.638107, 39.317719, 46.541275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362587, 39.810528, 46.021458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.560623, 39.997574, 46.314369>,  <45.679443, 40.109802, 46.490116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.560623, 39.997574, 46.314369>,  <45.362587, 39.810528, 46.021458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560623, 39.997574, 46.314369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625904, 0.392599, -0.673877,
		-0.602603, 0.791963, -0.098309,
		0.495089, 0.467612, 0.732274,
		45.709148, 40.137859, 46.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471642, 40.515675, 45.853737>,  <45.362587, 39.810528, 46.021458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471642, 40.515675, 45.853737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.724548, 40.482002, 46.161800>,  <45.876293, 40.461800, 46.346638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.724548, 40.482002, 46.161800>,  <45.471642, 40.515675, 45.853737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724548, 40.482002, 46.161800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642159, 0.613089, -0.460167,
		-0.433440, 0.785516, 0.441696,
		0.632267, -0.084184, 0.770163,
		45.914227, 40.456745, 46.392849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729034, 41.237457, 46.020191>,  <45.471642, 40.515675, 45.853737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729034, 41.237457, 46.020191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.008400, 40.983681, 46.152683>,  <46.176018, 40.831417, 46.232178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.008400, 40.983681, 46.152683>,  <45.729034, 41.237457, 46.020191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008400, 40.983681, 46.152683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712400, 0.571894, -0.406724,
		0.068615, 0.520026, 0.851390,
		0.698412, -0.634437, 0.331226,
		46.217922, 40.793350, 46.252052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305347, 41.644428, 46.236153>,  <45.729034, 41.237457, 46.020191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305347, 41.644428, 46.236153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.476006, 41.285439, 46.191414>,  <46.578400, 41.070045, 46.164570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.476006, 41.285439, 46.191414>,  <46.305347, 41.644428, 46.236153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476006, 41.285439, 46.191414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858865, 0.440797, -0.260861,
		0.283419, 0.015232, 0.958875,
		0.426643, -0.897477, -0.111848,
		46.604000, 41.016197, 46.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979893, 41.837307, 46.336552>,  <46.305347, 41.644428, 46.236153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979893, 41.837307, 46.336552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.027344, 41.463043, 46.203606>,  <47.055817, 41.238483, 46.123837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.027344, 41.463043, 46.203606>,  <46.979893, 41.837307, 46.336552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027344, 41.463043, 46.203606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937471, 0.215854, -0.273048,
		0.327222, -0.279190, 0.902762,
		0.118632, -0.935660, -0.332365,
		47.062935, 41.182346, 46.103897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.612354, 41.496105, 46.590511>,  <46.979893, 41.837307, 46.336552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.612354, 41.496105, 46.590511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.520164, 41.298546, 46.255146>,  <47.464851, 41.180008, 46.053925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.520164, 41.298546, 46.255146>,  <47.612354, 41.496105, 46.590511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520164, 41.298546, 46.255146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924973, 0.156358, -0.346378,
		0.302169, -0.855344, 0.420810,
		-0.230475, -0.493902, -0.838416,
		47.451023, 41.150375, 46.003620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.128986, 40.982895, 46.471161>,  <47.612354, 41.496105, 46.590511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.128986, 40.982895, 46.471161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.936592, 41.118729, 46.147846>,  <47.821156, 41.200230, 45.953857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.936592, 41.118729, 46.147846>,  <48.128986, 40.982895, 46.471161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.936592, 41.118729, 46.147846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874118, 0.114682, -0.471980,
		-0.067580, -0.933558, -0.351997,
		-0.480988, 0.339583, -0.808291,
		47.792297, 41.220604, 45.905357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.842110, 40.646725, 47.082394>,  <48.128986, 40.982895, 46.471161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.842110, 40.646725, 47.082394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.979637, 40.958725, 47.291538>,  <48.062153, 41.145927, 47.417027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.979637, 40.958725, 47.291538>,  <47.842110, 40.646725, 47.082394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.979637, 40.958725, 47.291538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100838, -0.522918, 0.846397,
		0.933607, -0.343730, -0.101134,
		0.343817, 0.780004, 0.522861,
		48.082783, 41.192726, 47.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.249187, 40.387573, 47.568016>,  <47.842110, 40.646725, 47.082394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.249187, 40.387573, 47.568016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.116829, 40.737991, 47.708332>,  <48.037415, 40.948242, 47.792522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.116829, 40.737991, 47.708332>,  <48.249187, 40.387573, 47.568016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.116829, 40.737991, 47.708332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061968, -0.391098, 0.918260,
		0.941631, 0.282110, 0.183699,
		-0.330895, 0.876046, 0.350788,
		48.017559, 41.000805, 47.813568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.545624, 40.475533, 48.159008>,  <48.249187, 40.387573, 47.568016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.545624, 40.475533, 48.159008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.209648, 40.692047, 48.174515>,  <48.008060, 40.821957, 48.183819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.209648, 40.692047, 48.174515>,  <48.545624, 40.475533, 48.159008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.209648, 40.692047, 48.174515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181852, -0.348060, 0.919665,
		0.511299, 0.765415, 0.390785,
		-0.839942, 0.541289, 0.038770,
		47.957664, 40.854435, 48.186146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.613205, 40.861805, 48.700584>,  <48.545624, 40.475533, 48.159008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.613205, 40.861805, 48.700584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.222023, 40.833031, 48.622162>,  <47.987316, 40.815765, 48.575108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.222023, 40.833031, 48.622162>,  <48.613205, 40.861805, 48.700584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.222023, 40.833031, 48.622162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161381, -0.335514, 0.928109,
		-0.132539, 0.939285, 0.316508,
		-0.977952, -0.071932, -0.196052,
		47.928638, 40.811451, 48.563347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.337914, 41.146469, 49.293015>,  <48.613205, 40.861805, 48.700584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.337914, 41.146469, 49.293015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.015327, 40.969231, 49.136410>,  <47.821777, 40.862888, 49.042446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.015327, 40.969231, 49.136410>,  <48.337914, 41.146469, 49.293015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.015327, 40.969231, 49.136410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375420, -0.127843, 0.917996,
		-0.456810, 0.887313, -0.063245,
		-0.806464, -0.443093, -0.391515,
		47.773388, 40.836304, 49.018955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.771992, 41.431740, 49.609314>,  <48.337914, 41.146469, 49.293015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.771992, 41.431740, 49.609314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.641335, 41.085526, 49.457447>,  <47.562939, 40.877796, 49.366325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.641335, 41.085526, 49.457447>,  <47.771992, 41.431740, 49.609314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641335, 41.085526, 49.457447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410095, -0.232132, 0.882007,
		-0.851543, 0.443804, -0.279127,
		-0.326644, -0.865536, -0.379672,
		47.543343, 40.825863, 49.343544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955952, 41.357105, 49.702358>,  <47.771992, 41.431740, 49.609314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955952, 41.357105, 49.702358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.124191, 40.995300, 49.674232>,  <47.225136, 40.778217, 49.657356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.124191, 40.995300, 49.674232>,  <46.955952, 41.357105, 49.702358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124191, 40.995300, 49.674232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493064, -0.292956, 0.819186,
		-0.761566, -0.309882, -0.569202,
		0.420602, -0.904516, -0.070314,
		47.250370, 40.723946, 49.653137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474339, 40.980236, 49.871384>,  <46.955952, 41.357105, 49.702358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474339, 40.980236, 49.871384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.788055, 40.734436, 49.905495>,  <46.976288, 40.586956, 49.925961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.788055, 40.734436, 49.905495>,  <46.474339, 40.980236, 49.871384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788055, 40.734436, 49.905495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418226, -0.422174, 0.804274,
		-0.458228, -0.666450, -0.588109,
		0.784292, -0.614503, 0.085274,
		47.023342, 40.550087, 49.931080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278889, 40.393654, 49.837997>,  <46.474339, 40.980236, 49.871384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278889, 40.393654, 49.837997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614243, 40.344543, 50.050426>,  <46.815456, 40.315075, 50.177883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614243, 40.344543, 50.050426>,  <46.278889, 40.393654, 49.837997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614243, 40.344543, 50.050426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520291, -0.470730, 0.712538,
		0.162506, -0.873692, -0.458534,
		0.838384, -0.122779, 0.531071,
		46.865757, 40.307709, 50.209747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251854, 39.750690, 50.066647>,  <46.278889, 40.393654, 49.837997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251854, 39.750690, 50.066647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.517509, 39.922729, 50.311249>,  <46.676903, 40.025951, 50.458008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.517509, 39.922729, 50.311249>,  <46.251854, 39.750690, 50.066647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517509, 39.922729, 50.311249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500881, -0.351244, 0.791040,
		0.555008, -0.831653, -0.017850,
		0.664141, 0.430094, 0.611503,
		46.716751, 40.051758, 50.494701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364799, 39.172852, 50.553032>,  <46.251854, 39.750690, 50.066647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364799, 39.172852, 50.553032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.487175, 39.511475, 50.727268>,  <46.560600, 39.714649, 50.831810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.487175, 39.511475, 50.727268>,  <46.364799, 39.172852, 50.553032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487175, 39.511475, 50.727268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399921, -0.300931, 0.865739,
		0.863982, -0.439064, 0.246490,
		0.305938, 0.846560, 0.435590,
		46.578957, 39.765442, 50.857944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887089, 39.090790, 51.121693>,  <46.364799, 39.172852, 50.553032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887089, 39.090790, 51.121693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700630, 39.436485, 51.197372>,  <46.588753, 39.643902, 51.242779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700630, 39.436485, 51.197372>,  <46.887089, 39.090790, 51.121693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700630, 39.436485, 51.197372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337804, -0.371522, 0.864789,
		0.817675, 0.339210, 0.465128,
		-0.466150, 0.864239, 0.189198,
		46.560783, 39.695755, 51.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876053, 39.109146, 51.825504>,  <46.887089, 39.090790, 51.121693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876053, 39.109146, 51.825504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.639946, 39.428635, 51.778801>,  <46.498280, 39.620327, 51.750778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.639946, 39.428635, 51.778801>,  <46.876053, 39.109146, 51.825504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639946, 39.428635, 51.778801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505020, -0.252569, 0.825326,
		0.629711, 0.546132, 0.552452,
		-0.590270, 0.798716, -0.116762,
		46.462864, 39.668251, 51.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755493, 39.252899, 52.533024>,  <46.876053, 39.109146, 51.825504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755493, 39.252899, 52.533024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.465157, 39.450562, 52.341621>,  <46.290955, 39.569157, 52.226780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.465157, 39.450562, 52.341621>,  <46.755493, 39.252899, 52.533024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465157, 39.450562, 52.341621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567467, -0.037016, 0.822564,
		0.388759, 0.868587, 0.307282,
		-0.725843, 0.494152, -0.478504,
		46.247402, 39.598808, 52.198071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559307, 39.828758, 52.888504>,  <46.755493, 39.252899, 52.533024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559307, 39.828758, 52.888504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.239304, 39.782410, 52.653023>,  <46.047302, 39.754601, 52.511734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.239304, 39.782410, 52.653023>,  <46.559307, 39.828758, 52.888504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239304, 39.782410, 52.653023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585163, -0.066128, 0.808215,
		-0.132577, 0.991061, -0.014900,
		-0.800005, -0.115870, -0.588699,
		45.999302, 39.747650, 52.476414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966644, 40.155579, 53.275356>,  <46.559307, 39.828758, 52.888504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966644, 40.155579, 53.275356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.784393, 39.934814, 52.995983>,  <45.675045, 39.802357, 52.828362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.784393, 39.934814, 52.995983>,  <45.966644, 40.155579, 53.275356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784393, 39.934814, 52.995983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787407, -0.116089, 0.605404,
		-0.415206, 0.825786, -0.381683,
		-0.455625, -0.551907, -0.698430,
		45.647705, 39.769241, 52.786453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258545, 40.462788, 53.045483>,  <45.966644, 40.155579, 53.275356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258545, 40.462788, 53.045483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.266151, 40.063942, 53.016094>,  <45.270714, 39.824635, 52.998463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.266151, 40.063942, 53.016094>,  <45.258545, 40.462788, 53.045483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266151, 40.063942, 53.016094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715341, -0.064905, 0.695754,
		-0.698516, 0.039328, -0.714512,
		0.019012, -0.997116, -0.073470,
		45.271854, 39.764809, 52.994053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616573, 40.467693, 53.150764>,  <45.258545, 40.462788, 53.045483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616573, 40.467693, 53.150764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.754868, 40.092697, 53.166641>,  <44.837845, 39.867699, 53.176167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.754868, 40.092697, 53.166641>,  <44.616573, 40.467693, 53.150764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754868, 40.092697, 53.166641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764226, -0.256783, 0.591625,
		-0.544452, -0.234880, -0.805235,
		0.345732, -0.937493, 0.039695,
		44.858585, 39.811451, 53.178551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148220, 39.955814, 52.883274>,  <44.616573, 40.467693, 53.150764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148220, 39.955814, 52.883274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.370430, 39.724838, 53.122589>,  <44.503757, 39.586250, 53.266178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.370430, 39.724838, 53.122589>,  <44.148220, 39.955814, 52.883274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370430, 39.724838, 53.122589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786134, -0.130337, 0.604157,
		-0.270889, -0.805959, -0.526355,
		0.555529, -0.577445, 0.598284,
		44.537090, 39.551605, 53.302074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795399, 39.214790, 53.023499>,  <44.148220, 39.955814, 52.883274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795399, 39.214790, 53.023499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.044678, 39.306984, 53.322430>,  <44.194244, 39.362301, 53.501789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.044678, 39.306984, 53.322430>,  <43.795399, 39.214790, 53.023499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044678, 39.306984, 53.322430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745081, -0.115409, 0.656913,
		0.237660, -0.966207, 0.099811,
		0.623195, 0.230490, 0.747330,
		44.231636, 39.376129, 53.546627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575832, 38.747627, 53.600559>,  <43.795399, 39.214790, 53.023499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575832, 38.747627, 53.600559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.812096, 39.031311, 53.754517>,  <43.953854, 39.201523, 53.846893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.812096, 39.031311, 53.754517>,  <43.575832, 38.747627, 53.600559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812096, 39.031311, 53.754517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594647, 0.060135, 0.801735,
		0.545452, -0.702429, 0.457249,
		0.590658, 0.709209, 0.384897,
		43.989292, 39.244072, 53.869987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633705, 38.573662, 54.234711>,  <43.575832, 38.747627, 53.600559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633705, 38.573662, 54.234711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.743584, 38.956795, 54.268433>,  <43.809509, 39.186672, 54.288666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.743584, 38.956795, 54.268433>,  <43.633705, 38.573662, 54.234711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743584, 38.956795, 54.268433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621931, 0.110125, 0.775289,
		0.733311, -0.265398, 0.625955,
		0.274694, 0.957829, 0.084304,
		43.825993, 39.244144, 54.293724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790386, 38.728180, 54.984459>,  <43.633705, 38.573662, 54.234711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790386, 38.728180, 54.984459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.718388, 39.086296, 54.821457>,  <43.675186, 39.301167, 54.723656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.718388, 39.086296, 54.821457>,  <43.790386, 38.728180, 54.984459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718388, 39.086296, 54.821457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649449, 0.202980, 0.732813,
		0.738793, 0.396562, 0.544906,
		-0.180001, 0.895287, -0.407507,
		43.664387, 39.354881, 54.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039680, 39.264320, 55.467083>,  <43.790386, 38.728180, 54.984459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039680, 39.264320, 55.467083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.757690, 39.410103, 55.223713>,  <43.588497, 39.497574, 55.077690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.757690, 39.410103, 55.223713>,  <44.039680, 39.264320, 55.467083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757690, 39.410103, 55.223713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490363, 0.369308, 0.789402,
		0.512398, 0.854858, -0.081638,
		-0.704976, 0.364456, -0.608424,
		43.546196, 39.519440, 55.041187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824955, 39.652592, 55.894978>,  <44.039680, 39.264320, 55.467083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824955, 39.652592, 55.894978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.526993, 39.660233, 55.628220>,  <43.348213, 39.664818, 55.468166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.526993, 39.660233, 55.628220>,  <43.824955, 39.652592, 55.894978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526993, 39.660233, 55.628220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613410, 0.373492, 0.695867,
		0.262373, 0.927436, -0.266499,
		-0.744908, 0.019104, -0.666893,
		43.303520, 39.665962, 55.428150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467552, 40.288719, 55.965370>,  <43.824955, 39.652592, 55.894978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467552, 40.288719, 55.965370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.203285, 40.054985, 55.776871>,  <43.044727, 39.914745, 55.663769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.203285, 40.054985, 55.776871>,  <43.467552, 40.288719, 55.965370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203285, 40.054985, 55.776871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682685, 0.206611, 0.700894,
		-0.312188, 0.784774, -0.535415,
		-0.660666, -0.584331, -0.471252,
		43.005085, 39.879684, 55.635494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838097, 40.593903, 55.981991>,  <43.467552, 40.288719, 55.965370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838097, 40.593903, 55.981991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.741199, 40.214439, 55.900635>,  <42.683064, 39.986763, 55.851822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.741199, 40.214439, 55.900635>,  <42.838097, 40.593903, 55.981991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741199, 40.214439, 55.900635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718606, 0.034587, 0.694557,
		-0.651863, 0.314405, -0.690090,
		-0.242240, -0.948659, -0.203387,
		42.668526, 39.929840, 55.839619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592579, 41.016197, 55.351990>,  <42.838097, 40.593903, 55.981991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592579, 41.016197, 55.351990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440453, 41.385902, 55.338799>,  <42.349174, 41.607727, 55.330883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440453, 41.385902, 55.338799>,  <42.592579, 41.016197, 55.351990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440453, 41.385902, 55.338799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469686, 0.162306, -0.867785,
		-0.796713, -0.345524, -0.495843,
		-0.380319, 0.924267, -0.032976,
		42.326355, 41.663181, 55.328907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228916, 41.076084, 54.665886>,  <42.592579, 41.016197, 55.351990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228916, 41.076084, 54.665886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308968, 41.435959, 54.821072>,  <42.356998, 41.651882, 54.914185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308968, 41.435959, 54.821072>,  <42.228916, 41.076084, 54.665886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308968, 41.435959, 54.821072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566925, 0.216619, -0.794778,
		-0.799091, 0.379003, -0.466703,
		0.200126, 0.899685, 0.387965,
		42.369007, 41.705864, 54.937462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261597, 41.492615, 54.119011>,  <42.228916, 41.076084, 54.665886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261597, 41.492615, 54.119011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.449280, 41.711746, 54.396061>,  <42.561890, 41.843227, 54.562290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.449280, 41.711746, 54.396061>,  <42.261597, 41.492615, 54.119011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449280, 41.711746, 54.396061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710225, 0.232016, -0.664642,
		-0.524812, 0.803772, -0.280220,
		0.469205, 0.547831, 0.692624,
		42.590042, 41.876095, 54.603848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389465, 42.194572, 53.784180>,  <42.261597, 41.492615, 54.119011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389465, 42.194572, 53.784180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.649010, 42.154488, 54.085892>,  <42.804737, 42.130436, 54.266918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.649010, 42.154488, 54.085892>,  <42.389465, 42.194572, 53.784180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649010, 42.154488, 54.085892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733707, 0.345082, -0.585314,
		-0.201630, 0.933207, 0.297439,
		0.648860, -0.100216, 0.754280,
		42.843666, 42.124424, 54.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778683, 42.793732, 53.794296>,  <42.389465, 42.194572, 53.784180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778683, 42.793732, 53.794296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.997726, 42.518799, 53.985168>,  <43.129150, 42.353840, 54.099689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.997726, 42.518799, 53.985168>,  <42.778683, 42.793732, 53.794296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997726, 42.518799, 53.985168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804506, 0.275748, -0.526054,
		0.229994, 0.671963, 0.703967,
		0.547606, -0.687335, 0.477178,
		43.162010, 42.312599, 54.128323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
