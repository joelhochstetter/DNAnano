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
	<0.703582, 6.366685, 2.375206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.075453, 6.271496, 2.487682>,  <1.298575, 6.214382, 2.555168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.075453, 6.271496, 2.487682>,  <0.703582, 6.366685, 2.375206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.075453, 6.271496, 2.487682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351193, -0.802970, 0.481563,
		0.111188, -0.546450, -0.830078,
		0.929678, -0.237973, 0.281190,
		1.354356, 6.200104, 2.572039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.821294, 5.685900, 2.282593>,  <0.703582, 6.366685, 2.375206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.821294, 5.685900, 2.282593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.041045, 5.800751, 2.596470>,  <1.172896, 5.869661, 2.784796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.041045, 5.800751, 2.596470>,  <0.821294, 5.685900, 2.282593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.041045, 5.800751, 2.596470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177076, -0.877769, 0.445158,
		0.816596, -0.383510, -0.431383,
		0.549378, 0.287126, 0.784693,
		1.205859, 5.886889, 2.831878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.473599, 5.208714, 2.399209>,  <0.821294, 5.685900, 2.282593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.473599, 5.208714, 2.399209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.313489, 5.378754, 2.723942>,  <1.217423, 5.480778, 2.918782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.313489, 5.378754, 2.723942>,  <1.473599, 5.208714, 2.399209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.313489, 5.378754, 2.723942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206049, -0.904962, 0.372273,
		0.892930, -0.018265, 0.449824,
		-0.400274, 0.425100, 0.811832,
		1.193407, 5.506284, 2.967491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.916687, 5.023920, 3.040433>,  <1.473599, 5.208714, 2.399209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.916687, 5.023920, 3.040433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519265, 5.066185, 3.056854>,  <1.280812, 5.091544, 3.066707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.519265, 5.066185, 3.056854>,  <1.916687, 5.023920, 3.040433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.519265, 5.066185, 3.056854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084771, -0.933002, 0.349746,
		0.075259, 0.344011, 0.935945,
		-0.993554, 0.105663, 0.041054,
		1.221199, 5.097884, 3.069170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.608333, 4.863121, 3.797441>,  <1.916687, 5.023920, 3.040433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.608333, 4.863121, 3.797441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333473, 4.804794, 3.512749>,  <1.168557, 4.769798, 3.341933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333473, 4.804794, 3.512749>,  <1.608333, 4.863121, 3.797441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333473, 4.804794, 3.512749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098925, -0.951748, 0.290498,
		-0.719749, 0.270024, 0.639569,
		-0.687150, -0.145816, -0.711732,
		1.127328, 4.761050, 3.299229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.249464, 4.354041, 4.011723>,  <1.608333, 4.863121, 3.797441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.249464, 4.354041, 4.011723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.125571, 4.343670, 3.631535>,  <1.051236, 4.337447, 3.403422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.125571, 4.343670, 3.631535>,  <1.249464, 4.354041, 4.011723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125571, 4.343670, 3.631535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234826, -0.966576, 0.102891,
		-0.921370, 0.255064, 0.293291,
		-0.309732, -0.025928, -0.950470,
		1.032652, 4.335891, 3.346393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.651150, 4.008188, 4.054604>,  <1.249464, 4.354041, 4.011723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.651150, 4.008188, 4.054604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803328, 3.965866, 3.687111>,  <0.894634, 3.940473, 3.466615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803328, 3.965866, 3.687111>,  <0.651150, 4.008188, 4.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.803328, 3.965866, 3.687111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285011, -0.958494, -0.007638,
		-0.879790, 0.264754, -0.394809,
		0.380445, -0.105805, -0.918731,
		0.917461, 3.934124, 3.411491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.101979, 3.732463, 3.568326>,  <0.651150, 4.008188, 4.054604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.101979, 3.732463, 3.568326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468124, 3.641994, 3.435085>,  <0.687812, 3.587713, 3.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468124, 3.641994, 3.435085>,  <0.101979, 3.732463, 3.568326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.468124, 3.641994, 3.435085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221444, -0.973752, 0.052634,
		-0.336262, 0.025584, -0.941421,
		0.915363, -0.226171, -0.333102,
		0.742733, 3.574143, 3.335155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.414016, 2.360398, 3.653282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.650364, 2.477623, 3.352619>,  <1.792172, 2.547958, 3.172221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.650364, 2.477623, 3.352619>,  <1.414016, 2.360398, 3.653282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.650364, 2.477623, 3.352619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496750, 0.866290, -0.052732,
		0.635700, 0.404543, 0.657443,
		0.590868, 0.293063, -0.751657,
		1.827624, 2.565542, 3.127122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.694466, 2.942255, 3.737264>,  <1.414016, 2.360398, 3.653282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.694466, 2.942255, 3.737264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.644852, 2.902222, 3.342377>,  <1.615083, 2.878201, 3.105444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.644852, 2.902222, 3.342377>,  <1.694466, 2.942255, 3.737264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.644852, 2.902222, 3.342377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630957, 0.775817, 0.000623,
		0.765838, 0.622969, -0.159379,
		-0.124037, -0.100084, -0.987217,
		1.607641, 2.872196, 3.046211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.829274, 3.528224, 3.331691>,  <1.694466, 2.942255, 3.737264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.829274, 3.528224, 3.331691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.549675, 3.328884, 3.126537>,  <1.381916, 3.209280, 3.003445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.549675, 3.328884, 3.126537>,  <1.829274, 3.528224, 3.331691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.549675, 3.328884, 3.126537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468364, 0.861000, -0.198278,
		0.540404, 0.101621, -0.835246,
		-0.698998, -0.498349, -0.512884,
		1.339976, 3.179379, 2.972672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806747, 3.621723, 2.625077>,  <1.829274, 3.528224, 3.331691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806747, 3.621723, 2.625077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460697, 3.579479, 2.821201>,  <1.253067, 3.554133, 2.938876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460697, 3.579479, 2.821201>,  <1.806747, 3.621723, 2.625077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.460697, 3.579479, 2.821201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204719, 0.966793, -0.152975,
		-0.457874, -0.232718, -0.858018,
		-0.865126, -0.105609, 0.490311,
		1.201159, 3.547796, 2.968295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.377137, 3.849490, 2.175880>,  <1.806747, 3.621723, 2.625077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.377137, 3.849490, 2.175880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200989, 3.866756, 2.534592>,  <1.095300, 3.877116, 2.749818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200989, 3.866756, 2.534592>,  <1.377137, 3.849490, 2.175880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200989, 3.866756, 2.534592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219078, 0.963484, -0.153957,
		-0.870677, -0.264262, -0.414833,
		-0.440370, 0.043167, 0.896778,
		1.068878, 3.879706, 2.803625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.780455, 4.258723, 2.079680>,  <1.377137, 3.849490, 2.175880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.780455, 4.258723, 2.079680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.838047, 4.281158, 2.474876>,  <0.872602, 4.294620, 2.711994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.838047, 4.281158, 2.474876>,  <0.780455, 4.258723, 2.079680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.838047, 4.281158, 2.474876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197795, 0.979877, -0.026803,
		-0.969612, -0.191560, 0.152176,
		0.143980, 0.056089, 0.987990,
		0.881241, 4.297985, 2.771273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.234643, 4.598040, 2.326124>,  <0.780455, 4.258723, 2.079680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.234643, 4.598040, 2.326124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.532383, 4.643047, 2.589420>,  <0.711027, 4.670052, 2.747398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.532383, 4.643047, 2.589420>,  <0.234643, 4.598040, 2.326124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.532383, 4.643047, 2.589420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092019, 0.993582, -0.065786,
		-0.661419, -0.011603, 0.749927,
		0.744350, 0.112520, 0.658242,
		0.755688, 4.676803, 2.786893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.074733, 5.032796, 2.916249>,  <0.234643, 4.598040, 2.326124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.074733, 5.032796, 2.916249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.322208, 5.078224, 2.935574>,  <0.560374, 5.105481, 2.947169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.322208, 5.078224, 2.935574>,  <-0.074733, 5.032796, 2.916249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.322208, 5.078224, 2.935574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119455, 0.982242, 0.144673,
		-0.031024, -0.149338, 0.988299,
		0.992354, 0.113569, 0.048312,
		0.619915, 5.112295, 2.950067>
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
