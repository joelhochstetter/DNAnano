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
	<1.896616, 3.897172, 3.271374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930895, 3.932145, 2.874383>,  <1.951462, 3.953129, 2.636188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930895, 3.932145, 2.874383>,  <1.896616, 3.897172, 3.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.930895, 3.932145, 2.874383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959294, 0.276284, -0.058492,
		0.269091, 0.957091, 0.107551,
		0.085697, 0.087433, -0.992477,
		1.956604, 3.958375, 2.576640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.738566, 4.616874, 3.041600>,  <1.896616, 3.897172, 3.271374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.738566, 4.616874, 3.041600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683966, 4.369334, 2.732177>,  <1.651205, 4.220810, 2.546523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683966, 4.369334, 2.732177>,  <1.738566, 4.616874, 3.041600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.683966, 4.369334, 2.732177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692697, 0.617856, -0.372055,
		0.708193, 0.485055, -0.513014,
		-0.136502, -0.618850, -0.773558,
		1.643015, 4.183679, 2.500109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679924, 5.023760, 2.428063>,  <1.738566, 4.616874, 3.041600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679924, 5.023760, 2.428063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495132, 4.672118, 2.381158>,  <1.384257, 4.461133, 2.353015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495132, 4.672118, 2.381158>,  <1.679924, 5.023760, 2.428063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.495132, 4.672118, 2.381158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831448, 0.475311, -0.287704,
		0.308658, -0.035416, -0.950514,
		-0.461979, -0.879104, -0.117262,
		1.356539, 4.408387, 2.345979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.194977, 5.202046, 1.926187>,  <1.679924, 5.023760, 2.428063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.194977, 5.202046, 1.926187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.046583, 4.886855, 2.122742>,  <0.957547, 4.697741, 2.240674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.046583, 4.886855, 2.122742>,  <1.194977, 5.202046, 1.926187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.046583, 4.886855, 2.122742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928336, 0.328207, -0.174566,
		-0.023723, -0.520934, -0.853268,
		-0.370985, -0.787978, 0.491387,
		0.935288, 4.650462, 2.270158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.660088, 4.860786, 1.499586>,  <1.194977, 5.202046, 1.926187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.660088, 4.860786, 1.499586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.576887, 4.772759, 1.880806>,  <0.526967, 4.719944, 2.109538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.576887, 4.772759, 1.880806>,  <0.660088, 4.860786, 1.499586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.576887, 4.772759, 1.880806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946629, 0.290571, -0.139506,
		-0.246228, -0.931203, -0.268760,
		-0.208002, -0.220066, 0.953051,
		0.514487, 4.706739, 2.166721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.000630, 4.640264, 1.477463>,  <0.660088, 4.860786, 1.499586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.000630, 4.640264, 1.477463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.054495, 4.695723, 1.869746>,  <0.087570, 4.728998, 2.105115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.054495, 4.695723, 1.869746>,  <-0.000630, 4.640264, 1.477463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.054495, 4.695723, 1.869746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945174, 0.314383, 0.088374,
		-0.296065, -0.939117, 0.174369,
		0.137812, 0.138645, 0.980707,
		0.095839, 4.737317, 2.163958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.569208, 4.430292, 1.693866>,  <-0.000630, 4.640264, 1.477463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.569208, 4.430292, 1.693866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.433407, 4.651406, 1.998278>,  <-0.351926, 4.784075, 2.180925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.433407, 4.651406, 1.998278>,  <-0.569208, 4.430292, 1.693866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.433407, 4.651406, 1.998278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900312, 0.425247, 0.092752,
		-0.272353, -0.716654, 0.642053,
		0.339502, 0.552786, 0.761029,
		-0.331556, 4.817242, 2.226587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.997368, 4.302653, 2.333073>,  <-0.569208, 4.430292, 1.693866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.997368, 4.302653, 2.333073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.834539, 4.667817, 2.321164>,  <-0.736842, 4.886916, 2.314019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.834539, 4.667817, 2.321164>,  <-0.997368, 4.302653, 2.333073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.834539, 4.667817, 2.321164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902006, 0.406913, 0.144246,
		0.143799, -0.031864, 0.989094,
		0.407071, 0.912911, -0.029772,
		-0.712418, 4.941690, 2.312232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.631399, 0.224144, 1.800094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485050, 0.514215, 2.033419>,  <3.397241, 0.688258, 2.173414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485050, 0.514215, 2.033419>,  <3.631399, 0.224144, 1.800094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485050, 0.514215, 2.033419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872543, 0.049259, 0.486048,
		0.323737, 0.686798, -0.650771,
		-0.365873, 0.725177, 0.583314,
		3.375288, 0.731769, 2.208413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.026305, 0.765947, 1.738514>,  <3.631399, 0.224145, 1.800094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.026305, 0.765947, 1.738514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.857849, 0.748167, 2.100876>,  <3.756775, 0.737499, 2.318294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.857849, 0.748167, 2.100876>,  <4.026305, 0.765947, 1.738514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.857849, 0.748167, 2.100876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893120, -0.194365, 0.405660,
		0.158044, 0.979922, 0.121554,
		-0.421141, -0.044451, 0.905905,
		3.731507, 0.734832, 2.372648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.430844, 1.281760, 2.188758>,  <4.026305, 0.765947, 1.738514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.430844, 1.281760, 2.188758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.272469, 0.929630, 2.293264>,  <4.177444, 0.718352, 2.355968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.272469, 0.929630, 2.293264>,  <4.430844, 1.281760, 2.188758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.272469, 0.929630, 2.293264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917687, -0.369136, 0.146932,
		-0.032905, 0.297937, 0.954018,
		-0.395939, -0.880325, 0.261266,
		4.153687, 0.665533, 2.371644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.840377, 1.054102, 2.669094>,  <4.430844, 1.281760, 2.188758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.840377, 1.054102, 2.669094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.659752, 0.711071, 2.570584>,  <4.551376, 0.505252, 2.511479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.659752, 0.711071, 2.570584>,  <4.840377, 1.054102, 2.669094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.659752, 0.711071, 2.570584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861382, -0.490973, 0.130257,
		-0.232619, -0.153316, 0.960408,
		-0.451564, -0.857578, -0.246273,
		4.524282, 0.453798, 2.496702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.188234, 0.573486, 3.124907>,  <4.840377, 1.054102, 2.669094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.188234, 0.573486, 3.124907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.028122, 0.334303, 2.847138>,  <4.932055, 0.190793, 2.680477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.028122, 0.334303, 2.847138>,  <5.188234, 0.573486, 3.124907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.028122, 0.334303, 2.847138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724724, -0.670332, 0.159468,
		-0.560848, -0.439432, 0.701676,
		-0.400280, -0.597958, -0.694422,
		4.908038, 0.154915, 2.638811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.246842, -0.048821, 3.435023>,  <5.188234, 0.573486, 3.124907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.246842, -0.048821, 3.435023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192570, -0.101671, 3.042262>,  <5.160006, -0.133381, 2.806605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192570, -0.101671, 3.042262>,  <5.246842, -0.048821, 3.435023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.192570, -0.101671, 3.042262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814032, -0.579796, -0.034468,
		-0.564749, -0.803977, 0.186222,
		-0.135682, -0.132125, -0.981903,
		5.151865, -0.141309, 2.747691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.208994, -0.773784, 3.331664>,  <5.246842, -0.048821, 3.435023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.208994, -0.773784, 3.331664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.298042, -0.604225, 2.980494>,  <5.351471, -0.502490, 2.769792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.298042, -0.604225, 2.980494>,  <5.208994, -0.773784, 3.331664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.298042, -0.604225, 2.980494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616432, -0.758862, -0.210097,
		-0.755283, -0.494408, -0.430242,
		0.222621, 0.423897, -0.877924,
		5.364829, -0.477056, 2.717117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.569812, -1.290580, 3.044797>,  <5.208994, -0.773784, 3.331664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.569812, -1.290580, 3.044797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.676857, -0.982149, 2.813686>,  <5.741084, -0.797091, 2.675020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.676857, -0.982149, 2.813686>,  <5.569812, -1.290580, 3.044797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.676857, -0.982149, 2.813686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899416, -0.414990, -0.137241,
		-0.345594, -0.482933, -0.804574,
		0.267612, 0.771077, -0.577776,
		5.757141, -0.750826, 2.640354>
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
