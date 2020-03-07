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
	<4.599774, 4.643403, 0.592727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223728, 4.608856, 0.724621>,  <3.998101, 4.588129, 0.803757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223728, 4.608856, 0.724621>,  <4.599774, 4.643403, 0.592727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.223728, 4.608856, 0.724621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335657, -0.402921, 0.851463,
		0.059320, 0.911151, 0.407782,
		-0.940115, -0.086366, 0.329735,
		3.941694, 4.582946, 0.823541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.560308, 5.073385, 1.162416>,  <4.599774, 4.643403, 0.592727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.560308, 5.073385, 1.162416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.316383, 4.756424, 1.168442>,  <4.170029, 4.566247, 1.172057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.316383, 4.756424, 1.168442>,  <4.560308, 5.073385, 1.162416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.316383, 4.756424, 1.168442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390662, -0.283996, 0.875631,
		-0.689575, 0.539854, 0.482746,
		-0.609811, -0.792404, 0.015064,
		4.133440, 4.518703, 1.172961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.148589, 4.986022, 1.810516>,  <4.560308, 5.073385, 1.162416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.148589, 4.986022, 1.810516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.222965, 4.638695, 1.626583>,  <4.267591, 4.430298, 1.516223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.222965, 4.638695, 1.626583>,  <4.148589, 4.986022, 1.810516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.222965, 4.638695, 1.626583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368090, -0.372355, 0.851975,
		-0.911008, -0.327677, 0.250384,
		0.185941, -0.868320, -0.459833,
		4.278748, 4.378199, 1.488633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.968693, 4.522481, 2.234965>,  <4.148589, 4.986022, 1.810516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.968693, 4.522481, 2.234965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257038, 4.335640, 2.030155>,  <4.430046, 4.223535, 1.907269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257038, 4.335640, 2.030155>,  <3.968693, 4.522481, 2.234965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257038, 4.335640, 2.030155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330872, -0.417215, 0.846437,
		-0.608999, -0.779580, -0.146204,
		0.720863, -0.467105, -0.512025,
		4.473297, 4.195509, 1.876548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.965497, 3.721379, 2.374235>,  <3.968693, 4.522481, 2.234965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.965497, 3.721379, 2.374235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333961, 3.844032, 2.278370>,  <4.555040, 3.917624, 2.220851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333961, 3.844032, 2.278370>,  <3.965497, 3.721379, 2.374235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333961, 3.844032, 2.278370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364511, -0.464010, 0.807358,
		0.136357, -0.831066, -0.539199,
		0.921161, 0.306633, -0.239662,
		4.610310, 3.936022, 2.206471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.554827, 3.155314, 2.397578>,  <3.965497, 3.721379, 2.374235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.554827, 3.155314, 2.397578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729866, 3.510185, 2.456123>,  <4.834889, 3.723108, 2.491251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729866, 3.510185, 2.456123>,  <4.554827, 3.155314, 2.397578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.729866, 3.510185, 2.456123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399229, -0.337554, 0.852451,
		0.805682, -0.314598, -0.501900,
		0.437598, 0.887178, 0.146365,
		4.861145, 3.776339, 2.500033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.215627, 2.980658, 2.637958>,  <4.554827, 3.155314, 2.397578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.215627, 2.980658, 2.637958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171848, 3.366554, 2.733704>,  <5.145581, 3.598092, 2.791151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171848, 3.366554, 2.733704>,  <5.215627, 2.980658, 2.637958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171848, 3.366554, 2.733704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373576, -0.183232, 0.909322,
		0.921120, 0.188943, -0.340351,
		-0.109447, 0.964742, 0.239363,
		5.139014, 3.655977, 2.805512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.867735, 3.274485, 2.835554>,  <5.215627, 2.980658, 2.637958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.867735, 3.274485, 2.835554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.585045, 3.492477, 3.016014>,  <5.415431, 3.623273, 3.124290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.585045, 3.492477, 3.016014>,  <5.867735, 3.274485, 2.835554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.585045, 3.492477, 3.016014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488903, -0.084728, 0.868214,
		0.511384, 0.834157, -0.206563,
		-0.706725, 0.544980, 0.451151,
		5.373027, 3.655972, 3.151359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.525504, 3.139120, 4.948095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.143437, 3.194458, 4.843391>,  <4.914197, 3.227661, 4.780570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.143437, 3.194458, 4.843391>,  <5.525504, 3.139120, 4.948095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.143437, 3.194458, 4.843391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289924, 0.257869, -0.921655,
		-0.060008, -0.956224, -0.286418,
		-0.955167, 0.138346, -0.261758,
		4.856887, 3.235961, 4.764864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.256594, 2.905274, 4.217973>,  <5.525504, 3.139120, 4.948095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.256594, 2.905274, 4.217973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.045102, 3.222427, 4.339153>,  <4.918207, 3.412719, 4.411861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.045102, 3.222427, 4.339153>,  <5.256594, 2.905274, 4.217973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.045102, 3.222427, 4.339153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285373, 0.502201, -0.816307,
		-0.799379, -0.345152, -0.491797,
		-0.528731, 0.792884, 0.302951,
		4.886483, 3.460293, 4.430038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.638940, 3.141875, 3.808992>,  <5.256594, 2.905274, 4.217973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.638940, 3.141875, 3.808992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.816663, 3.455841, 3.981735>,  <4.923296, 3.644221, 4.085381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.816663, 3.455841, 3.981735>,  <4.638940, 3.141875, 3.808992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816663, 3.455841, 3.981735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063513, 0.453241, -0.889122,
		-0.893620, 0.422472, 0.151526,
		0.444307, 0.784914, 0.431858,
		4.949955, 3.691315, 4.111292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.262704, 3.758222, 3.623414>,  <4.638940, 3.141875, 3.808992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.262704, 3.758222, 3.623414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.644477, 3.858887, 3.687572>,  <4.873540, 3.919286, 3.726067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.644477, 3.858887, 3.687572>,  <4.262704, 3.758222, 3.623414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.644477, 3.858887, 3.687572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017275, 0.489971, -0.871567,
		-0.297930, 0.834622, 0.463297,
		0.954431, 0.251663, 0.160396,
		4.930806, 3.934386, 3.735691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400887, 4.461735, 3.505857>,  <4.262704, 3.758222, 3.623414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400887, 4.461735, 3.505857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.728162, 4.247063, 3.423351>,  <4.924526, 4.118259, 3.373848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.728162, 4.247063, 3.423351>,  <4.400887, 4.461735, 3.505857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.728162, 4.247063, 3.423351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068792, 0.264794, -0.961848,
		0.570823, 0.801160, 0.179731,
		0.818186, -0.536681, -0.206264,
		4.973618, 4.086058, 3.361472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.807199, 4.865413, 3.113715>,  <4.400887, 4.461735, 3.505857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.807199, 4.865413, 3.113715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.919330, 4.492699, 3.021461>,  <4.986608, 4.269070, 2.966110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.919330, 4.492699, 3.021461>,  <4.807199, 4.865413, 3.113715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.919330, 4.492699, 3.021461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013758, 0.236342, -0.971573,
		0.959806, 0.275530, 0.053433,
		0.280326, -0.931786, -0.230633,
		5.003428, 4.213163, 2.952271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321790, 4.993707, 2.524176>,  <4.807199, 4.865413, 3.113715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321790, 4.993707, 2.524176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.186728, 4.617264, 2.531189>,  <5.105691, 4.391398, 2.535397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.186728, 4.617264, 2.531189>,  <5.321790, 4.993707, 2.524176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.186728, 4.617264, 2.531189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234886, 0.066208, -0.969765,
		0.911492, -0.331564, -0.243408,
		-0.337655, -0.941107, 0.017531,
		5.085432, 4.334932, 2.536448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.717383, 4.507402, 1.977519>,  <5.321790, 4.993707, 2.524176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.717383, 4.507402, 1.977519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.350341, 4.378304, 2.070328>,  <5.130116, 4.300844, 2.126013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.350341, 4.378304, 2.070328>,  <5.717383, 4.507402, 1.977519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.350341, 4.378304, 2.070328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297013, 0.168793, -0.939836,
		0.264165, -0.931313, -0.250745,
		-0.917606, -0.322747, 0.232023,
		5.075059, 4.281479, 2.139935>
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
