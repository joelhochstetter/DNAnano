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
	<24.558817, 34.934338, 34.838100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.195564, 35.062500, 34.945904>,  <23.977613, 35.139397, 35.010586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.195564, 35.062500, 34.945904>,  <24.558817, 34.934338, 34.838100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.195564, 35.062500, 34.945904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351439, 0.233468, 0.906633,
		0.227571, 0.918058, -0.324624,
		-0.908131, 0.320409, 0.269511,
		23.923124, 35.158623, 35.026756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250486, 34.867500, 34.889938>,  <24.558817, 34.934338, 34.838100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250486, 34.867500, 34.889938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979240, 34.580677, 34.825447>,  <24.816494, 34.408585, 34.786755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979240, 34.580677, 34.825447>,  <25.250486, 34.867500, 34.889938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979240, 34.580677, 34.825447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519367, -0.622739, 0.585196,
		-0.520020, 0.313093, 0.794702,
		-0.678113, -0.717055, -0.161226,
		24.775806, 34.365559, 34.777081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909122, 34.696636, 35.500256>,  <25.250486, 34.867500, 34.889938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909122, 34.696636, 35.500256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878963, 34.376175, 35.262779>,  <24.860868, 34.183899, 35.120293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878963, 34.376175, 35.262779>,  <24.909122, 34.696636, 35.500256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878963, 34.376175, 35.262779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602238, -0.511120, 0.613242,
		-0.794748, -0.311306, 0.521022,
		-0.075399, -0.801152, -0.593692,
		24.856344, 34.135830, 35.084671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702492, 34.121063, 35.867142>,  <24.909122, 34.696636, 35.500256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702492, 34.121063, 35.867142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895584, 33.961025, 35.555527>,  <25.011440, 33.865002, 35.368557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895584, 33.961025, 35.555527>,  <24.702492, 34.121063, 35.867142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895584, 33.961025, 35.555527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610700, -0.483793, 0.626890,
		-0.627707, -0.778375, 0.010797,
		0.482731, -0.400097, -0.779033,
		25.040403, 33.840996, 35.321815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676346, 33.497074, 36.032806>,  <24.702492, 34.121063, 35.867142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676346, 33.497074, 36.032806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001501, 33.554787, 35.807098>,  <25.196594, 33.589417, 35.671673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001501, 33.554787, 35.807098>,  <24.676346, 33.497074, 36.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001501, 33.554787, 35.807098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551228, -0.503407, 0.665379,
		-0.188052, -0.851917, -0.488746,
		0.812886, 0.144285, -0.564268,
		25.245367, 33.598072, 35.637817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149080, 32.857315, 35.925854>,  <24.676346, 33.497074, 36.032806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149080, 32.857315, 35.925854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396252, 33.157925, 35.833435>,  <25.544554, 33.338291, 35.777985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396252, 33.157925, 35.833435>,  <25.149080, 32.857315, 35.925854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396252, 33.157925, 35.833435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752248, -0.479645, 0.451733,
		0.228668, -0.452940, -0.861717,
		0.617927, 0.751522, -0.231044,
		25.581629, 33.383381, 35.764122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822632, 32.548565, 36.060867>,  <25.149080, 32.857315, 35.925854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822632, 32.548565, 36.060867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193104, 32.692867, 36.104771>,  <26.415386, 32.779449, 36.131115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193104, 32.692867, 36.104771>,  <25.822632, 32.548565, 36.060867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193104, 32.692867, 36.104771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301650, 0.534160, 0.789734,
		0.226271, -0.764545, 0.603550,
		0.926180, 0.360754, 0.109760,
		26.470957, 32.801094, 36.137699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854239, 32.623425, 36.760036>,  <25.822632, 32.548565, 36.060867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854239, 32.623425, 36.760036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133083, 32.857700, 36.594627>,  <26.300390, 32.998264, 36.495380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133083, 32.857700, 36.594627>,  <25.854239, 32.623425, 36.760036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133083, 32.857700, 36.594627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229528, 0.728730, 0.645189,
		0.679227, -0.354855, 0.642439,
		0.697113, 0.585688, -0.413524,
		26.342216, 33.033405, 36.470570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073975, 32.943230, 37.344501>,  <25.854239, 32.623425, 36.760036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073975, 32.943230, 37.344501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177790, 33.170494, 37.032135>,  <26.240080, 33.306850, 36.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177790, 33.170494, 37.032135>,  <26.073975, 32.943230, 37.344501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177790, 33.170494, 37.032135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246342, 0.820828, 0.515321,
		0.933785, 0.058627, 0.352999,
		0.259540, 0.568158, -0.780920,
		26.255651, 33.340942, 36.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454672, 33.432297, 37.617882>,  <26.073975, 32.943230, 37.344501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454672, 33.432297, 37.617882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296625, 33.574802, 37.279190>,  <26.201797, 33.660305, 37.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296625, 33.574802, 37.279190>,  <26.454672, 33.432297, 37.617882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296625, 33.574802, 37.279190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318539, 0.811411, 0.490047,
		0.861635, 0.463344, -0.207118,
		-0.395118, 0.356266, -0.846733,
		26.178089, 33.681683, 37.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580095, 34.178986, 37.738476>,  <26.454672, 33.432297, 37.617882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580095, 34.178986, 37.738476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314461, 34.144417, 37.441418>,  <26.155079, 34.123676, 37.263184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314461, 34.144417, 37.441418>,  <26.580095, 34.178986, 37.738476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314461, 34.144417, 37.441418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428394, 0.858055, 0.283231,
		0.612753, 0.506234, -0.606845,
		-0.664088, -0.086419, -0.742644,
		26.115234, 34.118492, 37.218624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561222, 34.864002, 37.310711>,  <26.580095, 34.178986, 37.738476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561222, 34.864002, 37.310711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231903, 34.637039, 37.304668>,  <26.034311, 34.500862, 37.301044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231903, 34.637039, 37.304668>,  <26.561222, 34.864002, 37.310711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231903, 34.637039, 37.304668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559394, 0.806584, 0.191052,
		-0.096218, 0.165744, -0.981464,
		-0.823299, -0.567407, -0.015108,
		25.984913, 34.466816, 37.300137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179142, 35.366570, 37.820000>,  <26.561222, 34.864002, 37.310711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179142, 35.366570, 37.820000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840498, 35.482182, 37.641243>,  <25.637312, 35.551548, 37.533989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840498, 35.482182, 37.641243>,  <26.179142, 35.366570, 37.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840498, 35.482182, 37.641243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098834, -0.739704, -0.665635,
		-0.522954, -0.607703, 0.597676,
		-0.846611, 0.289026, -0.446893,
		25.586515, 35.568890, 37.507175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751619, 34.778179, 37.916290>,  <26.179142, 35.366570, 37.820000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751619, 34.778179, 37.916290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673592, 35.014919, 37.603455>,  <25.626774, 35.156963, 37.415752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673592, 35.014919, 37.603455>,  <25.751619, 34.778179, 37.916290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673592, 35.014919, 37.603455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015990, -0.795382, -0.605897,
		-0.980659, -0.130699, 0.145692,
		-0.195071, 0.591849, -0.782088,
		25.615070, 35.192474, 37.368828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117828, 34.389339, 37.659618>,  <25.751619, 34.778179, 37.916290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117828, 34.389339, 37.659618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341034, 34.588707, 37.394230>,  <25.474958, 34.708328, 37.234997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341034, 34.588707, 37.394230>,  <25.117828, 34.389339, 37.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341034, 34.588707, 37.394230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082368, -0.828846, -0.553381,
		-0.825733, 0.254147, -0.503563,
		0.558016, 0.498422, -0.663471,
		25.508438, 34.738232, 37.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815800, 34.337509, 36.910114>,  <25.117828, 34.389339, 37.659618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815800, 34.337509, 36.910114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210073, 34.383438, 36.959496>,  <25.446638, 34.410995, 36.989124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210073, 34.383438, 36.959496>,  <24.815800, 34.337509, 36.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210073, 34.383438, 36.959496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162521, -0.841857, -0.514650,
		0.044836, 0.527347, -0.848467,
		0.985686, 0.114819, 0.123450,
		25.505779, 34.417885, 36.996532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217394, 34.071030, 36.356644>,  <24.815800, 34.337509, 36.910114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217394, 34.071030, 36.356644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536718, 34.108978, 36.594532>,  <25.728313, 34.131748, 36.737267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536718, 34.108978, 36.594532>,  <25.217394, 34.071030, 36.356644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536718, 34.108978, 36.594532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330392, -0.894633, -0.300787,
		0.503524, 0.436614, -0.745541,
		0.798314, 0.094867, 0.594723,
		25.776213, 34.137440, 36.772949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865721, 34.184566, 35.871819>,  <25.217394, 34.071030, 36.356644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865721, 34.184566, 35.871819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981964, 34.045441, 36.228374>,  <26.051710, 33.961964, 36.442307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981964, 34.045441, 36.228374>,  <25.865721, 34.184566, 35.871819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981964, 34.045441, 36.228374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492753, -0.744165, -0.451013,
		0.820209, 0.570302, -0.044874,
		0.290607, -0.347814, 0.891388,
		26.069147, 33.941097, 36.495792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591167, 34.083023, 35.813736>,  <25.865721, 34.184566, 35.871819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591167, 34.083023, 35.813736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504421, 33.847069, 36.124863>,  <26.452374, 33.705494, 36.311539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504421, 33.847069, 36.124863>,  <26.591167, 34.083023, 35.813736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504421, 33.847069, 36.124863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411776, -0.777703, -0.474993,
		0.885104, 0.217276, 0.411559,
		-0.216866, -0.589889, 0.777818,
		26.439362, 33.670101, 36.358208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242622, 33.790016, 35.957832>,  <26.591167, 34.083023, 35.813736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242622, 33.790016, 35.957832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963486, 33.562809, 36.132359>,  <26.796003, 33.426483, 36.237072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963486, 33.562809, 36.132359>,  <27.242622, 33.790016, 35.957832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963486, 33.562809, 36.132359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407345, -0.815795, -0.410547,
		0.589140, -0.108768, 0.800677,
		-0.697842, -0.568022, 0.436311,
		26.754133, 33.392403, 36.263252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576628, 33.212650, 36.242229>,  <27.242622, 33.790016, 35.957832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576628, 33.212650, 36.242229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195869, 33.133205, 36.148895>,  <26.967415, 33.085537, 36.092896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195869, 33.133205, 36.148895>,  <27.576628, 33.212650, 36.242229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195869, 33.133205, 36.148895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280266, -0.872155, -0.400994,
		-0.123861, -0.447100, 0.885867,
		-0.951898, -0.198611, -0.233333,
		26.910299, 33.073624, 36.078896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409687, 32.459732, 36.417484>,  <27.576628, 33.212650, 36.242229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409687, 32.459732, 36.417484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165268, 32.613503, 36.140694>,  <27.018618, 32.705765, 35.974617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165268, 32.613503, 36.140694>,  <27.409687, 32.459732, 36.417484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165268, 32.613503, 36.140694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262850, -0.726026, -0.635450,
		-0.746683, -0.570174, 0.342585,
		-0.611043, 0.384431, -0.691982,
		26.981955, 32.728832, 35.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016712, 31.880322, 36.052959>,  <27.409687, 32.459732, 36.417484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016712, 31.880322, 36.052959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999596, 32.208248, 35.824547>,  <26.989326, 32.405003, 35.687500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999596, 32.208248, 35.824547>,  <27.016712, 31.880322, 36.052959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999596, 32.208248, 35.824547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150502, -0.559741, -0.814886,
		-0.987683, -0.120809, -0.099433,
		-0.042789, 0.819814, -0.571029,
		26.986759, 32.454193, 35.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432291, 31.729490, 35.464275>,  <27.016712, 31.880322, 36.052959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432291, 31.729490, 35.464275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718657, 31.982876, 35.346844>,  <26.890476, 32.134907, 35.276386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718657, 31.982876, 35.346844>,  <26.432291, 31.729490, 35.464275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718657, 31.982876, 35.346844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226350, -0.608354, -0.760704,
		-0.660478, 0.478149, -0.578915,
		0.715915, 0.633466, -0.293576,
		26.933432, 32.172916, 35.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408949, 31.650667, 34.734669>,  <26.432291, 31.729490, 35.464275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408949, 31.650667, 34.734669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766935, 31.800293, 34.831921>,  <26.981728, 31.890068, 34.890270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766935, 31.800293, 34.831921>,  <26.408949, 31.650667, 34.734669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766935, 31.800293, 34.831921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436130, -0.618793, -0.653365,
		-0.093953, 0.690776, -0.716939,
		0.894966, 0.374064, 0.243131,
		27.035425, 31.912512, 34.904861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757433, 31.717388, 34.143799>,  <26.408949, 31.650667, 34.734669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757433, 31.717388, 34.143799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044197, 31.696714, 34.421898>,  <27.216255, 31.684311, 34.588757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044197, 31.696714, 34.421898>,  <26.757433, 31.717388, 34.143799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044197, 31.696714, 34.421898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561235, -0.548825, -0.619521,
		0.413589, 0.834338, -0.364451,
		0.716909, -0.051685, 0.695248,
		27.259270, 31.681210, 34.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477041, 31.829082, 33.965832>,  <26.757433, 31.717388, 34.143799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477041, 31.829082, 33.965832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553768, 31.625383, 34.301422>,  <27.599804, 31.503164, 34.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553768, 31.625383, 34.301422>,  <27.477041, 31.829082, 33.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553768, 31.625383, 34.301422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704847, -0.523368, -0.478829,
		0.682933, 0.683195, 0.258549,
		0.191817, -0.509246, 0.838973,
		27.611313, 31.472610, 34.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171326, 32.011284, 34.290276>,  <27.477041, 31.829082, 33.965832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171326, 32.011284, 34.290276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083830, 31.638712, 34.406612>,  <28.031332, 31.415169, 34.476414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083830, 31.638712, 34.406612>,  <28.171326, 32.011284, 34.290276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083830, 31.638712, 34.406612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920440, -0.295907, -0.255402,
		0.323951, 0.211835, 0.922053,
		-0.218739, -0.931432, 0.290841,
		28.018208, 31.359282, 34.493866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391470, 31.907221, 33.598392>,  <28.171326, 32.011284, 34.290276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391470, 31.907221, 33.598392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098774, 32.035194, 33.357662>,  <27.923157, 32.111980, 33.213223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098774, 32.035194, 33.357662>,  <28.391470, 31.907221, 33.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098774, 32.035194, 33.357662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076346, -0.838956, -0.538818,
		-0.677296, -0.440221, 0.589471,
		-0.731739, 0.319935, -0.601830,
		27.879251, 32.131176, 33.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813370, 32.431133, 33.303638>,  <28.391470, 31.907221, 33.598392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813370, 32.431133, 33.303638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424385, 32.507706, 33.250458>,  <28.190994, 32.553650, 33.218548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424385, 32.507706, 33.250458>,  <28.813370, 32.431133, 33.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424385, 32.507706, 33.250458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232849, 0.822653, -0.518674,
		0.010084, -0.535348, -0.844572,
		-0.972461, 0.191427, -0.132950,
		28.132647, 32.565132, 33.210571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610619, 32.627960, 32.623245>,  <28.813370, 32.431133, 33.303638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610619, 32.627960, 32.623245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380436, 32.809570, 32.895336>,  <28.242327, 32.918537, 33.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380436, 32.809570, 32.895336>,  <28.610619, 32.627960, 32.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380436, 32.809570, 32.895336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339083, 0.889342, -0.306746,
		-0.744226, 0.054135, -0.665731,
		-0.575457, 0.454026, 0.680228,
		28.207798, 32.945778, 33.099403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496662, 32.406586, 31.915442>,  <28.610619, 32.627960, 32.623245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496662, 32.406586, 31.915442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519239, 32.038620, 31.760223>,  <28.532785, 31.817842, 31.667093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519239, 32.038620, 31.760223>,  <28.496662, 32.406586, 31.915442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519239, 32.038620, 31.760223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992440, -0.094120, 0.078767,
		-0.108982, 0.380667, -0.918268,
		0.056443, -0.919910, -0.388047,
		28.536173, 31.762648, 31.643810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923338, 32.340881, 31.446354>,  <28.496662, 32.406586, 31.915442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923338, 32.340881, 31.446354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019703, 31.959644, 31.519640>,  <28.077522, 31.730902, 31.563612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019703, 31.959644, 31.519640>,  <27.923338, 32.340881, 31.446354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019703, 31.959644, 31.519640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956797, -0.201567, 0.209549,
		-0.162790, -0.225784, -0.960480,
		0.240914, -0.953096, 0.183216,
		28.091976, 31.673716, 31.574604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504469, 31.891731, 30.930872>,  <27.923338, 32.340881, 31.446354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504469, 31.891731, 30.930872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615654, 31.650543, 31.229980>,  <27.682365, 31.505831, 31.409447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615654, 31.650543, 31.229980>,  <27.504469, 31.891731, 30.930872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615654, 31.650543, 31.229980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958782, -0.221919, 0.177454,
		0.058945, -0.766276, -0.639802,
		0.277962, -0.602970, 0.747773,
		27.699043, 31.469652, 31.454311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111404, 31.154921, 30.848352>,  <27.504469, 31.891731, 30.930872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111404, 31.154921, 30.848352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200588, 31.257053, 31.224670>,  <27.254099, 31.318333, 31.450460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200588, 31.257053, 31.224670>,  <27.111404, 31.154921, 30.848352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200588, 31.257053, 31.224670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960665, -0.106359, 0.256537,
		0.165564, -0.960986, 0.221575,
		0.222962, 0.255333, 0.940794,
		27.267477, 31.333652, 31.506908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578426, 31.400349, 31.298246>,  <27.111404, 31.154921, 30.848352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578426, 31.400349, 31.298246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548460, 31.077097, 31.531935>,  <26.530481, 30.883146, 31.672148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548460, 31.077097, 31.531935>,  <26.578426, 31.400349, 31.298246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548460, 31.077097, 31.531935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700102, 0.374576, 0.607907,
		-0.710102, 0.454557, 0.537711,
		-0.074915, -0.808128, 0.584223,
		26.525986, 30.834658, 31.707201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403778, 31.563967, 32.059124>,  <26.578426, 31.400349, 31.298246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403778, 31.563967, 32.059124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624371, 31.238913, 31.983770>,  <26.756727, 31.043880, 31.938559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624371, 31.238913, 31.983770>,  <26.403778, 31.563967, 32.059124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624371, 31.238913, 31.983770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779018, 0.420943, 0.464690,
		-0.298324, -0.403025, 0.865201,
		0.551482, -0.812636, -0.188386,
		26.789816, 30.995121, 31.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755016, 31.221199, 32.652443>,  <26.403778, 31.563967, 32.059124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755016, 31.221199, 32.652443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969919, 31.080965, 32.345604>,  <27.098862, 30.996824, 32.161499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969919, 31.080965, 32.345604>,  <26.755016, 31.221199, 32.652443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969919, 31.080965, 32.345604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824239, 0.411101, 0.389392,
		0.178840, -0.841478, 0.509834,
		0.537258, -0.350586, -0.767100,
		27.131096, 30.975790, 32.115475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500305, 31.002344, 32.884445>,  <26.755016, 31.221199, 32.652443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500305, 31.002344, 32.884445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494478, 31.055023, 32.487972>,  <27.490982, 31.086632, 32.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494478, 31.055023, 32.487972>,  <27.500305, 31.002344, 32.884445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494478, 31.055023, 32.487972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900547, 0.432501, 0.044233,
		0.434513, -0.891963, -0.124901,
		-0.014566, 0.131699, -0.991183,
		27.490108, 31.094532, 32.190617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077883, 30.741217, 32.531212>,  <27.500305, 31.002344, 32.884445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077883, 30.741217, 32.531212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969069, 30.950085, 32.207893>,  <27.903780, 31.075405, 32.013905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969069, 30.950085, 32.207893>,  <28.077883, 30.741217, 32.531212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969069, 30.950085, 32.207893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962287, 0.147917, -0.228308,
		0.000344, -0.839917, -0.542715,
		-0.272036, 0.522169, -0.808292,
		27.887457, 31.106735, 31.965406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412811, 30.525934, 32.019779>,  <28.077883, 30.741217, 32.531212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412811, 30.525934, 32.019779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316324, 30.879417, 31.859344>,  <28.258432, 31.091507, 31.763083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316324, 30.879417, 31.859344>,  <28.412811, 30.525934, 32.019779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316324, 30.879417, 31.859344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962003, 0.163256, -0.218855,
		-0.127924, -0.438640, -0.889511,
		-0.241217, 0.883709, -0.401089,
		28.243959, 31.144529, 31.739017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772287, 30.524683, 31.381037>,  <28.412811, 30.525934, 32.019779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772287, 30.524683, 31.381037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687574, 30.899038, 31.493650>,  <28.636745, 31.123652, 31.561218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687574, 30.899038, 31.493650>,  <28.772287, 30.524683, 31.381037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687574, 30.899038, 31.493650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960359, 0.252716, -0.117662,
		-0.181267, 0.245455, -0.952310,
		-0.211784, 0.935888, 0.281534,
		28.624039, 31.179804, 31.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153170, 30.976847, 30.941326>,  <28.772287, 30.524683, 31.381037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153170, 30.976847, 30.941326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086048, 31.185198, 31.276115>,  <29.045776, 31.310209, 31.476990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086048, 31.185198, 31.276115>,  <29.153170, 30.976847, 30.941326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086048, 31.185198, 31.276115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953864, 0.300205, 0.004409,
		-0.248968, 0.799101, -0.547222,
		-0.167802, 0.520878, 0.836976,
		29.035707, 31.341461, 31.527208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361124, 31.769350, 30.904715>,  <29.153170, 30.976847, 30.941326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361124, 31.769350, 30.904715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382990, 31.633467, 31.280291>,  <29.396109, 31.551937, 31.505636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382990, 31.633467, 31.280291>,  <29.361124, 31.769350, 30.904715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382990, 31.633467, 31.280291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973394, 0.227692, 0.025710,
		-0.222523, 0.912555, 0.343114,
		0.054662, -0.339706, 0.938942,
		29.399389, 31.531555, 31.561974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508043, 32.304871, 31.405544>,  <29.361124, 31.769350, 30.904715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508043, 32.304871, 31.405544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624769, 31.937723, 31.513144>,  <29.694805, 31.717434, 31.577703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624769, 31.937723, 31.513144>,  <29.508043, 32.304871, 31.405544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624769, 31.937723, 31.513144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951872, 0.306246, 0.012354,
		-0.093719, 0.252448, 0.963061,
		0.291815, -0.917869, 0.268999,
		29.712313, 31.662363, 31.593843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853554, 32.340866, 32.042004>,  <29.508043, 32.304871, 31.405544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853554, 32.340866, 32.042004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977907, 32.038544, 31.811487>,  <30.052519, 31.857151, 31.673178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977907, 32.038544, 31.811487>,  <29.853554, 32.340866, 32.042004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977907, 32.038544, 31.811487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932896, 0.358638, 0.032906,
		0.181809, -0.547850, 0.816582,
		0.310885, -0.755804, -0.576291,
		30.071173, 31.811802, 31.638599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485317, 32.101608, 32.229362>,  <29.853554, 32.340866, 32.042004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485317, 32.101608, 32.229362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519346, 31.997049, 31.844772>,  <30.539764, 31.934313, 31.614017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519346, 31.997049, 31.844772>,  <30.485317, 32.101608, 32.229362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519346, 31.997049, 31.844772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952375, 0.304927, 0.001367,
		0.292822, -0.915800, 0.274890,
		0.085073, -0.261398, -0.961475,
		30.544868, 31.918631, 31.556330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361586, 31.771000, 32.981678>,  <30.485317, 32.101608, 32.229362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361586, 31.771000, 32.981678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417267, 31.604097, 32.622452>,  <30.450676, 31.503956, 32.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417267, 31.604097, 32.622452>,  <30.361586, 31.771000, 32.981678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417267, 31.604097, 32.622452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878359, 0.470812, -0.082597,
		0.457283, -0.777325, 0.432040,
		0.139204, -0.417256, -0.898064,
		30.459028, 31.478920, 32.353031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084982, 31.690758, 33.209644>,  <30.361586, 31.771000, 32.981678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084982, 31.690758, 33.209644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072601, 31.501564, 33.561855>,  <31.065174, 31.388048, 33.773182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072601, 31.501564, 33.561855>,  <31.084982, 31.690758, 33.209644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072601, 31.501564, 33.561855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993749, -0.109102, -0.023676,
		0.107265, 0.874289, 0.473405,
		-0.030950, -0.472985, 0.880527,
		31.063316, 31.359669, 33.826012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027506, 32.403873, 33.505814>,  <31.084982, 31.690758, 33.209644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027506, 32.403873, 33.505814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974771, 32.764404, 33.340782>,  <30.943130, 32.980724, 33.241764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974771, 32.764404, 33.340782>,  <31.027506, 32.403873, 33.505814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974771, 32.764404, 33.340782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015760, 0.414252, 0.910026,
		0.991146, 0.126477, -0.040409,
		-0.131837, 0.901332, -0.412577,
		30.935221, 33.034805, 33.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630514, 32.798080, 33.769100>,  <31.027506, 32.403873, 33.505814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630514, 32.798080, 33.769100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347612, 33.045753, 33.632629>,  <31.177872, 33.194359, 33.550747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347612, 33.045753, 33.632629>,  <31.630514, 32.798080, 33.769100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347612, 33.045753, 33.632629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052946, 0.527634, 0.847820,
		0.704974, 0.581560, -0.405955,
		-0.707254, 0.619185, -0.341177,
		31.135437, 33.231510, 33.530277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888945, 33.451263, 33.723419>,  <31.630514, 32.798080, 33.769100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888945, 33.451263, 33.723419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494730, 33.434181, 33.789021>,  <31.258202, 33.423931, 33.828381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494730, 33.434181, 33.789021>,  <31.888945, 33.451263, 33.723419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494730, 33.434181, 33.789021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111824, 0.563284, 0.818662,
		-0.127345, 0.825159, -0.550360,
		-0.985535, -0.042710, 0.164004,
		31.199070, 33.421368, 33.838223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583549, 34.170170, 33.591133>,  <31.888945, 33.451263, 33.723419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583549, 34.170170, 33.591133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387262, 33.927322, 33.841125>,  <31.269489, 33.781616, 33.991123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387262, 33.927322, 33.841125>,  <31.583549, 34.170170, 33.591133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387262, 33.927322, 33.841125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253512, 0.586770, 0.769047,
		-0.833622, 0.535827, -0.134027,
		-0.490719, -0.607117, 0.624983,
		31.240047, 33.745186, 34.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610367, 34.498077, 34.174522>,  <31.583549, 34.170170, 33.591133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610367, 34.498077, 34.174522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446026, 34.149857, 34.282845>,  <31.347422, 33.940922, 34.347839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446026, 34.149857, 34.282845>,  <31.610367, 34.498077, 34.174522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446026, 34.149857, 34.282845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204927, 0.201249, 0.957864,
		-0.888373, 0.449035, 0.095716,
		-0.410852, -0.870555, 0.270804,
		31.322771, 33.888691, 34.364086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961695, 34.654716, 33.665714>,  <31.610367, 34.498077, 34.174522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961695, 34.654716, 33.665714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807142, 34.413486, 33.944859>,  <30.714411, 34.268745, 34.112343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807142, 34.413486, 33.944859>,  <30.961695, 34.654716, 33.665714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807142, 34.413486, 33.944859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610509, 0.399919, 0.683625,
		-0.691367, 0.690188, 0.213664,
		-0.386382, -0.603080, 0.697857,
		30.691227, 34.232563, 34.154217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990124, 35.074745, 34.296425>,  <30.961695, 34.654716, 33.665714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990124, 35.074745, 34.296425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943659, 34.684330, 34.370014>,  <30.915779, 34.450081, 34.414169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943659, 34.684330, 34.370014>,  <30.990124, 35.074745, 34.296425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943659, 34.684330, 34.370014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601003, 0.078397, 0.795393,
		-0.790760, 0.202966, 0.577497,
		-0.116164, -0.976042, 0.183977,
		30.908810, 34.391518, 34.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489370, 34.812626, 34.949799>,  <30.990124, 35.074745, 34.296425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489370, 34.812626, 34.949799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843874, 34.654125, 34.853855>,  <31.056576, 34.559025, 34.796291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843874, 34.654125, 34.853855>,  <30.489370, 34.812626, 34.949799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843874, 34.654125, 34.853855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303721, 0.106183, 0.946826,
		-0.349709, -0.911983, 0.214454,
		0.886260, -0.396248, -0.239855,
		31.109753, 34.535252, 34.781898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699043, 34.229084, 35.369110>,  <30.489370, 34.812626, 34.949799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699043, 34.229084, 35.369110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042854, 34.383343, 35.234951>,  <31.249142, 34.475899, 35.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042854, 34.383343, 35.234951>,  <30.699043, 34.229084, 35.369110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042854, 34.383343, 35.234951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411919, -0.134244, 0.901277,
		0.302549, -0.912829, -0.274241,
		0.859527, 0.385646, -0.335396,
		31.300713, 34.499035, 35.134331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344704, 33.804176, 35.293255>,  <30.699043, 34.229084, 35.369110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344704, 33.804176, 35.293255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442354, 34.175255, 35.406242>,  <31.500944, 34.397900, 35.474033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442354, 34.175255, 35.406242>,  <31.344704, 33.804176, 35.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442354, 34.175255, 35.406242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175594, -0.328750, 0.927949,
		0.953714, -0.176936, -0.243154,
		0.244124, 0.927694, 0.282465,
		31.515591, 34.453564, 35.490982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569527, 33.335346, 34.721378>,  <31.344704, 33.804176, 35.293255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569527, 33.335346, 34.721378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250607, 33.560993, 34.807243>,  <31.059256, 33.696381, 34.858761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250607, 33.560993, 34.807243>,  <31.569527, 33.335346, 34.721378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250607, 33.560993, 34.807243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322767, -0.097955, -0.941396,
		-0.510035, -0.819861, 0.260179,
		-0.797299, 0.564122, 0.214663,
		31.011417, 33.730228, 34.871643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778482, 33.032993, 34.606400>,  <31.569527, 33.335346, 34.721378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778482, 33.032993, 34.606400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792950, 33.430981, 34.569038>,  <30.801630, 33.669773, 34.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792950, 33.430981, 34.569038>,  <30.778482, 33.032993, 34.606400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792950, 33.430981, 34.569038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183123, -0.085283, -0.979384,
		-0.982425, 0.052526, 0.179118,
		0.036167, 0.994971, -0.093403,
		30.803801, 33.729473, 34.541016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151846, 33.266041, 34.264080>,  <30.778482, 33.032993, 34.606400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151846, 33.266041, 34.264080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454266, 33.518063, 34.193169>,  <30.635717, 33.669273, 34.150620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454266, 33.518063, 34.193169>,  <30.151846, 33.266041, 34.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454266, 33.518063, 34.193169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199285, -0.036407, -0.979265,
		-0.623441, 0.775700, 0.098034,
		0.756047, 0.630050, -0.177283,
		30.681080, 33.707077, 34.139984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039965, 33.889339, 33.823338>,  <30.151846, 33.266041, 34.264080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039965, 33.889339, 33.823338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424826, 33.786385, 33.787521>,  <30.655743, 33.724613, 33.766033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424826, 33.786385, 33.787521>,  <30.039965, 33.889339, 33.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424826, 33.786385, 33.787521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129110, -0.141170, -0.981530,
		0.239993, 0.955941, -0.169058,
		0.962151, -0.257387, -0.089542,
		30.713470, 33.709167, 33.760658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383957, 34.227108, 33.258144>,  <30.039965, 33.889339, 33.823338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383957, 34.227108, 33.258144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629520, 33.918556, 33.325191>,  <30.776859, 33.733425, 33.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629520, 33.918556, 33.325191>,  <30.383957, 34.227108, 33.258144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629520, 33.918556, 33.325191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047674, -0.248187, -0.967538,
		0.787935, 0.585990, -0.189139,
		0.613909, -0.771375, 0.167619,
		30.813694, 33.687145, 33.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896271, 34.230316, 32.728966>,  <30.383957, 34.227108, 33.258144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896271, 34.230316, 32.728966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875828, 33.855366, 32.866791>,  <30.863562, 33.630398, 32.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875828, 33.855366, 32.866791>,  <30.896271, 34.230316, 32.728966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875828, 33.855366, 32.866791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103700, -0.348126, -0.931695,
		0.993295, -0.011887, 0.114997,
		-0.051108, -0.937372, 0.344559,
		30.860495, 33.574154, 32.970158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541353, 33.872913, 32.470108>,  <30.896271, 34.230316, 32.728966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541353, 33.872913, 32.470108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234009, 33.624542, 32.532162>,  <31.049603, 33.475517, 32.569393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234009, 33.624542, 32.532162>,  <31.541353, 33.872913, 32.470108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234009, 33.624542, 32.532162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004037, -0.247092, -0.968984,
		0.640004, -0.743903, 0.192363,
		-0.768361, -0.620930, 0.155137,
		31.003500, 33.438263, 32.578701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656668, 33.179676, 32.327599>,  <31.541353, 33.872913, 32.470108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656668, 33.179676, 32.327599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292971, 33.323341, 32.243431>,  <31.074753, 33.409542, 32.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292971, 33.323341, 32.243431>,  <31.656668, 33.179676, 32.327599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292971, 33.323341, 32.243431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188453, -0.095562, -0.977422,
		-0.371166, -0.928367, 0.019203,
		-0.909242, 0.359167, -0.210423,
		31.020199, 33.431091, 32.180305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314905, 32.745365, 31.877085>,  <31.656668, 33.179676, 32.327599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314905, 32.745365, 31.877085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204191, 33.114265, 31.769131>,  <31.137762, 33.335606, 31.704357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204191, 33.114265, 31.769131>,  <31.314905, 32.745365, 31.877085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204191, 33.114265, 31.769131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314890, -0.178302, -0.932230,
		-0.907873, -0.343014, -0.241057,
		-0.276787, 0.922253, -0.269887,
		31.121155, 33.390942, 31.688164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968437, 32.808891, 31.188332>,  <31.314905, 32.745365, 31.877085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968437, 32.808891, 31.188332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152937, 33.161541, 31.228294>,  <31.263638, 33.373131, 31.252272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152937, 33.161541, 31.228294>,  <30.968437, 32.808891, 31.188332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152937, 33.161541, 31.228294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264010, -0.028872, -0.964088,
		-0.847082, 0.471061, -0.246075,
		0.461249, 0.881628, 0.099908,
		31.291311, 33.426029, 31.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762217, 33.195240, 30.680820>,  <30.968437, 32.808891, 31.188332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762217, 33.195240, 30.680820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105804, 33.367489, 30.791622>,  <31.311958, 33.470837, 30.858103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105804, 33.367489, 30.791622>,  <30.762217, 33.195240, 30.680820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105804, 33.367489, 30.791622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169336, 0.271639, -0.947384,
		-0.483211, 0.860683, 0.160410,
		0.858972, 0.430623, 0.277004,
		31.363497, 33.496677, 30.874723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706219, 33.751656, 30.253191>,  <30.762217, 33.195240, 30.680820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706219, 33.751656, 30.253191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082088, 33.715359, 30.385117>,  <31.307610, 33.693581, 30.464272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082088, 33.715359, 30.385117>,  <30.706219, 33.751656, 30.253191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082088, 33.715359, 30.385117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340390, 0.152607, -0.927818,
		0.033856, 0.984113, 0.174287,
		0.939674, -0.090738, 0.329816,
		31.363991, 33.688137, 30.484062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055622, 34.338974, 29.976810>,  <30.706219, 33.751656, 30.253191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055622, 34.338974, 29.976810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333904, 34.063232, 30.057589>,  <31.500874, 33.897789, 30.106056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333904, 34.063232, 30.057589>,  <31.055622, 34.338974, 29.976810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333904, 34.063232, 30.057589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391275, 0.127905, -0.911342,
		0.602409, 0.713043, 0.358712,
		0.695706, -0.689355, 0.201945,
		31.542616, 33.856426, 30.118172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750963, 34.669041, 29.657942>,  <31.055622, 34.338974, 29.976810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750963, 34.669041, 29.657942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808039, 34.274303, 29.688345>,  <31.842285, 34.037460, 29.706587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808039, 34.274303, 29.688345>,  <31.750963, 34.669041, 29.657942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808039, 34.274303, 29.688345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531002, 0.011521, -0.847292,
		0.835270, 0.161259, 0.525660,
		0.142690, -0.986845, 0.076006,
		31.850845, 33.978249, 29.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408485, 34.652870, 29.473591>,  <31.750963, 34.669041, 29.657942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408485, 34.652870, 29.473591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240765, 34.295139, 29.411158>,  <32.140133, 34.080502, 29.373697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240765, 34.295139, 29.411158>,  <32.408485, 34.652870, 29.473591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240765, 34.295139, 29.411158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570188, -0.125641, -0.811850,
		0.706451, -0.429405, 0.562618,
		-0.419301, -0.894330, -0.156082,
		32.114975, 34.026840, 29.364332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992756, 34.265171, 29.255152>,  <32.408485, 34.652870, 29.473591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992756, 34.265171, 29.255152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683090, 34.039124, 29.141087>,  <32.497292, 33.903496, 29.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683090, 34.039124, 29.141087>,  <32.992756, 34.265171, 29.255152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683090, 34.039124, 29.141087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460510, -0.193741, -0.866253,
		0.434285, -0.801941, 0.410229,
		-0.774162, -0.565116, -0.285163,
		32.450840, 33.869591, 29.055538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271915, 33.707325, 28.982952>,  <32.992756, 34.265171, 29.255152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271915, 33.707325, 28.982952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906609, 33.742161, 28.823774>,  <32.687424, 33.763062, 28.728268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906609, 33.742161, 28.823774>,  <33.271915, 33.707325, 28.982952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906609, 33.742161, 28.823774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365218, -0.257666, -0.894553,
		-0.180445, -0.962301, 0.203510,
		-0.913266, 0.087092, -0.397944,
		32.632629, 33.768288, 28.704391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290367, 33.223202, 28.482105>,  <33.271915, 33.707325, 28.982952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290367, 33.223202, 28.482105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967228, 33.440266, 28.390106>,  <32.773342, 33.570503, 28.334908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967228, 33.440266, 28.390106>,  <33.290367, 33.223202, 28.482105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967228, 33.440266, 28.390106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170699, -0.158083, -0.972559,
		-0.564128, -0.824942, 0.035076,
		-0.807850, 0.542660, -0.229996,
		32.724873, 33.603065, 28.321108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908134, 32.823303, 27.997719>,  <33.290367, 33.223202, 28.482105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908134, 32.823303, 27.997719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798164, 33.202606, 27.934191>,  <32.732182, 33.430187, 27.896074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798164, 33.202606, 27.934191>,  <32.908134, 32.823303, 27.997719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798164, 33.202606, 27.934191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027742, -0.172939, -0.984542,
		-0.961066, -0.266268, 0.073851,
		-0.274924, 0.948258, -0.158819,
		32.715687, 33.487083, 27.886545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349777, 32.769711, 27.606913>,  <32.908134, 32.823303, 27.997719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349777, 32.769711, 27.606913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473095, 33.144737, 27.542505>,  <32.547085, 33.369751, 27.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473095, 33.144737, 27.542505>,  <32.349777, 32.769711, 27.606913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473095, 33.144737, 27.542505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070277, -0.146354, -0.986733,
		-0.948692, 0.315520, 0.020769,
		0.308294, 0.937565, -0.161019,
		32.565582, 33.426006, 27.494200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980438, 32.975174, 27.006290>,  <32.349777, 32.769711, 27.606913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980438, 32.975174, 27.006290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274071, 33.246441, 27.020187>,  <32.450249, 33.409203, 27.028524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274071, 33.246441, 27.020187>,  <31.980438, 32.975174, 27.006290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274071, 33.246441, 27.020187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129369, -0.089444, -0.987554,
		-0.666624, 0.729440, -0.153394,
		0.734082, 0.678171, 0.034741,
		32.494297, 33.449894, 27.030609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844326, 33.442837, 26.519773>,  <31.980438, 32.975174, 27.006290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844326, 33.442837, 26.519773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226955, 33.544128, 26.577520>,  <32.456532, 33.604904, 26.612169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226955, 33.544128, 26.577520>,  <31.844326, 33.442837, 26.519773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226955, 33.544128, 26.577520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167062, -0.070417, -0.983429,
		-0.238865, 0.964841, -0.109663,
		0.956574, 0.253227, 0.144368,
		32.513927, 33.620098, 26.620831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887232, 33.975719, 26.180830>,  <31.844326, 33.442837, 26.519773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887232, 33.975719, 26.180830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258293, 33.830887, 26.217394>,  <32.480930, 33.743988, 26.239332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258293, 33.830887, 26.217394>,  <31.887232, 33.975719, 26.180830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258293, 33.830887, 26.217394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160659, 0.165973, -0.972955,
		0.337119, 0.917251, 0.212137,
		0.927653, -0.362084, 0.091412,
		32.536591, 33.722263, 26.244818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195721, 34.494221, 25.839054>,  <31.887232, 33.975719, 26.180830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195721, 34.494221, 25.839054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429264, 34.169903, 25.855642>,  <32.569389, 33.975311, 25.865595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429264, 34.169903, 25.855642>,  <32.195721, 34.494221, 25.839054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429264, 34.169903, 25.855642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172040, 0.073642, -0.982334,
		0.793416, 0.580681, 0.182486,
		0.583861, -0.810794, 0.041472,
		32.604424, 33.926666, 25.868084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607807, 34.674129, 25.361200>,  <32.195721, 34.494221, 25.839054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607807, 34.674129, 25.361200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655155, 34.281818, 25.423250>,  <32.683563, 34.046432, 25.460480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655155, 34.281818, 25.423250>,  <32.607807, 34.674129, 25.361200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655155, 34.281818, 25.423250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228935, -0.125058, -0.965375,
		0.966219, 0.149781, 0.209732,
		0.118367, -0.980778, 0.155123,
		32.690666, 33.987583, 25.469788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220203, 34.511600, 25.144009>,  <32.607807, 34.674129, 25.361200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220203, 34.511600, 25.144009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983242, 34.189434, 25.136375>,  <32.841064, 33.996136, 25.131796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983242, 34.189434, 25.136375>,  <33.220203, 34.511600, 25.144009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983242, 34.189434, 25.136375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254081, -0.164302, -0.953125,
		0.764527, -0.569483, 0.301974,
		-0.592403, -0.805416, -0.019081,
		32.805523, 33.947811, 25.130651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593914, 34.065891, 24.676735>,  <33.220203, 34.511600, 25.144009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593914, 34.065891, 24.676735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249809, 33.864182, 24.706833>,  <33.043346, 33.743156, 24.724892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249809, 33.864182, 24.706833>,  <33.593914, 34.065891, 24.676735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249809, 33.864182, 24.706833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056797, -0.241443, -0.968751,
		0.506679, -0.829106, 0.236345,
		-0.860262, -0.504269, 0.075244,
		32.991730, 33.712902, 24.729406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757053, 33.310757, 24.338758>,  <33.593914, 34.065891, 24.676735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757053, 33.310757, 24.338758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385109, 33.457912, 24.337370>,  <33.161942, 33.546204, 24.336536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385109, 33.457912, 24.337370>,  <33.757053, 33.310757, 24.338758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385109, 33.457912, 24.337370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057345, -0.154252, -0.986366,
		-0.363405, -0.916988, 0.164530,
		-0.929865, 0.367885, -0.003471,
		33.106148, 33.568279, 24.336329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382069, 32.914875, 23.815672>,  <33.757053, 33.310757, 24.338758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382069, 32.914875, 23.815672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171162, 33.249233, 23.876678>,  <33.044617, 33.449848, 23.913282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171162, 33.249233, 23.876678>,  <33.382069, 32.914875, 23.815672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171162, 33.249233, 23.876678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121220, 0.251660, -0.960194,
		-0.841008, -0.487790, -0.234020,
		-0.527267, 0.835899, 0.152518,
		33.012981, 33.500004, 23.922434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982414, 32.927177, 23.351099>,  <33.382069, 32.914875, 23.815672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982414, 32.927177, 23.351099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993362, 33.308483, 23.471458>,  <32.999931, 33.537266, 23.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993362, 33.308483, 23.471458>,  <32.982414, 32.927177, 23.351099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993362, 33.308483, 23.471458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037554, 0.299819, -0.953257,
		-0.998920, 0.037393, -0.027592,
		0.027373, 0.953263, 0.300899,
		33.001575, 33.594463, 23.561728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564819, 33.208935, 22.915291>,  <32.982414, 32.927177, 23.351099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564819, 33.208935, 22.915291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804325, 33.508278, 23.029442>,  <32.948029, 33.687885, 23.097933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804325, 33.508278, 23.029442>,  <32.564819, 33.208935, 22.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804325, 33.508278, 23.029442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198700, 0.206372, -0.958086,
		-0.775888, 0.630369, -0.025132,
		0.598762, 0.748362, 0.285376,
		32.983955, 33.732788, 23.115055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670033, 33.507881, 22.318928>,  <32.564819, 33.208935, 22.915291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670033, 33.507881, 22.318928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916637, 33.735096, 22.537008>,  <33.064602, 33.871426, 22.667856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916637, 33.735096, 22.537008>,  <32.670033, 33.507881, 22.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916637, 33.735096, 22.537008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489425, 0.265929, -0.830509,
		-0.616744, 0.778856, -0.114062,
		0.616514, 0.568036, 0.545202,
		33.101593, 33.905506, 22.700569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637127, 34.194717, 22.064957>,  <32.670033, 33.507881, 22.318928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637127, 34.194717, 22.064957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990837, 34.163006, 22.249033>,  <33.203064, 34.143978, 22.359478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990837, 34.163006, 22.249033>,  <32.637127, 34.194717, 22.064957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990837, 34.163006, 22.249033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466951, 0.141257, -0.872928,
		0.004198, 0.986794, 0.161928,
		0.884273, -0.079277, 0.460191,
		33.256119, 34.139221, 22.387091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019814, 34.755749, 21.867380>,  <32.637127, 34.194717, 22.064957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019814, 34.755749, 21.867380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306583, 34.500732, 21.980209>,  <33.478645, 34.347721, 22.047907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306583, 34.500732, 21.980209>,  <33.019814, 34.755749, 21.867380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306583, 34.500732, 21.980209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519563, 0.218829, -0.825935,
		0.464842, 0.738684, 0.488126,
		0.716921, -0.637542, 0.282072,
		33.521660, 34.309471, 22.064831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665310, 35.085606, 21.665146>,  <33.019814, 34.755749, 21.867380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665310, 35.085606, 21.665146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795170, 34.713345, 21.732668>,  <33.873085, 34.489990, 21.773180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795170, 34.713345, 21.732668>,  <33.665310, 35.085606, 21.665146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795170, 34.713345, 21.732668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618881, 0.074055, -0.781986,
		0.715253, 0.358343, 0.600003,
		0.324653, -0.930648, 0.168804,
		33.892567, 34.434151, 21.783308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478699, 35.093895, 21.597149>,  <33.665310, 35.085606, 21.665146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478699, 35.093895, 21.597149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344746, 34.717846, 21.571753>,  <34.264374, 34.492218, 21.556515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344746, 34.717846, 21.571753>,  <34.478699, 35.093895, 21.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344746, 34.717846, 21.571753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528918, -0.131787, -0.838378,
		0.779808, -0.314338, 0.541379,
		-0.334881, -0.940119, -0.063491,
		34.244282, 34.435810, 21.552706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047276, 34.607784, 21.703320>,  <34.478699, 35.093895, 21.597149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047276, 34.607784, 21.703320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766842, 34.438091, 21.474058>,  <34.598583, 34.336277, 21.336500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766842, 34.438091, 21.474058>,  <35.047276, 34.607784, 21.703320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766842, 34.438091, 21.474058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614485, 0.048372, -0.787444,
		0.361784, -0.904261, 0.226771,
		-0.701085, -0.424232, -0.573155,
		34.556515, 34.310822, 21.302111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421070, 34.141209, 21.240847>,  <35.047276, 34.607784, 21.703320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421070, 34.141209, 21.240847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077595, 34.196121, 21.043341>,  <34.871510, 34.229069, 20.924837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077595, 34.196121, 21.043341>,  <35.421070, 34.141209, 21.240847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077595, 34.196121, 21.043341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501566, 0.027219, -0.864691,
		-0.105266, -0.990158, -0.092228,
		-0.858691, 0.137282, -0.493765,
		34.819988, 34.237305, 20.895212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418739, 33.674900, 20.665943>,  <35.421070, 34.141209, 21.240847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418739, 33.674900, 20.665943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153694, 33.950188, 20.547754>,  <34.994667, 34.115360, 20.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153694, 33.950188, 20.547754>,  <35.418739, 33.674900, 20.665943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153694, 33.950188, 20.547754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456638, 0.058519, -0.887726,
		-0.593656, -0.723143, -0.353040,
		-0.662612, 0.688215, -0.295474,
		34.954910, 34.156651, 20.459112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341270, 33.533760, 19.996992>,  <35.418739, 33.674900, 20.665943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341270, 33.533760, 19.996992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182701, 33.900986, 19.996513>,  <35.087559, 34.121323, 19.996225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182701, 33.900986, 19.996513>,  <35.341270, 33.533760, 19.996992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182701, 33.900986, 19.996513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338168, 0.144810, -0.929878,
		-0.853516, -0.369032, -0.367867,
		-0.396426, 0.918066, -0.001197,
		35.063774, 34.176407, 19.996155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872017, 33.682816, 19.356264>,  <35.341270, 33.533760, 19.996992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872017, 33.682816, 19.356264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002056, 34.037479, 19.487803>,  <35.080078, 34.250278, 19.566727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002056, 34.037479, 19.487803>,  <34.872017, 33.682816, 19.356264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002056, 34.037479, 19.487803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211374, 0.270809, -0.939140,
		-0.921755, 0.374823, -0.099377,
		0.325098, 0.886663, 0.328847,
		35.099586, 34.303478, 19.586456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573048, 34.149467, 18.851616>,  <34.872017, 33.682816, 19.356264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573048, 34.149467, 18.851616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871956, 34.357529, 19.017042>,  <35.051300, 34.482365, 19.116297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871956, 34.357529, 19.017042>,  <34.573048, 34.149467, 18.851616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871956, 34.357529, 19.017042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233030, 0.377713, -0.896119,
		-0.622325, 0.766014, 0.161042,
		0.747267, 0.520150, 0.413565,
		35.096134, 34.513573, 19.141111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552418, 34.919647, 18.761562>,  <34.573048, 34.149467, 18.851616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552418, 34.919647, 18.761562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936523, 34.817928, 18.807577>,  <35.166985, 34.756897, 18.835186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936523, 34.817928, 18.807577>,  <34.552418, 34.919647, 18.761562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936523, 34.817928, 18.807577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207372, 0.374182, -0.903872,
		0.186805, 0.891808, 0.412046,
		0.960261, -0.254295, 0.115037,
		35.224602, 34.741638, 18.842089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955055, 35.485798, 18.547178>,  <34.552418, 34.919647, 18.761562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955055, 35.485798, 18.547178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239925, 35.205067, 18.540907>,  <35.410847, 35.036629, 18.537144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239925, 35.205067, 18.540907>,  <34.955055, 35.485798, 18.547178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239925, 35.205067, 18.540907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488627, 0.511618, -0.706746,
		0.504034, 0.495667, 0.707293,
		0.712175, -0.701827, -0.015677,
		35.453579, 34.994518, 18.536203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602890, 35.790661, 18.814909>,  <34.955055, 35.485798, 18.547178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602890, 35.790661, 18.814909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697659, 35.474255, 18.589287>,  <35.754520, 35.284409, 18.453913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697659, 35.474255, 18.589287>,  <35.602890, 35.790661, 18.814909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697659, 35.474255, 18.589287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622967, 0.569209, -0.536576,
		0.745506, -0.224260, 0.627637,
		0.236924, -0.791018, -0.564055,
		35.768734, 35.236950, 18.420071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357067, 35.864471, 18.764624>,  <35.602890, 35.790661, 18.814909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357067, 35.864471, 18.764624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271152, 35.608391, 18.469595>,  <36.219604, 35.454742, 18.292578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271152, 35.608391, 18.469595>,  <36.357067, 35.864471, 18.764624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271152, 35.608391, 18.469595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629009, 0.487042, -0.605918,
		0.747137, -0.594081, 0.298082,
		-0.214786, -0.640200, -0.737570,
		36.206718, 35.416332, 18.248323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039700, 35.669514, 18.332483>,  <36.357067, 35.864471, 18.764624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039700, 35.669514, 18.332483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733734, 35.572556, 18.093767>,  <36.550156, 35.514381, 17.950537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733734, 35.572556, 18.093767>,  <37.039700, 35.669514, 18.332483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733734, 35.572556, 18.093767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459939, 0.443119, -0.769481,
		0.450989, -0.863063, -0.227442,
		-0.764895, -0.242418, -0.596799,
		36.504261, 35.499840, 17.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300415, 35.501423, 17.674322>,  <37.039700, 35.669514, 18.332483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300415, 35.501423, 17.674322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920277, 35.595886, 17.593250>,  <36.692196, 35.652565, 17.544607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920277, 35.595886, 17.593250>,  <37.300415, 35.501423, 17.674322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920277, 35.595886, 17.593250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285984, 0.405899, -0.868020,
		-0.122722, -0.882880, -0.453280,
		-0.950343, 0.236156, -0.202677,
		36.635174, 35.666733, 17.532448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214245, 35.262150, 17.120152>,  <37.300415, 35.501423, 17.674322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214245, 35.262150, 17.120152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947598, 35.560112, 17.130915>,  <36.787609, 35.738892, 17.137373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947598, 35.560112, 17.130915>,  <37.214245, 35.262150, 17.120152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947598, 35.560112, 17.130915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309463, 0.309420, -0.899162,
		-0.678121, -0.591074, -0.436788,
		-0.666622, 0.744910, 0.026909,
		36.747612, 35.783585, 17.138987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979153, 35.330154, 16.436125>,  <37.214245, 35.262150, 17.120152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979153, 35.330154, 16.436125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868000, 35.671227, 16.613087>,  <36.801308, 35.875870, 16.719263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868000, 35.671227, 16.613087>,  <36.979153, 35.330154, 16.436125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868000, 35.671227, 16.613087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235827, 0.507002, -0.829056,
		-0.931219, -0.126046, -0.341970,
		-0.277879, 0.852679, 0.442405,
		36.784637, 35.927029, 16.745808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476212, 35.804745, 15.869035>,  <36.979153, 35.330154, 16.436125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476212, 35.804745, 15.869035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611862, 36.049377, 16.154961>,  <36.693253, 36.196156, 16.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611862, 36.049377, 16.154961>,  <36.476212, 35.804745, 15.869035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611862, 36.049377, 16.154961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340859, 0.628327, -0.699300,
		-0.876816, 0.480804, 0.004620,
		0.339129, 0.611583, 0.714814,
		36.713600, 36.232853, 16.369404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053135, 36.448830, 15.924128>,  <36.476212, 35.804745, 15.869035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053135, 36.448830, 15.924128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437115, 36.491688, 16.027679>,  <36.667503, 36.517403, 16.089811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437115, 36.491688, 16.027679>,  <36.053135, 36.448830, 15.924128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437115, 36.491688, 16.027679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181327, 0.466792, -0.865578,
		-0.213589, 0.877852, 0.428667,
		0.959948, 0.107149, 0.258879,
		36.725098, 36.523834, 16.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422630, 37.236897, 15.936399>,  <36.053135, 36.448830, 15.924128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422630, 37.236897, 15.936399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624889, 36.910965, 15.822996>,  <36.746246, 36.715408, 15.754954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624889, 36.910965, 15.822996>,  <36.422630, 37.236897, 15.936399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624889, 36.910965, 15.822996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103057, 0.383309, -0.917853,
		0.856560, 0.434896, 0.277794,
		0.505652, -0.814825, -0.283508,
		36.776585, 36.666519, 15.737944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760250, 37.850471, 16.270895>,  <36.422630, 37.236897, 15.936399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760250, 37.850471, 16.270895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140038, 37.975990, 16.268461>,  <37.367912, 38.051300, 16.267002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140038, 37.975990, 16.268461>,  <36.760250, 37.850471, 16.270895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140038, 37.975990, 16.268461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048911, 0.128793, -0.990465,
		-0.310017, 0.940716, 0.137633,
		0.949472, 0.313793, -0.006083,
		37.424881, 38.070129, 16.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854008, 38.337456, 15.725103>,  <36.760250, 37.850471, 16.270895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854008, 38.337456, 15.725103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201031, 38.151516, 15.795822>,  <37.409245, 38.039951, 15.838253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201031, 38.151516, 15.795822>,  <36.854008, 38.337456, 15.725103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201031, 38.151516, 15.795822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207578, 0.015408, -0.978097,
		0.451939, 0.885258, 0.109859,
		0.867561, -0.464845, 0.176797,
		37.461300, 38.012062, 15.848861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233490, 38.357246, 15.060542>,  <36.854008, 38.337456, 15.725103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233490, 38.357246, 15.060542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480278, 38.090626, 15.227901>,  <37.628349, 37.930653, 15.328317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480278, 38.090626, 15.227901>,  <37.233490, 38.357246, 15.060542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480278, 38.090626, 15.227901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326561, -0.266881, -0.906715,
		0.716035, 0.696048, 0.053013,
		0.616969, -0.666552, 0.418398,
		37.665367, 37.890659, 15.353421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085270, 37.681381, 14.743578>,  <37.233490, 38.357246, 15.060542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085270, 37.681381, 14.743578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479729, 37.705269, 14.681679>,  <37.716404, 37.719601, 14.644539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479729, 37.705269, 14.681679>,  <37.085270, 37.681381, 14.743578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479729, 37.705269, 14.681679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136509, 0.237783, 0.961678,
		0.094226, -0.969481, 0.226337,
		0.986147, 0.059718, -0.154748,
		37.775574, 37.723186, 14.635254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482723, 37.200802, 15.268453>,  <37.085270, 37.681381, 14.743578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482723, 37.200802, 15.268453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712582, 37.498604, 15.132516>,  <37.850498, 37.677284, 15.050954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712582, 37.498604, 15.132516>,  <37.482723, 37.200802, 15.268453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712582, 37.498604, 15.132516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184871, 0.286429, 0.940096,
		0.797249, -0.603048, 0.026957,
		0.574645, 0.744507, -0.339841,
		37.884975, 37.721954, 15.030563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211796, 37.163338, 15.551889>,  <37.482723, 37.200802, 15.268453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211796, 37.163338, 15.551889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129555, 37.549889, 15.490129>,  <38.080212, 37.781818, 15.453074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129555, 37.549889, 15.490129>,  <38.211796, 37.163338, 15.551889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129555, 37.549889, 15.490129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201889, 0.196262, 0.959543,
		0.957585, 0.166112, -0.235453,
		-0.205602, 0.966379, -0.154401,
		38.067875, 37.839802, 15.443810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704037, 37.584629, 15.906299>,  <38.211796, 37.163338, 15.551889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704037, 37.584629, 15.906299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365570, 37.797066, 15.888659>,  <38.162491, 37.924530, 15.878076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365570, 37.797066, 15.888659>,  <38.704037, 37.584629, 15.906299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365570, 37.797066, 15.888659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066181, 0.186829, 0.980161,
		0.528796, 0.826459, -0.193236,
		-0.846165, 0.531094, -0.044098,
		38.111721, 37.956394, 15.875430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730091, 38.319225, 16.255415>,  <38.704037, 37.584629, 15.906299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730091, 38.319225, 16.255415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336826, 38.247608, 16.270071>,  <38.100868, 38.204639, 16.278864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336826, 38.247608, 16.270071>,  <38.730091, 38.319225, 16.255415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336826, 38.247608, 16.270071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022394, 0.316999, 0.948161,
		-0.181375, 0.931373, -0.315670,
		-0.983159, -0.179042, 0.036639,
		38.041878, 38.193897, 16.281063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307026, 38.903034, 16.606878>,  <38.730091, 38.319225, 16.255415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307026, 38.903034, 16.606878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098984, 38.562492, 16.634253>,  <37.974159, 38.358166, 16.650677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098984, 38.562492, 16.634253>,  <38.307026, 38.903034, 16.606878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098984, 38.562492, 16.634253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113111, 0.148080, 0.982486,
		-0.846581, 0.503253, -0.173314,
		-0.520103, -0.851357, 0.068438,
		37.942951, 38.307087, 16.654783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843407, 39.080799, 17.187227>,  <38.307026, 38.903034, 16.606878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843407, 39.080799, 17.187227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846401, 38.685204, 17.128109>,  <37.848198, 38.447845, 17.092638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846401, 38.685204, 17.128109>,  <37.843407, 39.080799, 17.187227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846401, 38.685204, 17.128109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316732, -0.142536, 0.937744,
		-0.948485, 0.039789, -0.314312,
		0.007489, -0.988989, -0.147796,
		37.848648, 38.388508, 17.083771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318314, 38.776264, 17.682289>,  <37.843407, 39.080799, 17.187227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318314, 38.776264, 17.682289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597939, 38.504532, 17.593012>,  <37.765713, 38.341492, 17.539446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597939, 38.504532, 17.593012>,  <37.318314, 38.776264, 17.682289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597939, 38.504532, 17.593012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124433, -0.191797, 0.973514,
		-0.704150, -0.708320, -0.049547,
		0.699063, -0.679335, -0.223192,
		37.807659, 38.300732, 17.526054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155052, 38.220684, 18.040548>,  <37.318314, 38.776264, 17.682289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155052, 38.220684, 18.040548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538273, 38.152931, 17.948074>,  <37.768204, 38.112282, 17.892590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538273, 38.152931, 17.948074>,  <37.155052, 38.220684, 18.040548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538273, 38.152931, 17.948074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218600, -0.089772, 0.971676,
		-0.185336, -0.981454, -0.048980,
		0.958052, -0.169380, -0.231184,
		37.825687, 38.102119, 17.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274448, 37.527279, 18.347374>,  <37.155052, 38.220684, 18.040548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274448, 37.527279, 18.347374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601086, 37.745419, 18.271723>,  <37.797070, 37.876301, 18.226332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601086, 37.745419, 18.271723>,  <37.274448, 37.527279, 18.347374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601086, 37.745419, 18.271723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283169, -0.092976, 0.954553,
		0.502979, -0.833038, -0.230349,
		0.816595, 0.545347, -0.189126,
		37.846066, 37.909023, 18.214985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605335, 37.229412, 18.868195>,  <37.274448, 37.527279, 18.347374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605335, 37.229412, 18.868195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858292, 37.525322, 18.776270>,  <38.010067, 37.702869, 18.721115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858292, 37.525322, 18.776270>,  <37.605335, 37.229412, 18.868195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858292, 37.525322, 18.776270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203631, 0.127479, 0.970713,
		0.747407, -0.660666, -0.070025,
		0.632390, 0.739777, -0.229810,
		38.048008, 37.747253, 18.707327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283096, 37.096828, 19.119886>,  <37.605335, 37.229412, 18.868195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283096, 37.096828, 19.119886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 37.491180, 19.090725>,  <38.186619, 37.727791, 19.073229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 37.491180, 19.090725>,  <38.283096, 37.096828, 19.119886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222797, 37.491180, 19.090725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168766, 0.098329, 0.980739,
		0.974060, 0.135541, -0.181206,
		-0.150748, 0.985881, -0.072904,
		38.177574, 37.786945, 19.068853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769291, 37.225391, 19.553158>,  <38.283096, 37.096828, 19.119886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769291, 37.225391, 19.553158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538242, 37.548214, 19.504150>,  <38.399612, 37.741905, 19.474747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538242, 37.548214, 19.504150>,  <38.769291, 37.225391, 19.553158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538242, 37.548214, 19.504150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006760, 0.145355, 0.989357,
		0.816274, 0.572306, -0.078505,
		-0.577626, 0.807055, -0.122518,
		38.364956, 37.790329, 19.467396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070248, 37.675766, 20.107143>,  <38.769291, 37.225391, 19.553158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070248, 37.675766, 20.107143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707809, 37.812805, 20.007851>,  <38.490349, 37.895031, 19.948275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707809, 37.812805, 20.007851>,  <39.070248, 37.675766, 20.107143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707809, 37.812805, 20.007851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212585, 0.138593, 0.967264,
		0.365790, 0.929202, -0.052746,
		-0.906094, 0.342602, -0.248230,
		38.435982, 37.915585, 19.933382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858471, 38.271114, 20.589415>,  <39.070248, 37.675766, 20.107143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858471, 38.271114, 20.589415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514767, 38.176559, 20.407955>,  <38.308544, 38.119827, 20.299080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514767, 38.176559, 20.407955>,  <38.858471, 38.271114, 20.589415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514767, 38.176559, 20.407955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505643, 0.258205, 0.823198,
		-0.077460, 0.936724, -0.341392,
		-0.859259, -0.236387, -0.453647,
		38.256989, 38.105644, 20.271860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258873, 38.796276, 20.869270>,  <38.858471, 38.271114, 20.589415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258873, 38.796276, 20.869270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107674, 38.445843, 20.749537>,  <38.016953, 38.235584, 20.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107674, 38.445843, 20.749537>,  <38.258873, 38.796276, 20.869270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107674, 38.445843, 20.749537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583536, -0.025557, 0.811685,
		-0.718751, 0.481488, -0.501563,
		-0.377998, -0.876080, -0.299335,
		37.994274, 38.183018, 20.659737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571850, 38.861164, 21.060551>,  <38.258873, 38.796276, 20.869270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571850, 38.861164, 21.060551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632568, 38.468407, 21.015234>,  <37.668999, 38.232750, 20.988045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632568, 38.468407, 21.015234>,  <37.571850, 38.861164, 21.060551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632568, 38.468407, 21.015234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656699, -0.185854, 0.730893,
		-0.738717, -0.036550, -0.673024,
		0.151798, -0.981897, -0.113291,
		37.678108, 38.173836, 20.981247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954227, 38.607769, 20.917664>,  <37.571850, 38.861164, 21.060551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954227, 38.607769, 20.917664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163956, 38.295448, 21.053564>,  <37.289791, 38.108055, 21.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163956, 38.295448, 21.053564>,  <36.954227, 38.607769, 20.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163956, 38.295448, 21.053564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708895, -0.179196, 0.682171,
		-0.471761, -0.598523, -0.647466,
		0.524318, -0.780807, 0.339752,
		37.321251, 38.061207, 21.155489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437561, 38.141041, 21.109072>,  <36.954227, 38.607769, 20.917664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437561, 38.141041, 21.109072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773029, 38.017166, 21.288279>,  <36.974312, 37.942841, 21.395803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773029, 38.017166, 21.288279>,  <36.437561, 38.141041, 21.109072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773029, 38.017166, 21.288279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525006, -0.240853, 0.816307,
		-0.144885, -0.919831, -0.364581,
		0.838675, -0.309678, 0.448021,
		37.024632, 37.924263, 21.422684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358864, 37.397419, 21.249687>,  <36.437561, 38.141041, 21.109072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358864, 37.397419, 21.249687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614147, 37.572159, 21.503256>,  <36.767315, 37.677002, 21.655397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614147, 37.572159, 21.503256>,  <36.358864, 37.397419, 21.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614147, 37.572159, 21.503256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462137, -0.441175, 0.769281,
		0.615732, -0.783917, -0.079675,
		0.638204, 0.436850, 0.633923,
		36.805607, 37.703213, 21.693432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272240, 37.042931, 21.779144>,  <36.358864, 37.397419, 21.249687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272240, 37.042931, 21.779144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477657, 37.339687, 21.951593>,  <36.600910, 37.517742, 22.055063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477657, 37.339687, 21.951593>,  <36.272240, 37.042931, 21.779144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477657, 37.339687, 21.951593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472145, -0.175215, 0.863932,
		0.716484, -0.647221, 0.260300,
		0.513546, 0.741893, 0.431121,
		36.631721, 37.562256, 22.080931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561371, 36.801117, 22.473280>,  <36.272240, 37.042931, 21.779144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561371, 36.801117, 22.473280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569489, 37.200523, 22.493502>,  <36.574360, 37.440166, 22.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569489, 37.200523, 22.493502>,  <36.561371, 36.801117, 22.473280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569489, 37.200523, 22.493502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360655, -0.039850, 0.931848,
		0.932478, -0.037140, 0.359311,
		0.020291, 0.998515, 0.050554,
		36.575577, 37.500076, 22.508667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836914, 36.945164, 23.193142>,  <36.561371, 36.801117, 22.473280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836914, 36.945164, 23.193142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662567, 37.275028, 23.048950>,  <36.557957, 37.472946, 22.962435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662567, 37.275028, 23.048950>,  <36.836914, 36.945164, 23.193142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662567, 37.275028, 23.048950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491040, 0.117764, 0.863141,
		0.754253, 0.553227, 0.353613,
		-0.435869, 0.824665, -0.360480,
		36.531807, 37.522427, 22.940805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994968, 37.452126, 23.694885>,  <36.836914, 36.945164, 23.193142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994968, 37.452126, 23.694885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671238, 37.568905, 23.491020>,  <36.476997, 37.638973, 23.368702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671238, 37.568905, 23.491020>,  <36.994968, 37.452126, 23.694885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671238, 37.568905, 23.491020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456147, 0.234234, 0.858525,
		0.370025, 0.927308, -0.056400,
		-0.809328, 0.291949, -0.509661,
		36.428440, 37.656490, 23.338121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661903, 37.940434, 24.148628>,  <36.994968, 37.452126, 23.694885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661903, 37.940434, 24.148628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352844, 37.842613, 23.914293>,  <36.167408, 37.783920, 23.773691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352844, 37.842613, 23.914293>,  <36.661903, 37.940434, 24.148628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352844, 37.842613, 23.914293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618363, 0.081085, 0.781698,
		-0.143662, 0.966240, -0.213872,
		-0.772650, -0.244551, -0.585838,
		36.121048, 37.769249, 23.738543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078629, 38.404613, 24.250774>,  <36.661903, 37.940434, 24.148628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078629, 38.404613, 24.250774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913307, 38.074314, 24.097246>,  <35.814114, 37.876133, 24.005129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913307, 38.074314, 24.097246>,  <36.078629, 38.404613, 24.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913307, 38.074314, 24.097246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754669, 0.074742, 0.651834,
		-0.509566, 0.559059, -0.654061,
		-0.413300, -0.825752, -0.383819,
		35.789318, 37.826588, 23.982100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356400, 38.493061, 24.431004>,  <36.078629, 38.404613, 24.250774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356400, 38.493061, 24.431004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412731, 38.101566, 24.371340>,  <35.446529, 37.866669, 24.335541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412731, 38.101566, 24.371340>,  <35.356400, 38.493061, 24.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412731, 38.101566, 24.371340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660744, -0.205116, 0.722042,
		-0.737281, -0.003129, -0.675579,
		0.140831, -0.978733, -0.149160,
		35.454979, 37.807945, 24.326591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658340, 38.176914, 24.433416>,  <35.356400, 38.493061, 24.431004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658340, 38.176914, 24.433416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909428, 37.871540, 24.494257>,  <35.060081, 37.688316, 24.530762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909428, 37.871540, 24.494257>,  <34.658340, 38.176914, 24.433416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909428, 37.871540, 24.494257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578704, -0.326973, 0.747121,
		-0.520648, -0.557001, -0.647051,
		0.627716, -0.763439, 0.152101,
		35.097744, 37.642509, 24.539888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234108, 37.557480, 24.626917>,  <34.658340, 38.176914, 24.433416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234108, 37.557480, 24.626917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602459, 37.495834, 24.770151>,  <34.823471, 37.458847, 24.856092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602459, 37.495834, 24.770151>,  <34.234108, 37.557480, 24.626917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602459, 37.495834, 24.770151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386346, -0.483528, 0.785454,
		0.052098, -0.861656, -0.504812,
		0.920881, -0.154111, 0.358088,
		34.878723, 37.449600, 24.877577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141800, 36.897404, 24.782578>,  <34.234108, 37.557480, 24.626917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141800, 36.897404, 24.782578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461693, 37.024139, 24.986553>,  <34.653629, 37.100182, 25.108938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461693, 37.024139, 24.986553>,  <34.141800, 36.897404, 24.782578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461693, 37.024139, 24.986553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223737, -0.630915, 0.742892,
		0.557109, -0.708207, -0.433674,
		0.799732, 0.316843, 0.509940,
		34.701614, 37.119194, 25.139536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503990, 36.302803, 25.090933>,  <34.141800, 36.897404, 24.782578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503990, 36.302803, 25.090933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614895, 36.616741, 25.312616>,  <34.681438, 36.805103, 25.445627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614895, 36.616741, 25.312616>,  <34.503990, 36.302803, 25.090933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614895, 36.616741, 25.312616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117726, -0.544727, 0.830309,
		0.953555, -0.295458, -0.058636,
		0.277262, 0.784842, 0.554210,
		34.698074, 36.852192, 25.478880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620255, 35.968460, 25.801033>,  <34.503990, 36.302803, 25.090933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620255, 35.968460, 25.801033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605724, 36.365009, 25.851418>,  <34.597004, 36.602940, 25.881649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605724, 36.365009, 25.851418>,  <34.620255, 35.968460, 25.801033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605724, 36.365009, 25.851418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244332, -0.131032, 0.960798,
		0.969011, 0.004129, 0.246983,
		-0.036330, 0.991369, 0.125963,
		34.594826, 36.662418, 25.889206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983509, 36.094318, 26.370495>,  <34.620255, 35.968460, 25.801033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983509, 36.094318, 26.370495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750721, 36.418674, 26.345934>,  <34.611050, 36.613289, 26.331198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750721, 36.418674, 26.345934>,  <34.983509, 36.094318, 26.370495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750721, 36.418674, 26.345934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177839, -0.053226, 0.982619,
		0.793529, 0.582771, 0.175184,
		-0.581967, 0.810891, -0.061403,
		34.576130, 36.661942, 26.327513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254017, 36.546303, 26.929310>,  <34.983509, 36.094318, 26.370495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254017, 36.546303, 26.929310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892078, 36.689716, 26.837486>,  <34.674915, 36.775764, 26.782393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892078, 36.689716, 26.837486>,  <35.254017, 36.546303, 26.929310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892078, 36.689716, 26.837486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167349, 0.196258, 0.966166,
		0.391458, 0.912652, -0.117584,
		-0.904851, 0.358536, -0.229558,
		34.620625, 36.797276, 26.768620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198547, 37.196457, 27.319830>,  <35.254017, 36.546303, 26.929310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198547, 37.196457, 27.319830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844288, 37.040180, 27.219439>,  <34.631733, 36.946415, 27.159203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844288, 37.040180, 27.219439>,  <35.198547, 37.196457, 27.319830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844288, 37.040180, 27.219439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322284, 0.128039, 0.937944,
		-0.334311, 0.911574, -0.239310,
		-0.885646, -0.390691, -0.250981,
		34.578594, 36.922974, 27.144144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681900, 37.688267, 27.565552>,  <35.198547, 37.196457, 27.319830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681900, 37.688267, 27.565552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452168, 37.365704, 27.509205>,  <34.314327, 37.172165, 27.475397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452168, 37.365704, 27.509205>,  <34.681900, 37.688267, 27.565552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452168, 37.365704, 27.509205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398031, 0.124720, 0.908854,
		-0.715342, 0.578052, -0.392608,
		-0.574332, -0.806412, -0.140865,
		34.279869, 37.123779, 27.466946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986687, 37.827732, 27.911240>,  <34.681900, 37.688267, 27.565552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986687, 37.827732, 27.911240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022427, 37.429619, 27.896099>,  <34.043869, 37.190750, 27.887014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022427, 37.429619, 27.896099>,  <33.986687, 37.827732, 27.911240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022427, 37.429619, 27.896099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330367, -0.065466, 0.941579,
		-0.939614, -0.071624, -0.334657,
		0.089348, -0.995281, -0.037851,
		34.049232, 37.131035, 27.884745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234142, 37.493359, 28.093990>,  <33.986687, 37.827732, 27.911240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234142, 37.493359, 28.093990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536720, 37.243439, 28.171360>,  <33.718269, 37.093487, 28.217781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536720, 37.243439, 28.171360>,  <33.234142, 37.493359, 28.093990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536720, 37.243439, 28.171360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249467, -0.002244, 0.968381,
		-0.604608, -0.780783, -0.157564,
		0.756449, -0.624798, 0.193423,
		33.763657, 37.056000, 28.229387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019325, 37.040932, 28.541636>,  <33.234142, 37.493359, 28.093990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019325, 37.040932, 28.541636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405682, 36.945023, 28.580769>,  <33.637493, 36.887478, 28.604248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405682, 36.945023, 28.580769>,  <33.019325, 37.040932, 28.541636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405682, 36.945023, 28.580769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108916, -0.033389, 0.993490,
		-0.234950, -0.970254, -0.058366,
		0.965886, -0.239777, 0.097831,
		33.695446, 36.873089, 28.610119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991970, 36.491249, 29.041023>,  <33.019325, 37.040932, 28.541636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991970, 36.491249, 29.041023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362553, 36.641769, 29.044569>,  <33.584900, 36.732082, 29.046698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362553, 36.641769, 29.044569>,  <32.991970, 36.491249, 29.041023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362553, 36.641769, 29.044569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005968, -0.038236, 0.999251,
		0.376359, -0.925708, -0.037670,
		0.926455, 0.376302, 0.008866,
		33.640488, 36.754662, 29.047228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315376, 35.983513, 29.296995>,  <32.991970, 36.491249, 29.041023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315376, 35.983513, 29.296995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517792, 36.322071, 29.363380>,  <33.639240, 36.525204, 29.403212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517792, 36.322071, 29.363380>,  <33.315376, 35.983513, 29.296995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517792, 36.322071, 29.363380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023539, -0.205898, 0.978290,
		0.862190, -0.491145, -0.124115,
		0.506038, 0.846394, 0.165963,
		33.669601, 36.575989, 29.413170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881168, 35.787373, 29.501677>,  <33.315376, 35.983513, 29.296995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881168, 35.787373, 29.501677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889690, 36.161156, 29.643854>,  <33.894802, 36.385426, 29.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889690, 36.161156, 29.643854>,  <33.881168, 35.787373, 29.501677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889690, 36.161156, 29.643854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089364, -0.352322, 0.931602,
		0.995771, -0.051612, 0.076000,
		0.021306, 0.934455, 0.355445,
		33.896084, 36.441490, 29.750488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338024, 35.722206, 30.085125>,  <33.881168, 35.787373, 29.501677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338024, 35.722206, 30.085125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090378, 36.032032, 30.136892>,  <33.941792, 36.217926, 30.167952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090378, 36.032032, 30.136892>,  <34.338024, 35.722206, 30.085125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090378, 36.032032, 30.136892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204805, -0.318353, 0.925584,
		0.758122, 0.546540, 0.355732,
		-0.619117, 0.774561, 0.129416,
		33.904644, 36.264400, 30.175716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597504, 36.048481, 30.751074>,  <34.338024, 35.722206, 30.085125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597504, 36.048481, 30.751074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225216, 36.163635, 30.660847>,  <34.001842, 36.232727, 30.606710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225216, 36.163635, 30.660847>,  <34.597504, 36.048481, 30.751074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225216, 36.163635, 30.660847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319874, -0.341758, 0.883675,
		0.177305, 0.894609, 0.410168,
		-0.930722, 0.287882, -0.225567,
		33.945999, 36.250000, 30.593176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911625, 36.628189, 31.037382>,  <34.597504, 36.048481, 30.751074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911625, 36.628189, 31.037382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284344, 36.484798, 31.060171>,  <35.507977, 36.398762, 31.073845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284344, 36.484798, 31.060171>,  <34.911625, 36.628189, 31.037382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284344, 36.484798, 31.060171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234103, 0.473562, -0.849079,
		0.277399, 0.804506, 0.525185,
		0.931797, -0.358481, 0.056971,
		35.563881, 36.377254, 31.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276611, 37.227093, 30.907921>,  <34.911625, 36.628189, 31.037382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276611, 37.227093, 30.907921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530155, 36.922424, 30.854130>,  <35.682281, 36.739624, 30.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530155, 36.922424, 30.854130>,  <35.276611, 37.227093, 30.907921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530155, 36.922424, 30.854130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378070, 0.456802, -0.805230,
		0.674747, 0.459561, 0.577512,
		0.633861, -0.761666, -0.134480,
		35.720314, 36.693924, 30.813786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941093, 37.565605, 30.816919>,  <35.276611, 37.227093, 30.907921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941093, 37.565605, 30.816919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984905, 37.204079, 30.651457>,  <36.011192, 36.987164, 30.552179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984905, 37.204079, 30.651457>,  <35.941093, 37.565605, 30.816919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984905, 37.204079, 30.651457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480247, 0.412484, -0.774093,
		0.870267, -0.113868, 0.479238,
		0.109534, -0.903820, -0.413656,
		36.017765, 36.932934, 30.527361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693722, 37.420403, 30.753624>,  <35.941093, 37.565605, 30.816919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693722, 37.420403, 30.753624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508533, 37.161861, 30.511007>,  <36.397423, 37.006737, 30.365438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508533, 37.161861, 30.511007>,  <36.693722, 37.420403, 30.753624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508533, 37.161861, 30.511007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608395, 0.265921, -0.747758,
		0.644607, -0.715202, 0.270125,
		-0.462966, -0.646353, -0.606540,
		36.369644, 36.967957, 30.329046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205692, 37.195900, 30.341026>,  <36.693722, 37.420403, 30.753624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205692, 37.195900, 30.341026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899529, 37.075600, 30.113451>,  <36.715828, 37.003418, 29.976906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899529, 37.075600, 30.113451>,  <37.205692, 37.195900, 30.341026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899529, 37.075600, 30.113451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526415, 0.215933, -0.822350,
		0.370175, -0.928936, -0.006959,
		-0.765413, -0.300750, -0.568939,
		36.669903, 36.985374, 29.942770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477497, 36.762291, 29.844191>,  <37.205692, 37.195900, 30.341026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477497, 36.762291, 29.844191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124168, 36.862225, 29.685537>,  <36.912170, 36.922184, 29.590345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124168, 36.862225, 29.685537>,  <37.477497, 36.762291, 29.844191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124168, 36.862225, 29.685537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458154, 0.281165, -0.843233,
		-0.099145, -0.926569, -0.362821,
		-0.883326, 0.249831, -0.396635,
		36.859169, 36.937172, 29.566547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387634, 36.334965, 29.298052>,  <37.477497, 36.762291, 29.844191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387634, 36.334965, 29.298052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148254, 36.640888, 29.202612>,  <37.004627, 36.824440, 29.145348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148254, 36.640888, 29.202612>,  <37.387634, 36.334965, 29.298052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148254, 36.640888, 29.202612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603552, 0.234530, -0.762051,
		-0.526861, -0.600058, -0.601954,
		-0.598451, 0.764805, -0.238601,
		36.968719, 36.870331, 29.131031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479904, 36.291370, 28.636801>,  <37.387634, 36.334965, 29.298052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479904, 36.291370, 28.636801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266037, 36.629261, 28.627205>,  <37.137718, 36.831993, 28.621447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266037, 36.629261, 28.627205>,  <37.479904, 36.291370, 28.636801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266037, 36.629261, 28.627205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471764, 0.274808, -0.837806,
		-0.701121, -0.459265, -0.545440,
		-0.534667, 0.844723, -0.023991,
		37.105637, 36.882679, 28.620008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013897, 36.327759, 27.971045>,  <37.479904, 36.291370, 28.636801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013897, 36.327759, 27.971045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121590, 36.683041, 28.119961>,  <37.186207, 36.896210, 28.209311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121590, 36.683041, 28.119961>,  <37.013897, 36.327759, 27.971045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121590, 36.683041, 28.119961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492496, 0.205220, -0.845773,
		-0.827624, 0.411062, -0.382187,
		0.269233, 0.888208, 0.372291,
		37.202358, 36.949501, 28.231647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281963, 36.555866, 27.418041>,  <37.013897, 36.327759, 27.971045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281963, 36.555866, 27.418041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367683, 36.849709, 27.675547>,  <37.419113, 37.026012, 27.830050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367683, 36.849709, 27.675547>,  <37.281963, 36.555866, 27.418041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367683, 36.849709, 27.675547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414541, 0.528378, -0.740927,
		-0.884439, 0.425645, -0.191294,
		0.214297, 0.734603, 0.643766,
		37.431973, 37.070091, 27.868677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986511, 37.186855, 27.129810>,  <37.281963, 36.555866, 27.418041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986511, 37.186855, 27.129810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282951, 37.279915, 27.381731>,  <37.460815, 37.335751, 27.532883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282951, 37.279915, 27.381731>,  <36.986511, 37.186855, 27.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282951, 37.279915, 27.381731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357523, 0.657236, -0.663489,
		-0.568291, 0.716878, 0.403896,
		0.741096, 0.232653, 0.629801,
		37.505280, 37.349712, 27.570671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214672, 37.975147, 27.038481>,  <36.986511, 37.186855, 27.129810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214672, 37.975147, 27.038481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525280, 37.796352, 27.216116>,  <37.711647, 37.689075, 27.322697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525280, 37.796352, 27.216116>,  <37.214672, 37.975147, 27.038481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525280, 37.796352, 27.216116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623982, 0.447628, -0.640527,
		0.087523, 0.774486, 0.626507,
		0.776522, -0.446990, 0.444088,
		37.758236, 37.662254, 27.349342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680687, 38.528740, 27.167639>,  <37.214672, 37.975147, 27.038481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680687, 38.528740, 27.167639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883442, 38.184231, 27.153366>,  <38.005096, 37.977524, 27.144802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883442, 38.184231, 27.153366>,  <37.680687, 38.528740, 27.167639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883442, 38.184231, 27.153366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451529, 0.300545, -0.840116,
		0.734292, 0.409735, 0.541232,
		0.506890, -0.861272, -0.035681,
		38.035507, 37.925850, 27.142662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400528, 38.727234, 26.989704>,  <37.680687, 38.528740, 27.167639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400528, 38.727234, 26.989704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312805, 38.352676, 26.880114>,  <38.260170, 38.127941, 26.814360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312805, 38.352676, 26.880114>,  <38.400528, 38.727234, 26.989704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312805, 38.352676, 26.880114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369663, 0.180126, -0.911539,
		0.902914, -0.301187, 0.306649,
		-0.219308, -0.936398, -0.273976,
		38.247013, 38.071758, 26.797920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007957, 38.528252, 26.597534>,  <38.400528, 38.727234, 26.989704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007957, 38.528252, 26.597534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740997, 38.251007, 26.488596>,  <38.580822, 38.084660, 26.423233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740997, 38.251007, 26.488596>,  <39.007957, 38.528252, 26.597534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740997, 38.251007, 26.488596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409342, -0.035928, -0.911674,
		0.622106, -0.719934, 0.307698,
		-0.667400, -0.693112, -0.272348,
		38.540775, 38.043076, 26.406891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398853, 38.035706, 26.331984>,  <39.007957, 38.528252, 26.597534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398853, 38.035706, 26.331984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028366, 37.975163, 26.193872>,  <38.806076, 37.938835, 26.111006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028366, 37.975163, 26.193872>,  <39.398853, 38.035706, 26.331984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028366, 37.975163, 26.193872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369578, -0.183722, -0.910856,
		0.074434, -0.971255, 0.226106,
		-0.926214, -0.151363, -0.345279,
		38.750504, 37.929752, 26.090288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504799, 37.554443, 25.862192>,  <39.398853, 38.035706, 26.331984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504799, 37.554443, 25.862192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146358, 37.691059, 25.748800>,  <38.931293, 37.773029, 25.680765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146358, 37.691059, 25.748800>,  <39.504799, 37.554443, 25.862192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146358, 37.691059, 25.748800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247884, -0.144702, -0.957922,
		-0.368188, -0.928661, 0.045005,
		-0.896098, 0.341540, -0.283478,
		38.877529, 37.793522, 25.663757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303364, 37.062801, 25.338665>,  <39.504799, 37.554443, 25.862192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303364, 37.062801, 25.338665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055473, 37.370071, 25.274361>,  <38.906738, 37.554432, 25.235779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055473, 37.370071, 25.274361>,  <39.303364, 37.062801, 25.338665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055473, 37.370071, 25.274361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069303, -0.257603, -0.963762,
		-0.781751, -0.586129, 0.212881,
		-0.619728, 0.768175, -0.160761,
		38.869556, 37.600525, 25.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797459, 36.817852, 24.816286>,  <39.303364, 37.062801, 25.338665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797459, 36.817852, 24.816286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805622, 37.217628, 24.826834>,  <38.810520, 37.457497, 24.833162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805622, 37.217628, 24.826834>,  <38.797459, 36.817852, 24.816286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805622, 37.217628, 24.826834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093785, 0.024344, -0.995295,
		-0.995383, 0.022786, -0.093236,
		0.020409, 0.999444, 0.026369,
		38.811745, 37.517460, 24.834743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455811, 36.964146, 24.288187>,  <38.797459, 36.817852, 24.816286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455811, 36.964146, 24.288187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659866, 37.304893, 24.335627>,  <38.782299, 37.509342, 24.364090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659866, 37.304893, 24.335627>,  <38.455811, 36.964146, 24.288187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659866, 37.304893, 24.335627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195537, 0.019408, -0.980504,
		-0.837568, 0.523387, -0.156672,
		0.510143, 0.851874, 0.118598,
		38.812908, 37.560455, 24.371206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300774, 37.350273, 23.741772>,  <38.455811, 36.964146, 24.288187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300774, 37.350273, 23.741772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637539, 37.509716, 23.887257>,  <38.839600, 37.605381, 23.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637539, 37.509716, 23.887257>,  <38.300774, 37.350273, 23.741772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637539, 37.509716, 23.887257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372811, 0.057611, -0.926117,
		-0.390112, 0.915310, -0.100102,
		0.841917, 0.398609, 0.363713,
		38.890114, 37.629299, 23.996370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365234, 38.027386, 23.475447>,  <38.300774, 37.350273, 23.741772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365234, 38.027386, 23.475447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725574, 37.875782, 23.560135>,  <38.941776, 37.784821, 23.610947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725574, 37.875782, 23.560135>,  <38.365234, 38.027386, 23.475447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725574, 37.875782, 23.560135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256880, 0.072207, -0.963742,
		0.349978, 0.922572, 0.162408,
		0.900848, -0.379008, 0.211720,
		38.995831, 37.762081, 23.623652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795345, 38.327991, 22.949320>,  <38.365234, 38.027386, 23.475447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795345, 38.327991, 22.949320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000992, 38.014439, 23.088583>,  <39.124378, 37.826305, 23.172140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000992, 38.014439, 23.088583>,  <38.795345, 38.327991, 22.949320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000992, 38.014439, 23.088583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287512, -0.224926, -0.930991,
		0.808098, 0.578737, 0.109737,
		0.514116, -0.783883, 0.348156,
		39.155228, 37.779274, 23.193029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546844, 38.416401, 22.645235>,  <38.795345, 38.327991, 22.949320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546844, 38.416401, 22.645235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460171, 38.040314, 22.750332>,  <39.408165, 37.814659, 22.813391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460171, 38.040314, 22.750332>,  <39.546844, 38.416401, 22.645235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460171, 38.040314, 22.750332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204153, -0.306828, -0.929612,
		0.954656, -0.147794, 0.258434,
		-0.216686, -0.940220, 0.262743,
		39.395164, 37.758247, 22.829155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128380, 37.952404, 22.592728>,  <39.546844, 38.416401, 22.645235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128380, 37.952404, 22.592728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822929, 37.695724, 22.564198>,  <39.639660, 37.541718, 22.547079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822929, 37.695724, 22.564198>,  <40.128380, 37.952404, 22.592728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822929, 37.695724, 22.564198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416227, -0.404814, -0.814175,
		0.493584, -0.651417, 0.576222,
		-0.763630, -0.641703, -0.071327,
		39.593842, 37.503212, 22.542799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374657, 37.559841, 22.043880>,  <40.128380, 37.952404, 22.592728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374657, 37.559841, 22.043880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027340, 37.382908, 22.133690>,  <39.818951, 37.276749, 22.187576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027340, 37.382908, 22.133690>,  <40.374657, 37.559841, 22.043880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027340, 37.382908, 22.133690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115501, -0.620456, -0.775689,
		0.482423, -0.647590, 0.589826,
		-0.868290, -0.442336, 0.224525,
		39.766853, 37.250206, 22.201048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480015, 36.736984, 22.044079>,  <40.374657, 37.559841, 22.043880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480015, 36.736984, 22.044079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096855, 36.832413, 21.980188>,  <39.866959, 36.889668, 21.941854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096855, 36.832413, 21.980188>,  <40.480015, 36.736984, 22.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096855, 36.832413, 21.980188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030107, -0.469803, -0.882258,
		-0.285517, -0.849924, 0.442842,
		-0.957901, 0.238567, -0.159725,
		39.809486, 36.903984, 21.932270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100559, 36.143787, 21.954412>,  <40.480015, 36.736984, 22.044079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100559, 36.143787, 21.954412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909653, 36.435638, 21.758511>,  <39.795109, 36.610748, 21.640968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909653, 36.435638, 21.758511>,  <40.100559, 36.143787, 21.954412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909653, 36.435638, 21.758511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043632, -0.536964, -0.842476,
		-0.877674, -0.423456, 0.224441,
		-0.477268, 0.729626, -0.489756,
		39.766472, 36.654526, 21.611584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564728, 35.781235, 21.613811>,  <40.100559, 36.143787, 21.954412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564728, 35.781235, 21.613811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606773, 36.130833, 21.424040>,  <39.632000, 36.340591, 21.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606773, 36.130833, 21.424040>,  <39.564728, 35.781235, 21.613811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606773, 36.130833, 21.424040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030579, -0.474008, -0.879990,
		-0.993990, 0.107006, -0.023098,
		0.105113, 0.873995, -0.474431,
		39.638306, 36.393032, 21.281710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312279, 35.628540, 21.000055>,  <39.564728, 35.781235, 21.613811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312279, 35.628540, 21.000055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449303, 35.992271, 20.905590>,  <39.531517, 36.210510, 20.848911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449303, 35.992271, 20.905590>,  <39.312279, 35.628540, 21.000055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449303, 35.992271, 20.905590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005622, -0.253353, -0.967358,
		-0.939478, 0.330053, -0.091901,
		0.342563, 0.909328, -0.236164,
		39.552071, 36.265068, 20.834742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835987, 35.761726, 20.494123>,  <39.312279, 35.628540, 21.000055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835987, 35.761726, 20.494123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155495, 35.992355, 20.425396>,  <39.347198, 36.130733, 20.384159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155495, 35.992355, 20.425396>,  <38.835987, 35.761726, 20.494123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155495, 35.992355, 20.425396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054339, -0.215278, -0.975040,
		-0.599174, 0.788172, -0.140627,
		0.798773, 0.576577, -0.171817,
		39.395126, 36.165329, 20.373850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675095, 36.364639, 20.003290>,  <38.835987, 35.761726, 20.494123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675095, 36.364639, 20.003290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063889, 36.274296, 19.977247>,  <39.297165, 36.220089, 19.961622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063889, 36.274296, 19.977247>,  <38.675095, 36.364639, 20.003290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063889, 36.274296, 19.977247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109949, -0.192052, -0.975206,
		0.207760, 0.955040, -0.211505,
		0.971981, -0.225863, -0.065105,
		39.355484, 36.206535, 19.957716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812344, 36.441692, 19.304459>,  <38.675095, 36.364639, 20.003290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812344, 36.441692, 19.304459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152142, 36.256550, 19.405745>,  <39.356022, 36.145466, 19.466516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152142, 36.256550, 19.405745>,  <38.812344, 36.441692, 19.304459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152142, 36.256550, 19.405745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057227, -0.396273, -0.916348,
		0.524480, 0.792926, -0.310144,
		0.849497, -0.462857, 0.253214,
		39.406990, 36.117691, 19.481709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281994, 36.537163, 18.790619>,  <38.812344, 36.441692, 19.304459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281994, 36.537163, 18.790619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437756, 36.205784, 18.951633>,  <39.531212, 36.006954, 19.048243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437756, 36.205784, 18.951633>,  <39.281994, 36.537163, 18.790619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437756, 36.205784, 18.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216903, -0.342261, -0.914227,
		0.895163, 0.443315, 0.046415,
		0.389405, -0.828450, 0.402536,
		39.554577, 35.957249, 19.072393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921089, 36.391506, 18.409048>,  <39.281994, 36.537163, 18.790619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921089, 36.391506, 18.409048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815094, 36.046940, 18.582363>,  <39.751495, 35.840199, 18.686352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815094, 36.046940, 18.582363>,  <39.921089, 36.391506, 18.409048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815094, 36.046940, 18.582363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062898, -0.463834, -0.883686,
		0.962198, -0.206913, 0.177092,
		-0.264988, -0.861420, 0.433286,
		39.735596, 35.788513, 18.712349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347668, 35.858185, 18.088703>,  <39.921089, 36.391506, 18.409048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347668, 35.858185, 18.088703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043903, 35.662766, 18.260569>,  <39.861645, 35.545513, 18.363688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043903, 35.662766, 18.260569>,  <40.347668, 35.858185, 18.088703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043903, 35.662766, 18.260569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029507, -0.633857, -0.772887,
		0.649940, -0.599618, 0.466943,
		-0.759412, -0.488552, 0.429662,
		39.816078, 35.516201, 18.389467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450794, 35.187675, 18.008141>,  <40.347668, 35.858185, 18.088703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450794, 35.187675, 18.008141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054253, 35.208023, 18.056532>,  <39.816330, 35.220230, 18.085566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054253, 35.208023, 18.056532>,  <40.450794, 35.187675, 18.008141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054253, 35.208023, 18.056532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122393, -0.691003, -0.712415,
		0.047358, -0.721060, 0.691252,
		-0.991351, 0.050866, 0.120978,
		39.756847, 35.223282, 18.092825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078011, 34.692616, 17.839439>,  <40.450794, 35.187675, 18.008141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078011, 34.692616, 17.839439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146130, 34.300121, 17.875626>,  <41.187000, 34.064625, 17.897337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146130, 34.300121, 17.875626>,  <41.078011, 34.692616, 17.839439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146130, 34.300121, 17.875626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233929, 0.129436, 0.963599,
		-0.957224, -0.142932, 0.251581,
		0.170293, -0.981232, 0.090464,
		41.197216, 34.005753, 17.902765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653229, 34.391983, 18.430573>,  <41.078011, 34.692616, 17.839439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653229, 34.391983, 18.430573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935047, 34.114342, 18.371466>,  <41.104137, 33.947758, 18.336000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935047, 34.114342, 18.371466>,  <40.653229, 34.391983, 18.430573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935047, 34.114342, 18.371466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085324, -0.289568, 0.953347,
		-0.704509, -0.659070, -0.263239,
		0.704548, -0.694102, -0.147769,
		41.146412, 33.906113, 18.327135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341465, 33.857220, 18.736788>,  <40.653229, 34.391983, 18.430573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341465, 33.857220, 18.736788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727486, 33.752396, 18.735928>,  <40.959099, 33.689499, 18.735411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727486, 33.752396, 18.735928>,  <40.341465, 33.857220, 18.736788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727486, 33.752396, 18.735928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079115, -0.299143, 0.950923,
		-0.249843, -0.917517, -0.309420,
		0.965049, -0.262061, -0.002150,
		41.016998, 33.673775, 18.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366432, 33.320717, 19.195345>,  <40.341465, 33.857220, 18.736788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366432, 33.320717, 19.195345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745708, 33.439308, 19.149662>,  <40.973274, 33.510464, 19.122252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745708, 33.439308, 19.149662>,  <40.366432, 33.320717, 19.195345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745708, 33.439308, 19.149662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107542, 0.038759, 0.993445,
		0.298960, -0.954253, 0.004867,
		0.948186, 0.296477, -0.114209,
		41.030163, 33.528252, 19.115398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817116, 32.922474, 19.626654>,  <40.366432, 33.320717, 19.195345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817116, 32.922474, 19.626654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026779, 33.257797, 19.566652>,  <41.152576, 33.458992, 19.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026779, 33.257797, 19.566652>,  <40.817116, 32.922474, 19.626654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026779, 33.257797, 19.566652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136867, 0.090925, 0.986408,
		0.840553, -0.537561, -0.067078,
		0.524156, 0.838308, -0.150002,
		41.184025, 33.509289, 19.521652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570709, 32.926933, 19.799229>,  <40.817116, 32.922474, 19.626654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570709, 32.926933, 19.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439781, 33.303097, 19.836096>,  <41.361225, 33.528793, 19.858215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439781, 33.303097, 19.836096>,  <41.570709, 32.926933, 19.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439781, 33.303097, 19.836096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200723, -0.026115, 0.979300,
		0.923349, 0.339041, -0.180215,
		-0.327316, 0.940409, 0.092166,
		41.341587, 33.585220, 19.863747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977943, 33.270103, 20.386686>,  <41.570709, 32.926933, 19.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977943, 33.270103, 20.386686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670979, 33.519493, 20.326880>,  <41.486797, 33.669125, 20.290995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670979, 33.519493, 20.326880>,  <41.977943, 33.270103, 20.386686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670979, 33.519493, 20.326880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135503, 0.070220, 0.988285,
		0.626667, 0.778686, 0.030595,
		-0.767416, 0.623472, -0.149519,
		41.440754, 33.706535, 20.282024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150688, 33.812927, 20.754961>,  <41.977943, 33.270103, 20.386686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150688, 33.812927, 20.754961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763794, 33.876465, 20.675735>,  <41.531658, 33.914589, 20.628201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763794, 33.876465, 20.675735>,  <42.150688, 33.812927, 20.754961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763794, 33.876465, 20.675735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169711, 0.175731, 0.969699,
		0.188841, 0.971538, -0.143014,
		-0.967232, 0.158848, -0.198066,
		41.473625, 33.924118, 20.616316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089668, 34.486809, 20.943714>,  <42.150688, 33.812927, 20.754961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089668, 34.486809, 20.943714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733143, 34.306133, 20.959442>,  <41.519230, 34.197727, 20.968880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733143, 34.306133, 20.959442>,  <42.089668, 34.486809, 20.943714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733143, 34.306133, 20.959442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119352, 0.317413, 0.940747,
		-0.437405, 0.833803, -0.336823,
		-0.891309, -0.451688, 0.039322,
		41.465752, 34.170628, 20.971239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637321, 35.010857, 21.154953>,  <42.089668, 34.486809, 20.943714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637321, 35.010857, 21.154953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453781, 34.663918, 21.232069>,  <41.343658, 34.455753, 21.278339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453781, 34.663918, 21.232069>,  <41.637321, 35.010857, 21.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453781, 34.663918, 21.232069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146499, 0.287864, 0.946400,
		-0.876353, 0.406011, -0.259151,
		-0.458849, -0.867346, 0.192790,
		41.316128, 34.403713, 21.289906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124870, 35.219742, 21.727203>,  <41.637321, 35.010857, 21.154953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124870, 35.219742, 21.727203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123508, 34.819752, 21.729855>,  <41.122692, 34.579758, 21.731445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123508, 34.819752, 21.729855>,  <41.124870, 35.219742, 21.727203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123508, 34.819752, 21.729855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383350, 0.007428, 0.923574,
		-0.923597, 0.000608, -0.383364,
		-0.003409, -0.999972, 0.006627,
		41.122486, 34.519760, 21.731842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429356, 34.969292, 21.891899>,  <41.124870, 35.219742, 21.727203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429356, 34.969292, 21.891899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697445, 34.690639, 21.994268>,  <40.858299, 34.523449, 22.055689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697445, 34.690639, 21.994268>,  <40.429356, 34.969292, 21.891899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697445, 34.690639, 21.994268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391480, -0.038894, 0.919364,
		-0.630507, -0.716371, -0.298787,
		0.670227, -0.696634, 0.255922,
		40.898514, 34.481647, 22.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077564, 34.442963, 22.238914>,  <40.429356, 34.969292, 21.891899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077564, 34.442963, 22.238914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453712, 34.367538, 22.352154>,  <40.679401, 34.322285, 22.420097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453712, 34.367538, 22.352154>,  <40.077564, 34.442963, 22.238914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453712, 34.367538, 22.352154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324325, -0.246171, 0.913353,
		-0.102536, -0.950707, -0.292649,
		0.940372, -0.188565, 0.283097,
		40.735825, 34.310970, 22.437082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037853, 33.946121, 22.743650>,  <40.077564, 34.442963, 22.238914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037853, 33.946121, 22.743650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406601, 34.087891, 22.806314>,  <40.627850, 34.172951, 22.843914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406601, 34.087891, 22.806314>,  <40.037853, 33.946121, 22.743650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406601, 34.087891, 22.806314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152908, -0.038763, 0.987480,
		0.356057, -0.934282, 0.018460,
		0.921869, 0.354422, 0.156661,
		40.683163, 34.194218, 22.853313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362011, 33.584583, 23.299099>,  <40.037853, 33.946121, 22.743650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362011, 33.584583, 23.299099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544910, 33.940041, 23.313192>,  <40.654652, 34.153313, 23.321650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544910, 33.940041, 23.313192>,  <40.362011, 33.584583, 23.299099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544910, 33.940041, 23.313192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153374, 0.039768, 0.987368,
		0.876014, -0.456875, 0.154479,
		0.457247, 0.888642, 0.035236,
		40.682083, 34.206635, 23.323763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646622, 33.538975, 23.898598>,  <40.362011, 33.584583, 23.299099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646622, 33.538975, 23.898598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699497, 33.926739, 23.815878>,  <40.731220, 34.159397, 23.766245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699497, 33.926739, 23.815878>,  <40.646622, 33.538975, 23.898598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699497, 33.926739, 23.815878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049320, 0.214807, 0.975411,
		0.989997, -0.118737, 0.076206,
		0.132187, 0.969412, -0.206802,
		40.739155, 34.217564, 23.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247429, 33.855057, 24.287624>,  <40.646622, 33.538975, 23.898598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247429, 33.855057, 24.287624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982273, 34.135906, 24.183620>,  <40.823181, 34.304417, 24.121218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982273, 34.135906, 24.183620>,  <41.247429, 33.855057, 24.287624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982273, 34.135906, 24.183620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018868, 0.331501, 0.943266,
		0.748480, 0.630187, -0.206501,
		-0.662889, 0.702120, -0.260012,
		40.783405, 34.346542, 24.105618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412498, 34.462051, 24.750719>,  <41.247429, 33.855057, 24.287624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412498, 34.462051, 24.750719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052704, 34.545902, 24.597368>,  <40.836826, 34.596214, 24.505358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052704, 34.545902, 24.597368>,  <41.412498, 34.462051, 24.750719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052704, 34.545902, 24.597368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245828, 0.482587, 0.840641,
		0.361233, 0.850392, -0.382550,
		-0.899489, 0.209626, -0.383376,
		40.782856, 34.608791, 24.482355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346474, 35.192356, 24.789053>,  <41.412498, 34.462051, 24.750719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346474, 35.192356, 24.789053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973877, 35.046917, 24.784580>,  <40.750320, 34.959652, 24.781897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973877, 35.046917, 24.784580>,  <41.346474, 35.192356, 24.789053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973877, 35.046917, 24.784580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228950, 0.562094, 0.794753,
		-0.282687, 0.742863, -0.606831,
		-0.931488, -0.363600, -0.011182,
		40.694431, 34.937836, 24.781225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006851, 35.744453, 25.005365>,  <41.346474, 35.192356, 24.789053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006851, 35.744453, 25.005365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735615, 35.452576, 25.040554>,  <40.572872, 35.277451, 25.061666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735615, 35.452576, 25.040554>,  <41.006851, 35.744453, 25.005365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735615, 35.452576, 25.040554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343947, 0.420824, 0.839409,
		-0.649532, 0.538938, -0.536333,
		-0.678092, -0.729693, 0.087972,
		40.532188, 35.233669, 25.066946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337227, 36.083618, 25.073103>,  <41.006851, 35.744453, 25.005365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337227, 36.083618, 25.073103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325497, 35.720882, 25.241289>,  <40.318459, 35.503242, 25.342201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325497, 35.720882, 25.241289>,  <40.337227, 36.083618, 25.073103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325497, 35.720882, 25.241289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377266, 0.399574, 0.835470,
		-0.925640, -0.134128, -0.353835,
		-0.029323, -0.906835, 0.420464,
		40.316700, 35.448833, 25.367428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936813, 36.256165, 25.549391>,  <40.337227, 36.083618, 25.073103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936813, 36.256165, 25.549391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035801, 35.882172, 25.651031>,  <40.095196, 35.657776, 25.712015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035801, 35.882172, 25.651031>,  <39.936813, 36.256165, 25.549391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035801, 35.882172, 25.651031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295119, 0.177056, 0.938912,
		-0.922855, -0.307345, -0.232114,
		0.247473, -0.934981, 0.254101,
		40.110043, 35.601677, 25.727262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313667, 35.869789, 25.773153>,  <39.936813, 36.256165, 25.549391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313667, 35.869789, 25.773153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648243, 35.729145, 25.941317>,  <39.848988, 35.644760, 26.042215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648243, 35.729145, 25.941317>,  <39.313667, 35.869789, 25.773153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648243, 35.729145, 25.941317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356222, 0.234168, 0.904583,
		-0.416507, -0.906386, 0.070615,
		0.836437, -0.351611, 0.420408,
		39.899174, 35.623661, 26.067438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093620, 35.449234, 26.266848>,  <39.313667, 35.869789, 25.773153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093620, 35.449234, 26.266848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468216, 35.532520, 26.379730>,  <39.692974, 35.582493, 26.447460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468216, 35.532520, 26.379730>,  <39.093620, 35.449234, 26.266848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468216, 35.532520, 26.379730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308624, 0.107097, 0.945136,
		0.166576, -0.972200, 0.164557,
		0.936485, 0.208223, 0.282204,
		39.749161, 35.594986, 26.464392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233299, 35.054134, 26.862926>,  <39.093620, 35.449234, 26.266848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233299, 35.054134, 26.862926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524338, 35.328274, 26.874920>,  <39.698963, 35.492756, 26.882116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524338, 35.328274, 26.874920>,  <39.233299, 35.054134, 26.862926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524338, 35.328274, 26.874920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192286, 0.161796, 0.967909,
		0.658501, -0.710016, 0.249505,
		0.727600, 0.685346, 0.029984,
		39.742619, 35.533878, 26.883915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527859, 34.936962, 27.421791>,  <39.233299, 35.054134, 26.862926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527859, 34.936962, 27.421791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641171, 35.316288, 27.364576>,  <39.709156, 35.543884, 27.330248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641171, 35.316288, 27.364576>,  <39.527859, 34.936962, 27.421791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641171, 35.316288, 27.364576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043816, 0.161788, 0.985852,
		0.958036, -0.273004, 0.087382,
		0.283279, 0.948311, -0.143036,
		39.726154, 35.600780, 27.321665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121910, 35.038643, 27.890759>,  <39.527859, 34.936962, 27.421791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121910, 35.038643, 27.890759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975494, 35.398441, 27.795326>,  <39.887646, 35.614319, 27.738066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975494, 35.398441, 27.795326>,  <40.121910, 35.038643, 27.890759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975494, 35.398441, 27.795326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040893, 0.271675, 0.961520,
		0.929699, 0.342200, -0.136228,
		-0.366042, 0.899495, -0.238583,
		39.865681, 35.668289, 27.723751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569798, 35.614326, 28.142317>,  <40.121910, 35.038643, 27.890759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569798, 35.614326, 28.142317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185516, 35.720982, 28.111443>,  <39.954948, 35.784973, 28.092918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185516, 35.720982, 28.111443>,  <40.569798, 35.614326, 28.142317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185516, 35.720982, 28.111443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009980, 0.311057, 0.950339,
		0.277400, 0.912223, -0.301494,
		-0.960703, 0.266633, -0.077183,
		39.897305, 35.800972, 28.088287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513729, 36.323914, 28.386902>,  <40.569798, 35.614326, 28.142317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513729, 36.323914, 28.386902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138168, 36.188343, 28.410898>,  <39.912834, 36.107002, 28.425297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138168, 36.188343, 28.410898>,  <40.513729, 36.323914, 28.386902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138168, 36.188343, 28.410898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116325, 0.476501, 0.871444,
		-0.323939, 0.811220, -0.486812,
		-0.938899, -0.338923, 0.059992,
		39.856499, 36.086666, 28.428896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169540, 36.803307, 28.762573>,  <40.513729, 36.323914, 28.386902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169540, 36.803307, 28.762573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905529, 36.504353, 28.792994>,  <39.747124, 36.324982, 28.811245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905529, 36.504353, 28.792994>,  <40.169540, 36.803307, 28.762573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905529, 36.504353, 28.792994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326585, 0.376624, 0.866889,
		-0.676539, 0.547335, -0.492666,
		-0.660028, -0.747382, 0.076049,
		39.707520, 36.280136, 28.815807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523209, 37.090572, 28.998648>,  <40.169540, 36.803307, 28.762573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523209, 37.090572, 28.998648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507626, 36.699070, 29.079168>,  <39.498276, 36.464169, 29.127481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507626, 36.699070, 29.079168>,  <39.523209, 37.090572, 28.998648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507626, 36.699070, 29.079168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312550, 0.203283, 0.927895,
		-0.949102, -0.026765, -0.313830,
		-0.038961, -0.978754, 0.201302,
		39.495937, 36.405445, 29.139559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067722, 37.028114, 29.453882>,  <39.523209, 37.090572, 28.998648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067722, 37.028114, 29.453882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198204, 36.650585, 29.474979>,  <39.276493, 36.424068, 29.487638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198204, 36.650585, 29.474979>,  <39.067722, 37.028114, 29.453882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198204, 36.650585, 29.474979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234470, -0.026734, 0.971756,
		-0.915758, -0.329361, -0.230020,
		0.326208, -0.943825, 0.052744,
		39.296066, 36.367439, 29.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571697, 36.533710, 29.773308>,  <39.067722, 37.028114, 29.453882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571697, 36.533710, 29.773308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 36.358170, 29.824564>,  <39.140900, 36.252846, 29.855318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 36.358170, 29.824564>,  <38.571697, 36.533710, 29.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927448, 36.358170, 29.824564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220963, -0.167251, 0.960834,
		-0.400232, -0.882857, -0.245719,
		0.889376, -0.438852, 0.128140,
		39.194260, 36.226513, 29.863007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439857, 35.895317, 30.137774>,  <38.571697, 36.533710, 29.773308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439857, 35.895317, 30.137774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831223, 35.965290, 30.181782>,  <39.066040, 36.007275, 30.208187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831223, 35.965290, 30.181782>,  <38.439857, 35.895317, 30.137774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831223, 35.965290, 30.181782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089505, -0.121157, 0.988590,
		0.186271, -0.977097, -0.102884,
		0.978413, 0.174937, 0.110023,
		39.124748, 36.017773, 30.214788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657589, 35.375462, 30.588535>,  <38.439857, 35.895317, 30.137774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657589, 35.375462, 30.588535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927036, 35.669899, 30.615047>,  <39.088707, 35.846561, 30.630955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927036, 35.669899, 30.615047>,  <38.657589, 35.375462, 30.588535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927036, 35.669899, 30.615047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015922, -0.075207, 0.997041,
		0.738904, -0.672685, -0.038941,
		0.673623, 0.736097, 0.066281,
		39.129124, 35.890728, 30.634932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276722, 35.117733, 30.870127>,  <38.657589, 35.375462, 30.588535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276722, 35.117733, 30.870127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236195, 35.508598, 30.944843>,  <39.211880, 35.743118, 30.989674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236195, 35.508598, 30.944843>,  <39.276722, 35.117733, 30.870127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236195, 35.508598, 30.944843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141831, -0.171654, 0.974895,
		0.984692, 0.125269, -0.121200,
		-0.101320, 0.977161, 0.186793,
		39.205799, 35.801746, 31.000881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924335, 35.342777, 31.233950>,  <39.276722, 35.117733, 30.870127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924335, 35.342777, 31.233950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621162, 35.587807, 31.323654>,  <39.439259, 35.734825, 31.377478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621162, 35.587807, 31.323654>,  <39.924335, 35.342777, 31.233950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621162, 35.587807, 31.323654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203804, -0.104214, 0.973449,
		0.619681, 0.783513, -0.045858,
		-0.757931, 0.612574, 0.224262,
		39.393784, 35.771580, 31.390932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004028, 35.423080, 31.920300>,  <39.924335, 35.342777, 31.233950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004028, 35.423080, 31.920300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659523, 35.620781, 31.873072>,  <39.452820, 35.739403, 31.844734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659523, 35.620781, 31.873072>,  <40.004028, 35.423080, 31.920300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659523, 35.620781, 31.873072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094480, 0.072551, 0.992880,
		0.499300, 0.866285, -0.015788,
		-0.861262, 0.494253, -0.118071,
		39.401146, 35.769058, 31.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974724, 36.080624, 32.280750>,  <40.004028, 35.423080, 31.920300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974724, 36.080624, 32.280750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587688, 35.984402, 32.249985>,  <39.355469, 35.926670, 32.231525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587688, 35.984402, 32.249985>,  <39.974724, 36.080624, 32.280750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587688, 35.984402, 32.249985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092154, 0.052746, 0.994347,
		-0.235133, 0.969202, -0.073204,
		-0.967585, -0.240550, -0.076914,
		39.297413, 35.912235, 32.226910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689888, 36.580708, 32.811268>,  <39.974724, 36.080624, 32.280750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689888, 36.580708, 32.811268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408302, 36.307388, 32.733768>,  <39.239349, 36.143398, 32.687267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408302, 36.307388, 32.733768>,  <39.689888, 36.580708, 32.811268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408302, 36.307388, 32.733768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229741, -0.039053, 0.972468,
		-0.672053, 0.729094, -0.129490,
		-0.703963, -0.683299, -0.193749,
		39.197113, 36.102398, 32.675644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188072, 36.715576, 33.306011>,  <39.689888, 36.580708, 32.811268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188072, 36.715576, 33.306011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112095, 36.342491, 33.183399>,  <39.066509, 36.118641, 33.109833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112095, 36.342491, 33.183399>,  <39.188072, 36.715576, 33.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112095, 36.342491, 33.183399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425363, -0.203213, 0.881913,
		-0.884865, 0.297906, -0.358142,
		-0.189948, -0.932715, -0.306534,
		39.055111, 36.062675, 33.091438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488766, 36.683487, 33.477509>,  <39.188072, 36.715576, 33.306011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488766, 36.683487, 33.477509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631069, 36.310284, 33.455860>,  <38.716450, 36.086361, 33.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631069, 36.310284, 33.455860>,  <38.488766, 36.683487, 33.477509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631069, 36.310284, 33.455860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439562, -0.218153, 0.871318,
		-0.824755, -0.286188, -0.487725,
		0.355759, -0.933009, -0.054125,
		38.737797, 36.030380, 33.439621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875877, 36.234825, 33.745087>,  <38.488766, 36.683487, 33.477509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875877, 36.234825, 33.745087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220688, 36.032085, 33.746365>,  <38.427574, 35.910442, 33.747131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220688, 36.032085, 33.746365>,  <37.875877, 36.234825, 33.745087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220688, 36.032085, 33.746365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238280, -0.399680, 0.885143,
		-0.447363, -0.763777, -0.465308,
		0.862026, -0.506854, 0.003191,
		38.479298, 35.880032, 33.747322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743168, 35.545391, 33.868473>,  <37.875877, 36.234825, 33.745087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743168, 35.545391, 33.868473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126316, 35.585217, 33.976231>,  <38.356205, 35.609112, 34.040886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126316, 35.585217, 33.976231>,  <37.743168, 35.545391, 33.868473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126316, 35.585217, 33.976231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200831, -0.438357, 0.876077,
		0.205315, -0.893270, -0.399893,
		0.957869, 0.099561, 0.269398,
		38.413677, 35.615086, 34.057049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896912, 35.003792, 34.355011>,  <37.743168, 35.545391, 33.868473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896912, 35.003792, 34.355011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212109, 35.239403, 34.426689>,  <38.401226, 35.380772, 34.469696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212109, 35.239403, 34.426689>,  <37.896912, 35.003792, 34.355011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212109, 35.239403, 34.426689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135153, -0.449438, 0.883028,
		0.600667, -0.671601, -0.433763,
		0.787993, 0.589030, 0.179194,
		38.448505, 35.416111, 34.480446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257889, 34.587391, 34.726067>,  <37.896912, 35.003792, 34.355011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257889, 34.587391, 34.726067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 34.924149, 34.822536>,  <38.566849, 35.126202, 34.880417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 34.924149, 34.822536>,  <38.257889, 34.587391, 34.726067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450989, 34.924149, 34.822536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128267, -0.340391, 0.931494,
		0.866314, -0.418744, -0.272311,
		0.482750, 0.841895, 0.241175,
		38.595814, 35.176716, 34.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841061, 34.318062, 35.143566>,  <38.257889, 34.587391, 34.726067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841061, 34.318062, 35.143566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746643, 34.702694, 35.199642>,  <38.689991, 34.933472, 35.233288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746643, 34.702694, 35.199642>,  <38.841061, 34.318062, 35.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746643, 34.702694, 35.199642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045449, -0.133184, 0.990049,
		0.970678, 0.240070, -0.012265,
		-0.236048, 0.961576, 0.140190,
		38.675827, 34.991165, 35.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325539, 34.624977, 35.660351>,  <38.841061, 34.318062, 35.143566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325539, 34.624977, 35.660351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998108, 34.854431, 35.672230>,  <38.801651, 34.992104, 35.679356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998108, 34.854431, 35.672230>,  <39.325539, 34.624977, 35.660351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998108, 34.854431, 35.672230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008897, -0.064357, 0.997887,
		0.574332, 0.816581, 0.057785,
		-0.818574, 0.573633, 0.029697,
		38.752537, 35.026520, 35.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362793, 35.225792, 36.189949>,  <39.325539, 34.624977, 35.660351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362793, 35.225792, 36.189949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967529, 35.176296, 36.153667>,  <38.730370, 35.146599, 36.131901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967529, 35.176296, 36.153667>,  <39.362793, 35.225792, 36.189949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967529, 35.176296, 36.153667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062657, -0.214162, 0.974787,
		-0.140040, 0.968929, 0.203874,
		-0.988161, -0.123735, -0.090702,
		38.671082, 35.139175, 36.126457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127502, 35.566208, 36.753368>,  <39.362793, 35.225792, 36.189949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127502, 35.566208, 36.753368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933323, 35.235352, 36.640106>,  <38.816814, 35.036839, 36.572151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933323, 35.235352, 36.640106>,  <39.127502, 35.566208, 36.753368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933323, 35.235352, 36.640106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039416, -0.344252, 0.938049,
		-0.873375, 0.444216, 0.199720,
		-0.485451, -0.827141, -0.283152,
		38.787689, 34.987209, 36.555161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642467, 35.448322, 37.284698>,  <39.127502, 35.566208, 36.753368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642467, 35.448322, 37.284698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692810, 35.107323, 37.081760>,  <38.723015, 34.902721, 36.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692810, 35.107323, 37.081760>,  <38.642467, 35.448322, 37.284698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692810, 35.107323, 37.081760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135080, -0.491925, 0.860094,
		-0.982809, -0.176778, 0.053246,
		0.125853, -0.852502, -0.507348,
		38.730564, 34.851574, 36.929558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245491, 35.011036, 37.652069>,  <38.642467, 35.448322, 37.284698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245491, 35.011036, 37.652069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533352, 34.813297, 37.457043>,  <38.706070, 34.694653, 37.340027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533352, 34.813297, 37.457043>,  <38.245491, 35.011036, 37.652069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533352, 34.813297, 37.457043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172863, -0.552538, 0.815365,
		-0.672474, -0.671061, -0.312180,
		0.719651, -0.494347, -0.487569,
		38.749249, 34.664993, 37.310772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314545, 34.525719, 38.124874>,  <38.245491, 35.011036, 37.652069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314545, 34.525719, 38.124874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562359, 34.407822, 37.833862>,  <38.711048, 34.337082, 37.659256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562359, 34.407822, 37.833862>,  <38.314545, 34.525719, 38.124874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562359, 34.407822, 37.833862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495635, -0.571826, 0.653729,
		-0.608705, -0.765597, -0.208180,
		0.619536, -0.294747, -0.727530,
		38.748219, 34.319397, 37.615604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465431, 33.797379, 38.313580>,  <38.314545, 34.525719, 38.124874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465431, 33.797379, 38.313580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732212, 33.917316, 38.040737>,  <38.892281, 33.989281, 37.877033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732212, 33.917316, 38.040737>,  <38.465431, 33.797379, 38.313580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732212, 33.917316, 38.040737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640386, -0.698656, 0.319039,
		-0.380892, -0.649593, -0.657989,
		0.666954, 0.299848, -0.682102,
		38.932297, 34.007271, 37.836105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667770, 33.198681, 37.817379>,  <38.465431, 33.797379, 38.313580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667770, 33.198681, 37.817379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957779, 33.471840, 37.781612>,  <39.131783, 33.635735, 37.760155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957779, 33.471840, 37.781612>,  <38.667770, 33.198681, 37.817379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957779, 33.471840, 37.781612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685444, -0.702784, 0.190422,
		0.067201, -0.199348, -0.977622,
		0.725017, 0.682902, -0.089414,
		39.175285, 33.676712, 37.754787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165169, 32.797741, 37.479092>,  <38.667770, 33.198681, 37.817379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165169, 32.797741, 37.479092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328812, 33.115322, 37.658989>,  <39.426998, 33.305870, 37.766926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328812, 33.115322, 37.658989>,  <39.165169, 32.797741, 37.479092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328812, 33.115322, 37.658989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621098, -0.603369, 0.500183,
		0.668482, 0.074703, -0.739967,
		0.409108, 0.793955, 0.449739,
		39.451546, 33.353508, 37.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877674, 33.032612, 37.239719>,  <39.165169, 32.797741, 37.479092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877674, 33.032612, 37.239719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839588, 33.135754, 37.624310>,  <39.816734, 33.197639, 37.855064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839588, 33.135754, 37.624310>,  <39.877674, 33.032612, 37.239719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839588, 33.135754, 37.624310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748435, -0.618284, 0.239935,
		0.656337, 0.742452, -0.134116,
		-0.095219, 0.257856, 0.961480,
		39.811024, 33.213112, 37.912754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505661, 32.946625, 37.445572>,  <39.877674, 33.032612, 37.239719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505661, 32.946625, 37.445572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310848, 33.008789, 37.789349>,  <40.193962, 33.046085, 37.995617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310848, 33.008789, 37.789349>,  <40.505661, 32.946625, 37.445572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310848, 33.008789, 37.789349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660218, -0.578693, 0.478776,
		0.571761, 0.800601, 0.179239,
		-0.487033, 0.155409, 0.859446,
		40.164738, 33.055412, 38.047184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991959, 33.188030, 37.820576>,  <40.505661, 32.946625, 37.445572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991959, 33.188030, 37.820576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727692, 33.090187, 38.104462>,  <40.569134, 33.031483, 38.274792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727692, 33.090187, 38.104462>,  <40.991959, 33.188030, 37.820576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727692, 33.090187, 38.104462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720057, -0.473774, 0.507008,
		0.212225, 0.845994, 0.489136,
		-0.660665, -0.244606, 0.709711,
		40.529491, 33.016804, 38.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382866, 33.285988, 38.425739>,  <40.991959, 33.188030, 37.820576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382866, 33.285988, 38.425739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084053, 33.034554, 38.512295>,  <40.904766, 32.883694, 38.564228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084053, 33.034554, 38.512295>,  <41.382866, 33.285988, 38.425739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084053, 33.034554, 38.512295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644274, -0.604307, 0.468748,
		-0.163881, 0.489585, 0.856417,
		-0.747030, -0.628586, 0.216392,
		40.859943, 32.845978, 38.577213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554153, 33.147430, 39.098408>,  <41.382866, 33.285988, 38.425739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554153, 33.147430, 39.098408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356937, 32.885780, 38.868965>,  <41.238605, 32.728790, 38.731300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356937, 32.885780, 38.868965>,  <41.554153, 33.147430, 39.098408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356937, 32.885780, 38.868965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673071, -0.704549, 0.224913,
		-0.551257, -0.275188, 0.787647,
		-0.493043, -0.654127, -0.573609,
		41.209026, 32.689541, 38.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495941, 32.564915, 39.502346>,  <41.554153, 33.147430, 39.098408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495941, 32.564915, 39.502346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554379, 32.436317, 39.128117>,  <41.589439, 32.359158, 38.903580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554379, 32.436317, 39.128117>,  <41.495941, 32.564915, 39.502346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554379, 32.436317, 39.128117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897999, -0.353669, 0.261755,
		-0.415037, -0.878384, 0.237036,
		0.146089, -0.321496, -0.935574,
		41.598206, 32.339867, 38.847443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030552, 32.216637, 39.601017>,  <41.495941, 32.564915, 39.502346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030552, 32.216637, 39.601017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013485, 32.171692, 39.203918>,  <42.003242, 32.144726, 38.965660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013485, 32.171692, 39.203918>,  <42.030552, 32.216637, 39.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013485, 32.171692, 39.203918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877593, -0.479122, 0.016508,
		-0.477503, -0.870527, 0.119055,
		-0.042671, -0.112364, -0.992750,
		42.000683, 32.137981, 38.906094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154984, 31.596987, 39.385410>,  <42.030552, 32.216637, 39.601017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154984, 31.596987, 39.385410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234352, 31.773293, 39.035244>,  <42.281971, 31.879076, 38.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234352, 31.773293, 39.035244>,  <42.154984, 31.596987, 39.385410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234352, 31.773293, 39.035244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841133, -0.535064, -0.078751,
		-0.503116, -0.720717, -0.476908,
		0.198419, 0.440764, -0.875418,
		42.293877, 31.905521, 38.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655617, 31.025227, 39.470531>,  <42.154984, 31.596987, 39.385410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655617, 31.025227, 39.470531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358765, 30.914270, 39.226467>,  <41.180653, 30.847696, 39.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358765, 30.914270, 39.226467>,  <41.655617, 31.025227, 39.470531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358765, 30.914270, 39.226467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033428, 0.924527, -0.379648,
		0.669423, -0.261351, -0.695390,
		-0.742128, -0.277391, -0.610163,
		41.136127, 30.831053, 39.043419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224007, 31.503613, 39.095867>,  <41.655617, 31.025227, 39.470531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224007, 31.503613, 39.095867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142399, 31.866800, 39.242271>,  <41.093433, 32.084713, 39.330112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142399, 31.866800, 39.242271>,  <41.224007, 31.503613, 39.095867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142399, 31.866800, 39.242271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684044, 0.135242, -0.716793,
		-0.700328, -0.396607, 0.593501,
		-0.204019, 0.907972, 0.366011,
		41.081192, 32.139191, 39.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659168, 31.691624, 38.820236>,  <41.224007, 31.503613, 39.095867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659168, 31.691624, 38.820236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726246, 32.061981, 38.955647>,  <40.766491, 32.284195, 39.036892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726246, 32.061981, 38.955647>,  <40.659168, 31.691624, 38.820236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726246, 32.061981, 38.955647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681397, 0.357018, -0.638934,
		-0.712445, -0.123527, 0.690770,
		0.167692, 0.925893, 0.338527,
		40.776554, 32.339748, 39.057205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953468, 32.030403, 38.951283>,  <40.659168, 31.691624, 38.820236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953468, 32.030403, 38.951283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 32.299747, 38.857559>,  <40.402237, 32.461353, 38.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 32.299747, 38.857559>,  <39.953468, 32.030403, 38.951283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233948, 32.299747, 38.857559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684797, 0.544629, -0.484182,
		-0.198419, 0.499962, 0.843011,
		0.701201, 0.673362, -0.234308,
		40.444309, 32.501755, 38.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730011, 32.730804, 39.278831>,  <39.953468, 32.030403, 38.951283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730011, 32.730804, 39.278831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985008, 32.818592, 38.983418>,  <40.138008, 32.871265, 38.806171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985008, 32.818592, 38.983418>,  <39.730011, 32.730804, 39.278831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985008, 32.818592, 38.983418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707476, 0.546328, -0.448334,
		0.305084, 0.808305, 0.503555,
		0.637497, 0.219473, -0.738532,
		40.176258, 32.884434, 38.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542122, 33.378078, 39.134449>,  <39.730011, 32.730804, 39.278831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542122, 33.378078, 39.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741402, 33.278481, 38.802231>,  <39.860970, 33.218719, 38.602901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741402, 33.278481, 38.802231>,  <39.542122, 33.378078, 39.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741402, 33.278481, 38.802231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483644, 0.715217, -0.504532,
		0.719645, 0.653043, 0.235892,
		0.498195, -0.248996, -0.830543,
		39.890862, 33.203781, 38.553066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788898, 33.984127, 38.891998>,  <39.542122, 33.378078, 39.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788898, 33.984127, 38.891998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784702, 33.741074, 38.574337>,  <39.782185, 33.595242, 38.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784702, 33.741074, 38.574337>,  <39.788898, 33.984127, 38.891998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784702, 33.741074, 38.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333098, 0.750956, -0.570185,
		0.942834, 0.258551, -0.210276,
		-0.010486, -0.607632, -0.794150,
		39.781555, 33.558784, 38.336094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197666, 34.260311, 38.377487>,  <39.788898, 33.984127, 38.891998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197666, 34.260311, 38.377487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948391, 34.008827, 38.191429>,  <39.798824, 33.857937, 38.079796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948391, 34.008827, 38.191429>,  <40.197666, 34.260311, 38.377487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948391, 34.008827, 38.191429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404111, 0.768074, -0.496747,
		0.669574, -0.121598, -0.732724,
		-0.623189, -0.628711, -0.465143,
		39.761436, 33.820213, 38.051888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238674, 34.406715, 37.692451>,  <40.197666, 34.260311, 38.377487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238674, 34.406715, 37.692451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897705, 34.199009, 37.716930>,  <39.693123, 34.074387, 37.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897705, 34.199009, 37.716930>,  <40.238674, 34.406715, 37.692451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897705, 34.199009, 37.716930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426844, 0.623508, -0.655013,
		0.301965, -0.584469, -0.753135,
		-0.852421, -0.519262, 0.061200,
		39.641979, 34.043232, 37.735291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923042, 34.402508, 36.999355>,  <40.238674, 34.406715, 37.692451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923042, 34.402508, 36.999355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670700, 34.340759, 37.303509>,  <39.519295, 34.303711, 37.486000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670700, 34.340759, 37.303509>,  <39.923042, 34.402508, 36.999355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670700, 34.340759, 37.303509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570719, 0.756239, -0.319972,
		-0.525641, -0.635824, -0.565181,
		-0.630858, -0.154369, 0.760387,
		39.481441, 34.294449, 37.531624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248238, 34.382473, 36.732418>,  <39.923042, 34.402508, 36.999355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248238, 34.382473, 36.732418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246830, 34.494915, 37.116287>,  <39.245987, 34.562382, 37.346607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246830, 34.494915, 37.116287>,  <39.248238, 34.382473, 36.732418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246830, 34.494915, 37.116287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362976, 0.893864, -0.263163,
		-0.931792, -0.349262, 0.098893,
		-0.003516, 0.281110, 0.959669,
		39.245773, 34.579247, 37.404186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196095, 33.748352, 36.980099>,  <39.248238, 34.382473, 36.732418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196095, 33.748352, 36.980099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919582, 34.028671, 37.050541>,  <38.753677, 34.196865, 37.092804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919582, 34.028671, 37.050541>,  <39.196095, 33.748352, 36.980099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919582, 34.028671, 37.050541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025407, 0.219985, -0.975172,
		-0.722142, -0.678589, -0.134265,
		-0.691278, 0.700802, 0.176102,
		38.712200, 34.238911, 37.103371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644276, 33.684036, 36.441586>,  <39.196095, 33.748352, 36.980099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644276, 33.684036, 36.441586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659534, 34.054626, 36.591354>,  <38.668690, 34.276981, 36.681213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659534, 34.054626, 36.591354>,  <38.644276, 33.684036, 36.441586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659534, 34.054626, 36.591354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227652, 0.372896, -0.899513,
		-0.972995, -0.050927, 0.225137,
		0.038143, 0.926475, 0.374420,
		38.670979, 34.332569, 36.703682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992779, 33.953274, 36.345932>,  <38.644276, 33.684036, 36.441586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992779, 33.953274, 36.345932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251198, 34.256065, 36.385120>,  <38.406250, 34.437740, 36.408634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251198, 34.256065, 36.385120>,  <37.992779, 33.953274, 36.345932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251198, 34.256065, 36.385120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304574, 0.373355, -0.876265,
		-0.699895, 0.536272, 0.471763,
		0.646052, 0.756980, 0.097975,
		38.445015, 34.483158, 36.414513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548180, 34.506916, 36.150959>,  <37.992779, 33.953274, 36.345932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548180, 34.506916, 36.150959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845554, 34.738861, 36.284264>,  <38.023979, 34.878029, 36.364246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845554, 34.738861, 36.284264>,  <37.548180, 34.506916, 36.150959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845554, 34.738861, 36.284264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202761, 0.279431, -0.938513,
		-0.637329, 0.765299, 0.090167,
		0.743438, 0.579859, 0.333262,
		38.068584, 34.912819, 36.384243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462307, 35.078590, 35.778168>,  <37.548180, 34.506916, 36.150959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462307, 35.078590, 35.778168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836002, 35.119171, 35.914932>,  <38.060219, 35.143520, 35.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836002, 35.119171, 35.914932>,  <37.462307, 35.078590, 35.778168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836002, 35.119171, 35.914932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293410, 0.326354, -0.898556,
		-0.202740, 0.939788, 0.275128,
		0.934241, 0.101448, 0.341908,
		38.116276, 35.149605, 36.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681328, 35.824913, 35.748741>,  <37.462307, 35.078590, 35.778168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681328, 35.824913, 35.748741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000378, 35.584534, 35.728088>,  <38.191807, 35.440308, 35.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000378, 35.584534, 35.728088>,  <37.681328, 35.824913, 35.748741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000378, 35.584534, 35.728088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298267, 0.467387, -0.832218,
		0.524251, 0.648392, 0.552040,
		0.797620, -0.600946, -0.051634,
		38.239662, 35.404251, 35.712597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226704, 36.204330, 35.529953>,  <37.681328, 35.824913, 35.748741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226704, 36.204330, 35.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389660, 35.847130, 35.453453>,  <38.487434, 35.632809, 35.407551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389660, 35.847130, 35.453453>,  <38.226704, 36.204330, 35.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389660, 35.847130, 35.453453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391783, 0.360065, -0.846675,
		0.824946, 0.270002, 0.496552,
		0.407395, -0.893002, -0.191252,
		38.511879, 35.579227, 35.396076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931709, 36.338211, 35.323723>,  <38.226704, 36.204330, 35.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931709, 36.338211, 35.323723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841934, 35.973053, 35.187336>,  <38.788071, 35.753960, 35.105503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841934, 35.973053, 35.187336>,  <38.931709, 36.338211, 35.323723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841934, 35.973053, 35.187336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288807, 0.271863, -0.917976,
		0.930709, -0.304501, 0.202634,
		-0.224436, -0.912891, -0.340967,
		38.774605, 35.699184, 35.085045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413792, 36.175285, 34.815239>,  <38.931709, 36.338211, 35.323723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413792, 36.175285, 34.815239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110970, 35.936726, 34.708527>,  <38.929276, 35.793591, 34.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110970, 35.936726, 34.708527>,  <39.413792, 36.175285, 34.815239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110970, 35.936726, 34.708527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192100, 0.187087, -0.963377,
		0.624469, -0.780581, -0.027067,
		-0.757057, -0.596399, -0.266780,
		38.883854, 35.757805, 34.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674274, 35.681355, 34.394676>,  <39.413792, 36.175285, 34.815239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674274, 35.681355, 34.394676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288353, 35.676796, 34.289593>,  <39.056801, 35.674061, 34.226543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288353, 35.676796, 34.289593>,  <39.674274, 35.681355, 34.394676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288353, 35.676796, 34.289593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261621, -0.142162, -0.954644,
		-0.026462, -0.989778, 0.140143,
		-0.964808, -0.011403, -0.262708,
		38.998909, 35.673374, 34.210781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622704, 35.253632, 33.892483>,  <39.674274, 35.681355, 34.394676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622704, 35.253632, 33.892483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281372, 35.454224, 33.835430>,  <39.076572, 35.574581, 33.801197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281372, 35.454224, 33.835430>,  <39.622704, 35.253632, 33.892483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281372, 35.454224, 33.835430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114294, -0.086985, -0.989631,
		-0.508689, -0.860784, 0.016911,
		-0.853330, 0.501482, -0.142631,
		39.025372, 35.604668, 33.792641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244522, 34.837509, 33.443260>,  <39.622704, 35.253632, 33.892483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244522, 34.837509, 33.443260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120438, 35.217476, 33.428143>,  <39.045986, 35.445457, 33.419071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120438, 35.217476, 33.428143>,  <39.244522, 34.837509, 33.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120438, 35.217476, 33.428143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040872, -0.026391, -0.998816,
		-0.949788, -0.311389, -0.030638,
		-0.310212, 0.949916, -0.037793,
		39.027374, 35.502449, 33.416805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911945, 35.011532, 33.006107>,  <39.244522, 34.837509, 33.443260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911945, 35.011532, 33.006107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274845, 35.108593, 33.143524>,  <40.492584, 35.166832, 33.225975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274845, 35.108593, 33.143524>,  <39.911945, 35.011532, 33.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274845, 35.108593, 33.143524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294441, -0.949686, -0.106775,
		0.300350, 0.198024, -0.933047,
		0.907246, 0.242657, 0.343544,
		40.547020, 35.181389, 33.246586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453331, 35.014931, 32.423851>,  <39.911945, 35.011532, 33.006107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453331, 35.014931, 32.423851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574051, 34.899994, 32.787464>,  <40.646484, 34.831032, 33.005634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574051, 34.899994, 32.787464>,  <40.453331, 35.014931, 32.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574051, 34.899994, 32.787464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260575, -0.892330, -0.368575,
		0.917069, 0.348109, -0.194433,
		0.301802, -0.287344, 0.909037,
		40.664593, 34.813789, 33.060177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911125, 35.634789, 32.463425>,  <40.453331, 35.014931, 32.423851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911125, 35.634789, 32.463425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640312, 35.874210, 32.634708>,  <40.477825, 36.017864, 32.737480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640312, 35.874210, 32.634708>,  <40.911125, 35.634789, 32.463425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640312, 35.874210, 32.634708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726734, 0.635554, 0.260630,
		-0.116148, 0.487648, -0.865280,
		-0.677028, 0.598557, 0.428208,
		40.437202, 36.053776, 32.763172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121281, 36.394310, 32.166321>,  <40.911125, 35.634789, 32.463425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121281, 36.394310, 32.166321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937759, 36.313435, 32.512413>,  <40.827648, 36.264908, 32.720070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937759, 36.313435, 32.512413>,  <41.121281, 36.394310, 32.166321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937759, 36.313435, 32.512413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810020, 0.305055, 0.500809,
		-0.365201, 0.930624, 0.023818,
		-0.458799, -0.202189, 0.865230,
		40.800121, 36.252777, 32.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133663, 37.021049, 32.636955>,  <41.121281, 36.394310, 32.166321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133663, 37.021049, 32.636955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105160, 36.675388, 32.836216>,  <41.088058, 36.467991, 32.955772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105160, 36.675388, 32.836216>,  <41.133663, 37.021049, 32.636955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105160, 36.675388, 32.836216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877098, 0.183540, 0.443860,
		-0.474995, 0.468557, 0.744872,
		-0.071260, -0.864157, 0.498151,
		41.083782, 36.416142, 32.985661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045368, 37.146545, 33.340519>,  <41.133663, 37.021049, 32.636955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045368, 37.146545, 33.340519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214615, 36.784748, 33.319118>,  <41.316162, 36.567669, 33.306278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214615, 36.784748, 33.319118>,  <41.045368, 37.146545, 33.340519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214615, 36.784748, 33.319118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732804, 0.306881, 0.607307,
		-0.532887, -0.296167, 0.792664,
		0.423118, -0.904494, -0.053500,
		41.341549, 36.513401, 33.303070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288441, 36.931847, 34.057171>,  <41.045368, 37.146545, 33.340519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288441, 36.931847, 34.057171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492184, 36.757690, 33.760258>,  <41.614429, 36.653194, 33.582108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492184, 36.757690, 33.760258>,  <41.288441, 36.931847, 34.057171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492184, 36.757690, 33.760258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854655, 0.356771, 0.377199,
		0.100596, -0.826527, 0.553835,
		0.509358, -0.435393, -0.742285,
		41.644993, 36.627071, 33.537571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885380, 36.622719, 34.257759>,  <41.288441, 36.931847, 34.057171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885380, 36.622719, 34.257759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960377, 36.691589, 33.870937>,  <42.005375, 36.732914, 33.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960377, 36.691589, 33.870937>,  <41.885380, 36.622719, 34.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960377, 36.691589, 33.870937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925739, 0.298189, 0.232575,
		0.328411, -0.938849, -0.103485,
		0.187495, 0.172180, -0.967057,
		42.016624, 36.743244, 33.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481228, 36.193775, 34.006508>,  <41.885380, 36.622719, 34.257759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481228, 36.193775, 34.006508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426590, 36.524361, 33.788044>,  <42.393806, 36.722713, 33.656963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426590, 36.524361, 33.788044>,  <42.481228, 36.193775, 34.006508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426590, 36.524361, 33.788044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950612, 0.264468, 0.162460,
		0.278710, -0.496998, -0.821774,
		-0.136591, 0.826468, -0.546163,
		42.385612, 36.772301, 33.624195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109337, 36.248707, 33.652885>,  <42.481228, 36.193775, 34.006508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109337, 36.248707, 33.652885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921234, 36.469246, 33.928532>,  <42.808372, 36.601570, 34.093918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921234, 36.469246, 33.928532>,  <43.109337, 36.248707, 33.652885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921234, 36.469246, 33.928532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704749, -0.704606, 0.082826,
		0.531218, -0.446701, 0.719907,
		-0.470252, 0.551352, 0.689111,
		42.780159, 36.634651, 34.135265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651505, 35.800339, 33.734474>,  <43.109337, 36.248707, 33.652885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651505, 35.800339, 33.734474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856472, 35.514168, 33.544487>,  <43.979450, 35.342464, 33.430492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856472, 35.514168, 33.544487>,  <43.651505, 35.800339, 33.734474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856472, 35.514168, 33.544487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856204, 0.383182, 0.346535,
		-0.065920, -0.584241, 0.808899,
		0.512416, -0.715426, -0.474970,
		44.010197, 35.299541, 33.401997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132267, 35.405735, 34.269630>,  <43.651505, 35.800339, 33.734474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132267, 35.405735, 34.269630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251511, 35.368366, 33.889652>,  <44.323055, 35.345943, 33.661663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251511, 35.368366, 33.889652>,  <44.132267, 35.405735, 34.269630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251511, 35.368366, 33.889652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945039, 0.168893, 0.279959,
		0.134286, -0.981197, 0.138635,
		0.298110, -0.093421, -0.949949,
		44.340942, 35.340340, 33.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623024, 34.973339, 34.269600>,  <44.132267, 35.405735, 34.269630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623024, 34.973339, 34.269600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716702, 35.165283, 33.931396>,  <44.772907, 35.280449, 33.728474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716702, 35.165283, 33.931396>,  <44.623024, 34.973339, 34.269600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716702, 35.165283, 33.931396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930732, 0.140600, 0.337594,
		0.280877, -0.866005, -0.413695,
		0.234192, 0.479861, -0.845510,
		44.786961, 35.309242, 33.677742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242741, 34.810646, 33.931122>,  <44.623024, 34.973339, 34.269600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242741, 34.810646, 33.931122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191376, 35.189342, 33.813015>,  <45.160557, 35.416561, 33.742149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191376, 35.189342, 33.813015>,  <45.242741, 34.810646, 33.931122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191376, 35.189342, 33.813015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724613, 0.292847, 0.623840,
		0.677086, -0.133844, -0.723630,
		-0.128416, 0.946745, -0.295267,
		45.152851, 35.473366, 33.724434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835602, 35.063702, 33.598293>,  <45.242741, 34.810646, 33.931122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835602, 35.063702, 33.598293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618156, 35.305641, 33.831062>,  <45.487690, 35.450806, 33.970722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618156, 35.305641, 33.831062>,  <45.835602, 35.063702, 33.598293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618156, 35.305641, 33.831062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738126, 0.014458, 0.674508,
		0.399564, 0.796206, -0.454317,
		-0.543616, 0.604852, 0.581924,
		45.455070, 35.487099, 34.005638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153820, 35.777359, 33.764244>,  <45.835602, 35.063702, 33.598293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153820, 35.777359, 33.764244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944820, 35.610268, 34.061565>,  <45.819420, 35.510014, 34.239960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944820, 35.610268, 34.061565>,  <46.153820, 35.777359, 33.764244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944820, 35.610268, 34.061565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806801, 0.039770, 0.589483,
		-0.275804, 0.907702, 0.316243,
		-0.522498, -0.417727, 0.743303,
		45.788071, 35.484951, 34.284557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019791, 36.222878, 34.321552>,  <46.153820, 35.777359, 33.764244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019791, 36.222878, 34.321552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085247, 35.841900, 34.424362>,  <46.124523, 35.613312, 34.486050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085247, 35.841900, 34.424362>,  <46.019791, 36.222878, 34.321552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085247, 35.841900, 34.424362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899897, 0.250880, 0.356715,
		-0.404235, 0.172924, 0.898160,
		0.163646, -0.952448, 0.257028,
		46.134342, 35.556164, 34.501472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289886, 36.020657, 35.036919>,  <46.019791, 36.222878, 34.321552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289886, 36.020657, 35.036919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.420593, 35.843300, 34.703060>,  <46.499016, 35.736885, 34.502747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.420593, 35.843300, 34.703060>,  <46.289886, 36.020657, 35.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.420593, 35.843300, 34.703060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892797, 0.434541, 0.118689,
		0.310063, -0.783952, 0.537848,
		0.326764, -0.443388, -0.834646,
		46.518623, 35.710285, 34.452667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894684, 35.749790, 35.219032>,  <46.289886, 36.020657, 35.036919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894684, 35.749790, 35.219032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912731, 35.797630, 34.822315>,  <46.923557, 35.826336, 34.584286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912731, 35.797630, 34.822315>,  <46.894684, 35.749790, 35.219032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912731, 35.797630, 34.822315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881025, 0.463239, 0.095939,
		0.470913, -0.878125, -0.084476,
		0.045114, 0.119605, -0.991796,
		46.926266, 35.833511, 34.524776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.603077, 35.398354, 35.457737>,  <46.894684, 35.749790, 35.219032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.603077, 35.398354, 35.457737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587933, 34.999886, 35.426224>,  <47.578846, 34.760803, 35.407318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587933, 34.999886, 35.426224>,  <47.603077, 35.398354, 35.457737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587933, 34.999886, 35.426224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395881, 0.057433, -0.916504,
		0.917521, -0.065888, 0.392192,
		-0.037862, -0.996173, -0.078780,
		47.576572, 34.701035, 35.402588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.890255, 35.536255, 34.868855>,  <47.603077, 35.398354, 35.457737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.890255, 35.536255, 34.868855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827362, 35.143860, 34.914360>,  <47.789627, 34.908424, 34.941666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827362, 35.143860, 34.914360>,  <47.890255, 35.536255, 34.868855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827362, 35.143860, 34.914360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342554, -0.162222, -0.925387,
		0.926248, -0.106526, 0.361547,
		-0.157229, -0.980987, 0.113767,
		47.780193, 34.849564, 34.948490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.634552, 32.019924, 23.596785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269901, 32.087379, 23.446850>,  <36.051113, 32.127853, 23.356890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269901, 32.087379, 23.446850>,  <36.634552, 32.019924, 23.596785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269901, 32.087379, 23.446850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334791, 0.224382, 0.915187,
		0.238443, 0.959799, -0.148093,
		-0.911625, 0.168639, -0.374835,
		35.996414, 32.137970, 23.334400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427475, 32.611675, 23.918591>,  <36.634552, 32.019924, 23.596785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427475, 32.611675, 23.918591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093945, 32.421116, 23.807035>,  <35.893826, 32.306782, 23.740103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093945, 32.421116, 23.807035>,  <36.427475, 32.611675, 23.918591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093945, 32.421116, 23.807035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411234, 0.199033, 0.889535,
		-0.368265, 0.856406, -0.361870,
		-0.833827, -0.476398, -0.278887,
		35.843796, 32.278198, 23.723370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948257, 33.123535, 24.072453>,  <36.427475, 32.611675, 23.918591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948257, 33.123535, 24.072453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763046, 32.769196, 24.060570>,  <35.651920, 32.556591, 24.053440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763046, 32.769196, 24.060570>,  <35.948257, 33.123535, 24.072453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763046, 32.769196, 24.060570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397053, 0.177339, 0.900500,
		-0.792437, 0.428750, -0.433841,
		-0.463026, -0.885847, -0.029706,
		35.624138, 32.503441, 24.051659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386940, 33.227962, 24.524622>,  <35.948257, 33.123535, 24.072453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386940, 33.227962, 24.524622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348480, 32.836514, 24.451908>,  <35.325405, 32.601643, 24.408279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348480, 32.836514, 24.451908>,  <35.386940, 33.227962, 24.524622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348480, 32.836514, 24.451908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557515, -0.098345, 0.824321,
		-0.824580, 0.180607, -0.536143,
		-0.096151, -0.978626, -0.181784,
		35.319633, 32.542927, 24.397373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656532, 33.083508, 24.574419>,  <35.386940, 33.227962, 24.524622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656532, 33.083508, 24.574419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894367, 32.773426, 24.659758>,  <35.037067, 32.587376, 24.710960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894367, 32.773426, 24.659758>,  <34.656532, 33.083508, 24.574419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894367, 32.773426, 24.659758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429100, -0.081550, 0.899568,
		-0.679952, -0.626422, -0.381130,
		0.594590, -0.775206, 0.213348,
		35.072746, 32.540863, 24.723763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256401, 32.704670, 25.048908>,  <34.656532, 33.083508, 24.574419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256401, 32.704670, 25.048908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623508, 32.560341, 25.115248>,  <34.843773, 32.473743, 25.155050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623508, 32.560341, 25.115248>,  <34.256401, 32.704670, 25.048908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623508, 32.560341, 25.115248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217601, -0.107591, 0.970090,
		-0.332187, -0.926408, -0.177259,
		0.917770, -0.360823, 0.165847,
		34.898838, 32.452095, 25.165001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109501, 32.225071, 25.643381>,  <34.256401, 32.704670, 25.048908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109501, 32.225071, 25.643381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500343, 32.303947, 25.611429>,  <34.734848, 32.351273, 25.592258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500343, 32.303947, 25.611429>,  <34.109501, 32.225071, 25.643381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500343, 32.303947, 25.611429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059618, 0.106634, 0.992509,
		0.204230, -0.974549, 0.092437,
		0.977106, 0.197189, -0.079878,
		34.793476, 32.363102, 25.587465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482452, 31.827055, 26.158510>,  <34.109501, 32.225071, 25.643381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482452, 31.827055, 26.158510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693291, 32.151485, 26.057055>,  <34.819794, 32.346142, 25.996181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693291, 32.151485, 26.057055>,  <34.482452, 31.827055, 26.158510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693291, 32.151485, 26.057055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018198, 0.287623, 0.957570,
		0.849614, -0.509343, 0.136844,
		0.527091, 0.811074, -0.253638,
		34.851418, 32.394810, 25.980963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109245, 31.807142, 26.566071>,  <34.482452, 31.827055, 26.158510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109245, 31.807142, 26.566071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119728, 32.195171, 26.469515>,  <35.126019, 32.427990, 26.411581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119728, 32.195171, 26.469515>,  <35.109245, 31.807142, 26.566071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119728, 32.195171, 26.469515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144351, 0.235270, 0.961151,
		0.989180, -0.060031, -0.133867,
		0.026204, 0.970075, -0.241389,
		35.127590, 32.486195, 26.397099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593819, 32.038174, 27.033871>,  <35.109245, 31.807142, 26.566071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593819, 32.038174, 27.033871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400833, 32.361645, 26.899254>,  <35.285042, 32.555729, 26.818483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400833, 32.361645, 26.899254>,  <35.593819, 32.038174, 27.033871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400833, 32.361645, 26.899254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202635, 0.476844, 0.855313,
		0.852154, 0.344464, -0.393928,
		-0.482466, 0.808681, -0.336544,
		35.256092, 32.604248, 26.798290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985146, 32.588444, 27.147142>,  <35.593819, 32.038174, 27.033871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985146, 32.588444, 27.147142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601772, 32.702553, 27.149084>,  <35.371750, 32.771019, 27.150249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601772, 32.702553, 27.149084>,  <35.985146, 32.588444, 27.147142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601772, 32.702553, 27.149084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138733, 0.451090, 0.881630,
		0.249318, 0.845657, -0.471917,
		-0.958433, 0.285277, 0.004856,
		35.314243, 32.788136, 27.150541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996441, 33.306557, 27.355043>,  <35.985146, 32.588444, 27.147142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996441, 33.306557, 27.355043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616898, 33.198681, 27.420704>,  <35.389172, 33.133957, 27.460100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616898, 33.198681, 27.420704>,  <35.996441, 33.306557, 27.355043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616898, 33.198681, 27.420704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011598, 0.549355, 0.835508,
		-0.315503, 0.790872, -0.524386,
		-0.948854, -0.269687, 0.164151,
		35.332241, 33.117775, 27.469950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729729, 33.981682, 27.521498>,  <35.996441, 33.306557, 27.355043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729729, 33.981682, 27.521498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482857, 33.701412, 27.664692>,  <35.334736, 33.533253, 27.750608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482857, 33.701412, 27.664692>,  <35.729729, 33.981682, 27.521498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482857, 33.701412, 27.664692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165633, 0.560477, 0.811438,
		-0.769193, 0.441507, -0.461968,
		-0.617177, -0.700669, 0.357987,
		35.297703, 33.491211, 27.772087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265305, 34.338570, 27.919794>,  <35.729729, 33.981682, 27.521498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265305, 34.338570, 27.919794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226830, 33.962952, 28.051817>,  <35.203743, 33.737579, 28.131031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226830, 33.962952, 28.051817>,  <35.265305, 34.338570, 27.919794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226830, 33.962952, 28.051817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085123, 0.338139, 0.937239,
		-0.991716, 0.062059, -0.112461,
		-0.096192, -0.939048, 0.330055,
		35.197971, 33.681236, 28.150833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725758, 34.359417, 28.318817>,  <35.265305, 34.338570, 27.919794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725758, 34.359417, 28.318817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927887, 34.033474, 28.432415>,  <35.049164, 33.837906, 28.500574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927887, 34.033474, 28.432415>,  <34.725758, 34.359417, 28.318817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927887, 34.033474, 28.432415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161863, 0.233756, 0.958727,
		-0.847614, -0.530435, -0.013773,
		0.505323, -0.814860, 0.283993,
		35.079483, 33.789017, 28.517612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283188, 34.052639, 28.860350>,  <34.725758, 34.359417, 28.318817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283188, 34.052639, 28.860350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654877, 33.907768, 28.889673>,  <34.877892, 33.820847, 28.907269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654877, 33.907768, 28.889673>,  <34.283188, 34.052639, 28.860350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654877, 33.907768, 28.889673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010575, 0.224375, 0.974445,
		-0.369373, -0.904700, 0.212324,
		0.929221, -0.362180, 0.073311,
		34.933643, 33.799114, 28.911667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276592, 33.588997, 29.439554>,  <34.283188, 34.052639, 28.860350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276592, 33.588997, 29.439554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.672993, 33.632469, 29.408306>,  <34.910831, 33.658554, 29.389557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.672993, 33.632469, 29.408306>,  <34.276592, 33.588997, 29.439554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672993, 33.632469, 29.408306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054242, 0.207483, 0.976734,
		0.122357, -0.972183, 0.199721,
		0.991003, 0.108677, -0.078120,
		34.970295, 33.665073, 29.384871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481274, 33.310287, 30.092653>,  <34.276592, 33.588997, 29.439554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481274, 33.310287, 30.092653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786400, 33.532993, 29.961119>,  <34.969475, 33.666615, 29.882198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786400, 33.532993, 29.961119>,  <34.481274, 33.310287, 30.092653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786400, 33.532993, 29.961119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229315, 0.242561, 0.942644,
		0.604591, -0.794468, 0.057355,
		0.762813, 0.556762, -0.328834,
		35.015244, 33.700024, 29.862469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859524, 33.307449, 30.651199>,  <34.481274, 33.310287, 30.092653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859524, 33.307449, 30.651199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993656, 33.626335, 30.450401>,  <35.074135, 33.817665, 30.329922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993656, 33.626335, 30.450401>,  <34.859524, 33.307449, 30.651199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993656, 33.626335, 30.450401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179016, 0.469221, 0.864746,
		0.924935, -0.379844, 0.014631,
		0.335333, 0.797214, -0.501997,
		35.094257, 33.865498, 30.299803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440968, 33.537418, 31.051962>,  <34.859524, 33.307449, 30.651199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440968, 33.537418, 31.051962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326382, 33.858715, 30.843065>,  <35.257629, 34.051495, 30.717728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326382, 33.858715, 30.843065>,  <35.440968, 33.537418, 31.051962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326382, 33.858715, 30.843065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138166, 0.574025, 0.807097,
		0.948075, 0.159052, -0.275421,
		-0.286468, 0.803242, -0.522243,
		35.240440, 34.099689, 30.686392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007343, 34.020226, 31.300310>,  <35.440968, 33.537418, 31.051962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007343, 34.020226, 31.300310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714008, 34.231812, 31.129469>,  <35.538010, 34.358765, 31.026964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714008, 34.231812, 31.129469>,  <36.007343, 34.020226, 31.300310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714008, 34.231812, 31.129469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239590, 0.788981, 0.565778,
		0.636254, 0.312575, -0.705321,
		-0.733334, 0.528966, -0.427102,
		35.494007, 34.390503, 31.001339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359428, 34.619789, 31.061251>,  <36.007343, 34.020226, 31.300310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359428, 34.619789, 31.061251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969097, 34.697311, 31.101656>,  <35.734898, 34.743824, 31.125898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969097, 34.697311, 31.101656>,  <36.359428, 34.619789, 31.061251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969097, 34.697311, 31.101656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215485, 0.776034, 0.592738,
		0.036489, 0.600175, -0.799036,
		-0.975825, 0.193808, 0.101012,
		35.676350, 34.755455, 31.131960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677525, 35.212173, 31.255411>,  <36.359428, 34.619789, 31.061251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677525, 35.212173, 31.255411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897232, 34.950073, 31.462854>,  <37.029057, 34.792812, 31.587320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897232, 34.950073, 31.462854>,  <36.677525, 35.212173, 31.255411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897232, 34.950073, 31.462854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494551, -0.245360, -0.833797,
		0.673591, 0.714455, 0.189287,
		0.549267, -0.655251, 0.518607,
		37.062012, 34.753498, 31.618437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309845, 35.328133, 30.974024>,  <36.677525, 35.212173, 31.255411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309845, 35.328133, 30.974024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298389, 34.964054, 31.139296>,  <37.291515, 34.745605, 31.238459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298389, 34.964054, 31.139296>,  <37.309845, 35.328133, 30.974024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298389, 34.964054, 31.139296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374955, -0.392949, -0.839643,
		0.926601, 0.130879, 0.352537,
		-0.028638, -0.910199, 0.413181,
		37.289799, 34.690994, 31.263250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868019, 35.016941, 30.693918>,  <37.309845, 35.328133, 30.974024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868019, 35.016941, 30.693918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661667, 34.699757, 30.823576>,  <37.537853, 34.509445, 30.901371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661667, 34.699757, 30.823576>,  <37.868019, 35.016941, 30.693918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661667, 34.699757, 30.823576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228132, -0.491885, -0.840241,
		0.825723, -0.359520, 0.434656,
		-0.515885, -0.792965, 0.324143,
		37.506901, 34.461868, 30.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315105, 34.516903, 30.570747>,  <37.868019, 35.016941, 30.693918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315105, 34.516903, 30.570747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964928, 34.328033, 30.612036>,  <37.754822, 34.214710, 30.636808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964928, 34.328033, 30.612036>,  <38.315105, 34.516903, 30.570747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964928, 34.328033, 30.612036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217476, -0.575544, -0.788323,
		0.431636, -0.667681, 0.606541,
		-0.875440, -0.472177, 0.103222,
		37.702297, 34.186382, 30.643002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422813, 33.834831, 30.914549>,  <38.315105, 34.516903, 30.570747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422813, 33.834831, 30.914549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085018, 33.819302, 30.700882>,  <37.882339, 33.809986, 30.572681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085018, 33.819302, 30.700882>,  <38.422813, 33.834831, 30.914549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085018, 33.819302, 30.700882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463046, -0.554103, -0.691779,
		-0.269128, -0.831542, 0.485909,
		-0.844487, -0.038821, -0.534167,
		37.831673, 33.807655, 30.540632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342350, 33.103012, 30.726139>,  <38.422813, 33.834831, 30.914549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342350, 33.103012, 30.726139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109867, 33.310154, 30.475054>,  <37.970379, 33.434437, 30.324402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109867, 33.310154, 30.475054>,  <38.342350, 33.103012, 30.726139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109867, 33.310154, 30.475054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301097, -0.579780, -0.757097,
		-0.756001, -0.629034, 0.181049,
		-0.581208, 0.517853, -0.627715,
		37.935505, 33.465511, 30.286739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121857, 32.627934, 30.358698>,  <38.342350, 33.103012, 30.726139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121857, 32.627934, 30.358698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037327, 32.949184, 30.135872>,  <37.986607, 33.141937, 30.002176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037327, 32.949184, 30.135872>,  <38.121857, 32.627934, 30.358698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037327, 32.949184, 30.135872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231627, -0.512552, -0.826825,
		-0.949573, -0.303763, -0.077710,
		-0.211328, 0.803130, -0.557065,
		37.973927, 33.190125, 29.968752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902977, 32.348915, 29.756901>,  <38.121857, 32.627934, 30.358698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902977, 32.348915, 29.756901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979111, 32.719463, 29.626909>,  <38.024792, 32.941792, 29.548914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979111, 32.719463, 29.626909>,  <37.902977, 32.348915, 29.756901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979111, 32.719463, 29.626909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186937, -0.359172, -0.914358,
		-0.963756, 0.113285, -0.241537,
		0.190336, 0.926370, -0.324977,
		38.036213, 32.997375, 29.529415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531761, 32.390369, 29.216476>,  <37.902977, 32.348915, 29.756901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531761, 32.390369, 29.216476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792374, 32.683475, 29.137924>,  <37.948742, 32.859341, 29.090792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792374, 32.683475, 29.137924>,  <37.531761, 32.390369, 29.216476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792374, 32.683475, 29.137924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022880, -0.239768, -0.970561,
		-0.758279, 0.636841, -0.139450,
		0.651528, 0.732765, -0.196382,
		37.987831, 32.903305, 29.079010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268547, 32.782112, 28.738176>,  <37.531761, 32.390369, 29.216476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268547, 32.782112, 28.738176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667114, 32.809738, 28.718666>,  <37.906254, 32.826313, 28.706961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667114, 32.809738, 28.718666>,  <37.268547, 32.782112, 28.738176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667114, 32.809738, 28.718666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029226, -0.259991, -0.965169,
		-0.079339, 0.963138, -0.257042,
		0.996419, 0.069064, -0.048776,
		37.966042, 32.830456, 28.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403477, 32.972610, 28.087597>,  <37.268547, 32.782112, 28.738176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403477, 32.972610, 28.087597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781174, 32.886841, 28.187532>,  <38.007793, 32.835377, 28.247494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781174, 32.886841, 28.187532>,  <37.403477, 32.972610, 28.087597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781174, 32.886841, 28.187532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205634, -0.208530, -0.956154,
		0.257125, 0.954220, -0.152811,
		0.944247, -0.214428, 0.249838,
		38.064449, 32.822514, 28.262484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825737, 33.284550, 27.560808>,  <37.403477, 32.972610, 28.087597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825737, 33.284550, 27.560808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035152, 32.996166, 27.742414>,  <38.160801, 32.823135, 27.851377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035152, 32.996166, 27.742414>,  <37.825737, 33.284550, 27.560808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035152, 32.996166, 27.742414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389708, -0.271233, -0.880092,
		0.757649, 0.637697, 0.138960,
		0.523541, -0.720955, 0.454015,
		38.192215, 32.779881, 27.878618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570759, 33.372025, 27.391005>,  <37.825737, 33.284550, 27.560808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570759, 33.372025, 27.391005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506260, 32.987186, 27.478979>,  <38.467560, 32.756283, 27.531765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506260, 32.987186, 27.478979>,  <38.570759, 33.372025, 27.391005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506260, 32.987186, 27.478979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463928, -0.270592, -0.843535,
		0.871073, -0.033986, 0.489975,
		-0.161251, -0.962094, 0.219938,
		38.457886, 32.698559, 27.544960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204731, 33.039555, 27.180643>,  <38.570759, 33.372025, 27.391005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204731, 33.039555, 27.180643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 32.752441, 27.183969>,  <38.759155, 32.580173, 27.185965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 32.752441, 27.183969>,  <39.204731, 33.039555, 27.180643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926247, 32.752441, 27.183969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449347, -0.444819, -0.774741,
		0.559796, -0.535650, 0.632224,
		-0.696215, -0.717785, 0.008315,
		38.717381, 32.537106, 27.186464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535583, 32.454487, 26.938395>,  <39.204731, 33.039555, 27.180643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535583, 32.454487, 26.938395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148071, 32.387825, 26.864979>,  <38.915565, 32.347828, 26.820929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148071, 32.387825, 26.864979>,  <39.535583, 32.454487, 26.938395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148071, 32.387825, 26.864979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228045, -0.308649, -0.923435,
		0.097250, -0.936462, 0.337019,
		-0.968782, -0.166659, -0.183539,
		38.857437, 32.337826, 26.809917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525772, 31.883537, 26.466976>,  <39.535583, 32.454487, 26.938395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525772, 31.883537, 26.466976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162544, 32.045097, 26.422667>,  <38.944607, 32.142033, 26.396082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162544, 32.045097, 26.422667>,  <39.525772, 31.883537, 26.466976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162544, 32.045097, 26.422667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042088, -0.351157, -0.935370,
		-0.416694, -0.844721, 0.335876,
		-0.908072, 0.403899, -0.110772,
		38.890121, 32.166267, 26.389435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093250, 31.396471, 26.014503>,  <39.525772, 31.883537, 26.466976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093250, 31.396471, 26.014503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890209, 31.740679, 25.997293>,  <38.768387, 31.947203, 25.986967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890209, 31.740679, 25.997293>,  <39.093250, 31.396471, 26.014503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890209, 31.740679, 25.997293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096637, -0.106484, -0.989607,
		-0.856157, -0.498165, 0.137209,
		-0.507598, 0.860519, -0.043026,
		38.737930, 31.998835, 25.984386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479923, 31.255930, 25.713392>,  <39.093250, 31.396471, 26.014503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479923, 31.255930, 25.713392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548363, 31.644979, 25.650494>,  <38.589428, 31.878408, 25.612755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548363, 31.644979, 25.650494>,  <38.479923, 31.255930, 25.713392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548363, 31.644979, 25.650494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072049, -0.146821, -0.986536,
		-0.982615, 0.180127, 0.044956,
		0.171101, 0.972624, -0.157246,
		38.599693, 31.936768, 25.603319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.001389, 31.324337, 25.120747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211010, 31.664967, 25.115269>,  <38.336784, 31.869345, 25.111982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211010, 31.664967, 25.115269>,  <38.001389, 31.324337, 25.120747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211010, 31.664967, 25.115269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065015, 0.023967, -0.997597,
		-0.849198, 0.523688, 0.067925,
		0.524057, 0.851573, -0.013695,
		38.368229, 31.920439, 25.111160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610554, 31.849699, 24.737415>,  <38.001389, 31.324337, 25.120747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610554, 31.849699, 24.737415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991009, 31.970652, 24.712446>,  <38.219284, 32.043224, 24.697466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991009, 31.970652, 24.712446>,  <37.610554, 31.849699, 24.737415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991009, 31.970652, 24.712446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098439, 0.105366, -0.989549,
		-0.292646, 0.947345, 0.129984,
		0.951140, 0.302383, -0.062421,
		38.276352, 32.061367, 24.693720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663826, 32.405113, 24.289175>,  <37.610554, 31.849699, 24.737415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663826, 32.405113, 24.289175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045761, 32.286499, 24.296679>,  <38.274921, 32.215328, 24.301182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045761, 32.286499, 24.296679>,  <37.663826, 32.405113, 24.289175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045761, 32.286499, 24.296679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007241, -0.086343, -0.996239,
		0.297042, 0.951110, -0.084590,
		0.954837, -0.296537, 0.018761,
		38.332211, 32.197536, 24.302307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027992, 32.721542, 23.733055>,  <37.663826, 32.405113, 24.289175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027992, 32.721542, 23.733055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254227, 32.404392, 23.823797>,  <38.389969, 32.214104, 23.878242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254227, 32.404392, 23.823797>,  <38.027992, 32.721542, 23.733055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254227, 32.404392, 23.823797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220812, -0.119442, -0.967975,
		0.794577, 0.597568, 0.107520,
		0.565588, -0.792872, 0.226856,
		38.423904, 32.166531, 23.891853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556141, 32.861423, 23.353361>,  <38.027992, 32.721542, 23.733055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556141, 32.861423, 23.353361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589127, 32.465370, 23.398664>,  <38.608917, 32.227737, 23.425846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589127, 32.465370, 23.398664>,  <38.556141, 32.861423, 23.353361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589127, 32.465370, 23.398664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269548, -0.087250, -0.959026,
		0.959450, 0.109610, 0.259695,
		0.082460, -0.990138, 0.113257,
		38.613865, 32.168327, 23.432642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176731, 32.617893, 23.126995>,  <38.556141, 32.861423, 23.353361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176731, 32.617893, 23.126995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937714, 32.297955, 23.104391>,  <38.794304, 32.105991, 23.090830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937714, 32.297955, 23.104391>,  <39.176731, 32.617893, 23.126995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937714, 32.297955, 23.104391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215818, -0.092557, -0.972037,
		0.772248, -0.593028, 0.227928,
		-0.597541, -0.799844, -0.056509,
		38.758450, 32.058002, 23.087439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574417, 32.098072, 22.778984>,  <39.176731, 32.617893, 23.126995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574417, 32.098072, 22.778984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198303, 31.963564, 22.757862>,  <38.972633, 31.882860, 22.745188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198303, 31.963564, 22.757862>,  <39.574417, 32.098072, 22.778984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198303, 31.963564, 22.757862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095803, -0.112576, -0.989014,
		0.326628, -0.935014, 0.138069,
		-0.940285, -0.336268, -0.052807,
		38.916218, 31.862684, 22.742020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593822, 31.521780, 22.325876>,  <39.574417, 32.098072, 22.778984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593822, 31.521780, 22.325876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201942, 31.601955, 22.326643>,  <38.966812, 31.650061, 22.327103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201942, 31.601955, 22.326643>,  <39.593822, 31.521780, 22.325876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201942, 31.601955, 22.326643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057685, -0.272774, -0.960347,
		-0.191968, -0.940967, 0.278800,
		-0.979705, 0.200438, 0.001916,
		38.908031, 31.662086, 22.327217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333122, 30.928581, 22.126377>,  <39.593822, 31.521780, 22.325876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333122, 30.928581, 22.126377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063419, 31.213562, 22.048628>,  <38.901596, 31.384550, 22.001978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063419, 31.213562, 22.048628>,  <39.333122, 30.928581, 22.126377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063419, 31.213562, 22.048628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003827, -0.259827, -0.965648,
		-0.738483, -0.651843, 0.172465,
		-0.674261, 0.712454, -0.194373,
		38.861141, 31.427298, 21.990316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794304, 30.587282, 21.829624>,  <39.333122, 30.928581, 22.126377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794304, 30.587282, 21.829624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734879, 30.959801, 21.696590>,  <38.699223, 31.183311, 21.616770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734879, 30.959801, 21.696590>,  <38.794304, 30.587282, 21.829624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734879, 30.959801, 21.696590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118282, -0.350637, -0.929012,
		-0.981804, -0.098677, 0.162248,
		-0.148562, 0.931298, -0.332585,
		38.690311, 31.239191, 21.596815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406658, 30.401398, 21.193224>,  <38.794304, 30.587282, 21.829624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406658, 30.401398, 21.193224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522560, 30.784000, 21.179718>,  <38.592102, 31.013561, 21.171616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522560, 30.784000, 21.179718>,  <38.406658, 30.401398, 21.193224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522560, 30.784000, 21.179718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131549, 0.004859, -0.991298,
		-0.948018, 0.291674, 0.127235,
		0.289754, 0.956506, -0.033763,
		38.609486, 31.070951, 21.169588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942005, 30.848614, 20.800867>,  <38.406658, 30.401398, 21.193224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942005, 30.848614, 20.800867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298859, 31.029285, 20.797340>,  <38.512970, 31.137688, 20.795225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298859, 31.029285, 20.797340>,  <37.942005, 30.848614, 20.800867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298859, 31.029285, 20.797340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053370, -0.124755, -0.990751,
		-0.448600, 0.883416, -0.135405,
		0.892138, 0.451677, -0.008817,
		38.566502, 31.164789, 20.794695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932407, 31.446074, 20.334587>,  <37.942005, 30.848614, 20.800867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932407, 31.446074, 20.334587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307709, 31.308640, 20.350777>,  <38.532890, 31.226179, 20.360491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307709, 31.308640, 20.350777>,  <37.932407, 31.446074, 20.334587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307709, 31.308640, 20.350777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031752, -0.030972, -0.999016,
		0.344498, 0.938611, -0.018150,
		0.938250, -0.343583, 0.040473,
		38.589184, 31.205564, 20.362919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285004, 31.769251, 19.790533>,  <37.932407, 31.446074, 20.334587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285004, 31.769251, 19.790533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527699, 31.464540, 19.881369>,  <38.673317, 31.281715, 19.935869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527699, 31.464540, 19.881369>,  <38.285004, 31.769251, 19.790533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527699, 31.464540, 19.881369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092698, -0.215924, -0.972000,
		0.789478, 0.610800, -0.060394,
		0.606738, -0.761774, 0.227087,
		38.709721, 31.236008, 19.949495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886322, 31.987879, 19.445347>,  <38.285004, 31.769251, 19.790533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886322, 31.987879, 19.445347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958420, 31.604301, 19.532928>,  <39.001678, 31.374155, 19.585478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958420, 31.604301, 19.532928>,  <38.886322, 31.987879, 19.445347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958420, 31.604301, 19.532928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441388, -0.120079, -0.889246,
		0.879028, 0.256921, 0.401623,
		0.180240, -0.958943, 0.218955,
		39.012493, 31.316618, 19.598616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676083, 31.817856, 19.422400>,  <38.886322, 31.987879, 19.445347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676083, 31.817856, 19.422400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498978, 31.469963, 19.335196>,  <39.392715, 31.261229, 19.282873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498978, 31.469963, 19.335196>,  <39.676083, 31.817856, 19.422400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498978, 31.469963, 19.335196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431701, 0.006325, -0.901994,
		0.785871, -0.493486, 0.372663,
		-0.442764, -0.869731, -0.218009,
		39.366150, 31.209044, 19.269793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190731, 31.482931, 19.049927>,  <39.676083, 31.817856, 19.422400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190731, 31.482931, 19.049927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856762, 31.282795, 18.958225>,  <39.656380, 31.162714, 18.903204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856762, 31.282795, 18.958225>,  <40.190731, 31.482931, 19.049927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856762, 31.282795, 18.958225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295944, -0.056950, -0.953506,
		0.464021, -0.863954, 0.195622,
		-0.834926, -0.500340, -0.229256,
		39.606285, 31.132692, 18.889448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422581, 30.967968, 18.573114>,  <40.190731, 31.482931, 19.049927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422581, 30.967968, 18.573114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034233, 31.035387, 18.504992>,  <39.801224, 31.075838, 18.464117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034233, 31.035387, 18.504992>,  <40.422581, 30.967968, 18.573114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034233, 31.035387, 18.504992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172757, -0.000141, -0.984964,
		-0.166040, -0.985693, -0.028981,
		-0.970869, 0.168550, -0.170309,
		39.742973, 31.085951, 18.453899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352798, 30.511053, 18.019747>,  <40.422581, 30.967968, 18.573114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352798, 30.511053, 18.019747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062016, 30.785358, 18.033953>,  <39.887547, 30.949942, 18.042477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062016, 30.785358, 18.033953>,  <40.352798, 30.511053, 18.019747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062016, 30.785358, 18.033953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190550, 0.251143, -0.949009,
		-0.659715, -0.683122, -0.313242,
		-0.726957, 0.685764, 0.035514,
		39.843929, 30.991087, 18.044607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027607, 30.495970, 17.453396>,  <40.352798, 30.511053, 18.019747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027607, 30.495970, 17.453396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906788, 30.859383, 17.568865>,  <39.834297, 31.077431, 17.638147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906788, 30.859383, 17.568865>,  <40.027607, 30.495970, 17.453396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906788, 30.859383, 17.568865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106793, 0.333161, -0.936802,
		-0.947291, -0.252135, -0.197657,
		-0.302052, 0.908533, 0.288674,
		39.816174, 31.131943, 17.655468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459660, 30.601492, 17.075500>,  <40.027607, 30.495970, 17.453396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459660, 30.601492, 17.075500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560089, 30.966244, 17.205385>,  <39.620346, 31.185095, 17.283316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560089, 30.966244, 17.205385>,  <39.459660, 30.601492, 17.075500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560089, 30.966244, 17.205385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162136, 0.370336, -0.914639,
		-0.954292, 0.176996, 0.240831,
		0.251076, 0.911880, 0.324711,
		39.635410, 31.239807, 17.302799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902931, 31.107809, 16.798775>,  <39.459660, 30.601492, 17.075500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902931, 31.107809, 16.798775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220310, 31.336838, 16.881332>,  <39.410740, 31.474255, 16.930868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220310, 31.336838, 16.881332>,  <38.902931, 31.107809, 16.798775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220310, 31.336838, 16.881332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070792, 0.423631, -0.903064,
		-0.604505, 0.701925, 0.376664,
		0.793450, 0.572572, 0.206396,
		39.458344, 31.508610, 16.943251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796345, 31.829124, 16.675589>,  <38.902931, 31.107809, 16.798775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796345, 31.829124, 16.675589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178722, 31.721205, 16.629326>,  <39.408150, 31.656452, 16.601568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178722, 31.721205, 16.629326>,  <38.796345, 31.829124, 16.675589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178722, 31.721205, 16.629326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001147, 0.397432, -0.917631,
		0.293543, 0.877072, 0.380232,
		0.955945, -0.269800, -0.115657,
		39.465508, 31.640265, 16.594629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240932, 32.408085, 16.557688>,  <38.796345, 31.829124, 16.675589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240932, 32.408085, 16.557688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386116, 32.086063, 16.370008>,  <39.473225, 31.892849, 16.257401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386116, 32.086063, 16.370008>,  <39.240932, 32.408085, 16.557688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386116, 32.086063, 16.370008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020924, 0.496368, -0.867860,
		0.931572, 0.324812, 0.163314,
		0.362955, -0.805056, -0.469199,
		39.495003, 31.844547, 16.229248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729790, 33.004929, 16.403898>,  <39.240932, 32.408085, 16.557688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729790, 33.004929, 16.403898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497726, 33.186314, 16.133257>,  <38.358490, 33.295143, 15.970872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497726, 33.186314, 16.133257>,  <38.729790, 33.004929, 16.403898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497726, 33.186314, 16.133257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643507, 0.254057, 0.722048,
		0.499317, 0.854300, 0.144414,
		-0.580156, 0.453462, -0.676603,
		38.323681, 33.322353, 15.930276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603104, 33.652424, 16.602102>,  <38.729790, 33.004929, 16.403898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603104, 33.652424, 16.602102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291672, 33.527996, 16.384092>,  <38.104813, 33.453339, 16.253286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291672, 33.527996, 16.384092>,  <38.603104, 33.652424, 16.602102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291672, 33.527996, 16.384092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604461, 0.138334, 0.784532,
		-0.168646, 0.940267, -0.295732,
		-0.778579, -0.311067, -0.545025,
		38.058098, 33.434677, 16.220585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072197, 34.072620, 16.750443>,  <38.603104, 33.652424, 16.602102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072197, 34.072620, 16.750443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902527, 33.735649, 16.617548>,  <37.800724, 33.533466, 16.537811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902527, 33.735649, 16.617548>,  <38.072197, 34.072620, 16.750443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902527, 33.735649, 16.617548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643074, 0.021904, 0.765491,
		-0.637597, 0.538356, -0.551038,
		-0.424177, -0.842433, -0.332237,
		37.775272, 33.482918, 16.517878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379524, 34.098587, 16.907938>,  <38.072197, 34.072620, 16.750443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379524, 34.098587, 16.907938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428513, 33.710045, 16.826492>,  <37.457905, 33.476917, 16.777624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428513, 33.710045, 16.826492>,  <37.379524, 34.098587, 16.907938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428513, 33.710045, 16.826492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641845, -0.234004, 0.730258,
		-0.756990, 0.041251, -0.652123,
		0.122475, -0.971360, -0.203616,
		37.465256, 33.418636, 16.765408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730865, 33.878323, 17.163918>,  <37.379524, 34.098587, 16.907938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730865, 33.878323, 17.163918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957413, 33.549408, 17.141726>,  <37.093342, 33.352058, 17.128410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957413, 33.549408, 17.141726>,  <36.730865, 33.878323, 17.163918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957413, 33.549408, 17.141726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411186, -0.340273, 0.845660,
		-0.714249, -0.456142, -0.530831,
		0.566369, -0.822282, -0.055481,
		37.127323, 33.302723, 17.125082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318119, 33.259308, 17.428244>,  <36.730865, 33.878323, 17.163918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318119, 33.259308, 17.428244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699074, 33.150536, 17.483402>,  <36.927647, 33.085274, 17.516497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699074, 33.150536, 17.483402>,  <36.318119, 33.259308, 17.428244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699074, 33.150536, 17.483402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223742, -0.316088, 0.921969,
		-0.207122, -0.908924, -0.361880,
		0.952387, -0.271928, 0.137896,
		36.984791, 33.068958, 17.524771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352291, 32.517960, 17.832500>,  <36.318119, 33.259308, 17.428244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352291, 32.517960, 17.832500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684780, 32.730667, 17.897362>,  <36.884274, 32.858292, 17.936277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684780, 32.730667, 17.897362>,  <36.352291, 32.517960, 17.832500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684780, 32.730667, 17.897362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120341, -0.112647, 0.986321,
		0.542764, -0.839362, -0.029641,
		0.831219, 0.531772, 0.162151,
		36.934147, 32.890198, 17.946007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585827, 32.219837, 18.356485>,  <36.352291, 32.517960, 17.832500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585827, 32.219837, 18.356485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791790, 32.562542, 18.367968>,  <36.915367, 32.768166, 18.374857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791790, 32.562542, 18.367968>,  <36.585827, 32.219837, 18.356485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791790, 32.562542, 18.367968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017519, -0.022961, 0.999583,
		0.857065, -0.515198, 0.003187,
		0.514909, 0.856764, 0.028705,
		36.946262, 32.819572, 18.376579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109451, 32.092686, 18.733076>,  <36.585827, 32.219837, 18.356485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109451, 32.092686, 18.733076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072552, 32.489872, 18.762774>,  <37.050411, 32.728184, 18.780592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072552, 32.489872, 18.762774>,  <37.109451, 32.092686, 18.733076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072552, 32.489872, 18.762774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144182, -0.087096, 0.985711,
		0.985242, 0.080227, 0.151202,
		-0.092249, 0.992964, 0.074243,
		37.044876, 32.787762, 18.785046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557384, 32.301182, 19.300175>,  <37.109451, 32.092686, 18.733076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557384, 32.301182, 19.300175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287880, 32.588890, 19.232418>,  <37.126179, 32.761517, 19.191763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287880, 32.588890, 19.232418>,  <37.557384, 32.301182, 19.300175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287880, 32.588890, 19.232418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152652, 0.088811, 0.984281,
		0.723010, 0.689028, 0.049962,
		-0.673761, 0.719272, -0.169393,
		37.085751, 32.804672, 19.181601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692684, 32.842697, 19.737223>,  <37.557384, 32.301182, 19.300175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692684, 32.842697, 19.737223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299412, 32.856903, 19.665558>,  <37.063450, 32.865429, 19.622559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299412, 32.856903, 19.665558>,  <37.692684, 32.842697, 19.737223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299412, 32.856903, 19.665558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173250, 0.129246, 0.976361,
		0.057833, 0.990976, -0.120918,
		-0.983178, 0.035516, -0.179161,
		37.004459, 32.867558, 19.611809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542961, 33.356880, 20.207161>,  <37.692684, 32.842697, 19.737223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542961, 33.356880, 20.207161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208633, 33.167233, 20.096443>,  <37.008038, 33.053444, 20.030012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208633, 33.167233, 20.096443>,  <37.542961, 33.356880, 20.207161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208633, 33.167233, 20.096443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275791, -0.073338, 0.958416,
		-0.474707, 0.877399, -0.069462,
		-0.835819, -0.474123, -0.276793,
		36.957890, 33.024994, 20.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081776, 33.547527, 20.712057>,  <37.542961, 33.356880, 20.207161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081776, 33.547527, 20.712057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874138, 33.248154, 20.546947>,  <36.749554, 33.068527, 20.447882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874138, 33.248154, 20.546947>,  <37.081776, 33.547527, 20.712057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874138, 33.248154, 20.546947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336797, -0.264748, 0.903591,
		-0.785563, 0.608069, -0.114643,
		-0.519094, -0.748439, -0.412772,
		36.718410, 33.023621, 20.423117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388584, 33.626892, 20.968513>,  <37.081776, 33.547527, 20.712057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388584, 33.626892, 20.968513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417797, 33.242672, 20.861176>,  <36.435326, 33.012138, 20.796772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417797, 33.242672, 20.861176>,  <36.388584, 33.626892, 20.968513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417797, 33.242672, 20.861176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328437, -0.277221, 0.902927,
		-0.941698, 0.022191, -0.335727,
		0.073033, -0.960550, -0.268347,
		36.439709, 32.954506, 20.780672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761909, 33.293678, 21.208569>,  <36.388584, 33.626892, 20.968513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761909, 33.293678, 21.208569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046146, 33.017132, 21.156315>,  <36.216690, 32.851204, 21.124962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046146, 33.017132, 21.156315>,  <35.761909, 33.293678, 21.208569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046146, 33.017132, 21.156315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164184, -0.343473, 0.924700,
		-0.684177, -0.635639, -0.357582,
		0.710595, -0.691367, -0.130635,
		36.259323, 32.809723, 21.117125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418671, 32.700306, 21.148935>,  <35.761909, 33.293678, 21.208569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418671, 32.700306, 21.148935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786781, 32.590683, 21.260633>,  <36.007648, 32.524910, 21.327652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786781, 32.590683, 21.260633>,  <35.418671, 32.700306, 21.148935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786781, 32.590683, 21.260633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378471, -0.442519, 0.812980,
		-0.099234, -0.853855, -0.510964,
		0.920279, -0.274060, 0.279246,
		36.062866, 32.508465, 21.344408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398224, 31.994114, 21.323395>,  <35.418671, 32.700306, 21.148935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398224, 31.994114, 21.323395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729954, 32.145676, 21.487661>,  <35.928993, 32.236610, 21.586222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729954, 32.145676, 21.487661>,  <35.398224, 31.994114, 21.323395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729954, 32.145676, 21.487661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211607, -0.467241, 0.858434,
		0.517144, -0.798823, -0.307317,
		0.829328, 0.378903, 0.410667,
		35.978752, 32.259346, 21.610861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553795, 31.450815, 21.853403>,  <35.398224, 31.994114, 21.323395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553795, 31.450815, 21.853403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749889, 31.780680, 21.966261>,  <35.867546, 31.978598, 22.033976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749889, 31.780680, 21.966261>,  <35.553795, 31.450815, 21.853403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749889, 31.780680, 21.966261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102613, -0.266852, 0.958259,
		0.865529, -0.498724, -0.046200,
		0.490235, 0.824660, 0.282144,
		35.896961, 32.028076, 22.050903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946644, 31.158089, 22.382866>,  <35.553795, 31.450815, 21.853403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946644, 31.158089, 22.382866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940216, 31.554873, 22.433079>,  <35.936359, 31.792942, 22.463207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940216, 31.554873, 22.433079>,  <35.946644, 31.158089, 22.382866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940216, 31.554873, 22.433079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127046, -0.126557, 0.983790,
		0.991767, -0.000143, 0.128058,
		-0.016066, 0.991959, 0.125534,
		35.935394, 31.852461, 22.470739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373451, 31.346004, 23.034079>,  <35.946644, 31.158089, 22.382866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373451, 31.346004, 23.034079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163883, 31.678459, 22.959551>,  <36.038143, 31.877932, 22.914833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163883, 31.678459, 22.959551>,  <36.373451, 31.346004, 23.034079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163883, 31.678459, 22.959551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132365, 0.136644, 0.981737,
		0.841418, 0.539017, 0.038422,
		-0.523923, 0.831137, -0.186321,
		36.006706, 31.927801, 22.903654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.882675, 31.802950, 28.408903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664219, 32.099895, 28.253662>,  <38.533146, 32.278065, 28.160517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664219, 32.099895, 28.253662>,  <38.882675, 31.802950, 28.408903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664219, 32.099895, 28.253662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100306, 0.517920, 0.849528,
		0.831666, 0.425033, -0.357321,
		-0.546141, 0.742365, -0.388103,
		38.500378, 32.322605, 28.137232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265705, 32.447468, 28.506481>,  <38.882675, 31.802950, 28.408903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265705, 32.447468, 28.506481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881954, 32.547253, 28.453762>,  <38.651703, 32.607124, 28.422131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881954, 32.547253, 28.453762>,  <39.265705, 32.447468, 28.506481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881954, 32.547253, 28.453762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086544, 0.704827, 0.704080,
		0.268534, 0.664070, -0.697782,
		-0.959374, 0.249459, -0.131799,
		38.594143, 32.622089, 28.414223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237991, 33.047726, 28.693775>,  <39.265705, 32.447468, 28.506481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237991, 33.047726, 28.693775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845547, 32.971275, 28.705723>,  <38.610081, 32.925404, 28.712891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845547, 32.971275, 28.705723>,  <39.237991, 33.047726, 28.693775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845547, 32.971275, 28.705723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107705, 0.667950, 0.736372,
		-0.160691, 0.719245, -0.675918,
		-0.981111, -0.191128, 0.029867,
		38.551212, 32.913937, 28.714684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911263, 33.740425, 28.881702>,  <39.237991, 33.047726, 28.693775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911263, 33.740425, 28.881702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624001, 33.472000, 28.955385>,  <38.451645, 33.310944, 28.999596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624001, 33.472000, 28.955385>,  <38.911263, 33.740425, 28.881702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624001, 33.472000, 28.955385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386748, 0.604947, 0.696035,
		-0.578520, 0.428617, -0.693976,
		-0.718151, -0.671064, 0.184207,
		38.408554, 33.270679, 29.010647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423954, 34.107677, 29.026649>,  <38.911263, 33.740425, 28.881702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423954, 34.107677, 29.026649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301147, 33.760361, 29.182501>,  <38.227463, 33.551971, 29.276011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301147, 33.760361, 29.182501>,  <38.423954, 34.107677, 29.026649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301147, 33.760361, 29.182501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440499, 0.492555, 0.750566,
		-0.843623, 0.058808, -0.533705,
		-0.307019, -0.868292, 0.389626,
		38.209042, 33.499874, 29.299389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802437, 34.225479, 29.161779>,  <38.423954, 34.107677, 29.026649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802437, 34.225479, 29.161779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869198, 33.918869, 29.409840>,  <37.909256, 33.734905, 29.558676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869198, 33.918869, 29.409840>,  <37.802437, 34.225479, 29.161779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869198, 33.918869, 29.409840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414624, 0.516092, 0.749490,
		-0.894556, -0.382221, -0.231682,
		0.166902, -0.766522, 0.620152,
		37.919270, 33.688911, 29.595884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214260, 34.129417, 29.457544>,  <37.802437, 34.225479, 29.161779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214260, 34.129417, 29.457544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431889, 33.930828, 29.728098>,  <37.562466, 33.811676, 29.890430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431889, 33.930828, 29.728098>,  <37.214260, 34.129417, 29.457544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431889, 33.930828, 29.728098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516478, 0.437142, 0.736314,
		-0.661236, -0.749948, -0.018578,
		0.544076, -0.496472, 0.676386,
		37.595112, 33.781887, 29.931013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751652, 33.828094, 29.907679>,  <37.214260, 34.129417, 29.457544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751652, 33.828094, 29.907679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094036, 33.817947, 30.114246>,  <37.299465, 33.811859, 30.238188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094036, 33.817947, 30.114246>,  <36.751652, 33.828094, 29.907679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094036, 33.817947, 30.114246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457430, 0.428432, 0.779233,
		-0.241022, -0.903218, 0.355114,
		0.855959, -0.025372, 0.516421,
		37.350822, 33.810337, 30.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547619, 33.629398, 30.672234>,  <36.751652, 33.828094, 29.907679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547619, 33.629398, 30.672234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916870, 33.783161, 30.675266>,  <37.138420, 33.875420, 30.677086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916870, 33.783161, 30.675266>,  <36.547619, 33.629398, 30.672234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916870, 33.783161, 30.675266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219036, 0.509593, 0.832069,
		0.315990, -0.769770, 0.554621,
		0.923132, 0.384407, 0.007581,
		37.193810, 33.898483, 30.677540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918945, 33.400204, 31.318508>,  <36.547619, 33.629398, 30.672234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918945, 33.400204, 31.318508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109249, 33.730713, 31.197897>,  <37.223431, 33.929020, 31.125530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109249, 33.730713, 31.197897>,  <36.918945, 33.400204, 31.318508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109249, 33.730713, 31.197897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046434, 0.365928, 0.929484,
		0.878350, -0.428208, 0.212461,
		0.475758, 0.826278, -0.301529,
		37.251976, 33.978596, 31.107439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326923, 33.522793, 31.864998>,  <36.918945, 33.400204, 31.318508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326923, 33.522793, 31.864998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324139, 33.874714, 31.674883>,  <37.322468, 34.085865, 31.560814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324139, 33.874714, 31.674883>,  <37.326923, 33.522793, 31.864998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324139, 33.874714, 31.674883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084741, 0.473071, 0.876940,
		0.996379, 0.046379, 0.071263,
		-0.006959, 0.879803, -0.475288,
		37.322052, 34.138657, 31.532297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806217, 33.912811, 32.182831>,  <37.326923, 33.522793, 31.864998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806217, 33.912811, 32.182831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.530735, 34.156307, 32.025291>,  <37.365444, 34.302406, 31.930767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.530735, 34.156307, 32.025291>,  <37.806217, 33.912811, 32.182831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530735, 34.156307, 32.025291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154157, 0.407851, 0.899941,
		0.708464, 0.680509, -0.187047,
		-0.688705, 0.608741, -0.393853,
		37.324123, 34.338928, 31.907135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693104, 34.164570, 32.891590>,  <37.806217, 33.912811, 32.182831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693104, 34.164570, 32.891590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.931808, 34.382881, 33.126877>,  <38.075031, 34.513870, 33.268047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.931808, 34.382881, 33.126877>,  <37.693104, 34.164570, 32.891590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931808, 34.382881, 33.126877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599990, -0.790255, 0.124535,
		0.532807, 0.278604, -0.799060,
		0.596765, 0.545781, 0.588213,
		38.110840, 34.546616, 33.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431446, 34.256653, 32.606453>,  <37.693104, 34.164570, 32.891590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431446, 34.256653, 32.606453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374344, 34.269890, 33.002136>,  <38.340080, 34.277832, 33.239544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374344, 34.269890, 33.002136>,  <38.431446, 34.256653, 32.606453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374344, 34.269890, 33.002136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722273, -0.679851, 0.126981,
		0.676714, 0.732603, 0.073153,
		-0.142759, 0.033093, 0.989204,
		38.331516, 34.279819, 33.298897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802055, 34.816044, 32.836788>,  <38.431446, 34.256653, 32.606453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802055, 34.816044, 32.836788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863529, 35.204597, 32.909229>,  <38.900414, 35.437729, 32.952694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863529, 35.204597, 32.909229>,  <38.802055, 34.816044, 32.836788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863529, 35.204597, 32.909229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048896, 0.175583, -0.983249,
		-0.986910, 0.159962, -0.020513,
		0.153681, 0.971382, 0.181106,
		38.909634, 35.496014, 32.963562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333508, 35.127037, 32.427975>,  <38.802055, 34.816044, 32.836788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333508, 35.127037, 32.427975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614189, 35.403915, 32.495464>,  <38.782600, 35.570042, 32.535957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614189, 35.403915, 32.495464>,  <38.333508, 35.127037, 32.427975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614189, 35.403915, 32.495464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031517, 0.266741, -0.963253,
		-0.711767, 0.670604, 0.208991,
		0.701708, 0.692199, 0.168722,
		38.824703, 35.611576, 32.546082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003971, 35.737106, 32.118454>,  <38.333508, 35.127037, 32.427975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003971, 35.737106, 32.118454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400810, 35.775780, 32.150436>,  <38.638912, 35.798985, 32.169624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400810, 35.775780, 32.150436>,  <38.003971, 35.737106, 32.118454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400810, 35.775780, 32.150436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035659, 0.393678, -0.918557,
		-0.120288, 0.914150, 0.387119,
		0.992098, 0.096687, 0.079952,
		38.698441, 35.804787, 32.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185547, 36.259853, 31.631964>,  <38.003971, 35.737106, 32.118454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185547, 36.259853, 31.631964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552292, 36.120636, 31.710167>,  <38.772339, 36.037106, 31.757090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552292, 36.120636, 31.710167>,  <38.185547, 36.259853, 31.631964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552292, 36.120636, 31.710167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326253, 0.371091, -0.869397,
		0.230033, 0.860906, 0.453790,
		0.916866, -0.348040, 0.195510,
		38.827351, 36.016224, 31.768820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574177, 36.750011, 31.439285>,  <38.185547, 36.259853, 31.631964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574177, 36.750011, 31.439285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807632, 36.425434, 31.427052>,  <38.947704, 36.230690, 31.419712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807632, 36.425434, 31.427052>,  <38.574177, 36.750011, 31.439285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807632, 36.425434, 31.427052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468228, 0.367071, -0.803755,
		0.663424, 0.454781, 0.594174,
		0.583636, -0.811439, -0.030582,
		38.982723, 36.182003, 31.417877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310307, 37.009945, 31.375502>,  <38.574177, 36.750011, 31.439285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310307, 37.009945, 31.375502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258175, 36.638779, 31.235800>,  <39.226898, 36.416077, 31.151978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258175, 36.638779, 31.235800>,  <39.310307, 37.009945, 31.375502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258175, 36.638779, 31.235800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390708, 0.275690, -0.878261,
		0.911242, -0.250917, 0.326617,
		-0.130326, -0.927920, -0.349256,
		39.219078, 36.360401, 31.131023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862606, 36.923248, 30.895643>,  <39.310307, 37.009945, 31.375502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862606, 36.923248, 30.895643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.621796, 36.615189, 30.811331>,  <39.477310, 36.430351, 30.760744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.621796, 36.615189, 30.811331>,  <39.862606, 36.923248, 30.895643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621796, 36.615189, 30.811331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363732, -0.029517, -0.931036,
		0.710819, -0.637175, 0.297899,
		-0.602026, -0.770154, -0.210779,
		39.441189, 36.384144, 30.748096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284382, 36.533985, 30.440763>,  <39.862606, 36.923248, 30.895643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284382, 36.533985, 30.440763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914371, 36.397408, 30.374128>,  <39.692368, 36.315460, 30.334148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914371, 36.397408, 30.374128>,  <40.284382, 36.533985, 30.440763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914371, 36.397408, 30.374128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233628, -0.165464, -0.958144,
		0.299589, -0.925223, 0.232828,
		-0.925021, -0.341444, -0.166587,
		39.636864, 36.294975, 30.324152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359089, 35.835072, 30.100601>,  <40.284382, 36.533985, 30.440763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359089, 35.835072, 30.100601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973328, 35.920773, 30.038610>,  <39.741871, 35.972191, 30.001417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973328, 35.920773, 30.038610>,  <40.359089, 35.835072, 30.100601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973328, 35.920773, 30.038610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084649, -0.305095, -0.948553,
		-0.250508, -0.927909, 0.276099,
		-0.964406, 0.214248, -0.154975,
		39.684006, 35.985046, 29.992117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027916, 35.202385, 29.644217>,  <40.359089, 35.835072, 30.100601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027916, 35.202385, 29.644217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839134, 35.552956, 29.605974>,  <39.725864, 35.763298, 29.583029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839134, 35.552956, 29.605974>,  <40.027916, 35.202385, 29.644217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839134, 35.552956, 29.605974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104692, -0.163389, -0.980991,
		-0.875384, -0.452974, 0.168867,
		-0.471955, 0.876424, -0.095605,
		39.697548, 35.815884, 29.577293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424469, 35.107502, 29.265392>,  <40.027916, 35.202385, 29.644217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424469, 35.107502, 29.265392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472755, 35.503960, 29.243258>,  <39.501728, 35.741833, 29.229977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472755, 35.503960, 29.243258>,  <39.424469, 35.107502, 29.265392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472755, 35.503960, 29.243258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188264, -0.031872, -0.981601,
		-0.974671, 0.128917, 0.182749,
		0.120721, 0.991143, -0.055335,
		39.508972, 35.801304, 29.226656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892155, 35.331154, 28.911963>,  <39.424469, 35.107502, 29.265392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892155, 35.331154, 28.911963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160809, 35.626122, 28.883350>,  <39.321999, 35.803104, 28.866182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160809, 35.626122, 28.883350>,  <38.892155, 35.331154, 28.911963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160809, 35.626122, 28.883350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088016, -0.016447, -0.995983,
		-0.735638, 0.675231, 0.053858,
		0.671633, 0.737423, -0.071530,
		39.362297, 35.847347, 28.861891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603817, 35.803246, 28.451721>,  <38.892155, 35.331154, 28.911963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603817, 35.803246, 28.451721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999283, 35.862759, 28.459694>,  <39.236565, 35.898468, 28.464478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999283, 35.862759, 28.459694>,  <38.603817, 35.803246, 28.451721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999283, 35.862759, 28.459694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011085, 0.060049, -0.998134,
		-0.149704, 0.987045, 0.057719,
		0.988669, 0.148785, 0.019931,
		39.295883, 35.907394, 28.465673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710457, 36.366879, 28.068224>,  <38.603817, 35.803246, 28.451721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710457, 36.366879, 28.068224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050770, 36.156670, 28.069183>,  <39.254955, 36.030544, 28.069759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050770, 36.156670, 28.069183>,  <38.710457, 36.366879, 28.068224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050770, 36.156670, 28.069183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053783, -0.091608, -0.994342,
		0.522764, 0.845836, -0.106202,
		0.850779, -0.525518, 0.002398,
		39.306004, 35.999016, 28.069902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774254, 37.078976, 27.835569>,  <38.710457, 36.366879, 28.068224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774254, 37.078976, 27.835569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456852, 37.265728, 27.679434>,  <38.266411, 37.377781, 27.585752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456852, 37.265728, 27.679434>,  <38.774254, 37.078976, 27.835569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456852, 37.265728, 27.679434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490030, -0.109866, 0.864755,
		0.360856, 0.877467, 0.315967,
		-0.793507, 0.466885, -0.390339,
		38.218800, 37.405792, 27.562332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494286, 37.480156, 28.425602>,  <38.774254, 37.078976, 27.835569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494286, 37.480156, 28.425602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199100, 37.449459, 28.157417>,  <38.021988, 37.431042, 27.996506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199100, 37.449459, 28.157417>,  <38.494286, 37.480156, 28.425602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199100, 37.449459, 28.157417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665828, -0.079024, 0.741908,
		-0.109922, 0.993914, 0.007217,
		-0.737963, -0.076747, -0.670463,
		37.977711, 37.426434, 27.956278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991310, 37.947952, 28.602591>,  <38.494286, 37.480156, 28.425602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991310, 37.947952, 28.602591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.802780, 37.660465, 28.398121>,  <37.689663, 37.487972, 28.275438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.802780, 37.660465, 28.398121>,  <37.991310, 37.947952, 28.602591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802780, 37.660465, 28.398121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687584, -0.063541, 0.723320,
		-0.552340, 0.692397, -0.464228,
		-0.471327, -0.718714, -0.511177,
		37.661381, 37.444851, 28.244768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271145, 38.150631, 28.632025>,  <37.991310, 37.947952, 28.602591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271145, 38.150631, 28.632025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260017, 37.769028, 28.512627>,  <37.253342, 37.540066, 28.440989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260017, 37.769028, 28.512627>,  <37.271145, 38.150631, 28.632025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260017, 37.769028, 28.512627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769712, -0.170076, 0.615319,
		-0.637785, 0.246874, -0.729578,
		-0.027823, -0.954006, -0.298493,
		37.251671, 37.482826, 28.423079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616356, 38.093704, 28.648310>,  <37.271145, 38.150631, 28.632025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616356, 38.093704, 28.648310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747116, 37.715702, 28.652328>,  <36.825573, 37.488899, 28.654739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747116, 37.715702, 28.652328>,  <36.616356, 38.093704, 28.648310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747116, 37.715702, 28.652328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565078, -0.186929, 0.803582,
		-0.757512, -0.268367, -0.595109,
		0.326898, -0.945006, 0.010048,
		36.845184, 37.432201, 28.655342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056458, 37.673607, 28.651499>,  <36.616356, 38.093704, 28.648310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056458, 37.673607, 28.651499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.342575, 37.449551, 28.818638>,  <36.514244, 37.315117, 28.918921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.342575, 37.449551, 28.818638>,  <36.056458, 37.673607, 28.651499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342575, 37.449551, 28.818638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633065, -0.266175, 0.726897,
		-0.295945, -0.784470, -0.544999,
		0.715294, -0.560141, 0.417847,
		36.557163, 37.281509, 28.943993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730942, 37.505367, 29.226263>,  <36.056458, 37.673607, 28.651499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730942, 37.505367, 29.226263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075417, 37.312023, 29.289154>,  <36.282101, 37.196018, 29.326889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075417, 37.312023, 29.289154>,  <35.730942, 37.505367, 29.226263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075417, 37.312023, 29.289154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359120, -0.359707, 0.861188,
		-0.359707, -0.798108, -0.483359,
		-0.861188, 0.483359, -0.157227,
		36.333775, 37.167015, 29.336323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588444, 36.725349, 29.350109>,  <35.730942, 37.505367, 29.226263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588444, 36.725349, 29.350109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929989, 36.808693, 29.540901>,  <36.134914, 36.858700, 29.655376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929989, 36.808693, 29.540901>,  <35.588444, 36.725349, 29.350109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929989, 36.808693, 29.540901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370160, -0.401175, 0.837879,
		0.365933, -0.891989, -0.265420,
		0.853859, 0.208360, 0.476982,
		36.186146, 36.871201, 29.683996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845516, 36.098892, 29.515787>,  <35.588444, 36.725349, 29.350109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845516, 36.098892, 29.515787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000111, 36.369247, 29.766800>,  <36.092869, 36.531460, 29.917408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000111, 36.369247, 29.766800>,  <35.845516, 36.098892, 29.515787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000111, 36.369247, 29.766800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459238, -0.449030, 0.766467,
		0.799831, -0.584416, 0.136852,
		0.386485, 0.675892, 0.627534,
		36.116055, 36.572014, 29.955061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181335, 35.715900, 30.051268>,  <35.845516, 36.098892, 29.515787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181335, 35.715900, 30.051268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122036, 36.079494, 30.207100>,  <36.086456, 36.297649, 30.300600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122036, 36.079494, 30.207100>,  <36.181335, 35.715900, 30.051268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122036, 36.079494, 30.207100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103213, -0.406004, 0.908024,
		0.983549, 0.094405, 0.154009,
		-0.148250, 0.908982, 0.389581,
		36.077560, 36.352188, 30.323975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453842, 35.587666, 30.679346>,  <36.181335, 35.715900, 30.051268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453842, 35.587666, 30.679346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253185, 35.932228, 30.711182>,  <36.132793, 36.138966, 30.730284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253185, 35.932228, 30.711182>,  <36.453842, 35.587666, 30.679346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253185, 35.932228, 30.711182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169034, -0.187834, 0.967546,
		0.848402, 0.471905, 0.239832,
		-0.501639, 0.861408, 0.079591,
		36.102695, 36.190651, 30.735060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767204, 35.998974, 31.245047>,  <36.453842, 35.587666, 30.679346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767204, 35.998974, 31.245047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386822, 36.092880, 31.164488>,  <36.158592, 36.149223, 31.116152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386822, 36.092880, 31.164488>,  <36.767204, 35.998974, 31.245047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386822, 36.092880, 31.164488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245595, -0.177253, 0.953029,
		0.188041, 0.955754, 0.226218,
		-0.950959, 0.234767, -0.201398,
		36.101536, 36.163311, 31.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.058990, 38.038731, 24.339680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694359, 37.920227, 24.225660>,  <39.475578, 37.849125, 24.157248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694359, 37.920227, 24.225660>,  <40.058990, 38.038731, 24.339680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694359, 37.920227, 24.225660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347317, 0.183937, 0.919531,
		-0.219992, 0.937228, -0.270570,
		-0.911578, -0.296263, -0.285051,
		39.420887, 37.831348, 24.140144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591324, 38.588215, 24.603197>,  <40.058990, 38.038731, 24.339680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591324, 38.588215, 24.603197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357475, 38.273014, 24.525980>,  <39.217167, 38.083893, 24.479650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357475, 38.273014, 24.525980>,  <39.591324, 38.588215, 24.603197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357475, 38.273014, 24.525980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350926, 0.031082, 0.935887,
		-0.731485, 0.614882, -0.294703,
		-0.584620, -0.788007, -0.193042,
		39.182091, 38.036613, 24.468067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909019, 38.807568, 24.820473>,  <39.591324, 38.588215, 24.603197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909019, 38.807568, 24.820473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895332, 38.407829, 24.825134>,  <38.887119, 38.167988, 24.827932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895332, 38.407829, 24.825134>,  <38.909019, 38.807568, 24.820473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895332, 38.407829, 24.825134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394014, 0.024205, 0.918786,
		-0.918467, 0.026844, -0.394584,
		-0.034214, -0.999346, 0.011655,
		38.885067, 38.108025, 24.828630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126156, 38.622246, 25.120556>,  <38.909019, 38.807568, 24.820473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126156, 38.622246, 25.120556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363304, 38.302654, 25.160837>,  <38.505592, 38.110901, 25.185007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363304, 38.302654, 25.160837>,  <38.126156, 38.622246, 25.120556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363304, 38.302654, 25.160837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440419, -0.217005, 0.871171,
		-0.674190, -0.560846, -0.480540,
		0.592873, -0.798975, 0.100705,
		38.541164, 38.062962, 25.191048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672169, 38.187519, 25.347002>,  <38.126156, 38.622246, 25.120556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672169, 38.187519, 25.347002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032589, 38.037464, 25.434067>,  <38.248840, 37.947433, 25.486305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032589, 38.037464, 25.434067>,  <37.672169, 38.187519, 25.347002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032589, 38.037464, 25.434067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299089, -0.174012, 0.938225,
		-0.314083, -0.910492, -0.268992,
		0.901054, -0.375133, 0.217664,
		38.302906, 37.924923, 25.499365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602337, 37.521053, 25.594313>,  <37.672169, 38.187519, 25.347002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602337, 37.521053, 25.594313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926029, 37.706711, 25.738377>,  <38.120243, 37.818104, 25.824816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926029, 37.706711, 25.738377>,  <37.602337, 37.521053, 25.594313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926029, 37.706711, 25.738377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304378, -0.193119, 0.932770,
		0.502492, -0.864452, -0.015003,
		0.809231, 0.464143, 0.360161,
		38.168800, 37.845955, 25.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579147, 37.166889, 26.162378>,  <37.602337, 37.521053, 25.594313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579147, 37.166889, 26.162378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877266, 37.425770, 26.226454>,  <38.056137, 37.581100, 26.264900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877266, 37.425770, 26.226454>,  <37.579147, 37.166889, 26.162378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877266, 37.425770, 26.226454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032654, -0.204541, 0.978313,
		0.665935, -0.734362, -0.131309,
		0.745294, 0.647206, 0.160191,
		38.100853, 37.619930, 26.274511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192177, 36.838249, 26.549807>,  <37.579147, 37.166889, 26.162378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192177, 36.838249, 26.549807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185822, 37.229832, 26.631193>,  <38.182011, 37.464779, 26.680025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185822, 37.229832, 26.631193>,  <38.192177, 36.838249, 26.549807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185822, 37.229832, 26.631193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011681, -0.203660, 0.978972,
		0.999806, 0.013174, 0.014671,
		-0.015885, 0.978953, 0.203467,
		38.181057, 37.523518, 26.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696621, 36.870979, 27.041656>,  <38.192177, 36.838249, 26.549807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696621, 36.870979, 27.041656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451294, 37.185738, 27.068890>,  <38.304096, 37.374592, 27.085230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451294, 37.185738, 27.068890>,  <38.696621, 36.870979, 27.041656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451294, 37.185738, 27.068890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016582, -0.099005, 0.994949,
		0.789661, 0.609092, 0.073770,
		-0.613319, 0.786896, 0.068080,
		38.267300, 37.421806, 27.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391594, 36.734608, 27.269510>,  <38.696621, 36.870979, 27.041656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391594, 36.734608, 27.269510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597355, 36.432381, 27.431746>,  <39.720810, 36.251045, 27.529087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597355, 36.432381, 27.431746>,  <39.391594, 36.734608, 27.269510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597355, 36.432381, 27.431746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284290, -0.295963, -0.911913,
		0.809055, 0.584395, 0.062558,
		0.514402, -0.755572, 0.405588,
		39.751675, 36.205708, 27.553421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057865, 36.764637, 27.022789>,  <39.391594, 36.734608, 27.269510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057865, 36.764637, 27.022789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001572, 36.382362, 27.126223>,  <39.967796, 36.153000, 27.188282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001572, 36.382362, 27.126223>,  <40.057865, 36.764637, 27.022789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001572, 36.382362, 27.126223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475789, -0.294329, -0.828852,
		0.868228, 0.006383, 0.496125,
		-0.140733, -0.955683, 0.258582,
		39.959351, 36.095657, 27.203796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713512, 36.393810, 26.954882>,  <40.057865, 36.764637, 27.022789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713512, 36.393810, 26.954882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424736, 36.117897, 26.932936>,  <40.251472, 35.952351, 26.919769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424736, 36.117897, 26.932936>,  <40.713512, 36.393810, 26.954882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424736, 36.117897, 26.932936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422768, -0.376929, -0.824131,
		0.547788, -0.618167, 0.563736,
		-0.721939, -0.689779, -0.054864,
		40.208153, 35.910965, 26.916477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990925, 35.824997, 26.891222>,  <40.713512, 36.393810, 26.954882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990925, 35.824997, 26.891222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629520, 35.745136, 26.739538>,  <40.412678, 35.697220, 26.648527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629520, 35.745136, 26.739538>,  <40.990925, 35.824997, 26.891222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629520, 35.745136, 26.739538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422822, -0.559586, -0.712801,
		-0.069886, -0.804364, 0.590012,
		-0.903514, -0.199655, -0.379210,
		40.358467, 35.685238, 26.625774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955746, 35.130367, 26.665844>,  <40.990925, 35.824997, 26.891222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955746, 35.130367, 26.665844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638351, 35.290245, 26.482267>,  <40.447914, 35.386169, 26.372122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638351, 35.290245, 26.482267>,  <40.955746, 35.130367, 26.665844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638351, 35.290245, 26.482267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119050, -0.637599, -0.761114,
		-0.596827, -0.658572, 0.458346,
		-0.793489, 0.399687, -0.458939,
		40.400307, 35.410152, 26.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578201, 34.570805, 26.347090>,  <40.955746, 35.130367, 26.665844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578201, 34.570805, 26.347090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381252, 34.853889, 26.144421>,  <40.263084, 35.023739, 26.022820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381252, 34.853889, 26.144421>,  <40.578201, 34.570805, 26.347090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381252, 34.853889, 26.144421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020241, -0.572658, -0.819544,
		-0.870149, -0.413777, 0.267637,
		-0.492373, 0.707708, -0.506673,
		40.233540, 35.066200, 25.992418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099949, 34.301090, 25.781229>,  <40.578201, 34.570805, 26.347090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099949, 34.301090, 25.781229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154171, 34.672535, 25.643070>,  <40.186703, 34.895401, 25.560175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154171, 34.672535, 25.643070>,  <40.099949, 34.301090, 25.781229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154171, 34.672535, 25.643070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034995, -0.352887, -0.935012,
		-0.990152, 0.114658, -0.080332,
		0.135555, 0.928614, -0.345399,
		40.194836, 34.951118, 25.539450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475830, 34.565369, 25.327625>,  <40.099949, 34.301090, 25.781229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475830, 34.565369, 25.327625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829559, 34.727180, 25.234402>,  <40.041798, 34.824268, 25.178467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829559, 34.727180, 25.234402>,  <39.475830, 34.565369, 25.327625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829559, 34.727180, 25.234402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084439, -0.352378, -0.932041,
		-0.459167, 0.843909, -0.277459,
		0.884328, 0.404534, -0.233059,
		40.094856, 34.848541, 25.164484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476803, 34.456200, 24.672150>,  <39.475830, 34.565369, 25.327625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476803, 34.456200, 24.672150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852001, 34.586235, 24.720278>,  <40.077122, 34.664257, 24.749155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852001, 34.586235, 24.720278>,  <39.476803, 34.456200, 24.672150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852001, 34.586235, 24.720278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198979, -0.220734, -0.954821,
		-0.283839, 0.919563, -0.271734,
		0.937999, 0.325084, 0.120321,
		40.133400, 34.683762, 24.756374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567665, 34.786617, 24.040581>,  <39.476803, 34.456200, 24.672150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567665, 34.786617, 24.040581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936901, 34.731815, 24.184319>,  <40.158443, 34.698933, 24.270561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936901, 34.731815, 24.184319>,  <39.567665, 34.786617, 24.040581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936901, 34.731815, 24.184319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331066, -0.192375, -0.923790,
		0.195693, 0.971711, -0.132222,
		0.923093, -0.137005, 0.359346,
		40.213829, 34.690712, 24.292122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022820, 35.313732, 23.688383>,  <39.567665, 34.786617, 24.040581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022820, 35.313732, 23.688383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244823, 35.005329, 23.813288>,  <40.378025, 34.820286, 23.888231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244823, 35.005329, 23.813288>,  <40.022820, 35.313732, 23.688383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244823, 35.005329, 23.813288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391432, -0.089164, -0.915877,
		0.733995, 0.630547, 0.252312,
		0.555007, -0.771012, 0.312263,
		40.411324, 34.774025, 23.906967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744503, 35.494884, 23.509699>,  <40.022820, 35.313732, 23.688383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744503, 35.494884, 23.509699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733818, 35.099316, 23.568110>,  <40.727406, 34.861977, 23.603157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733818, 35.099316, 23.568110>,  <40.744503, 35.494884, 23.509699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733818, 35.099316, 23.568110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430545, -0.143220, -0.891133,
		0.902173, 0.039065, 0.429601,
		-0.026716, -0.988920, 0.146029,
		40.725803, 34.802639, 23.611917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389069, 35.270294, 23.345310>,  <40.744503, 35.494884, 23.509699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389069, 35.270294, 23.345310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160553, 34.942341, 23.330194>,  <41.023445, 34.745571, 23.321125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160553, 34.942341, 23.330194>,  <41.389069, 35.270294, 23.345310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160553, 34.942341, 23.330194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473563, -0.291669, -0.831064,
		0.670352, -0.492670, 0.554892,
		-0.571285, -0.819881, -0.037790,
		40.989166, 34.696377, 23.318857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829166, 34.818382, 23.092293>,  <41.389069, 35.270294, 23.345310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829166, 34.818382, 23.092293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481857, 34.635143, 23.016144>,  <41.273472, 34.525200, 22.970455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481857, 34.635143, 23.016144>,  <41.829166, 34.818382, 23.092293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481857, 34.635143, 23.016144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360702, -0.319533, -0.876238,
		0.340575, -0.829484, 0.442680,
		-0.868276, -0.458100, -0.190371,
		41.221375, 34.497715, 22.959032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.734516, 33.301037, 21.374344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929825, 33.646393, 21.425179>,  <34.047012, 33.853607, 21.455679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929825, 33.646393, 21.425179>,  <33.734516, 33.301037, 21.374344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929825, 33.646393, 21.425179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290466, 0.023462, 0.956598,
		0.822932, -0.503997, 0.262240,
		0.488275, 0.863387, 0.127087,
		34.076309, 33.905407, 21.463305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252304, 33.171764, 21.890985>,  <33.734516, 33.301037, 21.374344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252304, 33.171764, 21.890985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.150291, 33.558426, 21.881668>,  <34.089085, 33.790421, 21.876078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.150291, 33.558426, 21.881668>,  <34.252304, 33.171764, 21.890985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150291, 33.558426, 21.881668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286679, -0.052585, 0.956583,
		0.923457, 0.250638, 0.290529,
		-0.255034, 0.966652, -0.023293,
		34.073780, 33.848423, 21.874680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403347, 33.530796, 22.554045>,  <34.252304, 33.171764, 21.890985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403347, 33.530796, 22.554045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144321, 33.797939, 22.407284>,  <33.988907, 33.958225, 22.319227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144321, 33.797939, 22.407284>,  <34.403347, 33.530796, 22.554045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144321, 33.797939, 22.407284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460024, 0.041219, 0.886950,
		0.607481, 0.743145, 0.280539,
		-0.647569, 0.667860, -0.366904,
		33.950050, 33.998299, 22.297213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383511, 34.118690, 23.053009>,  <34.403347, 33.530796, 22.554045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383511, 34.118690, 23.053009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.036690, 34.094814, 22.855158>,  <33.828598, 34.080486, 22.736446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.036690, 34.094814, 22.855158>,  <34.383511, 34.118690, 23.053009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036690, 34.094814, 22.855158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491565, -0.059184, 0.868827,
		-0.081137, 0.996461, 0.021973,
		-0.867053, -0.059693, -0.494628,
		33.776573, 34.076908, 22.706770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004124, 34.570904, 23.408495>,  <34.383511, 34.118690, 23.053009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004124, 34.570904, 23.408495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.727379, 34.372536, 23.198584>,  <33.561333, 34.253517, 23.072638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.727379, 34.372536, 23.198584>,  <34.004124, 34.570904, 23.408495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727379, 34.372536, 23.198584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578805, -0.053560, 0.813705,
		-0.431638, 0.866716, -0.249984,
		-0.691862, -0.495918, -0.524778,
		33.519821, 34.223759, 23.041151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360748, 34.857811, 23.601597>,  <34.004124, 34.570904, 23.408495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360748, 34.857811, 23.601597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298622, 34.485954, 23.467947>,  <33.261345, 34.262840, 23.387756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298622, 34.485954, 23.467947>,  <33.360748, 34.857811, 23.601597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298622, 34.485954, 23.467947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470446, -0.227806, 0.852517,
		-0.868652, 0.289601, -0.401964,
		-0.155320, -0.929643, -0.334126,
		33.252026, 34.207062, 23.367710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733761, 34.813942, 23.874622>,  <33.360748, 34.857811, 23.601597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733761, 34.813942, 23.874622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816994, 34.431705, 23.791151>,  <32.866932, 34.202362, 23.741068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816994, 34.431705, 23.791151>,  <32.733761, 34.813942, 23.874622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816994, 34.431705, 23.791151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435730, -0.281570, 0.854902,
		-0.875695, -0.086961, -0.474969,
		0.208080, -0.955592, -0.208678,
		32.879417, 34.145027, 23.728548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125313, 34.460804, 24.022631>,  <32.733761, 34.813942, 23.874622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125313, 34.460804, 24.022631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405933, 34.177025, 23.995743>,  <32.574306, 34.006760, 23.979610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405933, 34.177025, 23.995743>,  <32.125313, 34.460804, 24.022631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405933, 34.177025, 23.995743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312127, -0.390702, 0.865984,
		-0.640632, -0.586547, -0.495533,
		0.701546, -0.709447, -0.067219,
		32.616398, 33.964191, 23.975576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813248, 33.856953, 24.323410>,  <32.125313, 34.460804, 24.022631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813248, 33.856953, 24.323410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203285, 33.769726, 24.339600>,  <32.437309, 33.717388, 24.349314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203285, 33.769726, 24.339600>,  <31.813248, 33.856953, 24.323410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203285, 33.769726, 24.339600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118151, -0.356283, 0.926878,
		-0.187701, -0.908576, -0.373174,
		0.975094, -0.218067, 0.040474,
		32.495815, 33.704308, 24.351742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832235, 33.244762, 24.778404>,  <31.813248, 33.856953, 24.323410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832235, 33.244762, 24.778404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.210442, 33.372265, 24.751902>,  <32.437366, 33.448769, 24.736000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.210442, 33.372265, 24.751902>,  <31.832235, 33.244762, 24.778404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210442, 33.372265, 24.751902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116912, -0.142500, 0.982866,
		0.303857, -0.937063, -0.172003,
		0.945517, 0.318760, -0.066255,
		32.494099, 33.467892, 24.732025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188141, 32.809944, 25.115665>,  <31.832235, 33.244762, 24.778404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188141, 32.809944, 25.115665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.400894, 33.148502, 25.104980>,  <32.528545, 33.351639, 25.098570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.400894, 33.148502, 25.104980>,  <32.188141, 32.809944, 25.115665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400894, 33.148502, 25.104980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093753, -0.027505, 0.995216,
		0.841614, -0.531839, -0.093982,
		0.531880, 0.846398, -0.026713,
		32.560459, 33.402420, 25.096966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880119, 32.705044, 25.413054>,  <32.188141, 32.809944, 25.115665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880119, 32.705044, 25.413054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.821625, 33.098488, 25.455250>,  <32.786530, 33.334553, 25.480568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.821625, 33.098488, 25.455250>,  <32.880119, 32.705044, 25.413054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821625, 33.098488, 25.455250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112127, -0.089467, 0.989658,
		0.982875, 0.156554, -0.097206,
		-0.146238, 0.983609, 0.105488,
		32.777752, 33.393570, 25.486897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309170, 32.865883, 25.937727>,  <32.880119, 32.705044, 25.413054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309170, 32.865883, 25.937727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094589, 33.202686, 25.914949>,  <32.965839, 33.404770, 25.901283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094589, 33.202686, 25.914949>,  <33.309170, 32.865883, 25.937727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094589, 33.202686, 25.914949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079790, 0.117778, 0.989829,
		0.840152, 0.526450, -0.130366,
		-0.536450, 0.842009, -0.056946,
		32.933655, 33.455288, 25.897865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729828, 33.200932, 26.352818>,  <33.309170, 32.865883, 25.937727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729828, 33.200932, 26.352818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362770, 33.357391, 26.324718>,  <33.142536, 33.451267, 26.307859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362770, 33.357391, 26.324718>,  <33.729828, 33.200932, 26.352818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362770, 33.357391, 26.324718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044775, 0.073884, 0.996261,
		0.394877, 0.917357, -0.050285,
		-0.917642, 0.391149, -0.070250,
		33.087479, 33.474735, 26.303644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429852, 33.539249, 26.385929>,  <33.729828, 33.200932, 26.352818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429852, 33.539249, 26.385929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680817, 33.261131, 26.526173>,  <34.831394, 33.094261, 26.610319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680817, 33.261131, 26.526173>,  <34.429852, 33.539249, 26.385929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680817, 33.261131, 26.526173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207374, -0.284804, -0.935886,
		0.750568, 0.659892, -0.034504,
		0.627410, -0.695291, 0.350609,
		34.869041, 33.052544, 26.631355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140903, 33.678867, 25.998051>,  <34.429852, 33.539249, 26.385929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140903, 33.678867, 25.998051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115540, 33.295788, 26.110327>,  <35.100319, 33.065941, 26.177692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115540, 33.295788, 26.110327>,  <35.140903, 33.678867, 25.998051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115540, 33.295788, 26.110327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069918, -0.284831, -0.956025,
		0.995535, -0.040998, 0.085022,
		-0.063412, -0.957701, 0.280692,
		35.096516, 33.008476, 26.194534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718052, 33.350822, 25.704954>,  <35.140903, 33.678867, 25.998051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718052, 33.350822, 25.704954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458675, 33.058590, 25.790527>,  <35.303051, 32.883251, 25.841871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458675, 33.058590, 25.790527>,  <35.718052, 33.350822, 25.704954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458675, 33.058590, 25.790527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120786, -0.376204, -0.918630,
		0.751621, -0.569838, 0.332191,
		-0.648442, -0.730585, 0.213935,
		35.264141, 32.839413, 25.854708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084068, 32.754799, 25.514624>,  <35.718052, 33.350822, 25.704954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084068, 32.754799, 25.514624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.699539, 32.649353, 25.546532>,  <35.468822, 32.586086, 25.565678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.699539, 32.649353, 25.546532>,  <36.084068, 32.754799, 25.514624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699539, 32.649353, 25.546532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065966, -0.501592, -0.862586,
		0.267399, -0.823963, 0.499582,
		-0.961325, -0.263610, 0.079772,
		35.411140, 32.570271, 25.570463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054367, 32.012222, 25.527458>,  <36.084068, 32.754799, 25.514624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054367, 32.012222, 25.527458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697918, 32.138805, 25.397379>,  <35.484047, 32.214756, 25.319332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697918, 32.138805, 25.397379>,  <36.054367, 32.012222, 25.527458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697918, 32.138805, 25.397379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153079, -0.464997, -0.871977,
		-0.427160, -0.826821, 0.365927,
		-0.891124, 0.316458, -0.325197,
		35.430580, 32.233742, 25.299820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847672, 31.539248, 25.004814>,  <36.054367, 32.012222, 25.527458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847672, 31.539248, 25.004814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.599705, 31.836283, 24.903412>,  <35.450924, 32.014503, 24.842569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.599705, 31.836283, 24.903412>,  <35.847672, 31.539248, 25.004814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599705, 31.836283, 24.903412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110833, -0.236971, -0.965174,
		-0.776800, -0.626426, 0.064600,
		-0.619918, 0.742587, -0.253508,
		35.413731, 32.059059, 24.827360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509094, 31.273787, 24.543177>,  <35.847672, 31.539248, 25.004814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509094, 31.273787, 24.543177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428284, 31.661806, 24.489222>,  <35.379799, 31.894617, 24.456848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428284, 31.661806, 24.489222>,  <35.509094, 31.273787, 24.543177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428284, 31.661806, 24.489222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128982, -0.110174, -0.985508,
		-0.970850, -0.216496, -0.102861,
		-0.202026, 0.970047, -0.134886,
		35.367676, 31.952820, 24.448755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940155, 31.343115, 24.003595>,  <35.509094, 31.273787, 24.543177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940155, 31.343115, 24.003595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140747, 31.688541, 24.024651>,  <35.261101, 31.895798, 24.037283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140747, 31.688541, 24.024651>,  <34.940155, 31.343115, 24.003595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140747, 31.688541, 24.024651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133651, -0.017214, -0.990879,
		-0.854784, 0.503940, -0.124050,
		0.501479, 0.863567, 0.052638,
		35.291191, 31.947611, 24.040442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787624, 31.740690, 23.275681>,  <34.940155, 31.343115, 24.003595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787624, 31.740690, 23.275681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108196, 31.935202, 23.414963>,  <35.300537, 32.051907, 23.498533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108196, 31.935202, 23.414963>,  <34.787624, 31.740690, 23.275681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108196, 31.935202, 23.414963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346593, 0.096875, -0.933000,
		-0.487429, 0.868418, -0.090902,
		0.801428, 0.486277, 0.348207,
		35.348625, 32.081085, 23.519424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872295, 32.424286, 22.913177>,  <34.787624, 31.740690, 23.275681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872295, 32.424286, 22.913177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228790, 32.294579, 23.040018>,  <35.442688, 32.216755, 23.116121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228790, 32.294579, 23.040018>,  <34.872295, 32.424286, 22.913177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228790, 32.294579, 23.040018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399535, 0.230432, -0.887284,
		0.214646, 0.917471, 0.334924,
		0.891234, -0.324266, 0.317101,
		35.496162, 32.197300, 23.135149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341808, 32.982296, 22.673698>,  <34.872295, 32.424286, 22.913177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341808, 32.982296, 22.673698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.542248, 32.643234, 22.743408>,  <35.662514, 32.439796, 22.785234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.542248, 32.643234, 22.743408>,  <35.341808, 32.982296, 22.673698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542248, 32.643234, 22.743408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586641, 0.184687, -0.788507,
		0.636198, 0.497359, 0.589819,
		0.501103, -0.847658, 0.174274,
		35.692577, 32.388935, 22.795691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069519, 33.143887, 22.629667>,  <35.341808, 32.982296, 22.673698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069519, 33.143887, 22.629667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022560, 32.750347, 22.575621>,  <35.994385, 32.514221, 22.543194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022560, 32.750347, 22.575621>,  <36.069519, 33.143887, 22.629667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022560, 32.750347, 22.575621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596863, 0.038840, -0.801403,
		0.793708, -0.174726, 0.582664,
		-0.117395, -0.983851, -0.135115,
		35.987343, 32.455193, 22.535086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681919, 32.977810, 22.464123>,  <36.069519, 33.143887, 22.629667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681919, 32.977810, 22.464123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446377, 32.687088, 22.322702>,  <36.305050, 32.512653, 22.237850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446377, 32.687088, 22.322702>,  <36.681919, 32.977810, 22.464123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446377, 32.687088, 22.322702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467815, 0.050217, -0.882399,
		0.659089, -0.685002, 0.310441,
		-0.588855, -0.726808, -0.353552,
		36.269722, 32.469044, 22.216637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153984, 32.472927, 22.153341>,  <36.681919, 32.977810, 22.464123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153984, 32.472927, 22.153341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790585, 32.421562, 21.994272>,  <36.572544, 32.390743, 21.898830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790585, 32.421562, 21.994272>,  <37.153984, 32.472927, 22.153341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790585, 32.421562, 21.994272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401907, -0.007824, -0.915647,
		0.114473, -0.991689, 0.058720,
		-0.908497, -0.128417, -0.397671,
		36.518036, 32.383038, 21.874971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639565, 31.921719, 22.257893>,  <37.153984, 32.472927, 22.153341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639565, 31.921719, 22.257893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032337, 31.849590, 22.280838>,  <38.268002, 31.806314, 22.294605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032337, 31.849590, 22.280838>,  <37.639565, 31.921719, 22.257893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032337, 31.849590, 22.280838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059887, -0.008577, 0.998168,
		-0.179498, -0.983570, -0.019221,
		0.981934, -0.180320, 0.057363,
		38.326916, 31.795494, 22.298046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710854, 31.360140, 22.824564>,  <37.639565, 31.921719, 22.257893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710854, 31.360140, 22.824564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077068, 31.509449, 22.764610>,  <38.296795, 31.599035, 22.728638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077068, 31.509449, 22.764610>,  <37.710854, 31.360140, 22.824564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077068, 31.509449, 22.764610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125829, 0.088149, 0.988128,
		0.382056, -0.923523, 0.033735,
		0.915533, 0.373275, -0.149884,
		38.351727, 31.621431, 22.719645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271645, 30.898899, 23.110308>,  <37.710854, 31.360140, 22.824564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271645, 30.898899, 23.110308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399590, 31.277878, 23.112724>,  <38.476357, 31.505264, 23.114174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399590, 31.277878, 23.112724>,  <38.271645, 30.898899, 23.110308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399590, 31.277878, 23.112724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026941, -0.015467, 0.999517,
		0.947081, -0.319545, -0.030472,
		0.319862, 0.947445, 0.006040,
		38.495548, 31.562111, 23.114536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908195, 30.950666, 23.565039>,  <38.271645, 30.898899, 23.110308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908195, 30.950666, 23.565039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775467, 31.327847, 23.554167>,  <38.695831, 31.554155, 23.547644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775467, 31.327847, 23.554167>,  <38.908195, 30.950666, 23.565039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775467, 31.327847, 23.554167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075620, 0.055306, 0.995602,
		0.940306, 0.328307, -0.089657,
		-0.331821, 0.942951, -0.027179,
		38.675922, 31.610731, 23.546013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327499, 31.251543, 24.094019>,  <38.908195, 30.950666, 23.565039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327499, 31.251543, 24.094019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057411, 31.535961, 24.015551>,  <38.895359, 31.706612, 23.968470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057411, 31.535961, 24.015551>,  <39.327499, 31.251543, 24.094019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057411, 31.535961, 24.015551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103178, 0.354388, 0.929389,
		0.730360, 0.607306, -0.312656,
		-0.675225, 0.711047, -0.196170,
		38.854843, 31.749275, 23.956699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587330, 31.824041, 24.418726>,  <39.327499, 31.251543, 24.094019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587330, 31.824041, 24.418726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206551, 31.938808, 24.375868>,  <38.978085, 32.007668, 24.350153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206551, 31.938808, 24.375868>,  <39.587330, 31.824041, 24.418726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206551, 31.938808, 24.375868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035002, 0.449467, 0.892611,
		0.304264, 0.845966, -0.437910,
		-0.951945, 0.286917, -0.107146,
		38.920967, 32.024883, 24.343723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555511, 32.495701, 24.653542>,  <39.587330, 31.824041, 24.418726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555511, 32.495701, 24.653542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191338, 32.334900, 24.692537>,  <38.972832, 32.238419, 24.715935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191338, 32.334900, 24.692537>,  <39.555511, 32.495701, 24.653542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191338, 32.334900, 24.692537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005282, 0.246952, 0.969013,
		-0.413618, 0.881709, -0.226957,
		-0.910435, -0.402000, 0.097487,
		38.918205, 32.214298, 24.721783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212269, 32.907032, 25.093943>,  <39.555511, 32.495701, 24.653542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212269, 32.907032, 25.093943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968044, 32.590244, 25.093561>,  <38.821510, 32.400173, 25.093332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968044, 32.590244, 25.093561>,  <39.212269, 32.907032, 25.093943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968044, 32.590244, 25.093561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199737, 0.152819, 0.967859,
		-0.766369, 0.591127, -0.251491,
		-0.610561, -0.791969, -0.000954,
		38.784878, 32.352654, 25.093275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583828, 33.165344, 25.334185>,  <39.212269, 32.907032, 25.093943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583828, 33.165344, 25.334185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603928, 32.772572, 25.407167>,  <38.615986, 32.536907, 25.450956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603928, 32.772572, 25.407167>,  <38.583828, 33.165344, 25.334185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603928, 32.772572, 25.407167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058297, 0.179492, 0.982031,
		-0.997034, -0.059980, -0.048224,
		0.050247, -0.981929, 0.182456,
		38.619003, 32.477993, 25.461905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180038, 33.157139, 26.003731>,  <38.583828, 33.165344, 25.334185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180038, 33.157139, 26.003731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313499, 32.780621, 25.983212>,  <38.393578, 32.554710, 25.970900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313499, 32.780621, 25.983212>,  <38.180038, 33.157139, 26.003731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313499, 32.780621, 25.983212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052046, -0.072728, 0.995993,
		-0.941259, -0.329644, -0.073256,
		0.333651, -0.941300, -0.051299,
		38.413593, 32.498230, 25.967821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690643, 32.737415, 26.317757>,  <38.180038, 33.157139, 26.003731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690643, 32.737415, 26.317757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041107, 32.544868, 26.327797>,  <38.251385, 32.429340, 26.333820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041107, 32.544868, 26.327797>,  <37.690643, 32.737415, 26.317757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041107, 32.544868, 26.327797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064997, -0.066387, 0.995675,
		-0.477615, -0.874003, -0.089453,
		0.876161, -0.481364, 0.025100,
		38.303955, 32.400459, 26.335327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577736, 32.131840, 26.739616>,  <37.690643, 32.737415, 26.317757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577736, 32.131840, 26.739616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970482, 32.204418, 26.761589>,  <38.206131, 32.247963, 26.774773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970482, 32.204418, 26.761589>,  <37.577736, 32.131840, 26.739616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970482, 32.204418, 26.761589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043253, -0.067711, 0.996767,
		0.184576, -0.981068, -0.058635,
		0.981866, 0.181443, 0.054932,
		38.265041, 32.258850, 26.778069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770332, 31.656326, 27.177376>,  <37.577736, 32.131840, 26.739616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770332, 31.656326, 27.177376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048191, 31.943975, 27.184542>,  <38.214909, 32.116566, 27.188841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048191, 31.943975, 27.184542>,  <37.770332, 31.656326, 27.177376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048191, 31.943975, 27.184542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057992, 0.031160, 0.997831,
		0.717005, -0.694183, 0.063349,
		0.694651, 0.719123, 0.017916,
		38.256588, 32.159714, 27.189917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346935, 31.518003, 27.780987>,  <37.770332, 31.656326, 27.177376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346935, 31.518003, 27.780987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323997, 31.912876, 27.721405>,  <38.310234, 32.149799, 27.685656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323997, 31.912876, 27.721405>,  <38.346935, 31.518003, 27.780987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323997, 31.912876, 27.721405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262583, 0.158860, 0.951743,
		0.963204, 0.015469, -0.268327,
		-0.057348, 0.987180, -0.148953,
		38.306793, 32.209030, 27.676720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.926952, 34.061020, 22.862394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.566624, 34.152756, 22.714926>,  <41.350426, 34.207798, 22.626444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.566624, 34.152756, 22.714926>,  <41.926952, 34.061020, 22.862394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566624, 34.152756, 22.714926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340889, -0.152309, -0.927684,
		-0.268907, -0.961356, 0.059023,
		-0.900824, 0.229341, -0.368672,
		41.296375, 34.221558, 22.604324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742931, 33.463203, 22.323362>,  <41.926952, 34.061020, 22.862394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742931, 33.463203, 22.323362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491474, 33.767323, 22.257940>,  <41.340599, 33.949795, 22.218687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491474, 33.767323, 22.257940>,  <41.742931, 33.463203, 22.323362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491474, 33.767323, 22.257940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156727, -0.082139, -0.984220,
		-0.761737, -0.644358, -0.067523,
		-0.628644, 0.760300, -0.163557,
		41.302879, 33.995411, 22.208874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277954, 33.212868, 21.837725>,  <41.742931, 33.463203, 22.323362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277954, 33.212868, 21.837725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201733, 33.604912, 21.815561>,  <41.155998, 33.840137, 21.802263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201733, 33.604912, 21.815561>,  <41.277954, 33.212868, 21.837725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201733, 33.604912, 21.815561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049294, -0.065927, -0.996606,
		-0.980438, -0.187177, 0.060876,
		-0.190555, 0.980111, -0.055410,
		41.144566, 33.898945, 21.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649254, 33.339653, 21.534206>,  <41.277954, 33.212868, 21.837725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649254, 33.339653, 21.534206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.848099, 33.680660, 21.469587>,  <40.967403, 33.885265, 21.430817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.848099, 33.680660, 21.469587>,  <40.649254, 33.339653, 21.534206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848099, 33.680660, 21.469587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117931, -0.118070, -0.985978,
		-0.859636, 0.509190, 0.041845,
		0.497109, 0.852517, -0.161547,
		40.997231, 33.936417, 21.421124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249954, 33.660275, 20.986454>,  <40.649254, 33.339653, 21.534206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249954, 33.660275, 20.986454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619240, 33.813740, 20.977663>,  <40.840813, 33.905819, 20.972387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619240, 33.813740, 20.977663>,  <40.249954, 33.660275, 20.986454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619240, 33.813740, 20.977663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021762, -0.004908, -0.999751,
		-0.383671, 0.923462, 0.003818,
		0.923213, 0.383658, -0.021980,
		40.896202, 33.928837, 20.971069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203297, 34.119904, 20.467646>,  <40.249954, 33.660275, 20.986454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203297, 34.119904, 20.467646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597942, 34.062748, 20.499098>,  <40.834728, 34.028454, 20.517969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597942, 34.062748, 20.499098>,  <40.203297, 34.119904, 20.467646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597942, 34.062748, 20.499098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093131, 0.097802, -0.990839,
		0.133887, 0.984895, 0.109800,
		0.986611, -0.142886, 0.078630,
		40.893925, 34.019882, 20.522686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518414, 34.615761, 19.954956>,  <40.203297, 34.119904, 20.467646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518414, 34.615761, 19.954956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778389, 34.327839, 20.052488>,  <40.934376, 34.155087, 20.111008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778389, 34.327839, 20.052488>,  <40.518414, 34.615761, 19.954956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778389, 34.327839, 20.052488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375447, 0.025161, -0.926502,
		0.660768, 0.693717, 0.286603,
		0.649942, -0.719808, 0.243829,
		40.973373, 34.111897, 20.125637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216511, 34.838749, 19.699638>,  <40.518414, 34.615761, 19.954956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216511, 34.838749, 19.699638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.238262, 34.442848, 19.752459>,  <41.251312, 34.205307, 19.784151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.238262, 34.442848, 19.752459>,  <41.216511, 34.838749, 19.699638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238262, 34.442848, 19.752459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295991, -0.110325, -0.948798,
		0.953642, 0.090679, 0.286958,
		0.054377, -0.989750, 0.132051,
		41.254574, 34.145924, 19.792074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814358, 34.624786, 19.272190>,  <41.216511, 34.838749, 19.699638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814358, 34.624786, 19.272190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619045, 34.284290, 19.349104>,  <41.501858, 34.079994, 19.395252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619045, 34.284290, 19.349104>,  <41.814358, 34.624786, 19.272190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619045, 34.284290, 19.349104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060649, -0.252906, -0.965588,
		0.870576, -0.459816, 0.175116,
		-0.488281, -0.851238, 0.192287,
		41.472561, 34.028919, 19.406790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248276, 33.996655, 19.067940>,  <41.814358, 34.624786, 19.272190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248276, 33.996655, 19.067940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.872585, 33.859760, 19.078709>,  <41.647171, 33.777622, 19.085169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.872585, 33.859760, 19.078709>,  <42.248276, 33.996655, 19.067940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872585, 33.859760, 19.078709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074515, -0.279787, -0.957166,
		0.335112, -0.896990, 0.288286,
		-0.939227, -0.342239, 0.026920,
		41.590816, 33.757088, 19.086784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300484, 33.391899, 18.696493>,  <42.248276, 33.996655, 19.067940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300484, 33.391899, 18.696493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910206, 33.479507, 18.699266>,  <41.676037, 33.532070, 18.700930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910206, 33.479507, 18.699266>,  <42.300484, 33.391899, 18.696493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910206, 33.479507, 18.699266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051986, -0.200628, -0.978287,
		-0.212897, -0.954866, 0.207138,
		-0.975691, 0.219043, 0.006926,
		41.617496, 33.545212, 18.701345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069347, 33.032341, 18.163204>,  <42.300484, 33.391899, 18.696493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069347, 33.032341, 18.163204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777840, 33.300598, 18.218542>,  <41.602936, 33.461552, 18.251745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777840, 33.300598, 18.218542>,  <42.069347, 33.032341, 18.163204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777840, 33.300598, 18.218542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283296, -0.111352, -0.952546,
		-0.623414, -0.733374, 0.271140,
		-0.728765, 0.670644, 0.138344,
		41.559212, 33.501793, 18.260046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426395, 32.720982, 17.949198>,  <42.069347, 33.032341, 18.163204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426395, 32.720982, 17.949198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428883, 33.119816, 17.918791>,  <41.430374, 33.359116, 17.900547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428883, 33.119816, 17.918791>,  <41.426395, 32.720982, 17.949198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428883, 33.119816, 17.918791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373207, -0.068212, -0.925237,
		-0.927727, 0.034119, 0.371696,
		0.006214, 0.997087, -0.076016,
		41.430748, 33.418941, 17.895987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775497, 32.946487, 17.728151>,  <41.426395, 32.720982, 17.949198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775497, 32.946487, 17.728151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000702, 33.241604, 17.579193>,  <41.135826, 33.418674, 17.489819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000702, 33.241604, 17.579193>,  <40.775497, 32.946487, 17.728151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000702, 33.241604, 17.579193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615211, 0.073274, -0.784950,
		-0.551844, 0.671038, 0.495153,
		0.563013, 0.737793, -0.372394,
		41.169605, 33.462940, 17.467474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384315, 32.374222, 17.324299>,  <40.775497, 32.946487, 17.728151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384315, 32.374222, 17.324299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119839, 32.103733, 17.194349>,  <39.961151, 31.941439, 17.116379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119839, 32.103733, 17.194349>,  <40.384315, 32.374222, 17.324299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119839, 32.103733, 17.194349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021055, -0.449598, 0.892982,
		-0.749918, 0.583596, 0.311510,
		-0.661195, -0.676223, -0.324875,
		39.921478, 31.900866, 17.096888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944279, 32.422844, 17.796028>,  <40.384315, 32.374222, 17.324299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944279, 32.422844, 17.796028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863091, 32.066738, 17.632946>,  <39.814377, 31.853073, 17.535097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863091, 32.066738, 17.632946>,  <39.944279, 32.422844, 17.796028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863091, 32.066738, 17.632946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207355, -0.367853, 0.906470,
		-0.956979, 0.268524, -0.109940,
		-0.202968, -0.890269, -0.407707,
		39.802200, 31.799658, 17.510633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264702, 32.209770, 18.065454>,  <39.944279, 32.422844, 17.796028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264702, 32.209770, 18.065454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442974, 31.879694, 17.926641>,  <39.549938, 31.681648, 17.843353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442974, 31.879694, 17.926641>,  <39.264702, 32.209770, 18.065454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442974, 31.879694, 17.926641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202460, -0.470536, 0.858840,
		-0.871995, -0.312511, -0.376778,
		0.445684, -0.825186, -0.347034,
		39.576679, 31.632137, 17.822531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882874, 31.780731, 18.355656>,  <39.264702, 32.209770, 18.065454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882874, 31.780731, 18.355656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.170567, 31.529940, 18.235924>,  <39.343182, 31.379465, 18.164083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.170567, 31.529940, 18.235924>,  <38.882874, 31.780731, 18.355656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170567, 31.529940, 18.235924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217175, -0.612136, 0.760345,
		-0.659952, -0.481859, -0.576433,
		0.719234, -0.626979, -0.299333,
		39.386337, 31.341846, 18.146124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476070, 31.211767, 18.277889>,  <38.882874, 31.780731, 18.355656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476070, 31.211767, 18.277889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863590, 31.149704, 18.355198>,  <39.096104, 31.112465, 18.401583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863590, 31.149704, 18.355198>,  <38.476070, 31.211767, 18.277889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863590, 31.149704, 18.355198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244008, -0.460377, 0.853530,
		-0.043456, -0.874059, -0.483873,
		0.968799, -0.155160, 0.193271,
		39.154228, 31.103155, 18.413179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421947, 30.632750, 18.610014>,  <38.476070, 31.211767, 18.277889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421947, 30.632750, 18.610014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.785107, 30.773403, 18.701302>,  <39.003002, 30.857796, 18.756075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.785107, 30.773403, 18.701302>,  <38.421947, 30.632750, 18.610014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785107, 30.773403, 18.701302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187883, -0.145351, 0.971377,
		0.374739, -0.924785, -0.065897,
		0.907893, 0.351632, 0.228220,
		39.057476, 30.878893, 18.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651390, 30.137892, 19.048786>,  <38.421947, 30.632750, 18.610014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651390, 30.137892, 19.048786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862152, 30.469061, 19.125639>,  <38.988609, 30.667763, 19.171751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862152, 30.469061, 19.125639>,  <38.651390, 30.137892, 19.048786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862152, 30.469061, 19.125639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276212, -0.046985, 0.959948,
		0.803790, -0.558871, 0.203925,
		0.526905, 0.827923, 0.192133,
		39.020226, 30.717438, 19.183279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982136, 30.003851, 19.748924>,  <38.651390, 30.137892, 19.048786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982136, 30.003851, 19.748924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993523, 30.400612, 19.699419>,  <39.000355, 30.638668, 19.669716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993523, 30.400612, 19.699419>,  <38.982136, 30.003851, 19.748924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993523, 30.400612, 19.699419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113510, 0.119803, 0.986288,
		0.993129, -0.042126, -0.109180,
		0.028468, 0.991903, -0.123762,
		39.002064, 30.698183, 19.662291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416592, 30.225744, 20.300072>,  <38.982136, 30.003851, 19.748924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416592, 30.225744, 20.300072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211288, 30.548668, 20.183575>,  <39.088108, 30.742422, 20.113676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.211288, 30.548668, 20.183575>,  <39.416592, 30.225744, 20.300072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211288, 30.548668, 20.183575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017546, 0.329410, 0.944024,
		0.858056, 0.489636, -0.154907,
		-0.513256, 0.807308, -0.291243,
		39.057312, 30.790859, 20.096201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806599, 30.829113, 20.577579>,  <39.416592, 30.225744, 20.300072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806599, 30.829113, 20.577579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426067, 30.926064, 20.501442>,  <39.197750, 30.984234, 20.455759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426067, 30.926064, 20.501442>,  <39.806599, 30.829113, 20.577579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426067, 30.926064, 20.501442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115299, 0.292857, 0.949179,
		0.285801, 0.924926, -0.250657,
		-0.951327, 0.242376, -0.190342,
		39.140671, 30.998775, 20.444340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755795, 31.541342, 20.930559>,  <39.806599, 30.829113, 20.577579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755795, 31.541342, 20.930559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377365, 31.421282, 20.881805>,  <39.150307, 31.349245, 20.852554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377365, 31.421282, 20.881805>,  <39.755795, 31.541342, 20.930559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377365, 31.421282, 20.881805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235839, 0.380202, 0.894330,
		-0.222094, 0.874846, -0.430486,
		-0.946073, -0.300151, -0.121883,
		39.093544, 31.331236, 20.845242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226601, 32.142563, 20.979403>,  <39.755795, 31.541342, 20.930559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226601, 32.142563, 20.979403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038342, 31.800274, 21.065405>,  <38.925385, 31.594900, 21.117006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038342, 31.800274, 21.065405>,  <39.226601, 32.142563, 20.979403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038342, 31.800274, 21.065405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392725, 0.421385, 0.817436,
		-0.790100, 0.300287, -0.534388,
		-0.470648, -0.855724, 0.215006,
		38.897148, 31.543556, 21.129906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553234, 32.436989, 21.135330>,  <39.226601, 32.142563, 20.979403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553234, 32.436989, 21.135330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589520, 32.063709, 21.274420>,  <38.611290, 31.839741, 21.357874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589520, 32.063709, 21.274420>,  <38.553234, 32.436989, 21.135330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589520, 32.063709, 21.274420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251375, 0.316400, 0.914714,
		-0.963629, -0.170388, -0.205880,
		0.090715, -0.933198, 0.347724,
		38.616734, 31.783751, 21.378736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013130, 32.387009, 21.654953>,  <38.553234, 32.436989, 21.135330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013130, 32.387009, 21.654953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279633, 32.106632, 21.756771>,  <38.439533, 31.938408, 21.817862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279633, 32.106632, 21.756771>,  <38.013130, 32.387009, 21.654953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279633, 32.106632, 21.756771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109202, 0.245954, 0.963110,
		-0.737686, -0.669473, 0.087324,
		0.666254, -0.700937, 0.254545,
		38.479507, 31.896351, 21.833134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316494, 32.065125, 21.569143>,  <38.013130, 32.387009, 21.654953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316494, 32.065125, 21.569143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948238, 32.208305, 21.506784>,  <36.727287, 32.294212, 21.469368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948238, 32.208305, 21.506784>,  <37.316494, 32.065125, 21.569143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948238, 32.208305, 21.506784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251145, 0.237221, -0.938431,
		-0.298928, -0.903105, -0.308291,
		-0.920635, 0.357949, -0.155898,
		36.672047, 32.315689, 21.460014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079403, 31.783146, 20.855932>,  <37.316494, 32.065125, 21.569143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079403, 31.783146, 20.855932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850147, 32.092850, 20.963291>,  <36.712593, 32.278671, 21.027706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850147, 32.092850, 20.963291>,  <37.079403, 31.783146, 20.855932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850147, 32.092850, 20.963291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100496, 0.391467, -0.914688,
		-0.813275, -0.497267, -0.302174,
		-0.573135, 0.774261, 0.268397,
		36.678207, 32.325127, 21.043810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598221, 31.737288, 20.406290>,  <37.079403, 31.783146, 20.855932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598221, 31.737288, 20.406290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601307, 32.119167, 20.525278>,  <36.603161, 32.348297, 20.596672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601307, 32.119167, 20.525278>,  <36.598221, 31.737288, 20.406290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601307, 32.119167, 20.525278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019301, 0.297567, -0.954506,
		-0.999784, 0.001625, 0.020723,
		0.007717, 0.954700, 0.297471,
		36.603622, 32.405579, 20.614519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137817, 31.999012, 19.968912>,  <36.598221, 31.737288, 20.406290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137817, 31.999012, 19.968912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320534, 32.323414, 20.115122>,  <36.430164, 32.518055, 20.202848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320534, 32.323414, 20.115122>,  <36.137817, 31.999012, 19.968912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320534, 32.323414, 20.115122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058582, 0.382584, -0.922062,
		-0.887641, 0.442606, 0.127252,
		0.456795, 0.811005, 0.365526,
		36.457573, 32.566715, 20.224779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756958, 32.508465, 19.666649>,  <36.137817, 31.999012, 19.968912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756958, 32.508465, 19.666649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112709, 32.665428, 19.760479>,  <36.326160, 32.759605, 19.816776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112709, 32.665428, 19.760479>,  <35.756958, 32.508465, 19.666649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112709, 32.665428, 19.760479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119543, 0.295635, -0.947792,
		-0.441266, 0.870987, 0.216022,
		0.889378, 0.392405, 0.234574,
		36.379524, 32.783150, 19.830851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786240, 33.191570, 19.280518>,  <35.756958, 32.508465, 19.666649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786240, 33.191570, 19.280518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165127, 33.111172, 19.380426>,  <36.392460, 33.062931, 19.440372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165127, 33.111172, 19.380426>,  <35.786240, 33.191570, 19.280518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165127, 33.111172, 19.380426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310735, 0.383756, -0.869583,
		0.078930, 0.901295, 0.425955,
		0.947214, -0.200996, 0.249774,
		36.449291, 33.050873, 19.455359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242691, 33.814430, 19.175846>,  <35.786240, 33.191570, 19.280518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242691, 33.814430, 19.175846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487831, 33.499393, 19.150160>,  <36.634914, 33.310371, 19.134748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487831, 33.499393, 19.150160>,  <36.242691, 33.814430, 19.175846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487831, 33.499393, 19.150160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304467, 0.310341, -0.900549,
		0.729190, 0.532348, 0.429986,
		0.612847, -0.787588, -0.064215,
		36.671684, 33.263119, 19.130896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411537, 34.626091, 19.204859>,  <36.242691, 33.814430, 19.175846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411537, 34.626091, 19.204859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033134, 34.678520, 19.086271>,  <35.806091, 34.709976, 19.015118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033134, 34.678520, 19.086271>,  <36.411537, 34.626091, 19.204859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033134, 34.678520, 19.086271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313481, -0.137195, 0.939632,
		0.082484, 0.981834, 0.170875,
		-0.946005, 0.131070, -0.296470,
		35.749332, 34.717842, 18.997330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084286, 35.150398, 19.717222>,  <36.411537, 34.626091, 19.204859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084286, 35.150398, 19.717222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779102, 34.961403, 19.540747>,  <35.595993, 34.848007, 19.434862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779102, 34.961403, 19.540747>,  <36.084286, 35.150398, 19.717222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779102, 34.961403, 19.540747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454448, -0.093352, 0.885868,
		-0.459746, 0.876380, -0.143497,
		-0.762961, -0.472486, -0.441188,
		35.550213, 34.819656, 19.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435318, 35.493740, 19.997135>,  <36.084286, 35.150398, 19.717222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435318, 35.493740, 19.997135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316578, 35.134789, 19.866541>,  <35.245335, 34.919418, 19.788185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316578, 35.134789, 19.866541>,  <35.435318, 35.493740, 19.997135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316578, 35.134789, 19.866541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527245, -0.131035, 0.839549,
		-0.796173, 0.421360, -0.434239,
		-0.296852, -0.897377, -0.326486,
		35.227524, 34.865574, 19.768595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617462, 35.369045, 20.092552>,  <35.435318, 35.493740, 19.997135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617462, 35.369045, 20.092552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761192, 34.996220, 20.074034>,  <34.847431, 34.772526, 20.062923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761192, 34.996220, 20.074034>,  <34.617462, 35.369045, 20.092552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761192, 34.996220, 20.074034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593559, -0.266543, 0.759370,
		-0.720121, -0.245380, -0.649010,
		0.359323, -0.932064, -0.046296,
		34.868988, 34.716602, 20.060144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051926, 35.003441, 20.125044>,  <34.617462, 35.369045, 20.092552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051926, 35.003441, 20.125044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341702, 34.749031, 20.231371>,  <34.515568, 34.596386, 20.295168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341702, 34.749031, 20.231371>,  <34.051926, 35.003441, 20.125044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341702, 34.749031, 20.231371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543304, -0.289474, 0.788051,
		-0.424272, -0.715317, -0.555262,
		0.724440, -0.636024, 0.265819,
		34.559032, 34.558224, 20.311117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709106, 34.441792, 20.201424>,  <34.051926, 35.003441, 20.125044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709106, 34.441792, 20.201424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037655, 34.383778, 20.422079>,  <34.234783, 34.348969, 20.554472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037655, 34.383778, 20.422079>,  <33.709106, 34.441792, 20.201424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037655, 34.383778, 20.422079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568306, -0.290657, 0.769771,
		0.048695, -0.945771, -0.321163,
		0.821375, -0.145035, 0.551641,
		34.284069, 34.340267, 20.587572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514606, 33.890533, 20.636677>,  <33.709106, 34.441792, 20.201424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514606, 33.890533, 20.636677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836781, 34.012501, 20.839972>,  <34.030083, 34.085682, 20.961948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836781, 34.012501, 20.839972>,  <33.514606, 33.890533, 20.636677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836781, 34.012501, 20.839972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332512, -0.477378, 0.813354,
		0.490627, -0.824097, -0.283107,
		0.805432, 0.304918, 0.508237,
		34.078411, 34.103977, 20.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.921127, 35.865051, 18.596418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914730, 35.687271, 18.954683>,  <38.910892, 35.580605, 19.169641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914730, 35.687271, 18.954683>,  <38.921127, 35.865051, 18.596418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914730, 35.687271, 18.954683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749961, 0.597774, 0.283239,
		-0.661289, -0.667183, -0.342876,
		-0.015990, -0.444446, 0.895663,
		38.909931, 35.553936, 19.223383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512299, 35.357845, 18.155729>,  <38.921127, 35.865051, 18.596418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512299, 35.357845, 18.155729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.907330, 35.294998, 18.156055>,  <39.144348, 35.257290, 18.156252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.907330, 35.294998, 18.156055>,  <38.512299, 35.357845, 18.155729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907330, 35.294998, 18.156055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060666, 0.386110, 0.920456,
		-0.144934, -0.908974, 0.390846,
		0.987580, -0.157116, 0.000817,
		39.203602, 35.247864, 18.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691540, 35.023178, 18.812555>,  <38.512299, 35.357845, 18.155729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691540, 35.023178, 18.812555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046684, 35.149414, 18.678627>,  <39.259773, 35.225155, 18.598270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046684, 35.149414, 18.678627>,  <38.691540, 35.023178, 18.812555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046684, 35.149414, 18.678627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185094, 0.421234, 0.887864,
		0.421234, -0.850275, 0.315585,
		-0.887864, -0.315585, 0.334819,
		39.313042, 35.244091, 18.578182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240860, 34.765175, 19.321426>,  <38.691540, 35.023178, 18.812555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240860, 34.765175, 19.321426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.397877, 35.077160, 19.126463>,  <39.492088, 35.264351, 19.009485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.397877, 35.077160, 19.126463>,  <39.240860, 34.765175, 19.321426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397877, 35.077160, 19.126463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209380, 0.440246, 0.873122,
		0.895582, -0.444793, 0.009509,
		0.392545, 0.779962, -0.487408,
		39.515640, 35.311150, 18.980240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888969, 34.876450, 19.585258>,  <39.240860, 34.765175, 19.321426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888969, 34.876450, 19.585258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770985, 35.223671, 19.425514>,  <39.700195, 35.432003, 19.329668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770985, 35.223671, 19.425514>,  <39.888969, 34.876450, 19.585258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770985, 35.223671, 19.425514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213073, 0.467187, 0.858100,
		0.931450, 0.168011, -0.322759,
		-0.294959, 0.868049, -0.399363,
		39.682499, 35.484085, 19.305706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335793, 35.358234, 19.893433>,  <39.888969, 34.876450, 19.585258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335793, 35.358234, 19.893433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.040459, 35.591911, 19.758623>,  <39.863258, 35.732117, 19.677738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.040459, 35.591911, 19.758623>,  <40.335793, 35.358234, 19.893433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040459, 35.591911, 19.758623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018821, 0.517364, 0.855558,
		0.674170, 0.625347, -0.392984,
		-0.738336, 0.584188, -0.337022,
		39.818958, 35.767166, 19.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608006, 35.982193, 19.976711>,  <40.335793, 35.358234, 19.893433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608006, 35.982193, 19.976711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222244, 36.087399, 19.965710>,  <39.990788, 36.150520, 19.959108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222244, 36.087399, 19.965710>,  <40.608006, 35.982193, 19.976711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222244, 36.087399, 19.965710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064269, 0.333997, 0.940380,
		0.256517, 0.905136, -0.339010,
		-0.964401, 0.263011, -0.027504,
		39.932922, 36.166302, 19.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531555, 36.796581, 20.112833>,  <40.608006, 35.982193, 19.976711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531555, 36.796581, 20.112833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183033, 36.622322, 20.203199>,  <39.973919, 36.517765, 20.257420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183033, 36.622322, 20.203199>,  <40.531555, 36.796581, 20.112833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183033, 36.622322, 20.203199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042891, 0.526199, 0.849279,
		-0.488863, 0.730292, -0.477165,
		-0.871305, -0.435648, 0.225916,
		39.921642, 36.491627, 20.270975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204578, 37.348194, 20.497253>,  <40.531555, 36.796581, 20.112833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204578, 37.348194, 20.497253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981571, 37.025578, 20.575907>,  <39.847767, 36.832008, 20.623098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981571, 37.025578, 20.575907>,  <40.204578, 37.348194, 20.497253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981571, 37.025578, 20.575907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167165, 0.341083, 0.925050,
		-0.813157, 0.482866, -0.324986,
		-0.557522, -0.806538, 0.196636,
		39.814316, 36.783615, 20.634897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621422, 37.685455, 20.787931>,  <40.204578, 37.348194, 20.497253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621422, 37.685455, 20.787931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637157, 37.304333, 20.908333>,  <39.646599, 37.075657, 20.980574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637157, 37.304333, 20.908333>,  <39.621422, 37.685455, 20.787931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637157, 37.304333, 20.908333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267234, 0.280231, 0.921985,
		-0.962828, -0.116712, -0.243599,
		0.039343, -0.952811, 0.301004,
		39.648960, 37.018490, 20.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045914, 37.592194, 21.084272>,  <39.621422, 37.685455, 20.787931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045914, 37.592194, 21.084272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.275890, 37.303303, 21.238068>,  <39.413876, 37.129967, 21.330345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.275890, 37.303303, 21.238068>,  <39.045914, 37.592194, 21.084272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275890, 37.303303, 21.238068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292080, 0.257789, 0.920996,
		-0.764287, -0.641817, -0.062736,
		0.574939, -0.722230, 0.384486,
		39.448372, 37.086636, 21.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651932, 37.354412, 21.605658>,  <39.045914, 37.592194, 21.084272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651932, 37.354412, 21.605658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.012291, 37.210625, 21.702950>,  <39.228508, 37.124352, 21.761324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.012291, 37.210625, 21.702950>,  <38.651932, 37.354412, 21.605658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012291, 37.210625, 21.702950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179003, 0.202794, 0.962721,
		-0.395391, -0.910856, 0.118352,
		0.900902, -0.359466, 0.243229,
		39.282562, 37.102783, 21.775919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927837, 37.029221, 21.525612>,  <38.651932, 37.354412, 21.605658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927837, 37.029221, 21.525612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757835, 37.374760, 21.417433>,  <37.655834, 37.582081, 21.352526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757835, 37.374760, 21.417433>,  <37.927837, 37.029221, 21.525612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757835, 37.374760, 21.417433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571725, 0.024540, -0.820078,
		-0.701784, -0.503159, -0.504312,
		-0.425006, 0.863845, -0.270447,
		37.630333, 37.633915, 21.336298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881866, 36.886581, 20.834743>,  <37.927837, 37.029221, 21.525612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881866, 36.886581, 20.834743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808746, 37.278267, 20.869886>,  <37.764874, 37.513279, 20.890972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808746, 37.278267, 20.869886>,  <37.881866, 36.886581, 20.834743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808746, 37.278267, 20.869886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509205, 0.170740, -0.843539,
		-0.841009, -0.109461, -0.529833,
		-0.182798, 0.979217, 0.087856,
		37.753906, 37.572033, 20.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373787, 37.146282, 20.313232>,  <37.881866, 36.886581, 20.834743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373787, 37.146282, 20.313232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581276, 37.472401, 20.416166>,  <37.705769, 37.668072, 20.477926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581276, 37.472401, 20.416166>,  <37.373787, 37.146282, 20.313232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581276, 37.472401, 20.416166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261335, 0.135382, -0.955707,
		-0.814023, 0.562995, -0.142840,
		0.518721, 0.815297, 0.257334,
		37.736893, 37.716991, 20.493366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132683, 37.663372, 19.936487>,  <37.373787, 37.146282, 20.313232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132683, 37.663372, 19.936487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505573, 37.781132, 20.020664>,  <37.729309, 37.851788, 20.071171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505573, 37.781132, 20.020664>,  <37.132683, 37.663372, 19.936487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505573, 37.781132, 20.020664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185870, 0.109423, -0.976462,
		-0.310496, 0.949398, 0.047287,
		0.932225, 0.294399, 0.210440,
		37.785240, 37.869450, 20.083796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210201, 38.354244, 19.736025>,  <37.132683, 37.663372, 19.936487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210201, 38.354244, 19.736025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580631, 38.207340, 19.770685>,  <37.802891, 38.119198, 19.791481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580631, 38.207340, 19.770685>,  <37.210201, 38.354244, 19.736025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580631, 38.207340, 19.770685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115819, 0.058096, -0.991570,
		0.359127, 0.928303, 0.096337,
		0.926074, -0.367258, 0.086651,
		37.858452, 38.097164, 19.796680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616402, 38.802380, 19.241442>,  <37.210201, 38.354244, 19.736025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616402, 38.802380, 19.241442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.844006, 38.483452, 19.321947>,  <37.980568, 38.292095, 19.370251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.844006, 38.483452, 19.321947>,  <37.616402, 38.802380, 19.241442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844006, 38.483452, 19.321947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247955, -0.067002, -0.966452,
		0.784056, 0.599827, 0.159574,
		0.569012, -0.797320, 0.201263,
		38.014709, 38.244255, 19.382326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173317, 39.039745, 18.827202>,  <37.616402, 38.802380, 19.241442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173317, 39.039745, 18.827202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192768, 38.649860, 18.914444>,  <38.204437, 38.415928, 18.966789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192768, 38.649860, 18.914444>,  <38.173317, 39.039745, 18.827202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192768, 38.649860, 18.914444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138771, -0.209653, -0.967878,
		0.989130, 0.077332, 0.125067,
		0.048627, -0.974713, 0.218105,
		38.207355, 38.357445, 18.979876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699448, 38.811283, 18.389635>,  <38.173317, 39.039745, 18.827202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699448, 38.811283, 18.389635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500065, 38.476734, 18.480862>,  <38.380436, 38.276005, 18.535599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500065, 38.476734, 18.480862>,  <38.699448, 38.811283, 18.389635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500065, 38.476734, 18.480862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089528, -0.212010, -0.973158,
		0.862280, -0.505495, 0.030799,
		-0.498456, -0.836377, 0.228068,
		38.350529, 38.225822, 18.549282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007488, 38.433544, 17.939325>,  <38.699448, 38.811283, 18.389635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007488, 38.433544, 17.939325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659290, 38.264370, 18.040018>,  <38.450371, 38.162865, 18.100433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659290, 38.264370, 18.040018>,  <39.007488, 38.433544, 17.939325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659290, 38.264370, 18.040018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225140, -0.112647, -0.967793,
		0.437670, -0.899131, 0.002839,
		-0.870492, -0.422935, 0.251733,
		38.398144, 38.137489, 18.115538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041801, 37.758022, 17.613279>,  <39.007488, 38.433544, 17.939325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041801, 37.758022, 17.613279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670238, 37.886070, 17.687731>,  <38.447300, 37.962898, 17.732403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670238, 37.886070, 17.687731>,  <39.041801, 37.758022, 17.613279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670238, 37.886070, 17.687731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224997, -0.088708, -0.970313,
		-0.294109, -0.943214, 0.154428,
		-0.928911, 0.320124, 0.186131,
		38.391563, 37.982109, 17.743570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641712, 37.355820, 17.228609>,  <39.041801, 37.758022, 17.613279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641712, 37.355820, 17.228609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388386, 37.647820, 17.331373>,  <38.236389, 37.823021, 17.393032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388386, 37.647820, 17.331373>,  <38.641712, 37.355820, 17.228609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388386, 37.647820, 17.331373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414132, -0.039247, -0.909370,
		-0.653760, -0.682316, 0.327174,
		-0.633318, 0.730003, 0.256911,
		38.198391, 37.866821, 17.408447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950138, 37.167130, 16.948959>,  <38.641712, 37.355820, 17.228609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950138, 37.167130, 16.948959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966984, 37.565147, 16.984976>,  <37.977089, 37.803959, 17.006586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966984, 37.565147, 16.984976>,  <37.950138, 37.167130, 16.948959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966984, 37.565147, 16.984976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341854, 0.099030, -0.934521,
		-0.938809, 0.008574, 0.344331,
		0.042112, 0.995047, 0.090039,
		37.979618, 37.863663, 17.011988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292397, 37.171143, 16.704580>,  <37.950138, 37.167130, 16.948959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292397, 37.171143, 16.704580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492397, 37.517487, 16.697884>,  <37.612396, 37.725292, 16.693865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492397, 37.517487, 16.697884>,  <37.292397, 37.171143, 16.704580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492397, 37.517487, 16.697884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173142, 0.081003, -0.981560,
		-0.848541, 0.493679, 0.190418,
		0.500000, 0.865864, -0.016742,
		37.642399, 37.777245, 16.692862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133865, 36.929180, 17.408060>,  <37.292397, 37.171143, 16.704580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133865, 36.929180, 17.408060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967365, 36.760315, 17.085939>,  <36.867466, 36.658997, 16.892666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967365, 36.760315, 17.085939>,  <37.133865, 36.929180, 17.408060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967365, 36.760315, 17.085939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452477, -0.672048, 0.586188,
		-0.788669, 0.608382, 0.088722,
		-0.416252, -0.422164, -0.805303,
		36.842491, 36.633667, 16.844349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404415, 36.972214, 17.421108>,  <37.133865, 36.929180, 17.408060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404415, 36.972214, 17.421108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.503624, 36.659645, 17.192070>,  <36.563148, 36.472103, 17.054647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.503624, 36.659645, 17.192070>,  <36.404415, 36.972214, 17.421108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503624, 36.659645, 17.192070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609763, -0.585214, 0.534522,
		-0.752779, 0.216577, -0.621626,
		0.248019, -0.781421, -0.572597,
		36.578030, 36.425220, 17.020290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751240, 36.620171, 17.116880>,  <36.404415, 36.972214, 17.421108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751240, 36.620171, 17.116880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064743, 36.373077, 17.142578>,  <36.252846, 36.224823, 17.157997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064743, 36.373077, 17.142578>,  <35.751240, 36.620171, 17.116880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064743, 36.373077, 17.142578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560484, -0.658949, 0.501641,
		-0.267546, -0.429175, -0.862687,
		0.783759, -0.617734, 0.064246,
		36.299870, 36.187756, 17.161852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487190, 36.036777, 17.086199>,  <35.751240, 36.620171, 17.116880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487190, 36.036777, 17.086199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.838005, 35.925209, 17.242666>,  <36.048492, 35.858269, 17.336546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.838005, 35.925209, 17.242666>,  <35.487190, 36.036777, 17.086199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838005, 35.925209, 17.242666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463099, -0.707515, 0.533818,
		0.127864, -0.649327, -0.749684,
		0.877035, -0.278922, 0.391168,
		36.101116, 35.841534, 17.360016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601562, 35.328999, 17.009569>,  <35.487190, 36.036777, 17.086199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601562, 35.328999, 17.009569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860245, 35.375919, 17.311037>,  <36.015453, 35.404072, 17.491917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860245, 35.375919, 17.311037>,  <35.601562, 35.328999, 17.009569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860245, 35.375919, 17.311037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430775, -0.759258, 0.487812,
		0.629451, -0.640131, -0.440482,
		0.646702, 0.117305, 0.753668,
		36.054256, 35.411110, 17.537138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854176, 34.640690, 17.257288>,  <35.601562, 35.328999, 17.009569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854176, 34.640690, 17.257288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.945282, 34.885509, 17.560213>,  <35.999947, 35.032402, 17.741968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.945282, 34.885509, 17.560213>,  <35.854176, 34.640690, 17.257288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945282, 34.885509, 17.560213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128991, -0.751936, 0.646494,
		0.965135, -0.244933, -0.092314,
		0.227762, 0.612046, 0.757314,
		36.013611, 35.069122, 17.787407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228512, 34.267647, 17.725180>,  <35.854176, 34.640690, 17.257288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228512, 34.267647, 17.725180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084709, 34.568630, 17.945925>,  <35.998428, 34.749222, 18.078371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084709, 34.568630, 17.945925>,  <36.228512, 34.267647, 17.725180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084709, 34.568630, 17.945925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255900, -0.648231, 0.717156,
		0.897367, 0.116603, 0.425600,
		-0.359510, 0.752463, 0.551863,
		35.976856, 34.794369, 18.111483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422131, 34.126804, 18.442549>,  <36.228512, 34.267647, 17.725180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422131, 34.126804, 18.442549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118645, 34.386158, 18.467701>,  <35.936554, 34.541771, 18.482792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118645, 34.386158, 18.467701>,  <36.422131, 34.126804, 18.442549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118645, 34.386158, 18.467701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360565, -0.498383, 0.788421,
		0.542538, 0.575512, 0.611914,
		-0.758713, 0.648383, 0.062883,
		35.891029, 34.580673, 18.486567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901459, 34.083698, 19.013132>,  <36.422131, 34.126804, 18.442549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901459, 34.083698, 19.013132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.938690, 33.692265, 18.939686>,  <36.961029, 33.457405, 18.895618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.938690, 33.692265, 18.939686>,  <36.901459, 34.083698, 19.013132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938690, 33.692265, 18.939686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306297, 0.203619, -0.929904,
		0.947374, 0.030314, 0.318689,
		0.093080, -0.978581, -0.183618,
		36.966614, 33.398689, 18.884600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493336, 33.975498, 18.553900>,  <36.901459, 34.083698, 19.013132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493336, 33.975498, 18.553900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331841, 33.616154, 18.484690>,  <37.234943, 33.400547, 18.443163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331841, 33.616154, 18.484690>,  <37.493336, 33.975498, 18.553900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331841, 33.616154, 18.484690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255498, 0.070881, -0.964208,
		0.878473, -0.433495, 0.200913,
		-0.403738, -0.898364, -0.173024,
		37.210720, 33.346645, 18.432783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985249, 33.583481, 18.141678>,  <37.493336, 33.975498, 18.553900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985249, 33.583481, 18.141678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661270, 33.357418, 18.078955>,  <37.466885, 33.221779, 18.041321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661270, 33.357418, 18.078955>,  <37.985249, 33.583481, 18.141678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661270, 33.357418, 18.078955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242410, -0.079122, -0.966942,
		0.534070, -0.821179, 0.201084,
		-0.809942, -0.565160, -0.156806,
		37.418289, 33.187870, 18.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219135, 32.856960, 17.826195>,  <37.985249, 33.583481, 18.141678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219135, 32.856960, 17.826195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841442, 32.927673, 17.715069>,  <37.614826, 32.970100, 17.648394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841442, 32.927673, 17.715069>,  <38.219135, 32.856960, 17.826195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841442, 32.927673, 17.715069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269746, -0.068625, -0.960483,
		-0.188863, -0.981854, 0.017111,
		-0.944228, 0.176784, -0.277812,
		37.558174, 32.980709, 17.631725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106712, 32.480839, 17.220911>,  <38.219135, 32.856960, 17.826195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106712, 32.480839, 17.220911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790279, 32.723980, 17.193493>,  <37.600418, 32.869865, 17.177042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790279, 32.723980, 17.193493>,  <38.106712, 32.480839, 17.220911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790279, 32.723980, 17.193493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023801, -0.081385, -0.996399,
		-0.611244, -0.789866, 0.049915,
		-0.791084, 0.607855, -0.068546,
		37.552956, 32.906338, 17.172930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789234, 32.203850, 16.648050>,  <38.106712, 32.480839, 17.220911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789234, 32.203850, 16.648050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644970, 32.574768, 16.688143>,  <37.558411, 32.797318, 16.712198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644970, 32.574768, 16.688143>,  <37.789234, 32.203850, 16.648050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644970, 32.574768, 16.688143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069356, 0.133832, -0.988574,
		-0.930114, -0.349591, -0.112582,
		-0.360664, 0.927295, 0.100233,
		37.536770, 32.852955, 16.718212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335564, 32.365154, 16.019230>,  <37.789234, 32.203850, 16.648050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335564, 32.365154, 16.019230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.473789, 32.712704, 16.161016>,  <37.556725, 32.921234, 16.246088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.473789, 32.712704, 16.161016>,  <37.335564, 32.365154, 16.019230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473789, 32.712704, 16.161016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309656, 0.250998, -0.917122,
		-0.885832, 0.426687, -0.182316,
		0.345563, 0.868872, 0.354468,
		37.577457, 32.973366, 16.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040340, 32.810696, 15.557395>,  <37.335564, 32.365154, 16.019230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040340, 32.810696, 15.557395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363289, 32.968945, 15.732503>,  <37.557056, 33.063892, 15.837567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363289, 32.968945, 15.732503>,  <37.040340, 32.810696, 15.557395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363289, 32.968945, 15.732503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342966, 0.289070, -0.893763,
		-0.480137, 0.871736, 0.097701,
		0.807368, 0.395621, 0.437769,
		37.605499, 33.087631, 15.863833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996201, 33.430576, 15.130942>,  <37.040340, 32.810696, 15.557395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996201, 33.430576, 15.130942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.322029, 33.528412, 14.920554>,  <37.517529, 33.587112, 14.794321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.322029, 33.528412, 14.920554>,  <36.996201, 33.430576, 15.130942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322029, 33.528412, 14.920554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471331, 0.807619, -0.354398,
		0.338104, 0.536590, 0.773147,
		0.814575, 0.244585, -0.525971,
		37.566402, 33.601788, 14.762763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.428547, 35.025509, 31.219862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818535, 34.938011, 31.203905>,  <35.052528, 34.885513, 31.194330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818535, 34.938011, 31.203905>,  <34.428547, 35.025509, 31.219862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818535, 34.938011, 31.203905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174566, -0.641877, -0.746673,
		0.137726, 0.734945, -0.663993,
		0.974966, -0.218747, -0.039893,
		35.111023, 34.872387, 31.191936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610020, 35.242081, 30.566868>,  <34.428547, 35.025509, 31.219862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610020, 35.242081, 30.566868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878044, 34.975689, 30.698009>,  <35.038860, 34.815853, 30.776695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878044, 34.975689, 30.698009>,  <34.610020, 35.242081, 30.566868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878044, 34.975689, 30.698009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120188, -0.533178, -0.837422,
		0.732511, 0.521720, -0.437305,
		0.670061, -0.665980, 0.327854,
		35.079063, 34.775894, 30.796366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830296, 35.039185, 29.882349>,  <34.610020, 35.242081, 30.566868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830296, 35.039185, 29.882349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960739, 34.767506, 30.145359>,  <35.039005, 34.604496, 30.303165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960739, 34.767506, 30.145359>,  <34.830296, 35.039185, 29.882349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960739, 34.767506, 30.145359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352777, -0.557867, -0.751221,
		0.877041, 0.476941, 0.057680,
		0.326111, -0.679199, 0.657526,
		35.058571, 34.563747, 30.342617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471653, 34.977695, 29.736744>,  <34.830296, 35.039185, 29.882349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471653, 34.977695, 29.736744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350075, 34.632084, 29.897276>,  <35.277130, 34.424717, 29.993595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350075, 34.632084, 29.897276>,  <35.471653, 34.977695, 29.736744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350075, 34.632084, 29.897276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278677, -0.483470, -0.829817,
		0.911020, -0.140374, 0.387733,
		-0.303942, -0.864032, 0.401332,
		35.258892, 34.372875, 30.017675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048698, 34.457275, 29.579113>,  <35.471653, 34.977695, 29.736744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048698, 34.457275, 29.579113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721790, 34.239796, 29.655495>,  <35.525646, 34.109306, 29.701323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721790, 34.239796, 29.655495>,  <36.048698, 34.457275, 29.579113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721790, 34.239796, 29.655495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224749, -0.605864, -0.763163,
		0.530623, -0.580793, 0.617349,
		-0.817268, -0.543700, 0.190953,
		35.476608, 34.076687, 29.712780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244026, 33.776260, 29.376221>,  <36.048698, 34.457275, 29.579113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244026, 33.776260, 29.376221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844063, 33.781590, 29.376455>,  <35.604084, 33.784786, 29.376596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844063, 33.781590, 29.376455>,  <36.244026, 33.776260, 29.376221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844063, 33.781590, 29.376455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005994, -0.409639, -0.912228,
		-0.011912, -0.912150, 0.409683,
		-0.999911, 0.013322, 0.000588,
		35.544090, 33.785587, 29.376631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122997, 33.142521, 29.095032>,  <36.244026, 33.776260, 29.376221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122997, 33.142521, 29.095032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769924, 33.328320, 29.066406>,  <35.558083, 33.439800, 29.049231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769924, 33.328320, 29.066406>,  <36.122997, 33.142521, 29.095032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769924, 33.328320, 29.066406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154408, -0.430436, -0.889316,
		-0.443903, -0.773922, 0.451658,
		-0.882671, 0.464510, -0.071572,
		35.505119, 33.467667, 29.044937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541107, 32.647762, 28.918373>,  <36.122997, 33.142521, 29.095032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541107, 32.647762, 28.918373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409306, 33.006039, 28.798933>,  <35.330227, 33.221004, 28.727268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409306, 33.006039, 28.798933>,  <35.541107, 32.647762, 28.918373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409306, 33.006039, 28.798933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274404, -0.393459, -0.877435,
		-0.903400, -0.207179, 0.375427,
		-0.329502, 0.895694, -0.298600,
		35.310455, 33.274746, 28.709352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950542, 32.479267, 28.568117>,  <35.541107, 32.647762, 28.918373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950542, 32.479267, 28.568117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022949, 32.848171, 28.431490>,  <35.066395, 33.069515, 28.349514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022949, 32.848171, 28.431490>,  <34.950542, 32.479267, 28.568117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022949, 32.848171, 28.431490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227964, -0.298498, -0.926786,
		-0.956694, 0.245632, 0.156207,
		0.181021, 0.922260, -0.341567,
		35.077255, 33.124847, 28.329020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400444, 32.568390, 28.083227>,  <34.950542, 32.479267, 28.568117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400444, 32.568390, 28.083227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664375, 32.855217, 27.993395>,  <34.822735, 33.027313, 27.939495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664375, 32.855217, 27.993395>,  <34.400444, 32.568390, 28.083227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664375, 32.855217, 27.993395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125832, -0.189211, -0.973841,
		-0.740803, 0.670830, -0.034617,
		0.659832, 0.717068, -0.224580,
		34.862324, 33.070335, 27.926022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083538, 32.871796, 27.597382>,  <34.400444, 32.568390, 28.083227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083538, 32.871796, 27.597382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471806, 32.962036, 27.564152>,  <34.704765, 33.016182, 27.544214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471806, 32.962036, 27.564152>,  <34.083538, 32.871796, 27.597382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471806, 32.962036, 27.564152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055064, -0.127745, -0.990277,
		-0.234023, 0.965808, -0.111576,
		0.970671, 0.225603, -0.083077,
		34.763008, 33.029716, 27.539228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132534, 33.293716, 27.003933>,  <34.083538, 32.871796, 27.597382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132534, 33.293716, 27.003933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497261, 33.141331, 27.065195>,  <34.716099, 33.049900, 27.101952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497261, 33.141331, 27.065195>,  <34.132534, 33.293716, 27.003933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497261, 33.141331, 27.065195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082271, -0.195926, -0.977162,
		0.402272, 0.903592, -0.147306,
		0.911816, -0.380966, 0.153155,
		34.770805, 33.027042, 27.111141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756950, 33.808121, 26.831900>,  <34.132534, 33.293716, 27.003933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756950, 33.808121, 26.831900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368660, 33.728924, 26.777506>,  <33.135685, 33.681404, 26.744869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368660, 33.728924, 26.777506>,  <33.756950, 33.808121, 26.831900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368660, 33.728924, 26.777506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183027, 0.243092, 0.952579,
		-0.155549, 0.949581, -0.272214,
		-0.970724, -0.197995, -0.135986,
		33.077442, 33.669525, 26.736710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332733, 34.431007, 27.026930>,  <33.756950, 33.808121, 26.831900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332733, 34.431007, 27.026930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088020, 34.115688, 27.053179>,  <32.941193, 33.926495, 27.068928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088020, 34.115688, 27.053179>,  <33.332733, 34.431007, 27.026930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088020, 34.115688, 27.053179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335243, 0.333519, 0.881122,
		-0.716477, 0.517053, -0.468313,
		-0.611779, -0.788302, 0.065620,
		32.904488, 33.879196, 27.072865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903927, 34.675087, 27.416105>,  <33.332733, 34.431007, 27.026930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903927, 34.675087, 27.416105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808617, 34.286987, 27.433283>,  <32.751431, 34.054127, 27.443590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808617, 34.286987, 27.433283>,  <32.903927, 34.675087, 27.416105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808617, 34.286987, 27.433283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365235, 0.130492, 0.921724,
		-0.899904, 0.203940, -0.385461,
		-0.238276, -0.970248, 0.042945,
		32.737133, 33.995914, 27.446167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275471, 34.694904, 27.708395>,  <32.903927, 34.675087, 27.416105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275471, 34.694904, 27.708395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421368, 34.326870, 27.765526>,  <32.508907, 34.106049, 27.799805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421368, 34.326870, 27.765526>,  <32.275471, 34.694904, 27.708395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421368, 34.326870, 27.765526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318641, 0.020790, 0.947647,
		-0.874889, -0.391158, -0.285595,
		0.364742, -0.920088, 0.142828,
		32.530792, 34.050842, 27.808374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676439, 34.353203, 27.951666>,  <32.275471, 34.694904, 27.708395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676439, 34.353203, 27.951666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998150, 34.144131, 28.064762>,  <32.191177, 34.018688, 28.132620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998150, 34.144131, 28.064762>,  <31.676439, 34.353203, 27.951666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998150, 34.144131, 28.064762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363990, -0.057204, 0.929645,
		-0.469731, -0.850609, -0.236258,
		0.804279, -0.522678, 0.282742,
		32.239433, 33.987328, 28.149584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420544, 33.807980, 28.241266>,  <31.676439, 34.353203, 27.951666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420544, 33.807980, 28.241266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791691, 33.797596, 28.390066>,  <32.014378, 33.791367, 28.479347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791691, 33.797596, 28.390066>,  <31.420544, 33.807980, 28.241266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791691, 33.797596, 28.390066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370614, -0.174626, 0.912223,
		0.041277, -0.984292, -0.171652,
		0.927869, -0.025963, 0.372001,
		32.070053, 33.789806, 28.501667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345268, 33.270531, 28.681667>,  <31.420544, 33.807980, 28.241266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345268, 33.270531, 28.681667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694403, 33.437119, 28.783417>,  <31.903883, 33.537071, 28.844467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694403, 33.437119, 28.783417>,  <31.345268, 33.270531, 28.681667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694403, 33.437119, 28.783417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106053, -0.346916, 0.931881,
		0.476347, -0.840359, -0.258633,
		0.872838, 0.416469, 0.254375,
		31.956255, 33.562057, 28.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577293, 32.846596, 29.324959>,  <31.345268, 33.270531, 28.681667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577293, 32.846596, 29.324959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759491, 33.202675, 29.328514>,  <31.868809, 33.416321, 29.330648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759491, 33.202675, 29.328514>,  <31.577293, 32.846596, 29.324959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759491, 33.202675, 29.328514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145864, 0.064777, 0.987182,
		0.878208, -0.450951, 0.159353,
		0.455493, 0.890195, 0.008889,
		31.896139, 33.469734, 29.331181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094883, 32.715160, 29.834885>,  <31.577293, 32.846596, 29.324959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094883, 32.715160, 29.834885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033169, 33.108818, 29.799881>,  <31.996140, 33.345013, 29.778879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033169, 33.108818, 29.799881>,  <32.094883, 32.715160, 29.834885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033169, 33.108818, 29.799881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027319, 0.084288, 0.996067,
		0.987648, 0.156069, 0.013881,
		-0.154286, 0.984143, -0.087510,
		31.986883, 33.404060, 29.773628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473217, 33.011223, 30.338902>,  <32.094883, 32.715160, 29.834885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473217, 33.011223, 30.338902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191017, 33.287224, 30.274189>,  <32.021698, 33.452824, 30.235361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191017, 33.287224, 30.274189>,  <32.473217, 33.011223, 30.338902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191017, 33.287224, 30.274189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180861, 0.045426, 0.982459,
		0.685244, 0.722385, 0.092746,
		-0.705500, 0.689998, -0.161779,
		31.979366, 33.494225, 30.225655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547348, 33.502354, 30.897930>,  <32.473217, 33.011223, 30.338902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547348, 33.502354, 30.897930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179256, 33.549492, 30.748648>,  <31.958401, 33.577774, 30.659079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179256, 33.549492, 30.748648>,  <32.547348, 33.502354, 30.897930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179256, 33.549492, 30.748648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355917, 0.144599, 0.923263,
		0.162771, 0.982447, -0.091121,
		-0.920233, 0.117849, -0.373207,
		31.903187, 33.584846, 30.636686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467533, 34.071014, 31.155985>,  <32.547348, 33.502354, 30.897930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467533, 34.071014, 31.155985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106743, 33.921844, 31.068930>,  <31.890268, 33.832340, 31.016697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106743, 33.921844, 31.068930>,  <32.467533, 34.071014, 31.155985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106743, 33.921844, 31.068930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276618, 0.112034, 0.954427,
		-0.331550, 0.921072, -0.204210,
		-0.901974, -0.372929, -0.217640,
		31.836151, 33.809967, 31.003637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974997, 34.515491, 31.482056>,  <32.467533, 34.071014, 31.155985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974997, 34.515491, 31.482056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779114, 34.176224, 31.401258>,  <31.661585, 33.972664, 31.352779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779114, 34.176224, 31.401258>,  <31.974997, 34.515491, 31.482056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779114, 34.176224, 31.401258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436731, 0.038105, 0.898785,
		-0.754623, 0.528357, -0.389081,
		-0.489705, -0.848167, -0.201994,
		31.632202, 33.921772, 31.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148083, 35.210114, 31.600756>,  <31.974997, 34.515491, 31.482056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148083, 35.210114, 31.600756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506828, 35.277004, 31.764542>,  <32.722076, 35.317139, 31.862812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506828, 35.277004, 31.764542>,  <32.148083, 35.210114, 31.600756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506828, 35.277004, 31.764542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427721, -0.092220, -0.899194,
		-0.112612, 0.981596, -0.154237,
		0.896869, 0.167230, 0.409464,
		32.775890, 35.327175, 31.887381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545616, 35.747292, 31.242989>,  <32.148083, 35.210114, 31.600756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545616, 35.747292, 31.242989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805656, 35.485847, 31.397993>,  <32.961681, 35.328983, 31.490995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805656, 35.485847, 31.397993>,  <32.545616, 35.747292, 31.242989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805656, 35.485847, 31.397993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539590, 0.038044, -0.841068,
		0.534985, 0.755877, 0.377412,
		0.650102, -0.653607, 0.387511,
		33.000687, 35.289764, 31.514246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809135, 35.908207, 30.555716>,  <32.545616, 35.747292, 31.242989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809135, 35.908207, 30.555716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089806, 36.142231, 30.718370>,  <33.258209, 36.282646, 30.815964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089806, 36.142231, 30.718370>,  <32.809135, 35.908207, 30.555716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089806, 36.142231, 30.718370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232803, 0.351138, -0.906921,
		-0.673385, 0.731035, 0.110184,
		0.701680, 0.585056, 0.406638,
		33.300308, 36.317749, 30.840363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757175, 36.724289, 30.340200>,  <32.809135, 35.908207, 30.555716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757175, 36.724289, 30.340200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119938, 36.586025, 30.436562>,  <33.337597, 36.503067, 30.494379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119938, 36.586025, 30.436562>,  <32.757175, 36.724289, 30.340200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119938, 36.586025, 30.436562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353082, 0.311546, -0.882197,
		0.229889, 0.885131, 0.404591,
		0.906909, -0.345662, 0.240902,
		33.392010, 36.482327, 30.508833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172550, 37.342693, 30.319757>,  <32.757175, 36.724289, 30.340200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172550, 37.342693, 30.319757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403942, 37.020737, 30.266836>,  <33.542778, 36.827560, 30.235085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403942, 37.020737, 30.266836>,  <33.172550, 37.342693, 30.319757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403942, 37.020737, 30.266836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287927, 0.353246, -0.890121,
		0.763188, 0.476827, 0.436097,
		0.578483, -0.804893, -0.132302,
		33.577488, 36.779270, 30.227146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723736, 37.649044, 30.103289>,  <33.172550, 37.342693, 30.319757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723736, 37.649044, 30.103289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763691, 37.263050, 30.006268>,  <33.787663, 37.031456, 29.948055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763691, 37.263050, 30.006268>,  <33.723736, 37.649044, 30.103289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763691, 37.263050, 30.006268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280497, 0.261196, -0.923633,
		0.954643, 0.024223, 0.296765,
		0.099887, -0.964982, -0.242554,
		33.793655, 36.973557, 29.933500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475090, 37.579144, 29.655254>,  <33.723736, 37.649044, 30.103289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475090, 37.579144, 29.655254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223976, 37.278557, 29.574087>,  <34.073307, 37.098206, 29.525387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223976, 37.278557, 29.574087>,  <34.475090, 37.579144, 29.655254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223976, 37.278557, 29.574087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187342, 0.107156, -0.976432,
		0.755505, -0.651006, 0.073511,
		-0.627786, -0.751471, -0.202918,
		34.035641, 37.053116, 29.513212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832962, 37.281666, 29.134127>,  <34.475090, 37.579144, 29.655254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832962, 37.281666, 29.134127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460930, 37.141273, 29.090746>,  <34.237709, 37.057037, 29.064716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460930, 37.141273, 29.090746>,  <34.832962, 37.281666, 29.134127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460930, 37.141273, 29.090746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193677, -0.217640, -0.956620,
		0.312150, -0.910739, 0.270400,
		-0.930081, -0.350979, -0.108453,
		34.181904, 37.035980, 29.058210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993683, 36.855480, 28.576132>,  <34.832962, 37.281666, 29.134127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993683, 36.855480, 28.576132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596180, 36.837074, 28.616796>,  <34.357677, 36.826031, 28.641195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596180, 36.837074, 28.616796>,  <34.993683, 36.855480, 28.576132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596180, 36.837074, 28.616796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074428, -0.405487, -0.911066,
		0.083144, -0.912942, 0.399530,
		-0.993754, -0.046013, 0.101662,
		34.298054, 36.823269, 28.647295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716331, 36.144127, 28.278957>,  <34.993683, 36.855480, 28.576132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716331, 36.144127, 28.278957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424007, 36.416908, 28.267277>,  <34.248611, 36.580578, 28.260269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424007, 36.416908, 28.267277>,  <34.716331, 36.144127, 28.278957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424007, 36.416908, 28.267277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096065, -0.145114, -0.984740,
		-0.675786, -0.716853, 0.171563,
		-0.730811, 0.681955, -0.029202,
		34.204765, 36.621494, 28.258516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135590, 35.860111, 27.944756>,  <34.716331, 36.144127, 28.278957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135590, 35.860111, 27.944756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084419, 36.254265, 27.899773>,  <34.053715, 36.490757, 27.872784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084419, 36.254265, 27.899773>,  <34.135590, 35.860111, 27.944756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084419, 36.254265, 27.899773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077325, -0.103133, -0.991657,
		-0.988764, -0.135559, -0.063001,
		-0.127930, 0.985387, -0.112456,
		34.046040, 36.549881, 27.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692425, 36.006332, 27.380293>,  <34.135590, 35.860111, 27.944756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692425, 36.006332, 27.380293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862648, 36.368217, 27.388239>,  <33.964783, 36.585346, 27.393005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862648, 36.368217, 27.388239>,  <33.692425, 36.006332, 27.380293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862648, 36.368217, 27.388239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090570, 0.064423, -0.993804,
		-0.900385, 0.421127, 0.109356,
		0.425563, 0.904711, 0.019864,
		33.990318, 36.639629, 27.394197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367321, 36.471451, 26.880615>,  <33.692425, 36.006332, 27.380293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367321, 36.471451, 26.880615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724171, 36.634590, 26.958364>,  <33.938278, 36.732475, 27.005014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724171, 36.634590, 26.958364>,  <33.367321, 36.471451, 26.880615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724171, 36.634590, 26.958364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048911, 0.340505, -0.938970,
		-0.449142, 0.847181, 0.283823,
		0.892121, 0.407849, 0.194371,
		33.991806, 36.756947, 27.016676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398216, 37.225788, 26.598881>,  <33.367321, 36.471451, 26.880615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398216, 37.225788, 26.598881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774494, 37.095051, 26.635263>,  <34.000259, 37.016609, 26.657093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774494, 37.095051, 26.635263>,  <33.398216, 37.225788, 26.598881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774494, 37.095051, 26.635263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174571, 0.236435, -0.955836,
		0.290902, 0.915026, 0.279470,
		0.940692, -0.326842, 0.090958,
		34.056702, 36.996998, 26.662550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901112, 37.724503, 26.259977>,  <33.398216, 37.225788, 26.598881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901112, 37.724503, 26.259977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098106, 37.376411, 26.265017>,  <34.216301, 37.167557, 26.268040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098106, 37.376411, 26.265017>,  <33.901112, 37.724503, 26.259977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098106, 37.376411, 26.265017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397219, 0.211871, -0.892932,
		0.774388, 0.444759, 0.450015,
		0.492485, -0.870230, 0.012596,
		34.245853, 37.115341, 26.268795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417652, 37.968735, 25.928846>,  <33.901112, 37.724503, 26.259977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417652, 37.968735, 25.928846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484283, 37.574577, 25.942951>,  <34.524261, 37.338081, 25.951414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484283, 37.574577, 25.942951>,  <34.417652, 37.968735, 25.928846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484283, 37.574577, 25.942951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521978, 0.057785, -0.850999,
		0.836536, 0.160160, 0.523982,
		0.166574, -0.985398, 0.035260,
		34.534256, 37.278957, 25.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109463, 37.921986, 26.004253>,  <34.417652, 37.968735, 25.928846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109463, 37.921986, 26.004253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981815, 37.576729, 25.847713>,  <34.905228, 37.369576, 25.753790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981815, 37.576729, 25.847713>,  <35.109463, 37.921986, 26.004253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981815, 37.576729, 25.847713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657441, 0.095804, -0.747391,
		0.682595, -0.495794, 0.536891,
		-0.319116, -0.863140, -0.391350,
		34.886082, 37.317787, 25.730309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718014, 37.529388, 25.804066>,  <35.109463, 37.921986, 26.004253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718014, 37.529388, 25.804066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398129, 37.411762, 25.594690>,  <35.206200, 37.341187, 25.469065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398129, 37.411762, 25.594690>,  <35.718014, 37.529388, 25.804066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398129, 37.411762, 25.594690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476610, 0.219242, -0.851338,
		0.365111, -0.930299, -0.035175,
		-0.799711, -0.294068, -0.523438,
		35.158215, 37.323544, 25.437658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017315, 37.146027, 25.279583>,  <35.718014, 37.529388, 25.804066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017315, 37.146027, 25.279583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660793, 37.255615, 25.135073>,  <35.446880, 37.321369, 25.048367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660793, 37.255615, 25.135073>,  <36.017315, 37.146027, 25.279583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660793, 37.255615, 25.135073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368849, -0.025266, -0.929146,
		-0.263685, -0.961407, -0.078533,
		-0.891303, 0.273969, -0.361276,
		35.393402, 37.337807, 25.026690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846813, 36.644035, 24.707952>,  <36.017315, 37.146027, 25.279583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846813, 36.644035, 24.707952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613571, 36.964802, 24.655909>,  <35.473625, 37.157261, 24.624683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613571, 36.964802, 24.655909>,  <35.846813, 36.644035, 24.707952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613571, 36.964802, 24.655909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316065, 0.076394, -0.945657,
		-0.748394, -0.592538, -0.298002,
		-0.583103, 0.801912, -0.130108,
		35.438641, 37.205376, 24.616877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500191, 36.527565, 24.015390>,  <35.846813, 36.644035, 24.707952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500191, 36.527565, 24.015390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461220, 36.919823, 24.083326>,  <35.437840, 37.155178, 24.124088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461220, 36.919823, 24.083326>,  <35.500191, 36.527565, 24.015390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461220, 36.919823, 24.083326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170511, 0.184574, -0.967915,
		-0.980528, -0.065338, -0.185192,
		-0.097423, 0.980645, 0.169839,
		35.431992, 37.214016, 24.134277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140068, 36.887375, 23.480234>,  <35.500191, 36.527565, 24.015390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140068, 36.887375, 23.480234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370228, 37.170555, 23.644053>,  <35.508324, 37.340462, 23.742344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370228, 37.170555, 23.644053>,  <35.140068, 36.887375, 23.480234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370228, 37.170555, 23.644053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326485, 0.260295, -0.908655,
		-0.749882, 0.656549, -0.081360,
		0.575399, 0.707947, 0.409544,
		35.542847, 37.382938, 23.766916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137802, 37.456215, 22.896549>,  <35.140068, 36.887375, 23.480234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137802, 37.456215, 22.896549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421387, 37.568787, 23.155212>,  <35.591537, 37.636330, 23.310410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421387, 37.568787, 23.155212>,  <35.137802, 37.456215, 22.896549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421387, 37.568787, 23.155212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571931, 0.307045, -0.760670,
		-0.412629, 0.909131, 0.056724,
		0.708965, 0.281432, 0.646656,
		35.634075, 37.653217, 23.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403694, 38.139816, 22.690180>,  <35.137802, 37.456215, 22.896549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403694, 38.139816, 22.690180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708248, 37.984844, 22.898098>,  <35.890980, 37.891861, 23.022848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708248, 37.984844, 22.898098>,  <35.403694, 38.139816, 22.690180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708248, 37.984844, 22.898098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639834, 0.319936, -0.698752,
		0.104419, 0.864602, 0.491488,
		0.761387, -0.387433, 0.519794,
		35.936665, 37.868614, 23.054037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959866, 38.641262, 22.664137>,  <35.403694, 38.139816, 22.690180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959866, 38.641262, 22.664137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112331, 38.278309, 22.734989>,  <36.203812, 38.060539, 22.777500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112331, 38.278309, 22.734989>,  <35.959866, 38.641262, 22.664137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112331, 38.278309, 22.734989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622989, 0.110532, -0.774382,
		0.683081, 0.405515, 0.607419,
		0.381163, -0.907381, 0.177129,
		36.226681, 38.006096, 22.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698338, 38.792828, 22.601421>,  <35.959866, 38.641262, 22.664137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698338, 38.792828, 22.601421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661938, 38.395237, 22.576967>,  <36.640099, 38.156685, 22.562294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661938, 38.395237, 22.576967>,  <36.698338, 38.792828, 22.601421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661938, 38.395237, 22.576967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817576, -0.039517, -0.574463,
		0.568585, -0.102259, 0.816244,
		-0.091000, -0.993973, -0.061136,
		36.634640, 38.097046, 22.558626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337040, 38.533516, 22.649334>,  <36.698338, 38.792828, 22.601421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337040, 38.533516, 22.649334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129002, 38.252308, 22.455320>,  <37.004177, 38.083584, 22.338913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129002, 38.252308, 22.455320>,  <37.337040, 38.533516, 22.649334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129002, 38.252308, 22.455320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759388, -0.120697, -0.639346,
		0.390932, -0.700852, 0.596640,
		-0.520099, -0.703021, -0.485034,
		36.972973, 38.041401, 22.309811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835186, 38.127090, 22.363516>,  <37.337040, 38.533516, 22.649334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835186, 38.127090, 22.363516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511898, 37.983288, 22.176952>,  <37.317924, 37.897007, 22.065014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511898, 37.983288, 22.176952>,  <37.835186, 38.127090, 22.363516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511898, 37.983288, 22.176952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549027, -0.173595, -0.817579,
		0.212956, -0.916855, 0.337680,
		-0.808220, -0.359503, -0.466410,
		37.269432, 37.875439, 22.037029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091919, 37.562614, 22.094963>,  <37.835186, 38.127090, 22.363516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091919, 37.562614, 22.094963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.760090, 37.649803, 21.889324>,  <37.560993, 37.702114, 21.765940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.760090, 37.649803, 21.889324>,  <38.091919, 37.562614, 22.094963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760090, 37.649803, 21.889324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490539, -0.155412, -0.857449,
		-0.266795, -0.963502, 0.022003,
		-0.829573, 0.217970, -0.514099,
		37.511219, 37.715195, 21.735094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523602, 36.901245, 22.145958>,  <38.091919, 37.562614, 22.094963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523602, 36.901245, 22.145958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907047, 37.010120, 22.179344>,  <39.137115, 37.075447, 22.199377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907047, 37.010120, 22.179344>,  <38.523602, 36.901245, 22.145958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907047, 37.010120, 22.179344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163687, 0.287058, 0.943824,
		0.232939, -0.918428, 0.319733,
		0.958616, 0.272190, 0.083468,
		39.194633, 37.091778, 22.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766785, 36.589993, 22.784012>,  <38.523602, 36.901245, 22.145958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766785, 36.589993, 22.784012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035477, 36.873245, 22.696995>,  <39.196693, 37.043198, 22.644785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035477, 36.873245, 22.696995>,  <38.766785, 36.589993, 22.784012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035477, 36.873245, 22.696995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042783, 0.256085, 0.965707,
		0.739556, -0.658005, 0.141725,
		0.671733, 0.708131, -0.217541,
		39.236996, 37.085686, 22.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268837, 36.550255, 23.241879>,  <38.766785, 36.589993, 22.784012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268837, 36.550255, 23.241879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.309143, 36.924801, 23.107380>,  <39.333324, 37.149529, 23.026680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.309143, 36.924801, 23.107380>,  <39.268837, 36.550255, 23.241879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309143, 36.924801, 23.107380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125798, 0.323264, 0.937910,
		0.986925, -0.136806, -0.085221,
		0.100763, 0.936368, -0.336248,
		39.339371, 37.205711, 23.006506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878468, 36.797607, 23.583290>,  <39.268837, 36.550255, 23.241879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878468, 36.797607, 23.583290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650803, 37.107063, 23.471903>,  <39.514206, 37.292736, 23.405071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650803, 37.107063, 23.471903>,  <39.878468, 36.797607, 23.583290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650803, 37.107063, 23.471903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057843, 0.375510, 0.925012,
		0.820191, 0.510370, -0.258473,
		-0.569158, 0.773637, -0.278469,
		39.480057, 37.339153, 23.388363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231174, 37.388424, 23.918880>,  <39.878468, 36.797607, 23.583290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231174, 37.388424, 23.918880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.848984, 37.473400, 23.836971>,  <39.619671, 37.524384, 23.787827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.848984, 37.473400, 23.836971>,  <40.231174, 37.388424, 23.918880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848984, 37.473400, 23.836971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181194, 0.125284, 0.975434,
		0.232873, 0.969110, -0.081214,
		-0.955478, 0.212437, -0.204772,
		39.562340, 37.537132, 23.775539>
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
