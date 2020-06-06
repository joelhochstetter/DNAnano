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
	<24.166426, 34.599949, 34.873203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298277, 34.961136, 34.983475>,  <24.377388, 35.177849, 35.049637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298277, 34.961136, 34.983475>,  <24.166426, 34.599949, 34.873203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298277, 34.961136, 34.983475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930801, -0.359676, 0.065136,
		0.157971, 0.235133, -0.959040,
		0.329629, 0.902965, 0.275680,
		24.397165, 35.232025, 35.066177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725441, 34.828102, 34.389755>,  <24.166426, 34.599949, 34.873203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725441, 34.828102, 34.389755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755116, 34.965561, 34.764221>,  <24.772921, 35.048038, 34.988899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755116, 34.965561, 34.764221>,  <24.725441, 34.828102, 34.389755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755116, 34.965561, 34.764221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977539, -0.210756, -0.000099,
		0.197267, 0.915143, -0.351567,
		0.074186, 0.343651, 0.936163,
		24.777370, 35.068657, 35.045071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442776, 35.244377, 34.496159>,  <24.725441, 34.828102, 34.389755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442776, 35.244377, 34.496159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329132, 35.133591, 34.863327>,  <25.260946, 35.067120, 35.083626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329132, 35.133591, 34.863327>,  <25.442776, 35.244377, 34.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329132, 35.133591, 34.863327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956299, -0.012870, 0.292106,
		-0.069089, 0.960794, 0.268516,
		-0.284110, -0.276963, 0.917918,
		25.243898, 35.050503, 35.138702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674671, 35.793789, 35.075855>,  <25.442776, 35.244377, 34.496159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674671, 35.793789, 35.075855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639294, 35.412930, 35.192883>,  <25.618067, 35.184414, 35.263100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639294, 35.412930, 35.192883>,  <25.674671, 35.793789, 35.075855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639294, 35.412930, 35.192883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967360, -0.012081, 0.253118,
		-0.237471, 0.305404, 0.922137,
		-0.088443, -0.952146, 0.292567,
		25.612761, 35.127285, 35.280651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356117, 35.975140, 34.978031>,  <25.674671, 35.793789, 35.075855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356117, 35.975140, 34.978031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261530, 35.684666, 35.236256>,  <26.204779, 35.510384, 35.391190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261530, 35.684666, 35.236256>,  <26.356117, 35.975140, 34.978031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261530, 35.684666, 35.236256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970821, -0.203845, 0.126307,
		0.039872, 0.656589, 0.753194,
		-0.236466, -0.726181, 0.645558,
		26.190590, 35.466812, 35.429924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737268, 36.115055, 35.652180>,  <26.356117, 35.975140, 34.978031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737268, 36.115055, 35.652180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695887, 35.736721, 35.529095>,  <26.671057, 35.509720, 35.455242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695887, 35.736721, 35.529095>,  <26.737268, 36.115055, 35.652180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695887, 35.736721, 35.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994391, -0.105202, -0.010955,
		-0.022011, -0.307121, 0.951416,
		-0.103455, -0.945838, -0.307714,
		26.664850, 35.452969, 35.436779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119139, 35.674301, 36.126247>,  <26.737268, 36.115055, 35.652180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119139, 35.674301, 36.126247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089647, 35.513725, 35.761082>,  <27.071953, 35.417381, 35.541981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089647, 35.513725, 35.761082>,  <27.119139, 35.674301, 36.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089647, 35.513725, 35.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994943, -0.092215, -0.039805,
		-0.068205, -0.911233, 0.406205,
		-0.073730, -0.401436, -0.912914,
		27.067528, 35.393295, 35.487206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435732, 34.921440, 36.103722>,  <27.119139, 35.674301, 36.126247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435732, 34.921440, 36.103722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441469, 35.129772, 35.762306>,  <27.444912, 35.254772, 35.557457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441469, 35.129772, 35.762306>,  <27.435732, 34.921440, 36.103722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441469, 35.129772, 35.762306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996824, -0.074320, -0.028602,
		-0.078332, -0.850419, -0.520242,
		0.014341, 0.520831, -0.853540,
		27.445772, 35.286022, 35.506245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884596, 34.608009, 35.541283>,  <27.435732, 34.921440, 36.103722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884596, 34.608009, 35.541283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849182, 35.004700, 35.504097>,  <27.827934, 35.242714, 35.481785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849182, 35.004700, 35.504097>,  <27.884596, 34.608009, 35.541283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849182, 35.004700, 35.504097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988968, 0.076393, -0.126910,
		-0.118758, -0.103177, -0.987548,
		-0.088536, 0.991725, -0.092966,
		27.822622, 35.302216, 35.476208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500849, 35.014687, 35.376015>,  <27.884596, 34.608009, 35.541283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500849, 35.014687, 35.376015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527061, 34.832760, 35.731285>,  <28.542789, 34.723606, 35.944447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527061, 34.832760, 35.731285>,  <28.500849, 35.014687, 35.376015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527061, 34.832760, 35.731285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245860, -0.855285, -0.456114,
		0.967088, 0.248255, 0.055774,
		0.065530, -0.454815, 0.888172,
		28.546721, 34.696316, 35.997738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103775, 34.698921, 35.443760>,  <28.500849, 35.014687, 35.376015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103775, 34.698921, 35.443760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884670, 34.481365, 35.698048>,  <28.753208, 34.350834, 35.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884670, 34.481365, 35.698048>,  <29.103775, 34.698921, 35.443760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884670, 34.481365, 35.698048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193428, -0.821598, -0.536248,
		0.813968, -0.170768, 0.555242,
		-0.547760, -0.543888, 0.635723,
		28.720343, 34.318199, 35.888763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479355, 34.148029, 35.595379>,  <29.103775, 34.698921, 35.443760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479355, 34.148029, 35.595379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090277, 34.058926, 35.621422>,  <28.856831, 34.005463, 35.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090277, 34.058926, 35.621422>,  <29.479355, 34.148029, 35.595379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090277, 34.058926, 35.621422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184502, -0.912410, -0.365331,
		0.140791, -0.343342, 0.928598,
		-0.972696, -0.222764, 0.065112,
		28.798468, 33.992096, 35.640957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938175, 33.759106, 35.116051>,  <29.479355, 34.148029, 35.595379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938175, 33.759106, 35.116051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866251, 33.447269, 35.356022>,  <28.823097, 33.260166, 35.500004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866251, 33.447269, 35.356022>,  <28.938175, 33.759106, 35.116051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866251, 33.447269, 35.356022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527659, 0.591139, 0.610024,
		-0.830207, -0.206867, -0.517650,
		-0.179809, -0.779590, 0.599924,
		28.812307, 33.213394, 35.535999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286058, 33.800056, 35.374428>,  <28.938175, 33.759106, 35.116051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286058, 33.800056, 35.374428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502224, 33.591354, 35.638466>,  <28.631924, 33.466133, 35.796890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502224, 33.591354, 35.638466>,  <28.286058, 33.800056, 35.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502224, 33.591354, 35.638466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102386, 0.737913, 0.667084,
		-0.835147, -0.428086, 0.345358,
		0.540413, -0.521754, 0.660096,
		28.664349, 33.434830, 35.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911066, 33.678699, 35.966969>,  <28.286058, 33.800056, 35.374428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911066, 33.678699, 35.966969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309660, 33.710423, 35.977757>,  <28.548817, 33.729454, 35.984230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309660, 33.710423, 35.977757>,  <27.911066, 33.678699, 35.966969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309660, 33.710423, 35.977757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076951, 0.739497, 0.668747,
		0.033090, -0.668472, 0.743001,
		0.996486, 0.079303, 0.026969,
		28.608606, 33.734215, 35.985847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134295, 33.507679, 36.620316>,  <27.911066, 33.678699, 35.966969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134295, 33.507679, 36.620316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342268, 33.772644, 36.404583>,  <28.467052, 33.931622, 36.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342268, 33.772644, 36.404583>,  <28.134295, 33.507679, 36.620316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342268, 33.772644, 36.404583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230418, 0.716739, 0.658174,
		0.822544, -0.217933, 0.525287,
		0.519931, 0.662413, -0.539334,
		28.498247, 33.971367, 36.242783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415834, 34.028473, 37.116196>,  <28.134295, 33.507679, 36.620316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415834, 34.028473, 37.116196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463810, 34.235985, 36.777615>,  <28.492596, 34.360493, 36.574467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463810, 34.235985, 36.777615>,  <28.415834, 34.028473, 37.116196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463810, 34.235985, 36.777615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169806, 0.850764, 0.497359,
		0.978152, 0.084080, 0.190131,
		0.119939, 0.518778, -0.846454,
		28.499792, 34.391617, 36.523678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823849, 34.640457, 37.285328>,  <28.415834, 34.028473, 37.116196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823849, 34.640457, 37.285328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553881, 34.676273, 36.992352>,  <28.391899, 34.697762, 36.816566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553881, 34.676273, 36.992352>,  <28.823849, 34.640457, 37.285328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553881, 34.676273, 36.992352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259952, 0.900122, 0.349579,
		0.690585, 0.426337, -0.584235,
		-0.674920, 0.089541, -0.732438,
		28.351404, 34.703136, 36.772621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603016, 34.777611, 37.327869>,  <28.823849, 34.640457, 37.285328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603016, 34.777611, 37.327869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466612, 34.984619, 37.641781>,  <29.384769, 35.108826, 37.830128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466612, 34.984619, 37.641781>,  <29.603016, 34.777611, 37.327869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466612, 34.984619, 37.641781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200340, -0.775636, 0.598542,
		0.918463, 0.361333, 0.160821,
		-0.341012, 0.517520, 0.784783,
		29.364309, 35.139874, 37.877216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513351, 34.889050, 36.624733>,  <29.603016, 34.777611, 37.327869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513351, 34.889050, 36.624733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160353, 35.045822, 36.728725>,  <28.948553, 35.139885, 36.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160353, 35.045822, 36.728725>,  <29.513351, 34.889050, 36.624733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160353, 35.045822, 36.728725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186609, 0.215603, -0.958484,
		-0.431713, -0.894374, -0.117130,
		-0.882497, 0.391933, 0.259977,
		28.895603, 35.163403, 36.806717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060053, 35.252804, 36.999413>,  <29.513351, 34.889050, 36.624733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060053, 35.252804, 36.999413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099178, 34.872406, 37.116745>,  <30.122654, 34.644169, 37.187145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099178, 34.872406, 37.116745>,  <30.060053, 35.252804, 36.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099178, 34.872406, 37.116745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710225, -0.139763, -0.689961,
		0.697146, 0.275816, 0.661750,
		0.097814, -0.950995, 0.293327,
		30.128523, 34.587109, 37.204742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683962, 35.017014, 37.281979>,  <30.060053, 35.252804, 36.999413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683962, 35.017014, 37.281979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533171, 34.675598, 37.138115>,  <30.442696, 34.470749, 37.051796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533171, 34.675598, 37.138115>,  <30.683962, 35.017014, 37.281979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533171, 34.675598, 37.138115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897982, -0.241653, -0.367738,
		0.226969, -0.461593, 0.857565,
		-0.376978, -0.853543, -0.359655,
		30.420076, 34.419537, 37.030220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256062, 34.802361, 37.030441>,  <30.683962, 35.017014, 37.281979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256062, 34.802361, 37.030441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031801, 34.500824, 36.893391>,  <30.897245, 34.319901, 36.811161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031801, 34.500824, 36.893391>,  <31.256062, 34.802361, 37.030441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031801, 34.500824, 36.893391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819909, -0.447495, -0.357067,
		0.115847, -0.481114, 0.868970,
		-0.560649, -0.753842, -0.342629,
		30.863605, 34.274670, 36.790604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423672, 34.158768, 37.601173>,  <31.256062, 34.802361, 37.030441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423672, 34.158768, 37.601173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751976, 34.215790, 37.379894>,  <31.948959, 34.250004, 37.247128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751976, 34.215790, 37.379894>,  <31.423672, 34.158768, 37.601173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751976, 34.215790, 37.379894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316550, -0.919596, 0.232679,
		-0.475546, -0.366088, -0.799897,
		0.820763, 0.142558, -0.553195,
		31.998205, 34.258556, 37.213936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504644, 33.542492, 37.236767>,  <31.423672, 34.158768, 37.601173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504644, 33.542492, 37.236767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853970, 33.737354, 37.237221>,  <32.063564, 33.854271, 37.237495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853970, 33.737354, 37.237221>,  <31.504644, 33.542492, 37.236767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853970, 33.737354, 37.237221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483761, -0.867498, 0.115856,
		0.057428, -0.100628, -0.993265,
		0.873314, 0.487156, 0.001139,
		32.115963, 33.883503, 37.237564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926361, 32.940147, 37.378712>,  <31.504644, 33.542492, 37.236767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926361, 32.940147, 37.378712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157967, 32.659180, 37.544289>,  <32.296928, 32.490597, 37.643635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157967, 32.659180, 37.544289>,  <31.926361, 32.940147, 37.378712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157967, 32.659180, 37.544289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511769, -0.082112, -0.855190,
		0.634693, 0.707009, 0.311934,
		0.579013, -0.702421, 0.413941,
		32.331669, 32.448452, 37.668472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692657, 33.093189, 37.306568>,  <31.926361, 32.940147, 37.378712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692657, 33.093189, 37.306568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609726, 32.703331, 37.340214>,  <32.559967, 32.469414, 37.360401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609726, 32.703331, 37.340214>,  <32.692657, 33.093189, 37.306568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609726, 32.703331, 37.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461277, -0.173218, -0.870184,
		0.862693, -0.141615, 0.485496,
		-0.207327, -0.974649, 0.084110,
		32.547527, 32.410934, 37.365448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338997, 32.633827, 37.321697>,  <32.692657, 33.093189, 37.306568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338997, 32.633827, 37.321697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046261, 32.450844, 37.119652>,  <32.870617, 32.341053, 36.998425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046261, 32.450844, 37.119652>,  <33.338997, 32.633827, 37.321697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046261, 32.450844, 37.119652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659786, -0.290134, -0.693185,
		0.170553, -0.840567, 0.514157,
		-0.731843, -0.457459, -0.505111,
		32.826710, 32.313606, 36.968117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639778, 32.021118, 37.004444>,  <33.338997, 32.633827, 37.321697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639778, 32.021118, 37.004444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273617, 31.935680, 36.867966>,  <33.053921, 31.884418, 36.786079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273617, 31.935680, 36.867966>,  <33.639778, 32.021118, 37.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273617, 31.935680, 36.867966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349826, -0.841451, -0.411803,
		-0.199142, -0.496325, 0.844988,
		-0.915404, -0.213591, -0.341195,
		32.998997, 31.871603, 36.765606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618923, 31.327499, 37.030140>,  <33.639778, 32.021118, 37.004444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618923, 31.327499, 37.030140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315441, 31.419044, 36.786179>,  <33.133350, 31.473970, 36.639801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315441, 31.419044, 36.786179>,  <33.618923, 31.327499, 37.030140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315441, 31.419044, 36.786179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172699, -0.832091, -0.527067,
		-0.628120, -0.505220, 0.591792,
		-0.758710, 0.228860, -0.609904,
		33.087830, 31.487703, 36.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945976, 30.976547, 36.821831>,  <33.618923, 31.327499, 37.030140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945976, 30.976547, 36.821831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089420, 31.174110, 36.504982>,  <33.175488, 31.292648, 36.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089420, 31.174110, 36.504982>,  <32.945976, 30.976547, 36.821831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089420, 31.174110, 36.504982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006754, -0.849911, -0.526883,
		-0.933465, 0.183593, -0.308119,
		0.358606, 0.493907, -0.792122,
		33.197002, 31.322283, 36.267345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772018, 30.611437, 36.298496>,  <32.945976, 30.976547, 36.821831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772018, 30.611437, 36.298496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038654, 30.858831, 36.132061>,  <33.198635, 31.007269, 36.032200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038654, 30.858831, 36.132061>,  <32.772018, 30.611437, 36.298496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038654, 30.858831, 36.132061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056962, -0.514292, -0.855721,
		-0.743242, 0.594119, -0.307594,
		0.666593, 0.618487, -0.416086,
		33.238632, 31.044378, 36.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437527, 30.833563, 35.632240>,  <32.772018, 30.611437, 36.298496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437527, 30.833563, 35.632240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824577, 30.927689, 35.595737>,  <33.056808, 30.984163, 35.573837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824577, 30.927689, 35.595737>,  <32.437527, 30.833563, 35.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824577, 30.927689, 35.595737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040526, -0.501742, -0.864068,
		-0.249116, 0.832396, -0.495034,
		0.967626, 0.235315, -0.091259,
		33.114864, 30.998283, 35.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479301, 30.930180, 34.918407>,  <32.437527, 30.833563, 35.632240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479301, 30.930180, 34.918407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867302, 30.906879, 35.012810>,  <33.100101, 30.892899, 35.069450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867302, 30.906879, 35.012810>,  <32.479301, 30.930180, 34.918407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867302, 30.906879, 35.012810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201849, -0.348028, -0.915496,
		0.135466, 0.935673, -0.325830,
		0.970003, -0.058250, 0.236010,
		33.158302, 30.889404, 35.083614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975201, 31.250723, 34.382339>,  <32.479301, 30.930180, 34.918407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975201, 31.250723, 34.382339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119514, 30.929504, 34.572056>,  <33.206104, 30.736773, 34.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119514, 30.929504, 34.572056>,  <32.975201, 31.250723, 34.382339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119514, 30.929504, 34.572056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257244, -0.403127, -0.878245,
		0.896471, 0.438864, 0.061137,
		0.360784, -0.803048, 0.474287,
		33.227749, 30.688589, 34.714340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361008, 31.015114, 33.872433>,  <32.975201, 31.250723, 34.382339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361008, 31.015114, 33.872433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461460, 30.748280, 34.152985>,  <33.521732, 30.588179, 34.321316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461460, 30.748280, 34.152985>,  <33.361008, 31.015114, 33.872433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461460, 30.748280, 34.152985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479322, -0.543817, -0.688850,
		0.840943, 0.509176, 0.183180,
		0.251129, -0.667086, 0.701378,
		33.536800, 30.548155, 34.363400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115158, 31.109385, 33.612587>,  <33.361008, 31.015114, 33.872433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115158, 31.109385, 33.612587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941158, 30.750681, 33.580090>,  <33.836758, 30.535460, 33.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941158, 30.750681, 33.580090>,  <34.115158, 31.109385, 33.612587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941158, 30.750681, 33.580090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813769, -0.352904, -0.461777,
		0.385431, -0.266987, 0.883267,
		-0.434997, -0.896759, -0.081245,
		33.810658, 30.481653, 33.555717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456440, 30.535929, 33.941887>,  <34.115158, 31.109385, 33.612587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456440, 30.535929, 33.941887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254002, 30.404568, 33.622883>,  <34.132538, 30.325750, 33.431480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254002, 30.404568, 33.622883>,  <34.456440, 30.535929, 33.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254002, 30.404568, 33.622883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852833, -0.328447, -0.405954,
		-0.128621, -0.885592, 0.446299,
		-0.506095, -0.328404, -0.797508,
		34.102173, 30.306047, 33.383629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707287, 29.883766, 33.746624>,  <34.456440, 30.535929, 33.941887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707287, 29.883766, 33.746624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549992, 30.056412, 33.421890>,  <34.455616, 30.160000, 33.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549992, 30.056412, 33.421890>,  <34.707287, 29.883766, 33.746624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549992, 30.056412, 33.421890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770538, -0.327035, -0.547101,
		-0.501636, -0.840687, -0.203976,
		-0.393234, 0.431617, -0.811834,
		34.432022, 30.185896, 33.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643410, 29.393831, 33.225353>,  <34.707287, 29.883766, 33.746624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643410, 29.393831, 33.225353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718189, 29.749659, 33.058636>,  <34.763058, 29.963156, 32.958607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718189, 29.749659, 33.058636>,  <34.643410, 29.393831, 33.225353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718189, 29.749659, 33.058636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690792, -0.420704, -0.588060,
		-0.698466, -0.177977, -0.693159,
		0.186954, 0.889569, -0.416793,
		34.774277, 30.016529, 32.933598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226616, 28.877413, 33.702511>,  <34.643410, 29.393831, 33.225353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226616, 28.877413, 33.702511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992874, 28.775784, 34.010788>,  <33.852627, 28.714806, 34.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992874, 28.775784, 34.010788>,  <34.226616, 28.877413, 33.702511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992874, 28.775784, 34.010788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370773, 0.928389, 0.024933,
		-0.721840, -0.271184, -0.636715,
		-0.584358, -0.254075, 0.770696,
		33.817566, 28.699560, 34.241997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464706, 29.114750, 33.699749>,  <34.226616, 28.877413, 33.702511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464706, 29.114750, 33.699749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608356, 29.085028, 34.071880>,  <33.694546, 29.067194, 34.295158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608356, 29.085028, 34.071880>,  <33.464706, 29.114750, 33.699749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608356, 29.085028, 34.071880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264866, 0.947725, 0.177939,
		-0.894917, -0.310314, 0.320668,
		0.359123, -0.074306, 0.930327,
		33.716095, 29.062737, 34.350979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037476, 29.500263, 34.074291>,  <33.464706, 29.114750, 33.699749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037476, 29.500263, 34.074291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351299, 29.443771, 34.315796>,  <33.539593, 29.409876, 34.460697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351299, 29.443771, 34.315796>,  <33.037476, 29.500263, 34.074291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351299, 29.443771, 34.315796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148383, 0.902660, 0.403965,
		-0.602042, -0.406521, 0.687231,
		0.784556, -0.141231, 0.603760,
		33.586666, 29.401402, 34.496925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917015, 29.821785, 34.855534>,  <33.037476, 29.500263, 34.074291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917015, 29.821785, 34.855534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307148, 29.814234, 34.767563>,  <33.541229, 29.809704, 34.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307148, 29.814234, 34.767563>,  <32.917015, 29.821785, 34.855534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307148, 29.814234, 34.767563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105061, 0.915948, 0.387299,
		0.194133, -0.400852, 0.895338,
		0.975333, -0.018878, -0.219930,
		33.599747, 29.808571, 34.701584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308159, 29.849771, 35.479874>,  <32.917015, 29.821785, 34.855534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308159, 29.849771, 35.479874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458687, 30.006170, 35.143898>,  <33.549004, 30.100010, 34.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458687, 30.006170, 35.143898>,  <33.308159, 29.849771, 35.479874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458687, 30.006170, 35.143898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060231, 0.894343, 0.443309,
		0.924529, -0.217417, 0.313010,
		0.376322, 0.390999, -0.839942,
		33.571583, 30.123470, 34.891914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105457, 30.023832, 35.445976>,  <33.308159, 29.849771, 35.479874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105457, 30.023832, 35.445976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881855, 30.250757, 35.204094>,  <33.747692, 30.386911, 35.058964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881855, 30.250757, 35.204094>,  <34.105457, 30.023832, 35.445976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881855, 30.250757, 35.204094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146157, 0.785297, 0.601620,
		0.816181, 0.247926, -0.521902,
		-0.559005, 0.567311, -0.604708,
		33.714153, 30.420950, 35.022682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368896, 30.667688, 35.456039>,  <34.105457, 30.023832, 35.445976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368896, 30.667688, 35.456039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996376, 30.749020, 35.335155>,  <33.772865, 30.797819, 35.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996376, 30.749020, 35.335155>,  <34.368896, 30.667688, 35.456039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996376, 30.749020, 35.335155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110357, 0.633191, 0.766087,
		0.347127, 0.746810, -0.567254,
		-0.931302, 0.203329, -0.302214,
		33.716984, 30.810019, 35.244492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341309, 31.262119, 35.342739>,  <34.368896, 30.667688, 35.456039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341309, 31.262119, 35.342739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969959, 31.164381, 35.454750>,  <33.747150, 31.105738, 35.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969959, 31.164381, 35.454750>,  <34.341309, 31.262119, 35.342739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969959, 31.164381, 35.454750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025046, 0.792898, 0.608839,
		-0.370797, 0.558218, -0.742228,
		-0.928376, -0.244346, 0.280023,
		33.691448, 31.091078, 35.538757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122429, 31.884167, 35.532410>,  <34.341309, 31.262119, 35.342739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122429, 31.884167, 35.532410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833763, 31.646631, 35.674713>,  <33.660564, 31.504110, 35.760094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833763, 31.646631, 35.674713>,  <34.122429, 31.884167, 35.532410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833763, 31.646631, 35.674713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174749, 0.653546, 0.736438,
		-0.669827, 0.469291, -0.575411,
		-0.721661, -0.593838, 0.355755,
		33.617264, 31.468479, 35.781441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243454, 32.113983, 34.719406>,  <34.122429, 31.884167, 35.532410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243454, 32.113983, 34.719406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522022, 32.372589, 34.843990>,  <34.689163, 32.527752, 34.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522022, 32.372589, 34.843990>,  <34.243454, 32.113983, 34.719406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522022, 32.372589, 34.843990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165793, -0.567218, 0.806707,
		0.698216, -0.510173, -0.502213,
		0.696424, 0.646519, 0.311457,
		34.730949, 32.566544, 34.937428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825741, 31.950169, 35.341568>,  <34.243454, 32.113983, 34.719406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825741, 31.950169, 35.341568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719440, 32.190052, 35.643490>,  <34.655659, 32.333981, 35.824642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719440, 32.190052, 35.643490>,  <34.825741, 31.950169, 35.341568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719440, 32.190052, 35.643490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927633, 0.054063, -0.369558,
		-0.262434, -0.798389, 0.541943,
		-0.265753, 0.599710, 0.754801,
		34.639713, 32.369965, 35.869930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410587, 31.938868, 35.147663>,  <34.825741, 31.950169, 35.341568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410587, 31.938868, 35.147663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515999, 31.586807, 34.989735>,  <35.579247, 31.375572, 34.894978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515999, 31.586807, 34.989735>,  <35.410587, 31.938868, 35.147663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515999, 31.586807, 34.989735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808534, 0.424772, -0.407237,
		0.526140, -0.211909, 0.823572,
		0.263533, -0.880150, -0.394825,
		35.595058, 31.322762, 34.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119827, 31.672544, 35.379005>,  <35.410587, 31.938868, 35.147663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119827, 31.672544, 35.379005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957085, 31.603685, 35.020157>,  <35.859440, 31.562370, 34.804848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957085, 31.603685, 35.020157>,  <36.119827, 31.672544, 35.379005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957085, 31.603685, 35.020157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780844, 0.444133, -0.439350,
		0.474075, -0.879267, -0.046279,
		-0.406861, -0.172148, -0.897123,
		35.835026, 31.552042, 34.751019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631893, 31.317137, 34.967819>,  <36.119827, 31.672544, 35.379005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631893, 31.317137, 34.967819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374825, 31.535561, 34.752861>,  <36.220585, 31.666615, 34.623886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374825, 31.535561, 34.752861>,  <36.631893, 31.317137, 34.967819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374825, 31.535561, 34.752861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762479, 0.524373, -0.379024,
		0.074826, -0.653340, -0.753358,
		-0.642672, 0.546058, -0.537395,
		36.182022, 31.699379, 34.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720482, 31.298126, 34.253845>,  <36.631893, 31.317137, 34.967819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720482, 31.298126, 34.253845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580524, 31.662146, 34.342735>,  <36.496552, 31.880558, 34.396069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580524, 31.662146, 34.342735>,  <36.720482, 31.298126, 34.253845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580524, 31.662146, 34.342735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827433, 0.411452, -0.382180,
		-0.439237, 0.050153, -0.896970,
		-0.349893, 0.910050, 0.222223,
		36.475555, 31.935162, 34.409401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866917, 31.670650, 33.746971>,  <36.720482, 31.298126, 34.253845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866917, 31.670650, 33.746971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891972, 31.903234, 34.071434>,  <36.907005, 32.042786, 34.266113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891972, 31.903234, 34.071434>,  <36.866917, 31.670650, 33.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891972, 31.903234, 34.071434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867207, 0.370575, -0.332605,
		-0.493993, 0.724278, -0.481033,
		0.062640, 0.581459, 0.811160,
		36.910763, 32.077671, 34.314781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920628, 32.476170, 33.678944>,  <36.866917, 31.670650, 33.746971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920628, 32.476170, 33.678944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135574, 32.376057, 34.001087>,  <37.264542, 32.315990, 34.194374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135574, 32.376057, 34.001087>,  <36.920628, 32.476170, 33.678944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135574, 32.376057, 34.001087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843212, 0.142257, -0.518418,
		0.015183, 0.957665, 0.287484,
		0.537367, -0.250281, 0.805354,
		37.296783, 32.300972, 34.242695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242847, 33.049442, 33.942108>,  <36.920628, 32.476170, 33.678944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242847, 33.049442, 33.942108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451180, 32.725494, 34.050064>,  <37.576180, 32.531124, 34.114838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451180, 32.725494, 34.050064>,  <37.242847, 33.049442, 33.942108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451180, 32.725494, 34.050064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832101, 0.411041, -0.372362,
		0.190629, 0.418516, 0.887978,
		0.520835, -0.809870, 0.269891,
		37.607430, 32.482533, 34.131031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710342, 33.120293, 34.555279>,  <37.242847, 33.049442, 33.942108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710342, 33.120293, 34.555279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842556, 32.862419, 34.279560>,  <37.921883, 32.707695, 34.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842556, 32.862419, 34.279560>,  <37.710342, 33.120293, 34.555279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842556, 32.862419, 34.279560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720908, 0.643828, -0.256472,
		0.609133, -0.412149, 0.677563,
		0.330529, -0.644685, -0.689298,
		37.941715, 32.669014, 34.072769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443443, 33.196075, 34.512775>,  <37.710342, 33.120293, 34.555279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443443, 33.196075, 34.512775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375519, 33.020317, 34.159939>,  <38.334763, 32.914860, 33.948235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375519, 33.020317, 34.159939>,  <38.443443, 33.196075, 34.512775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375519, 33.020317, 34.159939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578051, 0.680525, -0.450271,
		0.798136, -0.586357, 0.138434,
		-0.169811, -0.439400, -0.882095,
		38.324577, 32.888496, 33.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051647, 33.278526, 34.127357>,  <38.443443, 33.196075, 34.512775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051647, 33.278526, 34.127357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781895, 33.209415, 33.840202>,  <38.620045, 33.167950, 33.667912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781895, 33.209415, 33.840202>,  <39.051647, 33.278526, 34.127357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781895, 33.209415, 33.840202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535210, 0.555408, -0.636452,
		0.508687, -0.813430, -0.282081,
		-0.674380, -0.172782, -0.717885,
		38.579582, 33.157581, 33.624836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454681, 32.923008, 33.680691>,  <39.051647, 33.278526, 34.127357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454681, 32.923008, 33.680691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119514, 33.041401, 33.497257>,  <38.918415, 33.112438, 33.387199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119514, 33.041401, 33.497257>,  <39.454681, 32.923008, 33.680691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119514, 33.041401, 33.497257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528655, 0.231154, -0.816757,
		-0.135744, -0.926802, -0.350160,
		-0.837913, 0.295983, -0.458580,
		38.868141, 33.130196, 33.359684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442341, 32.620995, 33.068913>,  <39.454681, 32.923008, 33.680691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442341, 32.620995, 33.068913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195759, 32.932072, 33.019630>,  <39.047810, 33.118717, 32.990059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195759, 32.932072, 33.019630>,  <39.442341, 32.620995, 33.068913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195759, 32.932072, 33.019630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438056, 0.208706, -0.874384,
		-0.654288, -0.592989, -0.469331,
		-0.616453, 0.777692, -0.123209,
		39.010822, 33.165379, 32.982666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470726, 32.731335, 32.371277>,  <39.442341, 32.620995, 33.068913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470726, 32.731335, 32.371277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244900, 33.041283, 32.485008>,  <39.109402, 33.227249, 32.553249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244900, 33.041283, 32.485008>,  <39.470726, 32.731335, 32.371277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244900, 33.041283, 32.485008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147990, 0.433932, -0.888708,
		-0.812010, -0.459659, -0.359657,
		-0.564569, 0.774866, 0.284333,
		39.075527, 33.273743, 32.570309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376450, 32.094360, 31.979408>,  <39.470726, 32.731335, 32.371277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376450, 32.094360, 31.979408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263786, 31.720552, 32.066441>,  <39.196190, 31.496267, 32.118660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263786, 31.720552, 32.066441>,  <39.376450, 32.094360, 31.979408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263786, 31.720552, 32.066441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363242, -0.106034, -0.925642,
		0.888101, -0.339750, -0.309591,
		-0.281659, -0.934520, 0.217580,
		39.179287, 31.440197, 32.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289806, 31.902569, 31.262806>,  <39.376450, 32.094360, 31.979408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289806, 31.902569, 31.262806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123150, 31.620495, 31.492283>,  <39.023155, 31.451250, 31.629969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123150, 31.620495, 31.492283>,  <39.289806, 31.902569, 31.262806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123150, 31.620495, 31.492283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828890, 0.035541, -0.558281,
		0.373303, -0.708130, -0.599331,
		-0.416637, -0.705188, 0.573694,
		38.998158, 31.408939, 31.664391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971882, 31.524500, 30.789125>,  <39.289806, 31.902569, 31.262806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971882, 31.524500, 30.789125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799343, 31.433716, 31.138395>,  <38.695820, 31.379246, 31.347958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799343, 31.433716, 31.138395>,  <38.971882, 31.524500, 30.789125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799343, 31.433716, 31.138395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874329, -0.133492, -0.466615,
		0.222466, -0.964711, -0.140858,
		-0.431345, -0.226962, 0.873172,
		38.669941, 31.365627, 31.400347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609680, 30.904415, 30.670132>,  <38.971882, 31.524500, 30.789125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609680, 30.904415, 30.670132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415089, 31.163216, 30.904987>,  <38.298336, 31.318497, 31.045900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415089, 31.163216, 30.904987>,  <38.609680, 30.904415, 30.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415089, 31.163216, 30.904987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833428, -0.141987, -0.534077,
		-0.262183, -0.749151, 0.608303,
		-0.486476, 0.647002, 0.587137,
		38.269146, 31.357317, 31.081129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975399, 30.632023, 30.727083>,  <38.609680, 30.904415, 30.670132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975399, 30.632023, 30.727083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939365, 31.021111, 30.812592>,  <37.917744, 31.254564, 30.863897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939365, 31.021111, 30.812592>,  <37.975399, 30.632023, 30.727083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939365, 31.021111, 30.812592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843605, 0.039558, -0.535505,
		-0.529353, -0.228578, 0.817029,
		-0.090085, 0.972722, 0.213770,
		37.912338, 31.312927, 30.876722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287437, 30.706112, 30.879528>,  <37.975399, 30.632023, 30.727083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287437, 30.706112, 30.879528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446922, 31.049391, 30.750204>,  <37.542614, 31.255358, 30.672609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446922, 31.049391, 30.750204>,  <37.287437, 30.706112, 30.879528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446922, 31.049391, 30.750204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654712, 0.019504, -0.755626,
		-0.642171, 0.512949, 0.569649,
		0.398708, 0.858198, -0.323309,
		37.566536, 31.306850, 30.653212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693386, 31.028688, 30.678148>,  <37.287437, 30.706112, 30.879528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693386, 31.028688, 30.678148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994839, 31.228933, 30.507771>,  <37.175709, 31.349079, 30.405544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994839, 31.228933, 30.507771>,  <36.693386, 31.028688, 30.678148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994839, 31.228933, 30.507771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536732, 0.094633, -0.838429,
		-0.379418, 0.860485, 0.340013,
		0.753632, 0.500610, -0.425944,
		37.220928, 31.379116, 30.379988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434898, 31.744225, 30.407513>,  <36.693386, 31.028688, 30.678148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434898, 31.744225, 30.407513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764126, 31.640568, 30.205360>,  <36.961662, 31.578373, 30.084070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764126, 31.640568, 30.205360>,  <36.434898, 31.744225, 30.407513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764126, 31.640568, 30.205360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415468, 0.331978, -0.846863,
		0.387234, 0.906992, 0.165573,
		0.823065, -0.259144, -0.505379,
		37.011044, 31.562824, 30.053747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537590, 32.304028, 29.919710>,  <36.434898, 31.744225, 30.407513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537590, 32.304028, 29.919710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762314, 32.006348, 29.775187>,  <36.897148, 31.827742, 29.688473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762314, 32.006348, 29.775187>,  <36.537590, 32.304028, 29.919710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762314, 32.006348, 29.775187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298819, 0.224710, -0.927476,
		0.771414, 0.629030, -0.096136,
		0.561807, -0.744195, -0.361311,
		36.930855, 31.783089, 29.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993931, 32.649742, 29.374548>,  <36.537590, 32.304028, 29.919710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993931, 32.649742, 29.374548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986698, 32.257797, 29.295012>,  <36.982361, 32.022629, 29.247290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986698, 32.257797, 29.295012>,  <36.993931, 32.649742, 29.374548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986698, 32.257797, 29.295012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316068, 0.194274, -0.928632,
		0.948564, 0.046060, -0.313216,
		-0.018077, -0.979865, -0.198840,
		36.981274, 31.963839, 29.235359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322025, 32.555862, 28.737909>,  <36.993931, 32.649742, 29.374548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322025, 32.555862, 28.737909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146759, 32.197254, 28.764023>,  <37.041599, 31.982088, 28.779690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146759, 32.197254, 28.764023>,  <37.322025, 32.555862, 28.737909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146759, 32.197254, 28.764023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340041, 0.098085, -0.935282,
		0.832098, -0.432002, -0.347831,
		-0.438161, -0.896523, 0.065282,
		37.015312, 31.928297, 28.783607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600357, 32.159042, 28.147133>,  <37.322025, 32.555862, 28.737909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600357, 32.159042, 28.147133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255669, 31.989080, 28.258047>,  <37.048855, 31.887104, 28.324596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255669, 31.989080, 28.258047>,  <37.600357, 32.159042, 28.147133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255669, 31.989080, 28.258047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244721, -0.130665, -0.960749,
		0.444457, -0.895759, 0.008614,
		-0.861725, -0.424903, 0.277285,
		36.997150, 31.861610, 28.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629974, 31.477879, 27.821289>,  <37.600357, 32.159042, 28.147133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629974, 31.477879, 27.821289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258865, 31.604300, 27.900631>,  <37.036198, 31.680151, 27.948236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258865, 31.604300, 27.900631>,  <37.629974, 31.477879, 27.821289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258865, 31.604300, 27.900631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215566, -0.020086, -0.976283,
		-0.304570, -0.948530, 0.086765,
		-0.927776, 0.316050, 0.198353,
		36.980534, 31.699114, 27.960136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192410, 31.018412, 27.363672>,  <37.629974, 31.477879, 27.821289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192410, 31.018412, 27.363672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959915, 31.322107, 27.480785>,  <36.820419, 31.504324, 27.551054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959915, 31.322107, 27.480785>,  <37.192410, 31.018412, 27.363672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959915, 31.322107, 27.480785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356237, 0.086080, -0.930422,
		-0.731616, -0.645093, 0.220437,
		-0.581234, 0.759240, 0.292784,
		36.785545, 31.549879, 27.568621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553513, 30.789150, 27.065443>,  <37.192410, 31.018412, 27.363672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553513, 30.789150, 27.065443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550179, 31.180843, 27.146467>,  <36.548180, 31.415859, 27.195082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550179, 31.180843, 27.146467>,  <36.553513, 30.789150, 27.065443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550179, 31.180843, 27.146467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465891, 0.175436, -0.867276,
		-0.884803, -0.101598, 0.454754,
		-0.008333, 0.979234, 0.202560,
		36.547680, 31.474613, 27.207235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836067, 30.974909, 26.895594>,  <36.553513, 30.789150, 27.065443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836067, 30.974909, 26.895594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061893, 31.305059, 26.893847>,  <36.197388, 31.503151, 26.892797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061893, 31.305059, 26.893847>,  <35.836067, 30.974909, 26.895594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061893, 31.305059, 26.893847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412351, 0.277457, -0.867746,
		-0.715007, 0.491699, 0.496988,
		0.564563, 0.825378, -0.004369,
		36.231262, 31.552673, 26.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342461, 31.485167, 26.686037>,  <35.836067, 30.974909, 26.895594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342461, 31.485167, 26.686037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711533, 31.625074, 26.621145>,  <35.932976, 31.709019, 26.582211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711533, 31.625074, 26.621145>,  <35.342461, 31.485167, 26.686037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711533, 31.625074, 26.621145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289569, 0.350822, -0.890547,
		-0.254571, 0.868669, 0.424979,
		0.922683, 0.349768, -0.162230,
		35.988338, 31.730005, 26.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211666, 32.164879, 26.468624>,  <35.342461, 31.485167, 26.686037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211666, 32.164879, 26.468624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575817, 32.059826, 26.340729>,  <35.794308, 31.996794, 26.263992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575817, 32.059826, 26.340729>,  <35.211666, 32.164879, 26.468624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575817, 32.059826, 26.340729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184880, 0.433119, -0.882172,
		0.370173, 0.862225, 0.345746,
		0.910380, -0.262635, -0.319737,
		35.848930, 31.981035, 26.244808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431789, 32.736526, 26.027281>,  <35.211666, 32.164879, 26.468624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431789, 32.736526, 26.027281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692848, 32.452553, 25.921417>,  <35.849483, 32.282169, 25.857899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692848, 32.452553, 25.921417>,  <35.431789, 32.736526, 26.027281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692848, 32.452553, 25.921417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065951, 0.401214, -0.913607,
		0.754784, 0.578811, 0.308672,
		0.652650, -0.709933, -0.264657,
		35.888641, 32.239574, 25.842020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918468, 33.132111, 25.722967>,  <35.431789, 32.736526, 26.027281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918468, 33.132111, 25.722967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926537, 32.754509, 25.591236>,  <35.931377, 32.527950, 25.512197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926537, 32.754509, 25.591236>,  <35.918468, 33.132111, 25.722967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926537, 32.754509, 25.591236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094611, 0.326115, -0.940584,
		0.995310, 0.050127, -0.082735,
		0.020168, -0.944000, -0.329328,
		35.932587, 32.471310, 25.492437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270500, 33.176414, 25.113817>,  <35.918468, 33.132111, 25.722967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270500, 33.176414, 25.113817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063740, 32.835690, 25.079781>,  <35.939686, 32.631256, 25.059359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063740, 32.835690, 25.079781>,  <36.270500, 33.176414, 25.113817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063740, 32.835690, 25.079781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212028, 0.223695, -0.951317,
		0.829374, -0.473691, -0.296235,
		-0.516897, -0.851808, -0.085091,
		35.908672, 32.580147, 25.054253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488884, 32.993042, 24.541624>,  <36.270500, 33.176414, 25.113817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488884, 32.993042, 24.541624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178829, 32.745537, 24.592695>,  <35.992798, 32.597034, 24.623337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178829, 32.745537, 24.592695>,  <36.488884, 32.993042, 24.541624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178829, 32.745537, 24.592695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220724, 0.075862, -0.972381,
		0.591989, -0.781905, -0.195379,
		-0.775132, -0.618764, 0.127675,
		35.946289, 32.559906, 24.630999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417713, 32.579723, 23.935665>,  <36.488884, 32.993042, 24.541624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417713, 32.579723, 23.935665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052063, 32.582413, 24.097818>,  <35.832672, 32.584026, 24.195110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052063, 32.582413, 24.097818>,  <36.417713, 32.579723, 23.935665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052063, 32.582413, 24.097818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405439, -0.016075, -0.913981,
		0.000398, -0.999848, 0.017408,
		-0.914122, 0.006694, 0.405383,
		35.777824, 32.584431, 24.219433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010414, 32.155102, 23.615911>,  <36.417713, 32.579723, 23.935665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010414, 32.155102, 23.615911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746288, 32.403854, 23.784317>,  <35.587814, 32.553104, 23.885361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746288, 32.403854, 23.784317>,  <36.010414, 32.155102, 23.615911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746288, 32.403854, 23.784317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493593, 0.063130, -0.867399,
		-0.565996, -0.780564, 0.265270,
		-0.660314, 0.621880, 0.421012,
		35.548195, 32.590420, 23.910620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321751, 31.813274, 23.492109>,  <36.010414, 32.155102, 23.615911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321751, 31.813274, 23.492109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263367, 32.198746, 23.581566>,  <35.228336, 32.430027, 23.635241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263367, 32.198746, 23.581566>,  <35.321751, 31.813274, 23.492109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263367, 32.198746, 23.581566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413093, 0.146042, -0.898903,
		-0.898915, -0.223592, 0.376773,
		-0.145963, 0.963680, 0.223643,
		35.219578, 32.487850, 23.648659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648373, 31.941572, 23.279230>,  <35.321751, 31.813274, 23.492109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648373, 31.941572, 23.279230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806389, 32.307049, 23.317402>,  <34.901199, 32.526337, 23.340305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806389, 32.307049, 23.317402>,  <34.648373, 31.941572, 23.279230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806389, 32.307049, 23.317402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382227, 0.257937, -0.887340,
		-0.835370, 0.314063, 0.451134,
		0.395045, 0.913692, 0.095429,
		34.924904, 32.581158, 23.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074036, 32.362617, 23.010414>,  <34.648373, 31.941572, 23.279230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074036, 32.362617, 23.010414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409485, 32.580097, 22.997101>,  <34.610752, 32.710587, 22.989113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409485, 32.580097, 22.997101>,  <34.074036, 32.362617, 23.010414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409485, 32.580097, 22.997101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288902, 0.392145, -0.873360,
		-0.461793, 0.742033, 0.485936,
		0.838620, 0.543699, -0.033285,
		34.661072, 32.743206, 22.987116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873154, 33.031986, 22.684370>,  <34.074036, 32.362617, 23.010414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873154, 33.031986, 22.684370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271114, 33.028042, 22.644217>,  <34.509892, 33.025677, 22.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271114, 33.028042, 22.644217>,  <33.873154, 33.031986, 22.684370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271114, 33.028042, 22.644217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087022, 0.419349, -0.903645,
		0.051005, 0.907772, 0.416352,
		0.994900, -0.009859, -0.100385,
		34.569584, 33.025085, 22.614101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018478, 33.716618, 22.385956>,  <33.873154, 33.031986, 22.684370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018478, 33.716618, 22.385956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324837, 33.466255, 22.327093>,  <34.508652, 33.316040, 22.291775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324837, 33.466255, 22.327093>,  <34.018478, 33.716618, 22.385956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324837, 33.466255, 22.327093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047387, 0.283196, -0.957891,
		0.641220, 0.726668, 0.246558,
		0.765893, -0.625902, -0.147156,
		34.554604, 33.278484, 22.282946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590302, 34.096027, 21.944357>,  <34.018478, 33.716618, 22.385956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590302, 34.096027, 21.944357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631325, 33.702457, 21.885866>,  <34.655937, 33.466316, 21.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631325, 33.702457, 21.885866>,  <34.590302, 34.096027, 21.944357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631325, 33.702457, 21.885866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272420, 0.169162, -0.947191,
		0.956697, 0.057308, 0.285389,
		0.102558, -0.983921, -0.146225,
		34.662090, 33.407280, 21.841999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988281, 34.164921, 21.387794>,  <34.590302, 34.096027, 21.944357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988281, 34.164921, 21.387794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920868, 33.770718, 21.395515>,  <34.880421, 33.534195, 21.400148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920868, 33.770718, 21.395515>,  <34.988281, 34.164921, 21.387794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920868, 33.770718, 21.395515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256555, -0.062763, -0.964490,
		0.951724, -0.157593, 0.263414,
		-0.168530, -0.985508, 0.019302,
		34.870308, 33.475067, 21.401306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533543, 33.804943, 21.118998>,  <34.988281, 34.164921, 21.387794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533543, 33.804943, 21.118998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199238, 33.594284, 21.056845>,  <34.998657, 33.467888, 21.019552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199238, 33.594284, 21.056845>,  <35.533543, 33.804943, 21.118998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199238, 33.594284, 21.056845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163272, 0.031830, -0.986067,
		0.524260, -0.849485, 0.059385,
		-0.835759, -0.526651, -0.155384,
		34.948509, 33.436287, 21.010229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699093, 33.416157, 20.609989>,  <35.533543, 33.804943, 21.118998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699093, 33.416157, 20.609989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300369, 33.388500, 20.594025>,  <35.061134, 33.371906, 20.584446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300369, 33.388500, 20.594025>,  <35.699093, 33.416157, 20.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300369, 33.388500, 20.594025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056336, -0.254973, -0.965306,
		0.056565, -0.964473, 0.258054,
		-0.996808, -0.069140, -0.039912,
		35.001328, 33.367760, 20.582050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559261, 32.740421, 20.371771>,  <35.699093, 33.416157, 20.609989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559261, 32.740421, 20.371771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250950, 32.983711, 20.295908>,  <35.065964, 33.129684, 20.250389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250950, 32.983711, 20.295908>,  <35.559261, 32.740421, 20.371771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250950, 32.983711, 20.295908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026699, -0.266590, -0.963440,
		-0.636547, -0.747660, 0.189242,
		-0.770775, 0.608223, -0.189659,
		35.019718, 33.166180, 20.239010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013748, 32.388451, 19.881731>,  <35.559261, 32.740421, 20.371771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013748, 32.388451, 19.881731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899864, 32.771103, 19.857059>,  <34.831535, 33.000694, 19.842257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899864, 32.771103, 19.857059>,  <35.013748, 32.388451, 19.881731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899864, 32.771103, 19.857059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153136, -0.108901, -0.982186,
		-0.946304, -0.270191, 0.177499,
		-0.284708, 0.956628, -0.061678,
		34.814453, 33.058090, 19.838556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400101, 32.421608, 19.370651>,  <35.013748, 32.388451, 19.881731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400101, 32.421608, 19.370651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563236, 32.784569, 19.411215>,  <34.661118, 33.002346, 19.435553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563236, 32.784569, 19.411215>,  <34.400101, 32.421608, 19.370651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563236, 32.784569, 19.411215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055405, 0.135458, -0.989233,
		-0.911371, 0.397829, 0.105520,
		0.407839, 0.907405, 0.101411,
		34.685589, 33.056789, 19.441639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959236, 32.850052, 19.022066>,  <34.400101, 32.421608, 19.370651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959236, 32.850052, 19.022066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266964, 33.105385, 19.032486>,  <34.451599, 33.258583, 19.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266964, 33.105385, 19.032486>,  <33.959236, 32.850052, 19.022066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266964, 33.105385, 19.032486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183511, 0.259858, -0.948049,
		-0.611939, 0.724574, 0.317055,
		0.769321, 0.638331, 0.026050,
		34.497761, 33.296883, 19.040300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682648, 33.474792, 18.862951>,  <33.959236, 32.850052, 19.022066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682648, 33.474792, 18.862951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075283, 33.465923, 18.787066>,  <34.310863, 33.460602, 18.741535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075283, 33.465923, 18.787066>,  <33.682648, 33.474792, 18.862951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075283, 33.465923, 18.787066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172382, 0.324937, -0.929893,
		0.082263, 0.945476, 0.315133,
		0.981589, -0.022172, -0.189713,
		34.369759, 33.459270, 18.730152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658688, 33.996872, 18.441082>,  <33.682648, 33.474792, 18.862951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658688, 33.996872, 18.441082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997181, 33.790676, 18.387167>,  <34.200275, 33.666958, 18.354818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997181, 33.790676, 18.387167>,  <33.658688, 33.996872, 18.441082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997181, 33.790676, 18.387167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052410, 0.171215, -0.983839,
		0.530232, 0.839619, 0.117872,
		0.846231, -0.515485, -0.134788,
		34.251049, 33.636032, 18.346731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196644, 34.464344, 18.073473>,  <33.658688, 33.996872, 18.441082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196644, 34.464344, 18.073473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346977, 34.101830, 17.996134>,  <34.437180, 33.884319, 17.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346977, 34.101830, 17.996134>,  <34.196644, 34.464344, 18.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346977, 34.101830, 17.996134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035552, 0.194391, -0.980280,
		0.926004, 0.375299, 0.040839,
		0.375837, -0.906290, -0.193349,
		34.459728, 33.829941, 17.938129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737915, 34.669296, 17.783537>,  <34.196644, 34.464344, 18.073473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737915, 34.669296, 17.783537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653214, 34.292103, 17.680826>,  <34.602390, 34.065784, 17.619200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653214, 34.292103, 17.680826>,  <34.737915, 34.669296, 17.783537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653214, 34.292103, 17.680826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002586, 0.262194, -0.965012,
		0.977319, -0.205013, -0.053083,
		-0.211758, -0.942987, -0.256777,
		34.589687, 34.009205, 17.603792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132076, 34.638054, 17.231245>,  <34.737915, 34.669296, 17.783537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132076, 34.638054, 17.231245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878616, 34.332176, 17.184370>,  <34.726540, 34.148647, 17.156244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878616, 34.332176, 17.184370>,  <35.132076, 34.638054, 17.231245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878616, 34.332176, 17.184370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043581, 0.186523, -0.981483,
		0.772395, -0.616805, -0.151516,
		-0.633646, -0.764696, -0.117189,
		34.688522, 34.102768, 17.149214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429440, 34.198891, 16.693310>,  <35.132076, 34.638054, 17.231245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429440, 34.198891, 16.693310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036472, 34.131508, 16.725500>,  <34.800694, 34.091076, 16.744814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036472, 34.131508, 16.725500>,  <35.429440, 34.198891, 16.693310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036472, 34.131508, 16.725500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100105, 0.111475, -0.988712,
		0.157594, -0.979384, -0.126379,
		-0.982417, -0.168467, 0.080474,
		34.741745, 34.080971, 16.749643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372803, 33.956192, 16.106600>,  <35.429440, 34.198891, 16.693310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372803, 33.956192, 16.106600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990242, 34.044392, 16.183210>,  <34.760708, 34.097309, 16.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990242, 34.044392, 16.183210>,  <35.372803, 33.956192, 16.106600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990242, 34.044392, 16.183210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135444, 0.246135, -0.959725,
		-0.258757, -0.943821, -0.205538,
		-0.956400, 0.220497, 0.191525,
		34.703323, 34.110542, 16.240667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020023, 33.734829, 15.522578>,  <35.372803, 33.956192, 16.106600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020023, 33.734829, 15.522578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780022, 33.995380, 15.708351>,  <34.636021, 34.151711, 15.819815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780022, 33.995380, 15.708351>,  <35.020023, 33.734829, 15.522578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780022, 33.995380, 15.708351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196216, 0.442985, -0.874793,
		-0.775559, -0.616011, -0.137983,
		-0.600007, 0.651379, 0.464433,
		34.600021, 34.190796, 15.847681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573044, 34.341091, 15.211278>,  <35.020023, 33.734829, 15.522578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573044, 34.341091, 15.211278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380592, 34.294659, 14.863707>,  <34.265121, 34.266800, 14.655164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380592, 34.294659, 14.863707>,  <34.573044, 34.341091, 15.211278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380592, 34.294659, 14.863707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850186, 0.303485, 0.430210,
		0.213766, 0.945738, -0.244710,
		-0.481131, -0.116084, -0.868929,
		34.236252, 34.259834, 14.603028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211479, 34.817352, 15.151950>,  <34.573044, 34.341091, 15.211278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211479, 34.817352, 15.151950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030651, 34.539501, 14.928120>,  <33.922153, 34.372791, 14.793821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030651, 34.539501, 14.928120>,  <34.211479, 34.817352, 15.151950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030651, 34.539501, 14.928120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872153, 0.212672, 0.440590,
		-0.187041, 0.687211, -0.701966,
		-0.452067, -0.694630, -0.559575,
		33.895031, 34.331112, 14.760247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557301, 34.926548, 14.697111>,  <34.211479, 34.817352, 15.151950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557301, 34.926548, 14.697111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550816, 34.562199, 14.862058>,  <33.546925, 34.343590, 14.961026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550816, 34.562199, 14.862058>,  <33.557301, 34.926548, 14.697111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550816, 34.562199, 14.862058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875946, 0.211808, 0.433423,
		-0.482136, -0.354185, -0.801310,
		-0.016212, -0.910874, 0.412367,
		33.545952, 34.288937, 14.985767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907116, 34.498409, 14.615836>,  <33.557301, 34.926548, 14.697111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907116, 34.498409, 14.615836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093777, 34.463589, 14.967895>,  <33.205772, 34.442696, 15.179130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093777, 34.463589, 14.967895>,  <32.907116, 34.498409, 14.615836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093777, 34.463589, 14.967895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870615, 0.130049, 0.474465,
		-0.155763, -0.987679, -0.015098,
		0.466656, -0.087049, 0.880145,
		33.233772, 34.437473, 15.231938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349331, 34.636547, 15.161749>,  <32.907116, 34.498409, 14.615836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349331, 34.636547, 15.161749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677952, 34.506897, 15.349362>,  <32.875126, 34.429108, 15.461930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677952, 34.506897, 15.349362>,  <32.349331, 34.636547, 15.161749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677952, 34.506897, 15.349362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519834, -0.088003, 0.849722,
		-0.234137, -0.941913, -0.240788,
		0.821555, -0.324121, 0.469034,
		32.924419, 34.409660, 15.490072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274731, 34.035896, 15.551538>,  <32.349331, 34.636547, 15.161749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274731, 34.035896, 15.551538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595200, 34.172173, 15.748331>,  <32.787483, 34.253941, 15.866407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595200, 34.172173, 15.748331>,  <32.274731, 34.035896, 15.551538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595200, 34.172173, 15.748331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385902, -0.334218, 0.859871,
		0.457383, -0.878764, -0.136292,
		0.801175, 0.340694, 0.491983,
		32.835552, 34.274380, 15.895926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661711, 34.414917, 15.128847>,  <32.274731, 34.035896, 15.551538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661711, 34.414917, 15.128847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466627, 34.310307, 15.462013>,  <31.349577, 34.247540, 15.661913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466627, 34.310307, 15.462013>,  <31.661711, 34.414917, 15.128847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466627, 34.310307, 15.462013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430357, 0.758074, 0.490017,
		-0.759561, 0.597436, -0.257171,
		-0.487708, -0.261523, 0.832914,
		31.320314, 34.231850, 15.711887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289595, 34.972122, 15.384140>,  <31.661711, 34.414917, 15.128847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289595, 34.972122, 15.384140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397734, 34.750340, 15.698972>,  <31.462618, 34.617271, 15.887871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397734, 34.750340, 15.698972>,  <31.289595, 34.972122, 15.384140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397734, 34.750340, 15.698972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517003, 0.773255, 0.367131,
		-0.812169, 0.307669, 0.495703,
		0.270350, -0.554452, 0.787079,
		31.478838, 34.584003, 15.935096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215786, 35.380894, 15.913161>,  <31.289595, 34.972122, 15.384140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215786, 35.380894, 15.913161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445833, 35.088905, 16.060883>,  <31.583862, 34.913712, 16.149515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445833, 35.088905, 16.060883>,  <31.215786, 35.380894, 15.913161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445833, 35.088905, 16.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475866, 0.665713, 0.574784,
		-0.665424, -0.154831, 0.730232,
		0.575120, -0.729968, 0.369302,
		31.618370, 34.869915, 16.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497553, 35.965939, 16.334156>,  <31.215786, 35.380894, 15.913161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497553, 35.965939, 16.334156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665403, 35.606041, 16.382128>,  <31.766113, 35.390102, 16.410912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665403, 35.606041, 16.382128>,  <31.497553, 35.965939, 16.334156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665403, 35.606041, 16.382128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598783, 0.373687, 0.708390,
		-0.682182, -0.225447, 0.695558,
		0.419626, -0.899740, 0.119929,
		31.791290, 35.336121, 16.418106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327581, 35.743191, 17.073914>,  <31.497553, 35.965939, 16.334156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327581, 35.743191, 17.073914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675461, 35.617687, 16.921503>,  <31.884188, 35.542385, 16.830057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675461, 35.617687, 16.921503>,  <31.327581, 35.743191, 17.073914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675461, 35.617687, 16.921503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454499, 0.208000, 0.866122,
		-0.192501, -0.926440, 0.323501,
		0.869698, -0.313760, -0.381026,
		31.936371, 35.523560, 16.807196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532104, 35.362392, 17.514153>,  <31.327581, 35.743191, 17.073914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532104, 35.362392, 17.514153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876963, 35.474327, 17.345203>,  <32.083878, 35.541489, 17.243834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876963, 35.474327, 17.345203>,  <31.532104, 35.362392, 17.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876963, 35.474327, 17.345203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347036, 0.281228, 0.894694,
		0.369153, -0.917933, 0.145345,
		0.862144, 0.279839, -0.422372,
		32.135605, 35.558277, 17.218493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048840, 35.033428, 17.906067>,  <31.532104, 35.362392, 17.514153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048840, 35.033428, 17.906067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253666, 35.324345, 17.723274>,  <32.376560, 35.498894, 17.613598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253666, 35.324345, 17.723274>,  <32.048840, 35.033428, 17.906067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253666, 35.324345, 17.723274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520418, 0.160559, 0.838682,
		0.683339, -0.667282, -0.296280,
		0.512067, 0.727293, -0.456981,
		32.407288, 35.542534, 17.586180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864868, 34.925091, 18.057413>,  <32.048840, 35.033428, 17.906067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864868, 34.925091, 18.057413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811226, 35.307701, 17.953819>,  <32.779041, 35.537266, 17.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811226, 35.307701, 17.953819>,  <32.864868, 34.925091, 18.057413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811226, 35.307701, 17.953819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525773, 0.290208, 0.799589,
		0.839988, -0.028940, -0.541833,
		-0.134104, 0.956526, -0.258987,
		32.770996, 35.594658, 17.876123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529579, 35.214447, 18.182756>,  <32.864868, 34.925091, 18.057413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529579, 35.214447, 18.182756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295574, 35.537827, 18.156940>,  <33.155170, 35.731853, 18.141451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295574, 35.537827, 18.156940>,  <33.529579, 35.214447, 18.182756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295574, 35.537827, 18.156940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336065, 0.314067, 0.887931,
		0.738119, 0.497762, -0.455426,
		-0.585013, 0.808452, -0.064538,
		33.120071, 35.780361, 18.137579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999557, 35.825279, 18.325695>,  <33.529579, 35.214447, 18.182756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999557, 35.825279, 18.325695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621891, 35.926399, 18.410215>,  <33.395290, 35.987072, 18.460928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621891, 35.926399, 18.410215>,  <33.999557, 35.825279, 18.325695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621891, 35.926399, 18.410215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300851, 0.400029, 0.865716,
		0.134327, 0.880948, -0.453748,
		-0.944163, 0.252800, 0.211300,
		33.338642, 36.002239, 18.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041698, 36.446945, 18.484762>,  <33.999557, 35.825279, 18.325695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041698, 36.446945, 18.484762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695950, 36.320263, 18.640999>,  <33.488503, 36.244251, 18.734741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695950, 36.320263, 18.640999>,  <34.041698, 36.446945, 18.484762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695950, 36.320263, 18.640999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334573, 0.217657, 0.916889,
		-0.375402, 0.923212, -0.082174,
		-0.864369, -0.316709, 0.390591,
		33.436638, 36.225250, 18.758177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723164, 37.036438, 18.910582>,  <34.041698, 36.446945, 18.484762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723164, 37.036438, 18.910582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583134, 36.696198, 19.067513>,  <33.499115, 36.492054, 19.161671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583134, 36.696198, 19.067513>,  <33.723164, 37.036438, 18.910582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583134, 36.696198, 19.067513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282950, 0.303240, 0.909937,
		-0.892965, 0.429555, 0.134522,
		-0.350076, -0.850605, 0.392325,
		33.478111, 36.441017, 19.185209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493027, 37.264351, 19.586590>,  <33.723164, 37.036438, 18.910582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493027, 37.264351, 19.586590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513859, 36.866730, 19.624851>,  <33.526360, 36.628159, 19.647808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513859, 36.866730, 19.624851>,  <33.493027, 37.264351, 19.586590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513859, 36.866730, 19.624851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136458, 0.101971, 0.985384,
		-0.989276, -0.038270, 0.140957,
		0.052084, -0.994051, 0.095656,
		33.529484, 36.568516, 19.653547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096058, 37.093719, 20.172468>,  <33.493027, 37.264351, 19.586590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096058, 37.093719, 20.172468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340813, 36.786114, 20.098486>,  <33.487667, 36.601551, 20.054096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340813, 36.786114, 20.098486>,  <33.096058, 37.093719, 20.172468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340813, 36.786114, 20.098486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231898, -0.049136, 0.971498,
		-0.756187, -0.637336, 0.148268,
		0.611885, -0.769018, -0.184954,
		33.524380, 36.555408, 20.042999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999130, 36.715839, 20.725040>,  <33.096058, 37.093719, 20.172468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999130, 36.715839, 20.725040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340881, 36.564655, 20.582384>,  <33.545933, 36.473946, 20.496790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340881, 36.564655, 20.582384>,  <32.999130, 36.715839, 20.725040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340881, 36.564655, 20.582384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385525, 0.000820, 0.922697,
		-0.348448, -0.925823, 0.146413,
		0.854374, -0.377957, -0.356643,
		33.597195, 36.451267, 20.475391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079029, 36.139580, 21.097513>,  <32.999130, 36.715839, 20.725040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079029, 36.139580, 21.097513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430992, 36.252544, 20.944668>,  <33.642170, 36.320324, 20.852961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430992, 36.252544, 20.944668>,  <33.079029, 36.139580, 21.097513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430992, 36.252544, 20.944668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428608, -0.124628, 0.894854,
		0.205095, -0.951163, -0.230705,
		0.879904, 0.282412, -0.382115,
		33.694962, 36.337269, 20.830032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549374, 35.580055, 21.282080>,  <33.079029, 36.139580, 21.097513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549374, 35.580055, 21.282080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754303, 35.915497, 21.208035>,  <33.877262, 36.116760, 21.163607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754303, 35.915497, 21.208035>,  <33.549374, 35.580055, 21.282080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754303, 35.915497, 21.208035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473511, -0.096014, 0.875539,
		0.716457, -0.536214, -0.446278,
		0.512325, 0.838604, -0.185113,
		33.908001, 36.167076, 21.152500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222099, 35.425930, 21.497215>,  <33.549374, 35.580055, 21.282080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222099, 35.425930, 21.497215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195663, 35.824780, 21.482389>,  <34.179802, 36.064091, 21.473494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195663, 35.824780, 21.482389>,  <34.222099, 35.425930, 21.497215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195663, 35.824780, 21.482389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612806, 0.069875, 0.787138,
		0.787465, 0.029309, -0.615662,
		-0.066090, 0.997125, -0.037064,
		34.175835, 36.123917, 21.471270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011715, 35.722084, 21.476753>,  <34.222099, 35.425930, 21.497215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011715, 35.722084, 21.476753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757832, 35.989658, 21.631502>,  <34.605499, 36.150204, 21.724352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757832, 35.989658, 21.631502>,  <35.011715, 35.722084, 21.476753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757832, 35.989658, 21.631502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572140, 0.070287, 0.817138,
		0.519420, 0.739991, -0.427336,
		-0.634711, 0.668935, 0.386870,
		34.567417, 36.190338, 21.747562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519222, 36.031719, 21.904196>,  <35.011715, 35.722084, 21.476753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519222, 36.031719, 21.904196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156628, 36.142906, 22.031326>,  <34.939072, 36.209618, 22.107605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156628, 36.142906, 22.031326>,  <35.519222, 36.031719, 21.904196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156628, 36.142906, 22.031326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351985, 0.081728, 0.932431,
		0.233212, 0.957107, -0.171926,
		-0.906487, 0.277970, 0.317827,
		34.884682, 36.226295, 22.126675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670055, 36.635777, 22.258339>,  <35.519222, 36.031719, 21.904196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670055, 36.635777, 22.258339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317764, 36.497726, 22.388081>,  <35.106388, 36.414898, 22.465925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317764, 36.497726, 22.388081>,  <35.670055, 36.635777, 22.258339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317764, 36.497726, 22.388081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356857, -0.033288, 0.933566,
		-0.311399, 0.937966, 0.152478,
		-0.880729, -0.345124, 0.324354,
		35.053547, 36.394188, 22.485386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622959, 36.935596, 22.923107>,  <35.670055, 36.635777, 22.258339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622959, 36.935596, 22.923107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344097, 36.649033, 22.933956>,  <35.176781, 36.477097, 22.940466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344097, 36.649033, 22.933956>,  <35.622959, 36.935596, 22.923107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344097, 36.649033, 22.933956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349941, -0.307030, 0.885028,
		-0.625710, 0.626495, 0.464748,
		-0.697157, -0.716405, 0.027125,
		35.134949, 36.434113, 22.942093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218307, 37.018520, 23.535112>,  <35.622959, 36.935596, 22.923107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218307, 37.018520, 23.535112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154217, 36.631367, 23.457617>,  <35.115761, 36.399075, 23.411119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154217, 36.631367, 23.457617>,  <35.218307, 37.018520, 23.535112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154217, 36.631367, 23.457617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188555, -0.222673, 0.956485,
		-0.968903, 0.116726, 0.218177,
		-0.160229, -0.967880, -0.193740,
		35.106148, 36.341003, 23.399494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808472, 36.692459, 24.094555>,  <35.218307, 37.018520, 23.535112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808472, 36.692459, 24.094555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992519, 36.381897, 23.922285>,  <35.102947, 36.195560, 23.818924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992519, 36.381897, 23.922285>,  <34.808472, 36.692459, 24.094555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992519, 36.381897, 23.922285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257470, -0.347547, 0.901621,
		-0.849705, -0.525741, 0.039987,
		0.460121, -0.776407, -0.430675,
		35.130554, 36.148975, 23.793083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544548, 36.081749, 24.507578>,  <34.808472, 36.692459, 24.094555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544548, 36.081749, 24.507578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844326, 35.920704, 24.297346>,  <35.024193, 35.824078, 24.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844326, 35.920704, 24.297346>,  <34.544548, 36.081749, 24.507578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844326, 35.920704, 24.297346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168608, -0.651607, 0.739581,
		-0.640215, -0.642904, -0.420475,
		0.749464, -0.402595, -0.525568,
		35.069160, 35.799919, 24.139673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513565, 35.413181, 24.491024>,  <34.544548, 36.081749, 24.507578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513565, 35.413181, 24.491024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904396, 35.478603, 24.436525>,  <35.138897, 35.517857, 24.403826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904396, 35.478603, 24.436525>,  <34.513565, 35.413181, 24.491024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904396, 35.478603, 24.436525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209065, -0.616790, 0.758855,
		0.040079, -0.769947, -0.636848,
		0.977080, 0.163557, -0.136249,
		35.197521, 35.527672, 24.395651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764282, 34.744202, 24.525473>,  <34.513565, 35.413181, 24.491024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764282, 34.744202, 24.525473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083538, 34.980705, 24.571756>,  <35.275089, 35.122608, 24.599527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083538, 34.980705, 24.571756>,  <34.764282, 34.744202, 24.525473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083538, 34.980705, 24.571756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372764, -0.635508, 0.676148,
		0.473316, -0.496525, -0.727623,
		0.798135, 0.591263, 0.115709,
		35.322979, 35.158085, 24.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351631, 34.247837, 24.510330>,  <34.764282, 34.744202, 24.525473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351631, 34.247837, 24.510330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438766, 34.598572, 24.681770>,  <35.491047, 34.809013, 24.784634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438766, 34.598572, 24.681770>,  <35.351631, 34.247837, 24.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438766, 34.598572, 24.681770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390354, -0.480767, 0.785167,
		0.894523, -0.003733, -0.447007,
		0.217837, 0.876841, 0.428599,
		35.504116, 34.861626, 24.810350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139866, 34.232216, 24.772352>,  <35.351631, 34.247837, 24.510330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139866, 34.232216, 24.772352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924629, 34.504269, 24.971502>,  <35.795486, 34.667500, 25.090992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924629, 34.504269, 24.971502>,  <36.139866, 34.232216, 24.772352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924629, 34.504269, 24.971502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286362, -0.408032, 0.866895,
		0.792749, 0.609044, 0.024797,
		-0.538095, 0.680129, 0.497874,
		35.763203, 34.708309, 25.120865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493286, 34.388737, 25.379187>,  <36.139866, 34.232216, 24.772352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493286, 34.388737, 25.379187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133911, 34.548374, 25.452440>,  <35.918285, 34.644157, 25.496393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133911, 34.548374, 25.452440>,  <36.493286, 34.388737, 25.379187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133911, 34.548374, 25.452440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061428, -0.298731, 0.952358,
		0.434787, 0.866882, 0.243876,
		-0.898436, 0.399092, 0.183136,
		35.864380, 34.668102, 25.507381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510765, 34.755192, 26.128519>,  <36.493286, 34.388737, 25.379187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510765, 34.755192, 26.128519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115814, 34.706661, 26.087780>,  <35.878845, 34.677544, 26.063337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115814, 34.706661, 26.087780>,  <36.510765, 34.755192, 26.128519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115814, 34.706661, 26.087780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069105, -0.248615, 0.966134,
		-0.142541, 0.960973, 0.237092,
		-0.987374, -0.121329, -0.101846,
		35.819603, 34.670261, 26.057226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218758, 34.969570, 26.717043>,  <36.510765, 34.755192, 26.128519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218758, 34.969570, 26.717043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897198, 34.779175, 26.574394>,  <35.704262, 34.664940, 26.488806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897198, 34.779175, 26.574394>,  <36.218758, 34.969570, 26.717043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897198, 34.779175, 26.574394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316133, -0.165924, 0.934093,
		-0.503787, 0.863659, -0.017088,
		-0.803902, -0.475986, -0.356622,
		35.656029, 34.636379, 26.467407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788300, 35.172745, 27.108965>,  <36.218758, 34.969570, 26.717043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788300, 35.172745, 27.108965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660175, 34.825642, 26.956970>,  <35.583302, 34.617378, 26.865772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660175, 34.825642, 26.956970>,  <35.788300, 35.172745, 27.108965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660175, 34.825642, 26.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378702, -0.250381, 0.891008,
		-0.868324, 0.429301, -0.248423,
		-0.320310, -0.867762, -0.379989,
		35.564083, 34.565311, 26.842974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093540, 35.052437, 27.420374>,  <35.788300, 35.172745, 27.108965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093540, 35.052437, 27.420374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228298, 34.698788, 27.290863>,  <35.309155, 34.486599, 27.213156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228298, 34.698788, 27.290863>,  <35.093540, 35.052437, 27.420374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228298, 34.698788, 27.290863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164156, -0.393767, 0.904434,
		-0.927122, -0.251549, -0.277792,
		0.336895, -0.884121, -0.323776,
		35.329365, 34.433552, 27.193729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646042, 34.583008, 27.721861>,  <35.093540, 35.052437, 27.420374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646042, 34.583008, 27.721861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979923, 34.378857, 27.639132>,  <35.180252, 34.256367, 27.589493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979923, 34.378857, 27.639132>,  <34.646042, 34.583008, 27.721861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979923, 34.378857, 27.639132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027997, -0.335755, 0.941533,
		-0.549985, -0.791693, -0.265967,
		0.834705, -0.510382, -0.206825,
		35.230335, 34.225742, 27.577084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512917, 34.017303, 27.983818>,  <34.646042, 34.583008, 27.721861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512917, 34.017303, 27.983818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902538, 33.984459, 27.899458>,  <35.136311, 33.964752, 27.848843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902538, 33.984459, 27.899458>,  <34.512917, 34.017303, 27.983818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902538, 33.984459, 27.899458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146928, -0.479358, 0.865233,
		-0.172147, -0.873769, -0.454854,
		0.974052, -0.082116, -0.210901,
		35.194756, 33.959824, 27.836187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680271, 33.359730, 28.235565>,  <34.512917, 34.017303, 27.983818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680271, 33.359730, 28.235565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034348, 33.545547, 28.225439>,  <35.246792, 33.657040, 28.219364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034348, 33.545547, 28.225439>,  <34.680271, 33.359730, 28.235565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034348, 33.545547, 28.225439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261607, -0.452020, 0.852783,
		0.384713, -0.761496, -0.521651,
		0.885188, 0.464545, -0.025315,
		35.299904, 33.684910, 28.217844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128181, 32.911213, 28.406881>,  <34.680271, 33.359730, 28.235565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128181, 32.911213, 28.406881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311913, 33.257771, 28.485245>,  <35.422150, 33.465706, 28.532263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311913, 33.257771, 28.485245>,  <35.128181, 32.911213, 28.406881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311913, 33.257771, 28.485245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339158, -0.374900, 0.862799,
		0.820971, -0.329860, -0.466046,
		0.459324, 0.866396, 0.195908,
		35.449711, 33.517689, 28.544018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751053, 32.726624, 28.766781>,  <35.128181, 32.911213, 28.406881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751053, 32.726624, 28.766781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741051, 33.121071, 28.832430>,  <35.735050, 33.357738, 28.871820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741051, 33.121071, 28.832430>,  <35.751053, 32.726624, 28.766781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741051, 33.121071, 28.832430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349510, -0.145191, 0.925615,
		0.936599, 0.080509, -0.341029,
		-0.025006, 0.986123, 0.164124,
		35.733547, 33.416908, 28.881666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344151, 32.921043, 29.137136>,  <35.751053, 32.726624, 28.766781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344151, 32.921043, 29.137136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066410, 33.197800, 29.216291>,  <35.899765, 33.363853, 29.263784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066410, 33.197800, 29.216291>,  <36.344151, 32.921043, 29.137136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066410, 33.197800, 29.216291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322112, 0.052917, 0.945222,
		0.643518, 0.720061, -0.259609,
		-0.694355, 0.691890, 0.197887,
		35.858105, 33.405365, 29.275658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695793, 33.474644, 29.395981>,  <36.344151, 32.921043, 29.137136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695793, 33.474644, 29.395981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321510, 33.518101, 29.530235>,  <36.096943, 33.544174, 29.610788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321510, 33.518101, 29.530235>,  <36.695793, 33.474644, 29.395981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321510, 33.518101, 29.530235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344475, 0.076109, 0.935705,
		0.076109, 0.991163, -0.108639,
		-0.935705, 0.108639, 0.335639,
		36.040798, 33.550694, 29.630926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632225, 33.956478, 29.924873>,  <36.695793, 33.474644, 29.395981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632225, 33.956478, 29.924873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293804, 33.753468, 29.990133>,  <36.090752, 33.631660, 30.029289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293804, 33.753468, 29.990133>,  <36.632225, 33.956478, 29.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293804, 33.753468, 29.990133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196373, -0.012182, 0.980453,
		-0.495622, 0.861548, 0.109972,
		-0.846048, -0.507530, 0.163148,
		36.039989, 33.601208, 30.039078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412941, 34.317772, 30.546734>,  <36.632225, 33.956478, 29.924873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412941, 34.317772, 30.546734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190434, 33.986286, 30.522093>,  <36.056927, 33.787395, 30.507309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190434, 33.986286, 30.522093>,  <36.412941, 34.317772, 30.546734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190434, 33.986286, 30.522093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062613, -0.115717, 0.991307,
		-0.828638, 0.547579, 0.116258,
		-0.556272, -0.828714, -0.061602,
		36.023552, 33.737671, 30.503613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888351, 34.448753, 30.918907>,  <36.412941, 34.317772, 30.546734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888351, 34.448753, 30.918907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963432, 34.056458, 30.897282>,  <36.008480, 33.821079, 30.884306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963432, 34.056458, 30.897282>,  <35.888351, 34.448753, 30.918907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963432, 34.056458, 30.897282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109399, -0.033825, 0.993422,
		-0.976115, -0.192383, 0.100943,
		0.187703, -0.980737, -0.054063,
		36.019745, 33.762238, 30.881063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942505, 35.199265, 30.626961>,  <35.888351, 34.448753, 30.918907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942505, 35.199265, 30.626961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108154, 35.562893, 30.645281>,  <36.207542, 35.781071, 30.656273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108154, 35.562893, 30.645281>,  <35.942505, 35.199265, 30.626961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108154, 35.562893, 30.645281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274337, 0.172633, -0.946011,
		-0.867896, 0.379197, 0.320882,
		0.414120, 0.909070, 0.045800,
		36.232391, 35.835613, 30.659021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446331, 35.661705, 30.345268>,  <35.942505, 35.199265, 30.626961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446331, 35.661705, 30.345268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790710, 35.861324, 30.305828>,  <35.997337, 35.981094, 30.282164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790710, 35.861324, 30.305828>,  <35.446331, 35.661705, 30.345268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790710, 35.861324, 30.305828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313348, 0.367581, -0.875612,
		-0.400726, 0.784754, 0.472843,
		0.860948, 0.499045, -0.098602,
		36.048996, 36.011036, 30.276247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204262, 36.399212, 30.155678>,  <35.446331, 35.661705, 30.345268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204262, 36.399212, 30.155678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590443, 36.358536, 30.059717>,  <35.822151, 36.334129, 30.002140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590443, 36.358536, 30.059717>,  <35.204262, 36.399212, 30.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590443, 36.358536, 30.059717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196167, 0.322335, -0.926077,
		0.171501, 0.941148, 0.291252,
		0.965456, -0.101689, -0.239903,
		35.880081, 36.328030, 29.987747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427902, 37.065460, 29.862738>,  <35.204262, 36.399212, 30.155678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427902, 37.065460, 29.862738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675632, 36.788769, 29.714170>,  <35.824272, 36.622753, 29.625031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675632, 36.788769, 29.714170>,  <35.427902, 37.065460, 29.862738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675632, 36.788769, 29.714170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267611, 0.258756, -0.928133,
		0.738121, 0.674211, -0.024860,
		0.619324, -0.691727, -0.371419,
		35.861431, 36.581249, 29.602745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816654, 37.488789, 29.442190>,  <35.427902, 37.065460, 29.862738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816654, 37.488789, 29.442190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886898, 37.113712, 29.322254>,  <35.929043, 36.888668, 29.250294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886898, 37.113712, 29.322254>,  <35.816654, 37.488789, 29.442190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886898, 37.113712, 29.322254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090403, 0.287924, -0.953377,
		0.980300, 0.194529, -0.034208,
		0.175610, -0.937688, -0.299838,
		35.939583, 36.832405, 29.232304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351585, 37.597137, 28.940834>,  <35.816654, 37.488789, 29.442190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351585, 37.597137, 28.940834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205429, 37.231979, 28.868052>,  <36.117737, 37.012882, 28.824383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205429, 37.231979, 28.868052>,  <36.351585, 37.597137, 28.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205429, 37.231979, 28.868052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227894, 0.277250, -0.933379,
		0.902528, -0.299578, -0.309348,
		-0.365387, -0.912899, -0.181954,
		36.095814, 36.958111, 28.813465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750336, 37.429756, 28.397810>,  <36.351585, 37.597137, 28.940834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750336, 37.429756, 28.397810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421146, 37.202717, 28.388432>,  <36.223633, 37.066494, 28.382805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421146, 37.202717, 28.388432>,  <36.750336, 37.429756, 28.397810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421146, 37.202717, 28.388432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084698, 0.163410, -0.982916,
		0.561733, -0.806926, -0.182556,
		-0.822971, -0.567599, -0.023447,
		36.174255, 37.032436, 28.381397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699631, 37.048306, 27.759649>,  <36.750336, 37.429756, 28.397810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699631, 37.048306, 27.759649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312134, 37.003021, 27.847948>,  <36.079636, 36.975849, 27.900928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312134, 37.003021, 27.847948>,  <36.699631, 37.048306, 27.759649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312134, 37.003021, 27.847948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247423, 0.375892, -0.893022,
		0.018122, -0.919722, -0.392151,
		-0.968738, -0.113210, 0.220748,
		36.021511, 36.969059, 27.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447559, 36.883167, 27.180960>,  <36.699631, 37.048306, 27.759649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447559, 36.883167, 27.180960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135109, 37.007641, 27.397480>,  <35.947639, 37.082325, 27.527393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135109, 37.007641, 27.397480>,  <36.447559, 36.883167, 27.180960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135109, 37.007641, 27.397480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437366, 0.346010, -0.830053,
		-0.445592, -0.885124, -0.134179,
		-0.781127, 0.311180, 0.541302,
		35.900772, 37.100994, 27.559870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928741, 36.545223, 26.864630>,  <36.447559, 36.883167, 27.180960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928741, 36.545223, 26.864630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798252, 36.870823, 27.056873>,  <35.719959, 37.066181, 27.172218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798252, 36.870823, 27.056873>,  <35.928741, 36.545223, 26.864630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798252, 36.870823, 27.056873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431919, 0.323892, -0.841748,
		-0.840847, -0.482182, 0.245920,
		-0.326224, 0.813999, 0.480607,
		35.700386, 37.115021, 27.201056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159092, 36.644302, 26.708294>,  <35.928741, 36.545223, 26.864630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159092, 36.644302, 26.708294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291527, 36.996250, 26.844648>,  <35.370987, 37.207420, 26.926460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291527, 36.996250, 26.844648>,  <35.159092, 36.644302, 26.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291527, 36.996250, 26.844648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395700, 0.457427, -0.796355,
		-0.856623, 0.128774, 0.499614,
		0.331087, 0.879874, 0.340886,
		35.390854, 37.260212, 26.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536655, 37.156155, 26.654913>,  <35.159092, 36.644302, 26.708294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536655, 37.156155, 26.654913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855991, 37.394012, 26.692963>,  <35.047592, 37.536728, 26.715792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855991, 37.394012, 26.692963>,  <34.536655, 37.156155, 26.654913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855991, 37.394012, 26.692963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318941, 0.551497, -0.770797,
		-0.510810, 0.585020, 0.629940,
		0.798342, 0.594645, 0.095123,
		35.095493, 37.572407, 26.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283657, 37.822845, 26.566160>,  <34.536655, 37.156155, 26.654913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283657, 37.822845, 26.566160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673798, 37.865555, 26.488911>,  <34.907883, 37.891182, 26.442560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673798, 37.865555, 26.488911>,  <34.283657, 37.822845, 26.566160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673798, 37.865555, 26.488911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215352, 0.651662, -0.727296,
		0.048194, 0.750956, 0.658591,
		0.975347, 0.106778, -0.193126,
		34.966400, 37.897587, 26.430973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374958, 38.575695, 26.494535>,  <34.283657, 37.822845, 26.566160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374958, 38.575695, 26.494535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671104, 38.404297, 26.287365>,  <34.848793, 38.301460, 26.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671104, 38.404297, 26.287365>,  <34.374958, 38.575695, 26.494535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671104, 38.404297, 26.287365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225069, 0.568002, -0.791655,
		0.633402, 0.702686, 0.324090,
		0.740369, -0.428493, -0.517926,
		34.893215, 38.275749, 26.131987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492828, 39.096218, 26.095156>,  <34.374958, 38.575695, 26.494535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492828, 39.096218, 26.095156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686714, 38.785248, 25.934824>,  <34.803043, 38.598667, 25.838625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686714, 38.785248, 25.934824>,  <34.492828, 39.096218, 26.095156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686714, 38.785248, 25.934824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125168, 0.391892, -0.911457,
		0.865673, 0.491963, 0.092645,
		0.484710, -0.777427, -0.400828,
		34.832127, 38.552021, 25.814575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001007, 39.410191, 25.517691>,  <34.492828, 39.096218, 26.095156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001007, 39.410191, 25.517691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958916, 39.020554, 25.437622>,  <34.933662, 38.786770, 25.389582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958916, 39.020554, 25.437622>,  <35.001007, 39.410191, 25.517691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958916, 39.020554, 25.437622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145056, 0.214169, -0.965966,
		0.983812, -0.072612, -0.163835,
		-0.105229, -0.974094, -0.200170,
		34.927345, 38.728325, 25.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440979, 39.232887, 24.971096>,  <35.001007, 39.410191, 25.517691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440979, 39.232887, 24.971096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154045, 38.954300, 24.978714>,  <34.981884, 38.787148, 24.983286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154045, 38.954300, 24.978714>,  <35.440979, 39.232887, 24.971096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154045, 38.954300, 24.978714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102615, 0.078572, -0.991613,
		0.689129, -0.713275, -0.127831,
		-0.717336, -0.696466, 0.019047,
		34.938843, 38.745361, 24.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599792, 38.754803, 24.473436>,  <35.440979, 39.232887, 24.971096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599792, 38.754803, 24.473436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204994, 38.710918, 24.520443>,  <34.968117, 38.684589, 24.548647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204994, 38.710918, 24.520443>,  <35.599792, 38.754803, 24.473436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204994, 38.710918, 24.520443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112839, -0.047920, -0.992457,
		0.114517, -0.992808, 0.034917,
		-0.986992, -0.109713, 0.117515,
		34.908897, 38.678005, 24.555696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379662, 38.161285, 24.179419>,  <35.599792, 38.754803, 24.473436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379662, 38.161285, 24.179419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036404, 38.363884, 24.213001>,  <34.830448, 38.485443, 24.233150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036404, 38.363884, 24.213001>,  <35.379662, 38.161285, 24.179419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036404, 38.363884, 24.213001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188413, -0.158571, -0.969204,
		-0.477588, -0.847534, 0.231507,
		-0.858143, 0.506499, 0.083954,
		34.778961, 38.515835, 24.238188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928432, 37.870392, 23.665569>,  <35.379662, 38.161285, 24.179419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928432, 37.870392, 23.665569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742611, 38.215477, 23.745491>,  <34.631119, 38.422527, 23.793444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742611, 38.215477, 23.745491>,  <34.928432, 37.870392, 23.665569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742611, 38.215477, 23.745491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170587, 0.134223, -0.976158,
		-0.868961, -0.487558, 0.084814,
		-0.464550, 0.862711, 0.199806,
		34.603245, 38.474289, 23.805433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325863, 37.896976, 23.253054>,  <34.928432, 37.870392, 23.665569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325863, 37.896976, 23.253054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364517, 38.281631, 23.355755>,  <34.387711, 38.512424, 23.417376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364517, 38.281631, 23.355755>,  <34.325863, 37.896976, 23.253054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364517, 38.281631, 23.355755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156052, 0.269410, -0.950298,
		-0.983011, 0.051763, 0.176098,
		0.096633, 0.961633, 0.256755,
		34.393509, 38.570122, 23.432781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743916, 38.299839, 23.051140>,  <34.325863, 37.896976, 23.253054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743916, 38.299839, 23.051140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059750, 38.544201, 23.074272>,  <34.249252, 38.690819, 23.088152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059750, 38.544201, 23.074272>,  <33.743916, 38.299839, 23.051140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059750, 38.544201, 23.074272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148222, 0.281322, -0.948097,
		-0.595469, 0.740034, 0.312678,
		0.789587, 0.610908, 0.057829,
		34.296627, 38.727474, 23.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562439, 38.824745, 22.644058>,  <33.743916, 38.299839, 23.051140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562439, 38.824745, 22.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959019, 38.822678, 22.696211>,  <34.196968, 38.821438, 22.727503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959019, 38.822678, 22.696211>,  <33.562439, 38.824745, 22.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959019, 38.822678, 22.696211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130472, 0.053332, -0.990017,
		-0.001837, 0.998564, 0.053551,
		0.991450, -0.005168, 0.130383,
		34.256454, 38.821129, 22.735325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756069, 39.203152, 22.084396>,  <33.562439, 38.824745, 22.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756069, 39.203152, 22.084396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122398, 39.096073, 22.204132>,  <34.342197, 39.031826, 22.275972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122398, 39.096073, 22.204132>,  <33.756069, 39.203152, 22.084396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122398, 39.096073, 22.204132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336361, 0.104147, -0.935957,
		0.219379, 0.957858, 0.185423,
		0.915824, -0.267698, 0.299338,
		34.397144, 39.015762, 22.293934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296474, 39.718674, 21.733461>,  <33.756069, 39.203152, 22.084396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296474, 39.718674, 21.733461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454651, 39.366405, 21.837809>,  <34.549557, 39.155045, 21.900417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454651, 39.366405, 21.837809>,  <34.296474, 39.718674, 21.733461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454651, 39.366405, 21.837809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383553, -0.099737, -0.918118,
		0.834575, 0.463117, 0.298343,
		0.395440, -0.880668, 0.260867,
		34.573284, 39.102203, 21.916069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063423, 39.719650, 21.478249>,  <34.296474, 39.718674, 21.733461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063423, 39.719650, 21.478249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934113, 39.343555, 21.521030>,  <34.856525, 39.117897, 21.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934113, 39.343555, 21.521030>,  <35.063423, 39.719650, 21.478249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934113, 39.343555, 21.521030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367056, -0.228766, -0.901630,
		0.872215, -0.252222, 0.419076,
		-0.323281, -0.940240, 0.106954,
		34.837128, 39.061485, 21.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618084, 39.241192, 21.438086>,  <35.063423, 39.719650, 21.478249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618084, 39.241192, 21.438086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295837, 39.019279, 21.354948>,  <35.102489, 38.886131, 21.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295837, 39.019279, 21.354948>,  <35.618084, 39.241192, 21.438086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295837, 39.019279, 21.354948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362532, -0.184179, -0.913591,
		0.468563, -0.811354, 0.349503,
		-0.805618, -0.554781, -0.207842,
		35.054153, 38.852844, 21.292595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875965, 38.639828, 20.970440>,  <35.618084, 39.241192, 21.438086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875965, 38.639828, 20.970440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480343, 38.670517, 20.920017>,  <35.242970, 38.688931, 20.889765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480343, 38.670517, 20.920017>,  <35.875965, 38.639828, 20.970440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480343, 38.670517, 20.920017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107141, -0.214047, -0.970930,
		-0.101471, -0.973806, 0.203484,
		-0.989052, 0.076720, -0.126055,
		35.183628, 38.693535, 20.882200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756474, 37.982738, 20.658100>,  <35.875965, 38.639828, 20.970440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756474, 37.982738, 20.658100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446377, 38.222107, 20.577217>,  <35.260319, 38.365730, 20.528687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446377, 38.222107, 20.577217>,  <35.756474, 37.982738, 20.658100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446377, 38.222107, 20.577217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048675, -0.375766, -0.925435,
		-0.629786, -0.707595, 0.320438,
		-0.775242, 0.598423, -0.202210,
		35.213802, 38.401634, 20.516554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374371, 37.543346, 20.255947>,  <35.756474, 37.982738, 20.658100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374371, 37.543346, 20.255947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230038, 37.897167, 20.137716>,  <35.143436, 38.109459, 20.066778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230038, 37.897167, 20.137716>,  <35.374371, 37.543346, 20.255947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230038, 37.897167, 20.137716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067992, -0.291137, -0.954262,
		-0.930149, -0.364425, 0.044908,
		-0.360831, 0.884553, -0.295579,
		35.121788, 38.162533, 20.049042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981308, 37.285732, 19.698833>,  <35.374371, 37.543346, 20.255947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981308, 37.285732, 19.698833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004116, 37.678047, 19.624201>,  <35.017799, 37.913437, 19.579422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004116, 37.678047, 19.624201>,  <34.981308, 37.285732, 19.698833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004116, 37.678047, 19.624201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278535, -0.163838, -0.946349,
		-0.958732, 0.105929, 0.263841,
		0.057018, 0.980784, -0.186582,
		35.021221, 37.972282, 19.568226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374840, 37.439316, 19.261183>,  <34.981308, 37.285732, 19.698833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374840, 37.439316, 19.261183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643059, 37.733456, 19.221960>,  <34.803989, 37.909943, 19.198427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643059, 37.733456, 19.221960>,  <34.374840, 37.439316, 19.261183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643059, 37.733456, 19.221960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070661, -0.068266, -0.995162,
		-0.738490, 0.674236, 0.006185,
		0.670551, 0.735354, -0.098056,
		34.844223, 37.954063, 19.192543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071487, 37.788010, 18.694674>,  <34.374840, 37.439316, 19.261183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071487, 37.788010, 18.694674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452827, 37.900871, 18.737597>,  <34.681633, 37.968586, 18.763350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452827, 37.900871, 18.737597>,  <34.071487, 37.788010, 18.694674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452827, 37.900871, 18.737597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080754, 0.104146, -0.991278,
		-0.290866, 0.953700, 0.076503,
		0.953350, 0.282151, 0.107308,
		34.738831, 37.985516, 18.769789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220146, 38.438099, 18.283945>,  <34.071487, 37.788010, 18.694674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220146, 38.438099, 18.283945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571278, 38.248291, 18.310022>,  <34.781956, 38.134407, 18.325668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571278, 38.248291, 18.310022>,  <34.220146, 38.438099, 18.283945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571278, 38.248291, 18.310022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053218, -0.038636, -0.997835,
		0.476014, 0.879395, -0.008662,
		0.877826, -0.474522, 0.065191,
		34.834625, 38.105934, 18.329580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682110, 38.722679, 17.744057>,  <34.220146, 38.438099, 18.283945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682110, 38.722679, 17.744057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832901, 38.366722, 17.846809>,  <34.923374, 38.153149, 17.908461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832901, 38.366722, 17.846809>,  <34.682110, 38.722679, 17.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832901, 38.366722, 17.846809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151642, -0.214306, -0.964924,
		0.913726, 0.402706, 0.054157,
		0.376974, -0.889888, 0.256884,
		34.945992, 38.099754, 17.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167225, 38.633846, 17.219429>,  <34.682110, 38.722679, 17.744057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167225, 38.633846, 17.219429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083477, 38.272835, 17.369955>,  <35.033230, 38.056229, 17.460270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083477, 38.272835, 17.369955>,  <35.167225, 38.633846, 17.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083477, 38.272835, 17.369955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126715, -0.406640, -0.904758,
		0.969592, -0.141742, 0.199500,
		-0.209367, -0.902526, 0.376314,
		35.020668, 38.002075, 17.482849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671062, 38.245106, 16.837103>,  <35.167225, 38.633846, 17.219429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671062, 38.245106, 16.837103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386314, 38.001865, 16.977648>,  <35.215466, 37.855919, 17.061975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386314, 38.001865, 16.977648>,  <35.671062, 38.245106, 16.837103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386314, 38.001865, 16.977648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070063, -0.559287, -0.826008,
		0.698812, -0.563390, 0.440743,
		-0.711866, -0.608104, 0.351363,
		35.172756, 37.819435, 17.083057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894608, 37.655460, 16.686432>,  <35.671062, 38.245106, 16.837103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894608, 37.655460, 16.686432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506935, 37.580219, 16.750059>,  <35.274330, 37.535072, 16.788237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506935, 37.580219, 16.750059>,  <35.894608, 37.655460, 16.686432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506935, 37.580219, 16.750059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062925, -0.435261, -0.898103,
		0.238176, -0.880434, 0.410010,
		-0.969182, -0.188106, 0.159070,
		35.216179, 37.523788, 16.797781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524551, 37.465790, 16.257866>,  <35.894608, 37.655460, 16.686432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524551, 37.465790, 16.257866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889027, 37.575611, 16.134995>,  <37.107712, 37.641506, 16.061272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889027, 37.575611, 16.134995>,  <36.524551, 37.465790, 16.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889027, 37.575611, 16.134995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334867, -0.059212, 0.940403,
		0.240005, -0.959746, -0.145893,
		0.911187, 0.274556, -0.307176,
		37.162384, 37.657978, 16.042841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026794, 36.962566, 16.593157>,  <36.524551, 37.465790, 16.257866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026794, 36.962566, 16.593157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204548, 37.308121, 16.498316>,  <37.311199, 37.515453, 16.441412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204548, 37.308121, 16.498316>,  <37.026794, 36.962566, 16.593157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204548, 37.308121, 16.498316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414222, 0.036527, 0.909442,
		0.794319, -0.502353, -0.341611,
		0.444384, 0.863891, -0.237100,
		37.337864, 37.567287, 16.427185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769764, 36.929356, 16.931278>,  <37.026794, 36.962566, 16.593157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769764, 36.929356, 16.931278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719730, 37.318707, 16.854445>,  <37.689713, 37.552315, 16.808344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719730, 37.318707, 16.854445>,  <37.769764, 36.929356, 16.931278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719730, 37.318707, 16.854445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402960, 0.226757, 0.886682,
		0.906630, 0.033506, -0.420594,
		-0.125082, 0.973375, -0.192084,
		37.682205, 37.610718, 16.796820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376526, 37.233677, 17.109142>,  <37.769764, 36.929356, 16.931278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376526, 37.233677, 17.109142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130802, 37.547794, 17.139975>,  <37.983368, 37.736263, 17.158474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130802, 37.547794, 17.139975>,  <38.376526, 37.233677, 17.109142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130802, 37.547794, 17.139975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364874, 0.196094, 0.910173,
		0.699634, 0.587254, -0.406994,
		-0.614312, 0.785290, 0.077080,
		37.946510, 37.783382, 17.163099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748142, 37.783852, 17.470984>,  <38.376526, 37.233677, 17.109142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748142, 37.783852, 17.470984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366665, 37.894138, 17.519072>,  <38.137779, 37.960312, 17.547924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366665, 37.894138, 17.519072>,  <38.748142, 37.783852, 17.470984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366665, 37.894138, 17.519072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137452, 0.043975, 0.989532,
		0.267545, 0.960232, -0.079836,
		-0.953691, 0.275718, 0.120220,
		38.080559, 37.976852, 17.555138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738441, 38.405457, 17.824602>,  <38.748142, 37.783852, 17.470984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738441, 38.405457, 17.824602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378857, 38.245098, 17.895206>,  <38.163105, 38.148884, 17.937569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378857, 38.245098, 17.895206>,  <38.738441, 38.405457, 17.824602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378857, 38.245098, 17.895206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130791, 0.138918, 0.981629,
		-0.418052, 0.905529, -0.072448,
		-0.898958, -0.400897, 0.176510,
		38.109169, 38.124828, 17.948160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316799, 38.919861, 18.262791>,  <38.738441, 38.405457, 17.824602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316799, 38.919861, 18.262791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131577, 38.569435, 18.316591>,  <38.020443, 38.359180, 18.348871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131577, 38.569435, 18.316591>,  <38.316799, 38.919861, 18.262791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131577, 38.569435, 18.316591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027592, 0.165927, 0.985752,
		-0.885900, 0.452746, -0.101006,
		-0.463055, -0.876065, 0.134502,
		37.992661, 38.306614, 18.356941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754677, 39.051750, 18.798004>,  <38.316799, 38.919861, 18.262791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754677, 39.051750, 18.798004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819187, 38.657509, 18.818319>,  <37.857895, 38.420963, 18.830507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819187, 38.657509, 18.818319>,  <37.754677, 39.051750, 18.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819187, 38.657509, 18.818319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115797, 0.032206, 0.992751,
		-0.980092, -0.165992, -0.108936,
		0.161280, -0.985601, 0.050786,
		37.867573, 38.361828, 18.833555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364746, 38.938625, 19.295351>,  <37.754677, 39.051750, 18.798004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364746, 38.938625, 19.295351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578178, 38.600330, 19.293749>,  <37.706238, 38.397354, 19.292788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578178, 38.600330, 19.293749>,  <37.364746, 38.938625, 19.295351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578178, 38.600330, 19.293749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252955, -0.164106, 0.953459,
		-0.807036, -0.507732, -0.301498,
		0.533579, -0.845741, -0.004006,
		37.738251, 38.346607, 19.292547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968563, 38.415909, 19.632463>,  <37.364746, 38.938625, 19.295351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968563, 38.415909, 19.632463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337021, 38.262882, 19.661146>,  <37.558094, 38.171066, 19.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337021, 38.262882, 19.661146>,  <36.968563, 38.415909, 19.632463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337021, 38.262882, 19.661146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197108, -0.299636, 0.933470,
		-0.335633, -0.873990, -0.351414,
		0.921140, -0.382570, 0.071703,
		37.613365, 38.148113, 19.682657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910439, 37.812290, 20.016865>,  <36.968563, 38.415909, 19.632463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910439, 37.812290, 20.016865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306278, 37.868019, 20.031204>,  <37.543781, 37.901455, 20.039808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306278, 37.868019, 20.031204>,  <36.910439, 37.812290, 20.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306278, 37.868019, 20.031204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016944, -0.134577, 0.990758,
		0.142857, -0.981060, -0.130817,
		0.989599, 0.139320, 0.035849,
		37.603157, 37.909817, 20.041958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094078, 37.270245, 20.496141>,  <36.910439, 37.812290, 20.016865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094078, 37.270245, 20.496141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342564, 37.582935, 20.474249>,  <37.491657, 37.770550, 20.461113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342564, 37.582935, 20.474249>,  <37.094078, 37.270245, 20.496141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342564, 37.582935, 20.474249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119104, -0.025154, 0.992563,
		0.774535, -0.623116, -0.108733,
		0.621217, 0.781725, -0.054733,
		37.528927, 37.817451, 20.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642982, 37.127407, 20.991673>,  <37.094078, 37.270245, 20.496141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642982, 37.127407, 20.991673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621044, 37.522789, 20.935188>,  <37.607880, 37.760017, 20.901299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621044, 37.522789, 20.935188>,  <37.642982, 37.127407, 20.991673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621044, 37.522789, 20.935188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200643, 0.149450, 0.968198,
		0.978128, 0.024770, -0.206525,
		-0.054847, 0.988459, -0.141211,
		37.604591, 37.819328, 20.892824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219997, 37.441673, 21.243210>,  <37.642982, 37.127407, 20.991673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219997, 37.441673, 21.243210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967937, 37.752022, 21.230978>,  <37.816700, 37.938229, 21.223639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967937, 37.752022, 21.230978>,  <38.219997, 37.441673, 21.243210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967937, 37.752022, 21.230978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196985, 0.197837, 0.960238,
		0.751067, 0.599075, -0.277502,
		-0.630154, 0.775867, -0.030580,
		37.778893, 37.984783, 21.221804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613277, 37.924225, 21.491816>,  <38.219997, 37.441673, 21.243210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613277, 37.924225, 21.491816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244759, 38.066586, 21.554489>,  <38.023647, 38.152004, 21.592093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244759, 38.066586, 21.554489>,  <38.613277, 37.924225, 21.491816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244759, 38.066586, 21.554489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290593, 0.362358, 0.885580,
		0.258408, 0.861410, -0.437262,
		-0.921293, 0.355906, 0.156684,
		37.968372, 38.173359, 21.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683327, 38.569538, 21.906082>,  <38.613277, 37.924225, 21.491816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683327, 38.569538, 21.906082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293098, 38.496033, 21.954224>,  <38.058960, 38.451927, 21.983109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293098, 38.496033, 21.954224>,  <38.683327, 38.569538, 21.906082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293098, 38.496033, 21.954224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030402, 0.429664, 0.902477,
		-0.217558, 0.884092, -0.413582,
		-0.975574, -0.183767, 0.120355,
		38.000427, 38.440903, 21.990330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429264, 39.088825, 22.178074>,  <38.683327, 38.569538, 21.906082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429264, 39.088825, 22.178074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142155, 38.829807, 22.280432>,  <37.969891, 38.674397, 22.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142155, 38.829807, 22.280432>,  <38.429264, 39.088825, 22.178074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142155, 38.829807, 22.280432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067233, 0.301340, 0.951144,
		-0.693022, 0.699911, -0.172758,
		-0.717775, -0.647548, 0.255892,
		37.926823, 38.635544, 22.357199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108948, 39.465416, 22.747192>,  <38.429264, 39.088825, 22.178074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108948, 39.465416, 22.747192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972317, 39.090115, 22.769152>,  <37.890339, 38.864933, 22.782328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972317, 39.090115, 22.769152>,  <38.108948, 39.465416, 22.747192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972317, 39.090115, 22.769152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181018, 0.122993, 0.975759,
		-0.922256, 0.323360, -0.211852,
		-0.341578, -0.938249, 0.054897,
		37.869843, 38.808640, 22.785622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452152, 39.582249, 23.116276>,  <38.108948, 39.465416, 22.747192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452152, 39.582249, 23.116276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595341, 39.215816, 23.188553>,  <37.681255, 38.995956, 23.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595341, 39.215816, 23.188553>,  <37.452152, 39.582249, 23.116276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595341, 39.215816, 23.188553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179377, 0.122441, 0.976131,
		-0.916340, -0.381841, -0.120493,
		0.357974, -0.916082, 0.180691,
		37.702732, 38.940990, 23.242760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039906, 39.276321, 23.645485>,  <37.452152, 39.582249, 23.116276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039906, 39.276321, 23.645485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363232, 39.040955, 23.653526>,  <37.557228, 38.899734, 23.658350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363232, 39.040955, 23.653526>,  <37.039906, 39.276321, 23.645485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363232, 39.040955, 23.653526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087721, -0.086600, 0.992374,
		-0.582184, -0.803910, -0.121616,
		0.808311, -0.588413, 0.020102,
		37.605724, 38.864429, 23.659557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803276, 38.742283, 24.114649>,  <37.039906, 39.276321, 23.645485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803276, 38.742283, 24.114649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202976, 38.756916, 24.119753>,  <37.442795, 38.765697, 24.122816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202976, 38.756916, 24.119753>,  <36.803276, 38.742283, 24.114649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202976, 38.756916, 24.119753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009530, -0.087216, 0.996144,
		0.037554, -0.995518, -0.086802,
		0.999249, 0.036582, 0.012762,
		37.502750, 38.767891, 24.123581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039345, 38.179012, 24.504478>,  <36.803276, 38.742283, 24.114649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039345, 38.179012, 24.504478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368023, 38.405720, 24.528421>,  <37.565231, 38.541744, 24.542788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368023, 38.405720, 24.528421>,  <37.039345, 38.179012, 24.504478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368023, 38.405720, 24.528421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101232, 0.041788, 0.993985,
		0.560861, -0.822814, 0.091712,
		0.821697, 0.566772, 0.059858,
		37.614532, 38.575752, 24.546379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559189, 37.804939, 25.085316>,  <37.039345, 38.179012, 24.504478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559189, 37.804939, 25.085316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694241, 38.177368, 25.030024>,  <37.775272, 38.400826, 24.996849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694241, 38.177368, 25.030024>,  <37.559189, 37.804939, 25.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694241, 38.177368, 25.030024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033713, 0.134798, 0.990299,
		0.940675, -0.339014, 0.014123,
		0.337629, 0.931074, -0.138230,
		37.795528, 38.456692, 24.988554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108994, 37.926186, 25.559254>,  <37.559189, 37.804939, 25.085316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108994, 37.926186, 25.559254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934685, 38.278606, 25.485662>,  <37.830097, 38.490059, 25.441507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934685, 38.278606, 25.485662>,  <38.108994, 37.926186, 25.559254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934685, 38.278606, 25.485662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020508, 0.194634, 0.980662,
		0.899822, 0.431121, -0.066748,
		-0.435775, 0.881052, -0.183978,
		37.803951, 38.542923, 25.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537827, 38.484261, 26.018295>,  <38.108994, 37.926186, 25.559254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537827, 38.484261, 26.018295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208260, 38.683319, 25.909840>,  <38.010521, 38.802753, 25.844767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208260, 38.683319, 25.909840>,  <38.537827, 38.484261, 26.018295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208260, 38.683319, 25.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091200, 0.355776, 0.930111,
		0.559330, 0.791059, -0.247743,
		-0.823913, 0.497645, -0.271141,
		37.961086, 38.832611, 25.828497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620682, 39.160271, 26.211695>,  <38.537827, 38.484261, 26.018295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620682, 39.160271, 26.211695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228504, 39.082275, 26.200989>,  <37.993198, 39.035477, 26.194565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228504, 39.082275, 26.200989>,  <38.620682, 39.160271, 26.211695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228504, 39.082275, 26.200989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090909, 0.328034, 0.940281,
		-0.174564, 0.924323, -0.339344,
		-0.980440, -0.194989, -0.026766,
		37.934372, 39.023777, 26.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315254, 39.709518, 26.628633>,  <38.620682, 39.160271, 26.211695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315254, 39.709518, 26.628633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048954, 39.412041, 26.604328>,  <37.889175, 39.233555, 26.589745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048954, 39.412041, 26.604328>,  <38.315254, 39.709518, 26.628633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048954, 39.412041, 26.604328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283109, 0.176414, 0.942723,
		-0.690380, 0.644822, -0.327995,
		-0.665751, -0.743696, -0.060763,
		37.849228, 39.188931, 26.586100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650269, 40.035969, 26.797335>,  <38.315254, 39.709518, 26.628633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650269, 40.035969, 26.797335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606354, 39.642635, 26.855309>,  <37.580006, 39.406635, 26.890093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606354, 39.642635, 26.855309>,  <37.650269, 40.035969, 26.797335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606354, 39.642635, 26.855309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204565, 0.165045, 0.964839,
		-0.972677, 0.076275, -0.219275,
		-0.109783, -0.983332, 0.144933,
		37.573418, 39.347637, 26.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063587, 39.940948, 27.197918>,  <37.650269, 40.035969, 26.797335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063587, 39.940948, 27.197918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271172, 39.604485, 27.258759>,  <37.395721, 39.402607, 27.295263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271172, 39.604485, 27.258759>,  <37.063587, 39.940948, 27.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271172, 39.604485, 27.258759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216026, 0.043105, 0.975436,
		-0.827052, -0.539069, -0.159342,
		0.518959, -0.841158, 0.152104,
		37.426861, 39.352139, 27.304390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659168, 39.601429, 27.668844>,  <37.063587, 39.940948, 27.197918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659168, 39.601429, 27.668844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031940, 39.456944, 27.681740>,  <37.255604, 39.370255, 27.689478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031940, 39.456944, 27.681740>,  <36.659168, 39.601429, 27.668844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031940, 39.456944, 27.681740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014026, 0.052937, 0.998499,
		-0.362377, -0.930980, 0.044267,
		0.931926, -0.361212, 0.032241,
		37.311520, 39.348579, 27.691412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682438, 38.924232, 28.168440>,  <36.659168, 39.601429, 27.668844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682438, 38.924232, 28.168440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062759, 39.042976, 28.132999>,  <37.290951, 39.114223, 28.111734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062759, 39.042976, 28.132999>,  <36.682438, 38.924232, 28.168440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062759, 39.042976, 28.132999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116831, -0.078702, 0.990029,
		0.286927, -0.951672, -0.109513,
		0.950801, 0.296860, -0.088603,
		37.348000, 39.132034, 28.106419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201813, 38.411118, 28.494902>,  <36.682438, 38.924232, 28.168440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201813, 38.411118, 28.494902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380318, 38.768795, 28.480679>,  <37.487419, 38.983402, 28.472145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380318, 38.768795, 28.480679>,  <37.201813, 38.411118, 28.494902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380318, 38.768795, 28.480679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315599, -0.120075, 0.941265,
		0.837406, -0.431271, -0.335792,
		0.446260, 0.894197, -0.035558,
		37.514194, 39.037052, 28.470011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709240, 38.269501, 28.902546>,  <37.201813, 38.411118, 28.494902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709240, 38.269501, 28.902546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716106, 38.666512, 28.854229>,  <37.720226, 38.904720, 28.825239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716106, 38.666512, 28.854229>,  <37.709240, 38.269501, 28.902546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716106, 38.666512, 28.854229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275284, 0.111450, 0.954881,
		0.961210, -0.049648, -0.271314,
		0.017170, 0.992529, -0.120794,
		37.721256, 38.964272, 28.817991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338234, 38.459663, 29.168522>,  <37.709240, 38.269501, 28.902546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338234, 38.459663, 29.168522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117733, 38.792915, 29.186502>,  <37.985432, 38.992867, 29.197290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117733, 38.792915, 29.186502>,  <38.338234, 38.459663, 29.168522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117733, 38.792915, 29.186502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186478, 0.070518, 0.979925,
		0.813232, 0.548569, -0.194233,
		-0.551253, 0.833126, 0.044949,
		37.952358, 39.042854, 29.199987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644283, 38.897377, 29.668539>,  <38.338234, 38.459663, 29.168522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644283, 38.897377, 29.668539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275982, 39.052555, 29.651936>,  <38.055000, 39.145660, 29.641973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275982, 39.052555, 29.651936>,  <38.644283, 38.897377, 29.668539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275982, 39.052555, 29.651936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006548, 0.121741, 0.992540,
		0.390101, 0.913608, -0.114634,
		-0.920749, 0.387941, -0.041509,
		37.999756, 39.168938, 29.639482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687462, 39.389000, 30.194902>,  <38.644283, 38.897377, 29.668539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687462, 39.389000, 30.194902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294991, 39.356342, 30.124907>,  <38.059505, 39.336750, 30.082909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294991, 39.356342, 30.124907>,  <38.687462, 39.389000, 30.194902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294991, 39.356342, 30.124907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165836, -0.107945, 0.980228,
		-0.098915, 0.990799, 0.092375,
		-0.981180, -0.081640, -0.174988,
		38.000637, 39.331852, 30.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242153, 39.806675, 30.667276>,  <38.687462, 39.389000, 30.194902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242153, 39.806675, 30.667276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010345, 39.507156, 30.538616>,  <37.871262, 39.327446, 30.461420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010345, 39.507156, 30.538616>,  <38.242153, 39.806675, 30.667276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010345, 39.507156, 30.538616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274639, -0.192156, 0.942152,
		-0.767290, 0.634331, -0.094292,
		-0.579517, -0.748799, -0.321651,
		37.836491, 39.282516, 30.442122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790665, 39.830631, 31.142019>,  <38.242153, 39.806675, 30.667276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790665, 39.830631, 31.142019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736656, 39.473793, 30.969542>,  <37.704250, 39.259689, 30.866055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736656, 39.473793, 30.969542>,  <37.790665, 39.830631, 31.142019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736656, 39.473793, 30.969542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231825, -0.394656, 0.889103,
		-0.963341, 0.220011, -0.153523,
		-0.135024, -0.892100, -0.431193,
		37.696148, 39.206161, 30.840183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039051, 39.535290, 31.228504>,  <37.790665, 39.830631, 31.142019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039051, 39.535290, 31.228504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334465, 39.268230, 31.190943>,  <37.511711, 39.107994, 31.168406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334465, 39.268230, 31.190943>,  <37.039051, 39.535290, 31.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334465, 39.268230, 31.190943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130576, -0.278278, 0.951584,
		-0.661456, -0.690511, -0.292696,
		0.738530, -0.667649, -0.093904,
		37.556023, 39.067936, 31.162771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753643, 38.954609, 31.421076>,  <37.039051, 39.535290, 31.228504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753643, 38.954609, 31.421076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149944, 38.913116, 31.456070>,  <37.387726, 38.888222, 31.477066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149944, 38.913116, 31.456070>,  <36.753643, 38.954609, 31.421076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149944, 38.913116, 31.456070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122278, -0.402949, 0.907017,
		-0.058833, -0.909325, -0.411906,
		0.990750, -0.103730, 0.087484,
		37.447170, 38.881996, 31.482315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791004, 38.609455, 31.935295>,  <36.753643, 38.954609, 31.421076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791004, 38.609455, 31.935295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185627, 38.674576, 31.929619>,  <37.422401, 38.713650, 31.926214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185627, 38.674576, 31.929619>,  <36.791004, 38.609455, 31.935295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185627, 38.674576, 31.929619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067372, -0.326085, 0.942937,
		0.148884, -0.931217, -0.332669,
		0.986557, 0.162801, -0.014189,
		37.481594, 38.723415, 31.925362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066830, 38.084919, 32.235722>,  <36.791004, 38.609455, 31.935295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066830, 38.084919, 32.235722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375526, 38.334068, 32.287010>,  <37.560745, 38.483559, 32.317783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375526, 38.334068, 32.287010>,  <37.066830, 38.084919, 32.235722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375526, 38.334068, 32.287010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167234, -0.393308, 0.904070,
		0.613552, -0.676266, -0.407698,
		0.771743, 0.622875, 0.128220,
		37.607048, 38.520931, 32.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597759, 37.678329, 32.428368>,  <37.066830, 38.084919, 32.235722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597759, 37.678329, 32.428368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657780, 38.046921, 32.571678>,  <37.693794, 38.268074, 32.657665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657780, 38.046921, 32.571678>,  <37.597759, 37.678329, 32.428368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657780, 38.046921, 32.571678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122969, -0.376956, 0.918032,
		0.981001, -0.093698, -0.169877,
		0.150054, 0.921480, 0.358272,
		37.702797, 38.323364, 32.679161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087498, 37.983192, 32.681141>,  <37.597759, 37.678329, 32.428368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087498, 37.983192, 32.681141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073490, 37.673672, 32.428158>,  <38.065086, 37.487957, 32.276367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073490, 37.673672, 32.428158>,  <38.087498, 37.983192, 32.681141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073490, 37.673672, 32.428158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980532, -0.148953, 0.127946,
		-0.193211, -0.615661, 0.763958,
		-0.035023, -0.773805, -0.632454,
		38.062984, 37.441528, 32.238422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746155, 37.680798, 32.702785>,  <38.087498, 37.983192, 32.681141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746155, 37.680798, 32.702785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603874, 37.422226, 32.432793>,  <38.518505, 37.267082, 32.270798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603874, 37.422226, 32.432793>,  <38.746155, 37.680798, 32.702785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603874, 37.422226, 32.432793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907124, -0.412623, -0.082872,
		-0.224942, -0.641771, 0.733165,
		-0.355706, -0.646430, -0.674983,
		38.497162, 37.228298, 32.230297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903206, 36.926544, 32.789326>,  <38.746155, 37.680798, 32.702785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903206, 36.926544, 32.789326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810680, 36.955326, 32.401241>,  <38.755165, 36.972595, 32.168388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810680, 36.955326, 32.401241>,  <38.903206, 36.926544, 32.789326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810680, 36.955326, 32.401241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941165, -0.236003, -0.241891,
		-0.246380, -0.969084, -0.013134,
		-0.231313, 0.071959, -0.970215,
		38.741287, 36.976913, 32.110176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954960, 36.296360, 32.413189>,  <38.903206, 36.926544, 32.789326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954960, 36.296360, 32.413189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027203, 36.611614, 32.177826>,  <39.070549, 36.800766, 32.036606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027203, 36.611614, 32.177826>,  <38.954960, 36.296360, 32.413189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027203, 36.611614, 32.177826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933454, -0.325854, -0.149944,
		-0.309911, -0.522173, -0.794538,
		0.180606, 0.788134, -0.588410,
		39.081383, 36.848053, 32.001305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094666, 35.595848, 32.747120>,  <38.954960, 36.296360, 32.413189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094666, 35.595848, 32.747120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258503, 35.359276, 32.469288>,  <39.356804, 35.217331, 32.302589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258503, 35.359276, 32.469288>,  <39.094666, 35.595848, 32.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258503, 35.359276, 32.469288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450707, 0.793158, -0.409590,
		0.793158, -0.145290, 0.591432,
		0.409590, -0.591432, -0.694582,
		39.381378, 35.181847, 32.260914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677719, 35.936951, 32.672363>,  <39.094666, 35.595848, 32.747120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677719, 35.936951, 32.672363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630508, 35.696999, 32.355831>,  <39.602180, 35.553028, 32.165913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630508, 35.696999, 32.355831>,  <39.677719, 35.936951, 32.672363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630508, 35.696999, 32.355831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196908, 0.766941, -0.610761,
		0.973292, -0.227906, 0.027603,
		-0.118026, -0.599884, -0.791334,
		39.595100, 35.517033, 32.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186581, 35.943691, 32.143135>,  <39.677719, 35.936951, 32.672363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186581, 35.943691, 32.143135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850697, 35.842930, 31.950705>,  <39.649166, 35.782475, 31.835245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850697, 35.842930, 31.950705>,  <40.186581, 35.943691, 32.143135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850697, 35.842930, 31.950705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198402, 0.682345, -0.703592,
		0.505500, -0.686258, -0.522992,
		-0.839706, -0.251903, -0.481080,
		39.598785, 35.767357, 31.806381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301743, 36.023048, 31.471872>,  <40.186581, 35.943691, 32.143135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301743, 36.023048, 31.471872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902878, 36.003231, 31.449205>,  <39.663559, 35.991341, 31.435606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902878, 36.003231, 31.449205>,  <40.301743, 36.023048, 31.471872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902878, 36.003231, 31.449205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038675, 0.308655, -0.950387,
		0.064571, -0.949883, -0.305864,
		-0.997163, -0.049538, -0.056666,
		39.603729, 35.988369, 31.432205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134960, 35.421543, 30.950640>,  <40.301743, 36.023048, 31.471872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134960, 35.421543, 30.950640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882343, 35.722481, 31.025625>,  <39.730774, 35.903042, 31.070618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882343, 35.722481, 31.025625>,  <40.134960, 35.421543, 30.950640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882343, 35.722481, 31.025625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050834, 0.201087, -0.978253,
		-0.773677, -0.627334, -0.088749,
		-0.631538, 0.752341, 0.187466,
		39.692883, 35.948181, 31.081865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671379, 35.330292, 30.445974>,  <40.134960, 35.421543, 30.950640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671379, 35.330292, 30.445974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612003, 35.709496, 30.558573>,  <39.576378, 35.937019, 30.626131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612003, 35.709496, 30.558573>,  <39.671379, 35.330292, 30.445974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612003, 35.709496, 30.558573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194890, 0.251024, -0.948159,
		-0.969527, -0.195606, 0.147495,
		-0.148441, 0.948011, 0.281496,
		39.567471, 35.993900, 30.643021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361423, 34.865250, 30.987411>,  <39.671379, 35.330292, 30.445974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361423, 34.865250, 30.987411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477177, 35.043816, 31.326109>,  <39.546627, 35.150955, 31.529327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477177, 35.043816, 31.326109>,  <39.361423, 34.865250, 30.987411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477177, 35.043816, 31.326109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287278, -0.803310, 0.521694,
		0.913088, -0.394219, -0.104217,
		0.289380, 0.446413, 0.846744,
		39.563992, 35.177738, 31.580132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889683, 34.468658, 31.359470>,  <39.361423, 34.865250, 30.987411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889683, 34.468658, 31.359470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690453, 34.687271, 31.628759>,  <39.570915, 34.818439, 31.790333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690453, 34.687271, 31.628759>,  <39.889683, 34.468658, 31.359470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690453, 34.687271, 31.628759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321734, -0.837433, 0.441807,
		0.805238, 0.003456, 0.592942,
		-0.498075, 0.546529, 0.673221,
		39.541031, 34.851231, 31.830725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950718, 34.147858, 32.049755>,  <39.889683, 34.468658, 31.359470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950718, 34.147858, 32.049755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606010, 34.350159, 32.033924>,  <39.399185, 34.471539, 32.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606010, 34.350159, 32.033924>,  <39.950718, 34.147858, 32.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606010, 34.350159, 32.033924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457302, -0.740707, 0.492167,
		0.219600, 0.442234, 0.869601,
		-0.861772, 0.505750, -0.039575,
		39.347477, 34.501884, 32.022053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632145, 34.032574, 32.747391>,  <39.950718, 34.147858, 32.049755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632145, 34.032574, 32.747391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355343, 34.103638, 32.467518>,  <39.189262, 34.146275, 32.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355343, 34.103638, 32.467518>,  <39.632145, 34.032574, 32.747391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355343, 34.103638, 32.467518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589412, -0.698661, 0.405544,
		-0.416794, 0.693044, 0.588195,
		-0.692009, 0.177661, -0.699686,
		39.147739, 34.156937, 32.257610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041130, 34.451542, 32.952633>,  <39.632145, 34.032574, 32.747391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041130, 34.451542, 32.952633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001556, 34.153698, 32.688583>,  <38.977810, 33.974991, 32.530155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001556, 34.153698, 32.688583>,  <39.041130, 34.451542, 32.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001556, 34.153698, 32.688583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464360, -0.552173, 0.692441,
		-0.880103, 0.375045, -0.291136,
		-0.098939, -0.744612, -0.660125,
		38.971874, 33.930313, 32.490547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322350, 34.177906, 33.026127>,  <39.041130, 34.451542, 32.952633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322350, 34.177906, 33.026127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544086, 33.879456, 32.878613>,  <38.677128, 33.700386, 32.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544086, 33.879456, 32.878613>,  <38.322350, 34.177906, 33.026127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544086, 33.879456, 32.878613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510032, -0.654684, 0.557904,
		-0.657726, -0.121148, -0.743451,
		0.554314, -0.746132, -0.368813,
		38.710388, 33.655617, 32.767979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880421, 33.699066, 32.894123>,  <38.322350, 34.177906, 33.026127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880421, 33.699066, 32.894123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225193, 33.503689, 32.948521>,  <38.432056, 33.386463, 32.981159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225193, 33.503689, 32.948521>,  <37.880421, 33.699066, 32.894123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225193, 33.503689, 32.948521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469757, -0.668403, 0.576685,
		-0.190776, -0.560950, -0.805568,
		0.861935, -0.488439, 0.135996,
		38.483772, 33.357159, 32.989319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857216, 32.985012, 32.765427>,  <37.880421, 33.699066, 32.894123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857216, 32.985012, 32.765427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166691, 32.958366, 33.017448>,  <38.352375, 32.942379, 33.168663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166691, 32.958366, 33.017448>,  <37.857216, 32.985012, 32.765427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166691, 32.958366, 33.017448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449403, -0.758683, 0.471632,
		0.446595, -0.648045, -0.616921,
		0.773686, -0.066618, 0.630057,
		38.398796, 32.938381, 33.206467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069206, 32.275101, 32.806835>,  <37.857216, 32.985012, 32.765427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069206, 32.275101, 32.806835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 32.455711, 33.153538>,  <38.204742, 32.564079, 33.361561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 32.455711, 33.153538>,  <38.069206, 32.275101, 32.806835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153915, 32.455711, 33.153538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378650, -0.779699, 0.498691,
		0.900986, -0.433808, 0.005852,
		0.211774, 0.451530, 0.866760,
		38.217449, 32.591171, 33.413567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409916, 31.744474, 33.261585>,  <38.069206, 32.275101, 32.806835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409916, 31.744474, 33.261585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264008, 32.034306, 33.495483>,  <38.176460, 32.208206, 33.635822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264008, 32.034306, 33.495483>,  <38.409916, 31.744474, 33.261585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264008, 32.034306, 33.495483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611451, -0.660035, 0.436441,
		0.702187, -0.198340, 0.683809,
		-0.364774, 0.724579, 0.584744,
		38.154575, 32.251678, 33.670906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494350, 31.650908, 33.988232>,  <38.409916, 31.744474, 33.261585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494350, 31.650908, 33.988232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160351, 31.848015, 33.890289>,  <37.959949, 31.966280, 33.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160351, 31.848015, 33.890289>,  <38.494350, 31.650908, 33.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160351, 31.848015, 33.890289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550147, -0.738973, 0.388919,
		0.010704, 0.459455, 0.888137,
		-0.835000, 0.492769, -0.244857,
		37.909851, 31.995846, 33.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124050, 31.329817, 34.527470>,  <38.494350, 31.650908, 33.988232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124050, 31.329817, 34.527470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881615, 31.526352, 34.277271>,  <37.736153, 31.644272, 34.127151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881615, 31.526352, 34.277271>,  <38.124050, 31.329817, 34.527470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881615, 31.526352, 34.277271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789066, -0.470425, 0.395065,
		-0.100137, 0.733000, 0.672817,
		-0.606093, 0.491336, -0.625492,
		37.699787, 31.673752, 34.089622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353851, 30.582294, 34.724125>,  <38.124050, 31.329817, 34.527470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353851, 30.582294, 34.724125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558594, 30.369513, 34.993946>,  <38.681438, 30.241842, 35.155838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558594, 30.369513, 34.993946>,  <38.353851, 30.582294, 34.724125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558594, 30.369513, 34.993946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712373, -0.176025, -0.679368,
		0.480133, 0.828274, 0.288852,
		0.511857, -0.531957, 0.674555,
		38.712151, 30.209925, 35.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014591, 30.556574, 34.446766>,  <38.353851, 30.582294, 34.724125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014591, 30.556574, 34.446766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992416, 30.262230, 34.716713>,  <38.979111, 30.085625, 34.878681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992416, 30.262230, 34.716713>,  <39.014591, 30.556574, 34.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992416, 30.262230, 34.716713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624746, -0.552807, -0.551450,
		0.778858, 0.391048, 0.490370,
		-0.055436, -0.735857, 0.674863,
		38.975784, 30.041473, 34.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763050, 30.761667, 34.577137>,  <39.014591, 30.556574, 34.446766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763050, 30.761667, 34.577137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108376, 30.568222, 34.634827>,  <40.315571, 30.452156, 34.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108376, 30.568222, 34.634827>,  <39.763050, 30.761667, 34.577137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108376, 30.568222, 34.634827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491007, 0.738904, -0.461446,
		0.116591, 0.469191, 0.875366,
		0.863318, -0.483612, 0.144226,
		40.367371, 30.423138, 34.678093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245392, 31.247078, 34.838608>,  <39.763050, 30.761667, 34.577137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245392, 31.247078, 34.838608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388069, 30.945919, 34.617371>,  <40.473675, 30.765224, 34.484627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388069, 30.945919, 34.617371>,  <40.245392, 31.247078, 34.838608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388069, 30.945919, 34.617371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373552, 0.657595, -0.654239,
		0.856286, 0.026756, 0.515809,
		0.356698, -0.752897, -0.553094,
		40.495079, 30.720051, 34.451443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832844, 31.421682, 34.562000>,  <40.245392, 31.247078, 34.838608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832844, 31.421682, 34.562000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732944, 31.124331, 34.313805>,  <40.673004, 30.945919, 34.164886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732944, 31.124331, 34.313805>,  <40.832844, 31.421682, 34.562000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732944, 31.124331, 34.313805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333248, 0.535669, -0.775889,
		0.909160, -0.400553, 0.113949,
		-0.249745, -0.743381, -0.620493,
		40.658020, 30.901316, 34.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236130, 31.575588, 33.909210>,  <40.832844, 31.421682, 34.562000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236130, 31.575588, 33.909210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885715, 31.394899, 33.841671>,  <40.675468, 31.286486, 33.801147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885715, 31.394899, 33.841671>,  <41.236130, 31.575588, 33.909210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885715, 31.394899, 33.841671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031047, 0.296577, -0.954504,
		0.481251, -0.841420, -0.245786,
		-0.876033, -0.451725, -0.168851,
		40.622906, 31.259382, 33.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311825, 31.192926, 33.252205>,  <41.236130, 31.575588, 33.909210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311825, 31.192926, 33.252205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913654, 31.225239, 33.272591>,  <40.674751, 31.244627, 33.284821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913654, 31.225239, 33.272591>,  <41.311825, 31.192926, 33.252205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913654, 31.225239, 33.272591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032230, 0.218177, -0.975377,
		-0.089913, -0.972560, -0.214576,
		-0.995428, 0.080784, 0.050963,
		40.615025, 31.249474, 33.287880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004101, 30.718060, 32.703381>,  <41.311825, 31.192926, 33.252205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004101, 30.718060, 32.703381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737377, 31.003393, 32.789650>,  <40.577343, 31.174593, 32.841412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737377, 31.003393, 32.789650>,  <41.004101, 30.718060, 32.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737377, 31.003393, 32.789650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176294, 0.130200, -0.975689,
		-0.724073, -0.688624, 0.038937,
		-0.666813, 0.713334, 0.215675,
		40.537334, 31.217394, 32.854351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099068, 29.980408, 32.899879>,  <41.004101, 30.718060, 32.703381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099068, 29.980408, 32.899879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394569, 29.747725, 32.763721>,  <41.571869, 29.608114, 32.682026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394569, 29.747725, 32.763721>,  <41.099068, 29.980408, 32.899879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394569, 29.747725, 32.763721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566329, 0.261951, 0.781443,
		-0.365405, -0.770064, 0.522953,
		0.738750, -0.581707, -0.340392,
		41.616196, 29.573212, 32.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325920, 29.394236, 33.385685>,  <41.099068, 29.980408, 32.899879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325920, 29.394236, 33.385685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637154, 29.508463, 33.161888>,  <41.823895, 29.577000, 33.027611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637154, 29.508463, 33.161888>,  <41.325920, 29.394236, 33.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637154, 29.508463, 33.161888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481476, 0.300927, 0.823179,
		0.403441, -0.909887, 0.096652,
		0.778085, 0.285568, -0.559495,
		41.870579, 29.594133, 32.994041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852406, 29.005713, 33.573418>,  <41.325920, 29.394236, 33.385685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852406, 29.005713, 33.573418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009678, 29.325428, 33.391628>,  <42.104042, 29.517258, 33.282555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009678, 29.325428, 33.391628>,  <41.852406, 29.005713, 33.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009678, 29.325428, 33.391628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695584, 0.064681, 0.715527,
		0.601310, -0.597454, -0.530542,
		0.393178, 0.799291, -0.454473,
		42.127632, 29.565216, 33.255287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540924, 28.880995, 33.350269>,  <41.852406, 29.005713, 33.573418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540924, 28.880995, 33.350269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492130, 29.260303, 33.467506>,  <42.462852, 29.487888, 33.537849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492130, 29.260303, 33.467506>,  <42.540924, 28.880995, 33.350269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492130, 29.260303, 33.467506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872707, -0.038180, 0.486748,
		0.472759, 0.315159, -0.822905,
		-0.121985, 0.948271, 0.293092,
		42.455536, 29.544785, 33.555435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203156, 29.319857, 33.295925>,  <42.540924, 28.880995, 33.350269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203156, 29.319857, 33.295925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972778, 29.495049, 33.572033>,  <42.834553, 29.600163, 33.737698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972778, 29.495049, 33.572033>,  <43.203156, 29.319857, 33.295925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972778, 29.495049, 33.572033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751881, -0.047636, 0.657575,
		0.320884, 0.897723, -0.301872,
		-0.575941, 0.437977, 0.690266,
		42.799995, 29.626442, 33.779114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782642, 28.965755, 33.286568>,  <43.203156, 29.319857, 33.295925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782642, 28.965755, 33.286568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601044, 28.938211, 32.931232>,  <43.492085, 28.921684, 32.718033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601044, 28.938211, 32.931232>,  <43.782642, 28.965755, 33.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601044, 28.938211, 32.931232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818014, -0.427415, -0.384928,
		-0.353182, -0.901429, 0.250375,
		-0.453999, -0.068861, -0.888337,
		43.464844, 28.917553, 32.664730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557419, 28.296551, 32.851963>,  <43.782642, 28.965755, 33.286568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557419, 28.296551, 32.851963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646091, 28.542095, 32.548904>,  <43.699295, 28.689421, 32.367069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646091, 28.542095, 32.548904>,  <43.557419, 28.296551, 32.851963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646091, 28.542095, 32.548904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716089, -0.629867, -0.300807,
		-0.661872, -0.475862, -0.579207,
		0.221681, 0.613859, -0.757651,
		43.712597, 28.726254, 32.321609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747822, 27.882347, 32.276882>,  <43.557419, 28.296551, 32.851963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747822, 27.882347, 32.276882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911522, 28.245533, 32.240860>,  <44.009743, 28.463444, 32.219246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911522, 28.245533, 32.240860>,  <43.747822, 27.882347, 32.276882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911522, 28.245533, 32.240860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890432, -0.418979, -0.177727,
		-0.199102, -0.007455, -0.979950,
		0.409254, 0.907965, -0.090058,
		44.034298, 28.517923, 32.213844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214474, 27.943104, 31.589682>,  <43.747822, 27.882347, 32.276882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214474, 27.943104, 31.589682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300575, 28.166508, 31.910114>,  <44.352238, 28.300550, 32.102375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300575, 28.166508, 31.910114>,  <44.214474, 27.943104, 31.589682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300575, 28.166508, 31.910114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957036, -0.283850, -0.059262,
		0.194288, 0.779419, -0.595616,
		0.215256, 0.558512, 0.801080,
		44.365150, 28.334061, 32.150440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772312, 28.490160, 31.484753>,  <44.214474, 27.943104, 31.589682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772312, 28.490160, 31.484753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747643, 28.350624, 31.858812>,  <44.732841, 28.266903, 32.083248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747643, 28.350624, 31.858812>,  <44.772312, 28.490160, 31.484753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747643, 28.350624, 31.858812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922789, -0.376959, -0.079761,
		0.380338, 0.858028, 0.345155,
		-0.061672, -0.348841, 0.935151,
		44.729141, 28.245972, 32.139359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350136, 28.750978, 31.830364>,  <44.772312, 28.490160, 31.484753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350136, 28.750978, 31.830364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223015, 28.396877, 31.966202>,  <45.146740, 28.184416, 32.047703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223015, 28.396877, 31.966202>,  <45.350136, 28.750978, 31.830364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223015, 28.396877, 31.966202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890527, -0.401650, -0.213633,
		0.325517, 0.234522, 0.915990,
		-0.317806, -0.885255, 0.339592,
		45.127674, 28.131300, 32.068081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865013, 28.645657, 32.086842>,  <45.350136, 28.750978, 31.830364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865013, 28.645657, 32.086842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654720, 28.308741, 32.039253>,  <45.528545, 28.106592, 32.010700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654720, 28.308741, 32.039253>,  <45.865013, 28.645657, 32.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654720, 28.308741, 32.039253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850104, -0.515219, -0.108961,
		0.030478, -0.158426, 0.986900,
		-0.525732, -0.842289, -0.118975,
		45.497002, 28.056053, 32.003559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505886, 28.291689, 32.644432>,  <45.865013, 28.645657, 32.086842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505886, 28.291689, 32.644432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674667, 28.075933, 32.935913>,  <45.775936, 27.946480, 33.110802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674667, 28.075933, 32.935913>,  <45.505886, 28.291689, 32.644432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674667, 28.075933, 32.935913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362837, 0.636120, 0.680955,
		-0.830845, -0.551734, 0.072703,
		0.421954, -0.539389, 0.728707,
		45.801254, 27.914116, 33.154526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105583, 28.334730, 33.184433>,  <45.505886, 28.291689, 32.644432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105583, 28.334730, 33.184433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492599, 28.294630, 33.277229>,  <45.724808, 28.270571, 33.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492599, 28.294630, 33.277229>,  <45.105583, 28.334730, 33.184433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492599, 28.294630, 33.277229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071319, 0.772334, 0.631201,
		-0.242450, -0.627256, 0.740113,
		0.967538, -0.100251, 0.231988,
		45.782860, 28.264555, 33.346825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041111, 27.746025, 33.724106>,  <45.105583, 28.334730, 33.184433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041111, 27.746025, 33.724106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796974, 27.525805, 33.951920>,  <44.650490, 27.393671, 34.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796974, 27.525805, 33.951920>,  <45.041111, 27.746025, 33.724106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796974, 27.525805, 33.951920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446693, 0.832978, 0.326516,
		-0.654176, -0.055121, -0.754331,
		-0.610344, -0.550553, 0.569537,
		44.613873, 27.360638, 34.122780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838341, 27.934185, 34.392784>,  <45.041111, 27.746025, 33.724106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838341, 27.934185, 34.392784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953953, 28.034365, 34.762375>,  <45.023319, 28.094473, 34.984131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953953, 28.034365, 34.762375>,  <44.838341, 27.934185, 34.392784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953953, 28.034365, 34.762375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227490, 0.919557, -0.320411,
		-0.929897, 0.302805, 0.208807,
		0.289032, 0.250448, 0.923979,
		45.040661, 28.109499, 35.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474388, 28.493490, 34.499393>,  <44.838341, 27.934185, 34.392784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474388, 28.493490, 34.499393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804291, 28.482925, 34.725342>,  <45.002232, 28.476587, 34.860909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804291, 28.482925, 34.725342>,  <44.474388, 28.493490, 34.499393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804291, 28.482925, 34.725342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138832, 0.977794, -0.156987,
		-0.548179, 0.207898, 0.810110,
		0.824758, -0.026412, 0.564869,
		45.051720, 28.475002, 34.894802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377167, 29.069906, 34.989040>,  <44.474388, 28.493490, 34.499393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377167, 29.069906, 34.989040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757648, 28.983320, 34.901073>,  <44.985935, 28.931370, 34.848293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757648, 28.983320, 34.901073>,  <44.377167, 29.069906, 34.989040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757648, 28.983320, 34.901073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201317, 0.975440, -0.089374,
		0.233859, 0.040741, 0.971417,
		0.951200, -0.216463, -0.219914,
		45.043007, 28.918381, 34.835098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900177, 29.380753, 35.534168>,  <44.377167, 29.069906, 34.989040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900177, 29.380753, 35.534168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049633, 29.372589, 35.163227>,  <45.139309, 29.367691, 34.940662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049633, 29.372589, 35.163227>,  <44.900177, 29.380753, 35.534168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049633, 29.372589, 35.163227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030001, 0.998969, -0.034075,
		0.927088, 0.040553, 0.372644,
		0.373642, -0.020411, -0.927348,
		45.161724, 29.366467, 34.885021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426987, 29.926237, 35.437485>,  <44.900177, 29.380753, 35.534168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426987, 29.926237, 35.437485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327175, 29.834400, 35.061184>,  <45.267288, 29.779297, 34.835403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327175, 29.834400, 35.061184>,  <45.426987, 29.926237, 35.437485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327175, 29.834400, 35.061184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085958, 0.972903, -0.214639,
		0.964545, 0.027307, -0.262502,
		-0.249528, -0.229593, -0.940756,
		45.252316, 29.765522, 34.778957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852242, 30.349760, 35.017860>,  <45.426987, 29.926237, 35.437485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852242, 30.349760, 35.017860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521618, 30.271334, 34.806824>,  <45.323242, 30.224277, 34.680202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521618, 30.271334, 34.806824>,  <45.852242, 30.349760, 35.017860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521618, 30.271334, 34.806824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079789, 0.968717, -0.234992,
		0.557162, -0.152139, -0.816348,
		-0.826561, -0.196064, -0.527594,
		45.273651, 30.212515, 34.648544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304539, 30.738239, 35.469208>,  <45.852242, 30.349760, 35.017860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304539, 30.738239, 35.469208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619705, 30.677141, 35.707821>,  <46.808807, 30.640482, 35.850990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619705, 30.677141, 35.707821>,  <46.304539, 30.738239, 35.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619705, 30.677141, 35.707821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590677, -0.086299, -0.802280,
		0.174024, 0.984491, 0.022226,
		0.787919, -0.152744, 0.596534,
		46.856079, 30.631317, 35.886780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636219, 31.055555, 35.981388>,  <46.304539, 30.738239, 35.469208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636219, 31.055555, 35.981388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747028, 31.034966, 35.597595>,  <46.813515, 31.022612, 35.367317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747028, 31.034966, 35.597595>,  <46.636219, 31.055555, 35.981388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747028, 31.034966, 35.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135578, 0.986480, -0.092065,
		0.951250, 0.155589, 0.266299,
		0.277023, -0.051473, -0.959484,
		46.830135, 31.019524, 35.309750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292046, 31.414080, 35.769604>,  <46.636219, 31.055555, 35.981388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292046, 31.414080, 35.769604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993614, 31.410526, 35.503284>,  <46.814556, 31.408394, 35.343491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993614, 31.410526, 35.503284>,  <47.292046, 31.414080, 35.769604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993614, 31.410526, 35.503284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019875, 0.999763, 0.008931,
		0.665563, 0.019895, -0.746076,
		-0.746077, -0.008884, -0.665801,
		46.769791, 31.407862, 35.303543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413124, 32.024544, 35.164684>,  <47.292046, 31.414080, 35.769604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413124, 32.024544, 35.164684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037968, 31.937332, 35.272633>,  <46.812874, 31.885006, 35.337402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037968, 31.937332, 35.272633>,  <47.413124, 32.024544, 35.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037968, 31.937332, 35.272633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145159, 0.953109, 0.265540,
		-0.315113, 0.209872, -0.925558,
		-0.937887, -0.218029, 0.269873,
		46.756603, 31.871923, 35.353596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.923939, 32.444675, 34.814579>,  <47.413124, 32.024544, 35.164684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.923939, 32.444675, 34.814579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789303, 32.314064, 35.167870>,  <46.708523, 32.235695, 35.379845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789303, 32.314064, 35.167870>,  <46.923939, 32.444675, 34.814579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789303, 32.314064, 35.167870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064965, 0.943769, 0.324159,
		-0.939409, 0.051729, -0.338873,
		-0.336587, -0.326533, 0.883225,
		46.688328, 32.216103, 35.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830822, 32.530022, 34.102047>,  <46.923939, 32.444675, 34.814579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830822, 32.530022, 34.102047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568508, 32.465302, 33.807083>,  <46.411121, 32.426468, 33.630104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568508, 32.465302, 33.807083>,  <46.830822, 32.530022, 34.102047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568508, 32.465302, 33.807083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547676, -0.570326, 0.612192,
		-0.519618, 0.805324, 0.285393,
		-0.655781, -0.161803, -0.737408,
		46.371773, 32.416759, 33.585861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284019, 32.988506, 34.508385>,  <46.830822, 32.530022, 34.102047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284019, 32.988506, 34.508385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986572, 33.129280, 34.280991>,  <46.808105, 33.213745, 34.144554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986572, 33.129280, 34.280991>,  <47.284019, 32.988506, 34.508385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986572, 33.129280, 34.280991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433405, 0.901154, -0.009047,
		0.509109, -0.253112, -0.822643,
		-0.743618, 0.351932, -0.568486,
		46.763485, 33.234859, 34.110443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472004, 33.255230, 33.829945>,  <47.284019, 32.988506, 34.508385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472004, 33.255230, 33.829945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179375, 33.438778, 34.031635>,  <47.003796, 33.548908, 34.152649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179375, 33.438778, 34.031635>,  <47.472004, 33.255230, 33.829945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179375, 33.438778, 34.031635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589536, 0.797242, 0.129819,
		-0.342418, 0.392230, -0.853760,
		-0.731572, 0.458869, 0.504223,
		46.959904, 33.576439, 34.182903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209385, 33.857597, 33.522579>,  <47.472004, 33.255230, 33.829945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209385, 33.857597, 33.522579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107170, 33.898014, 33.907181>,  <47.045841, 33.922264, 34.137943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107170, 33.898014, 33.907181>,  <47.209385, 33.857597, 33.522579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107170, 33.898014, 33.907181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667103, 0.738262, 0.099717,
		-0.699766, 0.666904, -0.256060,
		-0.255541, 0.101040, 0.961504,
		47.030506, 33.928326, 34.195633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182888, 34.574718, 33.697094>,  <47.209385, 33.857597, 33.522579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182888, 34.574718, 33.697094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209286, 34.371113, 34.040382>,  <47.225124, 34.248951, 34.246357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209286, 34.371113, 34.040382>,  <47.182888, 34.574718, 33.697094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209286, 34.371113, 34.040382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589152, 0.714047, 0.378202,
		-0.805323, 0.480666, 0.347008,
		0.065992, -0.509015, 0.858224,
		47.229084, 34.218407, 34.297848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007923, 34.973827, 34.282764>,  <47.182888, 34.574718, 33.697094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007923, 34.973827, 34.282764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248505, 34.708542, 34.460934>,  <47.392853, 34.549370, 34.567837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248505, 34.708542, 34.460934>,  <47.007923, 34.973827, 34.282764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248505, 34.708542, 34.460934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542477, 0.748336, 0.381721,
		-0.586491, 0.012046, 0.809866,
		0.601454, -0.663210, 0.445427,
		47.428940, 34.509579, 34.594563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149460, 35.246307, 34.950207>,  <47.007923, 34.973827, 34.282764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149460, 35.246307, 34.950207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.435314, 34.987968, 34.842735>,  <47.606827, 34.832966, 34.778252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.435314, 34.987968, 34.842735>,  <47.149460, 35.246307, 34.950207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.435314, 34.987968, 34.842735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685623, 0.570596, 0.452041,
		-0.138642, -0.507254, 0.850572,
		0.714632, -0.645844, -0.268676,
		47.649704, 34.794216, 34.762131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409710, 34.894737, 35.533054>,  <47.149460, 35.246307, 34.950207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409710, 34.894737, 35.533054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685902, 34.928619, 35.245705>,  <47.851616, 34.948948, 35.073296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685902, 34.928619, 35.245705>,  <47.409710, 34.894737, 35.533054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685902, 34.928619, 35.245705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547728, 0.587463, 0.595719,
		0.472479, -0.804806, 0.359237,
		0.690476, 0.084701, -0.718379,
		47.893044, 34.954029, 35.030190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.969337, 33.905846, 22.454208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901192, 33.555405, 22.273802>,  <38.860306, 33.345139, 22.165558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901192, 33.555405, 22.273802>,  <38.969337, 33.905846, 22.454208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901192, 33.555405, 22.273802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008497, -0.458997, 0.888398,
		-0.985345, 0.147516, 0.085640,
		-0.170362, -0.876106, -0.451016,
		38.850082, 33.292572, 22.138496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469921, 33.723259, 22.970366>,  <38.969337, 33.905846, 22.454208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469921, 33.723259, 22.970366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 33.401012, 22.772625>,  <38.678883, 33.207664, 22.653980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 33.401012, 22.772625>,  <38.469921, 33.723259, 22.970366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600521, 33.401012, 22.772625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328090, -0.587094, 0.740053,
		-0.886426, -0.079439, -0.456002,
		0.326505, -0.805612, -0.494352,
		38.698471, 33.159328, 22.624319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960373, 33.346451, 23.146612>,  <38.469921, 33.723259, 22.970366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960373, 33.346451, 23.146612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271114, 33.115448, 23.046223>,  <38.457558, 32.976849, 22.985989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271114, 33.115448, 23.046223>,  <37.960373, 33.346451, 23.146612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271114, 33.115448, 23.046223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041260, -0.444403, 0.894876,
		-0.628328, -0.684832, -0.369064,
		0.776854, -0.577504, -0.250975,
		38.504169, 32.942196, 22.970930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780403, 32.645023, 23.353697>,  <37.960373, 33.346451, 23.146612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780403, 32.645023, 23.353697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180233, 32.653362, 23.345613>,  <38.420132, 32.658367, 23.340763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180233, 32.653362, 23.345613>,  <37.780403, 32.645023, 23.353697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180233, 32.653362, 23.345613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027315, -0.439404, 0.897874,
		0.009840, -0.898048, -0.439788,
		0.999578, 0.020848, -0.020207,
		38.480106, 32.659618, 23.339552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963280, 31.944063, 23.577374>,  <37.780403, 32.645023, 23.353697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963280, 31.944063, 23.577374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269794, 32.195927, 23.628502>,  <38.453705, 32.347046, 23.659180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269794, 32.195927, 23.628502>,  <37.963280, 31.944063, 23.577374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269794, 32.195927, 23.628502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014571, -0.215925, 0.976301,
		0.642335, -0.746263, -0.174635,
		0.766285, 0.629658, 0.127822,
		38.499680, 32.384823, 23.666849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397617, 31.580435, 24.072918>,  <37.963280, 31.944063, 23.577374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397617, 31.580435, 24.072918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481350, 31.970854, 24.049206>,  <38.531590, 32.205105, 24.034979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481350, 31.970854, 24.049206>,  <38.397617, 31.580435, 24.072918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481350, 31.970854, 24.049206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024310, 0.055408, 0.998168,
		0.977543, -0.210384, -0.012129,
		0.209327, 0.976047, -0.059278,
		38.544147, 32.263668, 24.031422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914318, 31.609501, 24.581186>,  <38.397617, 31.580435, 24.072918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914318, 31.609501, 24.581186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759464, 31.969198, 24.499710>,  <38.666553, 32.185017, 24.450825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759464, 31.969198, 24.499710>,  <38.914318, 31.609501, 24.581186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759464, 31.969198, 24.499710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286419, 0.092700, 0.953609,
		0.876408, 0.427517, 0.221672,
		-0.387135, 0.899242, -0.203692,
		38.643322, 32.238972, 24.438602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194298, 31.948757, 25.249107>,  <38.914318, 31.609501, 24.581186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194298, 31.948757, 25.249107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896717, 32.171478, 25.101320>,  <38.718170, 32.305111, 25.012648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896717, 32.171478, 25.101320>,  <39.194298, 31.948757, 25.249107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896717, 32.171478, 25.101320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306868, 0.206484, 0.929084,
		0.593606, 0.804571, 0.017251,
		-0.743951, 0.556804, -0.369467,
		38.673531, 32.338520, 24.990480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286434, 32.596905, 25.488050>,  <39.194298, 31.948757, 25.249107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286434, 32.596905, 25.488050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900894, 32.565659, 25.386150>,  <38.669571, 32.546909, 25.325010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900894, 32.565659, 25.386150>,  <39.286434, 32.596905, 25.488050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900894, 32.565659, 25.386150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263701, 0.416771, 0.869922,
		0.038219, 0.905649, -0.422302,
		-0.963847, -0.078114, -0.254749,
		38.611740, 32.542225, 25.309725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118492, 33.245529, 25.607992>,  <39.286434, 32.596905, 25.488050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118492, 33.245529, 25.607992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762505, 33.066341, 25.573883>,  <38.548912, 32.958828, 25.553417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762505, 33.066341, 25.573883>,  <39.118492, 33.245529, 25.607992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762505, 33.066341, 25.573883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298163, 0.430154, 0.852096,
		-0.345031, 0.783768, -0.516393,
		-0.889974, -0.447968, -0.085274,
		38.495514, 32.931950, 25.548302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615269, 33.704056, 25.528837>,  <39.118492, 33.245529, 25.607992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615269, 33.704056, 25.528837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470303, 33.373798, 25.701797>,  <38.383324, 33.175644, 25.805574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470303, 33.373798, 25.701797>,  <38.615269, 33.704056, 25.528837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470303, 33.373798, 25.701797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038926, 0.476944, 0.878071,
		-0.931204, 0.301393, -0.204990,
		-0.362414, -0.825643, 0.432400,
		38.361580, 33.126106, 25.831518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962891, 33.872517, 25.776005>,  <38.615269, 33.704056, 25.528837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962891, 33.872517, 25.776005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096001, 33.559132, 25.985941>,  <38.175865, 33.371101, 26.111902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096001, 33.559132, 25.985941>,  <37.962891, 33.872517, 25.776005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096001, 33.559132, 25.985941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064586, 0.536316, 0.841543,
		-0.940793, -0.313939, 0.127870,
		0.332772, -0.783459, 0.524838,
		38.195831, 33.324093, 26.143393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712555, 34.073151, 26.384148>,  <37.962891, 33.872517, 25.776005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712555, 34.073151, 26.384148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964539, 33.776230, 26.475491>,  <38.115730, 33.598080, 26.530296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964539, 33.776230, 26.475491>,  <37.712555, 34.073151, 26.384148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964539, 33.776230, 26.475491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038946, 0.323859, 0.945303,
		-0.775652, -0.586608, 0.232927,
		0.629958, -0.742298, 0.228355,
		38.153526, 33.553539, 26.543997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474133, 33.751434, 27.029345>,  <37.712555, 34.073151, 26.384148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474133, 33.751434, 27.029345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867443, 33.692387, 26.986668>,  <38.103428, 33.656956, 26.961061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867443, 33.692387, 26.986668>,  <37.474133, 33.751434, 27.029345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867443, 33.692387, 26.986668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123652, 0.110936, 0.986105,
		-0.133734, -0.982803, 0.127334,
		0.983273, -0.147621, -0.106690,
		38.162426, 33.648102, 26.954660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628113, 33.308495, 27.526207>,  <37.474133, 33.751434, 27.029345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628113, 33.308495, 27.526207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983303, 33.475307, 27.448658>,  <38.196415, 33.575397, 27.402128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983303, 33.475307, 27.448658>,  <37.628113, 33.308495, 27.526207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983303, 33.475307, 27.448658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128003, 0.180782, 0.975158,
		0.441724, -0.890730, 0.107147,
		0.887973, 0.417035, -0.193872,
		38.249695, 33.600418, 27.390497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027126, 33.034275, 28.052637>,  <37.628113, 33.308495, 27.526207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027126, 33.034275, 28.052637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222515, 33.359722, 27.926516>,  <38.339748, 33.554993, 27.850842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222515, 33.359722, 27.926516>,  <38.027126, 33.034275, 28.052637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222515, 33.359722, 27.926516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253055, 0.213730, 0.943548,
		0.835081, -0.540684, -0.101491,
		0.488470, 0.813622, -0.315305,
		38.369057, 33.603809, 27.831924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575012, 32.955692, 28.404249>,  <38.027126, 33.034275, 28.052637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575012, 32.955692, 28.404249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559212, 33.336494, 28.282837>,  <38.549732, 33.564976, 28.209990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559212, 33.336494, 28.282837>,  <38.575012, 32.955692, 28.404249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559212, 33.336494, 28.282837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373927, 0.295779, 0.879030,
		0.926617, -0.078774, -0.367664,
		-0.039502, 0.952003, -0.303530,
		38.547359, 33.622097, 28.191778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237316, 33.207645, 28.530596>,  <38.575012, 32.955692, 28.404249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237316, 33.207645, 28.530596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976452, 33.510860, 28.527473>,  <38.819931, 33.692791, 28.525600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976452, 33.510860, 28.527473>,  <39.237316, 33.207645, 28.530596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976452, 33.510860, 28.527473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333459, 0.296101, 0.895058,
		0.680800, 0.581121, -0.445881,
		-0.652162, 0.758039, -0.007805,
		38.780804, 33.738274, 28.525131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632225, 33.729733, 28.875414>,  <39.237316, 33.207645, 28.530596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632225, 33.729733, 28.875414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261658, 33.880161, 28.868210>,  <39.039318, 33.970417, 28.863888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261658, 33.880161, 28.868210>,  <39.632225, 33.729733, 28.875414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261658, 33.880161, 28.868210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186964, 0.501044, 0.844985,
		0.326796, 0.779441, -0.534487,
		-0.926417, 0.376068, -0.018012,
		38.983734, 33.992981, 28.862806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763325, 34.428017, 28.932293>,  <39.632225, 33.729733, 28.875414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763325, 34.428017, 28.932293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382229, 34.358368, 29.031872>,  <39.153572, 34.316578, 29.091619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382229, 34.358368, 29.031872>,  <39.763325, 34.428017, 28.932293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382229, 34.358368, 29.031872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099506, 0.595379, 0.797259,
		-0.287040, 0.784349, -0.549913,
		-0.952736, -0.174126, 0.248945,
		39.096409, 34.306129, 29.106556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463161, 35.080498, 29.163000>,  <39.763325, 34.428017, 28.932293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463161, 35.080498, 29.163000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214401, 34.808247, 29.317915>,  <39.065147, 34.644897, 29.410864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214401, 34.808247, 29.317915>,  <39.463161, 35.080498, 29.163000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214401, 34.808247, 29.317915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010018, 0.501431, 0.865140,
		-0.783035, 0.534148, -0.318656,
		-0.621896, -0.680627, 0.387287,
		39.027832, 34.604057, 29.434101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917889, 35.474102, 29.472713>,  <39.463161, 35.080498, 29.163000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917889, 35.474102, 29.472713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003258, 35.128372, 29.654875>,  <39.054482, 34.920933, 29.764172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003258, 35.128372, 29.654875>,  <38.917889, 35.474102, 29.472713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003258, 35.128372, 29.654875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053438, 0.475772, 0.877944,
		-0.975497, -0.163040, 0.147730,
		0.213425, -0.864326, 0.455401,
		39.067284, 34.869076, 29.791494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946503, 35.606258, 30.219267>,  <38.917889, 35.474102, 29.472713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946503, 35.606258, 30.219267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177773, 35.928013, 30.273920>,  <39.316536, 36.121067, 30.306713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177773, 35.928013, 30.273920>,  <38.946503, 35.606258, 30.219267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177773, 35.928013, 30.273920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260113, 0.340444, -0.903570,
		-0.773340, 0.486881, 0.406069,
		0.578175, 0.804391, 0.136634,
		39.351227, 36.169331, 30.314911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661907, 36.062012, 29.802208>,  <38.946503, 35.606258, 30.219267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661907, 36.062012, 29.802208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001793, 36.265667, 29.857004>,  <39.205723, 36.387859, 29.889881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001793, 36.265667, 29.857004>,  <38.661907, 36.062012, 29.802208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001793, 36.265667, 29.857004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072336, 0.369940, -0.926235,
		-0.522260, 0.777125, 0.351172,
		0.849713, 0.509138, 0.136991,
		39.256706, 36.418407, 29.898102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520061, 36.754028, 29.524557>,  <38.661907, 36.062012, 29.802208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520061, 36.754028, 29.524557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918415, 36.718048, 29.529060>,  <39.157429, 36.696461, 29.531761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918415, 36.718048, 29.529060>,  <38.520061, 36.754028, 29.524557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918415, 36.718048, 29.529060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045994, 0.394381, -0.917795,
		0.078113, 0.914534, 0.396895,
		0.995883, -0.089947, 0.011257,
		39.217178, 36.691063, 29.532438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809620, 37.406212, 29.235863>,  <38.520061, 36.754028, 29.524557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809620, 37.406212, 29.235863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099140, 37.132401, 29.201141>,  <39.272854, 36.968113, 29.180309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099140, 37.132401, 29.201141>,  <38.809620, 37.406212, 29.235863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099140, 37.132401, 29.201141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042361, 0.169645, -0.984594,
		0.688709, 0.708972, 0.151787,
		0.723799, -0.684529, -0.086803,
		39.316280, 36.927040, 29.175100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221924, 37.693417, 28.803717>,  <38.809620, 37.406212, 29.235863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221924, 37.693417, 28.803717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316280, 37.304794, 28.795443>,  <39.372894, 37.071621, 28.790478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316280, 37.304794, 28.795443>,  <39.221924, 37.693417, 28.803717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316280, 37.304794, 28.795443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150577, 0.057573, -0.986920,
		0.960042, 0.229694, 0.159875,
		0.235894, -0.971558, -0.020686,
		39.387047, 37.013329, 28.789236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855984, 37.654320, 28.417309>,  <39.221924, 37.693417, 28.803717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855984, 37.654320, 28.417309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695591, 37.288193, 28.402346>,  <39.599354, 37.068516, 28.393368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695591, 37.288193, 28.402346>,  <39.855984, 37.654320, 28.417309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695591, 37.288193, 28.402346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108355, -0.006841, -0.994089,
		0.909654, -0.402669, 0.101923,
		-0.400986, -0.915321, -0.037409,
		39.575294, 37.013596, 28.391123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258022, 37.364445, 27.859566>,  <39.855984, 37.654320, 28.417309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258022, 37.364445, 27.859566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 37.161362, 27.882547>,  <39.707870, 37.039513, 27.896336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 37.161362, 27.882547>,  <40.258022, 37.364445, 27.859566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914177, 37.161362, 27.882547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056675, -0.206495, -0.976805,
		0.507797, -0.836416, 0.206279,
		-0.859611, -0.507709, 0.057454,
		39.656292, 37.009048, 27.899784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422905, 36.861469, 27.490126>,  <40.258022, 37.364445, 27.859566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422905, 36.861469, 27.490126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024506, 36.841042, 27.519464>,  <39.785465, 36.828785, 27.537067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024506, 36.841042, 27.519464>,  <40.422905, 36.861469, 27.490126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024506, 36.841042, 27.519464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058500, -0.247900, -0.967018,
		0.067568, -0.967439, 0.243920,
		-0.995998, -0.051070, 0.073345,
		39.725708, 36.825722, 27.541468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311794, 36.210602, 27.139183>,  <40.422905, 36.861469, 27.490126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311794, 36.210602, 27.139183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.970333, 36.418491, 27.152822>,  <39.765457, 36.543224, 27.161007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.970333, 36.418491, 27.152822>,  <40.311794, 36.210602, 27.139183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970333, 36.418491, 27.152822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212541, -0.287832, -0.933798,
		-0.475504, -0.804387, 0.356171,
		-0.853652, 0.519726, 0.034100,
		39.714237, 36.574409, 27.163052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850319, 35.813137, 26.927155>,  <40.311794, 36.210602, 27.139183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850319, 35.813137, 26.927155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687481, 36.172493, 26.861225>,  <39.589779, 36.388107, 26.821669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687481, 36.172493, 26.861225>,  <39.850319, 35.813137, 26.927155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687481, 36.172493, 26.861225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213347, -0.268989, -0.939217,
		-0.888118, -0.347190, 0.301173,
		-0.407099, 0.898390, -0.164822,
		39.565350, 36.442009, 26.811779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261806, 35.661392, 26.538319>,  <39.850319, 35.813137, 26.927155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261806, 35.661392, 26.538319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334667, 36.048599, 26.469305>,  <39.378384, 36.280922, 26.427896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334667, 36.048599, 26.469305>,  <39.261806, 35.661392, 26.538319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334667, 36.048599, 26.469305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123492, -0.151560, -0.980704,
		-0.975484, 0.199945, 0.091935,
		0.182153, 0.968014, -0.172536,
		39.389313, 36.339005, 26.417543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756817, 35.857349, 26.150461>,  <39.261806, 35.661392, 26.538319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756817, 35.857349, 26.150461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021931, 36.150360, 26.088326>,  <39.181000, 36.326164, 26.051044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021931, 36.150360, 26.088326>,  <38.756817, 35.857349, 26.150461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021931, 36.150360, 26.088326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261199, 0.031742, -0.964763,
		-0.701779, 0.680003, 0.212372,
		0.662783, 0.732522, -0.155340,
		39.220764, 36.370117, 26.041723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409927, 36.491817, 25.779049>,  <38.756817, 35.857349, 26.150461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409927, 36.491817, 25.779049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805344, 36.459126, 25.728296>,  <39.042595, 36.439510, 25.697844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805344, 36.459126, 25.728296>,  <38.409927, 36.491817, 25.779049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805344, 36.459126, 25.728296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137218, -0.136603, -0.981076,
		0.062851, 0.987249, -0.146253,
		0.988545, -0.081730, -0.126882,
		39.101906, 36.434608, 25.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568527, 36.893433, 25.237129>,  <38.409927, 36.491817, 25.779049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568527, 36.893433, 25.237129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874756, 36.638203, 25.270010>,  <39.058495, 36.485065, 25.289738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874756, 36.638203, 25.270010>,  <38.568527, 36.893433, 25.237129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874756, 36.638203, 25.270010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068438, -0.207819, -0.975770,
		0.639699, 0.741397, -0.202769,
		0.765572, -0.638076, 0.082203,
		39.104427, 36.446781, 25.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038544, 37.173313, 24.763475>,  <38.568527, 36.893433, 25.237129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038544, 37.173313, 24.763475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130062, 36.791546, 24.840145>,  <39.184971, 36.562485, 24.886147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130062, 36.791546, 24.840145>,  <39.038544, 37.173313, 24.763475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130062, 36.791546, 24.840145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001040, -0.197137, -0.980375,
		0.973474, 0.224105, -0.046096,
		0.228794, -0.954418, 0.191674,
		39.198700, 36.505219, 24.897648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589630, 36.991173, 24.367161>,  <39.038544, 37.173313, 24.763475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589630, 36.991173, 24.367161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413490, 36.638836, 24.436672>,  <39.307804, 36.427433, 24.478378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413490, 36.638836, 24.436672>,  <39.589630, 36.991173, 24.367161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413490, 36.638836, 24.436672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027688, -0.180140, -0.983251,
		0.897398, -0.437790, 0.054936,
		-0.440353, -0.880846, 0.173779,
		39.281384, 36.374580, 24.488806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005375, 36.421944, 24.010838>,  <39.589630, 36.991173, 24.367161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005375, 36.421944, 24.010838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650703, 36.254837, 24.090103>,  <39.437901, 36.154572, 24.137663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650703, 36.254837, 24.090103>,  <40.005375, 36.421944, 24.010838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650703, 36.254837, 24.090103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038428, -0.360511, -0.931963,
		0.460784, -0.833968, 0.303604,
		-0.886680, -0.417766, 0.198165,
		39.384701, 36.129509, 24.149553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029984, 35.772266, 23.752199>,  <40.005375, 36.421944, 24.010838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029984, 35.772266, 23.752199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636490, 35.841137, 23.772699>,  <39.400394, 35.882458, 23.785000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636490, 35.841137, 23.772699>,  <40.029984, 35.772266, 23.752199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636490, 35.841137, 23.772699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106590, -0.329795, -0.938016,
		-0.144599, -0.928220, 0.342782,
		-0.983732, 0.172174, 0.051251,
		39.341370, 35.892788, 23.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.686436, 35.113976, 23.536449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412186, 35.400677, 23.485575>,  <39.247635, 35.572697, 23.455050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412186, 35.400677, 23.485575>,  <39.686436, 35.113976, 23.536449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412186, 35.400677, 23.485575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168329, -0.326088, -0.930232,
		-0.708224, -0.616382, 0.344225,
		-0.685627, 0.716757, -0.127188,
		39.206497, 35.615704, 23.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042198, 34.807346, 23.227009>,  <39.686436, 35.113976, 23.536449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042198, 34.807346, 23.227009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050472, 35.198994, 23.146114>,  <39.055435, 35.433983, 23.097578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050472, 35.198994, 23.146114>,  <39.042198, 34.807346, 23.227009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050472, 35.198994, 23.146114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223201, -0.192650, -0.955546,
		-0.974553, 0.064906, 0.214555,
		0.020686, 0.979119, -0.202234,
		39.056679, 35.492729, 23.085443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371056, 34.975388, 22.856243>,  <39.042198, 34.807346, 23.227009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371056, 34.975388, 22.856243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660046, 35.245144, 22.795280>,  <38.833439, 35.406998, 22.758703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660046, 35.245144, 22.795280>,  <38.371056, 34.975388, 22.856243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660046, 35.245144, 22.795280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134404, -0.079238, -0.987754,
		-0.678207, 0.734112, 0.033393,
		0.722475, 0.674390, -0.152407,
		38.876789, 35.447460, 22.749557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117046, 35.230614, 22.227509>,  <38.371056, 34.975388, 22.856243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117046, 35.230614, 22.227509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479134, 35.400124, 22.240108>,  <38.696388, 35.501831, 22.247667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479134, 35.400124, 22.240108>,  <38.117046, 35.230614, 22.227509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479134, 35.400124, 22.240108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020481, 0.030528, -0.999324,
		-0.424450, 0.905253, 0.018955,
		0.905220, 0.423775, 0.031499,
		38.750698, 35.527256, 22.249557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119884, 35.853619, 21.843496>,  <38.117046, 35.230614, 22.227509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119884, 35.853619, 21.843496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491821, 35.706642, 21.851290>,  <38.714985, 35.618458, 21.855967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491821, 35.706642, 21.851290>,  <38.119884, 35.853619, 21.843496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491821, 35.706642, 21.851290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020004, -0.002395, -0.999797,
		0.367412, 0.930044, 0.005123,
		0.929843, -0.367440, 0.019485,
		38.770775, 35.596409, 21.857136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412243, 36.301987, 21.456656>,  <38.119884, 35.853619, 21.843496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412243, 36.301987, 21.456656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625408, 35.964104, 21.476501>,  <38.753307, 35.761372, 21.488409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625408, 35.964104, 21.476501>,  <38.412243, 36.301987, 21.456656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625408, 35.964104, 21.476501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102194, 0.006048, -0.994746,
		0.839973, 0.535188, 0.089548,
		0.532918, -0.844711, 0.049613,
		38.785282, 35.710690, 21.491386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852104, 36.444027, 20.967030>,  <38.412243, 36.301987, 21.456656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852104, 36.444027, 20.967030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909904, 36.053776, 21.033083>,  <38.944584, 35.819626, 21.072716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909904, 36.053776, 21.033083>,  <38.852104, 36.444027, 20.967030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909904, 36.053776, 21.033083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204591, -0.133822, -0.969657,
		0.968123, 0.173902, 0.180267,
		0.144502, -0.975628, 0.165135,
		38.953255, 35.761086, 21.082623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488991, 36.340103, 20.630287>,  <38.852104, 36.444027, 20.967030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488991, 36.340103, 20.630287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316666, 35.980057, 20.656181>,  <39.213268, 35.764030, 20.671717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316666, 35.980057, 20.656181>,  <39.488991, 36.340103, 20.630287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316666, 35.980057, 20.656181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269656, -0.196855, -0.942621,
		0.861211, -0.388639, 0.327529,
		-0.430815, -0.900116, 0.064735,
		39.187420, 35.710022, 20.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949947, 35.857128, 20.480333>,  <39.488991, 36.340103, 20.630287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949947, 35.857128, 20.480333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590397, 35.719360, 20.371971>,  <39.374664, 35.636700, 20.306953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590397, 35.719360, 20.371971>,  <39.949947, 35.857128, 20.480333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590397, 35.719360, 20.371971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352956, -0.202698, -0.913420,
		0.259690, -0.916672, 0.303767,
		-0.898879, -0.344423, -0.270906,
		39.320732, 35.616035, 20.290699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117191, 35.258575, 20.011286>,  <39.949947, 35.857128, 20.480333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117191, 35.258575, 20.011286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723118, 35.304668, 19.960487>,  <39.486671, 35.332325, 19.930008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723118, 35.304668, 19.960487>,  <40.117191, 35.258575, 20.011286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723118, 35.304668, 19.960487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084075, -0.320875, -0.943383,
		-0.149455, -0.940086, 0.306434,
		-0.985187, 0.115229, -0.126994,
		39.427563, 35.339237, 19.922390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859509, 34.648605, 19.693441>,  <40.117191, 35.258575, 20.011286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859509, 34.648605, 19.693441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581635, 34.919304, 19.595930>,  <39.414909, 35.081722, 19.537422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581635, 34.919304, 19.595930>,  <39.859509, 34.648605, 19.693441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581635, 34.919304, 19.595930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104467, -0.240394, -0.965037,
		-0.711685, -0.695867, 0.096301,
		-0.694688, 0.676742, -0.243780,
		39.373230, 35.122326, 19.522797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694664, 34.400124, 19.069817>,  <39.859509, 34.648605, 19.693441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694664, 34.400124, 19.069817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496502, 34.747585, 19.070763>,  <39.377605, 34.956062, 19.071331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496502, 34.747585, 19.070763>,  <39.694664, 34.400124, 19.069817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496502, 34.747585, 19.070763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014696, 0.011104, -0.999831,
		-0.868537, -0.495288, -0.018267,
		-0.495406, 0.868658, 0.002365,
		39.347881, 35.008183, 19.071472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985287, 34.401524, 18.697605>,  <39.694664, 34.400124, 19.069817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985287, 34.401524, 18.697605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108418, 34.781673, 18.715666>,  <39.182297, 35.009762, 18.726501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108418, 34.781673, 18.715666>,  <38.985287, 34.401524, 18.697605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108418, 34.781673, 18.715666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091497, 0.076805, -0.992839,
		-0.947032, 0.301492, 0.110599,
		0.307828, 0.950370, 0.045151,
		39.200768, 35.066784, 18.729212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492554, 34.786259, 18.250500>,  <38.985287, 34.401524, 18.697605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492554, 34.786259, 18.250500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796242, 35.043915, 18.287733>,  <38.978455, 35.198509, 18.310074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796242, 35.043915, 18.287733>,  <38.492554, 34.786259, 18.250500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796242, 35.043915, 18.287733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068431, 0.221239, -0.972816,
		-0.647222, 0.732215, 0.212049,
		0.759223, 0.644139, 0.093084,
		39.024010, 35.237156, 18.315659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321278, 35.426346, 17.897921>,  <38.492554, 34.786259, 18.250500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321278, 35.426346, 17.897921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720654, 35.404018, 17.897066>,  <38.960278, 35.390621, 17.896553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720654, 35.404018, 17.897066>,  <38.321278, 35.426346, 17.897921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720654, 35.404018, 17.897066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017575, 0.350209, -0.936507,
		0.053025, 0.935007, 0.350643,
		0.998439, -0.055821, -0.002137,
		39.020184, 35.387272, 17.896425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489685, 36.020309, 17.606283>,  <38.321278, 35.426346, 17.897921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489685, 36.020309, 17.606283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792519, 35.761909, 17.567291>,  <38.974220, 35.606869, 17.543896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792519, 35.761909, 17.567291>,  <38.489685, 36.020309, 17.606283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792519, 35.761909, 17.567291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114908, 0.278551, -0.953523,
		0.643129, 0.710699, 0.285118,
		0.757087, -0.646000, -0.097479,
		39.019646, 35.568108, 17.538048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099197, 36.414139, 17.261984>,  <38.489685, 36.020309, 17.606283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099197, 36.414139, 17.261984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126057, 36.021755, 17.189096>,  <39.142174, 35.786324, 17.145363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126057, 36.021755, 17.189096>,  <39.099197, 36.414139, 17.261984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126057, 36.021755, 17.189096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099629, 0.175127, -0.979492,
		0.992756, 0.083926, -0.085973,
		0.067149, -0.980962, -0.182220,
		39.146202, 35.727467, 17.134430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585918, 36.420082, 16.725279>,  <39.099197, 36.414139, 17.261984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585918, 36.420082, 16.725279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381546, 36.076233, 16.725918>,  <39.258923, 35.869923, 16.726301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381546, 36.076233, 16.725918>,  <39.585918, 36.420082, 16.725279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381546, 36.076233, 16.725918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062232, -0.038844, -0.997306,
		0.857365, -0.509456, 0.073342,
		-0.510933, -0.859620, 0.001599,
		39.228268, 35.818348, 16.726397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883415, 36.023010, 16.205442>,  <39.585918, 36.420082, 16.725279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883415, 36.023010, 16.205442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536407, 35.833492, 16.266005>,  <39.328201, 35.719784, 16.302341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536407, 35.833492, 16.266005>,  <39.883415, 36.023010, 16.205442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536407, 35.833492, 16.266005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072571, -0.180576, -0.980880,
		0.492074, -0.861924, 0.122270,
		-0.867523, -0.473792, 0.151408,
		39.276150, 35.691353, 16.311426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850189, 35.577217, 15.713181>,  <39.883415, 36.023010, 16.205442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850189, 35.577217, 15.713181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467037, 35.600483, 15.825669>,  <39.237144, 35.614441, 15.893162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467037, 35.600483, 15.825669>,  <39.850189, 35.577217, 15.713181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467037, 35.600483, 15.825669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287159, -0.203625, -0.935990,
		0.002823, -0.977320, 0.211750,
		-0.957879, 0.058164, 0.281221,
		39.179672, 35.617931, 15.910035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575417, 34.963230, 15.456564>,  <39.850189, 35.577217, 15.713181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575417, 34.963230, 15.456564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274578, 35.219849, 15.516923>,  <39.094074, 35.373821, 15.553138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274578, 35.219849, 15.516923>,  <39.575417, 34.963230, 15.456564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274578, 35.219849, 15.516923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408655, -0.274326, -0.870487,
		-0.517066, -0.716352, 0.468491,
		-0.752093, 0.641549, 0.150896,
		39.048950, 35.412312, 15.562192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917484, 34.627266, 15.313265>,  <39.575417, 34.963230, 15.456564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917484, 34.627266, 15.313265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888660, 35.022369, 15.257938>,  <38.871368, 35.259434, 15.224742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888660, 35.022369, 15.257938>,  <38.917484, 34.627266, 15.313265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888660, 35.022369, 15.257938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439263, -0.155931, -0.884722,
		-0.895464, -0.002992, 0.445123,
		-0.072056, 0.987763, -0.138317,
		38.867043, 35.318699, 15.216443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220829, 34.690872, 15.330712>,  <38.917484, 34.627266, 15.313265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220829, 34.690872, 15.330712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407784, 34.967072, 15.109891>,  <38.519958, 35.132790, 14.977398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407784, 34.967072, 15.109891>,  <38.220829, 34.690872, 15.330712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407784, 34.967072, 15.109891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567935, -0.244032, -0.786065,
		-0.677494, 0.680928, 0.278099,
		0.467389, 0.690496, -0.552053,
		38.548000, 35.174221, 14.944275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670433, 35.115166, 14.948645>,  <38.220829, 34.690872, 15.330712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670433, 35.115166, 14.948645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030128, 35.112762, 14.773676>,  <38.245945, 35.111320, 14.668694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030128, 35.112762, 14.773676>,  <37.670433, 35.115166, 14.948645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030128, 35.112762, 14.773676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421563, -0.279031, -0.862801,
		-0.116872, 0.960263, -0.253447,
		0.899236, -0.006007, -0.437423,
		38.299900, 35.110962, 14.642449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047371, 34.783653, 14.938296>,  <37.670433, 35.115166, 14.948645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047371, 34.783653, 14.938296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971180, 34.442928, 14.743102>,  <36.925465, 34.238491, 14.625986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971180, 34.442928, 14.743102>,  <37.047371, 34.783653, 14.938296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971180, 34.442928, 14.743102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196206, -0.454023, 0.869118,
		-0.961884, 0.261292, -0.080651,
		-0.190476, -0.851815, -0.487985,
		36.914036, 34.187386, 14.596706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502792, 34.512920, 15.393611>,  <37.047371, 34.783653, 14.938296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502792, 34.512920, 15.393611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616104, 34.204575, 15.165392>,  <36.684093, 34.019569, 15.028461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616104, 34.204575, 15.165392>,  <36.502792, 34.512920, 15.393611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616104, 34.204575, 15.165392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218181, -0.631119, 0.744370,
		-0.933889, -0.086384, -0.346972,
		0.283282, -0.770861, -0.570547,
		36.701088, 33.973316, 14.994227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952755, 34.059872, 15.507533>,  <36.502792, 34.512920, 15.393611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952755, 34.059872, 15.507533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284569, 33.865112, 15.398131>,  <36.483658, 33.748257, 15.332490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284569, 33.865112, 15.398131>,  <35.952755, 34.059872, 15.507533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284569, 33.865112, 15.398131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085439, -0.594633, 0.799445,
		-0.551881, -0.639799, -0.534869,
		0.829535, -0.486897, -0.273503,
		36.533428, 33.719044, 15.316080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784279, 33.406010, 15.577281>,  <35.952755, 34.059872, 15.507533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784279, 33.406010, 15.577281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182259, 33.438702, 15.600599>,  <36.421047, 33.458317, 15.614590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182259, 33.438702, 15.600599>,  <35.784279, 33.406010, 15.577281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182259, 33.438702, 15.600599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012947, -0.471386, 0.881832,
		0.099549, -0.878132, -0.467947,
		0.994948, 0.081727, 0.058295,
		36.480743, 33.463219, 15.618088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006142, 32.819855, 16.024530>,  <35.784279, 33.406010, 15.577281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006142, 32.819855, 16.024530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320484, 33.066582, 16.006826>,  <36.509090, 33.214619, 15.996203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320484, 33.066582, 16.006826>,  <36.006142, 32.819855, 16.024530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320484, 33.066582, 16.006826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247341, -0.247911, 0.936676,
		0.566790, -0.747041, -0.347388,
		0.785857, 0.616822, -0.044261,
		36.556240, 33.251629, 15.993548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475082, 32.465351, 16.332075>,  <36.006142, 32.819855, 16.024530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475082, 32.465351, 16.332075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600292, 32.844864, 16.349169>,  <36.675419, 33.072571, 16.359425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600292, 32.844864, 16.349169>,  <36.475082, 32.465351, 16.332075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600292, 32.844864, 16.349169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194924, -0.108217, 0.974830,
		0.929528, -0.296811, -0.218816,
		0.313020, 0.948785, 0.042735,
		36.694199, 33.129498, 16.361990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202099, 32.477978, 16.672972>,  <36.475082, 32.465351, 16.332075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202099, 32.477978, 16.672972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045406, 32.842983, 16.720087>,  <36.951393, 33.061985, 16.748356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045406, 32.842983, 16.720087>,  <37.202099, 32.477978, 16.672972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045406, 32.842983, 16.720087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164239, -0.056612, 0.984795,
		0.905303, 0.405118, -0.127693,
		-0.391729, 0.912510, 0.117787,
		36.927887, 33.116737, 16.755423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722607, 32.722324, 17.041430>,  <37.202099, 32.477978, 16.672972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722607, 32.722324, 17.041430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.406265, 32.959774, 17.100977>,  <37.216461, 33.102245, 17.136705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.406265, 32.959774, 17.100977>,  <37.722607, 32.722324, 17.041430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406265, 32.959774, 17.100977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139800, -0.061589, 0.988263,
		0.595826, 0.802382, -0.034280,
		-0.790853, 0.593625, 0.148869,
		37.169010, 33.137863, 17.145638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908829, 33.254013, 17.472939>,  <37.722607, 32.722324, 17.041430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908829, 33.254013, 17.472939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513474, 33.291447, 17.520836>,  <37.276260, 33.313908, 17.549574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513474, 33.291447, 17.520836>,  <37.908829, 33.254013, 17.472939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513474, 33.291447, 17.520836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134927, 0.177782, 0.974776,
		0.069936, 0.979610, -0.188344,
		-0.988384, 0.093585, 0.119743,
		37.216957, 33.319523, 17.556759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740417, 33.742790, 17.829016>,  <37.908829, 33.254013, 17.472939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740417, 33.742790, 17.829016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385124, 33.582661, 17.919159>,  <37.171947, 33.486584, 17.973246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385124, 33.582661, 17.919159>,  <37.740417, 33.742790, 17.829016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385124, 33.582661, 17.919159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198165, 0.108691, 0.974124,
		-0.414459, 0.909905, -0.017212,
		-0.888231, -0.400323, 0.225359,
		37.118656, 33.462563, 17.986767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396278, 34.218189, 18.198906>,  <37.740417, 33.742790, 17.829016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396278, 34.218189, 18.198906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236263, 33.866341, 18.301849>,  <37.140255, 33.655231, 18.363615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236263, 33.866341, 18.301849>,  <37.396278, 34.218189, 18.198906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236263, 33.866341, 18.301849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249399, 0.165730, 0.954114,
		-0.881913, 0.445866, 0.153079,
		-0.400037, -0.879623, 0.257358,
		37.116253, 33.602455, 18.379057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140167, 34.376884, 18.873634>,  <37.396278, 34.218189, 18.198906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140167, 34.376884, 18.873634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188934, 33.983143, 18.822762>,  <37.218197, 33.746899, 18.792238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188934, 33.983143, 18.822762>,  <37.140167, 34.376884, 18.873634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188934, 33.983143, 18.822762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437972, -0.061634, 0.896874,
		-0.890683, -0.165049, 0.423606,
		0.121920, -0.984357, -0.127183,
		37.225510, 33.687836, 18.784607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865028, 34.163273, 19.529572>,  <37.140167, 34.376884, 18.873634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865028, 34.163273, 19.529572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089630, 33.866661, 19.382690>,  <37.224392, 33.688694, 19.294561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089630, 33.866661, 19.382690>,  <36.865028, 34.163273, 19.529572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089630, 33.866661, 19.382690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459068, -0.090047, 0.883826,
		-0.688452, -0.664846, 0.289852,
		0.561508, -0.741534, -0.367202,
		37.258083, 33.644199, 19.272530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759239, 33.506817, 19.983467>,  <36.865028, 34.163273, 19.529572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759239, 33.506817, 19.983467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115814, 33.476715, 19.804729>,  <37.329762, 33.458656, 19.697487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115814, 33.476715, 19.804729>,  <36.759239, 33.506817, 19.983467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115814, 33.476715, 19.804729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439001, -0.100972, 0.892795,
		-0.112304, -0.992039, -0.056975,
		0.891441, -0.075252, -0.446845,
		37.383247, 33.454140, 19.670675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071312, 33.047348, 20.322348>,  <36.759239, 33.506817, 19.983467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071312, 33.047348, 20.322348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381935, 33.207523, 20.127779>,  <37.568310, 33.303627, 20.011038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381935, 33.207523, 20.127779>,  <37.071312, 33.047348, 20.322348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381935, 33.207523, 20.127779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563274, -0.095352, 0.820750,
		0.282277, -0.911350, -0.299602,
		0.776558, 0.400437, -0.486424,
		37.614902, 33.327656, 19.981852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644592, 32.616753, 20.302681>,  <37.071312, 33.047348, 20.322348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644592, 32.616753, 20.302681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761192, 32.999329, 20.296438>,  <37.831154, 33.228874, 20.292692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761192, 32.999329, 20.296438>,  <37.644592, 32.616753, 20.302681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761192, 32.999329, 20.296438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627770, -0.178968, 0.757546,
		0.721756, -0.230625, -0.652596,
		0.291502, 0.956443, -0.015608,
		37.848644, 33.286263, 20.291756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339333, 32.634190, 20.331377>,  <37.644592, 32.616753, 20.302681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339333, 32.634190, 20.331377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240574, 32.996696, 20.468620>,  <38.181320, 33.214199, 20.550966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240574, 32.996696, 20.468620>,  <38.339333, 32.634190, 20.331377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240574, 32.996696, 20.468620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651894, -0.106642, 0.750774,
		0.716991, 0.409035, -0.564459,
		-0.246898, 0.906266, 0.343109,
		38.166504, 33.268578, 20.571552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011841, 32.975925, 20.521126>,  <38.339333, 32.634190, 20.331377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011841, 32.975925, 20.521126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721634, 33.160107, 20.725716>,  <38.547512, 33.270615, 20.848469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721634, 33.160107, 20.725716>,  <39.011841, 32.975925, 20.521126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721634, 33.160107, 20.725716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589518, 0.032334, 0.807108,
		0.355100, 0.887093, -0.294907,
		-0.725515, 0.460457, 0.511475,
		38.503979, 33.298244, 20.879158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340027, 33.515530, 20.828489>,  <39.011841, 32.975925, 20.521126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340027, 33.515530, 20.828489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007435, 33.440651, 21.037714>,  <38.807880, 33.395725, 21.163248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007435, 33.440651, 21.037714>,  <39.340027, 33.515530, 20.828489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007435, 33.440651, 21.037714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544735, -0.089846, 0.833782,
		-0.109088, 0.978205, 0.176678,
		-0.831483, -0.187198, 0.523061,
		38.757992, 33.384491, 21.194632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491100, 33.806629, 21.501331>,  <39.340027, 33.515530, 20.828489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491100, 33.806629, 21.501331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178291, 33.573059, 21.588488>,  <38.990608, 33.432915, 21.640781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178291, 33.573059, 21.588488>,  <39.491100, 33.806629, 21.501331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178291, 33.573059, 21.588488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420876, -0.236914, 0.875634,
		-0.459686, 0.776466, 0.431032,
		-0.782018, -0.583928, 0.217890,
		38.943687, 33.397881, 21.653854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.144878, 37.231358, 25.895515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861607, 36.950199, 25.922094>,  <39.691643, 36.781506, 25.938042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861607, 36.950199, 25.922094>,  <40.144878, 37.231358, 25.895515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861607, 36.950199, 25.922094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254018, 0.341472, 0.904915,
		-0.658751, 0.623966, -0.420373,
		-0.708182, -0.702896, 0.066447,
		39.649151, 36.739330, 25.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679337, 37.611870, 26.272633>,  <40.144878, 37.231358, 25.895515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679337, 37.611870, 26.272633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556026, 37.233658, 26.314470>,  <39.482040, 37.006729, 26.339573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556026, 37.233658, 26.314470>,  <39.679337, 37.611870, 26.272633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556026, 37.233658, 26.314470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236002, 0.182529, 0.954456,
		-0.921558, 0.269551, -0.279416,
		-0.308276, -0.945529, 0.104596,
		39.463543, 36.950001, 26.345850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051384, 37.633625, 26.696022>,  <39.679337, 37.611870, 26.272633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051384, 37.633625, 26.696022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195175, 37.260910, 26.716227>,  <39.281452, 37.037281, 26.728350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195175, 37.260910, 26.716227>,  <39.051384, 37.633625, 26.696022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195175, 37.260910, 26.716227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131675, 0.002936, 0.991289,
		-0.923816, -0.363000, -0.121637,
		0.359481, -0.931785, 0.050511,
		39.303020, 36.981373, 26.731380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574226, 37.250801, 27.120546>,  <39.051384, 37.633625, 26.696022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574226, 37.250801, 27.120546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937687, 37.084637, 27.137440>,  <39.155762, 36.984936, 27.147575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937687, 37.084637, 27.137440>,  <38.574226, 37.250801, 27.120546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937687, 37.084637, 27.137440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102942, -0.124848, 0.986821,
		-0.404668, -0.901024, -0.156207,
		0.908651, -0.415415, 0.042231,
		39.210281, 36.960014, 27.150108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420769, 36.765644, 27.674061>,  <38.574226, 37.250801, 27.120546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420769, 36.765644, 27.674061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.818733, 36.775059, 27.634861>,  <39.057510, 36.780708, 27.611341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.818733, 36.775059, 27.634861>,  <38.420769, 36.765644, 27.674061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818733, 36.775059, 27.634861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099017, -0.046747, 0.993987,
		0.018813, -0.998630, -0.048840,
		0.994908, 0.023535, -0.098002,
		39.117207, 36.782120, 27.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615337, 36.255775, 28.111698>,  <38.420769, 36.765644, 27.674061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615337, 36.255775, 28.111698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939018, 36.482288, 28.049072>,  <39.133228, 36.618198, 28.011497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939018, 36.482288, 28.049072>,  <38.615337, 36.255775, 28.111698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939018, 36.482288, 28.049072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198176, -0.012218, 0.980090,
		0.553098, -0.824118, -0.122111,
		0.809202, 0.566286, -0.156563,
		39.181778, 36.652172, 28.002104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133888, 35.773495, 28.328392>,  <38.615337, 36.255775, 28.111698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133888, 35.773495, 28.328392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287437, 36.142845, 28.329954>,  <39.379566, 36.364456, 28.330893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287437, 36.142845, 28.329954>,  <39.133888, 35.773495, 28.328392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287437, 36.142845, 28.329954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267982, -0.115453, 0.956481,
		0.883645, -0.366118, -0.291768,
		0.383871, 0.923379, 0.003906,
		39.402599, 36.419857, 28.331125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812534, 35.730122, 28.580481>,  <39.133888, 35.773495, 28.328392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812534, 35.730122, 28.580481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678627, 36.101200, 28.646589>,  <39.598282, 36.323845, 28.686255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678627, 36.101200, 28.646589>,  <39.812534, 35.730122, 28.580481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678627, 36.101200, 28.646589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208614, -0.098075, 0.973068,
		0.918917, 0.360234, -0.160697,
		-0.334772, 0.927692, 0.165273,
		39.578194, 36.379509, 28.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260540, 35.997276, 29.072548>,  <39.812534, 35.730122, 28.580481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260540, 35.997276, 29.072548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967430, 36.269180, 29.084965>,  <39.791565, 36.432323, 29.092415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967430, 36.269180, 29.084965>,  <40.260540, 35.997276, 29.072548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967430, 36.269180, 29.084965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069677, 0.029578, 0.997131,
		0.676893, 0.732837, -0.069037,
		-0.732777, 0.679761, 0.031040,
		39.747597, 36.473110, 29.094276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550842, 36.638966, 29.452213>,  <40.260540, 35.997276, 29.072548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550842, 36.638966, 29.452213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152191, 36.625099, 29.481983>,  <39.913002, 36.616779, 29.499846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152191, 36.625099, 29.481983>,  <40.550842, 36.638966, 29.452213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152191, 36.625099, 29.481983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071695, 0.074233, 0.994660,
		-0.040003, 0.996638, -0.071497,
		-0.996624, -0.034664, 0.074423,
		39.853203, 36.614700, 29.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428059, 36.889301, 30.091610>,  <40.550842, 36.638966, 29.452213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428059, 36.889301, 30.091610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055584, 36.756733, 30.030880>,  <39.832100, 36.677193, 29.994442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055584, 36.756733, 30.030880>,  <40.428059, 36.889301, 30.091610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055584, 36.756733, 30.030880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103743, -0.158339, 0.981920,
		-0.349465, 0.930103, 0.113061,
		-0.931188, -0.331418, -0.151825,
		39.776226, 36.657307, 29.985332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943481, 37.307266, 30.395218>,  <40.428059, 36.889301, 30.091610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943481, 37.307266, 30.395218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770500, 36.946918, 30.380182>,  <39.666710, 36.730709, 30.371161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770500, 36.946918, 30.380182>,  <39.943481, 37.307266, 30.395218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770500, 36.946918, 30.380182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053212, -0.016116, 0.998453,
		-0.900083, 0.433787, -0.040968,
		-0.432456, -0.900871, -0.037589,
		39.640762, 36.676659, 30.368906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542229, 37.260735, 31.042408>,  <39.943481, 37.307266, 30.395218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542229, 37.260735, 31.042408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568943, 36.880825, 30.920115>,  <39.584972, 36.652882, 30.846739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568943, 36.880825, 30.920115>,  <39.542229, 37.260735, 31.042408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568943, 36.880825, 30.920115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073576, -0.300898, 0.950814,
		-0.995051, -0.085993, 0.049786,
		0.066783, -0.949771, -0.305735,
		39.588978, 36.595894, 30.828394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229866, 37.999847, 30.883213>,  <39.542229, 37.260735, 31.042408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229866, 37.999847, 30.883213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.014812, 37.814064, 31.164701>,  <38.885780, 37.702595, 31.333595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.014812, 37.814064, 31.164701>,  <39.229866, 37.999847, 30.883213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014812, 37.814064, 31.164701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831235, 0.431925, -0.349984,
		-0.141403, -0.773124, -0.618291,
		-0.537637, -0.464457, 0.703724,
		38.853523, 37.674728, 31.375818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643879, 38.333405, 31.249205>,  <39.229866, 37.999847, 30.883213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643879, 38.333405, 31.249205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.271549, 38.446854, 31.341396>,  <38.048149, 38.514923, 31.396711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.271549, 38.446854, 31.341396>,  <38.643879, 38.333405, 31.249205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271549, 38.446854, 31.341396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131478, 0.328540, -0.935294,
		-0.340988, -0.900900, -0.268525,
		-0.930828, 0.283619, 0.230477,
		37.992302, 38.531940, 31.410540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245037, 38.009163, 30.796368>,  <38.643879, 38.333405, 31.249205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245037, 38.009163, 30.796368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.037937, 38.333355, 30.905951>,  <37.913677, 38.527870, 30.971701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.037937, 38.333355, 30.905951>,  <38.245037, 38.009163, 30.796368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037937, 38.333355, 30.905951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111511, 0.253555, -0.960872,
		-0.848231, -0.528044, -0.040901,
		-0.517754, 0.810481, 0.273956,
		37.882610, 38.576500, 30.988138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600746, 37.981514, 30.394850>,  <38.245037, 38.009163, 30.796368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600746, 37.981514, 30.394850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615864, 38.359566, 30.524649>,  <37.624935, 38.586399, 30.602528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615864, 38.359566, 30.524649>,  <37.600746, 37.981514, 30.394850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615864, 38.359566, 30.524649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172469, 0.326025, -0.929496,
		-0.984290, -0.020833, 0.175329,
		0.037797, 0.945132, 0.324496,
		37.627205, 38.643105, 30.621998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146461, 38.336037, 29.900082>,  <37.600746, 37.981514, 30.394850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146461, 38.336037, 29.900082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368988, 38.622444, 30.068764>,  <37.502502, 38.794289, 30.169973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368988, 38.622444, 30.068764>,  <37.146461, 38.336037, 29.900082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368988, 38.622444, 30.068764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003645, 0.509583, -0.860413,
		-0.830963, 0.477124, 0.286098,
		0.556315, 0.716015, 0.421706,
		37.535881, 38.837250, 30.195276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724644, 39.094231, 29.856571>,  <37.146461, 38.336037, 29.900082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724644, 39.094231, 29.856571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121452, 39.125919, 29.895805>,  <37.359535, 39.144932, 29.919346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121452, 39.125919, 29.895805>,  <36.724644, 39.094231, 29.856571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121452, 39.125919, 29.895805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055552, 0.423731, -0.904083,
		-0.113186, 0.902317, 0.415949,
		0.992020, 0.079223, 0.098086,
		37.419060, 39.149685, 29.925232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839241, 39.671741, 29.666348>,  <36.724644, 39.094231, 29.856571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839241, 39.671741, 29.666348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206146, 39.514679, 29.639685>,  <37.426289, 39.420441, 29.623686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206146, 39.514679, 29.639685>,  <36.839241, 39.671741, 29.666348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206146, 39.514679, 29.639685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112134, 0.415207, -0.902790,
		0.382165, 0.820623, 0.424886,
		0.917266, -0.392658, -0.066658,
		37.481327, 39.396881, 29.619688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181877, 40.093643, 29.196066>,  <36.839241, 39.671741, 29.666348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181877, 40.093643, 29.196066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432507, 39.781925, 29.200047>,  <37.582886, 39.594894, 29.202435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432507, 39.781925, 29.200047>,  <37.181877, 40.093643, 29.196066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432507, 39.781925, 29.200047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152797, 0.110311, -0.982082,
		0.764234, 0.616871, 0.188193,
		0.626578, -0.779296, 0.009952,
		37.620480, 39.548138, 29.203032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704094, 40.302425, 28.758842>,  <37.181877, 40.093643, 29.196066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704094, 40.302425, 28.758842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726589, 39.903275, 28.771933>,  <37.740086, 39.663784, 28.779787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726589, 39.903275, 28.771933>,  <37.704094, 40.302425, 28.758842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726589, 39.903275, 28.771933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210679, -0.020179, -0.977347,
		0.975936, 0.061860, 0.209097,
		0.056239, -0.997881, 0.032726,
		37.743462, 39.603909, 28.781750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278767, 40.042480, 28.302038>,  <37.704094, 40.302425, 28.758842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278767, 40.042480, 28.302038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019855, 39.743134, 28.359966>,  <37.864510, 39.563526, 28.394724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019855, 39.743134, 28.359966>,  <38.278767, 40.042480, 28.302038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019855, 39.743134, 28.359966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106728, -0.277099, -0.954895,
		0.754743, -0.602629, 0.259232,
		-0.647281, -0.748368, 0.144821,
		37.825672, 39.518623, 28.403412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525833, 39.573269, 27.933224>,  <38.278767, 40.042480, 28.302038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525833, 39.573269, 27.933224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167492, 39.407608, 27.997641>,  <37.952488, 39.308212, 28.036291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167492, 39.407608, 27.997641>,  <38.525833, 39.573269, 27.933224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167492, 39.407608, 27.997641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011411, -0.340854, -0.940047,
		0.444211, -0.843979, 0.300627,
		-0.895849, -0.414149, 0.161042,
		37.898739, 39.283363, 28.045954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536407, 38.844879, 27.684639>,  <38.525833, 39.573269, 27.933224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536407, 38.844879, 27.684639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165867, 38.995537, 27.685783>,  <37.943542, 39.085934, 27.686470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165867, 38.995537, 27.685783>,  <38.536407, 38.844879, 27.684639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165867, 38.995537, 27.685783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184770, -0.447795, -0.874837,
		-0.328223, -0.810936, 0.484409,
		-0.926353, 0.376646, 0.002861,
		37.887962, 39.108532, 27.686642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111389, 38.266899, 27.542774>,  <38.536407, 38.844879, 27.684639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111389, 38.266899, 27.542774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895916, 38.594273, 27.462786>,  <37.766632, 38.790695, 27.414793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895916, 38.594273, 27.462786>,  <38.111389, 38.266899, 27.542774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895916, 38.594273, 27.462786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181727, -0.344638, -0.920978,
		-0.822674, -0.459778, 0.334383,
		-0.538686, 0.818431, -0.199970,
		37.734310, 38.839802, 27.402794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528187, 38.066502, 27.133904>,  <38.111389, 38.266899, 27.542774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528187, 38.066502, 27.133904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553986, 38.457329, 27.052732>,  <37.569466, 38.691826, 27.004030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553986, 38.457329, 27.052732>,  <37.528187, 38.066502, 27.133904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553986, 38.457329, 27.052732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207829, -0.185742, -0.960368,
		-0.976036, 0.104117, 0.191083,
		0.064499, 0.977067, -0.202930,
		37.573334, 38.750450, 26.991854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906136, 38.187294, 26.782892>,  <37.528187, 38.066502, 27.133904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906136, 38.187294, 26.782892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179688, 38.462803, 26.686642>,  <37.343819, 38.628109, 26.628891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179688, 38.462803, 26.686642>,  <36.906136, 38.187294, 26.782892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179688, 38.462803, 26.686642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153443, -0.186652, -0.970369,
		-0.713276, 0.700539, -0.021961,
		0.683880, 0.688772, -0.240627,
		37.384853, 38.669434, 26.614454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148273, 38.358410, 26.693567>,  <36.906136, 38.187294, 26.782892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148273, 38.358410, 26.693567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823166, 38.125912, 26.709379>,  <35.628101, 37.986412, 26.718866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823166, 38.125912, 26.709379>,  <36.148273, 38.358410, 26.693567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823166, 38.125912, 26.709379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299937, -0.359315, 0.883703,
		-0.499441, 0.730104, 0.466376,
		-0.812771, -0.581241, 0.039528,
		35.579334, 37.951538, 26.721237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858459, 38.357597, 27.339989>,  <36.148273, 38.358410, 26.693567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858459, 38.357597, 27.339989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.717579, 38.005039, 27.214069>,  <35.633049, 37.793507, 27.138517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.717579, 38.005039, 27.214069>,  <35.858459, 38.357597, 27.339989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717579, 38.005039, 27.214069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255771, -0.414191, 0.873514,
		-0.900297, 0.227136, 0.371314,
		-0.352201, -0.881394, -0.314801,
		35.611919, 37.740620, 27.119629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325325, 38.197830, 27.853437>,  <35.858459, 38.357597, 27.339989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325325, 38.197830, 27.853437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432186, 37.866138, 27.657066>,  <35.496304, 37.667122, 27.539244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432186, 37.866138, 27.657066>,  <35.325325, 38.197830, 27.853437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432186, 37.866138, 27.657066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294233, -0.414927, 0.860966,
		-0.917637, -0.374455, 0.133139,
		0.267150, -0.829228, -0.490929,
		35.512333, 37.617371, 27.509789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920631, 37.683159, 28.270256>,  <35.325325, 38.197830, 27.853437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920631, 37.683159, 28.270256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.217892, 37.505871, 28.069744>,  <35.396248, 37.399498, 27.949438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.217892, 37.505871, 28.069744>,  <34.920631, 37.683159, 28.270256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217892, 37.505871, 28.069744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182553, -0.586439, 0.789154,
		-0.643739, -0.677971, -0.354902,
		0.743152, -0.443221, -0.501280,
		35.440838, 37.372906, 27.919361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840061, 37.059078, 28.521727>,  <34.920631, 37.683159, 28.270256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840061, 37.059078, 28.521727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196926, 37.025700, 28.344152>,  <35.411045, 37.005672, 28.237608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196926, 37.025700, 28.344152>,  <34.840061, 37.059078, 28.521727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196926, 37.025700, 28.344152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315221, -0.588903, 0.744197,
		-0.323537, -0.803884, -0.499093,
		0.892165, -0.083450, -0.443933,
		35.464577, 37.000664, 28.210972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046913, 36.347412, 28.371929>,  <34.840061, 37.059078, 28.521727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046913, 36.347412, 28.371929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394730, 36.544952, 28.370790>,  <35.603420, 36.663475, 28.370108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394730, 36.544952, 28.370790>,  <35.046913, 36.347412, 28.371929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394730, 36.544952, 28.370790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309642, -0.540697, 0.782157,
		0.384726, -0.681001, -0.623075,
		0.869545, 0.493846, -0.002846,
		35.655594, 36.693108, 28.369936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471081, 35.837559, 28.531584>,  <35.046913, 36.347412, 28.371929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471081, 35.837559, 28.531584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.675594, 36.169704, 28.620213>,  <35.798302, 36.368992, 28.673389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.675594, 36.169704, 28.620213>,  <35.471081, 35.837559, 28.531584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675594, 36.169704, 28.620213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319829, -0.423136, 0.847741,
		0.797686, -0.362568, -0.481914,
		0.511279, 0.830361, 0.221570,
		35.828979, 36.418812, 28.686684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194275, 35.617569, 28.830620>,  <35.471081, 35.837559, 28.531584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194275, 35.617569, 28.830620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108402, 35.984203, 28.965544>,  <36.056877, 36.204185, 29.046499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108402, 35.984203, 28.965544>,  <36.194275, 35.617569, 28.830620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108402, 35.984203, 28.965544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510011, -0.189331, 0.839073,
		0.832947, 0.352167, -0.426823,
		-0.214683, 0.916587, 0.337312,
		36.043999, 36.259178, 29.066738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810635, 35.791756, 29.218233>,  <36.194275, 35.617569, 28.830620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810635, 35.791756, 29.218233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519676, 36.036568, 29.342373>,  <36.345100, 36.183456, 29.416857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519676, 36.036568, 29.342373>,  <36.810635, 35.791756, 29.218233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519676, 36.036568, 29.342373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353921, -0.052871, 0.933780,
		0.587909, 0.789066, -0.178152,
		-0.727395, 0.612029, 0.310350,
		36.301456, 36.220177, 29.435478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184429, 36.253620, 29.639175>,  <36.810635, 35.791756, 29.218233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184429, 36.253620, 29.639175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799294, 36.273346, 29.745392>,  <36.568214, 36.285183, 29.809122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799294, 36.273346, 29.745392>,  <37.184429, 36.253620, 29.639175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799294, 36.273346, 29.745392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257489, -0.129132, 0.957614,
		0.081513, 0.990401, 0.111635,
		-0.962837, 0.049314, 0.265543,
		36.510441, 36.288139, 29.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961502, 36.900471, 30.115221>,  <37.184429, 36.253620, 29.639175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961502, 36.900471, 30.115221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687531, 36.616009, 30.178627>,  <36.523148, 36.445332, 30.216671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687531, 36.616009, 30.178627>,  <36.961502, 36.900471, 30.115221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687531, 36.616009, 30.178627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177347, 0.048297, 0.982963,
		-0.706697, 0.701372, 0.093042,
		-0.684929, -0.711157, 0.158517,
		36.482052, 36.402660, 30.226183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646187, 37.094627, 30.734781>,  <36.961502, 36.900471, 30.115221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646187, 37.094627, 30.734781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.559292, 36.704952, 30.710224>,  <36.507156, 36.471146, 30.695490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.559292, 36.704952, 30.710224>,  <36.646187, 37.094627, 30.734781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559292, 36.704952, 30.710224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210101, -0.108088, 0.971686,
		-0.953240, 0.198186, 0.228158,
		-0.217236, -0.974186, -0.061395,
		36.494122, 36.412697, 30.691805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.585320, 39.810772, 23.682602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557228, 39.416897, 23.618778>,  <34.540375, 39.180573, 23.580484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557228, 39.416897, 23.618778>,  <34.585320, 39.810772, 23.682602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557228, 39.416897, 23.618778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111903, -0.151168, 0.982154,
		-0.991234, 0.086830, -0.099573,
		-0.070228, -0.984687, -0.159560,
		34.536160, 39.121490, 23.570910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928711, 39.591793, 24.009829>,  <34.585320, 39.810772, 23.682602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928711, 39.591793, 24.009829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149708, 39.261093, 23.967419>,  <34.282307, 39.062675, 23.941973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149708, 39.261093, 23.967419>,  <33.928711, 39.591793, 24.009829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149708, 39.261093, 23.967419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117440, -0.203144, 0.972081,
		-0.825203, -0.524617, -0.209329,
		0.552493, -0.826747, -0.106024,
		34.315456, 39.013069, 23.935612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593712, 39.021168, 24.347422>,  <33.928711, 39.591793, 24.009829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593712, 39.021168, 24.347422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971775, 38.894489, 24.315464>,  <34.198612, 38.818481, 24.296289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971775, 38.894489, 24.315464>,  <33.593712, 39.021168, 24.347422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971775, 38.894489, 24.315464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062099, -0.414391, 0.907978,
		-0.320655, -0.853221, -0.411332,
		0.945158, -0.316691, -0.079892,
		34.255322, 38.799480, 24.291496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699654, 38.507309, 24.855244>,  <33.593712, 39.021168, 24.347422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699654, 38.507309, 24.855244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081638, 38.549511, 24.744314>,  <34.310829, 38.574833, 24.677757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081638, 38.549511, 24.744314>,  <33.699654, 38.507309, 24.855244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081638, 38.549511, 24.744314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279482, -0.633738, 0.721294,
		-0.099650, -0.766319, -0.634686,
		0.954966, 0.105507, -0.277324,
		34.368130, 38.581161, 24.661118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926357, 37.824486, 25.038383>,  <33.699654, 38.507309, 24.855244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926357, 37.824486, 25.038383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226955, 38.083103, 24.985880>,  <34.407314, 38.238274, 24.954378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226955, 38.083103, 24.985880>,  <33.926357, 37.824486, 25.038383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226955, 38.083103, 24.985880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491068, -0.415329, 0.765738,
		0.440569, -0.639907, -0.629617,
		0.751499, 0.646545, -0.131257,
		34.452404, 38.277065, 24.946503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489502, 37.467381, 25.199196>,  <33.926357, 37.824486, 25.038383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489502, 37.467381, 25.199196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611824, 37.845520, 25.244459>,  <34.685219, 38.072403, 25.271618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611824, 37.845520, 25.244459>,  <34.489502, 37.467381, 25.199196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611824, 37.845520, 25.244459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573975, -0.277874, 0.770284,
		0.759629, -0.170606, -0.627581,
		0.305804, 0.945346, 0.113158,
		34.703564, 38.129124, 25.278406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223862, 37.466980, 25.187548>,  <34.489502, 37.467381, 25.199196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223862, 37.466980, 25.187548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098618, 37.788380, 25.390072>,  <35.023472, 37.981220, 25.511587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098618, 37.788380, 25.390072>,  <35.223862, 37.466980, 25.187548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098618, 37.788380, 25.390072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521192, -0.300293, 0.798864,
		0.793928, 0.514017, -0.324753,
		-0.313108, 0.803499, 0.506312,
		35.004684, 38.029430, 25.541965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873222, 37.724411, 25.504652>,  <35.223862, 37.466980, 25.187548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873222, 37.724411, 25.504652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564220, 37.889732, 25.697493>,  <35.378819, 37.988926, 25.813196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564220, 37.889732, 25.697493>,  <35.873222, 37.724411, 25.504652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564220, 37.889732, 25.697493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410781, -0.253703, 0.875725,
		0.484251, 0.874536, 0.026208,
		-0.772502, 0.413305, 0.482099,
		35.332470, 38.013725, 25.842123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183651, 38.130169, 26.024662>,  <35.873222, 37.724411, 25.504652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183651, 38.130169, 26.024662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813015, 38.041080, 26.145880>,  <35.590633, 37.987629, 26.218611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813015, 38.041080, 26.145880>,  <36.183651, 38.130169, 26.024662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813015, 38.041080, 26.145880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363464, -0.323317, 0.873705,
		-0.096612, 0.919708, 0.380531,
		-0.926585, -0.222720, 0.303044,
		35.535038, 37.974266, 26.236794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745327, 38.590946, 25.881838>,  <36.183651, 38.130169, 26.024662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745327, 38.590946, 25.881838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094391, 38.761333, 25.977346>,  <37.303829, 38.863567, 26.034653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094391, 38.761333, 25.977346>,  <36.745327, 38.590946, 25.881838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094391, 38.761333, 25.977346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272953, -0.020047, -0.961818,
		-0.404919, 0.904515, -0.133764,
		0.872661, 0.425970, 0.238773,
		37.356190, 38.889126, 26.048979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845818, 39.223808, 25.427694>,  <36.745327, 38.590946, 25.881838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845818, 39.223808, 25.427694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204712, 39.099285, 25.552950>,  <37.420048, 39.024570, 25.628103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204712, 39.099285, 25.552950>,  <36.845818, 39.223808, 25.427694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204712, 39.099285, 25.552950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369423, 0.140786, -0.918535,
		0.241865, 0.939821, 0.241324,
		0.897233, -0.311312, 0.313141,
		37.473881, 39.005890, 25.646893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342804, 39.736965, 25.085358>,  <36.845818, 39.223808, 25.427694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342804, 39.736965, 25.085358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506496, 39.390316, 25.199553>,  <37.604710, 39.182327, 25.268070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506496, 39.390316, 25.199553>,  <37.342804, 39.736965, 25.085358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506496, 39.390316, 25.199553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485169, -0.058314, -0.872474,
		0.772751, 0.495551, 0.396593,
		0.409229, -0.866619, 0.285488,
		37.629265, 39.130329, 25.285198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092663, 39.680061, 24.826162>,  <37.342804, 39.736965, 25.085358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092663, 39.680061, 24.826162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978001, 39.302979, 24.894440>,  <37.909203, 39.076729, 24.935406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978001, 39.302979, 24.894440>,  <38.092663, 39.680061, 24.826162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978001, 39.302979, 24.894440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403672, -0.280436, -0.870865,
		0.868837, -0.180734, 0.460932,
		-0.286656, -0.942704, 0.170696,
		37.892002, 39.020168, 24.945648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632107, 39.345612, 24.462997>,  <38.092663, 39.680061, 24.826162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632107, 39.345612, 24.462997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303959, 39.122536, 24.513552>,  <38.107071, 38.988689, 24.543884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303959, 39.122536, 24.513552>,  <38.632107, 39.345612, 24.462997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303959, 39.122536, 24.513552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051079, -0.291607, -0.955174,
		0.569542, -0.777143, 0.267713,
		-0.820374, -0.557686, 0.126387,
		38.057846, 38.955231, 24.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834682, 38.725216, 24.126892>,  <38.632107, 39.345612, 24.462997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834682, 38.725216, 24.126892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434898, 38.738014, 24.124016>,  <38.195026, 38.745693, 24.122290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434898, 38.738014, 24.124016>,  <38.834682, 38.725216, 24.126892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434898, 38.738014, 24.124016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004187, -0.341926, -0.939717,
		-0.032528, -0.939182, 0.341876,
		-0.999462, 0.031999, -0.007190,
		38.135059, 38.747616, 24.121859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669888, 38.148190, 23.852055>,  <38.834682, 38.725216, 24.126892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669888, 38.148190, 23.852055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346584, 38.374104, 23.785439>,  <38.152603, 38.509651, 23.745470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346584, 38.374104, 23.785439>,  <38.669888, 38.148190, 23.852055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346584, 38.374104, 23.785439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020418, -0.309545, -0.950665,
		-0.588473, -0.764984, 0.261725,
		-0.808259, 0.564785, -0.166539,
		38.104107, 38.543537, 23.735477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146290, 37.741230, 23.519739>,  <38.669888, 38.148190, 23.852055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146290, 37.741230, 23.519739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043350, 38.119095, 23.438362>,  <37.981586, 38.345814, 23.389536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043350, 38.119095, 23.438362>,  <38.146290, 37.741230, 23.519739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043350, 38.119095, 23.438362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009278, -0.208108, -0.978062,
		-0.966274, -0.253590, 0.044792,
		-0.257348, 0.944660, -0.203443,
		37.966145, 38.402493, 23.377329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666180, 37.581142, 22.911066>,  <38.146290, 37.741230, 23.519739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666180, 37.581142, 22.911066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703171, 37.975712, 22.856775>,  <37.725365, 38.212452, 22.824200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703171, 37.975712, 22.856775>,  <37.666180, 37.581142, 22.911066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703171, 37.975712, 22.856775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297212, -0.102752, -0.949267,
		-0.950323, 0.128127, 0.283673,
		0.092479, 0.986420, -0.135728,
		37.730915, 38.271637, 22.816057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044903, 37.820915, 22.768267>,  <37.666180, 37.581142, 22.911066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044903, 37.820915, 22.768267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303905, 38.093067, 22.630964>,  <37.459309, 38.256359, 22.548584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303905, 38.093067, 22.630964>,  <37.044903, 37.820915, 22.768267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303905, 38.093067, 22.630964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317753, -0.168357, -0.933107,
		-0.692652, 0.713264, 0.107179,
		0.647507, 0.680375, -0.343255,
		37.498158, 38.297180, 22.527988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689178, 38.117561, 22.166271>,  <37.044903, 37.820915, 22.768267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689178, 38.117561, 22.166271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072708, 38.218945, 22.115021>,  <37.302826, 38.279774, 22.084270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072708, 38.218945, 22.115021>,  <36.689178, 38.117561, 22.166271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072708, 38.218945, 22.115021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111067, -0.080573, -0.990541,
		-0.261389, 0.963984, -0.049104,
		0.958822, 0.253462, -0.128128,
		37.360355, 38.294983, 22.076582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722416, 38.550079, 21.594198>,  <36.689178, 38.117561, 22.166271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722416, 38.550079, 21.594198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111782, 38.459587, 21.608496>,  <37.345402, 38.405293, 21.617073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111782, 38.459587, 21.608496>,  <36.722416, 38.550079, 21.594198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111782, 38.459587, 21.608496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062827, 0.113673, -0.991530,
		0.220253, 0.967418, 0.124865,
		0.973417, -0.226233, 0.035743,
		37.403809, 38.391716, 21.619219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997440, 39.017300, 21.150970>,  <36.722416, 38.550079, 21.594198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997440, 39.017300, 21.150970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243050, 38.701820, 21.163176>,  <37.390415, 38.512531, 21.170500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243050, 38.701820, 21.163176>,  <36.997440, 39.017300, 21.150970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243050, 38.701820, 21.163176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031053, -0.062769, -0.997545,
		0.788678, 0.611567, -0.063033,
		0.614022, -0.788699, 0.030514,
		37.427258, 38.465210, 21.172329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367859, 39.091866, 20.605719>,  <36.997440, 39.017300, 21.150970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367859, 39.091866, 20.605719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446674, 38.710724, 20.698017>,  <37.493965, 38.482040, 20.753397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446674, 38.710724, 20.698017>,  <37.367859, 39.091866, 20.605719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446674, 38.710724, 20.698017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045738, -0.226172, -0.973013,
		0.979328, 0.202276, -0.000983,
		0.197039, -0.952854, 0.230749,
		37.505787, 38.424870, 20.767242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.326145, 32.329815, 21.271280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491802, 32.690174, 21.323231>,  <34.591194, 32.906391, 21.354401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491802, 32.690174, 21.323231>,  <34.326145, 32.329815, 21.271280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491802, 32.690174, 21.323231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038763, -0.160017, 0.986353,
		0.909388, -0.403452, -0.101191,
		0.414138, 0.900900, 0.129878,
		34.616043, 32.960445, 21.362194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957203, 32.182869, 21.617569>,  <34.326145, 32.329815, 21.271280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957203, 32.182869, 21.617569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870731, 32.564445, 21.700768>,  <34.818848, 32.793392, 21.750687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870731, 32.564445, 21.700768>,  <34.957203, 32.182869, 21.617569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870731, 32.564445, 21.700768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179553, -0.170558, 0.968850,
		0.959701, 0.246796, -0.134411,
		-0.216184, 0.953940, 0.207997,
		34.805878, 32.850628, 21.763166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467632, 32.399132, 22.041859>,  <34.957203, 32.182869, 21.617569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467632, 32.399132, 22.041859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185234, 32.678040, 22.091486>,  <35.015797, 32.845383, 22.121262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185234, 32.678040, 22.091486>,  <35.467632, 32.399132, 22.041859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185234, 32.678040, 22.091486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055349, -0.120325, 0.991191,
		0.706052, 0.706641, 0.046356,
		-0.705994, 0.697267, 0.124067,
		34.973434, 32.887218, 22.128706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836678, 32.835026, 22.377037>,  <35.467632, 32.399132, 22.041859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836678, 32.835026, 22.377037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448677, 32.900707, 22.448730>,  <35.215878, 32.940117, 22.491747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448677, 32.900707, 22.448730>,  <35.836678, 32.835026, 22.377037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448677, 32.900707, 22.448730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151606, -0.167694, 0.974112,
		0.190014, 0.972067, 0.137770,
		-0.970005, 0.164208, 0.179235,
		35.157677, 32.949970, 22.502501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832306, 33.345608, 22.929976>,  <35.836678, 32.835026, 22.377037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832306, 33.345608, 22.929976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474022, 33.170849, 22.963015>,  <35.259052, 33.065994, 22.982838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474022, 33.170849, 22.963015>,  <35.832306, 33.345608, 22.929976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474022, 33.170849, 22.963015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149977, -0.121990, 0.981135,
		-0.418580, 0.891201, 0.174792,
		-0.895711, -0.436898, 0.082598,
		35.205307, 33.039780, 22.987793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326962, 33.752396, 23.407312>,  <35.832306, 33.345608, 22.929976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326962, 33.752396, 23.407312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185711, 33.378281, 23.397997>,  <35.100960, 33.153812, 23.392408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185711, 33.378281, 23.397997>,  <35.326962, 33.752396, 23.407312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185711, 33.378281, 23.397997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023982, -0.033934, 0.999136,
		-0.935270, 0.352258, 0.034413,
		-0.353122, -0.935287, -0.023289,
		35.079773, 33.097694, 23.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893963, 33.725761, 23.951605>,  <35.326962, 33.752396, 23.407312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893963, 33.725761, 23.951605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.986031, 33.344013, 23.875496>,  <35.041271, 33.114964, 23.829830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.986031, 33.344013, 23.875496>,  <34.893963, 33.725761, 23.951605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986031, 33.344013, 23.875496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134617, -0.162416, 0.977496,
		-0.963795, -0.250604, 0.091091,
		0.230170, -0.954368, -0.190271,
		35.055080, 33.057701, 23.818415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692581, 33.323833, 24.534433>,  <34.893963, 33.725761, 23.951605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692581, 33.323833, 24.534433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946835, 33.085495, 24.338091>,  <35.099388, 32.942493, 24.220285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946835, 33.085495, 24.338091>,  <34.692581, 33.323833, 24.534433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946835, 33.085495, 24.338091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397238, -0.292749, 0.869770,
		-0.661944, -0.747843, 0.050610,
		0.635635, -0.595843, -0.490855,
		35.137524, 32.906742, 24.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591015, 32.650280, 24.761625>,  <34.692581, 33.323833, 24.534433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591015, 32.650280, 24.761625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.959362, 32.663536, 24.606243>,  <35.180370, 32.671490, 24.513014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.959362, 32.663536, 24.606243>,  <34.591015, 32.650280, 24.761625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959362, 32.663536, 24.606243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386940, -0.199591, 0.900245,
		-0.047693, -0.979319, -0.196623,
		0.920871, 0.033146, -0.388457,
		35.235622, 32.673481, 24.489706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882591, 31.869541, 24.888121>,  <34.591015, 32.650280, 24.761625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882591, 31.869541, 24.888121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214737, 32.074932, 24.801548>,  <35.414024, 32.198166, 24.749605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214737, 32.074932, 24.801548>,  <34.882591, 31.869541, 24.888121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214737, 32.074932, 24.801548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395974, -0.270469, 0.877525,
		0.392052, -0.814363, -0.427910,
		0.830361, 0.513477, -0.216429,
		35.463844, 32.228973, 24.736620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429104, 31.427420, 24.813797>,  <34.882591, 31.869541, 24.888121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429104, 31.427420, 24.813797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591457, 31.781605, 24.904320>,  <35.688869, 31.994116, 24.958633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591457, 31.781605, 24.904320>,  <35.429104, 31.427420, 24.813797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591457, 31.781605, 24.904320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399560, -0.394626, 0.827419,
		0.821953, -0.245416, -0.513969,
		0.405887, 0.885461, 0.226305,
		35.713223, 32.047245, 24.972212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070591, 31.232038, 25.079018>,  <35.429104, 31.427420, 24.813797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070591, 31.232038, 25.079018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024223, 31.606220, 25.212578>,  <35.996403, 31.830729, 25.292713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024223, 31.606220, 25.212578>,  <36.070591, 31.232038, 25.079018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024223, 31.606220, 25.212578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264826, -0.294891, 0.918099,
		0.957304, 0.194847, -0.213550,
		-0.115915, 0.935454, 0.333901,
		35.989449, 31.886856, 25.312748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702835, 31.293079, 25.508671>,  <36.070591, 31.232038, 25.079018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702835, 31.293079, 25.508671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455467, 31.590904, 25.609221>,  <36.307049, 31.769598, 25.669550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455467, 31.590904, 25.609221>,  <36.702835, 31.293079, 25.508671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455467, 31.590904, 25.609221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354589, -0.021080, 0.934784,
		0.701303, 0.667221, -0.250977,
		-0.618418, 0.744561, 0.251373,
		36.269943, 31.814272, 25.684633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100918, 31.702776, 25.914297>,  <36.702835, 31.293079, 25.508671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100918, 31.702776, 25.914297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724995, 31.798752, 26.011608>,  <36.499439, 31.856337, 26.069996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724995, 31.798752, 26.011608>,  <37.100918, 31.702776, 25.914297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724995, 31.798752, 26.011608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192838, -0.215316, 0.957315,
		0.282080, 0.946609, 0.156087,
		-0.939811, 0.239940, 0.243279,
		36.443050, 31.870733, 26.084591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359562, 32.285755, 25.573320>,  <37.100918, 31.702776, 25.914297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359562, 32.285755, 25.573320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693699, 32.504604, 25.551899>,  <37.894180, 32.635914, 25.539045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693699, 32.504604, 25.551899>,  <37.359562, 32.285755, 25.573320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693699, 32.504604, 25.551899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227683, -0.432995, -0.872167,
		-0.500368, 0.716363, -0.486268,
		0.835339, 0.547120, -0.053553,
		37.944302, 32.668739, 25.535833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345181, 32.584396, 24.906860>,  <37.359562, 32.285755, 25.573320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345181, 32.584396, 24.906860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724636, 32.589256, 25.033312>,  <37.952309, 32.592171, 25.109182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724636, 32.589256, 25.033312>,  <37.345181, 32.584396, 24.906860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724636, 32.589256, 25.033312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308245, -0.260384, -0.914978,
		0.071198, 0.965429, -0.250756,
		0.948639, 0.012149, 0.316128,
		38.009228, 32.592899, 25.128151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692474, 33.005028, 24.475971>,  <37.345181, 32.584396, 24.906860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692474, 33.005028, 24.475971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.008503, 32.819260, 24.636026>,  <38.198120, 32.707798, 24.732059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.008503, 32.819260, 24.636026>,  <37.692474, 33.005028, 24.475971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008503, 32.819260, 24.636026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449188, -0.005598, -0.893420,
		0.417159, 0.885599, 0.204187,
		0.790069, -0.464417, 0.400136,
		38.245525, 32.679935, 24.756067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282528, 33.395737, 24.194550>,  <37.692474, 33.005028, 24.475971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282528, 33.395737, 24.194550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389156, 33.022720, 24.291956>,  <38.453133, 32.798908, 24.350399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389156, 33.022720, 24.291956>,  <38.282528, 33.395737, 24.194550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389156, 33.022720, 24.291956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522358, -0.072545, -0.849634,
		0.809988, 0.353691, 0.467784,
		0.266573, -0.932545, 0.243515,
		38.469128, 32.742958, 24.365011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980789, 33.424950, 24.174328>,  <38.282528, 33.395737, 24.194550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980789, 33.424950, 24.174328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851196, 33.052185, 24.109118>,  <38.773441, 32.828526, 24.069992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851196, 33.052185, 24.109118>,  <38.980789, 33.424950, 24.174328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851196, 33.052185, 24.109118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472749, -0.010207, -0.881138,
		0.819480, -0.362540, 0.443867,
		-0.323978, -0.931912, -0.163026,
		38.754002, 32.772610, 24.060209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514168, 33.099525, 23.853374>,  <38.980789, 33.424950, 24.174328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514168, 33.099525, 23.853374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179714, 32.896130, 23.771086>,  <38.979042, 32.774094, 23.721712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179714, 32.896130, 23.771086>,  <39.514168, 33.099525, 23.853374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179714, 32.896130, 23.771086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258941, -0.035274, -0.965249,
		0.483561, -0.860346, 0.161162,
		-0.836133, -0.508488, -0.205722,
		38.928875, 32.743584, 23.709370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801006, 32.693928, 23.307516>,  <39.514168, 33.099525, 23.853374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801006, 32.693928, 23.307516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402225, 32.671764, 23.285545>,  <39.162956, 32.658466, 23.272364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402225, 32.671764, 23.285545>,  <39.801006, 32.693928, 23.307516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402225, 32.671764, 23.285545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049348, 0.097446, -0.994017,
		0.060420, -0.993698, -0.094415,
		-0.996953, -0.055399, -0.054924,
		39.103142, 32.655144, 23.269068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637333, 32.300903, 22.679274>,  <39.801006, 32.693928, 23.307516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637333, 32.300903, 22.679274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302994, 32.501575, 22.768429>,  <39.102390, 32.621979, 22.821922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302994, 32.501575, 22.768429>,  <39.637333, 32.300903, 22.679274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302994, 32.501575, 22.768429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088718, 0.277236, -0.956697,
		-0.541750, -0.819424, -0.187218,
		-0.835844, 0.501681, 0.222890,
		39.052242, 32.652081, 22.835297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186626, 32.095474, 22.129129>,  <39.637333, 32.300903, 22.679274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186626, 32.095474, 22.129129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050648, 32.447113, 22.262764>,  <38.969059, 32.658096, 22.342945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050648, 32.447113, 22.262764>,  <39.186626, 32.095474, 22.129129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050648, 32.447113, 22.262764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114737, 0.313822, -0.942524,
		-0.933418, -0.358744, -0.005818,
		-0.339951, 0.879101, 0.334089,
		38.948662, 32.710842, 22.362991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485699, 32.119434, 21.862032>,  <39.186626, 32.095474, 22.129129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485699, 32.119434, 21.862032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613548, 32.487305, 21.953278>,  <38.690258, 32.708027, 22.008024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613548, 32.487305, 21.953278>,  <38.485699, 32.119434, 21.862032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613548, 32.487305, 21.953278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462385, 0.361515, -0.809634,
		-0.827067, 0.153304, 0.540794,
		0.319625, 0.919676, 0.228112,
		38.709435, 32.763206, 22.021711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017750, 32.633888, 22.062668>,  <38.485699, 32.119434, 21.862032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017750, 32.633888, 22.062668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310623, 32.859035, 21.909258>,  <38.486347, 32.994122, 21.817213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310623, 32.859035, 21.909258>,  <38.017750, 32.633888, 22.062668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310623, 32.859035, 21.909258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636511, 0.365054, -0.679404,
		-0.242406, 0.741565, 0.625556,
		0.732184, 0.562865, -0.383523,
		38.530277, 33.027893, 21.794201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777035, 33.337391, 21.992294>,  <38.017750, 32.633888, 22.062668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777035, 33.337391, 21.992294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082054, 33.314980, 21.734491>,  <38.265064, 33.301533, 21.579809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082054, 33.314980, 21.734491>,  <37.777035, 33.337391, 21.992294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082054, 33.314980, 21.734491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522438, 0.534246, -0.664560,
		0.381557, 0.843471, 0.378117,
		0.762544, -0.056025, -0.644506,
		38.310818, 33.298172, 21.541140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679848, 33.924419, 21.656748>,  <37.777035, 33.337391, 21.992294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679848, 33.924419, 21.656748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918987, 33.737827, 21.395988>,  <38.062473, 33.625874, 21.239532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918987, 33.737827, 21.395988>,  <37.679848, 33.924419, 21.656748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918987, 33.737827, 21.395988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431831, 0.497729, -0.752189,
		0.675348, 0.731207, 0.096128,
		0.597851, -0.466479, -0.651898,
		38.098343, 33.597885, 21.200418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961124, 34.431225, 21.157396>,  <37.679848, 33.924419, 21.656748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961124, 34.431225, 21.157396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983543, 34.069901, 20.987276>,  <37.996994, 33.853104, 20.885204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983543, 34.069901, 20.987276>,  <37.961124, 34.431225, 21.157396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983543, 34.069901, 20.987276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398839, 0.370252, -0.838953,
		0.915307, 0.216649, -0.339525,
		0.056049, -0.903315, -0.425302,
		38.000359, 33.798904, 20.859686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581833, 34.546677, 20.657072>,  <37.961124, 34.431225, 21.157396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581833, 34.546677, 20.657072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765205, 34.902065, 20.648479>,  <38.875229, 35.115299, 20.643324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765205, 34.902065, 20.648479>,  <38.581833, 34.546677, 20.657072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765205, 34.902065, 20.648479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124774, 0.088273, 0.988250,
		0.879930, -0.450360, 0.151325,
		0.458426, 0.888473, -0.021481,
		38.902733, 35.168606, 20.642035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166924, 34.417156, 21.148125>,  <38.581833, 34.546677, 20.657072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166924, 34.417156, 21.148125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107761, 34.812603, 21.137148>,  <39.072266, 35.049873, 21.130562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107761, 34.812603, 21.137148>,  <39.166924, 34.417156, 21.148125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107761, 34.812603, 21.137148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157001, 0.050865, 0.986287,
		0.976461, 0.141566, -0.162737,
		-0.147902, 0.988621, -0.027442,
		39.063393, 35.109188, 21.128916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761742, 34.726204, 21.518667>,  <39.166924, 34.417156, 21.148125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761742, 34.726204, 21.518667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480808, 35.010597, 21.504623>,  <39.312248, 35.181232, 21.496197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480808, 35.010597, 21.504623>,  <39.761742, 34.726204, 21.518667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480808, 35.010597, 21.504623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205050, 0.249293, 0.946471,
		0.681678, 0.657537, -0.320873,
		-0.702332, 0.710984, -0.035110,
		39.270107, 35.223892, 21.494091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010933, 35.338493, 21.851261>,  <39.761742, 34.726204, 21.518667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010933, 35.338493, 21.851261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616646, 35.405827, 21.849447>,  <39.380074, 35.446228, 21.848360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616646, 35.405827, 21.849447>,  <40.010933, 35.338493, 21.851261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616646, 35.405827, 21.849447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056708, 0.357168, 0.932317,
		0.158560, 0.918746, -0.361613,
		-0.985719, 0.168335, -0.004533,
		39.320930, 35.456326, 21.848087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955326, 35.983833, 22.213736>,  <40.010933, 35.338493, 21.851261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955326, 35.983833, 22.213736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585552, 35.831802, 22.226120>,  <39.363686, 35.740585, 22.233551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585552, 35.831802, 22.226120>,  <39.955326, 35.983833, 22.213736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585552, 35.831802, 22.226120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123183, 0.374475, 0.919018,
		-0.360888, 0.845762, -0.392997,
		-0.924438, -0.380073, 0.030960,
		39.308220, 35.717781, 22.235409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520382, 36.534950, 22.420641>,  <39.955326, 35.983833, 22.213736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520382, 36.534950, 22.420641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.317116, 36.201473, 22.507095>,  <39.195156, 36.001385, 22.558968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.317116, 36.201473, 22.507095>,  <39.520382, 36.534950, 22.420641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317116, 36.201473, 22.507095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213576, 0.365098, 0.906140,
		-0.834356, 0.414312, -0.363589,
		-0.508170, -0.833697, 0.216134,
		39.164665, 35.951363, 22.571936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987961, 36.753880, 22.811920>,  <39.520382, 36.534950, 22.420641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987961, 36.753880, 22.811920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992245, 36.366062, 22.909794>,  <38.994816, 36.133373, 22.968517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992245, 36.366062, 22.909794>,  <38.987961, 36.753880, 22.811920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992245, 36.366062, 22.909794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194894, 0.237980, 0.951516,
		-0.980766, -0.057882, -0.186408,
		0.010714, -0.969544, 0.244683,
		38.995461, 36.075199, 22.983198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343044, 36.588928, 23.352724>,  <38.987961, 36.753880, 22.811920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343044, 36.588928, 23.352724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607300, 36.289387, 23.373793>,  <38.765854, 36.109661, 23.386435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607300, 36.289387, 23.373793>,  <38.343044, 36.588928, 23.352724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607300, 36.289387, 23.373793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097439, -0.015967, 0.995113,
		-0.744352, -0.662544, -0.083516,
		0.660640, -0.748853, 0.052672,
		38.805492, 36.064732, 23.389595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091682, 36.131695, 23.758654>,  <38.343044, 36.588928, 23.352724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091682, 36.131695, 23.758654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478081, 36.036098, 23.798119>,  <38.709919, 35.978741, 23.821798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478081, 36.036098, 23.798119>,  <38.091682, 36.131695, 23.758654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478081, 36.036098, 23.798119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114069, -0.051482, 0.992138,
		-0.232036, -0.969655, -0.076994,
		0.965996, -0.238995, 0.098662,
		38.767879, 35.964401, 23.827717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156185, 35.688416, 24.380337>,  <38.091682, 36.131695, 23.758654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156185, 35.688416, 24.380337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530430, 35.803474, 24.298466>,  <38.754978, 35.872509, 24.249342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530430, 35.803474, 24.298466>,  <38.156185, 35.688416, 24.380337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530430, 35.803474, 24.298466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204313, 0.031634, 0.978394,
		0.287905, -0.957215, -0.029173,
		0.935610, 0.287645, -0.204679,
		38.811111, 35.889767, 24.237062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722321, 35.296776, 24.797735>,  <38.156185, 35.688416, 24.380337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722321, 35.296776, 24.797735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896809, 35.640331, 24.690386>,  <39.001503, 35.846466, 24.625977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896809, 35.640331, 24.690386>,  <38.722321, 35.296776, 24.797735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896809, 35.640331, 24.690386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334826, 0.121901, 0.934362,
		0.835227, -0.497446, -0.234402,
		0.436220, 0.858888, -0.268372,
		39.027676, 35.897999, 24.609875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446468, 35.251087, 25.079361>,  <38.722321, 35.296776, 24.797735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446468, 35.251087, 25.079361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373932, 35.640141, 25.021252>,  <39.330410, 35.873573, 24.986385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373932, 35.640141, 25.021252>,  <39.446468, 35.251087, 25.079361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373932, 35.640141, 25.021252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363370, 0.203539, 0.909139,
		0.913825, 0.112080, -0.390336,
		-0.181345, 0.972630, -0.145273,
		39.319527, 35.931931, 24.977671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070595, 35.581520, 25.359608>,  <39.446468, 35.251087, 25.079361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070595, 35.581520, 25.359608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778572, 35.854107, 25.339144>,  <39.603359, 36.017658, 25.326866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778572, 35.854107, 25.339144>,  <40.070595, 35.581520, 25.359608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778572, 35.854107, 25.339144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305745, 0.392660, 0.867374,
		0.611176, 0.617592, -0.495020,
		-0.730058, 0.681468, -0.051159,
		39.559555, 36.058548, 25.323795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357731, 36.250980, 25.556347>,  <40.070595, 35.581520, 25.359608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357731, 36.250980, 25.556347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965057, 36.298672, 25.615788>,  <39.729454, 36.327286, 25.651451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965057, 36.298672, 25.615788>,  <40.357731, 36.250980, 25.556347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965057, 36.298672, 25.615788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183123, 0.375305, 0.908632,
		0.052561, 0.919202, -0.390264,
		-0.981684, 0.119224, 0.148601,
		39.670551, 36.334438, 25.660368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.355839, 38.817730, 20.416199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186844, 38.455921, 20.439362>,  <38.085445, 38.238838, 20.453259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186844, 38.455921, 20.439362>,  <38.355839, 38.817730, 20.416199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186844, 38.455921, 20.439362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135335, -0.126126, -0.982739,
		0.896208, -0.407358, 0.175699,
		-0.422487, -0.904517, 0.057906,
		38.060097, 38.184566, 20.456734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844761, 38.245476, 20.148434>,  <38.355839, 38.817730, 20.416199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844761, 38.245476, 20.148434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466988, 38.119404, 20.111105>,  <38.240322, 38.043762, 20.088709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466988, 38.119404, 20.111105>,  <38.844761, 38.245476, 20.148434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466988, 38.119404, 20.111105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131234, -0.101249, -0.986167,
		0.301373, -0.943615, 0.136986,
		-0.944432, -0.315181, -0.093320,
		38.183659, 38.024849, 20.083109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824120, 37.631817, 19.677788>,  <38.844761, 38.245476, 20.148434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824120, 37.631817, 19.677788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463081, 37.804012, 19.677862>,  <38.246460, 37.907330, 19.677908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463081, 37.804012, 19.677862>,  <38.824120, 37.631817, 19.677788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463081, 37.804012, 19.677862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005995, 0.013004, -0.999898,
		-0.430449, -0.902502, -0.014318,
		-0.902596, 0.430491, 0.000187,
		38.192303, 37.933159, 19.677917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528004, 37.307552, 19.126841>,  <38.824120, 37.631817, 19.677788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528004, 37.307552, 19.126841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.274273, 37.611042, 19.186134>,  <38.122036, 37.793137, 19.221710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.274273, 37.611042, 19.186134>,  <38.528004, 37.307552, 19.126841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274273, 37.611042, 19.186134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200169, 0.024013, -0.979467,
		-0.746703, -0.650972, 0.136641,
		-0.634325, 0.758722, 0.148235,
		38.083977, 37.838657, 19.230604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959835, 37.002853, 18.787115>,  <38.528004, 37.307552, 19.126841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959835, 37.002853, 18.787115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962360, 37.402817, 18.791977>,  <37.963875, 37.642796, 18.794893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962360, 37.402817, 18.791977>,  <37.959835, 37.002853, 18.787115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962360, 37.402817, 18.791977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109239, 0.012770, -0.993933,
		-0.993995, 0.004949, 0.109310,
		0.006315, 0.999906, 0.012153,
		37.964256, 37.702789, 18.795622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323936, 37.253342, 18.516459>,  <37.959835, 37.002853, 18.787115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323936, 37.253342, 18.516459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563839, 37.570885, 18.476316>,  <37.707783, 37.761414, 18.452232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563839, 37.570885, 18.476316>,  <37.323936, 37.253342, 18.516459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563839, 37.570885, 18.476316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271491, 0.083909, -0.958776,
		-0.752716, 0.602281, 0.265852,
		0.599760, 0.793862, -0.100354,
		37.743767, 37.809044, 18.446211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913754, 37.766323, 18.178160>,  <37.323936, 37.253342, 18.516459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913754, 37.766323, 18.178160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292740, 37.870453, 18.103815>,  <37.520130, 37.932930, 18.059208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292740, 37.870453, 18.103815>,  <36.913754, 37.766323, 18.178160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292740, 37.870453, 18.103815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244889, 0.216550, -0.945059,
		-0.205778, 0.940923, 0.268925,
		0.947462, 0.260329, -0.185860,
		37.576977, 37.948551, 18.048058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819859, 38.194241, 17.699398>,  <36.913754, 37.766323, 18.178160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819859, 38.194241, 17.699398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213379, 38.134800, 17.659302>,  <37.449493, 38.099136, 17.635244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213379, 38.134800, 17.659302>,  <36.819859, 38.194241, 17.699398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213379, 38.134800, 17.659302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064379, 0.229003, -0.971295,
		0.167287, 0.962017, 0.215728,
		0.983804, -0.148597, -0.100243,
		37.508522, 38.090221, 17.629229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046402, 38.706123, 17.291958>,  <36.819859, 38.194241, 17.699398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046402, 38.706123, 17.291958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332123, 38.430988, 17.240345>,  <37.503555, 38.265907, 17.209377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332123, 38.430988, 17.240345>,  <37.046402, 38.706123, 17.291958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332123, 38.430988, 17.240345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069613, 0.113629, -0.991082,
		0.696363, 0.716918, 0.033284,
		0.714306, -0.687836, -0.129033,
		37.546413, 38.224636, 17.201635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387100, 38.852322, 16.704475>,  <37.046402, 38.706123, 17.291958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387100, 38.852322, 16.704475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462734, 38.460457, 16.731323>,  <37.508114, 38.225338, 16.747433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462734, 38.460457, 16.731323>,  <37.387100, 38.852322, 16.704475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462734, 38.460457, 16.731323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005004, -0.067393, -0.997714,
		0.981947, 0.188991, -0.007840,
		0.189088, -0.979663, 0.067122,
		37.519459, 38.166557, 16.751459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834789, 38.769104, 16.153248>,  <37.387100, 38.852322, 16.704475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834789, 38.769104, 16.153248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714073, 38.397102, 16.237165>,  <37.641644, 38.173901, 16.287516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714073, 38.397102, 16.237165>,  <37.834789, 38.769104, 16.153248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714073, 38.397102, 16.237165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098972, -0.249426, -0.963323,
		0.948224, -0.269954, 0.167318,
		-0.301787, -0.930006, 0.209794,
		37.623539, 38.118099, 16.300104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253609, 38.283653, 15.797976>,  <37.834789, 38.769104, 16.153248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253609, 38.283653, 15.797976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935669, 38.048122, 15.856633>,  <37.744907, 37.906803, 15.891827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935669, 38.048122, 15.856633>,  <38.253609, 38.283653, 15.797976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935669, 38.048122, 15.856633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050776, -0.305351, -0.950885,
		0.604681, -0.748363, 0.272605,
		-0.794848, -0.588824, 0.146641,
		37.697216, 37.871475, 15.900625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304058, 37.525597, 15.761211>,  <38.253609, 38.283653, 15.797976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304058, 37.525597, 15.761211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925945, 37.622383, 15.673677>,  <37.699078, 37.680454, 15.621157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925945, 37.622383, 15.673677>,  <38.304058, 37.525597, 15.761211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925945, 37.622383, 15.673677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114128, -0.383127, -0.916618,
		-0.305633, -0.891440, 0.334549,
		-0.945285, 0.241967, -0.218835,
		37.642361, 37.694973, 15.608027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951302, 36.992733, 15.555778>,  <38.304058, 37.525597, 15.761211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951302, 36.992733, 15.555778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772816, 37.305424, 15.381513>,  <37.665726, 37.493038, 15.276954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772816, 37.305424, 15.381513>,  <37.951302, 36.992733, 15.555778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772816, 37.305424, 15.381513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102436, -0.439000, -0.892629,
		-0.889046, -0.442928, 0.115810,
		-0.446210, 0.781725, -0.435663,
		37.638954, 37.539940, 15.250813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559658, 36.597908, 15.276552>,  <37.951302, 36.992733, 15.555778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559658, 36.597908, 15.276552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584904, 36.199677, 15.248699>,  <38.600052, 35.960739, 15.231987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584904, 36.199677, 15.248699>,  <38.559658, 36.597908, 15.276552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584904, 36.199677, 15.248699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076580, -0.064736, 0.994960,
		-0.995064, -0.068126, 0.072156,
		0.063111, -0.995575, -0.069634,
		38.603836, 35.901005, 15.227809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015118, 36.190716, 15.678560>,  <38.559658, 36.597908, 15.276552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015118, 36.190716, 15.678560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327717, 35.942577, 15.651907>,  <38.515274, 35.793694, 15.635915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327717, 35.942577, 15.651907>,  <38.015118, 36.190716, 15.678560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327717, 35.942577, 15.651907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088109, 0.004005, 0.996103,
		-0.617658, -0.784321, 0.057787,
		0.781496, -0.620342, -0.066632,
		38.562164, 35.756474, 15.631917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899895, 35.801720, 16.203979>,  <38.015118, 36.190716, 15.678560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899895, 35.801720, 16.203979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288471, 35.742661, 16.129683>,  <38.521618, 35.707226, 16.085104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288471, 35.742661, 16.129683>,  <37.899895, 35.801720, 16.203979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288471, 35.742661, 16.129683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158973, -0.176148, 0.971442,
		-0.176148, -0.973228, -0.147646,
		-0.971442, 0.147646, 0.185745,
		38.579903, 35.698368, 16.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119011, 35.066956, 16.442604>,  <37.899895, 35.801720, 16.203979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119011, 35.066956, 16.442604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.467304, 35.260780, 16.409088>,  <38.676281, 35.377075, 16.388979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.467304, 35.260780, 16.409088>,  <38.119011, 35.066956, 16.442604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467304, 35.260780, 16.409088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228053, -0.246941, 0.941813,
		0.435674, -0.839179, -0.325526,
		0.870735, 0.484561, -0.083791,
		38.728523, 35.406147, 16.383951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608727, 34.692764, 16.701109>,  <38.119011, 35.066956, 16.442604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608727, 34.692764, 16.701109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779789, 35.051018, 16.750023>,  <38.882427, 35.265968, 16.779371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779789, 35.051018, 16.750023>,  <38.608727, 34.692764, 16.701109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779789, 35.051018, 16.750023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197356, -0.224524, 0.954274,
		0.882136, -0.383964, -0.272777,
		0.427652, 0.895634, 0.122283,
		38.908085, 35.319710, 16.786707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323162, 34.503521, 16.914753>,  <38.608727, 34.692764, 16.701109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323162, 34.503521, 16.914753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.268703, 34.890873, 16.998367>,  <39.236027, 35.123283, 17.048536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.268703, 34.890873, 16.998367>,  <39.323162, 34.503521, 16.914753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268703, 34.890873, 16.998367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294292, -0.161941, 0.941896,
		0.945968, 0.189756, -0.262939,
		-0.136150, 0.968384, 0.209035,
		39.227859, 35.181389, 17.061077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012260, 34.807064, 17.301678>,  <39.323162, 34.503521, 16.914753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012260, 34.807064, 17.301678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.698093, 35.037548, 17.392097>,  <39.509594, 35.175838, 17.446348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.698093, 35.037548, 17.392097>,  <40.012260, 34.807064, 17.301678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698093, 35.037548, 17.392097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199741, -0.109716, 0.973687,
		0.585848, 0.809904, -0.028920,
		-0.785420, 0.576209, 0.226048,
		39.462467, 35.210411, 17.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325596, 35.358681, 17.845861>,  <40.012260, 34.807064, 17.301678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325596, 35.358681, 17.845861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925690, 35.356632, 17.854273>,  <39.685745, 35.355404, 17.859320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925690, 35.356632, 17.854273>,  <40.325596, 35.358681, 17.845861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925690, 35.356632, 17.854273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018883, 0.268570, 0.963075,
		-0.010578, 0.963246, -0.268411,
		-0.999766, -0.005119, 0.021030,
		39.625759, 35.355095, 17.860582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112728, 35.964722, 18.265089>,  <40.325596, 35.358681, 17.845861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112728, 35.964722, 18.265089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778915, 35.747829, 18.304150>,  <39.578629, 35.617695, 18.327585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778915, 35.747829, 18.304150>,  <40.112728, 35.964722, 18.265089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778915, 35.747829, 18.304150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070424, 0.280764, 0.957190,
		-0.546438, 0.791930, -0.272494,
		-0.834533, -0.542235, 0.097650,
		39.528557, 35.585159, 18.333445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541451, 36.290470, 18.635572>,  <40.112728, 35.964722, 18.265089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541451, 36.290470, 18.635572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454502, 35.901695, 18.671530>,  <39.402332, 35.668430, 18.693104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454502, 35.901695, 18.671530>,  <39.541451, 36.290470, 18.635572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454502, 35.901695, 18.671530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346028, 0.162847, 0.923983,
		-0.912695, 0.169745, -0.371718,
		-0.217375, -0.971940, 0.089893,
		39.389290, 35.610115, 18.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973015, 36.254814, 18.951775>,  <39.541451, 36.290470, 18.635572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973015, 36.254814, 18.951775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081985, 35.874439, 19.010420>,  <39.147369, 35.646214, 19.045607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081985, 35.874439, 19.010420>,  <38.973015, 36.254814, 18.951775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081985, 35.874439, 19.010420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402987, 0.025600, 0.914848,
		-0.873718, -0.308316, -0.376242,
		0.272430, -0.950940, 0.146614,
		39.163715, 35.589157, 19.054403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434921, 35.981907, 19.293688>,  <38.973015, 36.254814, 18.951775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434921, 35.981907, 19.293688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713623, 35.702312, 19.358141>,  <38.880844, 35.534557, 19.396812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713623, 35.702312, 19.358141>,  <38.434921, 35.981907, 19.293688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713623, 35.702312, 19.358141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268679, -0.046029, 0.962129,
		-0.665094, -0.713657, -0.219872,
		0.696751, -0.698982, 0.161132,
		38.922649, 35.492619, 19.406481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148293, 35.436672, 19.715137>,  <38.434921, 35.981907, 19.293688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148293, 35.436672, 19.715137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542648, 35.409321, 19.776264>,  <38.779263, 35.392910, 19.812941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542648, 35.409321, 19.776264>,  <38.148293, 35.436672, 19.715137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542648, 35.409321, 19.776264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151384, 0.025675, 0.988141,
		-0.071497, -0.997329, 0.014960,
		0.985886, -0.068385, 0.152815,
		38.838413, 35.388805, 19.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147175, 34.993839, 20.228146>,  <38.148293, 35.436672, 19.715137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147175, 34.993839, 20.228146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498726, 35.184494, 20.236145>,  <38.709656, 35.298885, 20.240944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498726, 35.184494, 20.236145>,  <38.147175, 34.993839, 20.228146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498726, 35.184494, 20.236145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121136, 0.182424, 0.975729,
		0.461417, -0.859966, 0.218065,
		0.878875, 0.476633, 0.019999,
		38.762390, 35.327484, 20.242146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396725, 34.424805, 19.903242>,  <38.147175, 34.993839, 20.228146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396725, 34.424805, 19.903242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237339, 34.080013, 20.028603>,  <38.141708, 33.873138, 20.103819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237339, 34.080013, 20.028603>,  <38.396725, 34.424805, 19.903242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237339, 34.080013, 20.028603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282033, -0.209992, -0.936141,
		0.872743, -0.461413, -0.159431,
		-0.398468, -0.861975, 0.313403,
		38.117798, 33.821419, 20.122623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613491, 33.921997, 19.391808>,  <38.396725, 34.424805, 19.903242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613491, 33.921997, 19.391808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297882, 33.753670, 19.570850>,  <38.108517, 33.652672, 19.678276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297882, 33.753670, 19.570850>,  <38.613491, 33.921997, 19.391808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297882, 33.753670, 19.570850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276691, -0.407092, -0.870470,
		0.548527, -0.810671, 0.204769,
		-0.789025, -0.420818, 0.447607,
		38.061176, 33.627426, 19.705132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509735, 33.342411, 19.095776>,  <38.613491, 33.921997, 19.391808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509735, 33.342411, 19.095776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.154144, 33.403824, 19.268353>,  <37.940788, 33.440670, 19.371899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.154144, 33.403824, 19.268353>,  <38.509735, 33.342411, 19.095776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154144, 33.403824, 19.268353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455859, -0.386555, -0.801728,
		0.043686, -0.909397, 0.413628,
		-0.888979, 0.153532, 0.431444,
		37.887451, 33.449883, 19.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092113, 32.760040, 18.817102>,  <38.509735, 33.342411, 19.095776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092113, 32.760040, 18.817102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819805, 33.026428, 18.939104>,  <37.656418, 33.186260, 19.012306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819805, 33.026428, 18.939104>,  <38.092113, 32.760040, 18.817102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819805, 33.026428, 18.939104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441601, -0.040933, -0.896277,
		-0.584411, -0.744853, 0.321960,
		-0.680773, 0.665972, 0.305006,
		37.615574, 33.226219, 19.030605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448715, 32.393791, 18.625446>,  <38.092113, 32.760040, 18.817102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448715, 32.393791, 18.625446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363194, 32.779240, 18.689600>,  <37.311882, 33.010509, 18.728092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363194, 32.779240, 18.689600>,  <37.448715, 32.393791, 18.625446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363194, 32.779240, 18.689600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651587, -0.018352, -0.758352,
		-0.727821, -0.266642, 0.631806,
		-0.213803, 0.963621, 0.160383,
		37.299053, 33.068325, 18.737715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716663, 32.433983, 18.657314>,  <37.448715, 32.393791, 18.625446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716663, 32.433983, 18.657314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849319, 32.804478, 18.585655>,  <36.928913, 33.026775, 18.542660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849319, 32.804478, 18.585655>,  <36.716663, 32.433983, 18.657314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849319, 32.804478, 18.585655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462276, -0.005988, -0.886716,
		-0.822385, 0.376884, 0.426193,
		0.331637, 0.926241, -0.179149,
		36.948811, 33.082352, 18.531910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114052, 32.819118, 18.409786>,  <36.716663, 32.433983, 18.657314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114052, 32.819118, 18.409786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434093, 33.004501, 18.257446>,  <36.626118, 33.115730, 18.166042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434093, 33.004501, 18.257446>,  <36.114052, 32.819118, 18.409786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434093, 33.004501, 18.257446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471425, 0.093201, -0.876968,
		-0.370943, 0.881203, 0.293056,
		0.800100, 0.463459, -0.380849,
		36.674122, 33.143539, 18.143192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606842, 33.298477, 18.747066>,  <36.114052, 32.819118, 18.409786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606842, 33.298477, 18.747066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217751, 33.388611, 18.725084>,  <34.984295, 33.442692, 18.711895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217751, 33.388611, 18.725084>,  <35.606842, 33.298477, 18.747066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217751, 33.388611, 18.725084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051807, 0.019872, 0.998459,
		0.226079, 0.974079, -0.007656,
		-0.972730, 0.225334, -0.054957,
		34.925930, 33.456211, 18.708597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565678, 33.941734, 19.105959>,  <35.606842, 33.298477, 18.747066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565678, 33.941734, 19.105959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219528, 33.741764, 19.092125>,  <35.011837, 33.621780, 19.083824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219528, 33.741764, 19.092125>,  <35.565678, 33.941734, 19.105959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219528, 33.741764, 19.092125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088494, 0.084522, 0.992484,
		-0.493244, 0.861935, -0.117384,
		-0.865378, -0.499925, -0.034586,
		34.959915, 33.591785, 19.081749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203930, 34.280659, 19.572739>,  <35.565678, 33.941734, 19.105959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203930, 34.280659, 19.572739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042385, 33.918644, 19.519375>,  <34.945457, 33.701435, 19.487356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042385, 33.918644, 19.519375>,  <35.203930, 34.280659, 19.572739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042385, 33.918644, 19.519375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239698, -0.036050, 0.970178,
		-0.882860, 0.423794, -0.202377,
		-0.403860, -0.905041, -0.133410,
		34.921227, 33.647133, 19.479351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513943, 34.320045, 19.852615>,  <35.203930, 34.280659, 19.572739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513943, 34.320045, 19.852615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629112, 33.936996, 19.849403>,  <34.698215, 33.707169, 19.847477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629112, 33.936996, 19.849403>,  <34.513943, 34.320045, 19.852615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629112, 33.936996, 19.849403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384605, -0.123308, 0.914808,
		-0.877028, -0.260309, -0.403809,
		0.287926, -0.957619, -0.008028,
		34.715488, 33.649712, 19.846994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952396, 33.937744, 20.174265>,  <34.513943, 34.320045, 19.852615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952396, 33.937744, 20.174265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266838, 33.690674, 20.183271>,  <34.455505, 33.542431, 20.188675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266838, 33.690674, 20.183271>,  <33.952396, 33.937744, 20.174265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266838, 33.690674, 20.183271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201544, -0.221724, 0.954054,
		-0.584307, -0.754527, -0.298788,
		0.786108, -0.617679, 0.022515,
		34.502670, 33.505371, 20.190025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703873, 33.337601, 20.549400>,  <33.952396, 33.937744, 20.174265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703873, 33.337601, 20.549400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103752, 33.343792, 20.557005>,  <34.343681, 33.347507, 20.561567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103752, 33.343792, 20.557005>,  <33.703873, 33.337601, 20.549400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103752, 33.343792, 20.557005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016466, -0.150635, 0.988452,
		0.018166, -0.988468, -0.150335,
		0.999699, 0.015481, 0.019012,
		34.403664, 33.348434, 20.562708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781265, 32.804581, 20.996527>,  <33.703873, 33.337601, 20.549400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781265, 32.804581, 20.996527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132256, 32.995903, 20.982328>,  <34.342850, 33.110699, 20.973808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132256, 32.995903, 20.982328>,  <33.781265, 32.804581, 20.996527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132256, 32.995903, 20.982328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141378, -0.187217, 0.972092,
		0.458316, -0.858003, -0.231901,
		0.877473, 0.478311, -0.035498,
		34.395496, 33.139397, 20.971680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.957928, 37.348083, 17.042171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346512, 37.362041, 16.948326>,  <34.579662, 37.370415, 16.892019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346512, 37.362041, 16.948326>,  <33.957928, 37.348083, 17.042171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346512, 37.362041, 16.948326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223431, 0.197406, 0.954521,
		0.079619, -0.979701, 0.183977,
		0.971463, 0.034892, -0.234613,
		34.637951, 37.372509, 16.877943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273769, 37.003952, 17.527821>,  <33.957928, 37.348083, 17.042171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273769, 37.003952, 17.527821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.577492, 37.227409, 17.394331>,  <34.759727, 37.361485, 17.314238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.577492, 37.227409, 17.394331>,  <34.273769, 37.003952, 17.527821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577492, 37.227409, 17.394331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263846, 0.204499, 0.942638,
		0.594842, -0.803804, 0.007882,
		0.759308, 0.558641, -0.333725,
		34.805283, 37.395000, 17.294214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816597, 36.797535, 17.856794>,  <34.273769, 37.003952, 17.527821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816597, 36.797535, 17.856794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879375, 37.179264, 17.755106>,  <34.917042, 37.408302, 17.694094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879375, 37.179264, 17.755106>,  <34.816597, 36.797535, 17.856794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879375, 37.179264, 17.755106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201517, 0.221048, 0.954216,
		0.966829, -0.200992, -0.157620,
		0.156948, 0.954327, -0.254219,
		34.926460, 37.465561, 17.678841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418736, 36.925720, 18.241734>,  <34.816597, 36.797535, 17.856794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418736, 36.925720, 18.241734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.277054, 37.285103, 18.137955>,  <35.192047, 37.500732, 18.075687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.277054, 37.285103, 18.137955>,  <35.418736, 36.925720, 18.241734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277054, 37.285103, 18.137955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281098, 0.366893, 0.886777,
		0.891923, 0.241166, -0.382508,
		-0.354200, 0.898459, -0.259449,
		35.170795, 37.554642, 18.060120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858215, 37.463581, 18.631535>,  <35.418736, 36.925720, 18.241734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858215, 37.463581, 18.631535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529133, 37.673485, 18.544092>,  <35.331684, 37.799427, 18.491627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529133, 37.673485, 18.544092>,  <35.858215, 37.463581, 18.631535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529133, 37.673485, 18.544092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007234, 0.394183, 0.919003,
		0.568425, 0.754486, -0.328092,
		-0.822703, 0.524758, -0.218606,
		35.282322, 37.830914, 18.478510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016525, 38.186897, 18.904137>,  <35.858215, 37.463581, 18.631535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016525, 38.186897, 18.904137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620384, 38.140404, 18.873936>,  <35.382702, 38.112507, 18.855816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620384, 38.140404, 18.873936>,  <36.016525, 38.186897, 18.904137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620384, 38.140404, 18.873936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114144, 0.374945, 0.919993,
		-0.078626, 0.919731, -0.384593,
		-0.990348, -0.116234, -0.075501,
		35.323280, 38.105534, 18.851286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706135, 38.853569, 18.969435>,  <36.016525, 38.186897, 18.904137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706135, 38.853569, 18.969435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450802, 38.560108, 19.062634>,  <35.297604, 38.384029, 19.118553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450802, 38.560108, 19.062634>,  <35.706135, 38.853569, 18.969435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450802, 38.560108, 19.062634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268465, 0.495860, 0.825863,
		-0.721432, 0.464621, -0.513482,
		-0.638328, -0.733656, 0.232995,
		35.259304, 38.340012, 19.132532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177471, 39.211948, 19.225710>,  <35.706135, 38.853569, 18.969435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177471, 39.211948, 19.225710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.116047, 38.837582, 19.352505>,  <35.079193, 38.612961, 19.428581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.116047, 38.837582, 19.352505>,  <35.177471, 39.211948, 19.225710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116047, 38.837582, 19.352505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379986, 0.352052, 0.855377,
		-0.912157, 0.010901, -0.409696,
		-0.153559, -0.935917, 0.316985,
		35.069981, 38.556808, 19.447599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889809, 39.426208, 19.790426>,  <35.177471, 39.211948, 19.225710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889809, 39.426208, 19.790426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.923710, 39.032291, 19.851082>,  <34.944050, 38.795940, 19.887476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.923710, 39.032291, 19.851082>,  <34.889809, 39.426208, 19.790426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923710, 39.032291, 19.851082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132723, 0.139674, 0.981262,
		-0.987523, -0.103290, -0.118867,
		0.084752, -0.984796, 0.151640,
		34.949135, 38.736855, 19.896574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151951, 39.066608, 20.080484>,  <34.889809, 39.426208, 19.790426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151951, 39.066608, 20.080484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488380, 38.897503, 20.215460>,  <34.690239, 38.796040, 20.296446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488380, 38.897503, 20.215460>,  <34.151951, 39.066608, 20.080484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488380, 38.897503, 20.215460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315100, 0.124128, 0.940906,
		-0.439663, -0.897700, -0.028811,
		0.841075, -0.422760, 0.337440,
		34.740704, 38.770676, 20.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907120, 38.597221, 20.552782>,  <34.151951, 39.066608, 20.080484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907120, 38.597221, 20.552782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.291737, 38.616364, 20.660963>,  <34.522507, 38.627850, 20.725872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.291737, 38.616364, 20.660963>,  <33.907120, 38.597221, 20.552782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291737, 38.616364, 20.660963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274656, 0.165935, 0.947117,
		0.000446, -0.984975, 0.172697,
		0.961543, 0.047854, 0.270455,
		34.580200, 38.630722, 20.742100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053940, 38.012009, 21.126505>,  <33.907120, 38.597221, 20.552782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053940, 38.012009, 21.126505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365150, 38.260479, 21.164064>,  <34.551876, 38.409561, 21.186600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365150, 38.260479, 21.164064>,  <34.053940, 38.012009, 21.126505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365150, 38.260479, 21.164064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136435, 0.021174, 0.990423,
		0.613236, -0.783387, 0.101224,
		0.778027, 0.621173, 0.093897,
		34.598560, 38.446831, 21.192234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230232, 37.413513, 21.454948>,  <34.053940, 38.012009, 21.126505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230232, 37.413513, 21.454948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222527, 37.013596, 21.457529>,  <34.217903, 36.773643, 21.459078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222527, 37.013596, 21.457529>,  <34.230232, 37.413513, 21.454948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222527, 37.013596, 21.457529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081978, -0.004851, -0.996622,
		0.996448, -0.019731, -0.081868,
		-0.019267, -0.999794, 0.006452,
		34.216747, 36.713657, 21.459465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667103, 37.157692, 20.891102>,  <34.230232, 37.413513, 21.454948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667103, 37.157692, 20.891102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.408379, 36.866425, 20.981791>,  <34.253143, 36.691666, 21.036203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.408379, 36.866425, 20.981791>,  <34.667103, 37.157692, 20.891102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408379, 36.866425, 20.981791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187977, -0.135895, -0.972727,
		0.739120, -0.671790, -0.048981,
		-0.646812, -0.728169, 0.226724,
		34.214336, 36.647972, 21.049809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622288, 36.858994, 20.195656>,  <34.667103, 37.157692, 20.891102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622288, 36.858994, 20.195656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355045, 36.660221, 20.417175>,  <34.194698, 36.540958, 20.550087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355045, 36.660221, 20.417175>,  <34.622288, 36.858994, 20.195656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355045, 36.660221, 20.417175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413699, -0.370551, -0.831592,
		0.618457, -0.784696, 0.041986,
		-0.668105, -0.496935, 0.553798,
		34.154613, 36.511139, 20.583315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732208, 36.132492, 20.035824>,  <34.622288, 36.858994, 20.195656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732208, 36.132492, 20.035824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.364975, 36.184605, 20.185570>,  <34.144634, 36.215874, 20.275417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.364975, 36.184605, 20.185570>,  <34.732208, 36.132492, 20.035824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364975, 36.184605, 20.185570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394769, -0.215277, -0.893204,
		-0.035772, -0.967824, 0.249072,
		-0.918083, 0.130278, 0.374366,
		34.089550, 36.223690, 20.297880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272717, 35.513588, 19.824554>,  <34.732208, 36.132492, 20.035824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272717, 35.513588, 19.824554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049068, 35.833447, 19.912146>,  <33.914879, 36.025360, 19.964701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049068, 35.833447, 19.912146>,  <34.272717, 35.513588, 19.824554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049068, 35.833447, 19.912146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538240, -0.149194, -0.829481,
		-0.630621, -0.581641, 0.513819,
		-0.559119, 0.799646, 0.218977,
		33.881332, 36.073341, 19.977839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516953, 35.295174, 19.902212>,  <34.272717, 35.513588, 19.824554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516953, 35.295174, 19.902212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.533390, 35.678871, 19.790377>,  <33.543251, 35.909088, 19.723276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.533390, 35.678871, 19.790377>,  <33.516953, 35.295174, 19.902212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533390, 35.678871, 19.790377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575915, -0.205925, -0.791149,
		-0.816476, 0.193528, 0.543979,
		0.041091, 0.959240, -0.279589,
		33.545719, 35.966644, 19.706501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906967, 35.367458, 19.624632>,  <33.516953, 35.295174, 19.902212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906967, 35.367458, 19.624632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084007, 35.697643, 19.484503>,  <33.190231, 35.895752, 19.400425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084007, 35.697643, 19.484503>,  <32.906967, 35.367458, 19.624632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084007, 35.697643, 19.484503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456581, -0.128791, -0.880310,
		-0.771778, 0.549575, 0.319886,
		0.442598, 0.825458, -0.350323,
		33.216785, 35.945282, 19.379406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386139, 35.778263, 19.365631>,  <32.906967, 35.367458, 19.624632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386139, 35.778263, 19.365631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.716541, 35.887680, 19.168497>,  <32.914783, 35.953331, 19.050217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.716541, 35.887680, 19.168497>,  <32.386139, 35.778263, 19.365631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716541, 35.887680, 19.168497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510506, -0.007596, -0.859840,
		-0.238949, 0.961829, 0.133372,
		0.826007, 0.273545, -0.492835,
		32.964344, 35.969742, 19.020647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107792, 36.245785, 18.859972>,  <32.386139, 35.778263, 19.365631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107792, 36.245785, 18.859972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488628, 36.196480, 18.748022>,  <32.717129, 36.166897, 18.680853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488628, 36.196480, 18.748022>,  <32.107792, 36.245785, 18.859972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488628, 36.196480, 18.748022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285615, -0.031309, -0.957833,
		0.109299, 0.991880, -0.065014,
		0.952091, -0.123259, -0.279874,
		32.774258, 36.159500, 18.664061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203262, 36.703968, 18.275555>,  <32.107792, 36.245785, 18.859972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203262, 36.703968, 18.275555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501194, 36.441921, 18.224882>,  <32.679955, 36.284691, 18.194479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501194, 36.441921, 18.224882>,  <32.203262, 36.703968, 18.275555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501194, 36.441921, 18.224882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218491, -0.060066, -0.973989,
		0.630469, 0.753134, -0.187876,
		0.744829, -0.655119, -0.126683,
		32.724644, 36.245384, 18.186876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670116, 36.851131, 17.596521>,  <32.203262, 36.703968, 18.275555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670116, 36.851131, 17.596521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.708618, 36.460728, 17.674641>,  <32.731720, 36.226486, 17.721512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.708618, 36.460728, 17.674641>,  <32.670116, 36.851131, 17.596521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708618, 36.460728, 17.674641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308256, -0.215792, -0.926505,
		0.946421, 0.028983, -0.321633,
		0.096259, -0.976009, 0.195296,
		32.737495, 36.167927, 17.733229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032070, 36.524357, 17.009968>,  <32.670116, 36.851131, 17.596521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032070, 36.524357, 17.009968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836056, 36.229816, 17.196577>,  <32.718445, 36.053093, 17.308542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836056, 36.229816, 17.196577>,  <33.032070, 36.524357, 17.009968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836056, 36.229816, 17.196577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401261, -0.284565, -0.870639,
		0.773854, -0.613846, -0.156022,
		-0.490040, -0.736353, 0.466524,
		32.689045, 36.008911, 17.336535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172005, 35.863190, 16.587765>,  <33.032070, 36.524357, 17.009968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172005, 35.863190, 16.587765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.837032, 35.789165, 16.793467>,  <32.636047, 35.744751, 16.916887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.837032, 35.789165, 16.793467>,  <33.172005, 35.863190, 16.587765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837032, 35.789165, 16.793467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329097, -0.580476, -0.744811,
		0.436349, -0.792969, 0.425206,
		-0.837433, -0.185064, 0.514254,
		32.585804, 35.733646, 16.947742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125591, 35.153542, 16.527386>,  <33.172005, 35.863190, 16.587765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125591, 35.153542, 16.527386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765110, 35.312634, 16.596249>,  <32.548820, 35.408089, 16.637568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765110, 35.312634, 16.596249>,  <33.125591, 35.153542, 16.527386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765110, 35.312634, 16.596249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356453, -0.454287, -0.816434,
		-0.246507, -0.797143, 0.551178,
		-0.901208, 0.397726, 0.172159,
		32.494747, 35.431950, 16.647896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899746, 35.151390, 16.478643>,  <33.125591, 35.153542, 16.527386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899746, 35.151390, 16.478643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.068352, 34.845730, 16.283340>,  <34.169514, 34.662334, 16.166159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.068352, 34.845730, 16.283340>,  <33.899746, 35.151390, 16.478643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068352, 34.845730, 16.283340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130391, -0.583906, 0.801281,
		-0.897399, -0.274087, -0.345763,
		0.421514, -0.764153, -0.488258,
		34.194805, 34.616486, 16.136864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531147, 34.568062, 16.630867>,  <33.899746, 35.151390, 16.478643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531147, 34.568062, 16.630867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886852, 34.428841, 16.512157>,  <34.100273, 34.345306, 16.440931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886852, 34.428841, 16.512157>,  <33.531147, 34.568062, 16.630867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886852, 34.428841, 16.512157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002552, -0.645037, 0.764147,
		-0.457396, -0.680282, -0.572717,
		0.889260, -0.348056, -0.296773,
		34.153629, 34.324425, 16.423126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485661, 33.828648, 16.754013>,  <33.531147, 34.568062, 16.630867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485661, 33.828648, 16.754013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.878010, 33.906284, 16.759930>,  <34.113419, 33.952866, 16.763479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.878010, 33.906284, 16.759930>,  <33.485661, 33.828648, 16.754013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878010, 33.906284, 16.759930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097380, -0.555091, 0.826070,
		0.168543, -0.808828, -0.563374,
		0.980872, 0.194090, 0.014793,
		34.172272, 33.964512, 16.764368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725388, 33.176464, 17.001789>,  <33.485661, 33.828648, 16.754013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725388, 33.176464, 17.001789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028053, 33.433296, 17.051086>,  <34.209652, 33.587395, 17.080664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028053, 33.433296, 17.051086>,  <33.725388, 33.176464, 17.001789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028053, 33.433296, 17.051086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279709, -0.488288, 0.826643,
		0.590952, -0.591018, -0.549066,
		0.756663, 0.642085, 0.123241,
		34.255051, 33.625923, 17.088058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207119, 32.686825, 17.301651>,  <33.725388, 33.176464, 17.001789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207119, 32.686825, 17.301651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327473, 33.061138, 17.375175>,  <34.399685, 33.285725, 17.419291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327473, 33.061138, 17.375175>,  <34.207119, 32.686825, 17.301651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327473, 33.061138, 17.375175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256856, -0.265139, 0.929369,
		0.918420, -0.232418, -0.320137,
		0.300882, 0.935780, 0.183811,
		34.417736, 33.341873, 17.430319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840324, 32.618069, 17.722107>,  <34.207119, 32.686825, 17.301651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840324, 32.618069, 17.722107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.693993, 32.986362, 17.776386>,  <34.606194, 33.207340, 17.808954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.693993, 32.986362, 17.776386>,  <34.840324, 32.618069, 17.722107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693993, 32.986362, 17.776386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235345, -0.049548, 0.970648,
		0.900435, 0.387025, -0.198565,
		-0.365827, 0.920737, 0.135699,
		34.584244, 33.262585, 17.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382828, 32.881191, 18.100370>,  <34.840324, 32.618069, 17.722107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382828, 32.881191, 18.100370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.069351, 33.118740, 18.173185>,  <34.881264, 33.261269, 18.216873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.069351, 33.118740, 18.173185>,  <35.382828, 32.881191, 18.100370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069351, 33.118740, 18.173185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267586, 0.058311, 0.961768,
		0.560553, 0.802443, -0.204610,
		-0.783695, 0.593873, 0.182036,
		34.834244, 33.296902, 18.227797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927612, 33.357780, 17.846676>,  <35.382828, 32.881191, 18.100370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927612, 33.357780, 17.846676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316036, 33.348831, 17.751566>,  <36.549091, 33.343464, 17.694500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316036, 33.348831, 17.751566>,  <35.927612, 33.357780, 17.846676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316036, 33.348831, 17.751566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217392, 0.329424, -0.918815,
		0.098883, 0.943917, 0.315028,
		0.971063, -0.022370, -0.237775,
		36.607353, 33.342121, 17.680233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114895, 33.936264, 17.421564>,  <35.927612, 33.357780, 17.846676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114895, 33.936264, 17.421564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410030, 33.680233, 17.335871>,  <36.587112, 33.526615, 17.284454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410030, 33.680233, 17.335871>,  <36.114895, 33.936264, 17.421564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410030, 33.680233, 17.335871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042244, 0.272978, -0.961092,
		0.673655, 0.718180, 0.174374,
		0.737838, -0.640079, -0.214232,
		36.631382, 33.488209, 17.271601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574394, 34.332520, 17.066059>,  <36.114895, 33.936264, 17.421564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574394, 34.332520, 17.066059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667915, 33.957077, 16.964579>,  <36.724026, 33.731812, 16.903690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667915, 33.957077, 16.964579>,  <36.574394, 34.332520, 17.066059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667915, 33.957077, 16.964579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042362, 0.250850, -0.967099,
		0.971361, 0.236855, 0.018887,
		0.233800, -0.938602, -0.253700,
		36.738056, 33.675495, 16.888468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075741, 34.396770, 16.510874>,  <36.574394, 34.332520, 17.066059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075741, 34.396770, 16.510874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948879, 34.019489, 16.471331>,  <36.872761, 33.793121, 16.447605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948879, 34.019489, 16.471331>,  <37.075741, 34.396770, 16.510874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948879, 34.019489, 16.471331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010264, 0.100818, -0.994852,
		0.948317, -0.316540, -0.022294,
		-0.317158, -0.943207, -0.098856,
		36.853733, 33.736526, 16.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609425, 34.056984, 15.934951>,  <37.075741, 34.396770, 16.510874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609425, 34.056984, 15.934951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279839, 33.832752, 15.968023>,  <37.082088, 33.698212, 15.987866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279839, 33.832752, 15.968023>,  <37.609425, 34.056984, 15.934951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279839, 33.832752, 15.968023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066966, -0.048557, -0.996573,
		0.562676, -0.826674, 0.002469,
		-0.823960, -0.560583, 0.082681,
		37.032650, 33.664577, 15.992827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818192, 33.478497, 15.686977>,  <37.609425, 34.056984, 15.934951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818192, 33.478497, 15.686977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420895, 33.471302, 15.641109>,  <37.182518, 33.466984, 15.613587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420895, 33.471302, 15.641109>,  <37.818192, 33.478497, 15.686977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420895, 33.471302, 15.641109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113355, 0.062228, -0.991604,
		0.024973, -0.997900, -0.059769,
		-0.993240, -0.017988, -0.114671,
		37.122921, 33.465904, 15.606708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636433, 33.110004, 15.074708>,  <37.818192, 33.478497, 15.686977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636433, 33.110004, 15.074708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300495, 33.316746, 15.141066>,  <37.098934, 33.440792, 15.180880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300495, 33.316746, 15.141066>,  <37.636433, 33.110004, 15.074708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300495, 33.316746, 15.141066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065670, 0.206623, -0.976214,
		-0.538841, -0.830762, -0.139589,
		-0.839844, 0.516857, 0.165893,
		37.048542, 33.471802, 15.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268295, 32.984314, 14.441114>,  <37.636433, 33.110004, 15.074708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268295, 32.984314, 14.441114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.095261, 33.309261, 14.597534>,  <36.991440, 33.504230, 14.691386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.095261, 33.309261, 14.597534>,  <37.268295, 32.984314, 14.441114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095261, 33.309261, 14.597534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194467, 0.339449, -0.920302,
		-0.880370, -0.474156, 0.011138,
		-0.432586, 0.812373, 0.391049,
		36.965485, 33.552975, 14.714849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691608, 33.043392, 14.030105>,  <37.268295, 32.984314, 14.441114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691608, 33.043392, 14.030105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768280, 33.402000, 14.189860>,  <36.814285, 33.617165, 14.285714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768280, 33.402000, 14.189860>,  <36.691608, 33.043392, 14.030105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768280, 33.402000, 14.189860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134553, 0.427097, -0.894138,
		-0.972190, 0.117650, 0.202496,
		0.191681, 0.896519, 0.399390,
		36.825783, 33.670956, 14.309677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.961094, 33.628948, 30.374355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.980789, 33.983978, 30.191143>,  <38.992607, 34.196995, 30.081217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.980789, 33.983978, 30.191143>,  <38.961094, 33.628948, 30.374355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980789, 33.983978, 30.191143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472969, -0.383187, -0.793390,
		-0.879702, 0.255700, 0.400926,
		0.049240, 0.887572, -0.458029,
		38.995560, 34.250252, 30.053734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266644, 33.719898, 29.997145>,  <38.961094, 33.628948, 30.374355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266644, 33.719898, 29.997145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503246, 33.994267, 29.827616>,  <38.645206, 34.158890, 29.725899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503246, 33.994267, 29.827616>,  <38.266644, 33.719898, 29.997145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503246, 33.994267, 29.827616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302264, -0.298668, -0.905226,
		-0.747499, 0.663554, 0.030667,
		0.591507, 0.685925, -0.423823,
		38.680698, 34.200043, 29.700468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863369, 34.135216, 29.494604>,  <38.266644, 33.719898, 29.997145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863369, 34.135216, 29.494604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246819, 34.157116, 29.382860>,  <38.476887, 34.170258, 29.315813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246819, 34.157116, 29.382860>,  <37.863369, 34.135216, 29.494604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246819, 34.157116, 29.382860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256099, -0.262665, -0.930280,
		-0.124315, 0.963332, -0.237774,
		0.958623, 0.054754, -0.279362,
		38.534405, 34.173542, 29.299051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824677, 34.547035, 28.902670>,  <37.863369, 34.135216, 29.494604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824677, 34.547035, 28.902670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181046, 34.367279, 28.876442>,  <38.394867, 34.259426, 28.860706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181046, 34.367279, 28.876442>,  <37.824677, 34.547035, 28.902670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181046, 34.367279, 28.876442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055370, 0.035815, -0.997823,
		0.450760, 0.892617, 0.007026,
		0.890926, -0.449390, -0.065568,
		38.448322, 34.232464, 28.856771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963390, 34.681271, 28.244944>,  <37.824677, 34.547035, 28.902670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963390, 34.681271, 28.244944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262974, 34.428524, 28.324745>,  <38.442722, 34.276875, 28.372625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262974, 34.428524, 28.324745>,  <37.963390, 34.681271, 28.244944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262974, 34.428524, 28.324745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064279, -0.230378, -0.970976,
		0.659490, 0.740046, -0.131928,
		0.748960, -0.631869, 0.199502,
		38.487663, 34.238964, 28.384596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481434, 34.907368, 27.755997>,  <37.963390, 34.681271, 28.244944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481434, 34.907368, 27.755997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520405, 34.531075, 27.885933>,  <38.543785, 34.305298, 27.963896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520405, 34.531075, 27.885933>,  <38.481434, 34.907368, 27.755997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520405, 34.531075, 27.885933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092218, -0.316458, -0.944113,
		0.990961, 0.121936, 0.055922,
		0.097424, -0.940737, 0.324842,
		38.549633, 34.248852, 27.983385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072914, 34.619560, 27.405384>,  <38.481434, 34.907368, 27.755997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072914, 34.619560, 27.405384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873547, 34.297245, 27.533308>,  <38.753925, 34.103855, 27.610062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873547, 34.297245, 27.533308>,  <39.072914, 34.619560, 27.405384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873547, 34.297245, 27.533308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039904, -0.347184, -0.936948,
		0.866016, -0.479756, 0.140890,
		-0.498421, -0.805790, 0.319811,
		38.724022, 34.055508, 27.629251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425076, 34.013218, 27.072563>,  <39.072914, 34.619560, 27.405384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425076, 34.013218, 27.072563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.049324, 33.916447, 27.169748>,  <38.823872, 33.858383, 27.228060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.049324, 33.916447, 27.169748>,  <39.425076, 34.013218, 27.072563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049324, 33.916447, 27.169748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141330, -0.372405, -0.917246,
		0.312391, -0.895982, 0.315638,
		-0.939382, -0.241930, 0.242965,
		38.767509, 33.843868, 27.242638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463169, 33.403553, 26.824675>,  <39.425076, 34.013218, 27.072563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463169, 33.403553, 26.824675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071617, 33.473358, 26.867254>,  <38.836685, 33.515244, 26.892801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071617, 33.473358, 26.867254>,  <39.463169, 33.403553, 26.824675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071617, 33.473358, 26.867254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163612, -0.356677, -0.919790,
		-0.122551, -0.917783, 0.377698,
		-0.978883, 0.174517, 0.106449,
		38.777950, 33.525715, 26.899189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130592, 32.698139, 26.703386>,  <39.463169, 33.403553, 26.824675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130592, 32.698139, 26.703386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825996, 32.956814, 26.685783>,  <38.643238, 33.112019, 26.675220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825996, 32.956814, 26.685783>,  <39.130592, 32.698139, 26.703386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825996, 32.956814, 26.685783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402004, -0.524445, -0.750567,
		-0.508460, -0.553855, 0.659328,
		-0.761486, 0.646685, -0.044008,
		38.597549, 33.150822, 26.672581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564461, 32.218822, 26.754982>,  <39.130592, 32.698139, 26.703386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564461, 32.218822, 26.754982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446072, 32.562286, 26.587599>,  <38.375038, 32.768364, 26.487169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446072, 32.562286, 26.587599>,  <38.564461, 32.218822, 26.754982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446072, 32.562286, 26.587599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444740, -0.511579, -0.735183,
		-0.845345, -0.031489, 0.533292,
		-0.295971, 0.858659, -0.418456,
		38.357281, 32.819885, 26.462063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947224, 32.109634, 26.530827>,  <38.564461, 32.218822, 26.754982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947224, 32.109634, 26.530827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111786, 32.398525, 26.308428>,  <38.210526, 32.571861, 26.174988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111786, 32.398525, 26.308428>,  <37.947224, 32.109634, 26.530827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111786, 32.398525, 26.308428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206445, -0.520320, -0.828642,
		-0.887764, 0.455692, -0.064964,
		0.411407, 0.722227, -0.555997,
		38.235207, 32.615192, 26.141628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226337, 32.278152, 26.390642>,  <37.947224, 32.109634, 26.530827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226337, 32.278152, 26.390642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879269, 32.086082, 26.442142>,  <36.671028, 31.970840, 26.473042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879269, 32.086082, 26.442142>,  <37.226337, 32.278152, 26.390642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879269, 32.086082, 26.442142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186797, -0.074898, 0.979539,
		-0.460707, 0.873969, 0.154682,
		-0.867672, -0.480175, 0.128749,
		36.618965, 31.942030, 26.480768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038132, 32.555000, 26.960947>,  <37.226337, 32.278152, 26.390642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038132, 32.555000, 26.960947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769871, 32.258823, 26.943184>,  <36.608913, 32.081116, 26.932526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769871, 32.258823, 26.943184>,  <37.038132, 32.555000, 26.960947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769871, 32.258823, 26.943184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019635, -0.077566, 0.996794,
		-0.741513, 0.667630, 0.066558,
		-0.670652, -0.740442, -0.044407,
		36.568676, 32.036690, 26.929861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516544, 32.735966, 27.442221>,  <37.038132, 32.555000, 26.960947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516544, 32.735966, 27.442221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497044, 32.342674, 27.371918>,  <36.485344, 32.106701, 27.329735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497044, 32.342674, 27.371918>,  <36.516544, 32.735966, 27.442221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497044, 32.342674, 27.371918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092977, -0.170737, 0.980920,
		-0.994474, 0.064166, -0.083094,
		-0.048755, -0.983225, -0.175759,
		36.482418, 32.047707, 27.319189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927437, 32.494492, 27.819860>,  <36.516544, 32.735966, 27.442221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927437, 32.494492, 27.819860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185322, 32.197750, 27.746109>,  <36.340054, 32.019707, 27.701859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185322, 32.197750, 27.746109>,  <35.927437, 32.494492, 27.819860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185322, 32.197750, 27.746109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057759, -0.287786, 0.955951,
		-0.762238, -0.605666, -0.228389,
		0.644715, -0.741854, -0.184379,
		36.378735, 31.975195, 27.690796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696777, 31.886860, 28.115898>,  <35.927437, 32.494492, 27.819860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696777, 31.886860, 28.115898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095787, 31.877520, 28.089361>,  <36.335194, 31.871916, 28.073439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095787, 31.877520, 28.089361>,  <35.696777, 31.886860, 28.115898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095787, 31.877520, 28.089361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056130, -0.304107, 0.950983,
		-0.042381, -0.952352, -0.302044,
		0.997524, -0.023350, -0.066344,
		36.395042, 31.870514, 28.069458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880619, 31.274826, 28.674641>,  <35.696777, 31.886860, 28.115898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880619, 31.274826, 28.674641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211754, 31.481356, 28.586922>,  <36.410435, 31.605272, 28.534290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211754, 31.481356, 28.586922>,  <35.880619, 31.274826, 28.674641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211754, 31.481356, 28.586922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320801, -0.115046, 0.940134,
		0.460182, -0.848632, -0.260877,
		0.827840, 0.516322, -0.219300,
		36.460106, 31.636251, 28.521132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334972, 30.827354, 28.845116>,  <35.880619, 31.274826, 28.674641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334972, 30.827354, 28.845116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514957, 31.184423, 28.855436>,  <36.622948, 31.398664, 28.861629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514957, 31.184423, 28.855436>,  <36.334972, 30.827354, 28.845116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514957, 31.184423, 28.855436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389143, -0.221995, 0.894028,
		0.803803, -0.392241, -0.447267,
		0.449965, 0.892673, 0.025802,
		36.649948, 31.452225, 28.863176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999180, 30.664249, 29.111326>,  <36.334972, 30.827354, 28.845116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999180, 30.664249, 29.111326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989857, 31.063410, 29.135487>,  <36.984261, 31.302906, 29.149982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989857, 31.063410, 29.135487>,  <36.999180, 30.664249, 29.111326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989857, 31.063410, 29.135487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463607, -0.042738, 0.885010,
		0.885734, 0.048633, -0.461638,
		-0.023311, 0.997902, 0.060402,
		36.982864, 31.362780, 29.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671997, 30.796188, 29.182865>,  <36.999180, 30.664249, 29.111326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671997, 30.796188, 29.182865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442116, 31.094032, 29.318670>,  <37.304188, 31.272739, 29.400152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442116, 31.094032, 29.318670>,  <37.671997, 30.796188, 29.182865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442116, 31.094032, 29.318670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425161, -0.082815, 0.901321,
		0.699250, 0.662342, -0.268985,
		-0.574707, 0.744610, 0.339511,
		37.269703, 31.317415, 29.420523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097641, 31.283138, 29.439579>,  <37.671997, 30.796188, 29.182865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097641, 31.283138, 29.439579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750473, 31.356367, 29.624271>,  <37.542171, 31.400305, 29.735086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750473, 31.356367, 29.624271>,  <38.097641, 31.283138, 29.439579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750473, 31.356367, 29.624271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488779, 0.149423, 0.859516,
		0.088359, 0.971678, -0.219169,
		-0.867921, 0.183071, 0.461733,
		37.490097, 31.411289, 29.762791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198612, 31.980661, 29.799999>,  <38.097641, 31.283138, 29.439579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198612, 31.980661, 29.799999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893524, 31.793247, 29.978315>,  <37.710472, 31.680799, 30.085304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893524, 31.793247, 29.978315>,  <38.198612, 31.980661, 29.799999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893524, 31.793247, 29.978315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481933, 0.047896, 0.874898,
		-0.431273, 0.882145, 0.189271,
		-0.762722, -0.468536, 0.445791,
		37.664707, 31.652687, 30.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119202, 32.456036, 30.355669>,  <38.198612, 31.980661, 29.799999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119202, 32.456036, 30.355669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.922764, 32.117393, 30.437721>,  <37.804901, 31.914207, 30.486952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.922764, 32.117393, 30.437721>,  <38.119202, 32.456036, 30.355669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922764, 32.117393, 30.437721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398764, -0.009125, 0.917008,
		-0.774473, 0.532141, 0.342077,
		-0.491099, -0.846606, 0.205131,
		37.775433, 31.863411, 30.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834648, 32.561886, 31.047127>,  <38.119202, 32.456036, 30.355669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834648, 32.561886, 31.047127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858143, 32.168762, 30.977116>,  <37.872238, 31.932888, 30.935108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858143, 32.168762, 30.977116>,  <37.834648, 32.561886, 31.047127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858143, 32.168762, 30.977116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402625, -0.137116, 0.905037,
		-0.913479, -0.123629, 0.387650,
		0.058736, -0.982810, -0.175029,
		37.875763, 31.873919, 30.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484879, 32.245548, 31.616619>,  <37.834648, 32.561886, 31.047127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484879, 32.245548, 31.616619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769230, 32.011314, 31.460806>,  <37.939842, 31.870773, 31.367317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769230, 32.011314, 31.460806>,  <37.484879, 32.245548, 31.616619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769230, 32.011314, 31.460806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417035, -0.095016, 0.903910,
		-0.566329, -0.805022, 0.176665,
		0.710882, -0.585586, -0.389533,
		37.982494, 31.835638, 31.343946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753250, 32.236210, 31.696695>,  <37.484879, 32.245548, 31.616619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753250, 32.236210, 31.696695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606678, 32.607876, 31.677212>,  <36.518734, 32.830875, 31.665522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606678, 32.607876, 31.677212>,  <36.753250, 32.236210, 31.696695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606678, 32.607876, 31.677212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734746, 0.321084, 0.597540,
		0.570856, 0.183168, -0.800358,
		-0.366433, 0.929169, -0.048711,
		36.496750, 32.886627, 31.662598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655285, 32.729294, 31.198483>,  <36.753250, 32.236210, 31.696695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655285, 32.729294, 31.198483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327244, 32.951839, 31.252003>,  <36.130421, 33.085365, 31.284115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327244, 32.951839, 31.252003>,  <36.655285, 32.729294, 31.198483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327244, 32.951839, 31.252003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207632, -0.071437, -0.975595,
		-0.533224, -0.827865, 0.174104,
		-0.820098, 0.556360, 0.133800,
		36.081215, 33.118748, 31.292143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057465, 32.515820, 30.850639>,  <36.655285, 32.729294, 31.198483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057465, 32.515820, 30.850639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005566, 32.911514, 30.877714>,  <35.974426, 33.148930, 30.893959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005566, 32.911514, 30.877714>,  <36.057465, 32.515820, 30.850639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005566, 32.911514, 30.877714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278142, 0.029214, -0.960096,
		-0.951737, -0.143397, 0.271357,
		-0.129747, 0.989234, 0.067689,
		35.966640, 33.208286, 30.898022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410641, 32.585415, 30.491451>,  <36.057465, 32.515820, 30.850639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410641, 32.585415, 30.491451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609913, 32.931824, 30.508526>,  <35.729477, 33.139668, 30.518770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609913, 32.931824, 30.508526>,  <35.410641, 32.585415, 30.491451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609913, 32.931824, 30.508526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349749, 0.245754, -0.904036,
		-0.793405, 0.435444, 0.425320,
		0.498181, 0.866022, 0.042686,
		35.759369, 33.191631, 30.521332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897003, 33.056171, 30.312078>,  <35.410641, 32.585415, 30.491451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897003, 33.056171, 30.312078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250267, 33.220058, 30.220726>,  <35.462227, 33.318390, 30.165915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250267, 33.220058, 30.220726>,  <34.897003, 33.056171, 30.312078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250267, 33.220058, 30.220726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365512, 0.295959, -0.882502,
		-0.293987, 0.862866, 0.411137,
		0.883161, 0.409719, -0.228380,
		35.515217, 33.342976, 30.152212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771927, 33.591675, 29.997486>,  <34.897003, 33.056171, 30.312078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771927, 33.591675, 29.997486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151222, 33.555912, 29.875607>,  <35.378799, 33.534454, 29.802479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151222, 33.555912, 29.875607>,  <34.771927, 33.591675, 29.997486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151222, 33.555912, 29.875607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223584, 0.493379, -0.840587,
		0.225490, 0.865207, 0.447853,
		0.948243, -0.089411, -0.304699,
		35.435696, 33.529087, 29.784197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922848, 34.247990, 29.642290>,  <34.771927, 33.591675, 29.997486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922848, 34.247990, 29.642290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225605, 34.008163, 29.538258>,  <35.407257, 33.864269, 29.475838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225605, 34.008163, 29.538258>,  <34.922848, 34.247990, 29.642290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225605, 34.008163, 29.538258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000265, 0.398236, -0.917283,
		0.653541, 0.694214, 0.301581,
		0.756891, -0.599561, -0.260080,
		35.452671, 33.828297, 29.460234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458897, 34.625645, 29.126654>,  <34.922848, 34.247990, 29.642290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458897, 34.625645, 29.126654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533043, 34.237740, 29.063145>,  <35.577530, 34.004997, 29.025040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533043, 34.237740, 29.063145>,  <35.458897, 34.625645, 29.126654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533043, 34.237740, 29.063145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136213, 0.185368, -0.973183,
		0.973184, 0.158766, 0.166454,
		0.185364, -0.969759, -0.158772,
		35.588654, 33.946812, 29.015512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014908, 34.640930, 28.727827>,  <35.458897, 34.625645, 29.126654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014908, 34.640930, 28.727827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869282, 34.271496, 28.679735>,  <35.781906, 34.049835, 28.650879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869282, 34.271496, 28.679735>,  <36.014908, 34.640930, 28.727827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869282, 34.271496, 28.679735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081929, 0.096834, -0.991923,
		0.927765, -0.370970, 0.040414,
		-0.364061, -0.923582, -0.120232,
		35.760063, 33.994423, 28.643665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410755, 34.317417, 28.197859>,  <36.014908, 34.640930, 28.727827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410755, 34.317417, 28.197859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070827, 34.107029, 28.211494>,  <35.866871, 33.980797, 28.219675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070827, 34.107029, 28.211494>,  <36.410755, 34.317417, 28.197859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070827, 34.107029, 28.211494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158955, 0.194090, -0.968020,
		0.502536, -0.828059, -0.248548,
		-0.849818, -0.525972, 0.034087,
		35.815884, 33.949238, 28.221720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517368, 33.798145, 27.643028>,  <36.410755, 34.317417, 28.197859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517368, 33.798145, 27.643028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128273, 33.834881, 27.728205>,  <35.894814, 33.856922, 27.779310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128273, 33.834881, 27.728205>,  <36.517368, 33.798145, 27.643028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128273, 33.834881, 27.728205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191194, 0.202034, -0.960535,
		-0.131232, -0.975064, -0.178968,
		-0.972740, 0.091835, 0.212940,
		35.836452, 33.862431, 27.792088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211407, 33.468189, 27.154442>,  <36.517368, 33.798145, 27.643028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211407, 33.468189, 27.154442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927044, 33.710152, 27.297945>,  <35.756428, 33.855328, 27.384047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927044, 33.710152, 27.297945>,  <36.211407, 33.468189, 27.154442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927044, 33.710152, 27.297945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110946, 0.407270, -0.906544,
		-0.694481, -0.684270, -0.222419,
		-0.710905, 0.604901, 0.358758,
		35.713772, 33.891621, 27.405573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649673, 33.259457, 26.781044>,  <36.211407, 33.468189, 27.154442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649673, 33.259457, 26.781044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568142, 33.629269, 26.909853>,  <35.519222, 33.851154, 26.987139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568142, 33.629269, 26.909853>,  <35.649673, 33.259457, 26.781044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568142, 33.629269, 26.909853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192266, 0.284722, -0.939131,
		-0.959942, -0.253333, 0.119722,
		-0.203826, 0.924530, 0.322024,
		35.506992, 33.906628, 27.006460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111507, 33.452263, 26.355440>,  <35.649673, 33.259457, 26.781044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111507, 33.452263, 26.355440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244751, 33.795021, 26.512802>,  <35.324696, 34.000675, 26.607220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244751, 33.795021, 26.512802>,  <35.111507, 33.452263, 26.355440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244751, 33.795021, 26.512802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024529, 0.409219, -0.912106,
		-0.942570, 0.313479, 0.115295,
		0.333108, 0.856896, 0.393407,
		35.344685, 34.052090, 26.630825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719376, 33.909748, 26.016216>,  <35.111507, 33.452263, 26.355440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719376, 33.909748, 26.016216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022831, 34.143227, 26.131989>,  <35.204903, 34.283314, 26.201452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022831, 34.143227, 26.131989>,  <34.719376, 33.909748, 26.016216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022831, 34.143227, 26.131989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114765, 0.557022, -0.822530,
		-0.641326, 0.590785, 0.489565,
		0.758637, 0.583695, 0.289432,
		35.250423, 34.318336, 26.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532406, 34.518742, 25.742378>,  <34.719376, 33.909748, 26.016216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532406, 34.518742, 25.742378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923359, 34.554413, 25.819088>,  <35.157928, 34.575817, 25.865114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923359, 34.554413, 25.819088>,  <34.532406, 34.518742, 25.742378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923359, 34.554413, 25.819088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104092, 0.586506, -0.803228,
		-0.184107, 0.805021, 0.563956,
		0.977379, 0.089177, 0.191776,
		35.216572, 34.581165, 25.876621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695473, 35.185711, 25.800182>,  <34.532406, 34.518742, 25.742378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695473, 35.185711, 25.800182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050274, 35.023701, 25.711483>,  <35.263157, 34.926495, 25.658264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050274, 35.023701, 25.711483>,  <34.695473, 35.185711, 25.800182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050274, 35.023701, 25.711483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033742, 0.535796, -0.843673,
		0.460524, 0.740860, 0.488921,
		0.887006, -0.405029, -0.221749,
		35.316376, 34.902191, 25.644958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106216, 35.670147, 25.696329>,  <34.695473, 35.185711, 25.800182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106216, 35.670147, 25.696329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343185, 35.392502, 25.532749>,  <35.485367, 35.225914, 25.434601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343185, 35.392502, 25.532749>,  <35.106216, 35.670147, 25.696329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343185, 35.392502, 25.532749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128880, 0.582733, -0.802379,
		0.795249, 0.422645, 0.434684,
		0.592426, -0.694113, -0.408948,
		35.520912, 35.184269, 25.410065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726532, 36.011353, 25.397516>,  <35.106216, 35.670147, 25.696329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726532, 36.011353, 25.397516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683167, 35.658127, 25.214895>,  <35.657146, 35.446190, 25.105322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683167, 35.658127, 25.214895>,  <35.726532, 36.011353, 25.397516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683167, 35.658127, 25.214895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239359, 0.422560, -0.874157,
		0.964860, -0.204046, 0.165561,
		-0.108409, -0.883067, -0.456552,
		35.650642, 35.393208, 25.077930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264111, 36.014919, 24.870079>,  <35.726532, 36.011353, 25.397516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264111, 36.014919, 24.870079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005116, 35.724380, 24.777842>,  <35.849720, 35.550056, 24.722500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005116, 35.724380, 24.777842>,  <36.264111, 36.014919, 24.870079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005116, 35.724380, 24.777842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064259, 0.249470, -0.966248,
		0.759362, -0.640451, -0.114854,
		-0.647488, -0.726351, -0.230593,
		35.810867, 35.506474, 24.708664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454510, 35.660355, 24.222080>,  <36.264111, 36.014919, 24.870079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454510, 35.660355, 24.222080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059082, 35.634895, 24.276760>,  <35.821827, 35.619617, 24.309568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059082, 35.634895, 24.276760>,  <36.454510, 35.660355, 24.222080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059082, 35.634895, 24.276760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147165, 0.209644, -0.966640,
		0.032871, -0.975704, -0.216614,
		-0.988565, -0.063652, 0.136698,
		35.762512, 35.615799, 24.317770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219303, 35.395023, 23.547710>,  <36.454510, 35.660355, 24.222080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219303, 35.395023, 23.547710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879131, 35.525421, 23.712873>,  <35.675026, 35.603661, 23.811972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879131, 35.525421, 23.712873>,  <36.219303, 35.395023, 23.547710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879131, 35.525421, 23.712873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320130, 0.302155, -0.897897,
		-0.417470, -0.895785, -0.152602,
		-0.850433, 0.325993, 0.412908,
		35.624001, 35.623219, 23.836746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676956, 35.201279, 23.122656>,  <36.219303, 35.395023, 23.547710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676956, 35.201279, 23.122656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523380, 35.507915, 23.328539>,  <35.431236, 35.691898, 23.452068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523380, 35.507915, 23.328539>,  <35.676956, 35.201279, 23.122656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523380, 35.507915, 23.328539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429202, 0.345381, -0.834564,
		-0.817543, -0.541335, 0.196419,
		-0.383939, 0.766595, 0.514706,
		35.408199, 35.737896, 23.482950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921936, 35.123188, 23.024340>,  <35.676956, 35.201279, 23.122656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921936, 35.123188, 23.024340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996403, 35.498581, 23.140675>,  <35.041084, 35.723816, 23.210476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996403, 35.498581, 23.140675>,  <34.921936, 35.123188, 23.024340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996403, 35.498581, 23.140675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616617, 0.342060, -0.709069,
		-0.764934, -0.047328, 0.642367,
		0.186169, 0.938486, 0.290837,
		35.052254, 35.780128, 23.227926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280079, 35.491783, 22.914843>,  <34.921936, 35.123188, 23.024340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280079, 35.491783, 22.914843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547043, 35.789661, 22.914503>,  <34.707222, 35.968388, 22.914299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547043, 35.789661, 22.914503>,  <34.280079, 35.491783, 22.914843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547043, 35.789661, 22.914503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473631, 0.423600, -0.772164,
		-0.574665, 0.515749, 0.635423,
		0.667408, 0.744692, -0.000847,
		34.747265, 36.013069, 22.914249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869785, 36.126354, 23.012884>,  <34.280079, 35.491783, 22.914843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869785, 36.126354, 23.012884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221123, 36.202644, 22.837549>,  <34.431927, 36.248417, 22.732349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221123, 36.202644, 22.837549>,  <33.869785, 36.126354, 23.012884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221123, 36.202644, 22.837549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467156, 0.536949, -0.702461,
		0.101388, 0.821773, 0.560723,
		0.878343, 0.190724, -0.438336,
		34.484627, 36.259861, 22.706049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757877, 36.767433, 22.608463>,  <33.869785, 36.126354, 23.012884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757877, 36.767433, 22.608463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087379, 36.596348, 22.459606>,  <34.285080, 36.493698, 22.370293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087379, 36.596348, 22.459606>,  <33.757877, 36.767433, 22.608463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087379, 36.596348, 22.459606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212967, 0.374887, -0.902277,
		0.525426, 0.822510, 0.217727,
		0.823755, -0.427711, -0.372143,
		34.334507, 36.468033, 22.347963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144051, 37.309036, 22.307295>,  <33.757877, 36.767433, 22.608463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144051, 37.309036, 22.307295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236763, 36.959972, 22.135365>,  <34.292389, 36.750534, 22.032206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236763, 36.959972, 22.135365>,  <34.144051, 37.309036, 22.307295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236763, 36.959972, 22.135365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334077, 0.343579, -0.877694,
		0.913604, 0.347024, -0.211900,
		0.231777, -0.872655, -0.429828,
		34.306297, 36.698177, 22.006416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656921, 37.728985, 21.932707>,  <34.144051, 37.309036, 22.307295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656921, 37.728985, 21.932707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691391, 38.099937, 21.787083>,  <34.712074, 38.322510, 21.699709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691391, 38.099937, 21.787083>,  <34.656921, 37.728985, 21.932707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691391, 38.099937, 21.787083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007810, 0.364778, 0.931062,
		0.996249, -0.083078, 0.024192,
		0.086175, 0.927381, -0.364059,
		34.717243, 38.378151, 21.677866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178932, 37.991158, 22.249338>,  <34.656921, 37.728985, 21.932707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178932, 37.991158, 22.249338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960522, 38.313175, 22.156591>,  <34.829475, 38.506386, 22.100945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960522, 38.313175, 22.156591>,  <35.178932, 37.991158, 22.249338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960522, 38.313175, 22.156591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160725, 0.372287, 0.914095,
		0.822206, 0.461854, -0.332669,
		-0.546027, 0.805042, -0.231865,
		34.796715, 38.554688, 22.087032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418751, 38.377140, 22.658873>,  <35.178932, 37.991158, 22.249338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418751, 38.377140, 22.658873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112431, 38.602829, 22.535456>,  <34.928638, 38.738243, 22.461405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112431, 38.602829, 22.535456>,  <35.418751, 38.377140, 22.658873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112431, 38.602829, 22.535456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199884, 0.247184, 0.948128,
		0.611220, 0.787753, -0.076517,
		-0.765805, 0.564220, -0.308543,
		34.882690, 38.772095, 22.442892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528393, 38.988228, 22.943405>,  <35.418751, 38.377140, 22.658873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528393, 38.988228, 22.943405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136696, 38.942650, 22.876362>,  <34.901676, 38.915302, 22.836136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136696, 38.942650, 22.876362>,  <35.528393, 38.988228, 22.943405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136696, 38.942650, 22.876362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192250, 0.260457, 0.946151,
		-0.064155, 0.958738, -0.276958,
		-0.979247, -0.113946, -0.167608,
		34.842922, 38.908466, 22.826080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327019, 39.558914, 23.260408>,  <35.528393, 38.988228, 22.943405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327019, 39.558914, 23.260408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022076, 39.305096, 23.209558>,  <34.839108, 39.152805, 23.179049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022076, 39.305096, 23.209558>,  <35.327019, 39.558914, 23.260408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022076, 39.305096, 23.209558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193547, 0.036114, 0.980426,
		-0.617532, 0.772043, -0.150346,
		-0.762360, -0.634544, -0.127125,
		34.793369, 39.114731, 23.171421>
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
