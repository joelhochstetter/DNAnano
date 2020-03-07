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
	<3.101048, 2.632948, 3.425239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.367340, 2.357811, 3.309532>,  <3.527115, 2.192729, 3.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.367340, 2.357811, 3.309532>,  <3.101048, 2.632948, 3.425239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.367340, 2.357811, 3.309532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364339, -0.637942, 0.678445,
		-0.651198, -0.346271, -0.675305,
		0.665731, -0.687842, -0.289266,
		3.567059, 2.151458, 3.222752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.847733, 1.980793, 3.204439>,  <3.101048, 2.632948, 3.425239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.847733, 1.980793, 3.204439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.201622, 1.934692, 3.385098>,  <3.413955, 1.907032, 3.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.201622, 1.934692, 3.385098>,  <2.847733, 1.980793, 3.204439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.201622, 1.934692, 3.385098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421211, -0.612638, 0.668772,
		0.199619, -0.781915, -0.590560,
		0.884722, -0.115251, 0.451646,
		3.467039, 1.900117, 3.520591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.977934, 1.185912, 3.417996>,  <2.847733, 1.980793, 3.204439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.977934, 1.185912, 3.417996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166679, 1.460274, 3.639584>,  <3.279927, 1.624891, 3.772536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166679, 1.460274, 3.639584>,  <2.977934, 1.185912, 3.417996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166679, 1.460274, 3.639584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229381, -0.511174, 0.828303,
		0.851310, -0.517916, -0.083871,
		0.471864, 0.685904, 0.553968,
		3.308239, 1.666045, 3.805774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.589880, 0.895372, 3.891513>,  <2.977934, 1.185912, 3.417996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.589880, 0.895372, 3.891513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.408821, 1.223328, 4.031738>,  <3.300186, 1.420101, 4.115873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.408821, 1.223328, 4.031738>,  <3.589880, 0.895372, 3.891513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.408821, 1.223328, 4.031738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208290, -0.479487, 0.852471,
		0.867022, 0.312849, 0.387812,
		-0.452646, 0.819889, 0.350563,
		3.273027, 1.469294, 4.136907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.796919, 0.992401, 4.545463>,  <3.589880, 0.895372, 3.891513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.796919, 0.992401, 4.545463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.437382, 1.167068, 4.530495>,  <3.221659, 1.271869, 4.521514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.437382, 1.167068, 4.530495>,  <3.796919, 0.992401, 4.545463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437382, 1.167068, 4.530495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275119, -0.495716, 0.823757,
		0.341158, 0.750724, 0.565707,
		-0.898844, 0.436668, -0.037421,
		3.167728, 1.298069, 4.519269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.705008, 1.326832, 5.178762>,  <3.796919, 0.992401, 4.545463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.705008, 1.326832, 5.178762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332695, 1.302071, 5.034645>,  <3.109307, 1.287214, 4.948175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332695, 1.302071, 5.034645>,  <3.705008, 1.326832, 5.178762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.332695, 1.302071, 5.034645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306732, -0.403955, 0.861821,
		-0.198892, 0.912682, 0.357007,
		-0.930783, -0.061904, -0.360292,
		3.053460, 1.283499, 4.926558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.306185, 1.395313, 5.726251>,  <3.705008, 1.326832, 5.178762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.306185, 1.395313, 5.726251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.043388, 1.244568, 5.465073>,  <2.885711, 1.154121, 5.308365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.043388, 1.244568, 5.465073>,  <3.306185, 1.395313, 5.726251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.043388, 1.244568, 5.465073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379048, -0.583537, 0.718197,
		-0.651679, 0.719347, 0.240530,
		-0.656991, -0.376862, -0.652946,
		2.846291, 1.131509, 5.269189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608596, 1.440306, 5.986962>,  <3.306185, 1.395313, 5.726251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608596, 1.440306, 5.986962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.558861, 1.144562, 5.722271>,  <2.529020, 0.967115, 5.563456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.558861, 1.144562, 5.722271>,  <2.608596, 1.440306, 5.986962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.558861, 1.144562, 5.722271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467932, -0.544395, 0.696186,
		-0.874974, 0.396206, -0.278282,
		-0.124337, -0.739362, -0.661729,
		2.521560, 0.922753, 5.523752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.978379, -0.062305, 6.334268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668445, -0.212448, 6.130802>,  <2.482485, -0.302534, 6.008723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668445, -0.212448, 6.130802>,  <2.978379, -0.062305, 6.334268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668445, -0.212448, 6.130802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129413, 0.693414, -0.708822,
		0.618777, -0.615047, -0.488704,
		-0.774834, -0.375359, -0.508664,
		2.435995, -0.325056, 5.978203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.150398, -0.267818, 5.692725>,  <2.978379, -0.062305, 6.334268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.150398, -0.267818, 5.692725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768049, -0.150490, 5.686207>,  <2.538639, -0.080093, 5.682296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768049, -0.150490, 5.686207>,  <3.150398, -0.267818, 5.692725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.768049, -0.150490, 5.686207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221751, 0.684037, -0.694924,
		-0.192690, -0.667874, -0.718898,
		-0.955875, 0.293321, -0.016295,
		2.481286, -0.062493, 5.681318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.958233, -0.236271, 5.023376>,  <3.150398, -0.267818, 5.692725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.958233, -0.236271, 5.023376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.682820, -0.007881, 5.202221>,  <2.517572, 0.129153, 5.309528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.682820, -0.007881, 5.202221>,  <2.958233, -0.236271, 5.023376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.682820, -0.007881, 5.202221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143524, 0.711626, -0.687742,
		-0.710860, -0.409361, -0.571927,
		-0.688534, 0.570974, 0.447113,
		2.476260, 0.163411, 5.336355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.523912, 0.097473, 4.553045>,  <2.958233, -0.236271, 5.023376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.523912, 0.097473, 4.553045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488217, 0.349533, 4.861576>,  <2.466799, 0.500769, 5.046695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488217, 0.349533, 4.861576>,  <2.523912, 0.097473, 4.553045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488217, 0.349533, 4.861576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, 0.774505, -0.616212,
		-0.985704, 0.055246, -0.159174,
		-0.089238, 0.630151, 0.771327,
		2.461445, 0.538579, 5.092974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.946904, 0.543000, 4.430785>,  <2.523912, 0.097473, 4.553045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.946904, 0.543000, 4.430785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.223002, 0.718231, 4.661140>,  <2.388661, 0.823370, 4.799354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.223002, 0.718231, 4.661140>,  <1.946904, 0.543000, 4.430785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.223002, 0.718231, 4.661140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023975, 0.781611, -0.623306,
		-0.723178, 0.444041, 0.529000,
		0.690245, 0.438078, 0.575890,
		2.430075, 0.849655, 4.833907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867568, 1.239891, 4.226831>,  <1.946904, 0.543000, 4.430785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867568, 1.239891, 4.226831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.188448, 1.249153, 4.465473>,  <2.380976, 1.254710, 4.608659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.188448, 1.249153, 4.465473>,  <1.867568, 1.239891, 4.226831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.188448, 1.249153, 4.465473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433595, 0.664348, -0.608799,
		-0.410451, 0.747064, 0.522901,
		0.802200, 0.023154, 0.596606,
		2.429109, 1.256099, 4.644455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.043300, 1.875984, 4.316073>,  <1.867568, 1.239891, 4.226831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.043300, 1.875984, 4.316073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.400097, 1.711510, 4.391201>,  <2.614175, 1.612825, 4.436278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.400097, 1.711510, 4.391201>,  <2.043300, 1.875984, 4.316073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.400097, 1.711510, 4.391201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447113, 0.741250, -0.500637,
		0.066633, 0.530541, 0.845036,
		0.891992, -0.411186, 0.187821,
		2.667694, 1.588154, 4.447547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.499768, 2.411372, 4.674311>,  <2.043300, 1.875984, 4.316073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.499768, 2.411372, 4.674311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.724559, 2.128754, 4.502277>,  <2.859433, 1.959182, 4.399057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.724559, 2.128754, 4.502277>,  <2.499768, 2.411372, 4.674311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.724559, 2.128754, 4.502277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493718, 0.703703, -0.510925,
		0.663644, 0.074788, 0.744300,
		0.561978, -0.706547, -0.430084,
		2.893152, 1.916790, 4.373252>
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
