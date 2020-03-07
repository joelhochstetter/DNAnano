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
	<1.510284, -0.521615, 1.214503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.758446, -0.528740, 1.528135>,  <1.907343, -0.533015, 1.716315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.758446, -0.528740, 1.528135>,  <1.510284, -0.521615, 1.214503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.758446, -0.528740, 1.528135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711086, 0.408956, 0.571937,
		-0.330842, -0.912380, 0.241052,
		0.620404, -0.017812, 0.784080,
		1.944567, -0.534084, 1.763359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.361302, -0.915837, 1.815463>,  <1.510284, -0.521615, 1.214503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.361302, -0.915837, 1.815463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.547920, -0.573906, 1.906328>,  <1.659891, -0.368747, 1.960848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.547920, -0.573906, 1.906328>,  <1.361302, -0.915837, 1.815463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.547920, -0.573906, 1.906328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758592, 0.254644, 0.599745,
		0.454834, -0.452133, 0.767269,
		0.466545, 0.854829, 0.227164,
		1.687884, -0.317457, 1.974477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.568978, -0.783505, 2.553714>,  <1.361302, -0.915837, 1.815463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.568978, -0.783505, 2.553714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.501389, -0.432388, 2.374413>,  <1.460835, -0.221718, 2.266832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.501389, -0.432388, 2.374413>,  <1.568978, -0.783505, 2.553714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.501389, -0.432388, 2.374413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664827, 0.234242, 0.709320,
		0.727635, 0.417867, 0.543998,
		-0.168974, 0.877791, -0.448252,
		1.450696, -0.169051, 2.239937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516577, -0.155428, 2.960056>,  <1.568978, -0.783505, 2.553714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516577, -0.155428, 2.960056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.264664, -0.126862, 2.650663>,  <1.113516, -0.109722, 2.465028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.264664, -0.126862, 2.650663>,  <1.516577, -0.155428, 2.960056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.264664, -0.126862, 2.650663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763932, 0.123356, 0.633396,
		0.140648, 0.989789, -0.023131,
		-0.629782, 0.071415, -0.773482,
		1.075729, -0.105437, 2.418619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.118847, 0.407527, 3.084619>,  <1.516577, -0.155428, 2.960056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.118847, 0.407527, 3.084619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.897820, 0.206459, 2.818689>,  <0.765203, 0.085818, 2.659132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.897820, 0.206459, 2.818689>,  <1.118847, 0.407527, 3.084619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.897820, 0.206459, 2.818689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833155, 0.311298, 0.457107,
		-0.022815, 0.806485, -0.590814,
		-0.552569, -0.502669, -0.664825,
		0.732049, 0.055658, 2.619242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.596215, 0.861810, 2.766521>,  <1.118847, 0.407527, 3.084619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.596215, 0.861810, 2.766521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450859, 0.493393, 2.710480>,  <0.363646, 0.272343, 2.676855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450859, 0.493393, 2.710480>,  <0.596215, 0.861810, 2.766521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.450859, 0.493393, 2.710480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831565, 0.252863, 0.494529,
		-0.420056, 0.296210, -0.857795,
		-0.363389, -0.921043, -0.140102,
		0.341842, 0.217080, 2.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.070192, 1.054153, 2.649473>,  <0.596215, 0.861810, 2.766521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.070192, 1.054153, 2.649473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079872, 0.661316, 2.724209>,  <-0.085680, 0.425614, 2.769050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079872, 0.661316, 2.724209>,  <-0.070192, 1.054153, 2.649473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.079872, 0.661316, 2.724209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976504, 0.063255, 0.206006,
		-0.214136, -0.177463, -0.960548,
		-0.024201, -0.982092, 0.186838,
		-0.087133, 0.366688, 2.780260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.656650, 0.805646, 2.339576>,  <-0.070192, 1.054153, 2.649473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.656650, 0.805646, 2.339576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.566086, 0.555626, 2.638388>,  <-0.511747, 0.405614, 2.817674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.566086, 0.555626, 2.638388>,  <-0.656650, 0.805646, 2.339576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.566086, 0.555626, 2.638388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926827, 0.097613, 0.362578,
		-0.299549, -0.774457, -0.557213,
		0.226410, -0.625050, 0.747028,
		-0.498163, 0.368111, 2.862496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.531057, 5.713128, 3.703096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.669579, 5.377251, 3.870422>,  <3.752691, 5.175724, 3.970818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.669579, 5.377251, 3.870422>,  <3.531057, 5.713128, 3.703096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669579, 5.377251, 3.870422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720700, -0.047327, -0.691630,
		0.600555, 0.540994, 0.588778,
		0.346303, -0.839694, 0.418317,
		3.773469, 5.125342, 3.995917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222282, 5.669213, 3.849920>,  <3.531057, 5.713128, 3.703096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222282, 5.669213, 3.849920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145378, 5.281975, 3.785639>,  <4.099236, 5.049632, 3.747070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145378, 5.281975, 3.785639>,  <4.222282, 5.669213, 3.849920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145378, 5.281975, 3.785639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828798, -0.072495, -0.554831,
		0.525480, -0.239863, 0.816294,
		-0.192261, -0.968096, -0.160704,
		4.087700, 4.991546, 3.737428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.865024, 5.237863, 3.925279>,  <4.222282, 5.669213, 3.849920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.865024, 5.237863, 3.925279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.592049, 5.113731, 3.660561>,  <4.428263, 5.039253, 3.501729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.592049, 5.113731, 3.660561>,  <4.865024, 5.237863, 3.925279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.592049, 5.113731, 3.660561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726395, -0.187087, -0.661323,
		0.081413, -0.932038, 0.353096,
		-0.682438, -0.310327, -0.661797,
		4.387317, 5.020633, 3.462022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.034363, 4.526620, 3.725169>,  <4.865024, 5.237863, 3.925279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.034363, 4.526620, 3.725169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.842857, 4.736038, 3.443266>,  <4.727954, 4.861689, 3.274124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.842857, 4.736038, 3.443266>,  <5.034363, 4.526620, 3.725169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.842857, 4.736038, 3.443266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772773, -0.129669, -0.621295,
		-0.416663, -0.842072, -0.342501,
		-0.478764, 0.523546, -0.704759,
		4.699228, 4.893102, 3.231838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.973663, 4.104907, 3.129981>,  <5.034363, 4.526620, 3.725169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.973663, 4.104907, 3.129981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.930145, 4.479691, 2.997154>,  <4.904034, 4.704561, 2.917458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.930145, 4.479691, 2.997154>,  <4.973663, 4.104907, 3.129981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.930145, 4.479691, 2.997154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722722, -0.154803, -0.673579,
		-0.682522, -0.313275, -0.660320,
		-0.108796, 0.936960, -0.332067,
		4.897507, 4.760779, 2.897534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.854360, 4.057153, 2.427605>,  <4.973663, 4.104907, 3.129981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.854360, 4.057153, 2.427605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.009727, 4.417503, 2.505119>,  <5.102948, 4.633714, 2.551628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.009727, 4.417503, 2.505119>,  <4.854360, 4.057153, 2.427605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.009727, 4.417503, 2.505119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780464, -0.209817, -0.588942,
		-0.489904, 0.380001, -0.784598,
		0.388420, 0.900876, 0.193787,
		5.126254, 4.687766, 2.563255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.170719, 4.201469, 1.821571>,  <4.854360, 4.057153, 2.427605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.170719, 4.201469, 1.821571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.335861, 4.478973, 2.057621>,  <5.434947, 4.645476, 2.199251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.335861, 4.478973, 2.057621>,  <5.170719, 4.201469, 1.821571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.335861, 4.478973, 2.057621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814441, 0.008836, -0.580179,
		-0.407720, 0.720152, -0.561378,
		0.412857, 0.693760, 0.590124,
		5.459718, 4.687101, 2.234658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312320, 4.799777, 1.386666>,  <5.170719, 4.201469, 1.821571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312320, 4.799777, 1.386666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.546913, 4.857193, 1.705523>,  <5.687669, 4.891643, 1.896836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.546913, 4.857193, 1.705523>,  <5.312320, 4.799777, 1.386666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.546913, 4.857193, 1.705523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805818, -0.003990, -0.592150,
		-0.081816, 0.989636, -0.118008,
		0.586484, 0.143540, 0.797141,
		5.722858, 4.900255, 1.944665>
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
