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
	<1.519346, 0.129566, 3.291732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599834, 0.238480, 2.915356>,  <1.648128, 0.303828, 2.689530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599834, 0.238480, 2.915356>,  <1.519346, 0.129566, 3.291732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.599834, 0.238480, 2.915356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973480, 0.162327, -0.161207,
		0.108847, 0.948426, 0.297727,
		0.201222, 0.272285, -0.940942,
		1.660201, 0.320165, 2.633073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.060336, 0.592253, 3.131924>,  <1.519346, 0.129566, 3.291732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.060336, 0.592253, 3.131924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158649, 0.497559, 2.755936>,  <1.217637, 0.440742, 2.530343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158649, 0.497559, 2.755936>,  <1.060336, 0.592253, 3.131924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158649, 0.497559, 2.755936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925056, 0.232421, -0.300420,
		0.289590, 0.943364, -0.161870,
		0.245783, -0.236737, -0.939971,
		1.232384, 0.426538, 2.473944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.068761, 1.136172, 2.645615>,  <1.060336, 0.592253, 3.131924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.068761, 1.136172, 2.645615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971142, 0.816010, 2.426601>,  <0.912570, 0.623912, 2.295193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971142, 0.816010, 2.426601>,  <1.068761, 1.136172, 2.645615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971142, 0.816010, 2.426601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853545, 0.445295, -0.270505,
		0.460328, 0.401330, -0.791854,
		-0.244047, -0.800404, -0.547535,
		0.897928, 0.575888, 2.262341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.913481, 1.400353, 1.965471>,  <1.068761, 1.136172, 2.645615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.913481, 1.400353, 1.965471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.701511, 1.066956, 2.028038>,  <0.574329, 0.866917, 2.065578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.701511, 1.066956, 2.028038>,  <0.913481, 1.400353, 1.965471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.701511, 1.066956, 2.028038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823124, 0.461143, -0.331382,
		0.204074, -0.304358, -0.930441,
		-0.529925, -0.833495, 0.156417,
		0.542534, 0.816907, 2.074963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.528127, 1.115893, 1.329698>,  <0.913481, 1.400353, 1.965471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.528127, 1.115893, 1.329698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355442, 1.023987, 1.678600>,  <0.251831, 0.968843, 1.887942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355442, 1.023987, 1.678600>,  <0.528127, 1.115893, 1.329698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.355442, 1.023987, 1.678600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882843, 0.305926, -0.356368,
		-0.184965, -0.923914, -0.334918,
		-0.431713, -0.229765, 0.872257,
		0.225928, 0.955057, 1.940277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.066409, 0.844328, 1.175351>,  <0.528127, 1.115893, 1.329698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.066409, 0.844328, 1.175351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.146935, 0.915421, 1.560658>,  <-0.195250, 0.958076, 1.791842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.146935, 0.915421, 1.560658>,  <-0.066409, 0.844328, 1.175351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.146935, 0.915421, 1.560658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938440, 0.246832, -0.241669,
		-0.280717, -0.952620, 0.117101,
		-0.201314, 0.177732, 0.963267,
		-0.207329, 0.968740, 1.849638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.815284, 0.600462, 1.292838>,  <-0.066409, 0.844328, 1.175351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.815284, 0.600462, 1.292838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.731037, 0.877930, 1.568363>,  <-0.680489, 1.044411, 1.733678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.731037, 0.877930, 1.568363>,  <-0.815284, 0.600462, 1.292838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.731037, 0.877930, 1.568363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875947, 0.446737, -0.182051,
		-0.434002, -0.565020, 0.701709,
		0.210617, 0.693670, 0.688812,
		-0.667852, 1.086031, 1.775007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.360594, 0.578360, 1.768289>,  <-0.815284, 0.600462, 1.292838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.360594, 0.578360, 1.768289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.195770, 0.939438, 1.817848>,  <-1.096876, 1.156085, 1.847584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.195770, 0.939438, 1.817848>,  <-1.360594, 0.578360, 1.768289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.195770, 0.939438, 1.817848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900964, 0.423947, -0.092372,
		-0.135910, -0.073565, 0.987986,
		0.412059, 0.902694, 0.123899,
		-1.072153, 1.210246, 1.855018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.943677, 2.256187, 0.955918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242872, 2.517990, 0.911858>,  <3.422390, 2.675072, 0.885421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242872, 2.517990, 0.911858>,  <2.943677, 2.256187, 0.955918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.242872, 2.517990, 0.911858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606782, -0.607097, 0.513078,
		0.268940, -0.450614, -0.851245,
		0.747988, 0.654508, -0.110152,
		3.467269, 2.714342, 0.878812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.600636, 1.923616, 0.638569>,  <2.943677, 2.256187, 0.955918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.600636, 1.923616, 0.638569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.606509, 2.217041, 0.910355>,  <3.610033, 2.393096, 1.073426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.606509, 2.217041, 0.910355>,  <3.600636, 1.923616, 0.638569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.606509, 2.217041, 0.910355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482167, -0.600503, 0.637896,
		0.875956, 0.318249, -0.362516,
		0.014682, 0.733563, 0.679463,
		3.610914, 2.437110, 1.114194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.192383, 2.022020, 0.880802>,  <3.600636, 1.923616, 0.638569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.192383, 2.022020, 0.880802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.925325, 2.095673, 1.169342>,  <3.765091, 2.139864, 1.342466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.925325, 2.095673, 1.169342>,  <4.192383, 2.022020, 0.880802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.925325, 2.095673, 1.169342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417767, -0.709336, 0.567727,
		0.616217, 0.680396, 0.396659,
		-0.667643, 0.184132, 0.721351,
		3.725032, 2.150912, 1.385747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.574830, 2.249125, 1.488191>,  <4.192383, 2.022020, 0.880802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.574830, 2.249125, 1.488191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243558, 2.057190, 1.604034>,  <4.044795, 1.942029, 1.673540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243558, 2.057190, 1.604034>,  <4.574830, 2.249125, 1.488191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.243558, 2.057190, 1.604034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534700, -0.521589, 0.664862,
		-0.167970, 0.705479, 0.688539,
		-0.828180, -0.479838, 0.289608,
		3.995104, 1.913238, 1.690917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.570984, 2.319346, 2.220057>,  <4.574830, 2.249125, 1.488191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.570984, 2.319346, 2.220057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.359267, 1.995529, 2.118477>,  <4.232237, 1.801239, 2.057528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.359267, 1.995529, 2.118477>,  <4.570984, 2.319346, 2.220057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.359267, 1.995529, 2.118477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490845, -0.536312, 0.686615,
		-0.692042, 0.238768, 0.681225,
		-0.529291, -0.809543, -0.253952,
		4.200480, 1.752666, 2.042291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.554952, 1.926996, 2.779111>,  <4.570984, 2.319346, 2.220057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.554952, 1.926996, 2.779111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.487290, 1.654694, 2.494026>,  <4.446693, 1.491312, 2.322975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.487290, 1.654694, 2.494026>,  <4.554952, 1.926996, 2.779111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.487290, 1.654694, 2.494026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595378, -0.646859, 0.476549,
		-0.785438, -0.343723, 0.514725,
		-0.169153, -0.680756, -0.712712,
		4.436544, 1.450467, 2.280212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475968, 1.363849, 3.059606>,  <4.554952, 1.926996, 2.779111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475968, 1.363849, 3.059606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.580752, 1.247299, 2.691589>,  <4.643623, 1.177369, 2.470779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.580752, 1.247299, 2.691589>,  <4.475968, 1.363849, 3.059606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.580752, 1.247299, 2.691589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712383, -0.584761, 0.388027,
		-0.651065, -0.757070, 0.054385,
		0.261961, -0.291374, -0.920042,
		4.659341, 1.159887, 2.415577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518578, 0.663249, 3.000214>,  <4.475968, 1.363849, 3.059606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518578, 0.663249, 3.000214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.749663, 0.788025, 2.698502>,  <4.888315, 0.862890, 2.517474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.749663, 0.788025, 2.698502>,  <4.518578, 0.663249, 3.000214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.749663, 0.788025, 2.698502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812055, -0.313092, 0.492483,
		-0.082535, -0.897033, -0.434190,
		0.577715, 0.311939, -0.754281,
		4.922978, 0.881607, 2.472217>
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
