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
	<24.618471, 34.927700, 35.232506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359041, 34.947411, 34.928684>,  <24.203384, 34.959236, 34.746391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359041, 34.947411, 34.928684>,  <24.618471, 34.927700, 35.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359041, 34.947411, 34.928684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712266, 0.391151, -0.582819,
		0.268381, -0.919007, -0.288789,
		-0.648574, 0.049277, -0.759554,
		24.164469, 34.962193, 34.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860451, 34.541107, 34.532146>,  <24.618471, 34.927700, 35.232506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860451, 34.541107, 34.532146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631727, 34.863224, 34.469498>,  <24.494493, 35.056496, 34.431908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631727, 34.863224, 34.469498>,  <24.860451, 34.541107, 34.532146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631727, 34.863224, 34.469498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744786, 0.429519, -0.510692,
		-0.343986, -0.408670, -0.845377,
		-0.571810, 0.805296, -0.156623,
		24.460184, 35.104813, 34.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325785, 34.940201, 34.182644>,  <24.860451, 34.541107, 34.532146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325785, 34.940201, 34.182644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059835, 35.231510, 34.249062>,  <24.900267, 35.406296, 34.288914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059835, 35.231510, 34.249062>,  <25.325785, 34.940201, 34.182644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059835, 35.231510, 34.249062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642704, 0.671036, -0.369653,
		-0.380628, -0.139054, -0.914214,
		-0.664871, 0.728269, 0.166045,
		24.860374, 35.449989, 34.298874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488665, 35.334984, 33.522728>,  <25.325785, 34.940201, 34.182644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488665, 35.334984, 33.522728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495859, 35.187096, 33.151138>,  <25.500175, 35.098362, 32.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495859, 35.187096, 33.151138>,  <25.488665, 35.334984, 33.522728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495859, 35.187096, 33.151138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981039, -0.172800, 0.087767,
		-0.192976, -0.912934, 0.359599,
		0.017987, -0.369717, -0.928970,
		25.501255, 35.076180, 32.872448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844807, 34.622551, 33.450958>,  <25.488665, 35.334984, 33.522728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844807, 34.622551, 33.450958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903177, 34.879814, 33.150280>,  <25.938200, 35.034172, 32.969872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903177, 34.879814, 33.150280>,  <25.844807, 34.622551, 33.450958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903177, 34.879814, 33.150280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988507, -0.064456, 0.136747,
		0.039499, -0.763012, -0.645176,
		0.145925, 0.643162, -0.751697,
		25.946955, 35.072762, 32.924770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456762, 34.160461, 33.229969>,  <25.844807, 34.622551, 33.450958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456762, 34.160461, 33.229969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745070, 33.889603, 33.170692>,  <26.918055, 33.727085, 33.135128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745070, 33.889603, 33.170692>,  <26.456762, 34.160461, 33.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745070, 33.889603, 33.170692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321265, 0.136891, 0.937043,
		-0.614233, -0.722999, 0.316211,
		0.720768, -0.677151, -0.148192,
		26.961300, 33.686459, 33.126236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478308, 33.669022, 33.753082>,  <26.456762, 34.160461, 33.229969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478308, 33.669022, 33.753082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844450, 33.722260, 33.601078>,  <27.064135, 33.754200, 33.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844450, 33.722260, 33.601078>,  <26.478308, 33.669022, 33.753082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844450, 33.722260, 33.601078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298502, 0.409091, 0.862289,
		0.270224, -0.902736, 0.334735,
		0.915355, 0.133092, -0.380015,
		27.119057, 33.762188, 33.487072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046764, 33.298347, 34.129005>,  <26.478308, 33.669022, 33.753082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046764, 33.298347, 34.129005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138535, 33.645737, 33.953224>,  <27.193598, 33.854172, 33.847755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138535, 33.645737, 33.953224>,  <27.046764, 33.298347, 34.129005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138535, 33.645737, 33.953224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157184, 0.412506, 0.897291,
		0.960550, -0.274937, -0.041871,
		0.229427, 0.868475, -0.439448,
		27.207363, 33.906281, 33.821388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755411, 33.517662, 34.371525>,  <27.046764, 33.298347, 34.129005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755411, 33.517662, 34.371525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526115, 33.825623, 34.259354>,  <27.388538, 34.010399, 34.192051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526115, 33.825623, 34.259354>,  <27.755411, 33.517662, 34.371525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526115, 33.825623, 34.259354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369319, 0.548278, 0.750329,
		0.731435, 0.326552, -0.598637,
		-0.573241, 0.769906, -0.280428,
		27.354143, 34.056595, 34.175224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220428, 34.075207, 34.478237>,  <27.755411, 33.517662, 34.371525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220428, 34.075207, 34.478237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863371, 34.255047, 34.465248>,  <27.649137, 34.362949, 34.457455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863371, 34.255047, 34.465248>,  <28.220428, 34.075207, 34.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863371, 34.255047, 34.465248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357761, 0.750448, 0.555730,
		0.274223, 0.484450, -0.830728,
		-0.892642, 0.449596, -0.032473,
		27.595579, 34.389927, 34.455505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350975, 34.670876, 34.313114>,  <28.220428, 34.075207, 34.478237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350975, 34.670876, 34.313114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994457, 34.703636, 34.491501>,  <27.780546, 34.723293, 34.598534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994457, 34.703636, 34.491501>,  <28.350975, 34.670876, 34.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994457, 34.703636, 34.491501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376395, 0.682068, 0.626984,
		-0.252831, 0.726688, -0.638750,
		-0.891293, 0.081902, 0.445970,
		27.727070, 34.728207, 34.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222660, 35.335567, 34.208073>,  <28.350975, 34.670876, 34.313114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222660, 35.335567, 34.208073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026882, 35.172718, 34.516541>,  <27.909414, 35.075008, 34.701622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026882, 35.172718, 34.516541>,  <28.222660, 35.335567, 34.208073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026882, 35.172718, 34.516541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342203, 0.723725, 0.599265,
		-0.802085, 0.557203, -0.214907,
		-0.489446, -0.407119, 0.771165,
		27.880049, 35.050583, 34.747890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967300, 35.498131, 34.997776>,  <28.222660, 35.335567, 34.208073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967300, 35.498131, 34.997776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651127, 35.427544, 34.763145>,  <27.461422, 35.385189, 34.622368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651127, 35.427544, 34.763145>,  <27.967300, 35.498131, 34.997776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651127, 35.427544, 34.763145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080234, -0.979179, 0.186470,
		-0.607267, 0.100330, 0.788138,
		-0.790436, -0.176472, -0.586573,
		27.413996, 35.374603, 34.587173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088985, 35.143875, 35.686943>,  <27.967300, 35.498131, 34.997776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088985, 35.143875, 35.686943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730000, 35.123219, 35.862164>,  <27.514608, 35.110825, 35.967297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730000, 35.123219, 35.862164>,  <28.088985, 35.143875, 35.686943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730000, 35.123219, 35.862164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411638, -0.258744, -0.873845,
		0.158467, -0.964565, 0.210957,
		-0.897464, -0.051638, 0.438054,
		27.460760, 35.107727, 35.993580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735357, 34.422352, 35.698200>,  <28.088985, 35.143875, 35.686943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735357, 34.422352, 35.698200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529791, 34.760979, 35.642742>,  <27.406452, 34.964153, 35.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529791, 34.760979, 35.642742>,  <27.735357, 34.422352, 35.698200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529791, 34.760979, 35.642742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227352, -0.290257, -0.929549,
		-0.827166, -0.446187, 0.341635,
		-0.513914, 0.846563, -0.138649,
		27.375616, 35.014946, 35.601147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977652, 34.381912, 35.622318>,  <27.735357, 34.422352, 35.698200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977652, 34.381912, 35.622318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173082, 34.669884, 35.425140>,  <27.290340, 34.842667, 35.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173082, 34.669884, 35.425140>,  <26.977652, 34.381912, 35.622318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173082, 34.669884, 35.425140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311548, -0.383782, -0.869280,
		-0.815003, 0.578288, 0.036785,
		0.488577, 0.719927, -0.492949,
		27.319656, 34.885860, 35.277256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539690, 34.648262, 35.086636>,  <26.977652, 34.381912, 35.622318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539690, 34.648262, 35.086636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917706, 34.711323, 34.972065>,  <27.144516, 34.749161, 34.903320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917706, 34.711323, 34.972065>,  <26.539690, 34.648262, 35.086636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917706, 34.711323, 34.972065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234531, -0.283507, -0.929849,
		-0.227799, 0.945922, -0.230951,
		0.945041, 0.157654, -0.286431,
		27.201218, 34.758617, 34.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433035, 35.050961, 34.533875>,  <26.539690, 34.648262, 35.086636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433035, 35.050961, 34.533875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779234, 34.851189, 34.518444>,  <26.986954, 34.731327, 34.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779234, 34.851189, 34.518444>,  <26.433035, 35.050961, 34.533875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779234, 34.851189, 34.518444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251877, -0.367332, -0.895335,
		0.432984, 0.784626, -0.443719,
		0.865496, -0.499428, -0.038580,
		27.038883, 34.701359, 34.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597630, 35.034893, 33.843102>,  <26.433035, 35.050961, 34.533875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597630, 35.034893, 33.843102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832226, 34.733467, 33.961872>,  <26.972984, 34.552612, 34.033134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832226, 34.733467, 33.961872>,  <26.597630, 35.034893, 33.843102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832226, 34.733467, 33.961872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013983, -0.375965, -0.926528,
		0.809835, 0.539249, -0.231037,
		0.586491, -0.753565, 0.296930,
		27.008173, 34.507397, 34.050949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181520, 35.086975, 33.307121>,  <26.597630, 35.034893, 33.843102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181520, 35.086975, 33.307121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180981, 34.721138, 33.468868>,  <27.180656, 34.501637, 33.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180981, 34.721138, 33.468868>,  <27.181520, 35.086975, 33.307121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180981, 34.721138, 33.468868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115758, -0.401507, -0.908511,
		0.993277, -0.048036, -0.105329,
		-0.001350, -0.914595, 0.404368,
		27.180576, 34.446758, 33.590179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659237, 34.697193, 32.890835>,  <27.181520, 35.086975, 33.307121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659237, 34.697193, 32.890835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379126, 34.480984, 33.077358>,  <27.211060, 34.351257, 33.189274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379126, 34.480984, 33.077358>,  <27.659237, 34.697193, 32.890835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379126, 34.480984, 33.077358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333733, -0.329555, -0.883185,
		0.631058, -0.774097, 0.050389,
		-0.700277, -0.540525, 0.466310,
		27.169043, 34.318825, 33.217251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711006, 34.041454, 32.591503>,  <27.659237, 34.697193, 32.890835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711006, 34.041454, 32.591503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334349, 34.128464, 32.694252>,  <27.108355, 34.180672, 32.755901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334349, 34.128464, 32.694252>,  <27.711006, 34.041454, 32.591503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334349, 34.128464, 32.694252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291955, -0.147995, -0.944913,
		-0.167542, -0.964766, 0.202871,
		-0.941644, 0.217542, 0.256873,
		27.051855, 34.193722, 32.771317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567820, 33.449036, 32.223652>,  <27.711006, 34.041454, 32.591503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567820, 33.449036, 32.223652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791698, 33.644592, 31.956001>,  <27.926025, 33.761925, 31.795412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791698, 33.644592, 31.956001>,  <27.567820, 33.449036, 32.223652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791698, 33.644592, 31.956001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550421, 0.822919, 0.140855,
		0.619498, 0.289464, 0.729680,
		0.559695, 0.488891, -0.669124,
		27.959606, 33.791260, 31.755264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293863, 33.625317, 32.207577>,  <27.567820, 33.449036, 32.223652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293863, 33.625317, 32.207577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664167, 33.702412, 32.337696>,  <28.886349, 33.748669, 32.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664167, 33.702412, 32.337696>,  <28.293863, 33.625317, 32.207577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664167, 33.702412, 32.337696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283981, -0.922448, -0.261618,
		0.249649, 0.334575, -0.908700,
		0.925759, 0.192740, 0.325301,
		28.941895, 33.760235, 32.435287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602615, 33.220528, 31.630411>,  <28.293863, 33.625317, 32.207577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602615, 33.220528, 31.630411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868921, 33.199917, 31.928164>,  <29.028706, 33.187550, 32.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868921, 33.199917, 31.928164>,  <28.602615, 33.220528, 31.630411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868921, 33.199917, 31.928164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488250, 0.784467, -0.382390,
		-0.564239, 0.618026, 0.547429,
		0.665767, -0.051523, 0.744379,
		29.068651, 33.184460, 32.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886572, 33.905781, 31.628851>,  <28.602615, 33.220528, 31.630411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886572, 33.905781, 31.628851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136414, 33.686665, 31.851488>,  <29.286318, 33.555195, 31.985071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136414, 33.686665, 31.851488>,  <28.886572, 33.905781, 31.628851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136414, 33.686665, 31.851488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757011, 0.599788, -0.259207,
		-0.191846, 0.583248, 0.789314,
		0.624603, -0.547792, 0.556592,
		29.323795, 33.522327, 32.018467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364315, 34.330338, 32.120827>,  <28.886572, 33.905781, 31.628851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364315, 34.330338, 32.120827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531059, 33.992889, 31.985453>,  <29.631105, 33.790421, 31.904228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531059, 33.992889, 31.985453>,  <29.364315, 34.330338, 32.120827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531059, 33.992889, 31.985453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694507, 0.535811, -0.480173,
		0.586419, -0.034880, 0.809256,
		0.416860, -0.843617, -0.338435,
		29.656116, 33.739803, 31.883923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025770, 34.137634, 32.491261>,  <29.364315, 34.330338, 32.120827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025770, 34.137634, 32.491261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983137, 34.000973, 32.117756>,  <29.957558, 33.918976, 31.893654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983137, 34.000973, 32.117756>,  <30.025770, 34.137634, 32.491261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983137, 34.000973, 32.117756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867803, 0.426439, -0.255083,
		0.485344, -0.837509, 0.251040,
		-0.106581, -0.341656, -0.933762,
		29.951162, 33.898476, 31.837627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574312, 33.672859, 32.423847>,  <30.025770, 34.137634, 32.491261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574312, 33.672859, 32.423847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424704, 33.860775, 32.103996>,  <30.334938, 33.973526, 31.912086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424704, 33.860775, 32.103996>,  <30.574312, 33.672859, 32.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424704, 33.860775, 32.103996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902132, 0.384265, -0.196209,
		0.215090, -0.794755, -0.567540,
		-0.374023, 0.469793, -0.799626,
		30.312496, 34.001713, 31.864109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991507, 33.626492, 31.744549>,  <30.574312, 33.672859, 32.423847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991507, 33.626492, 31.744549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811769, 33.982697, 31.716032>,  <30.703926, 34.196419, 31.698921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811769, 33.982697, 31.716032>,  <30.991507, 33.626492, 31.744549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811769, 33.982697, 31.716032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844002, 0.397005, -0.360622,
		-0.292834, -0.222213, -0.929984,
		-0.449344, 0.890510, -0.071292,
		30.676966, 34.249851, 31.694645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316328, 34.068363, 31.137667>,  <30.991507, 33.626492, 31.744549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316328, 34.068363, 31.137667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142166, 34.356827, 31.353205>,  <31.037670, 34.529903, 31.482527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142166, 34.356827, 31.353205>,  <31.316328, 34.068363, 31.137667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142166, 34.356827, 31.353205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783056, 0.598687, -0.168517,
		-0.444126, 0.348572, -0.825378,
		-0.435403, 0.721160, 0.538844,
		31.011545, 34.573174, 31.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465311, 34.727955, 30.900448>,  <31.316328, 34.068363, 31.137667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465311, 34.727955, 30.900448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338617, 34.822887, 31.267784>,  <31.262600, 34.879845, 31.488186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338617, 34.822887, 31.267784>,  <31.465311, 34.727955, 30.900448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338617, 34.822887, 31.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665915, 0.745103, 0.037115,
		-0.675452, 0.623294, -0.394042,
		-0.316735, 0.237329, 0.918343,
		31.243597, 34.894085, 31.543287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291149, 35.479153, 30.913832>,  <31.465311, 34.727955, 30.900448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291149, 35.479153, 30.913832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345671, 35.370399, 31.294884>,  <31.378384, 35.305149, 31.523516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345671, 35.370399, 31.294884>,  <31.291149, 35.479153, 30.913832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345671, 35.370399, 31.294884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511219, 0.842982, 0.167441,
		-0.848573, 0.464180, 0.253891,
		0.136303, -0.271880, 0.952629,
		31.386562, 35.288834, 31.580673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071606, 36.159618, 31.273258>,  <31.291149, 35.479153, 30.913832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071606, 36.159618, 31.273258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284248, 35.913498, 31.506084>,  <31.411835, 35.765827, 31.645781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284248, 35.913498, 31.506084>,  <31.071606, 36.159618, 31.273258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284248, 35.913498, 31.506084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688492, 0.714187, 0.126159,
		-0.493329, 0.333681, 0.803295,
		0.531606, -0.615301, 0.582066,
		31.443729, 35.728909, 31.680704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108231, 36.404415, 31.934120>,  <31.071606, 36.159618, 31.273258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108231, 36.404415, 31.934120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420671, 36.181221, 31.822027>,  <31.608135, 36.047302, 31.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420671, 36.181221, 31.822027>,  <31.108231, 36.404415, 31.934120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420671, 36.181221, 31.822027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576491, 0.816867, -0.019638,
		0.239869, -0.146211, 0.959732,
		0.781102, -0.557987, -0.280230,
		31.655003, 36.013824, 31.737959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251451, 36.368645, 32.659599>,  <31.108231, 36.404415, 31.934120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251451, 36.368645, 32.659599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591270, 36.160645, 32.624123>,  <31.795162, 36.035843, 32.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591270, 36.160645, 32.624123>,  <31.251451, 36.368645, 32.659599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591270, 36.160645, 32.624123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507497, 0.851555, -0.131535,
		0.143925, 0.066733, 0.987336,
		0.849548, -0.520001, -0.088693,
		31.846134, 36.004642, 32.597515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789373, 36.650253, 33.118317>,  <31.251451, 36.368645, 32.659599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789373, 36.650253, 33.118317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977118, 36.461918, 32.819515>,  <32.089764, 36.348915, 32.640236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977118, 36.461918, 32.819515>,  <31.789373, 36.650253, 33.118317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977118, 36.461918, 32.819515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646094, 0.759766, -0.072933,
		0.601885, -0.448401, 0.660811,
		0.469359, -0.470843, -0.747000,
		32.117924, 36.320663, 32.595413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491131, 36.572155, 33.281002>,  <31.789373, 36.650253, 33.118317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491131, 36.572155, 33.281002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501583, 36.513432, 32.885475>,  <32.507854, 36.478195, 32.648159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501583, 36.513432, 32.885475>,  <32.491131, 36.572155, 33.281002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501583, 36.513432, 32.885475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712087, 0.696968, -0.084663,
		0.701605, -0.701913, 0.122754,
		0.026130, -0.146811, -0.988819,
		32.509422, 36.469387, 32.588829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186611, 36.421993, 33.147858>,  <32.491131, 36.572155, 33.281002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186611, 36.421993, 33.147858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001957, 36.572876, 32.826706>,  <32.891167, 36.663406, 32.634014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001957, 36.572876, 32.826706>,  <33.186611, 36.421993, 33.147858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001957, 36.572876, 32.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823640, 0.518365, -0.230034,
		0.329412, -0.767471, -0.549978,
		-0.461634, 0.377208, -0.802875,
		32.863468, 36.686039, 32.585842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556957, 36.810570, 32.679020>,  <33.186611, 36.421993, 33.147858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556957, 36.810570, 32.679020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748241, 36.522316, 32.478222>,  <33.863010, 36.349365, 32.357742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748241, 36.522316, 32.478222>,  <33.556957, 36.810570, 32.679020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748241, 36.522316, 32.478222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773088, -0.074198, -0.629944,
		0.416712, 0.689333, -0.592596,
		0.478211, -0.720634, -0.501996,
		33.891705, 36.306126, 32.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546726, 37.019596, 31.887402>,  <33.556957, 36.810570, 32.679020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546726, 37.019596, 31.887402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554985, 36.634579, 31.995539>,  <33.559940, 36.403568, 32.060421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554985, 36.634579, 31.995539>,  <33.546726, 37.019596, 31.887402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554985, 36.634579, 31.995539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918210, -0.125240, -0.375774,
		0.395556, -0.240473, -0.886402,
		0.020649, -0.962542, 0.270344,
		33.561180, 36.345818, 32.076641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217388, 36.539162, 31.352406>,  <33.546726, 37.019596, 31.887402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217388, 36.539162, 31.352406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181587, 36.320667, 31.685539>,  <33.160107, 36.189571, 31.885420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181587, 36.320667, 31.685539>,  <33.217388, 36.539162, 31.352406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181587, 36.320667, 31.685539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980821, -0.097024, -0.169047,
		0.173145, -0.831990, -0.527079,
		-0.089507, -0.546240, 0.832833,
		33.154736, 36.156796, 31.935389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772957, 37.033508, 31.469513>,  <33.217388, 36.539162, 31.352406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772957, 37.033508, 31.469513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832039, 36.804485, 31.792093>,  <32.867489, 36.667072, 31.985641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832039, 36.804485, 31.792093>,  <32.772957, 37.033508, 31.469513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832039, 36.804485, 31.792093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851370, -0.488577, -0.190949,
		0.503343, -0.658383, -0.559623,
		0.147701, -0.572559, 0.806449,
		32.876350, 36.632717, 32.034027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474152, 36.448521, 31.344015>,  <32.772957, 37.033508, 31.469513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474152, 36.448521, 31.344015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534851, 36.395527, 31.735815>,  <32.571270, 36.363731, 31.970896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534851, 36.395527, 31.735815>,  <32.474152, 36.448521, 31.344015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534851, 36.395527, 31.735815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696325, -0.717645, 0.010812,
		0.701502, -0.683692, -0.201149,
		0.151745, -0.132480, 0.979501,
		32.580376, 36.355782, 32.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636578, 35.685558, 31.485380>,  <32.474152, 36.448521, 31.344015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636578, 35.685558, 31.485380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484650, 35.865211, 31.808865>,  <32.393494, 35.973003, 32.002956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484650, 35.865211, 31.808865>,  <32.636578, 35.685558, 31.485380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484650, 35.865211, 31.808865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686499, -0.722825, 0.079011,
		0.620045, -0.525171, 0.582873,
		-0.379821, 0.449132, 0.808713,
		32.370705, 35.999950, 32.051479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630680, 35.235500, 32.073631>,  <32.636578, 35.685558, 31.485380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630680, 35.235500, 32.073631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314964, 35.480911, 32.083477>,  <32.125534, 35.628159, 32.089386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314964, 35.480911, 32.083477>,  <32.630680, 35.235500, 32.073631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314964, 35.480911, 32.083477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608296, -0.786771, 0.104724,
		0.083618, 0.067685, 0.994196,
		-0.789293, 0.613523, 0.024616,
		32.078175, 35.664967, 32.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140503, 34.973484, 32.525360>,  <32.630680, 35.235500, 32.073631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140503, 34.973484, 32.525360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935205, 35.218105, 32.284496>,  <31.812027, 35.364876, 32.139980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935205, 35.218105, 32.284496>,  <32.140503, 34.973484, 32.525360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935205, 35.218105, 32.284496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778003, -0.627740, 0.025591,
		-0.362347, 0.481612, 0.797969,
		-0.513242, 0.611549, -0.602155,
		31.781233, 35.401569, 32.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513369, 35.098042, 32.827065>,  <32.140503, 34.973484, 32.525360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513369, 35.098042, 32.827065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459751, 35.158836, 32.435364>,  <31.427582, 35.195312, 32.200344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459751, 35.158836, 32.435364>,  <31.513369, 35.098042, 32.827065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459751, 35.158836, 32.435364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745833, -0.666132, -0.001296,
		-0.652507, 0.730184, 0.202646,
		-0.134042, 0.151985, -0.979251,
		31.419538, 35.204433, 32.141590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950642, 34.936077, 32.838612>,  <31.513369, 35.098042, 32.827065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950642, 34.936077, 32.838612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044846, 34.924690, 32.450031>,  <31.101368, 34.917858, 32.216881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044846, 34.924690, 32.450031>,  <30.950642, 34.936077, 32.838612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044846, 34.924690, 32.450031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785450, -0.594255, -0.173001,
		-0.572366, 0.803773, -0.162316,
		0.235511, -0.028471, -0.971455,
		31.115499, 34.916149, 32.158596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394278, 35.264576, 32.461048>,  <30.950642, 34.936077, 32.838612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394278, 35.264576, 32.461048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588814, 35.015137, 32.216228>,  <30.705536, 34.865475, 32.069336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588814, 35.015137, 32.216228>,  <30.394278, 35.264576, 32.461048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588814, 35.015137, 32.216228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869866, -0.279414, -0.406522,
		0.082490, 0.730109, -0.678334,
		0.486341, -0.623594, -0.612048,
		30.734716, 34.828060, 32.032616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110834, 35.383396, 31.778427>,  <30.394278, 35.264576, 32.461048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110834, 35.383396, 31.778427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284082, 35.023396, 31.798023>,  <30.388031, 34.807396, 31.809780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284082, 35.023396, 31.798023>,  <30.110834, 35.383396, 31.778427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284082, 35.023396, 31.798023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843306, -0.423824, -0.330467,
		0.318184, 0.101818, -0.942545,
		0.433121, -0.900004, 0.048991,
		30.414019, 34.753395, 31.812721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979794, 34.999969, 31.163525>,  <30.110834, 35.383396, 31.778427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979794, 34.999969, 31.163525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995537, 34.779903, 31.497177>,  <30.004982, 34.647865, 31.697369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995537, 34.779903, 31.497177>,  <29.979794, 34.999969, 31.163525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995537, 34.779903, 31.497177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824368, -0.489630, -0.284044,
		0.564685, -0.676450, -0.472806,
		0.039358, -0.550161, 0.834130,
		30.007345, 34.614857, 31.747416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384155, 34.886658, 30.741650>,  <29.979794, 34.999969, 31.163525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384155, 34.886658, 30.741650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411339, 35.101452, 31.077990>,  <29.427649, 35.230328, 31.279793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411339, 35.101452, 31.077990>,  <29.384155, 34.886658, 30.741650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411339, 35.101452, 31.077990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578445, 0.665478, -0.471742,
		-0.812886, 0.518443, -0.265393,
		0.067958, 0.536988, 0.840848,
		29.431726, 35.262547, 31.330244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160448, 35.531799, 30.550779>,  <29.384155, 34.886658, 30.741650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160448, 35.531799, 30.550779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421600, 35.536919, 30.853720>,  <29.578291, 35.539989, 31.035484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421600, 35.536919, 30.853720>,  <29.160448, 35.531799, 30.550779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421600, 35.536919, 30.853720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516466, 0.723879, -0.457452,
		-0.554085, 0.689808, 0.465998,
		0.652880, 0.012795, 0.757353,
		29.617464, 35.540756, 31.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188166, 36.117619, 31.009317>,  <29.160448, 35.531799, 30.550779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188166, 36.117619, 31.009317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561380, 35.975662, 30.985678>,  <29.785309, 35.890488, 30.971493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561380, 35.975662, 30.985678>,  <29.188166, 36.117619, 31.009317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561380, 35.975662, 30.985678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271284, 0.801887, -0.532336,
		0.236312, 0.480657, 0.844468,
		0.933039, -0.354888, -0.059101,
		29.841291, 35.869194, 30.967947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541462, 36.621819, 31.272686>,  <29.188166, 36.117619, 31.009317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541462, 36.621819, 31.272686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722704, 36.377754, 31.012718>,  <29.831450, 36.231316, 30.856737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722704, 36.377754, 31.012718>,  <29.541462, 36.621819, 31.272686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722704, 36.377754, 31.012718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124215, 0.765154, -0.631752,
		0.882760, 0.205521, 0.422488,
		0.453107, -0.610164, -0.649918,
		29.858635, 36.194706, 30.817743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297058, 36.806362, 31.100622>,  <29.541462, 36.621819, 31.272686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297058, 36.806362, 31.100622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068228, 36.645164, 30.814875>,  <29.930929, 36.548447, 30.643427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068228, 36.645164, 30.814875>,  <30.297058, 36.806362, 31.100622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068228, 36.645164, 30.814875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293366, 0.712814, -0.637049,
		0.765942, -0.574012, -0.289558,
		-0.572075, -0.402996, -0.714370,
		29.896605, 36.524265, 30.600563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559172, 36.707184, 30.466099>,  <30.297058, 36.806362, 31.100622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559172, 36.707184, 30.466099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167952, 36.734600, 30.387384>,  <29.933220, 36.751049, 30.340157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167952, 36.734600, 30.387384>,  <30.559172, 36.707184, 30.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167952, 36.734600, 30.387384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179324, 0.757856, -0.627293,
		0.106138, -0.648811, -0.753511,
		-0.978048, 0.068543, -0.196784,
		29.874537, 36.755161, 30.328348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582966, 36.779797, 29.764326>,  <30.559172, 36.707184, 30.466099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582966, 36.779797, 29.764326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231745, 36.931801, 29.880682>,  <30.021011, 37.023003, 29.950495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231745, 36.931801, 29.880682>,  <30.582966, 36.779797, 29.764326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231745, 36.931801, 29.880682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134805, 0.779627, -0.611563,
		-0.459183, -0.497772, -0.735781,
		-0.878054, 0.380006, 0.290889,
		29.968328, 37.045803, 29.967949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245911, 36.880211, 29.497244>,  <30.582966, 36.779797, 29.764326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245911, 36.880211, 29.497244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549595, 36.990959, 29.261637>,  <31.731806, 37.057407, 29.120272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549595, 36.990959, 29.261637>,  <31.245911, 36.880211, 29.497244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549595, 36.990959, 29.261637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613968, 0.004368, -0.789319,
		-0.215965, 0.960898, 0.173304,
		0.759212, 0.276868, -0.589017,
		31.777359, 37.074020, 29.084932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897568, 37.090958, 28.892736>,  <31.245911, 36.880211, 29.497244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897568, 37.090958, 28.892736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266441, 37.116177, 28.740107>,  <31.487766, 37.131310, 28.648529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266441, 37.116177, 28.740107>,  <30.897568, 37.090958, 28.892736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266441, 37.116177, 28.740107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383530, 0.022097, -0.923264,
		-0.049781, 0.997766, 0.044559,
		0.922186, 0.063051, -0.381573,
		31.543097, 37.135094, 28.625635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833134, 37.218868, 28.192240>,  <30.897568, 37.090958, 28.892736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833134, 37.218868, 28.192240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229980, 37.171864, 28.209639>,  <31.468088, 37.143661, 28.220078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229980, 37.171864, 28.209639>,  <30.833134, 37.218868, 28.192240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229980, 37.171864, 28.209639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041774, -0.017090, -0.998981,
		0.118131, 0.992925, -0.012047,
		0.992119, -0.117508, 0.043497,
		31.527617, 37.136612, 28.222689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373745, 37.709846, 27.883270>,  <30.833134, 37.218868, 28.192240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373745, 37.709846, 27.883270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487347, 37.328381, 27.843544>,  <31.555508, 37.099503, 27.819708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487347, 37.328381, 27.843544>,  <31.373745, 37.709846, 27.883270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487347, 37.328381, 27.843544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158147, 0.055569, -0.985851,
		0.945691, 0.295693, -0.135038,
		0.284005, -0.953666, -0.099314,
		31.572548, 37.042282, 27.813749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393644, 37.400864, 27.261450>,  <31.373745, 37.709846, 27.883270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393644, 37.400864, 27.261450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511776, 37.038818, 27.383799>,  <31.582655, 36.821590, 27.457207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511776, 37.038818, 27.383799>,  <31.393644, 37.400864, 27.261450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511776, 37.038818, 27.383799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054915, -0.303540, -0.951235,
		0.953816, 0.297725, -0.039940,
		0.295330, -0.905109, 0.305871,
		31.600374, 36.767284, 27.475559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822439, 37.398529, 26.657085>,  <31.393644, 37.400864, 27.261450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822439, 37.398529, 26.657085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712732, 37.051579, 26.823187>,  <31.646908, 36.843407, 26.922848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712732, 37.051579, 26.823187>,  <31.822439, 37.398529, 26.657085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712732, 37.051579, 26.823187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340208, -0.316373, -0.885532,
		0.899465, -0.384144, -0.208318,
		-0.274266, -0.867376, 0.415255,
		31.630453, 36.791367, 26.947763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287994, 36.818077, 26.433607>,  <31.822439, 37.398529, 26.657085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287994, 36.818077, 26.433607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917006, 36.702682, 26.528740>,  <31.694410, 36.633446, 26.585819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917006, 36.702682, 26.528740>,  <32.287994, 36.818077, 26.433607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917006, 36.702682, 26.528740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164988, -0.255035, -0.952752,
		0.335509, -0.922895, 0.188942,
		-0.927477, -0.288484, 0.237833,
		31.638763, 36.616138, 26.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260822, 36.105522, 26.231483>,  <32.287994, 36.818077, 26.433607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260822, 36.105522, 26.231483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905535, 36.288994, 26.221046>,  <31.692362, 36.399075, 26.214785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905535, 36.288994, 26.221046>,  <32.260822, 36.105522, 26.231483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905535, 36.288994, 26.221046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072291, -0.195626, -0.978011,
		-0.453694, -0.866803, 0.206917,
		-0.888221, 0.458675, -0.026092,
		31.639069, 36.426598, 26.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670050, 35.694889, 25.960396>,  <32.260822, 36.105522, 26.231483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670050, 35.694889, 25.960396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672335, 36.082829, 25.862940>,  <31.673706, 36.315594, 25.804466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672335, 36.082829, 25.862940>,  <31.670050, 35.694889, 25.960396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672335, 36.082829, 25.862940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121428, -0.242514, -0.962519,
		-0.992584, -0.024086, -0.119152,
		0.005712, 0.969849, -0.243640,
		31.674047, 36.373783, 25.789848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145992, 35.799629, 25.551067>,  <31.670050, 35.694889, 25.960396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145992, 35.799629, 25.551067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367411, 36.118801, 25.455650>,  <31.500261, 36.310303, 25.398399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367411, 36.118801, 25.455650>,  <31.145992, 35.799629, 25.551067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367411, 36.118801, 25.455650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097090, -0.222648, -0.970052,
		-0.827140, 0.560128, -0.045775,
		0.553545, 0.797925, -0.238544,
		31.533474, 36.358177, 25.384087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951935, 36.089039, 24.807991>,  <31.145992, 35.799629, 25.551067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951935, 36.089039, 24.807991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317387, 36.245197, 24.853369>,  <31.536657, 36.338894, 24.880594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317387, 36.245197, 24.853369>,  <30.951935, 36.089039, 24.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317387, 36.245197, 24.853369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200165, -0.189086, -0.961343,
		-0.353857, 0.901019, -0.250898,
		0.913630, 0.390399, 0.113443,
		31.591476, 36.362316, 24.887402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025942, 36.575344, 24.251553>,  <30.951935, 36.089039, 24.807991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025942, 36.575344, 24.251553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396431, 36.473190, 24.362467>,  <31.618725, 36.411900, 24.429014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396431, 36.473190, 24.362467>,  <31.025942, 36.575344, 24.251553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396431, 36.473190, 24.362467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292547, 0.023053, -0.955973,
		0.237748, 0.966565, 0.096064,
		0.926225, -0.255383, 0.277285,
		31.674299, 36.396576, 24.445652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466574, 37.088108, 23.917635>,  <31.025942, 36.575344, 24.251553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466574, 37.088108, 23.917635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650309, 36.746609, 24.015720>,  <31.760550, 36.541710, 24.074572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650309, 36.746609, 24.015720>,  <31.466574, 37.088108, 23.917635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650309, 36.746609, 24.015720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232731, -0.150742, -0.960788,
		0.857232, 0.498393, 0.129452,
		0.459336, -0.853745, 0.245213,
		31.788109, 36.490486, 24.089285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865515, 36.920074, 23.365662>,  <31.466574, 37.088108, 23.917635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865515, 36.920074, 23.365662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882378, 36.549309, 23.514822>,  <31.892496, 36.326851, 23.604319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882378, 36.549309, 23.514822>,  <31.865515, 36.920074, 23.365662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882378, 36.549309, 23.514822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006276, -0.373472, -0.927620,
		0.999091, 0.036766, -0.021562,
		0.042158, -0.926912, 0.372902,
		31.895025, 36.271236, 23.626692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330841, 36.598259, 22.895042>,  <31.865515, 36.920074, 23.365662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330841, 36.598259, 22.895042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160324, 36.296196, 23.094246>,  <32.058014, 36.114960, 23.213768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160324, 36.296196, 23.094246>,  <32.330841, 36.598259, 22.895042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160324, 36.296196, 23.094246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040219, -0.534170, -0.844420,
		0.903691, -0.379999, 0.197340,
		-0.426291, -0.755158, 0.498008,
		32.032436, 36.069649, 23.243649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669518, 36.026318, 22.650719>,  <32.330841, 36.598259, 22.895042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669518, 36.026318, 22.650719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312756, 35.900696, 22.780878>,  <32.098698, 35.825325, 22.858974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312756, 35.900696, 22.780878>,  <32.669518, 36.026318, 22.650719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312756, 35.900696, 22.780878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134178, -0.503369, -0.853590,
		0.431868, -0.804979, 0.406816,
		-0.891901, -0.314052, 0.325399,
		32.045185, 35.806480, 22.878498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632278, 35.429062, 22.354586>,  <32.669518, 36.026318, 22.650719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632278, 35.429062, 22.354586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248055, 35.482296, 22.452242>,  <32.017521, 35.514236, 22.510836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248055, 35.482296, 22.452242>,  <32.632278, 35.429062, 22.354586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248055, 35.482296, 22.452242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278006, -0.442651, -0.852509,
		-0.005383, -0.886763, 0.462192,
		-0.960564, 0.133081, 0.244143,
		31.959885, 35.522221, 22.525484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291862, 34.770573, 22.336302>,  <32.632278, 35.429062, 22.354586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291862, 34.770573, 22.336302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997187, 35.033783, 22.273958>,  <31.820381, 35.191708, 22.236551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997187, 35.033783, 22.273958>,  <32.291862, 34.770573, 22.336302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997187, 35.033783, 22.273958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234204, -0.464491, -0.854047,
		-0.634382, -0.592662, 0.496298,
		-0.736687, 0.658027, -0.155861,
		31.776180, 35.231190, 22.227200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693584, 34.388924, 22.048256>,  <32.291862, 34.770573, 22.336302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693584, 34.388924, 22.048256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575457, 34.765125, 21.981049>,  <31.504580, 34.990849, 21.940725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575457, 34.765125, 21.981049>,  <31.693584, 34.388924, 22.048256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575457, 34.765125, 21.981049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451766, -0.292426, -0.842849,
		-0.841839, -0.173006, 0.511249,
		-0.295320, 0.940509, -0.168018,
		31.486860, 35.047279, 21.930643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031860, 34.272682, 21.769369>,  <31.693584, 34.388924, 22.048256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031860, 34.272682, 21.769369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146975, 34.632778, 21.638680>,  <31.216043, 34.848835, 21.560266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146975, 34.632778, 21.638680>,  <31.031860, 34.272682, 21.769369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146975, 34.632778, 21.638680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407383, -0.193676, -0.892484,
		-0.866728, 0.389946, 0.311005,
		0.287786, 0.900240, -0.326722,
		31.233311, 34.902851, 21.540663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402702, 34.573914, 21.551573>,  <31.031860, 34.272682, 21.769369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402702, 34.573914, 21.551573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720169, 34.759964, 21.394730>,  <30.910648, 34.871593, 21.300623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720169, 34.759964, 21.394730>,  <30.402702, 34.573914, 21.551573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720169, 34.759964, 21.394730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369016, -0.144343, -0.918146,
		-0.483654, 0.873396, 0.057080,
		0.793666, 0.465129, -0.392109,
		30.958269, 34.899502, 21.277098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088171, 34.947994, 20.901585>,  <30.402702, 34.573914, 21.551573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088171, 34.947994, 20.901585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478165, 34.987267, 20.821821>,  <30.712162, 35.010830, 20.773964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478165, 34.987267, 20.821821>,  <30.088171, 34.947994, 20.901585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478165, 34.987267, 20.821821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215839, 0.203987, -0.954884,
		-0.053076, 0.974038, 0.220076,
		0.974985, 0.098182, -0.199409,
		30.770660, 35.016720, 20.761999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229689, 35.678616, 20.585072>,  <30.088171, 34.947994, 20.901585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229689, 35.678616, 20.585072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519054, 35.422718, 20.481224>,  <30.692675, 35.269180, 20.418915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519054, 35.422718, 20.481224>,  <30.229689, 35.678616, 20.585072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519054, 35.422718, 20.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076612, 0.299331, -0.951069,
		0.686149, 0.707908, 0.167529,
		0.723415, -0.639740, -0.259620,
		30.736078, 35.230797, 20.403337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810925, 36.049397, 20.218843>,  <30.229689, 35.678616, 20.585072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810925, 36.049397, 20.218843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835110, 35.667786, 20.101419>,  <30.849621, 35.438820, 20.030966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835110, 35.667786, 20.101419>,  <30.810925, 36.049397, 20.218843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835110, 35.667786, 20.101419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016084, 0.294990, -0.955365,
		0.998041, 0.053042, 0.033181,
		0.060462, -0.954027, -0.293559,
		30.853249, 35.381577, 20.013351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244186, 36.107391, 19.555103>,  <30.810925, 36.049397, 20.218843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244186, 36.107391, 19.555103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041534, 35.763073, 19.574526>,  <30.919943, 35.556480, 19.586180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041534, 35.763073, 19.574526>,  <31.244186, 36.107391, 19.555103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041534, 35.763073, 19.574526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102810, 0.004398, -0.994691,
		0.856012, -0.508932, -0.090727,
		-0.506629, -0.860795, 0.048558,
		30.889545, 35.504833, 19.589094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597761, 35.685638, 19.050858>,  <31.244186, 36.107391, 19.555103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597761, 35.685638, 19.050858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232384, 35.543972, 19.131041>,  <31.013157, 35.458973, 19.179152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232384, 35.543972, 19.131041>,  <31.597761, 35.685638, 19.050858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232384, 35.543972, 19.131041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188745, -0.067707, -0.979689,
		0.360545, -0.932728, -0.005000,
		-0.913446, -0.354166, 0.200459,
		30.958349, 35.437721, 19.191179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511448, 35.016560, 18.690603>,  <31.597761, 35.685638, 19.050858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511448, 35.016560, 18.690603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143566, 35.155140, 18.764484>,  <30.922836, 35.238289, 18.808813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143566, 35.155140, 18.764484>,  <31.511448, 35.016560, 18.690603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143566, 35.155140, 18.764484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263683, -0.196506, -0.944382,
		-0.290886, -0.917256, 0.272081,
		-0.919705, 0.346450, 0.184704,
		30.867655, 35.259075, 18.819895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028637, 34.576225, 18.268324>,  <31.511448, 35.016560, 18.690603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028637, 34.576225, 18.268324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795496, 34.892750, 18.342203>,  <30.655611, 35.082664, 18.386530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795496, 34.892750, 18.342203>,  <31.028637, 34.576225, 18.268324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795496, 34.892750, 18.342203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366295, -0.052966, -0.928990,
		-0.725337, -0.609116, 0.320724,
		-0.582851, 0.791310, 0.184698,
		30.620642, 35.130142, 18.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299345, 34.440220, 17.954706>,  <31.028637, 34.576225, 18.268324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299345, 34.440220, 17.954706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329428, 34.835548, 18.007732>,  <30.347477, 35.072746, 18.039547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329428, 34.835548, 18.007732>,  <30.299345, 34.440220, 17.954706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329428, 34.835548, 18.007732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327583, 0.150049, -0.932831,
		-0.941824, 0.026728, 0.335041,
		0.075206, 0.988317, 0.132565,
		30.351990, 35.132042, 18.047503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849562, 34.613419, 17.567667>,  <30.299345, 34.440220, 17.954706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849562, 34.613419, 17.567667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066727, 34.948410, 17.592548>,  <30.197025, 35.149406, 17.607477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066727, 34.948410, 17.592548>,  <29.849562, 34.613419, 17.567667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066727, 34.948410, 17.592548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, 0.170968, -0.973450,
		-0.825881, 0.519032, 0.220285,
		0.542914, 0.837481, 0.062203,
		30.229601, 35.199654, 17.611210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614105, 34.927029, 16.987318>,  <29.849562, 34.613419, 17.567667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614105, 34.927029, 16.987318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933323, 35.144650, 17.090954>,  <30.124853, 35.275223, 17.153135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933323, 35.144650, 17.090954>,  <29.614105, 34.927029, 16.987318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933323, 35.144650, 17.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057316, 0.359477, -0.931392,
		-0.599866, 0.758143, 0.255696,
		0.798045, 0.544055, 0.259091,
		30.172737, 35.307865, 17.168682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541798, 35.621574, 16.568768>,  <29.614105, 34.927029, 16.987318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541798, 35.621574, 16.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921436, 35.610916, 16.694307>,  <30.149220, 35.604523, 16.769632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921436, 35.610916, 16.694307>,  <29.541798, 35.621574, 16.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921436, 35.610916, 16.694307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307426, 0.295284, -0.904597,
		-0.068572, 0.955038, 0.288445,
		0.949098, -0.026645, 0.313852,
		30.206165, 35.602924, 16.788464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792145, 36.322624, 16.592882>,  <29.541798, 35.621574, 16.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792145, 36.322624, 16.592882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079454, 36.050472, 16.534693>,  <30.251841, 35.887180, 16.499779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079454, 36.050472, 16.534693>,  <29.792145, 36.322624, 16.592882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079454, 36.050472, 16.534693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214068, 0.415055, -0.884254,
		0.662011, 0.603995, 0.443771,
		0.718274, -0.680382, -0.145475,
		30.294937, 35.846359, 16.491051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258192, 36.750458, 16.272079>,  <29.792145, 36.322624, 16.592882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258192, 36.750458, 16.272079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388977, 36.380867, 16.192724>,  <30.467447, 36.159111, 16.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388977, 36.380867, 16.192724>,  <30.258192, 36.750458, 16.272079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388977, 36.380867, 16.192724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128529, 0.251455, -0.959297,
		0.936257, 0.288154, 0.200974,
		0.326961, -0.923979, -0.198390,
		30.487066, 36.103672, 16.133207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911188, 36.853203, 15.872398>,  <30.258192, 36.750458, 16.272079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911188, 36.853203, 15.872398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802298, 36.474102, 15.805879>,  <30.736963, 36.246643, 15.765966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802298, 36.474102, 15.805879>,  <30.911188, 36.853203, 15.872398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802298, 36.474102, 15.805879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218724, 0.107355, -0.969864,
		0.937045, -0.300397, 0.178071,
		-0.272227, -0.947754, -0.166300,
		30.720629, 36.189777, 15.755988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467264, 36.637432, 15.632423>,  <30.911188, 36.853203, 15.872398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467264, 36.637432, 15.632423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188379, 36.386288, 15.494042>,  <31.021048, 36.235600, 15.411014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188379, 36.386288, 15.494042>,  <31.467264, 36.637432, 15.632423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188379, 36.386288, 15.494042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343317, 0.131198, -0.930011,
		0.629306, -0.767188, 0.124082,
		-0.697214, -0.627862, -0.345952,
		30.979216, 36.197929, 15.390257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847755, 36.397297, 15.071255>,  <31.467264, 36.637432, 15.632423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847755, 36.397297, 15.071255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469034, 36.294651, 14.993575>,  <31.241800, 36.233063, 14.946967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469034, 36.294651, 14.993575>,  <31.847755, 36.397297, 15.071255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469034, 36.294651, 14.993575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153257, 0.171083, -0.973264,
		0.282975, -0.951253, -0.122655,
		-0.946804, -0.256611, -0.194198,
		31.184994, 36.217667, 14.935316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931965, 35.943943, 14.595015>,  <31.847755, 36.397297, 15.071255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931965, 35.943943, 14.595015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574123, 36.117641, 14.552835>,  <31.359419, 36.221859, 14.527526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574123, 36.117641, 14.552835>,  <31.931965, 35.943943, 14.595015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574123, 36.117641, 14.552835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193999, 0.164828, -0.967055,
		-0.402556, -0.885587, -0.231699,
		-0.894602, 0.434243, -0.105451,
		31.305742, 36.247913, 14.521199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624887, 35.627453, 13.973973>,  <31.931965, 35.943943, 14.595015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624887, 35.627453, 13.973973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451138, 35.980125, 14.047689>,  <31.346888, 36.191727, 14.091919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451138, 35.980125, 14.047689>,  <31.624887, 35.627453, 13.973973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451138, 35.980125, 14.047689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046197, 0.182525, -0.982115,
		-0.899548, -0.435118, -0.038553,
		-0.434373, 0.881679, 0.184291,
		31.320826, 36.244629, 14.102977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054905, 35.677479, 13.447626>,  <31.624887, 35.627453, 13.973973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054905, 35.677479, 13.447626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155558, 36.047585, 13.561166>,  <31.215950, 36.269646, 13.629290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155558, 36.047585, 13.561166>,  <31.054905, 35.677479, 13.447626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155558, 36.047585, 13.561166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003459, 0.292425, -0.956282,
		-0.967817, 0.241613, 0.070383,
		0.251632, 0.925262, 0.283850,
		31.231047, 36.325165, 13.646321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776533, 36.074966, 12.983148>,  <31.054905, 35.677479, 13.447626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776533, 36.074966, 12.983148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974234, 36.377991, 13.153708>,  <31.092854, 36.559807, 13.256045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974234, 36.377991, 13.153708>,  <30.776533, 36.074966, 12.983148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974234, 36.377991, 13.153708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029092, 0.504640, -0.862839,
		-0.868833, 0.414053, 0.271457,
		0.494249, 0.757561, 0.426402,
		31.122509, 36.605259, 13.281630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452127, 36.773941, 12.977965>,  <30.776533, 36.074966, 12.983148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452127, 36.773941, 12.977965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842970, 36.854244, 13.006128>,  <31.077477, 36.902428, 13.023026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842970, 36.854244, 13.006128>,  <30.452127, 36.773941, 12.977965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842970, 36.854244, 13.006128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082996, 0.664422, -0.742735,
		-0.195892, 0.719888, 0.665873,
		0.977107, 0.200761, 0.070407,
		31.136103, 36.914474, 13.027250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637714, 37.506744, 12.857754>,  <30.452127, 36.773941, 12.977965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637714, 37.506744, 12.857754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009712, 37.366825, 12.812574>,  <31.232910, 37.282875, 12.785467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009712, 37.366825, 12.812574>,  <30.637714, 37.506744, 12.857754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009712, 37.366825, 12.812574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129506, 0.599379, -0.789920,
		0.344009, 0.719992, 0.602718,
		0.929992, -0.349796, -0.112949,
		31.288710, 37.261887, 12.778689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071335, 38.065536, 12.655218>,  <30.637714, 37.506744, 12.857754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071335, 38.065536, 12.655218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324924, 37.767803, 12.571276>,  <31.477077, 37.589161, 12.520910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324924, 37.767803, 12.571276>,  <31.071335, 38.065536, 12.655218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324924, 37.767803, 12.571276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431049, 0.565402, -0.703219,
		0.642085, 0.355364, 0.679296,
		0.633974, -0.744337, -0.209857,
		31.515116, 37.544502, 12.508319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733963, 38.388138, 12.585700>,  <31.071335, 38.065536, 12.655218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733963, 38.388138, 12.585700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735954, 38.032345, 12.402925>,  <31.737150, 37.818871, 12.293259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735954, 38.032345, 12.402925>,  <31.733963, 38.388138, 12.585700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735954, 38.032345, 12.402925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473301, 0.404619, -0.782476,
		0.880887, -0.212373, 0.423009,
		0.004980, -0.889484, -0.456940,
		31.737448, 37.765499, 12.265842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422714, 38.381779, 12.182121>,  <31.733963, 38.388138, 12.585700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422714, 38.381779, 12.182121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151836, 38.140308, 12.013844>,  <31.989309, 37.995426, 11.912879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151836, 38.140308, 12.013844>,  <32.422714, 38.381779, 12.182121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151836, 38.140308, 12.013844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219999, 0.379473, -0.898666,
		0.702144, -0.701124, -0.124169,
		-0.677195, -0.603676, -0.420691,
		31.948677, 37.959206, 11.887637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682449, 38.033119, 11.578704>,  <32.422714, 38.381779, 12.182121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682449, 38.033119, 11.578704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287373, 38.035831, 11.516187>,  <32.050327, 38.037460, 11.478676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287373, 38.035831, 11.516187>,  <32.682449, 38.033119, 11.578704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287373, 38.035831, 11.516187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147060, 0.381024, -0.912795,
		0.053358, -0.924540, -0.377331,
		-0.987688, 0.006785, -0.156293,
		31.991066, 38.037868, 11.469298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656719, 37.981388, 10.878430>,  <32.682449, 38.033119, 11.578704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656719, 37.981388, 10.878430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276043, 38.075634, 10.957200>,  <32.047638, 38.132183, 11.004462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276043, 38.075634, 10.957200>,  <32.656719, 37.981388, 10.878430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276043, 38.075634, 10.957200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093614, 0.388153, -0.916828,
		-0.292456, -0.890967, -0.347343,
		-0.951686, 0.235616, 0.196924,
		31.990538, 38.146320, 11.016277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226692, 37.812897, 10.325686>,  <32.656719, 37.981388, 10.878430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226692, 37.812897, 10.325686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997200, 38.078205, 10.517898>,  <31.859507, 38.237392, 10.633224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997200, 38.078205, 10.517898>,  <32.226692, 37.812897, 10.325686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997200, 38.078205, 10.517898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177764, 0.471868, -0.863562,
		-0.799524, -0.580869, -0.152817,
		-0.573726, 0.663274, 0.480527,
		31.825083, 38.277187, 10.662056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593824, 37.920803, 9.806042>,  <32.226692, 37.812897, 10.325686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593824, 37.920803, 9.806042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644257, 38.221798, 10.064611>,  <31.674515, 38.402397, 10.219753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644257, 38.221798, 10.064611>,  <31.593824, 37.920803, 9.806042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644257, 38.221798, 10.064611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179458, 0.658174, -0.731165,
		-0.975653, -0.023822, 0.218022,
		0.126079, 0.752489, 0.646424,
		31.682079, 38.447544, 10.258539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982391, 38.404186, 9.764869>,  <31.593824, 37.920803, 9.806042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982391, 38.404186, 9.764869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290285, 38.619102, 9.902753>,  <31.475021, 38.748055, 9.985483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290285, 38.619102, 9.902753>,  <30.982391, 38.404186, 9.764869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290285, 38.619102, 9.902753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276041, 0.767043, -0.579177,
		-0.575595, 0.350659, 0.738735,
		0.769735, 0.537292, 0.344710,
		31.521206, 38.780289, 10.006166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756079, 39.113426, 10.061441>,  <30.982391, 38.404186, 9.764869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756079, 39.113426, 10.061441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128738, 39.164097, 9.925219>,  <31.352335, 39.194500, 9.843485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128738, 39.164097, 9.925219>,  <30.756079, 39.113426, 10.061441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128738, 39.164097, 9.925219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316458, 0.743459, -0.589171,
		0.178554, 0.656673, 0.732733,
		0.931651, 0.126680, -0.340557,
		31.408234, 39.202103, 9.823051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714788, 39.720570, 9.641423>,  <30.756079, 39.113426, 10.061441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714788, 39.720570, 9.641423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024801, 39.486313, 9.546474>,  <31.210810, 39.345760, 9.489504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024801, 39.486313, 9.546474>,  <30.714788, 39.720570, 9.641423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024801, 39.486313, 9.546474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123241, 0.228343, -0.965749,
		0.619785, 0.777742, 0.104798,
		0.775034, -0.585641, -0.237374,
		31.257311, 39.310619, 9.475262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020338, 40.080227, 9.207533>,  <30.714788, 39.720570, 9.641423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020338, 40.080227, 9.207533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155846, 39.709530, 9.142561>,  <31.237150, 39.487110, 9.103578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155846, 39.709530, 9.142561>,  <31.020338, 40.080227, 9.207533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155846, 39.709530, 9.142561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107850, 0.209749, -0.971789,
		0.934668, 0.311695, 0.171005,
		0.338770, -0.926743, -0.162429,
		31.257477, 39.431507, 9.093832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658609, 40.185619, 8.858834>,  <31.020338, 40.080227, 9.207533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658609, 40.185619, 8.858834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510612, 39.819637, 8.794383>,  <31.421814, 39.600048, 8.755713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510612, 39.819637, 8.794383>,  <31.658609, 40.185619, 8.858834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510612, 39.819637, 8.794383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092637, 0.208905, -0.973539,
		0.924405, -0.345276, -0.162052,
		-0.369992, -0.914955, -0.161127,
		31.399614, 39.545151, 8.746045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992426, 40.255684, 9.576811>,  <31.658609, 40.185619, 8.858834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992426, 40.255684, 9.576811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776621, 40.592464, 9.579337>,  <31.647139, 40.794533, 9.580853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776621, 40.592464, 9.579337>,  <31.992426, 40.255684, 9.576811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776621, 40.592464, 9.579337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685050, 0.443308, -0.578087,
		-0.489523, -0.307558, -0.815951,
		-0.539513, 0.841954, 0.006317,
		31.614767, 40.845051, 9.581232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134335, 40.739925, 8.973461>,  <31.992426, 40.255684, 9.576811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134335, 40.739925, 8.973461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521816, 40.827374, 8.926450>,  <32.754307, 40.879841, 8.898243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521816, 40.827374, 8.926450>,  <32.134335, 40.739925, 8.973461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521816, 40.827374, 8.926450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150482, -0.140728, 0.978545,
		0.197387, -0.965610, -0.169223,
		0.968707, 0.218617, -0.117529,
		32.812428, 40.892960, 8.891191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544071, 40.079502, 9.176620>,  <32.134335, 40.739925, 8.973461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544071, 40.079502, 9.176620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713615, 40.433346, 9.254402>,  <32.815342, 40.645653, 9.301071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713615, 40.433346, 9.254402>,  <32.544071, 40.079502, 9.176620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713615, 40.433346, 9.254402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044114, -0.194276, 0.979954,
		0.904651, -0.423946, -0.043323,
		0.423864, 0.884605, 0.194454,
		32.840775, 40.698727, 9.312738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042332, 40.024399, 9.707524>,  <32.544071, 40.079502, 9.176620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042332, 40.024399, 9.707524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856903, 40.378819, 9.705970>,  <32.745647, 40.591469, 9.705037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856903, 40.378819, 9.705970>,  <33.042332, 40.024399, 9.707524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856903, 40.378819, 9.705970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055420, -0.024618, 0.998160,
		0.884324, 0.462935, 0.060518,
		-0.463573, 0.886050, -0.003886,
		32.717831, 40.644634, 9.704804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372581, 40.695148, 10.104399>,  <33.042332, 40.024399, 9.707524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372581, 40.695148, 10.104399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973995, 40.674393, 10.130811>,  <32.734844, 40.661938, 10.146658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973995, 40.674393, 10.130811>,  <33.372581, 40.695148, 10.104399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973995, 40.674393, 10.130811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062079, 0.074386, 0.995295,
		-0.056562, 0.995878, -0.070902,
		-0.996467, -0.051894, 0.066031,
		32.675056, 40.658825, 10.150620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981640, 41.403992, 10.430673>,  <33.372581, 40.695148, 10.104399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981640, 41.403992, 10.430673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822834, 41.042797, 10.496385>,  <32.727551, 40.826080, 10.535811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822834, 41.042797, 10.496385>,  <32.981640, 41.403992, 10.430673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822834, 41.042797, 10.496385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084837, 0.142119, 0.986207,
		-0.913881, 0.405480, 0.020183,
		-0.397019, -0.902988, 0.164280,
		32.703728, 40.771900, 10.545669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470951, 41.508320, 10.882036>,  <32.981640, 41.403992, 10.430673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470951, 41.508320, 10.882036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586674, 41.126659, 10.912769>,  <32.656109, 40.897663, 10.931210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586674, 41.126659, 10.912769>,  <32.470951, 41.508320, 10.882036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586674, 41.126659, 10.912769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063379, 0.060997, 0.996124,
		-0.955135, -0.293059, -0.042826,
		0.289310, -0.954147, 0.076834,
		32.673466, 40.840416, 10.935820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975973, 41.169590, 11.366986>,  <32.470951, 41.508320, 10.882036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975973, 41.169590, 11.366986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318035, 40.962524, 11.377833>,  <32.523273, 40.838287, 11.384341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318035, 40.962524, 11.377833>,  <31.975973, 41.169590, 11.366986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318035, 40.962524, 11.377833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019158, 0.083840, 0.996295,
		-0.518015, -0.851469, 0.081614,
		0.855157, -0.517659, 0.027117,
		32.574581, 40.807228, 11.385968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847038, 40.651638, 11.758212>,  <31.975973, 41.169590, 11.366986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847038, 40.651638, 11.758212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246243, 40.663654, 11.780401>,  <32.485764, 40.670864, 11.793715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246243, 40.663654, 11.780401>,  <31.847038, 40.651638, 11.758212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246243, 40.663654, 11.780401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049278, -0.177772, 0.982837,
		0.039386, -0.983613, -0.175937,
		0.998008, 0.030040, 0.055472,
		32.545647, 40.672665, 11.797043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030090, 39.997425, 12.089203>,  <31.847038, 40.651638, 11.758212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030090, 39.997425, 12.089203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356884, 40.225182, 12.125731>,  <32.552959, 40.361835, 12.147647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356884, 40.225182, 12.125731>,  <32.030090, 39.997425, 12.089203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356884, 40.225182, 12.125731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, -0.419720, 0.886811,
		0.543269, -0.706846, -0.453021,
		0.816980, 0.569389, 0.091319,
		32.601978, 40.396000, 12.153126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518318, 39.567848, 12.455094>,  <32.030090, 39.997425, 12.089203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518318, 39.567848, 12.455094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660965, 39.938366, 12.503767>,  <32.746552, 40.160675, 12.532970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660965, 39.938366, 12.503767>,  <32.518318, 39.567848, 12.455094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660965, 39.938366, 12.503767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128920, -0.177790, 0.975587,
		0.925313, -0.332223, -0.182821,
		0.356616, 0.926293, 0.121681,
		32.767948, 40.216255, 12.540272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173031, 39.462101, 12.751399>,  <32.518318, 39.567848, 12.455094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173031, 39.462101, 12.751399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084152, 39.836838, 12.859444>,  <33.030827, 40.061680, 12.924271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084152, 39.836838, 12.859444>,  <33.173031, 39.462101, 12.751399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084152, 39.836838, 12.859444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128702, -0.246431, 0.960577,
		0.966470, 0.248202, -0.065817,
		-0.222198, 0.936839, 0.270112,
		33.017494, 40.117889, 12.940477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437473, 39.437309, 13.383381>,  <33.173031, 39.462101, 12.751399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437473, 39.437309, 13.383381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244507, 39.787495, 13.394906>,  <33.128727, 39.997608, 13.401821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244507, 39.787495, 13.394906>,  <33.437473, 39.437309, 13.383381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244507, 39.787495, 13.394906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074748, 0.008372, 0.997167,
		0.872747, 0.483204, -0.069478,
		-0.482417, 0.875468, 0.028812,
		33.099781, 40.050137, 13.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832897, 39.802170, 13.818832>,  <33.437473, 39.437309, 13.383381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832897, 39.802170, 13.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474270, 39.978745, 13.804352>,  <33.259094, 40.084690, 13.795664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474270, 39.978745, 13.804352>,  <33.832897, 39.802170, 13.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474270, 39.978745, 13.804352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018868, 0.043596, 0.998871,
		0.442513, 0.896235, -0.030757,
		-0.896564, 0.441433, -0.036201,
		33.205299, 40.111176, 13.793491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967010, 40.392784, 14.149643>,  <33.832897, 39.802170, 13.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967010, 40.392784, 14.149643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579700, 40.294113, 14.165588>,  <33.347313, 40.234909, 14.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579700, 40.294113, 14.165588>,  <33.967010, 40.392784, 14.149643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579700, 40.294113, 14.165588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004496, 0.176710, 0.984253,
		-0.249839, 0.952850, -0.172214,
		-0.968277, -0.246679, 0.039865,
		33.289219, 40.220108, 14.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586754, 40.902027, 14.637771>,  <33.967010, 40.392784, 14.149643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586754, 40.902027, 14.637771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358879, 40.574471, 14.609848>,  <33.222157, 40.377937, 14.593095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358879, 40.574471, 14.609848>,  <33.586754, 40.902027, 14.637771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358879, 40.574471, 14.609848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091812, -0.020994, 0.995555,
		-0.816720, 0.573559, -0.063225,
		-0.569683, -0.818895, -0.069806,
		33.187973, 40.328800, 14.588906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042030, 41.038410, 15.085715>,  <33.586754, 40.902027, 14.637771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042030, 41.038410, 15.085715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023960, 40.640930, 15.044688>,  <33.013119, 40.402443, 15.020072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023960, 40.640930, 15.044688>,  <33.042030, 41.038410, 15.085715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023960, 40.640930, 15.044688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096927, -0.097827, 0.990472,
		-0.994265, 0.054690, -0.091897,
		-0.045179, -0.993700, -0.102567,
		33.010406, 40.342819, 15.013918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462509, 40.762260, 15.516236>,  <33.042030, 41.038410, 15.085715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462509, 40.762260, 15.516236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656013, 40.414112, 15.479509>,  <32.772118, 40.205223, 15.457474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656013, 40.414112, 15.479509>,  <32.462509, 40.762260, 15.516236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656013, 40.414112, 15.479509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067177, -0.141526, 0.987653,
		-0.872618, -0.471619, -0.126934,
		0.483761, -0.870371, -0.091816,
		32.801140, 40.153000, 15.451964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180977, 40.381733, 16.045425>,  <32.462509, 40.762260, 15.516236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180977, 40.381733, 16.045425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541405, 40.233288, 15.955677>,  <32.757664, 40.144222, 15.901828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541405, 40.233288, 15.955677>,  <32.180977, 40.381733, 16.045425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541405, 40.233288, 15.955677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164294, -0.186690, 0.968584,
		-0.401343, -0.909627, -0.107249,
		0.901072, -0.371114, -0.224373,
		32.811726, 40.121952, 15.888365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102818, 39.744984, 16.351254>,  <32.180977, 40.381733, 16.045425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102818, 39.744984, 16.351254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493176, 39.821804, 16.309780>,  <32.727390, 39.867897, 16.284897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493176, 39.821804, 16.309780>,  <32.102818, 39.744984, 16.351254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493176, 39.821804, 16.309780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118044, -0.064881, 0.990886,
		0.183571, -0.979238, -0.085987,
		0.975893, 0.192049, -0.103683,
		32.785942, 39.879417, 16.278675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453724, 39.205784, 16.691969>,  <32.102818, 39.744984, 16.351254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453724, 39.205784, 16.691969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681011, 39.534794, 16.682247>,  <32.817383, 39.732201, 16.676414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681011, 39.534794, 16.682247>,  <32.453724, 39.205784, 16.691969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681011, 39.534794, 16.682247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009415, 0.023034, 0.999690,
		0.822826, -0.568268, 0.005344,
		0.568215, 0.822521, -0.024303,
		32.851475, 39.781551, 16.674955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925148, 39.193199, 17.263050>,  <32.453724, 39.205784, 16.691969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925148, 39.193199, 17.263050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951351, 39.582680, 17.175776>,  <32.967072, 39.816368, 17.123411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951351, 39.582680, 17.175776>,  <32.925148, 39.193199, 17.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951351, 39.582680, 17.175776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185706, 0.202941, 0.961420,
		0.980419, -0.103500, -0.167528,
		0.065509, 0.973706, -0.218188,
		32.971004, 39.874790, 17.110319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337051, 39.405506, 17.789566>,  <32.925148, 39.193199, 17.263050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337051, 39.405506, 17.789566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205280, 39.750221, 17.635271>,  <33.126217, 39.957050, 17.542694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205280, 39.750221, 17.635271>,  <33.337051, 39.405506, 17.789566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205280, 39.750221, 17.635271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002519, 0.409345, 0.912376,
		0.944177, 0.299592, -0.137021,
		-0.329430, 0.861789, -0.385740,
		33.106453, 40.008759, 17.519548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590740, 39.908298, 18.198195>,  <33.337051, 39.405506, 17.789566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590740, 39.908298, 18.198195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327660, 40.133991, 17.998564>,  <33.169811, 40.269405, 17.878786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327660, 40.133991, 17.998564>,  <33.590740, 39.908298, 18.198195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327660, 40.133991, 17.998564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142506, 0.557374, 0.817940,
		0.739677, 0.609081, -0.286178,
		-0.657700, 0.564230, -0.499075,
		33.130348, 40.303261, 17.848841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818859, 40.757133, 18.187590>,  <33.590740, 39.908298, 18.198195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818859, 40.757133, 18.187590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425728, 40.693619, 18.149986>,  <33.189850, 40.655510, 18.127424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425728, 40.693619, 18.149986>,  <33.818859, 40.757133, 18.187590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425728, 40.693619, 18.149986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151383, 0.402474, 0.902828,
		-0.105523, 0.901555, -0.419601,
		-0.982827, -0.158790, -0.094009,
		33.130878, 40.645981, 18.121784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572197, 41.223660, 18.567314>,  <33.818859, 40.757133, 18.187590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572197, 41.223660, 18.567314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233814, 41.011375, 18.546541>,  <33.030785, 40.884003, 18.534077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233814, 41.011375, 18.546541>,  <33.572197, 41.223660, 18.567314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233814, 41.011375, 18.546541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227936, 0.271840, 0.934959,
		-0.482077, 0.802774, -0.350934,
		-0.845959, -0.530713, -0.051933,
		32.980026, 40.852161, 18.530962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972183, 41.615398, 18.751799>,  <33.572197, 41.223660, 18.567314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972183, 41.615398, 18.751799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862373, 41.237480, 18.823349>,  <32.796490, 41.010731, 18.866280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862373, 41.237480, 18.823349>,  <32.972183, 41.615398, 18.751799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862373, 41.237480, 18.823349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044986, 0.198439, 0.979080,
		-0.960528, 0.260733, -0.096979,
		-0.274523, -0.944796, 0.178877,
		32.780018, 40.954041, 18.877012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401340, 41.645920, 19.170198>,  <32.972183, 41.615398, 18.751799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401340, 41.645920, 19.170198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540337, 41.276001, 19.232170>,  <32.623734, 41.054050, 19.269354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540337, 41.276001, 19.232170>,  <32.401340, 41.645920, 19.170198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540337, 41.276001, 19.232170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114263, 0.122231, 0.985902,
		-0.930695, -0.360297, -0.063195,
		0.347493, -0.924795, 0.154929,
		32.644585, 40.998562, 19.278648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987633, 41.241737, 19.683287>,  <32.401340, 41.645920, 19.170198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987633, 41.241737, 19.683287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353550, 41.080181, 19.685215>,  <32.573101, 40.983246, 19.686371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353550, 41.080181, 19.685215>,  <31.987633, 41.241737, 19.683287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353550, 41.080181, 19.685215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014115, 0.043889, 0.998937,
		-0.403676, -0.913752, 0.045850,
		0.914793, -0.403894, 0.004820,
		32.627987, 40.959011, 19.686661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986986, 40.863213, 20.376759>,  <31.987633, 41.241737, 19.683287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986986, 40.863213, 20.376759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367641, 40.853722, 20.254236>,  <32.596035, 40.848026, 20.180723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367641, 40.853722, 20.254236>,  <31.986986, 40.863213, 20.376759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367641, 40.853722, 20.254236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306908, 0.118441, 0.944341,
		0.013872, -0.992677, 0.119995,
		0.951638, -0.023728, -0.306303,
		32.653133, 40.846603, 20.162346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342766, 40.222984, 20.690973>,  <31.986986, 40.863213, 20.376759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342766, 40.222984, 20.690973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643871, 40.470203, 20.600315>,  <32.824535, 40.618534, 20.545919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643871, 40.470203, 20.600315>,  <32.342766, 40.222984, 20.690973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643871, 40.470203, 20.600315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349065, -0.082848, 0.933429,
		0.558125, -0.781765, -0.278103,
		0.752762, 0.618046, -0.226647,
		32.869701, 40.655617, 20.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989250, 39.898289, 20.778456>,  <32.342766, 40.222984, 20.690973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989250, 39.898289, 20.778456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030369, 40.293499, 20.824490>,  <33.055038, 40.530624, 20.852110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030369, 40.293499, 20.824490>,  <32.989250, 39.898289, 20.778456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030369, 40.293499, 20.824490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222796, -0.135627, 0.965384,
		0.969431, -0.073595, -0.234069,
		0.102793, 0.988023, 0.115085,
		33.061207, 40.589905, 20.859015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464993, 39.966385, 21.291937>,  <32.989250, 39.898289, 20.778456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464993, 39.966385, 21.291937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326134, 40.341507, 21.292469>,  <33.242817, 40.566582, 21.292788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326134, 40.341507, 21.292469>,  <33.464993, 39.966385, 21.291937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326134, 40.341507, 21.292469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217560, 0.079154, 0.972832,
		0.912225, 0.338008, -0.231508,
		-0.347150, 0.937809, 0.001331,
		33.221989, 40.622849, 21.292868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923698, 40.446911, 21.652542>,  <33.464993, 39.966385, 21.291937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923698, 40.446911, 21.652542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573174, 40.638893, 21.669157>,  <33.362858, 40.754082, 21.679125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573174, 40.638893, 21.669157>,  <33.923698, 40.446911, 21.652542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573174, 40.638893, 21.669157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128826, 0.150388, 0.980198,
		0.464202, 0.864309, -0.193617,
		-0.876311, 0.479952, 0.041535,
		33.310280, 40.782879, 21.681618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094845, 41.061630, 22.038509>,  <33.923698, 40.446911, 21.652542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094845, 41.061630, 22.038509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702255, 40.988949, 22.062794>,  <33.466702, 40.945339, 22.077364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702255, 40.988949, 22.062794>,  <34.094845, 41.061630, 22.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702255, 40.988949, 22.062794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070385, -0.047259, 0.996400,
		-0.178180, 0.982217, 0.059173,
		-0.981477, -0.181703, 0.060713,
		33.407810, 40.934437, 22.081007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880253, 41.248199, 22.786842>,  <34.094845, 41.061630, 22.038509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880253, 41.248199, 22.786842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560280, 41.053818, 22.646015>,  <33.368294, 40.937187, 22.561518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560280, 41.053818, 22.646015>,  <33.880253, 41.248199, 22.786842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560280, 41.053818, 22.646015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306869, -0.172919, 0.935912,
		-0.515689, 0.856708, -0.010800,
		-0.799935, -0.485953, -0.352070,
		33.320301, 40.908031, 22.540394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272938, 41.474266, 23.089291>,  <33.880253, 41.248199, 22.786842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272938, 41.474266, 23.089291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157669, 41.103714, 22.992315>,  <33.088509, 40.881382, 22.934130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157669, 41.103714, 22.992315>,  <33.272938, 41.474266, 23.089291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157669, 41.103714, 22.992315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244388, -0.173645, 0.954003,
		-0.925868, 0.334166, -0.176357,
		-0.288172, -0.926380, -0.242439,
		33.071217, 40.825798, 22.919584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678738, 41.397655, 23.477030>,  <33.272938, 41.474266, 23.089291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678738, 41.397655, 23.477030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761036, 41.022854, 23.364105>,  <32.810413, 40.797974, 23.296350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761036, 41.022854, 23.364105>,  <32.678738, 41.397655, 23.477030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761036, 41.022854, 23.364105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405290, -0.344166, 0.846930,
		-0.890735, -0.059835, -0.450568,
		0.205746, -0.937000, -0.282310,
		32.822762, 40.741753, 23.279411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007568, 40.932789, 23.566313>,  <32.678738, 41.397655, 23.477030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007568, 40.932789, 23.566313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314735, 40.676739, 23.575621>,  <32.499035, 40.523109, 23.581205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314735, 40.676739, 23.575621>,  <32.007568, 40.932789, 23.566313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314735, 40.676739, 23.575621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435580, -0.495218, 0.751684,
		-0.469638, -0.587376, -0.659113,
		0.767926, -0.640116, 0.023276,
		32.545113, 40.484703, 23.582602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700298, 40.257870, 23.539373>,  <32.007568, 40.932789, 23.566313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700298, 40.257870, 23.539373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066128, 40.211704, 23.694414>,  <32.285625, 40.184006, 23.787439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066128, 40.211704, 23.694414>,  <31.700298, 40.257870, 23.539373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066128, 40.211704, 23.694414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382250, -0.559667, 0.735295,
		0.132067, -0.820642, -0.555973,
		0.914573, -0.115412, 0.387604,
		32.340500, 40.177082, 23.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737246, 39.470737, 23.678793>,  <31.700298, 40.257870, 23.539373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737246, 39.470737, 23.678793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988148, 39.690575, 23.899519>,  <32.138687, 39.822479, 24.031954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988148, 39.690575, 23.899519>,  <31.737246, 39.470737, 23.678793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988148, 39.690575, 23.899519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105497, -0.642040, 0.759378,
		0.771636, -0.534538, -0.344742,
		0.627255, 0.549595, 0.551813,
		32.176323, 39.855453, 24.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114861, 38.831814, 23.965958>,  <31.737246, 39.470737, 23.678793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114861, 38.831814, 23.965958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225594, 39.140392, 24.195124>,  <32.292034, 39.325539, 24.332623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225594, 39.140392, 24.195124>,  <32.114861, 38.831814, 23.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225594, 39.140392, 24.195124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233589, -0.524305, 0.818865,
		0.932095, -0.360514, 0.035059,
		0.276831, 0.771449, 0.572914,
		32.308643, 39.371826, 24.366999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499321, 38.554642, 24.520113>,  <32.114861, 38.831814, 23.965958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499321, 38.554642, 24.520113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380405, 38.901108, 24.680801>,  <32.309055, 39.108986, 24.777214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380405, 38.901108, 24.680801>,  <32.499321, 38.554642, 24.520113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380405, 38.901108, 24.680801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195264, -0.467005, 0.862426,
		0.934607, 0.177949, 0.307967,
		-0.297290, 0.866165, 0.401719,
		32.291218, 39.160957, 24.801317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811718, 38.613937, 25.167660>,  <32.499321, 38.554642, 24.520113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811718, 38.613937, 25.167660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505791, 38.869793, 25.198421>,  <32.322235, 39.023304, 25.216879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505791, 38.869793, 25.198421>,  <32.811718, 38.613937, 25.167660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505791, 38.869793, 25.198421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293554, -0.452268, 0.842188,
		0.573474, 0.621548, 0.533672,
		-0.764822, 0.639634, 0.076906,
		32.276344, 39.061684, 25.221493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894855, 38.984653, 25.792664>,  <32.811718, 38.613937, 25.167660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894855, 38.984653, 25.792664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511143, 38.981770, 25.679724>,  <32.280914, 38.980038, 25.611959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511143, 38.981770, 25.679724>,  <32.894855, 38.984653, 25.792664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511143, 38.981770, 25.679724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272649, -0.237282, 0.932395,
		-0.073718, 0.971414, 0.225655,
		-0.959285, -0.007209, -0.282347,
		32.223358, 38.979607, 25.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320480, 38.427223, 25.689039>,  <32.894855, 38.984653, 25.792664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320480, 38.427223, 25.689039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715347, 38.374783, 25.725492>,  <33.952267, 38.343319, 25.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715347, 38.374783, 25.725492>,  <33.320480, 38.427223, 25.689039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715347, 38.374783, 25.725492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103548, 0.091228, -0.990432,
		0.121533, 0.987163, 0.103633,
		0.987172, -0.131101, 0.091131,
		34.011497, 38.335453, 25.752832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650162, 38.922676, 25.298222>,  <33.320480, 38.427223, 25.689039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650162, 38.922676, 25.298222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913857, 38.623249, 25.326647>,  <34.072075, 38.443592, 25.343702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913857, 38.623249, 25.326647>,  <33.650162, 38.922676, 25.298222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913857, 38.623249, 25.326647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103740, -0.003057, -0.994600,
		0.744742, 0.663052, 0.075641,
		0.659240, -0.748567, 0.071062,
		34.111629, 38.398678, 25.347965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322666, 39.092815, 24.958048>,  <33.650162, 38.922676, 25.298222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322666, 39.092815, 24.958048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355797, 38.694611, 24.976364>,  <34.375675, 38.455688, 24.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355797, 38.694611, 24.976364>,  <34.322666, 39.092815, 24.958048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355797, 38.694611, 24.976364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202584, -0.028169, -0.978859,
		0.975756, 0.090354, 0.199342,
		0.082829, -0.995511, 0.045791,
		34.380646, 38.395958, 24.990101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960217, 38.963722, 24.666452>,  <34.322666, 39.092815, 24.958048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960217, 38.963722, 24.666452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732517, 38.637997, 24.621101>,  <34.595898, 38.442562, 24.593891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732517, 38.637997, 24.621101>,  <34.960217, 38.963722, 24.666452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732517, 38.637997, 24.621101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370962, -0.131328, -0.919315,
		0.733719, -0.565377, 0.376836,
		-0.569249, -0.814311, -0.113376,
		34.561741, 38.393703, 24.587088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362724, 38.546276, 24.277758>,  <34.960217, 38.963722, 24.666452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362724, 38.546276, 24.277758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019241, 38.353413, 24.208317>,  <34.813152, 38.237694, 24.166653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019241, 38.353413, 24.208317>,  <35.362724, 38.546276, 24.277758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019241, 38.353413, 24.208317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296194, -0.190534, -0.935930,
		0.418191, -0.855113, 0.306426,
		-0.858711, -0.482160, -0.173600,
		34.761627, 38.208763, 24.156237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526897, 37.894131, 23.957102>,  <35.362724, 38.546276, 24.277758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526897, 37.894131, 23.957102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142666, 37.966969, 23.873064>,  <34.912128, 38.010670, 23.822641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142666, 37.966969, 23.873064>,  <35.526897, 37.894131, 23.957102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142666, 37.966969, 23.873064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183393, -0.152968, -0.971065,
		-0.208961, -0.971310, 0.113543,
		-0.960574, 0.182092, -0.210096,
		34.854492, 38.021595, 23.810036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413521, 37.476231, 23.424126>,  <35.526897, 37.894131, 23.957102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413521, 37.476231, 23.424126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129009, 37.755985, 23.396019>,  <34.958302, 37.923840, 23.379154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129009, 37.755985, 23.396019>,  <35.413521, 37.476231, 23.424126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129009, 37.755985, 23.396019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152955, 0.056432, -0.986621,
		-0.686064, -0.712512, -0.147114,
		-0.711281, 0.699387, -0.070267,
		34.915627, 37.965801, 23.374939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112595, 37.279949, 22.862434>,  <35.413521, 37.476231, 23.424126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112595, 37.279949, 22.862434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989574, 37.657673, 22.909248>,  <34.915764, 37.884308, 22.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989574, 37.657673, 22.909248>,  <35.112595, 37.279949, 22.862434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989574, 37.657673, 22.909248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109236, 0.157221, -0.981503,
		-0.945241, -0.289078, -0.151506,
		-0.307551, 0.944307, 0.117034,
		34.897308, 37.940964, 22.944359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668556, 37.384361, 22.289309>,  <35.112595, 37.279949, 22.862434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668556, 37.384361, 22.289309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757755, 37.748749, 22.428108>,  <34.811275, 37.967381, 22.511389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757755, 37.748749, 22.428108>,  <34.668556, 37.384361, 22.289309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757755, 37.748749, 22.428108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034107, 0.363036, -0.931151,
		-0.974221, 0.195813, 0.112028,
		0.223002, 0.910968, 0.346999,
		34.824657, 38.022038, 22.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212334, 37.824276, 22.014227>,  <34.668556, 37.384361, 22.289309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212334, 37.824276, 22.014227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528259, 38.048382, 22.114061>,  <34.717815, 38.182846, 22.173962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528259, 38.048382, 22.114061>,  <34.212334, 37.824276, 22.014227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528259, 38.048382, 22.114061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010210, 0.418881, -0.907984,
		-0.613258, 0.714593, 0.336559,
		0.789817, 0.560264, 0.249586,
		34.765205, 38.216461, 22.188938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092278, 38.522095, 21.787994>,  <34.212334, 37.824276, 22.014227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092278, 38.522095, 21.787994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489773, 38.488575, 21.817562>,  <34.728271, 38.468464, 21.835302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489773, 38.488575, 21.817562>,  <34.092278, 38.522095, 21.787994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489773, 38.488575, 21.817562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101350, 0.397311, -0.912070,
		0.047064, 0.913850, 0.403316,
		0.993737, -0.083802, 0.073919,
		34.787895, 38.463436, 21.839737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421124, 39.175884, 21.660013>,  <34.092278, 38.522095, 21.787994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421124, 39.175884, 21.660013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713367, 38.920410, 21.563442>,  <34.888714, 38.767124, 21.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713367, 38.920410, 21.563442>,  <34.421124, 39.175884, 21.660013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713367, 38.920410, 21.563442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097980, 0.447998, -0.888649,
		0.675724, 0.625604, 0.389892,
		0.730614, -0.638684, -0.241426,
		34.932552, 38.728806, 21.491014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918083, 39.560070, 21.402901>,  <34.421124, 39.175884, 21.660013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918083, 39.560070, 21.402901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025036, 39.198055, 21.270590>,  <35.089207, 38.980846, 21.191204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025036, 39.198055, 21.270590>,  <34.918083, 39.560070, 21.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025036, 39.198055, 21.270590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189911, 0.386035, -0.902724,
		0.944692, 0.178551, 0.275095,
		0.267379, -0.905039, -0.330775,
		35.105251, 38.926544, 21.171358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467724, 39.686825, 21.079773>,  <34.918083, 39.560070, 21.402901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467724, 39.686825, 21.079773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326557, 39.340923, 20.936859>,  <35.241856, 39.133385, 20.851110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326557, 39.340923, 20.936859>,  <35.467724, 39.686825, 21.079773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326557, 39.340923, 20.936859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242481, 0.284281, -0.927570,
		0.903688, -0.413990, 0.109359,
		-0.352917, -0.864752, -0.357286,
		35.220680, 39.081497, 20.829674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942802, 39.442093, 20.479555>,  <35.467724, 39.686825, 21.079773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942802, 39.442093, 20.479555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609554, 39.229790, 20.417322>,  <35.409607, 39.102406, 20.379982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609554, 39.229790, 20.417322>,  <35.942802, 39.442093, 20.479555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609554, 39.229790, 20.417322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087425, 0.151388, -0.984601,
		0.546142, -0.833891, -0.079722,
		-0.833118, -0.530762, -0.155583,
		35.359619, 39.070560, 20.370647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156780, 38.919594, 19.980434>,  <35.942802, 39.442093, 20.479555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156780, 38.919594, 19.980434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758030, 38.946438, 19.963810>,  <35.518780, 38.962543, 19.953836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758030, 38.946438, 19.963810>,  <36.156780, 38.919594, 19.980434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758030, 38.946438, 19.963810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049454, 0.120604, -0.991468,
		-0.061530, -0.990429, -0.123547,
		-0.996879, 0.067115, -0.041560,
		35.458965, 38.966572, 19.951342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854763, 38.446243, 19.509495>,  <36.156780, 38.919594, 19.980434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854763, 38.446243, 19.509495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571144, 38.727192, 19.534573>,  <35.400974, 38.895760, 19.549620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571144, 38.727192, 19.534573>,  <35.854763, 38.446243, 19.509495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571144, 38.727192, 19.534573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005571, 0.094487, -0.995510,
		-0.705141, -0.705512, -0.070908,
		-0.709045, 0.702371, 0.062696,
		35.358429, 38.937904, 19.553381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652946, 38.465389, 18.882652>,  <35.854763, 38.446243, 19.509495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652946, 38.465389, 18.882652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458797, 38.779282, 19.036848>,  <35.342308, 38.967617, 19.129366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458797, 38.779282, 19.036848>,  <35.652946, 38.465389, 18.882652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458797, 38.779282, 19.036848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218702, 0.317917, -0.922550,
		-0.846510, -0.532091, 0.017313,
		-0.485376, 0.784734, 0.385490,
		35.313183, 39.014702, 19.152494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914345, 38.515083, 18.553162>,  <35.652946, 38.465389, 18.882652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914345, 38.515083, 18.553162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057804, 38.868542, 18.673515>,  <35.143879, 39.080616, 18.745728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057804, 38.868542, 18.673515>,  <34.914345, 38.515083, 18.553162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057804, 38.868542, 18.673515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059617, 0.343354, -0.937312,
		-0.931566, 0.318230, 0.175825,
		0.358651, 0.883650, 0.300885,
		35.165398, 39.133636, 18.763781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631256, 38.983452, 18.086962>,  <34.914345, 38.515083, 18.553162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631256, 38.983452, 18.086962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896606, 39.237213, 18.245691>,  <35.055817, 39.389469, 18.340929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896606, 39.237213, 18.245691>,  <34.631256, 38.983452, 18.086962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896606, 39.237213, 18.245691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110890, 0.441109, -0.890576,
		-0.740026, 0.634789, 0.222271,
		0.663374, 0.634401, 0.396824,
		35.095619, 39.427532, 18.364738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430210, 39.626404, 17.941374>,  <34.631256, 38.983452, 18.086962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430210, 39.626404, 17.941374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828930, 39.645737, 17.966860>,  <35.068161, 39.657337, 17.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828930, 39.645737, 17.966860>,  <34.430210, 39.626404, 17.941374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828930, 39.645737, 17.966860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060925, 0.057161, -0.996504,
		-0.051801, 0.997194, 0.054034,
		0.996797, 0.048328, 0.063715,
		35.127968, 39.660236, 17.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646233, 40.198826, 17.521032>,  <34.430210, 39.626404, 17.941374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646233, 40.198826, 17.521032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960171, 39.956669, 17.573977>,  <35.148533, 39.811375, 17.605743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960171, 39.956669, 17.573977>,  <34.646233, 40.198826, 17.521032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960171, 39.956669, 17.573977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113410, -0.069664, -0.991103,
		0.609231, 0.792870, 0.013983,
		0.784842, -0.605396, 0.132361,
		35.195621, 39.775051, 17.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197353, 40.415813, 16.992096>,  <34.646233, 40.198826, 17.521032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197353, 40.415813, 16.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276382, 40.037811, 17.096344>,  <35.323799, 39.811008, 17.158894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276382, 40.037811, 17.096344>,  <35.197353, 40.415813, 16.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276382, 40.037811, 17.096344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070090, -0.251562, -0.965300,
		0.977780, 0.208982, 0.016535,
		0.197570, -0.945010, 0.260620,
		35.335655, 39.754307, 17.174530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817749, 40.327534, 16.598476>,  <35.197353, 40.415813, 16.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817749, 40.327534, 16.598476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686569, 39.960270, 16.687412>,  <35.607861, 39.739914, 16.740774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686569, 39.960270, 16.687412>,  <35.817749, 40.327534, 16.598476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686569, 39.960270, 16.687412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082419, -0.262265, -0.961470,
		0.941091, -0.296993, 0.161685,
		-0.327954, -0.918157, 0.222338,
		35.588184, 39.684822, 16.754114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316002, 39.865013, 16.321167>,  <35.817749, 40.327534, 16.598476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316002, 39.865013, 16.321167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954899, 39.701572, 16.374950>,  <35.738239, 39.603508, 16.407221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954899, 39.701572, 16.374950>,  <36.316002, 39.865013, 16.321167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954899, 39.701572, 16.374950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097868, -0.109282, -0.989181,
		0.418877, -0.906146, 0.058666,
		-0.902753, -0.408604, 0.134459,
		35.684074, 39.578991, 16.415289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306599, 39.301277, 15.899777>,  <36.316002, 39.865013, 16.321167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306599, 39.301277, 15.899777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922779, 39.399853, 15.954245>,  <35.692490, 39.458996, 15.986925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922779, 39.399853, 15.954245>,  <36.306599, 39.301277, 15.899777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922779, 39.399853, 15.954245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169951, -0.121373, -0.977950,
		-0.224479, -0.961528, 0.158346,
		-0.959545, 0.246440, 0.136167,
		35.634914, 39.473785, 15.995095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948658, 38.732407, 15.769716>,  <36.306599, 39.301277, 15.899777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948658, 38.732407, 15.769716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722210, 39.053814, 15.696109>,  <35.586342, 39.246658, 15.651944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722210, 39.053814, 15.696109>,  <35.948658, 38.732407, 15.769716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722210, 39.053814, 15.696109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054977, -0.185936, -0.981022,
		-0.822487, -0.565494, 0.061088,
		-0.566121, 0.803520, -0.184019,
		35.552372, 39.294868, 15.640903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498291, 38.473991, 15.313933>,  <35.948658, 38.732407, 15.769716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498291, 38.473991, 15.313933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442924, 38.868088, 15.273634>,  <35.409706, 39.104546, 15.249454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442924, 38.868088, 15.273634>,  <35.498291, 38.473991, 15.313933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442924, 38.868088, 15.273634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030244, -0.105885, -0.993918,
		-0.989912, -0.134527, 0.044453,
		-0.138416, 0.985237, -0.100748,
		35.401402, 39.163658, 15.243409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027767, 38.481110, 14.851051>,  <35.498291, 38.473991, 15.313933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027767, 38.481110, 14.851051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164284, 38.856548, 14.830842>,  <35.246193, 39.081814, 14.818716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164284, 38.856548, 14.830842>,  <35.027767, 38.481110, 14.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164284, 38.856548, 14.830842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029977, -0.064592, -0.997461,
		-0.939480, 0.338910, -0.050181,
		0.341291, 0.938599, -0.050524,
		35.266670, 39.138126, 14.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635105, 38.769733, 14.361261>,  <35.027767, 38.481110, 14.851051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635105, 38.769733, 14.361261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962185, 38.999859, 14.369186>,  <35.158432, 39.137932, 14.373941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962185, 38.999859, 14.369186>,  <34.635105, 38.769733, 14.361261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962185, 38.999859, 14.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017356, 0.009765, -0.999802,
		-0.575390, 0.817876, -0.002000,
		0.817695, 0.575311, 0.019813,
		35.207493, 39.172451, 14.375131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481472, 39.261246, 13.870136>,  <34.635105, 38.769733, 14.361261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481472, 39.261246, 13.870136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879322, 39.248734, 13.909605>,  <35.118034, 39.241226, 13.933287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879322, 39.248734, 13.909605>,  <34.481472, 39.261246, 13.870136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879322, 39.248734, 13.909605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087990, -0.246577, -0.965120,
		0.054520, 0.968618, -0.242500,
		0.994628, -0.031281, 0.098672,
		35.177711, 39.239349, 13.939207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861744, 39.806740, 13.372952>,  <34.481472, 39.261246, 13.870136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861744, 39.806740, 13.372952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125210, 39.525455, 13.480031>,  <35.283291, 39.356686, 13.544279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125210, 39.525455, 13.480031>,  <34.861744, 39.806740, 13.372952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125210, 39.525455, 13.480031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355937, -0.022261, -0.934245,
		0.662927, 0.710637, 0.235635,
		0.658663, -0.703207, 0.267699,
		35.322807, 39.314495, 13.560341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520504, 40.024319, 12.988657>,  <34.861744, 39.806740, 13.372952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520504, 40.024319, 12.988657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530693, 39.635647, 13.082633>,  <35.536804, 39.402443, 13.139018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530693, 39.635647, 13.082633>,  <35.520504, 40.024319, 12.988657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530693, 39.635647, 13.082633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324068, -0.214299, -0.921443,
		0.945691, 0.099604, 0.309431,
		0.025469, -0.971676, 0.234939,
		35.538334, 39.344143, 13.153114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088642, 39.790237, 12.666147>,  <35.520504, 40.024319, 12.988657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088642, 39.790237, 12.666147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893127, 39.449223, 12.740187>,  <35.775818, 39.244614, 12.784610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893127, 39.449223, 12.740187>,  <36.088642, 39.790237, 12.666147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893127, 39.449223, 12.740187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104143, -0.267674, -0.957865,
		0.866163, -0.448918, 0.219622,
		-0.488790, -0.852539, 0.185098,
		35.746490, 39.193462, 12.795716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531830, 39.401123, 12.341553>,  <36.088642, 39.790237, 12.666147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531830, 39.401123, 12.341553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199585, 39.185932, 12.399055>,  <36.000237, 39.056816, 12.433556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199585, 39.185932, 12.399055>,  <36.531830, 39.401123, 12.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199585, 39.185932, 12.399055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005349, -0.265853, -0.963998,
		0.556826, -0.799940, 0.223699,
		-0.830612, -0.537976, 0.143755,
		35.950401, 39.024540, 12.442182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720680, 38.662624, 12.234829>,  <36.531830, 39.401123, 12.341553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720680, 38.662624, 12.234829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329796, 38.705891, 12.161763>,  <36.095264, 38.731850, 12.117924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329796, 38.705891, 12.161763>,  <36.720680, 38.662624, 12.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329796, 38.705891, 12.161763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118837, -0.434262, -0.892913,
		-0.175910, -0.894268, 0.411509,
		-0.977207, 0.108170, -0.182663,
		36.036633, 38.738342, 12.106964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576675, 38.158344, 11.781774>,  <36.720680, 38.662624, 12.234829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576675, 38.158344, 11.781774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249882, 38.383305, 11.730776>,  <36.053806, 38.518280, 11.700177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249882, 38.383305, 11.730776>,  <36.576675, 38.158344, 11.781774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249882, 38.383305, 11.730776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022381, -0.251846, -0.967508,
		-0.576232, -0.787581, 0.218341,
		-0.816980, 0.562396, -0.127495,
		36.004787, 38.552025, 11.692528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211296, 37.827759, 11.286242>,  <36.576675, 38.158344, 11.781774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211296, 37.827759, 11.286242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032951, 38.185760, 11.280873>,  <35.925945, 38.400562, 11.277652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032951, 38.185760, 11.280873>,  <36.211296, 37.827759, 11.286242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032951, 38.185760, 11.280873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151755, 0.060802, -0.986546,
		-0.882146, -0.441896, -0.162931,
		-0.445857, 0.895003, -0.013424,
		35.899193, 38.454262, 11.276846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319668, 37.240452, 10.757658>,  <36.211296, 37.827759, 11.286242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319668, 37.240452, 10.757658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483425, 36.878273, 10.712831>,  <36.581680, 36.660965, 10.685936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483425, 36.878273, 10.712831>,  <36.319668, 37.240452, 10.757658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483425, 36.878273, 10.712831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205351, -0.028231, 0.978281,
		-0.888946, -0.423518, 0.174377,
		0.409397, -0.905448, -0.112066,
		36.606243, 36.606640, 10.679212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997772, 36.801983, 11.249329>,  <36.319668, 37.240452, 10.757658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997772, 36.801983, 11.249329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373219, 36.698235, 11.158352>,  <36.598484, 36.635986, 11.103765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373219, 36.698235, 11.158352>,  <35.997772, 36.801983, 11.249329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373219, 36.698235, 11.158352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184600, -0.179329, 0.966315,
		-0.291425, -0.948982, -0.120440,
		0.938613, -0.259375, -0.227443,
		36.654804, 36.620422, 11.090119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134228, 36.439148, 11.781252>,  <35.997772, 36.801983, 11.249329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134228, 36.439148, 11.781252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508503, 36.480171, 11.646217>,  <36.733070, 36.504787, 11.565197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508503, 36.480171, 11.646217>,  <36.134228, 36.439148, 11.781252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508503, 36.480171, 11.646217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352706, -0.247339, 0.902453,
		0.009059, -0.963485, -0.267607,
		0.935691, 0.102562, -0.337586,
		36.789211, 36.510941, 11.544942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594372, 35.776794, 11.907777>,  <36.134228, 36.439148, 11.781252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594372, 35.776794, 11.907777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820629, 36.105179, 11.876587>,  <36.956383, 36.302208, 11.857873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820629, 36.105179, 11.876587>,  <36.594372, 35.776794, 11.907777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820629, 36.105179, 11.876587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348001, -0.151906, 0.925105,
		0.747627, -0.550412, -0.371618,
		0.565640, 0.820958, -0.077975,
		36.990322, 36.351467, 11.853194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261692, 35.547375, 12.108945>,  <36.594372, 35.776794, 11.907777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261692, 35.547375, 12.108945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261139, 35.944950, 12.152915>,  <37.260807, 36.183495, 12.179296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261139, 35.944950, 12.152915>,  <37.261692, 35.547375, 12.108945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261139, 35.944950, 12.152915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257953, -0.105849, 0.960342,
		0.966157, 0.029687, -0.256242,
		-0.001386, 0.993939, 0.109925,
		37.260723, 36.243134, 12.185892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879826, 35.639729, 12.482974>,  <37.261692, 35.547375, 12.108945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879826, 35.639729, 12.482974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678818, 35.980824, 12.539969>,  <37.558212, 36.185482, 12.574166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678818, 35.980824, 12.539969>,  <37.879826, 35.639729, 12.482974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678818, 35.980824, 12.539969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336639, 0.041192, 0.940732,
		0.796333, 0.520706, -0.307766,
		-0.502522, 0.852742, 0.142488,
		37.528061, 36.236645, 12.582716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341980, 36.079815, 12.826442>,  <37.879826, 35.639729, 12.482974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341980, 36.079815, 12.826442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972359, 36.202976, 12.917060>,  <37.750587, 36.276871, 12.971431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972359, 36.202976, 12.917060>,  <38.341980, 36.079815, 12.826442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972359, 36.202976, 12.917060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277118, 0.131348, 0.951816,
		0.263308, 0.942309, -0.206697,
		-0.924053, 0.307900, 0.226546,
		37.695141, 36.295345, 12.985023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496002, 36.572975, 13.391121>,  <38.341980, 36.079815, 12.826442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496002, 36.572975, 13.391121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106087, 36.484730, 13.404444>,  <37.872135, 36.431782, 13.412437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106087, 36.484730, 13.404444>,  <38.496002, 36.572975, 13.391121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106087, 36.484730, 13.404444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030385, 0.016631, 0.999400,
		-0.221039, 0.975219, -0.009509,
		-0.974792, -0.220617, 0.033308,
		37.813648, 36.418545, 13.414436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163746, 37.109444, 13.735074>,  <38.496002, 36.572975, 13.391121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163746, 37.109444, 13.735074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929832, 36.786175, 13.763043>,  <37.789486, 36.592213, 13.779825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929832, 36.786175, 13.763043>,  <38.163746, 37.109444, 13.735074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929832, 36.786175, 13.763043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133550, 0.180939, 0.974385,
		-0.800121, 0.560466, -0.213741,
		-0.584783, -0.808170, 0.069923,
		37.754398, 36.543724, 13.784020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517612, 37.288212, 14.031041>,  <38.163746, 37.109444, 13.735074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517612, 37.288212, 14.031041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504292, 36.892918, 14.090741>,  <37.496300, 36.655739, 14.126561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504292, 36.892918, 14.090741>,  <37.517612, 37.288212, 14.031041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504292, 36.892918, 14.090741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284840, 0.152526, 0.946362,
		-0.957996, -0.010996, -0.286570,
		-0.033303, -0.988238, 0.149251,
		37.494301, 36.596447, 14.135516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858566, 37.196701, 14.380809>,  <37.517612, 37.288212, 14.031041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858566, 37.196701, 14.380809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092171, 36.881763, 14.459813>,  <37.232334, 36.692799, 14.507215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092171, 36.881763, 14.459813>,  <36.858566, 37.196701, 14.380809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092171, 36.881763, 14.459813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224082, 0.077490, 0.971485,
		-0.780202, -0.611620, -0.131176,
		0.584014, -0.787348, 0.197510,
		37.267376, 36.645557, 14.519066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468418, 36.751507, 14.806021>,  <36.858566, 37.196701, 14.380809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468418, 36.751507, 14.806021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844700, 36.626862, 14.859635>,  <37.070469, 36.552074, 14.891804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844700, 36.626862, 14.859635>,  <36.468418, 36.751507, 14.806021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844700, 36.626862, 14.859635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164359, -0.073049, 0.983692,
		-0.296744, -0.947396, -0.119935,
		0.940706, -0.311618, 0.134036,
		37.126911, 36.533375, 14.899846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444527, 36.265354, 15.286650>,  <36.468418, 36.751507, 14.806021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444527, 36.265354, 15.286650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836441, 36.342373, 15.308336>,  <37.071590, 36.388584, 15.321348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836441, 36.342373, 15.308336>,  <36.444527, 36.265354, 15.286650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836441, 36.342373, 15.308336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049116, -0.031173, 0.998307,
		0.193912, -0.980792, -0.021085,
		0.979789, 0.192548, 0.054217,
		37.130379, 36.400139, 15.324601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675022, 35.751701, 15.658027>,  <36.444527, 36.265354, 15.286650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675022, 35.751701, 15.658027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925552, 36.062298, 15.685647>,  <37.075871, 36.248657, 15.702219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925552, 36.062298, 15.685647>,  <36.675022, 35.751701, 15.658027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925552, 36.062298, 15.685647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100801, -0.007165, 0.994881,
		0.773015, -0.630083, 0.073784,
		0.626329, 0.776495, 0.069052,
		37.113449, 36.295246, 15.706363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208195, 35.589748, 16.127872>,  <36.675022, 35.751701, 15.658027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208195, 35.589748, 16.127872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234406, 35.988888, 16.126757>,  <37.250134, 36.228371, 16.126087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234406, 35.988888, 16.126757>,  <37.208195, 35.589748, 16.127872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234406, 35.988888, 16.126757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133857, -0.006023, 0.990982,
		0.988832, -0.065313, -0.133964,
		0.065530, 0.997847, -0.002787,
		37.254066, 36.288242, 16.125921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789314, 35.711594, 16.489176>,  <37.208195, 35.589748, 16.127872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789314, 35.711594, 16.489176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576454, 36.049976, 16.502865>,  <37.448738, 36.253006, 16.511078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576454, 36.049976, 16.502865>,  <37.789314, 35.711594, 16.489176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576454, 36.049976, 16.502865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194478, 0.082795, 0.977406,
		0.824014, 0.526778, -0.208579,
		-0.532146, 0.845961, 0.034223,
		37.416809, 36.303764, 16.513132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200798, 36.278900, 16.831585>,  <37.789314, 35.711594, 16.489176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200798, 36.278900, 16.831585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810596, 36.355316, 16.875227>,  <37.576477, 36.401165, 16.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810596, 36.355316, 16.875227>,  <38.200798, 36.278900, 16.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810596, 36.355316, 16.875227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155408, 0.247344, 0.956383,
		0.155719, 0.949908, -0.270973,
		-0.975500, 0.191038, 0.109107,
		37.517948, 36.412628, 16.907959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221832, 36.826645, 17.127455>,  <38.200798, 36.278900, 16.831585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221832, 36.826645, 17.127455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835426, 36.746437, 17.192709>,  <37.603584, 36.698315, 17.231861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835426, 36.746437, 17.192709>,  <38.221832, 36.826645, 17.127455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835426, 36.746437, 17.192709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058195, 0.446195, 0.893042,
		-0.251860, 0.872183, -0.419361,
		-0.966012, -0.200517, 0.163135,
		37.545624, 36.686283, 17.241650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827595, 37.494026, 17.474997>,  <38.221832, 36.826645, 17.127455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827595, 37.494026, 17.474997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603237, 37.167641, 17.531006>,  <37.468624, 36.971809, 17.564611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603237, 37.167641, 17.531006>,  <37.827595, 37.494026, 17.474997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603237, 37.167641, 17.531006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240570, 0.322475, 0.915498,
		-0.792163, 0.479812, -0.377170,
		-0.560895, -0.815960, 0.140024,
		37.434967, 36.922852, 17.573013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221813, 37.736462, 17.793745>,  <37.827595, 37.494026, 17.474997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221813, 37.736462, 17.793745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243156, 37.347832, 17.886002>,  <37.255962, 37.114655, 17.941355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243156, 37.347832, 17.886002>,  <37.221813, 37.736462, 17.793745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243156, 37.347832, 17.886002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359353, 0.196815, 0.912211,
		-0.931675, -0.131552, -0.338637,
		0.053354, -0.971575, 0.230641,
		37.259163, 37.056358, 17.955194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628128, 37.619705, 18.263586>,  <37.221813, 37.736462, 17.793745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628128, 37.619705, 18.263586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846294, 37.291611, 18.332569>,  <36.977196, 37.094753, 18.373959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846294, 37.291611, 18.332569>,  <36.628128, 37.619705, 18.263586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846294, 37.291611, 18.332569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266488, 0.025381, 0.963504,
		-0.794674, -0.571467, -0.204739,
		0.545415, -0.820232, 0.172459,
		37.009918, 37.045540, 18.384306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109840, 37.146423, 18.604731>,  <36.628128, 37.619705, 18.263586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109840, 37.146423, 18.604731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474800, 37.035007, 18.724693>,  <36.693775, 36.968159, 18.796671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474800, 37.035007, 18.724693>,  <36.109840, 37.146423, 18.604731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474800, 37.035007, 18.724693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280180, 0.109107, 0.953727,
		-0.298373, -0.954207, 0.021507,
		0.912399, -0.278541, 0.299905,
		36.748520, 36.951447, 18.814665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975639, 36.650314, 19.180883>,  <36.109840, 37.146423, 18.604731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975639, 36.650314, 19.180883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368370, 36.710770, 19.226799>,  <36.604008, 36.747044, 19.254349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368370, 36.710770, 19.226799>,  <35.975639, 36.650314, 19.180883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368370, 36.710770, 19.226799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082998, -0.201989, 0.975864,
		0.170674, -0.967656, -0.185774,
		0.981826, 0.151135, 0.114788,
		36.662918, 36.756111, 19.261236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309147, 36.082275, 19.671520>,  <35.975639, 36.650314, 19.180883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309147, 36.082275, 19.671520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529858, 36.415844, 19.667044>,  <36.662285, 36.615986, 19.664358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529858, 36.415844, 19.667044>,  <36.309147, 36.082275, 19.671520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529858, 36.415844, 19.667044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029795, -0.006298, 0.999536,
		0.833459, -0.551854, -0.028321,
		0.551777, 0.833916, -0.011194,
		36.695389, 36.666019, 19.663685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834217, 35.921970, 20.205050>,  <36.309147, 36.082275, 19.671520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834217, 35.921970, 20.205050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835655, 36.320011, 20.165529>,  <36.836517, 36.558834, 20.141817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835655, 36.320011, 20.165529>,  <36.834217, 35.921970, 20.205050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835655, 36.320011, 20.165529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176570, 0.096615, 0.979535,
		0.984281, -0.020971, -0.175357,
		0.003600, 0.995101, -0.098800,
		36.836735, 36.618542, 20.135889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413406, 36.092781, 20.499857>,  <36.834217, 35.921970, 20.205050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413406, 36.092781, 20.499857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205090, 36.434189, 20.506500>,  <37.080097, 36.639034, 20.510487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205090, 36.434189, 20.506500>,  <37.413406, 36.092781, 20.499857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205090, 36.434189, 20.506500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254632, 0.136742, 0.957321,
		0.814823, 0.502796, -0.288548,
		-0.520794, 0.853521, 0.016608,
		37.048851, 36.690247, 20.511482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881027, 36.543915, 20.658705>,  <37.413406, 36.092781, 20.499857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881027, 36.543915, 20.658705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536888, 36.721359, 20.759117>,  <37.330406, 36.827824, 20.819365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536888, 36.721359, 20.759117>,  <37.881027, 36.543915, 20.658705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536888, 36.721359, 20.759117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367772, 0.199273, 0.908314,
		0.352911, 0.873787, -0.334590,
		-0.860347, 0.443607, 0.251029,
		37.278786, 36.854443, 20.834425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022247, 37.235149, 20.798481>,  <37.881027, 36.543915, 20.658705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022247, 37.235149, 20.798481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675034, 37.150822, 20.978294>,  <37.466705, 37.100227, 21.086182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675034, 37.150822, 20.978294>,  <38.022247, 37.235149, 20.798481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675034, 37.150822, 20.978294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456117, 0.019127, 0.889714,
		-0.196164, 0.977339, 0.079554,
		-0.868030, -0.210816, 0.449533,
		37.414623, 37.087578, 21.113153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982578, 37.658779, 21.408220>,  <38.022247, 37.235149, 20.798481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982578, 37.658779, 21.408220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703041, 37.379646, 21.471012>,  <37.535316, 37.212166, 21.508686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703041, 37.379646, 21.471012>,  <37.982578, 37.658779, 21.408220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703041, 37.379646, 21.471012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351259, -0.143645, 0.925194,
		-0.623083, 0.701707, 0.345506,
		-0.698845, -0.697835, 0.156978,
		37.493389, 37.170296, 21.518105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724140, 37.822075, 22.038403>,  <37.982578, 37.658779, 21.408220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724140, 37.822075, 22.038403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641041, 37.434948, 21.981600>,  <37.591179, 37.202671, 21.947519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641041, 37.434948, 21.981600>,  <37.724140, 37.822075, 22.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641041, 37.434948, 21.981600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316714, -0.203905, 0.926345,
		-0.925490, 0.147475, 0.348884,
		-0.207752, -0.967819, -0.142005,
		37.578716, 37.144604, 21.938999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208710, 37.614647, 22.603523>,  <37.724140, 37.822075, 22.038403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208710, 37.614647, 22.603523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394112, 37.287968, 22.466028>,  <37.505352, 37.091961, 22.383532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394112, 37.287968, 22.466028>,  <37.208710, 37.614647, 22.603523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394112, 37.287968, 22.466028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105325, -0.334397, 0.936528,
		-0.879810, -0.470294, -0.068977,
		0.463509, -0.816702, -0.343739,
		37.533165, 37.042957, 22.362906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098969, 37.225868, 23.141560>,  <37.208710, 37.614647, 22.603523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098969, 37.225868, 23.141560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371269, 37.018707, 22.934349>,  <37.534649, 36.894409, 22.810022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371269, 37.018707, 22.934349>,  <37.098969, 37.225868, 23.141560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371269, 37.018707, 22.934349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285160, -0.464035, 0.838662,
		-0.674728, -0.718643, -0.168208,
		0.680753, -0.517903, -0.518026,
		37.575497, 36.863335, 22.778940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001499, 36.450966, 23.309065>,  <37.098969, 37.225868, 23.141560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001499, 36.450966, 23.309065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369068, 36.533997, 23.174910>,  <37.589611, 36.583813, 23.094416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369068, 36.533997, 23.174910>,  <37.001499, 36.450966, 23.309065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369068, 36.533997, 23.174910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394408, -0.492089, 0.776074,
		-0.003949, -0.845436, -0.534063,
		0.918927, 0.207574, -0.335390,
		37.644745, 36.596268, 23.074293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440899, 35.828621, 23.339428>,  <37.001499, 36.450966, 23.309065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440899, 35.828621, 23.339428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694214, 36.138039, 23.329744>,  <37.846203, 36.323689, 23.323935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694214, 36.138039, 23.329744>,  <37.440899, 35.828621, 23.339428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694214, 36.138039, 23.329744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479813, -0.367885, 0.796517,
		0.607233, -0.516037, -0.604130,
		0.633283, 0.773541, -0.024210,
		37.884197, 36.370102, 23.322481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036060, 35.474552, 23.538515>,  <37.440899, 35.828621, 23.339428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036060, 35.474552, 23.538515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136395, 35.859879, 23.576696>,  <38.196594, 36.091072, 23.599606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136395, 35.859879, 23.576696>,  <38.036060, 35.474552, 23.538515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136395, 35.859879, 23.576696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651514, -0.240926, 0.719363,
		0.715968, -0.118254, -0.688045,
		0.250836, 0.963312, 0.095451,
		38.211647, 36.148872, 23.605331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730827, 35.463326, 23.679325>,  <38.036060, 35.474552, 23.538515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730827, 35.463326, 23.679325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620438, 35.815914, 23.832605>,  <38.554203, 36.027466, 23.924574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620438, 35.815914, 23.832605>,  <38.730827, 35.463326, 23.679325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620438, 35.815914, 23.832605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596009, -0.155838, 0.787710,
		0.754063, 0.445780, -0.482358,
		-0.275975, 0.881473, 0.383201,
		38.537643, 36.080357, 23.947565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376286, 35.865177, 23.985723>,  <38.730827, 35.463326, 23.679325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376286, 35.865177, 23.985723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090961, 36.081875, 24.163576>,  <38.919765, 36.211895, 24.270287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090961, 36.081875, 24.163576>,  <39.376286, 35.865177, 23.985723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090961, 36.081875, 24.163576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442130, -0.144408, 0.885250,
		0.543791, 0.828043, -0.136515,
		-0.713311, 0.541749, 0.444631,
		38.876968, 36.244400, 24.296965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720398, 36.308891, 24.485964>,  <39.376286, 35.865177, 23.985723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720398, 36.308891, 24.485964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335842, 36.297459, 24.595440>,  <39.105106, 36.290600, 24.661125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335842, 36.297459, 24.595440>,  <39.720398, 36.308891, 24.485964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335842, 36.297459, 24.595440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273132, -0.220277, 0.936417,
		0.033521, 0.975018, 0.219580,
		-0.961392, -0.028585, 0.273692,
		39.047424, 36.288883, 24.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591785, 36.822380, 24.977573>,  <39.720398, 36.308891, 24.485964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591785, 36.822380, 24.977573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325733, 36.528404, 25.030424>,  <39.166100, 36.352016, 25.062134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325733, 36.528404, 25.030424>,  <39.591785, 36.822380, 24.977573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325733, 36.528404, 25.030424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378920, -0.179725, 0.907810,
		-0.643441, 0.653880, 0.398025,
		-0.665134, -0.734942, 0.132126,
		39.126194, 36.307922, 25.070063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537239, 36.715588, 25.604116>,  <39.591785, 36.822380, 24.977573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537239, 36.715588, 25.604116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327648, 36.383842, 25.526546>,  <39.201893, 36.184795, 25.480005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327648, 36.383842, 25.526546>,  <39.537239, 36.715588, 25.604116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327648, 36.383842, 25.526546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293026, -0.389317, 0.873252,
		-0.799740, 0.400739, 0.447017,
		-0.523977, -0.829362, -0.193925,
		39.170456, 36.135033, 25.468369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143642, 36.386295, 25.896517>,  <39.537239, 36.715588, 25.604116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143642, 36.386295, 25.896517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005222, 36.061954, 26.085308>,  <39.922173, 35.867348, 26.198584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005222, 36.061954, 26.085308>,  <40.143642, 36.386295, 25.896517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005222, 36.061954, 26.085308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795258, 0.013420, 0.606122,
		-0.497812, 0.585091, 0.640196,
		-0.346046, -0.810856, 0.471979,
		39.901409, 35.818699, 26.226902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024483, 36.446259, 26.725323>,  <40.143642, 36.386295, 25.896517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024483, 36.446259, 26.725323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094395, 36.065834, 26.623396>,  <40.136341, 35.837578, 26.562241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094395, 36.065834, 26.623396>,  <40.024483, 36.446259, 26.725323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094395, 36.065834, 26.623396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781028, -0.023672, 0.624048,
		-0.599541, -0.308088, 0.738670,
		0.174776, -0.951063, -0.254817,
		40.146828, 35.780514, 26.546951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987263, 35.880230, 27.393774>,  <40.024483, 36.446259, 26.725323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987263, 35.880230, 27.393774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226715, 35.790340, 27.086233>,  <40.370388, 35.736404, 26.901709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226715, 35.790340, 27.086233>,  <39.987263, 35.880230, 27.393774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226715, 35.790340, 27.086233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732242, -0.235603, 0.638993,
		-0.324744, -0.945510, 0.023517,
		0.598634, -0.224730, -0.768853,
		40.406307, 35.722923, 26.855577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406982, 35.285015, 27.609743>,  <39.987263, 35.880230, 27.393774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406982, 35.285015, 27.609743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612064, 35.498699, 27.340893>,  <40.735111, 35.626911, 27.179583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612064, 35.498699, 27.340893>,  <40.406982, 35.285015, 27.609743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612064, 35.498699, 27.340893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772033, 0.055649, 0.633141,
		0.375637, -0.843515, -0.383900,
		0.512700, 0.534215, -0.672126,
		40.765873, 35.658962, 27.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313808, 35.335442, 28.435757>,  <40.406982, 35.285015, 27.609743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313808, 35.335442, 28.435757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332989, 35.067921, 28.139000>,  <40.344498, 34.907406, 27.960947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332989, 35.067921, 28.139000>,  <40.313808, 35.335442, 28.435757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332989, 35.067921, 28.139000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806007, 0.412788, -0.424215,
		0.589960, 0.618309, -0.519270,
		0.047947, -0.668805, -0.741890,
		40.347374, 34.867279, 27.916433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547390, 35.937569, 28.489923>,  <40.313808, 35.335442, 28.435757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547390, 35.937569, 28.489923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590897, 35.580372, 28.664616>,  <40.617001, 35.366055, 28.769430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590897, 35.580372, 28.664616>,  <40.547390, 35.937569, 28.489923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590897, 35.580372, 28.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881933, 0.289390, 0.372086,
		-0.458656, 0.344697, 0.819036,
		0.108764, -0.892994, 0.436730,
		40.623528, 35.312473, 28.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696728, 35.977299, 29.219759>,  <40.547390, 35.937569, 28.489923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696728, 35.977299, 29.219759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830582, 35.640327, 29.050842>,  <40.910892, 35.438145, 28.949492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830582, 35.640327, 29.050842>,  <40.696728, 35.977299, 29.219759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830582, 35.640327, 29.050842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893809, 0.141773, 0.425447,
		-0.298541, -0.519817, 0.800415,
		0.334632, -0.842431, -0.422292,
		40.930973, 35.387600, 28.924154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199936, 35.674942, 29.668407>,  <40.696728, 35.977299, 29.219759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199936, 35.674942, 29.668407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279522, 35.496628, 29.319309>,  <41.327274, 35.389637, 29.109850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279522, 35.496628, 29.319309>,  <41.199936, 35.674942, 29.668407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279522, 35.496628, 29.319309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963403, -0.074270, 0.257565,
		-0.179639, -0.892052, 0.414697,
		0.198962, -0.445789, -0.872747,
		41.339211, 35.362892, 29.057486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565170, 35.077129, 29.878660>,  <41.199936, 35.674942, 29.668407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565170, 35.077129, 29.878660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656967, 35.183266, 29.504082>,  <41.712044, 35.246948, 29.279335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656967, 35.183266, 29.504082>,  <41.565170, 35.077129, 29.878660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656967, 35.183266, 29.504082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958194, -0.230499, 0.169509,
		-0.170872, -0.936197, -0.307146,
		0.229491, 0.265342, -0.936444,
		41.725815, 35.262867, 29.223148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006805, 34.670578, 29.544847>,  <41.565170, 35.077129, 29.878660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006805, 34.670578, 29.544847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960304, 34.501667, 29.185255>,  <41.932404, 34.400322, 28.969500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960304, 34.501667, 29.185255>,  <42.006805, 34.670578, 29.544847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960304, 34.501667, 29.185255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289756, 0.851328, -0.437359,
		0.950014, -0.311332, 0.023384,
		-0.116257, -0.422273, -0.898983,
		41.925426, 34.374985, 28.915560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525314, 34.776775, 29.229218>,  <42.006805, 34.670578, 29.544847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525314, 34.776775, 29.229218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231598, 34.765980, 28.957897>,  <42.055370, 34.759502, 28.795105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231598, 34.765980, 28.957897>,  <42.525314, 34.776775, 29.229218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231598, 34.765980, 28.957897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385913, 0.805442, -0.449816,
		0.558472, -0.592060, -0.581011,
		-0.734289, -0.026991, -0.678301,
		42.011311, 34.757881, 28.754408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804714, 34.823875, 28.587374>,  <42.525314, 34.776775, 29.229218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804714, 34.823875, 28.587374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433140, 34.971882, 28.582211>,  <42.210194, 35.060684, 28.579113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433140, 34.971882, 28.582211>,  <42.804714, 34.823875, 28.587374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433140, 34.971882, 28.582211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349464, 0.864770, -0.360622,
		-0.122272, -0.339506, -0.932623,
		-0.928937, 0.370012, -0.012908,
		42.154457, 35.082886, 28.578339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679905, 35.011730, 27.801659>,  <42.804714, 34.823875, 28.587374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679905, 35.011730, 27.801659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525913, 35.207844, 28.114429>,  <42.433517, 35.325512, 28.302094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525913, 35.207844, 28.114429>,  <42.679905, 35.011730, 27.801659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525913, 35.207844, 28.114429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431632, 0.844511, -0.317010,
		-0.815773, 0.215463, -0.536741,
		-0.384979, 0.490283, 0.781930,
		42.410419, 35.354927, 28.349009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263020, 35.614788, 27.601658>,  <42.679905, 35.011730, 27.801659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263020, 35.614788, 27.601658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446255, 35.635639, 27.956608>,  <42.556194, 35.648148, 28.169579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446255, 35.635639, 27.956608>,  <42.263020, 35.614788, 27.601658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446255, 35.635639, 27.956608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450446, 0.847002, -0.282287,
		-0.766324, 0.529028, 0.364523,
		0.458089, 0.052125, 0.887376,
		42.583683, 35.651276, 28.222820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107746, 36.208164, 27.826200>,  <42.263020, 35.614788, 27.601658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107746, 36.208164, 27.826200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441017, 36.119972, 28.029064>,  <42.640980, 36.067059, 28.150782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441017, 36.119972, 28.029064>,  <42.107746, 36.208164, 27.826200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441017, 36.119972, 28.029064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470860, 0.763786, -0.441500,
		-0.290020, 0.606647, 0.740181,
		0.833174, -0.220478, 0.507159,
		42.690971, 36.053829, 28.181211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312511, 36.822800, 28.073168>,  <42.107746, 36.208164, 27.826200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312511, 36.822800, 28.073168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631050, 36.581585, 28.054447>,  <42.822174, 36.436855, 28.043215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631050, 36.581585, 28.054447>,  <42.312511, 36.822800, 28.073168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631050, 36.581585, 28.054447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524645, 0.727181, -0.442669,
		0.300975, 0.327963, 0.895463,
		0.796343, -0.603033, -0.046799,
		42.869953, 36.400677, 28.040407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821030, 37.237011, 28.179873>,  <42.312511, 36.822800, 28.073168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821030, 37.237011, 28.179873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017311, 36.914841, 28.046906>,  <43.135082, 36.721539, 27.967125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017311, 36.914841, 28.046906>,  <42.821030, 37.237011, 28.179873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017311, 36.914841, 28.046906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721243, 0.589525, -0.363688,
		0.488891, -0.061290, 0.870189,
		0.490708, -0.805421, -0.332418,
		43.164524, 36.673214, 27.947180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442730, 37.341793, 28.438046>,  <42.821030, 37.237011, 28.179873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442730, 37.341793, 28.438046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496586, 37.098511, 28.125135>,  <43.528900, 36.952541, 27.937389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496586, 37.098511, 28.125135>,  <43.442730, 37.341793, 28.438046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496586, 37.098511, 28.125135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744661, 0.582937, -0.325060,
		0.653722, -0.538764, 0.531395,
		0.134639, -0.608208, -0.782276,
		43.536976, 36.916050, 27.890453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215084, 37.228878, 28.335604>,  <43.442730, 37.341793, 28.438046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215084, 37.228878, 28.335604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038296, 37.122810, 27.992826>,  <43.932224, 37.059170, 27.787161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038296, 37.122810, 27.992826>,  <44.215084, 37.228878, 28.335604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038296, 37.122810, 27.992826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538259, 0.685818, -0.489827,
		0.717596, -0.677743, -0.160376,
		-0.441966, -0.265174, -0.856942,
		43.905704, 37.043259, 27.735744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692684, 37.017128, 27.784872>,  <44.215084, 37.228878, 28.335604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692684, 37.017128, 27.784872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365353, 37.198452, 27.643536>,  <44.168953, 37.307247, 27.558733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365353, 37.198452, 27.643536>,  <44.692684, 37.017128, 27.784872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365353, 37.198452, 27.643536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574586, 0.659997, -0.483999,
		0.013803, -0.599095, -0.800559,
		-0.818328, 0.453309, -0.353342,
		44.119854, 37.334446, 27.537533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866074, 37.194004, 27.100431>,  <44.692684, 37.017128, 27.784872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866074, 37.194004, 27.100431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570442, 37.459167, 27.148308>,  <44.393063, 37.618263, 27.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570442, 37.459167, 27.148308>,  <44.866074, 37.194004, 27.100431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570442, 37.459167, 27.148308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505295, 0.663072, -0.552280,
		-0.445471, -0.347698, -0.825022,
		-0.739075, 0.662904, 0.119689,
		44.348721, 37.658039, 27.184214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282822, 37.823833, 27.130379>,  <44.866074, 37.194004, 27.100431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282822, 37.823833, 27.130379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109749, 38.114170, 26.916485>,  <45.005905, 38.288372, 26.788149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109749, 38.114170, 26.916485>,  <45.282822, 37.823833, 27.130379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109749, 38.114170, 26.916485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876793, -0.476827, 0.062214,
		-0.209818, 0.495769, 0.842727,
		-0.432679, 0.725844, -0.534733,
		44.979946, 38.331924, 26.756065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693859, 38.316559, 27.447618>,  <45.282822, 37.823833, 27.130379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693859, 38.316559, 27.447618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656116, 38.261761, 27.053192>,  <44.633472, 38.228882, 26.816536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656116, 38.261761, 27.053192>,  <44.693859, 38.316559, 27.447618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656116, 38.261761, 27.053192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838139, -0.523577, 0.152940,
		-0.537233, 0.840893, -0.065415,
		-0.094357, -0.136991, -0.986068,
		44.627808, 38.220665, 26.757372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058376, 38.394394, 27.299976>,  <44.693859, 38.316559, 27.447618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058376, 38.394394, 27.299976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196800, 38.138153, 27.025787>,  <44.279854, 37.984409, 26.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196800, 38.138153, 27.025787>,  <44.058376, 38.394394, 27.299976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196800, 38.138153, 27.025787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758928, -0.620688, 0.196912,
		-0.551606, 0.452079, -0.700968,
		0.346063, -0.640602, -0.685470,
		44.300617, 37.945972, 26.820147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502716, 38.106014, 26.890982>,  <44.058376, 38.394394, 27.299976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502716, 38.106014, 26.890982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822838, 37.866211, 26.887012>,  <44.014912, 37.722328, 26.884630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822838, 37.866211, 26.887012>,  <43.502716, 38.106014, 26.890982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822838, 37.866211, 26.887012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563601, -0.757820, 0.328729,
		-0.204596, -0.257491, -0.944372,
		0.800309, -0.599506, -0.009925,
		44.062931, 37.686359, 26.884035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144997, 37.443523, 26.768522>,  <43.502716, 38.106014, 26.890982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144997, 37.443523, 26.768522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484436, 37.350903, 26.958794>,  <43.688099, 37.295330, 27.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484436, 37.350903, 26.958794>,  <43.144997, 37.443523, 26.768522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484436, 37.350903, 26.958794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446912, -0.794928, 0.410316,
		0.283120, -0.560778, -0.778056,
		0.848595, -0.231554, 0.475678,
		43.739014, 37.281437, 27.101498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396793, 36.751499, 26.556362>,  <43.144997, 37.443523, 26.768522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396793, 36.751499, 26.556362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546268, 36.838268, 26.917095>,  <43.635952, 36.890327, 27.133535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546268, 36.838268, 26.917095>,  <43.396793, 36.751499, 26.556362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546268, 36.838268, 26.917095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337554, -0.873800, 0.350045,
		0.863955, -0.435224, -0.253303,
		0.373684, 0.216920, 0.901835,
		43.658375, 36.903343, 27.187645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681591, 36.118290, 26.876011>,  <43.396793, 36.751499, 26.556362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681591, 36.118290, 26.876011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614491, 36.366459, 27.182457>,  <43.574230, 36.515362, 27.366325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614491, 36.366459, 27.182457>,  <43.681591, 36.118290, 26.876011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614491, 36.366459, 27.182457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353371, -0.763330, 0.540792,
		0.920320, -0.180006, 0.347288,
		-0.167750, 0.620423, 0.766117,
		43.564167, 36.552586, 27.412292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899677, 35.768864, 27.434793>,  <43.681591, 36.118290, 26.876011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899677, 35.768864, 27.434793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656277, 36.038227, 27.602722>,  <43.510235, 36.199844, 27.703480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656277, 36.038227, 27.602722>,  <43.899677, 35.768864, 27.434793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656277, 36.038227, 27.602722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374995, -0.710258, 0.595745,
		0.699358, 0.205083, 0.684718,
		-0.608504, 0.673405, 0.419820,
		43.473724, 36.240250, 27.728668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853153, 35.641327, 28.134142>,  <43.899677, 35.768864, 27.434793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853153, 35.641327, 28.134142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564587, 35.917538, 28.155064>,  <43.391445, 36.083263, 28.167618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564587, 35.917538, 28.155064>,  <43.853153, 35.641327, 28.134142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564587, 35.917538, 28.155064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533448, -0.602297, 0.593862,
		0.441579, 0.400519, 0.802865,
		-0.721416, 0.690524, 0.052306,
		43.348164, 36.124695, 28.170755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734539, 35.733871, 28.814568>,  <43.853153, 35.641327, 28.134142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734539, 35.733871, 28.814568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400177, 35.852592, 28.629887>,  <43.199558, 35.923824, 28.519077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400177, 35.852592, 28.629887>,  <43.734539, 35.733871, 28.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400177, 35.852592, 28.629887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540401, -0.592259, 0.597659,
		-0.096061, 0.749091, 0.655465,
		-0.835906, 0.296802, -0.461702,
		43.149406, 35.941631, 28.491377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209255, 35.977043, 29.291248>,  <43.734539, 35.733871, 28.814568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209255, 35.977043, 29.291248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023365, 35.842804, 28.963491>,  <42.911831, 35.762260, 28.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023365, 35.842804, 28.963491>,  <43.209255, 35.977043, 29.291248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023365, 35.842804, 28.963491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479738, -0.682369, 0.551565,
		-0.744234, 0.649418, 0.156112,
		-0.464723, -0.335601, -0.819393,
		42.883949, 35.742123, 28.717674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573715, 35.968693, 29.501841>,  <43.209255, 35.977043, 29.291248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573715, 35.968693, 29.501841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600853, 35.695965, 29.210493>,  <42.617134, 35.532330, 29.035685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600853, 35.695965, 29.210493>,  <42.573715, 35.968693, 29.501841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600853, 35.695965, 29.210493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709188, -0.546453, 0.445469,
		-0.701748, 0.486327, -0.520611,
		0.067846, -0.681818, -0.728369,
		42.621208, 35.491421, 28.991983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599167, 35.641556, 30.186966>,  <42.573715, 35.968693, 29.501841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599167, 35.641556, 30.186966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416870, 35.421711, 30.467031>,  <42.307491, 35.289806, 30.635071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416870, 35.421711, 30.467031>,  <42.599167, 35.641556, 30.186966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416870, 35.421711, 30.467031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597829, 0.393785, 0.698237,
		-0.659472, 0.736793, 0.149109,
		-0.455739, -0.549609, 0.700166,
		42.280148, 35.256828, 30.677082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274841, 36.151321, 30.862339>,  <42.599167, 35.641556, 30.186966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274841, 36.151321, 30.862339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416870, 35.778755, 30.894297>,  <42.502087, 35.555214, 30.913471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416870, 35.778755, 30.894297>,  <42.274841, 36.151321, 30.862339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416870, 35.778755, 30.894297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715836, 0.325859, 0.617572,
		-0.601253, -0.162090, 0.782446,
		0.355069, -0.931420, 0.079894,
		42.523392, 35.499329, 30.918264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358627, 35.782124, 31.568098>,  <42.274841, 36.151321, 30.862339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358627, 35.782124, 31.568098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641903, 35.598446, 31.353580>,  <42.811867, 35.488239, 31.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641903, 35.598446, 31.353580>,  <42.358627, 35.782124, 31.568098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641903, 35.598446, 31.353580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614601, 0.027116, 0.788371,
		-0.347475, -0.887921, 0.301425,
		0.708185, -0.459195, -0.536296,
		42.854359, 35.460686, 31.192692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654541, 35.261463, 31.898790>,  <42.358627, 35.782124, 31.568098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654541, 35.261463, 31.898790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929771, 35.387035, 31.637102>,  <43.094910, 35.462379, 31.480089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929771, 35.387035, 31.637102>,  <42.654541, 35.261463, 31.898790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929771, 35.387035, 31.637102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691980, -0.012457, 0.721809,
		0.218452, -0.949362, -0.225809,
		0.688071, 0.313936, -0.654219,
		43.136192, 35.481216, 31.440836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308281, 34.773479, 31.682219>,  <42.654541, 35.261463, 31.898790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308281, 34.773479, 31.682219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353687, 35.169514, 31.715330>,  <43.380932, 35.407135, 31.735197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353687, 35.169514, 31.715330>,  <43.308281, 34.773479, 31.682219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353687, 35.169514, 31.715330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618084, -0.135608, 0.774327,
		0.777873, -0.036737, -0.627347,
		0.113520, 0.990081, 0.082780,
		43.387745, 35.466537, 31.740164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937817, 34.966377, 32.006115>,  <43.308281, 34.773479, 31.682219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937817, 34.966377, 32.006115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791172, 35.323254, 32.111629>,  <43.703186, 35.537380, 32.174938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791172, 35.323254, 32.111629>,  <43.937817, 34.966377, 32.006115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791172, 35.323254, 32.111629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716407, 0.089821, 0.691877,
		0.593594, 0.442632, -0.672104,
		-0.366616, 0.892193, 0.263787,
		43.681187, 35.590912, 32.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391712, 35.526150, 32.029346>,  <43.937817, 34.966377, 32.006115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391712, 35.526150, 32.029346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117882, 35.660912, 32.287914>,  <43.953583, 35.741768, 32.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117882, 35.660912, 32.287914>,  <44.391712, 35.526150, 32.029346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117882, 35.660912, 32.287914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717330, 0.153698, 0.679570,
		0.129595, 0.928910, -0.346887,
		-0.684575, 0.336901, 0.646417,
		43.912510, 35.761982, 32.481838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569977, 36.194359, 32.226025>,  <44.391712, 35.526150, 32.029346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569977, 36.194359, 32.226025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365829, 35.993710, 32.505424>,  <44.243343, 35.873318, 32.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365829, 35.993710, 32.505424>,  <44.569977, 36.194359, 32.226025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365829, 35.993710, 32.505424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778067, 0.076581, 0.623496,
		-0.366253, 0.861689, 0.351213,
		-0.510364, -0.501625, 0.698500,
		44.212719, 35.843224, 32.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552860, 36.568531, 32.753624>,  <44.569977, 36.194359, 32.226025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552860, 36.568531, 32.753624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497078, 36.220364, 32.942486>,  <44.463608, 36.011463, 33.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497078, 36.220364, 32.942486>,  <44.552860, 36.568531, 32.753624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497078, 36.220364, 32.942486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824957, 0.161611, 0.541598,
		-0.547720, 0.465037, 0.695517,
		-0.139460, -0.870415, 0.472153,
		44.455238, 35.959240, 33.084133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460125, 36.751526, 33.497211>,  <44.552860, 36.568531, 32.753624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460125, 36.751526, 33.497211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630486, 36.402809, 33.400391>,  <44.732700, 36.193581, 33.342297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630486, 36.402809, 33.400391>,  <44.460125, 36.751526, 33.497211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630486, 36.402809, 33.400391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742052, 0.183503, 0.644737,
		-0.517657, -0.454211, 0.725067,
		0.425899, -0.871790, -0.242056,
		44.758255, 36.141273, 33.327774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569771, 36.201286, 34.063847>,  <44.460125, 36.751526, 33.497211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569771, 36.201286, 34.063847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858032, 36.206566, 33.786575>,  <45.030987, 36.209732, 33.620213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858032, 36.206566, 33.786575>,  <44.569771, 36.201286, 34.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858032, 36.206566, 33.786575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603948, 0.479032, 0.637005,
		0.340457, -0.877698, 0.337245,
		0.720649, 0.013195, -0.693175,
		45.074226, 36.210526, 33.578625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176128, 35.867775, 34.297306>,  <44.569771, 36.201286, 34.063847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176128, 35.867775, 34.297306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229076, 36.164539, 34.034386>,  <45.260845, 36.342598, 33.876633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229076, 36.164539, 34.034386>,  <45.176128, 35.867775, 34.297306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229076, 36.164539, 34.034386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480511, 0.531976, 0.697217,
		0.866941, -0.408136, -0.286075,
		0.132374, 0.741908, -0.657305,
		45.268787, 36.387112, 33.837193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931850, 35.990650, 34.087540>,  <45.176128, 35.867775, 34.297306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931850, 35.990650, 34.087540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692535, 36.311123, 34.092518>,  <45.548946, 36.503407, 34.095505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692535, 36.311123, 34.092518>,  <45.931850, 35.990650, 34.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692535, 36.311123, 34.092518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560290, 0.407195, 0.721295,
		0.572822, 0.438517, -0.692516,
		-0.598289, 0.801183, 0.012447,
		45.513050, 36.551479, 34.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346821, 36.555019, 33.913036>,  <45.931850, 35.990650, 34.087540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346821, 36.555019, 33.913036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041534, 36.636490, 34.158318>,  <45.858364, 36.685371, 34.305489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041534, 36.636490, 34.158318>,  <46.346821, 36.555019, 33.913036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041534, 36.636490, 34.158318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637648, 0.390803, 0.663836,
		-0.104437, 0.897658, -0.428138,
		-0.763215, 0.203672, 0.613205,
		45.812569, 36.697590, 34.342278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371769, 37.311588, 34.039577>,  <46.346821, 36.555019, 33.913036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371769, 37.311588, 34.039577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231415, 37.070049, 34.325863>,  <46.147202, 36.925125, 34.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231415, 37.070049, 34.325863>,  <46.371769, 37.311588, 34.039577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231415, 37.070049, 34.325863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806075, 0.194213, 0.559039,
		-0.476573, 0.773082, 0.418596,
		-0.350886, -0.603843, 0.715718,
		46.126148, 36.888897, 34.540577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236088, 37.668892, 34.811977>,  <46.371769, 37.311588, 34.039577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236088, 37.668892, 34.811977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339417, 37.282513, 34.806087>,  <46.401413, 37.050686, 34.802555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339417, 37.282513, 34.806087>,  <46.236088, 37.668892, 34.811977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339417, 37.282513, 34.806087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700757, 0.176864, 0.691129,
		-0.664990, -0.188850, 0.722582,
		0.258318, -0.965948, -0.014725,
		46.416912, 36.992729, 34.801670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274342, 37.298607, 35.431820>,  <46.236088, 37.668892, 34.811977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274342, 37.298607, 35.431820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551838, 37.151958, 35.183849>,  <46.718334, 37.063969, 35.035065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551838, 37.151958, 35.183849>,  <46.274342, 37.298607, 35.431820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551838, 37.151958, 35.183849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684310, 0.603949, 0.408613,
		0.224598, -0.707695, 0.669869,
		0.693740, -0.366624, -0.619928,
		46.759960, 37.041973, 34.997871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043873, 36.649010, 35.856895>,  <46.274342, 37.298607, 35.431820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043873, 36.649010, 35.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766376, 36.387127, 35.976952>,  <45.599880, 36.229996, 36.048985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766376, 36.387127, 35.976952>,  <46.043873, 36.649010, 35.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766376, 36.387127, 35.976952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642269, -0.373788, 0.669159,
		-0.325913, 0.656993, 0.679809,
		-0.693737, -0.654708, 0.300144,
		45.558254, 36.190716, 36.066994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990993, 36.720104, 36.531963>,  <46.043873, 36.649010, 35.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990993, 36.720104, 36.531963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897823, 36.350254, 36.411423>,  <45.841923, 36.128345, 36.339096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897823, 36.350254, 36.411423>,  <45.990993, 36.720104, 36.531963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897823, 36.350254, 36.411423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739287, -0.369676, 0.562845,
		-0.631825, -0.091690, 0.769669,
		-0.232921, -0.924626, -0.301355,
		45.827946, 36.072865, 36.321014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996517, 36.234192, 36.941696>,  <45.990993, 36.720104, 36.531963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996517, 36.234192, 36.941696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969013, 36.630711, 36.986595>,  <45.952511, 36.868622, 37.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969013, 36.630711, 36.986595>,  <45.996517, 36.234192, 36.941696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969013, 36.630711, 36.986595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661116, 0.038982, -0.749270,
		-0.747126, -0.125729, 0.652683,
		-0.068762, 0.991299, 0.112246,
		45.948383, 36.928101, 37.020267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462555, 36.360687, 37.571720>,  <45.996517, 36.234192, 36.941696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462555, 36.360687, 37.571720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111641, 36.502544, 37.442352>,  <45.901093, 36.587658, 37.364731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111641, 36.502544, 37.442352>,  <46.462555, 36.360687, 37.571720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.111641, 36.502544, 37.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280083, 0.925464, 0.255088,
		0.389779, 0.133200, -0.911224,
		-0.877283, 0.354647, -0.323419,
		45.848457, 36.608940, 37.345325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962063, 35.727383, 37.847496>,  <46.462555, 36.360687, 37.571720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962063, 35.727383, 37.847496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729046, 35.429932, 37.978741>,  <46.589233, 35.251461, 38.057487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729046, 35.429932, 37.978741>,  <46.962063, 35.727383, 37.847496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729046, 35.429932, 37.978741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367688, -0.118908, -0.922316,
		0.724877, -0.657932, -0.204154,
		-0.582546, -0.743630, 0.328108,
		46.554283, 35.206844, 38.077171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119350, 35.050007, 37.389168>,  <46.962063, 35.727383, 37.847496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119350, 35.050007, 37.389168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746887, 35.064770, 37.534267>,  <46.523411, 35.073627, 37.621326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746887, 35.064770, 37.534267>,  <47.119350, 35.050007, 37.389168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.746887, 35.064770, 37.534267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349504, -0.373880, -0.859105,
		0.103916, -0.926742, 0.361040,
		-0.931154, 0.036910, 0.362752,
		46.467541, 35.075844, 37.643093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615776, 34.427631, 37.337025>,  <47.119350, 35.050007, 37.389168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615776, 34.427631, 37.337025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368481, 34.740143, 37.302643>,  <46.220104, 34.927650, 37.282013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368481, 34.740143, 37.302643>,  <46.615776, 34.427631, 37.337025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368481, 34.740143, 37.302643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159808, -0.232016, -0.959495,
		-0.769576, -0.579457, 0.268295,
		-0.618235, 0.781280, -0.085952,
		46.183010, 34.974525, 37.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026966, 34.196949, 37.120834>,  <46.615776, 34.427631, 37.337025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026966, 34.196949, 37.120834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056686, 34.579353, 37.007324>,  <46.074520, 34.808796, 36.939217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056686, 34.579353, 37.007324>,  <46.026966, 34.196949, 37.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056686, 34.579353, 37.007324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078537, -0.278068, -0.957345,
		-0.994138, 0.093420, 0.054421,
		0.074302, 0.956008, -0.283775,
		46.078976, 34.866158, 36.922192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393879, 34.467525, 36.905014>,  <46.026966, 34.196949, 37.120834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393879, 34.467525, 36.905014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702927, 34.651134, 36.729576>,  <45.888355, 34.761299, 36.624313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702927, 34.651134, 36.729576>,  <45.393879, 34.467525, 36.905014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702927, 34.651134, 36.729576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322388, -0.311474, -0.893896,
		-0.546929, 0.832034, -0.092666,
		0.772615, 0.459023, -0.438592,
		45.934711, 34.788841, 36.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127342, 34.825172, 36.342266>,  <45.393879, 34.467525, 36.905014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127342, 34.825172, 36.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514549, 34.794109, 36.246849>,  <45.746876, 34.775471, 36.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514549, 34.794109, 36.246849>,  <45.127342, 34.825172, 36.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514549, 34.794109, 36.246849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249065, -0.183786, -0.950889,
		0.030007, 0.979894, -0.197252,
		0.968022, -0.077662, -0.238542,
		45.804955, 34.770809, 36.175285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355556, 35.300522, 35.775814>,  <45.127342, 34.825172, 36.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355556, 35.300522, 35.775814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611969, 34.993576, 35.781837>,  <45.765816, 34.809406, 35.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611969, 34.993576, 35.781837>,  <45.355556, 35.300522, 35.775814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611969, 34.993576, 35.781837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151063, -0.145374, -0.977776,
		0.752503, 0.624510, -0.209110,
		0.641030, -0.767368, 0.015055,
		45.804279, 34.763367, 35.786354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937168, 35.459034, 35.289982>,  <45.355556, 35.300522, 35.775814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937168, 35.459034, 35.289982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876308, 35.067787, 35.346745>,  <45.839794, 34.833038, 35.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876308, 35.067787, 35.346745>,  <45.937168, 35.459034, 35.289982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876308, 35.067787, 35.346745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040155, -0.149577, -0.987934,
		0.987542, -0.144612, 0.062034,
		-0.152146, -0.978118, 0.141907,
		45.830666, 34.774353, 35.389317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448654, 35.040195, 35.017628>,  <45.937168, 35.459034, 35.289982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448654, 35.040195, 35.017628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111748, 34.824627, 35.012703>,  <45.909603, 34.695286, 35.009750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111748, 34.824627, 35.012703>,  <46.448654, 35.040195, 35.017628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.111748, 34.824627, 35.012703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110360, 0.194736, -0.974627,
		0.527646, -0.819536, -0.223495,
		-0.842265, -0.538923, -0.012307,
		45.859070, 34.662949, 35.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483120, 34.604362, 34.350937>,  <46.448654, 35.040195, 35.017628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483120, 34.604362, 34.350937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099522, 34.676067, 34.438755>,  <45.869362, 34.719090, 34.491444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099522, 34.676067, 34.438755>,  <46.483120, 34.604362, 34.350937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099522, 34.676067, 34.438755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171899, 0.248004, -0.953386,
		-0.225351, -0.952029, -0.207019,
		-0.958993, 0.179260, 0.219541,
		45.811825, 34.729847, 34.504616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804501, 35.060863, 34.021988>,  <46.483120, 34.604362, 34.350937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804501, 35.060863, 34.021988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848221, 35.189125, 34.398335>,  <46.874454, 35.266083, 34.624142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848221, 35.189125, 34.398335>,  <46.804501, 35.060863, 34.021988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848221, 35.189125, 34.398335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707293, -0.690156, 0.153041,
		0.698420, 0.648743, -0.302230,
		0.109302, 0.320652, 0.940870,
		46.881012, 35.285320, 34.680595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.601280, 35.020935, 34.276165>,  <46.804501, 35.060863, 34.021988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.601280, 35.020935, 34.276165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383232, 35.002377, 34.610992>,  <47.252403, 34.991241, 34.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383232, 35.002377, 34.610992>,  <47.601280, 35.020935, 34.276165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383232, 35.002377, 34.610992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494069, -0.824433, 0.276055,
		0.677300, 0.564055, 0.472342,
		-0.545125, -0.046397, 0.837070,
		47.219696, 34.988457, 34.862114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969391, 35.227180, 34.941025>,  <47.601280, 35.020935, 34.276165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969391, 35.227180, 34.941025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697979, 34.933479, 34.932346>,  <47.535130, 34.757259, 34.927139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697979, 34.933479, 34.932346>,  <47.969391, 35.227180, 34.941025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697979, 34.933479, 34.932346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727274, -0.675651, 0.120699,
		-0.103284, 0.066118, 0.992452,
		-0.678532, -0.734250, -0.021698,
		47.494419, 34.713203, 34.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.578388, 33.376579, 16.179987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200085, 33.506454, 16.184378>,  <32.973103, 33.584381, 16.187012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200085, 33.506454, 16.184378>,  <33.578388, 33.376579, 16.179987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200085, 33.506454, 16.184378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020682, -0.093887, 0.995368,
		0.324216, 0.941149, 0.095510,
		-0.945757, 0.324689, 0.010975,
		32.916359, 33.603863, 16.187670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534420, 33.985115, 16.674372>,  <33.578388, 33.376579, 16.179987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534420, 33.985115, 16.674372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159786, 33.846348, 16.654528>,  <32.935005, 33.763088, 16.642622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159786, 33.846348, 16.654528>,  <33.534420, 33.985115, 16.674372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159786, 33.846348, 16.654528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022850, -0.080803, 0.996468,
		-0.349700, 0.934409, 0.067752,
		-0.936583, -0.346917, -0.049608,
		32.878811, 33.742271, 16.639645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128586, 34.408875, 17.053398>,  <33.534420, 33.985115, 16.674372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128586, 34.408875, 17.053398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.928062, 34.062790, 17.049454>,  <32.807747, 33.855141, 17.047087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.928062, 34.062790, 17.049454>,  <33.128586, 34.408875, 17.053398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928062, 34.062790, 17.049454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286092, 0.154988, 0.945584,
		-0.816602, 0.476853, -0.325228,
		-0.501311, -0.865211, -0.009860,
		32.777668, 33.803226, 17.046495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548405, 34.601845, 17.466022>,  <33.128586, 34.408875, 17.053398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548405, 34.601845, 17.466022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570858, 34.203072, 17.444237>,  <32.584328, 33.963806, 17.431166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570858, 34.203072, 17.444237>,  <32.548405, 34.601845, 17.466022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570858, 34.203072, 17.444237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078246, -0.049992, 0.995680,
		-0.995353, -0.060149, 0.075200,
		0.056130, -0.996937, -0.054466,
		32.587696, 33.903992, 17.427896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102757, 34.334442, 17.971670>,  <32.548405, 34.601845, 17.466022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102757, 34.334442, 17.971670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.325611, 34.008419, 17.908072>,  <32.459324, 33.812805, 17.869913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.325611, 34.008419, 17.908072>,  <32.102757, 34.334442, 17.971670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325611, 34.008419, 17.908072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179655, -0.068627, 0.981333,
		-0.810757, -0.575297, 0.108195,
		0.557133, -0.815060, -0.158995,
		32.492752, 33.763901, 17.860373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882250, 33.865444, 18.365101>,  <32.102757, 34.334442, 17.971670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882250, 33.865444, 18.365101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256622, 33.747463, 18.288120>,  <32.481247, 33.676674, 18.241932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256622, 33.747463, 18.288120>,  <31.882250, 33.865444, 18.365101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256622, 33.747463, 18.288120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173146, -0.090493, 0.980730,
		-0.306687, -0.951216, -0.033625,
		0.935929, -0.294955, -0.192452,
		32.537399, 33.658978, 18.230385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996582, 33.342438, 18.899809>,  <31.882250, 33.865444, 18.365101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996582, 33.342438, 18.899809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.368382, 33.428993, 18.780340>,  <32.591461, 33.480927, 18.708658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.368382, 33.428993, 18.780340>,  <31.996582, 33.342438, 18.899809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368382, 33.428993, 18.780340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323071, -0.087043, 0.942363,
		0.177920, -0.972419, -0.150815,
		0.929500, 0.216389, -0.298674,
		32.647232, 33.493912, 18.690739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452713, 32.883945, 19.265980>,  <31.996582, 33.342438, 18.899809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452713, 32.883945, 19.265980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633804, 33.217876, 19.140699>,  <32.742458, 33.418236, 19.065531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633804, 33.217876, 19.140699>,  <32.452713, 32.883945, 19.265980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633804, 33.217876, 19.140699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358192, 0.151390, 0.921292,
		0.816536, -0.529285, -0.230490,
		0.452732, 0.834828, -0.313201,
		32.769623, 33.468327, 19.046740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247578, 32.833508, 19.596807>,  <32.452713, 32.883945, 19.265980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247578, 32.833508, 19.596807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.160366, 33.204781, 19.476185>,  <33.108040, 33.427544, 19.403812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.160366, 33.204781, 19.476185>,  <33.247578, 32.833508, 19.596807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160366, 33.204781, 19.476185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331316, 0.361034, 0.871714,
		0.917983, 0.090152, -0.386239,
		-0.218032, 0.928185, -0.301554,
		33.094955, 33.483234, 19.385719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816528, 33.148159, 19.596157>,  <33.247578, 32.833508, 19.596807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816528, 33.148159, 19.596157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564941, 33.458122, 19.621208>,  <33.413990, 33.644100, 19.636238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564941, 33.458122, 19.621208>,  <33.816528, 33.148159, 19.596157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564941, 33.458122, 19.621208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424222, 0.274585, 0.862924,
		0.651490, 0.569317, -0.501437,
		-0.628965, 0.774907, 0.062627,
		33.376251, 33.690594, 19.639996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254040, 33.704182, 19.660692>,  <33.816528, 33.148159, 19.596157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254040, 33.704182, 19.660692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898243, 33.835522, 19.787804>,  <33.684765, 33.914326, 19.864071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898243, 33.835522, 19.787804>,  <34.254040, 33.704182, 19.660692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898243, 33.835522, 19.787804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397385, 0.212549, 0.892697,
		0.225577, 0.920330, -0.319544,
		-0.889494, 0.328354, 0.317779,
		33.631393, 33.934029, 19.883137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332970, 34.277565, 20.011215>,  <34.254040, 33.704182, 19.660692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332970, 34.277565, 20.011215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974705, 34.162880, 20.147203>,  <33.759747, 34.094070, 20.228796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974705, 34.162880, 20.147203>,  <34.332970, 34.277565, 20.011215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974705, 34.162880, 20.147203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258675, 0.285971, 0.922663,
		-0.361757, 0.914341, -0.181970,
		-0.895667, -0.286708, 0.339969,
		33.706005, 34.076866, 20.249195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062202, 34.853786, 20.314251>,  <34.332970, 34.277565, 20.011215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062202, 34.853786, 20.314251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.941906, 34.509575, 20.478710>,  <33.869728, 34.303047, 20.577387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.941906, 34.509575, 20.478710>,  <34.062202, 34.853786, 20.314251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941906, 34.509575, 20.478710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486773, 0.232223, 0.842095,
		-0.820126, 0.453390, 0.349043,
		-0.300742, -0.860529, 0.411150,
		33.851685, 34.251415, 20.602055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859726, 35.044182, 20.953852>,  <34.062202, 34.853786, 20.314251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859726, 35.044182, 20.953852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.864628, 34.647324, 21.003658>,  <33.867569, 34.409210, 21.033543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.864628, 34.647324, 21.003658>,  <33.859726, 35.044182, 20.953852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864628, 34.647324, 21.003658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331966, 0.121500, 0.935434,
		-0.943212, 0.029868, 0.330846,
		0.012258, -0.992142, 0.124515,
		33.868305, 34.349682, 21.041014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667278, 34.969460, 21.587936>,  <33.859726, 35.044182, 20.953852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667278, 34.969460, 21.587936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856594, 34.624702, 21.515120>,  <33.970184, 34.417850, 21.471430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856594, 34.624702, 21.515120>,  <33.667278, 34.969460, 21.587936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856594, 34.624702, 21.515120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317672, -0.025756, 0.947851,
		-0.821631, -0.506441, 0.261609,
		0.473293, -0.861890, -0.182044,
		33.998581, 34.366135, 21.460506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492733, 34.528389, 22.183620>,  <33.667278, 34.969460, 21.587936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492733, 34.528389, 22.183620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.808384, 34.336430, 22.030270>,  <33.997772, 34.221252, 21.938259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.808384, 34.336430, 22.030270>,  <33.492733, 34.528389, 22.183620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808384, 34.336430, 22.030270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361075, -0.142494, 0.921586,
		-0.496896, -0.865675, 0.060834,
		0.789125, -0.479898, -0.383379,
		34.045120, 34.192459, 21.915257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652771, 34.010078, 22.610315>,  <33.492733, 34.528389, 22.183620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652771, 34.010078, 22.610315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015381, 34.062061, 22.449657>,  <34.232948, 34.093250, 22.353262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015381, 34.062061, 22.449657>,  <33.652771, 34.010078, 22.610315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015381, 34.062061, 22.449657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388378, 0.116114, 0.914156,
		0.165443, -0.984697, 0.054786,
		0.906527, 0.129963, -0.401645,
		34.287338, 34.101048, 22.329165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090565, 33.404560, 22.804440>,  <33.652771, 34.010078, 22.610315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090565, 33.404560, 22.804440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335876, 33.708294, 22.717445>,  <34.483063, 33.890533, 22.665249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335876, 33.708294, 22.717445>,  <34.090565, 33.404560, 22.804440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335876, 33.708294, 22.717445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195694, 0.120691, 0.973210,
		0.765240, -0.639410, -0.074580,
		0.613279, 0.759334, -0.217486,
		34.519859, 33.936092, 22.652199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505676, 33.224724, 23.241674>,  <34.090565, 33.404560, 22.804440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505676, 33.224724, 23.241674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612072, 33.604641, 23.175777>,  <34.675911, 33.832592, 23.136240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612072, 33.604641, 23.175777>,  <34.505676, 33.224724, 23.241674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612072, 33.604641, 23.175777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306643, 0.078654, 0.948570,
		0.913904, -0.302826, -0.270326,
		0.265989, 0.949795, -0.164741,
		34.691868, 33.889580, 23.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162125, 33.157665, 23.522217>,  <34.505676, 33.224724, 23.241674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162125, 33.157665, 23.522217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035103, 33.536209, 23.546074>,  <34.958889, 33.763336, 23.560389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035103, 33.536209, 23.546074>,  <35.162125, 33.157665, 23.522217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035103, 33.536209, 23.546074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233087, 0.016935, 0.972308,
		0.919147, 0.322660, -0.225963,
		-0.317552, 0.946363, 0.059642,
		34.939838, 33.820118, 23.563967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400372, 33.277283, 24.134468>,  <35.162125, 33.157665, 23.522217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400372, 33.277283, 24.134468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190163, 33.608223, 24.055151>,  <35.064037, 33.806786, 24.007561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190163, 33.608223, 24.055151>,  <35.400372, 33.277283, 24.134468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190163, 33.608223, 24.055151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100176, 0.291622, 0.951273,
		0.844863, 0.480049, -0.236134,
		-0.525519, 0.827351, -0.198291,
		35.032505, 33.856430, 23.995663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768021, 33.853283, 24.442822>,  <35.400372, 33.277283, 24.134468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768021, 33.853283, 24.442822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384846, 33.960659, 24.402250>,  <35.154942, 34.025085, 24.377909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384846, 33.960659, 24.402250>,  <35.768021, 33.853283, 24.442822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384846, 33.960659, 24.402250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039062, 0.228177, 0.972836,
		0.284293, 0.935882, -0.208095,
		-0.957941, 0.268441, -0.101426,
		35.097462, 34.041191, 24.371822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441555, 34.176552, 24.823975>,  <35.768021, 33.853283, 24.442822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441555, 34.176552, 24.823975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809586, 34.049786, 24.731873>,  <37.030403, 33.973724, 24.676611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809586, 34.049786, 24.731873>,  <36.441555, 34.176552, 24.823975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809586, 34.049786, 24.731873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310708, -0.232428, -0.921649,
		0.238567, 0.919533, -0.312320,
		0.920080, -0.316915, -0.230256,
		37.085609, 33.954712, 24.662796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633305, 34.497814, 24.277065>,  <36.441555, 34.176552, 24.823975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633305, 34.497814, 24.277065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877674, 34.182434, 24.248444>,  <37.024296, 33.993206, 24.231270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877674, 34.182434, 24.248444>,  <36.633305, 34.497814, 24.277065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877674, 34.182434, 24.248444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245033, -0.102367, -0.964095,
		0.752817, 0.606519, -0.255735,
		0.610921, -0.788451, -0.071554,
		37.060951, 33.945900, 24.226978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041786, 34.520611, 23.620481>,  <36.633305, 34.497814, 24.277065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041786, 34.520611, 23.620481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044834, 34.142048, 23.749636>,  <37.046661, 33.914909, 23.827127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044834, 34.142048, 23.749636>,  <37.041786, 34.520611, 23.620481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044834, 34.142048, 23.749636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022660, -0.322647, -0.946248,
		0.999714, 0.014525, 0.018988,
		0.007618, -0.946408, 0.322884,
		37.047119, 33.858124, 23.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698780, 34.101936, 23.434212>,  <37.041786, 34.520611, 23.620481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698780, 34.101936, 23.434212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385838, 33.857426, 23.481972>,  <37.198071, 33.710720, 23.510628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385838, 33.857426, 23.481972>,  <37.698780, 34.101936, 23.434212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385838, 33.857426, 23.481972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152126, -0.373450, -0.915092,
		0.603961, -0.697768, 0.385163,
		-0.782361, -0.611273, 0.119401,
		37.151131, 33.674046, 23.517792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831020, 33.659801, 22.989174>,  <37.698780, 34.101936, 23.434212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831020, 33.659801, 22.989174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458241, 33.543350, 23.075621>,  <37.234573, 33.473480, 23.127489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458241, 33.543350, 23.075621>,  <37.831020, 33.659801, 22.989174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458241, 33.543350, 23.075621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106394, -0.350231, -0.930601,
		0.346618, -0.890270, 0.295424,
		-0.931952, -0.291132, 0.216116,
		37.178654, 33.456009, 23.140455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802002, 32.997696, 22.743286>,  <37.831020, 33.659801, 22.989174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802002, 32.997696, 22.743286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416668, 33.101761, 22.769491>,  <37.185467, 33.164200, 22.785213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416668, 33.101761, 22.769491>,  <37.802002, 32.997696, 22.743286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416668, 33.101761, 22.769491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106608, -0.147127, -0.983356,
		-0.246199, -0.954288, 0.169469,
		-0.963338, 0.260168, 0.065512,
		37.127666, 33.179810, 22.789145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349068, 32.525417, 22.379230>,  <37.802002, 32.997696, 22.743286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349068, 32.525417, 22.379230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.133682, 32.862373, 22.387560>,  <37.004452, 33.064548, 22.392557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.133682, 32.862373, 22.387560>,  <37.349068, 32.525417, 22.379230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133682, 32.862373, 22.387560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214011, -0.112813, -0.970295,
		-0.815023, -0.526920, 0.241027,
		-0.538459, 0.842395, 0.020821,
		36.972145, 33.115093, 22.393806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716980, 32.327156, 22.007521>,  <37.349068, 32.525417, 22.379230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716980, 32.327156, 22.007521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735611, 32.726673, 22.001326>,  <36.746788, 32.966385, 21.997608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735611, 32.726673, 22.001326>,  <36.716980, 32.327156, 22.007521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735611, 32.726673, 22.001326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245824, -0.003568, -0.969308,
		-0.968195, 0.048953, 0.245362,
		0.046575, 0.998795, -0.015488,
		36.749584, 33.026310, 21.996679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106647, 32.524799, 21.689590>,  <36.716980, 32.327156, 22.007521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106647, 32.524799, 21.689590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351879, 32.839207, 21.657806>,  <36.499016, 33.027851, 21.638735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351879, 32.839207, 21.657806>,  <36.106647, 32.524799, 21.689590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351879, 32.839207, 21.657806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264250, 0.109237, -0.958248,
		-0.744519, 0.608477, 0.274676,
		0.613077, 0.786017, -0.079461,
		36.535801, 33.075012, 21.633968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756664, 33.095486, 21.507320>,  <36.106647, 32.524799, 21.689590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756664, 33.095486, 21.507320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130424, 33.134644, 21.370314>,  <36.354679, 33.158138, 21.288109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130424, 33.134644, 21.370314>,  <35.756664, 33.095486, 21.507320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130424, 33.134644, 21.370314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350861, 0.086549, -0.932419,
		-0.061633, 0.991426, 0.115218,
		0.934397, 0.097893, -0.342519,
		36.410744, 33.164013, 21.267557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588566, 33.339512, 20.783474>,  <35.756664, 33.095486, 21.507320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588566, 33.339512, 20.783474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985733, 33.293697, 20.770889>,  <36.224033, 33.266209, 20.763338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985733, 33.293697, 20.770889>,  <35.588566, 33.339512, 20.783474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985733, 33.293697, 20.770889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039379, -0.067539, -0.996939,
		0.112064, 0.991120, -0.071571,
		0.992921, -0.114539, -0.031461,
		36.283607, 33.259335, 20.761452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774040, 33.804794, 20.298126>,  <35.588566, 33.339512, 20.783474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774040, 33.804794, 20.298126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055473, 33.520596, 20.303322>,  <36.224335, 33.350079, 20.306440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055473, 33.520596, 20.303322>,  <35.774040, 33.804794, 20.298126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055473, 33.520596, 20.303322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004905, -0.013425, -0.999898,
		0.710594, 0.703577, -0.005961,
		0.703585, -0.710492, 0.012991,
		36.266548, 33.307449, 20.307219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228973, 33.995071, 19.875076>,  <35.774040, 33.804794, 20.298126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228973, 33.995071, 19.875076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319496, 33.605850, 19.892794>,  <36.373810, 33.372318, 19.903423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319496, 33.605850, 19.892794>,  <36.228973, 33.995071, 19.875076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319496, 33.605850, 19.892794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099085, -0.068234, -0.992737,
		0.969003, 0.220274, -0.111856,
		0.226306, -0.973049, 0.044294,
		36.387386, 33.313934, 19.906082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776798, 33.908005, 19.405569>,  <36.228973, 33.995071, 19.875076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776798, 33.908005, 19.405569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622990, 33.542156, 19.455549>,  <36.530704, 33.322647, 19.485537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622990, 33.542156, 19.455549>,  <36.776798, 33.908005, 19.405569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622990, 33.542156, 19.455549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162643, -0.066114, -0.984467,
		0.908674, -0.398875, -0.123334,
		-0.384525, -0.914619, 0.124951,
		36.507633, 33.267769, 19.493034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112602, 33.480053, 18.956572>,  <36.776798, 33.908005, 19.405569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112602, 33.480053, 18.956572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781204, 33.274727, 19.046108>,  <36.582367, 33.151531, 19.099831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781204, 33.274727, 19.046108>,  <37.112602, 33.480053, 18.956572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781204, 33.274727, 19.046108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216736, -0.074648, -0.973372,
		0.516353, -0.854949, -0.049408,
		-0.828496, -0.513312, 0.223843,
		36.532654, 33.120735, 19.113260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146126, 32.908115, 18.536146>,  <37.112602, 33.480053, 18.956572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146126, 32.908115, 18.536146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758686, 32.946270, 18.627983>,  <36.526222, 32.969162, 18.683086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758686, 32.946270, 18.627983>,  <37.146126, 32.908115, 18.536146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758686, 32.946270, 18.627983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233653, -0.033663, -0.971737,
		-0.084967, -0.994870, 0.054895,
		-0.968600, 0.095392, 0.229594,
		36.468105, 32.974888, 18.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791351, 32.511288, 18.114655>,  <37.146126, 32.908115, 18.536146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791351, 32.511288, 18.114655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495331, 32.751648, 18.235487>,  <36.317719, 32.895863, 18.307985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495331, 32.751648, 18.235487>,  <36.791351, 32.511288, 18.114655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495331, 32.751648, 18.235487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283720, 0.128299, -0.950285,
		-0.609780, -0.788963, 0.075540,
		-0.740048, 0.600897, 0.302079,
		36.273315, 32.931915, 18.326111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220261, 32.297813, 17.786303>,  <36.791351, 32.511288, 18.114655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220261, 32.297813, 17.786303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123730, 32.671276, 17.892172>,  <36.065811, 32.895351, 17.955694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123730, 32.671276, 17.892172>,  <36.220261, 32.297813, 17.786303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123730, 32.671276, 17.892172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290628, 0.190683, -0.937644,
		-0.925903, -0.303202, 0.225328,
		-0.241330, 0.933653, 0.264673,
		36.051331, 32.951370, 17.971573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.144295, 32.496231, 17.618790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.347683, 32.838425, 17.657988>,  <35.469715, 33.043739, 17.681505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.347683, 32.838425, 17.657988>,  <35.144295, 32.496231, 17.618790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347683, 32.838425, 17.657988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330748, 0.299113, -0.895062,
		-0.795023, 0.422703, 0.435041,
		0.508472, 0.855484, 0.097994,
		35.500225, 33.095070, 17.687386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618050, 32.983746, 17.470131>,  <35.144295, 32.496231, 17.618790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618050, 32.983746, 17.470131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985931, 33.135151, 17.428415>,  <35.206661, 33.225994, 17.403387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985931, 33.135151, 17.428415>,  <34.618050, 32.983746, 17.470131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985931, 33.135151, 17.428415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247331, 0.352262, -0.902629,
		-0.304924, 0.855942, 0.417595,
		0.919700, 0.378517, -0.104288,
		35.261841, 33.248707, 17.397129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576847, 33.694302, 17.106665>,  <34.618050, 32.983746, 17.470131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576847, 33.694302, 17.106665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950191, 33.561501, 17.052099>,  <35.174198, 33.481819, 17.019360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950191, 33.561501, 17.052099>,  <34.576847, 33.694302, 17.106665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950191, 33.561501, 17.052099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096270, 0.134568, -0.986217,
		0.345782, 0.933631, 0.093639,
		0.933363, -0.332001, -0.136411,
		35.230202, 33.461899, 17.011175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948895, 34.171940, 16.695311>,  <34.576847, 33.694302, 17.106665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948895, 34.171940, 16.695311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177200, 33.848789, 16.636583>,  <35.314182, 33.654900, 16.601347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177200, 33.848789, 16.636583>,  <34.948895, 34.171940, 16.695311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177200, 33.848789, 16.636583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152705, 0.071250, -0.985700,
		0.806789, 0.585023, -0.082700,
		0.570765, -0.807881, -0.146820,
		35.348431, 33.606426, 16.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285923, 34.276134, 15.965896>,  <34.948895, 34.171940, 16.695311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285923, 34.276134, 15.965896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383606, 33.895020, 16.038080>,  <35.442215, 33.666351, 16.081390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383606, 33.895020, 16.038080>,  <35.285923, 34.276134, 15.965896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383606, 33.895020, 16.038080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048622, -0.173832, -0.983574,
		0.968504, 0.248969, 0.003876,
		0.244206, -0.952784, 0.180463,
		35.456867, 33.609184, 16.092218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833294, 34.150631, 15.568616>,  <35.285923, 34.276134, 15.965896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833294, 34.150631, 15.568616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649082, 33.804771, 15.648919>,  <35.538555, 33.597256, 15.697102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649082, 33.804771, 15.648919>,  <35.833294, 34.150631, 15.568616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649082, 33.804771, 15.648919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047164, -0.202015, -0.978246,
		0.886392, -0.459976, 0.052254,
		-0.460526, -0.864645, 0.200759,
		35.510925, 33.545380, 15.709146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139393, 33.631409, 15.113171>,  <35.833294, 34.150631, 15.568616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139393, 33.631409, 15.113171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801266, 33.457157, 15.236883>,  <35.598389, 33.352604, 15.311110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801266, 33.457157, 15.236883>,  <36.139393, 33.631409, 15.113171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801266, 33.457157, 15.236883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224220, -0.236172, -0.945488,
		0.484929, -0.868589, 0.101964,
		-0.845322, -0.435632, 0.309282,
		35.547668, 33.326469, 15.329668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156063, 33.042713, 14.784840>,  <36.139393, 33.631409, 15.113171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156063, 33.042713, 14.784840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775169, 33.124622, 14.875457>,  <35.546635, 33.173767, 14.929827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775169, 33.124622, 14.875457>,  <36.156063, 33.042713, 14.784840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775169, 33.124622, 14.875457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233177, -0.008546, -0.972397,
		-0.197183, -0.978772, 0.055886,
		-0.952233, 0.204772, 0.226542,
		35.489498, 33.186054, 14.943419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696930, 32.464291, 14.686524>,  <36.156063, 33.042713, 14.784840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696930, 32.464291, 14.686524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497852, 32.808033, 14.639523>,  <35.378407, 33.014278, 14.611321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497852, 32.808033, 14.639523>,  <35.696930, 32.464291, 14.686524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497852, 32.808033, 14.639523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098689, -0.190701, -0.976675,
		-0.861719, -0.474490, 0.179720,
		-0.497696, 0.859356, -0.117504,
		35.348545, 33.065838, 14.604272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211178, 32.218121, 14.206684>,  <35.696930, 32.464291, 14.686524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211178, 32.218121, 14.206684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201694, 32.616627, 14.173478>,  <35.196007, 32.855732, 14.153554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201694, 32.616627, 14.173478>,  <35.211178, 32.218121, 14.206684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201694, 32.616627, 14.173478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189461, -0.086011, -0.978113,
		-0.981602, -0.007459, 0.190793,
		-0.023706, 0.996266, -0.083016,
		35.194584, 32.915508, 14.148574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736790, 32.276333, 13.724834>,  <35.211178, 32.218121, 14.206684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736790, 32.276333, 13.724834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923611, 32.627254, 13.769018>,  <35.035702, 32.837807, 13.795528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923611, 32.627254, 13.769018>,  <34.736790, 32.276333, 13.724834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923611, 32.627254, 13.769018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144818, 0.199128, -0.969214,
		-0.872290, 0.436677, 0.220053,
		0.467052, 0.877303, 0.110458,
		35.063725, 32.890446, 13.802155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287281, 32.824131, 13.532496>,  <34.736790, 32.276333, 13.724834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287281, 32.824131, 13.532496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663116, 32.947468, 13.473036>,  <34.888618, 33.021469, 13.437359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663116, 32.947468, 13.473036>,  <34.287281, 32.824131, 13.532496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663116, 32.947468, 13.473036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228537, 0.241762, -0.943039,
		-0.254843, 0.920041, 0.297625,
		0.939588, 0.308345, -0.148652,
		34.944992, 33.039970, 13.428440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210854, 33.372696, 13.077664>,  <34.287281, 32.824131, 13.532496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210854, 33.372696, 13.077664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605923, 33.311443, 13.064722>,  <34.842964, 33.274693, 13.056957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605923, 33.311443, 13.064722>,  <34.210854, 33.372696, 13.077664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605923, 33.311443, 13.064722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017869, 0.315691, -0.948694,
		0.155492, 0.936423, 0.314536,
		0.987676, -0.153134, -0.032355,
		34.902225, 33.265503, 13.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556019, 34.032539, 12.867520>,  <34.210854, 33.372696, 13.077664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556019, 34.032539, 12.867520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820446, 33.743271, 12.787511>,  <34.979103, 33.569710, 12.739505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820446, 33.743271, 12.787511>,  <34.556019, 34.032539, 12.867520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820446, 33.743271, 12.787511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104253, 0.352526, -0.929977,
		0.743046, 0.593928, 0.308437,
		0.661071, -0.723171, -0.200024,
		35.018768, 33.526321, 12.727504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123276, 34.359940, 12.477521>,  <34.556019, 34.032539, 12.867520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123276, 34.359940, 12.477521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129169, 33.968998, 12.393078>,  <35.132706, 33.734432, 12.342412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129169, 33.968998, 12.393078>,  <35.123276, 34.359940, 12.477521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129169, 33.968998, 12.393078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156693, 0.210779, -0.964893,
		0.987538, -0.018866, 0.156249,
		0.014731, -0.977352, -0.211108,
		35.133587, 33.675793, 12.329745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819489, 34.247292, 12.205278>,  <35.123276, 34.359940, 12.477521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819489, 34.247292, 12.205278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603512, 33.933693, 12.082767>,  <35.473927, 33.745533, 12.009259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603512, 33.933693, 12.082767>,  <35.819489, 34.247292, 12.205278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603512, 33.933693, 12.082767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317621, 0.147198, -0.936723,
		0.779475, -0.603055, 0.169537,
		-0.539940, -0.784001, -0.306280,
		35.441528, 33.698494, 11.990883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255699, 33.972893, 11.760367>,  <35.819489, 34.247292, 12.205278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255699, 33.972893, 11.760367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907318, 33.801743, 11.663728>,  <35.698288, 33.699055, 11.605744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907318, 33.801743, 11.663728>,  <36.255699, 33.972893, 11.760367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907318, 33.801743, 11.663728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198166, 0.144067, -0.969523,
		0.449639, -0.892283, -0.040685,
		-0.870951, -0.427873, -0.241598,
		35.646034, 33.673382, 11.591249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466461, 33.462925, 11.246074>,  <36.255699, 33.972893, 11.760367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466461, 33.462925, 11.246074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079906, 33.562572, 11.220655>,  <35.847973, 33.622360, 11.205404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079906, 33.562572, 11.220655>,  <36.466461, 33.462925, 11.246074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079906, 33.562572, 11.220655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098995, 0.132450, -0.986234,
		-0.237278, -0.959372, -0.152659,
		-0.966384, 0.249124, -0.063545,
		35.789989, 33.637310, 11.201591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270378, 33.025280, 10.715836>,  <36.466461, 33.462925, 11.246074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270378, 33.025280, 10.715836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002140, 33.321247, 10.737101>,  <35.841198, 33.498825, 10.749860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002140, 33.321247, 10.737101>,  <36.270378, 33.025280, 10.715836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002140, 33.321247, 10.737101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101173, -0.020228, -0.994663,
		-0.734889, -0.672398, 0.088425,
		-0.670598, 0.739913, 0.053163,
		35.800961, 33.543221, 10.753050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917095, 33.010433, 10.037717>,  <36.270378, 33.025280, 10.715836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917095, 33.010433, 10.037717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805321, 33.365963, 10.182989>,  <35.738255, 33.579281, 10.270153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805321, 33.365963, 10.182989>,  <35.917095, 33.010433, 10.037717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805321, 33.365963, 10.182989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249019, 0.298219, -0.921442,
		-0.927310, -0.347924, 0.138002,
		-0.279437, 0.888828, 0.363181,
		35.721489, 33.632610, 10.291944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292328, 33.077374, 9.683160>,  <35.917095, 33.010433, 10.037717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292328, 33.077374, 9.683160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428139, 33.434052, 9.802898>,  <35.509624, 33.648056, 9.874742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428139, 33.434052, 9.802898>,  <35.292328, 33.077374, 9.683160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428139, 33.434052, 9.802898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204764, 0.380691, -0.901746,
		-0.918037, 0.244872, 0.311841,
		0.339527, 0.891691, 0.299347,
		35.529995, 33.701557, 9.892703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848919, 33.585609, 9.400733>,  <35.292328, 33.077374, 9.683160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848919, 33.585609, 9.400733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196587, 33.774097, 9.460726>,  <35.405186, 33.887192, 9.496721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196587, 33.774097, 9.460726>,  <34.848919, 33.585609, 9.400733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196587, 33.774097, 9.460726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028260, 0.255464, -0.966405,
		-0.493707, 0.844208, 0.208725,
		0.869169, 0.471222, 0.149982,
		35.457336, 33.915462, 9.505720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870773, 34.367142, 9.336945>,  <34.848919, 33.585609, 9.400733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870773, 34.367142, 9.336945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203396, 34.169315, 9.235820>,  <35.402969, 34.050621, 9.175145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203396, 34.169315, 9.235820>,  <34.870773, 34.367142, 9.336945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203396, 34.169315, 9.235820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003873, 0.460309, -0.887750,
		0.555422, 0.737238, 0.384690,
		0.831559, -0.494566, -0.252811,
		35.452862, 34.020947, 9.159977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325527, 34.857082, 9.195102>,  <34.870773, 34.367142, 9.336945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325527, 34.857082, 9.195102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396473, 35.246017, 9.134304>,  <34.439041, 35.479378, 9.097825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396473, 35.246017, 9.134304>,  <34.325527, 34.857082, 9.195102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396473, 35.246017, 9.134304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243004, 0.192930, 0.950645,
		0.953672, -0.131678, 0.270502,
		0.177367, 0.972337, -0.151994,
		34.449684, 35.537720, 9.088706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849819, 35.125782, 8.679979>,  <34.325527, 34.857082, 9.195102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849819, 35.125782, 8.679979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452587, 35.156132, 8.644121>,  <33.214249, 35.174343, 8.622606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452587, 35.156132, 8.644121>,  <33.849819, 35.125782, 8.679979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452587, 35.156132, 8.644121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065687, 0.273926, 0.959505,
		0.097358, 0.958753, -0.267046,
		-0.993079, 0.075874, -0.089646,
		33.154663, 35.178894, 8.617228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665016, 35.809593, 8.836422>,  <33.849819, 35.125782, 8.679979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665016, 35.809593, 8.836422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358818, 35.558968, 8.894984>,  <33.175098, 35.408592, 8.930121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358818, 35.558968, 8.894984>,  <33.665016, 35.809593, 8.836422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358818, 35.558968, 8.894984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067320, 0.304276, 0.950202,
		-0.639911, 0.717518, -0.275102,
		-0.765494, -0.626565, 0.146407,
		33.129169, 35.370998, 8.938907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299667, 36.195801, 9.223476>,  <33.665016, 35.809593, 8.836422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299667, 36.195801, 9.223476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159771, 35.824867, 9.276741>,  <33.075832, 35.602306, 9.308700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159771, 35.824867, 9.276741>,  <33.299667, 36.195801, 9.223476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159771, 35.824867, 9.276741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036034, 0.155350, 0.987202,
		-0.936153, 0.340468, -0.087748,
		-0.349743, -0.927334, 0.133162,
		33.054848, 35.546669, 9.316689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700935, 36.299461, 9.605826>,  <33.299667, 36.195801, 9.223476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700935, 36.299461, 9.605826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819229, 35.923328, 9.673128>,  <32.890205, 35.697647, 9.713509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819229, 35.923328, 9.673128>,  <32.700935, 36.299461, 9.605826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819229, 35.923328, 9.673128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101212, 0.144297, 0.984345,
		-0.949894, -0.308133, -0.052499,
		0.295733, -0.940336, 0.168253,
		32.907948, 35.641228, 9.723604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255634, 36.096176, 10.140326>,  <32.700935, 36.299461, 9.605826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255634, 36.096176, 10.140326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562134, 35.839195, 10.144735>,  <32.746033, 35.685005, 10.147381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562134, 35.839195, 10.144735>,  <32.255634, 36.096176, 10.140326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562134, 35.839195, 10.144735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057134, -0.051035, 0.997061,
		-0.640001, -0.764625, -0.075811,
		0.766247, -0.642452, 0.011023,
		32.792007, 35.646461, 10.148043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076397, 35.670055, 10.660090>,  <32.255634, 36.096176, 10.140326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076397, 35.670055, 10.660090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467140, 35.604321, 10.605326>,  <32.701588, 35.564880, 10.572467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467140, 35.604321, 10.605326>,  <32.076397, 35.670055, 10.660090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467140, 35.604321, 10.605326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142992, 0.025692, 0.989390,
		-0.159074, -0.986070, 0.048596,
		0.976856, -0.164335, -0.136913,
		32.760197, 35.555019, 10.564252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207115, 35.100216, 11.095244>,  <32.076397, 35.670055, 10.660090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207115, 35.100216, 11.095244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567093, 35.255802, 11.016454>,  <32.783081, 35.349155, 10.969179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567093, 35.255802, 11.016454>,  <32.207115, 35.100216, 11.095244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567093, 35.255802, 11.016454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260193, -0.116615, 0.958489,
		0.349852, -0.913840, -0.206154,
		0.899946, 0.388969, -0.196977,
		32.837078, 35.372494, 10.957360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559460, 34.631416, 11.466724>,  <32.207115, 35.100216, 11.095244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559460, 34.631416, 11.466724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790466, 34.949745, 11.393903>,  <32.929070, 35.140743, 11.350209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790466, 34.949745, 11.393903>,  <32.559460, 34.631416, 11.466724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790466, 34.949745, 11.393903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233944, 0.052323, 0.970841,
		0.782141, -0.603268, -0.155960,
		0.577517, 0.795821, -0.182055,
		32.963722, 35.188492, 11.339286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281464, 34.428570, 11.655821>,  <32.559460, 34.631416, 11.466724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281464, 34.428570, 11.655821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244793, 34.826710, 11.667680>,  <33.222790, 35.065594, 11.674795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244793, 34.826710, 11.667680>,  <33.281464, 34.428570, 11.655821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244793, 34.826710, 11.667680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250823, -0.005732, 0.968016,
		0.963682, 0.096181, -0.249131,
		-0.091677, 0.995347, 0.029648,
		33.217289, 35.125313, 11.676574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953941, 34.696018, 11.795416>,  <33.281464, 34.428570, 11.655821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953941, 34.696018, 11.795416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673580, 34.939140, 11.944708>,  <33.505363, 35.085014, 12.034283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673580, 34.939140, 11.944708>,  <33.953941, 34.696018, 11.795416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673580, 34.939140, 11.944708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324958, -0.193691, 0.925681,
		0.634927, 0.770101, -0.061752,
		-0.700907, 0.607807, 0.373230,
		33.463306, 35.121483, 12.056677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202110, 34.953587, 12.393564>,  <33.953941, 34.696018, 11.795416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202110, 34.953587, 12.393564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834290, 35.087151, 12.476450>,  <33.613598, 35.167290, 12.526181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834290, 35.087151, 12.476450>,  <34.202110, 34.953587, 12.393564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834290, 35.087151, 12.476450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096759, -0.318682, 0.942910,
		0.380879, 0.887101, 0.260735,
		-0.919548, 0.333906, 0.207215,
		33.558426, 35.187321, 12.538614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147369, 35.238903, 13.110138>,  <34.202110, 34.953587, 12.393564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147369, 35.238903, 13.110138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.767933, 35.140190, 13.030869>,  <33.540272, 35.080963, 12.983308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.767933, 35.140190, 13.030869>,  <34.147369, 35.238903, 13.110138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767933, 35.140190, 13.030869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105065, -0.345098, 0.932667,
		-0.298557, 0.905541, 0.301429,
		-0.948591, -0.246785, -0.198172,
		33.483356, 35.066154, 12.971417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743145, 35.540771, 13.601778>,  <34.147369, 35.238903, 13.110138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743145, 35.540771, 13.601778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538242, 35.225990, 13.464203>,  <33.415302, 35.037121, 13.381658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538242, 35.225990, 13.464203>,  <33.743145, 35.540771, 13.601778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538242, 35.225990, 13.464203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017996, -0.410219, 0.911809,
		-0.858645, 0.460889, 0.224299,
		-0.512255, -0.786957, -0.343938,
		33.384567, 34.989902, 13.361021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271915, 35.356422, 14.134826>,  <33.743145, 35.540771, 13.601778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271915, 35.356422, 14.134826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241161, 35.013142, 13.931819>,  <33.222710, 34.807171, 13.810015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241161, 35.013142, 13.931819>,  <33.271915, 35.356422, 14.134826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241161, 35.013142, 13.931819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185555, -0.487814, 0.852999,
		-0.979621, 0.159756, -0.121739,
		-0.076886, -0.858205, -0.507517,
		33.218094, 34.755680, 13.779564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611473, 35.043404, 14.303227>,  <33.271915, 35.356422, 14.134826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611473, 35.043404, 14.303227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798588, 34.724407, 14.150815>,  <32.910858, 34.533009, 14.059367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798588, 34.724407, 14.150815>,  <32.611473, 35.043404, 14.303227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798588, 34.724407, 14.150815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280000, -0.542621, 0.791936,
		-0.838315, -0.263771, -0.477129,
		0.467790, -0.797488, -0.381032,
		32.938927, 34.485161, 14.036506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167126, 34.476040, 14.353427>,  <32.611473, 35.043404, 14.303227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167126, 34.476040, 14.353427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526917, 34.308422, 14.303879>,  <32.742790, 34.207851, 14.274150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526917, 34.308422, 14.303879>,  <32.167126, 34.476040, 14.353427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526917, 34.308422, 14.303879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143132, -0.550381, 0.822553,
		-0.412860, -0.722138, -0.555034,
		0.899477, -0.419043, -0.123870,
		32.796761, 34.182709, 14.266718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093575, 33.780495, 14.273876>,  <32.167126, 34.476040, 14.353427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093575, 33.780495, 14.273876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434063, 33.889503, 14.453278>,  <32.638355, 33.954906, 14.560918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434063, 33.889503, 14.453278>,  <32.093575, 33.780495, 14.273876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434063, 33.889503, 14.453278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303780, -0.441020, 0.844523,
		0.427946, -0.855123, -0.292620,
		0.851222, 0.272518, 0.448503,
		32.689430, 33.971260, 14.587829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255562, 33.247097, 14.789220>,  <32.093575, 33.780495, 14.273876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255562, 33.247097, 14.789220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479801, 33.559753, 14.898597>,  <32.614346, 33.747349, 14.964223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479801, 33.559753, 14.898597>,  <32.255562, 33.247097, 14.789220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479801, 33.559753, 14.898597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106848, -0.259171, 0.959903,
		0.821167, -0.567334, -0.061774,
		0.560596, 0.781641, 0.273441,
		32.647980, 33.794247, 14.980629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820446, 32.997578, 15.070974>,  <32.255562, 33.247097, 14.789220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820446, 32.997578, 15.070974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788059, 33.368652, 15.216763>,  <32.768627, 33.591297, 15.304235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788059, 33.368652, 15.216763>,  <32.820446, 32.997578, 15.070974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788059, 33.368652, 15.216763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138452, -0.372594, 0.917608,
		0.987054, 0.023837, 0.158609,
		-0.080970, 0.927688, 0.364470,
		32.763767, 33.646957, 15.326103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203480, 32.980751, 15.566265>,  <32.820446, 32.997578, 15.070974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203480, 32.980751, 15.566265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974159, 33.295258, 15.658444>,  <32.836567, 33.483963, 15.713752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974159, 33.295258, 15.658444>,  <33.203480, 32.980751, 15.566265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974159, 33.295258, 15.658444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063167, -0.322837, 0.944344,
		0.816905, 0.526839, 0.234749,
		-0.573303, 0.786268, 0.230448,
		32.802170, 33.531139, 15.727579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.270573, 32.450699, 20.281858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977543, 32.722843, 20.290184>,  <36.801723, 32.886131, 20.295179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977543, 32.722843, 20.290184>,  <37.270573, 32.450699, 20.281858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977543, 32.722843, 20.290184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158873, 0.141175, 0.977153,
		0.661883, 0.719147, -0.211513,
		-0.732578, 0.680365, 0.020812,
		36.757771, 32.926952, 20.296427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520439, 32.939156, 20.698723>,  <37.270573, 32.450699, 20.281858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520439, 32.939156, 20.698723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134956, 33.044880, 20.713696>,  <36.903667, 33.108315, 20.722679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134956, 33.044880, 20.713696>,  <37.520439, 32.939156, 20.698723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134956, 33.044880, 20.713696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057712, 0.069383, 0.995919,
		0.260635, 0.961939, -0.082119,
		-0.963711, 0.264311, 0.037431,
		36.845844, 33.124172, 20.724924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542114, 33.598518, 20.982040>,  <37.520439, 32.939156, 20.698723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542114, 33.598518, 20.982040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194538, 33.425121, 21.077553>,  <36.985992, 33.321083, 21.134861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194538, 33.425121, 21.077553>,  <37.542114, 33.598518, 20.982040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194538, 33.425121, 21.077553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125875, 0.273027, 0.953736,
		-0.478634, 0.858800, -0.182679,
		-0.868945, -0.433496, 0.238782,
		36.933853, 33.295074, 21.149187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325611, 34.079876, 21.458349>,  <37.542114, 33.598518, 20.982040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325611, 34.079876, 21.458349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072487, 33.776985, 21.523046>,  <36.920612, 33.595249, 21.561865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072487, 33.776985, 21.523046>,  <37.325611, 34.079876, 21.458349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072487, 33.776985, 21.523046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012512, 0.218858, 0.975676,
		-0.774207, 0.615393, -0.147970,
		-0.632809, -0.757227, 0.161742,
		36.882645, 33.549816, 21.571569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757126, 34.327888, 21.964411>,  <37.325611, 34.079876, 21.458349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757126, 34.327888, 21.964411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.737099, 33.928406, 21.967859>,  <36.725082, 33.688717, 21.969929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.737099, 33.928406, 21.967859>,  <36.757126, 34.327888, 21.964411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737099, 33.928406, 21.967859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037101, 0.010484, 0.999257,
		-0.998057, 0.049709, -0.037578,
		-0.050066, -0.998709, 0.008619,
		36.722080, 33.628792, 21.970446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136326, 34.112488, 22.308619>,  <36.757126, 34.327888, 21.964411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136326, 34.112488, 22.308619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383434, 33.800804, 22.350920>,  <36.531700, 33.613792, 22.376301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383434, 33.800804, 22.350920>,  <36.136326, 34.112488, 22.308619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383434, 33.800804, 22.350920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187893, -0.015681, 0.982064,
		-0.763577, -0.626566, -0.156096,
		0.617775, -0.779211, 0.105754,
		36.568768, 33.567039, 22.382647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967438, 33.740868, 22.861288>,  <36.136326, 34.112488, 22.308619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967438, 33.740868, 22.861288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312550, 33.541183, 22.829275>,  <36.519615, 33.421371, 22.810066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312550, 33.541183, 22.829275>,  <35.967438, 33.740868, 22.861288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312550, 33.541183, 22.829275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045997, -0.080139, 0.995722,
		-0.503488, -0.862767, -0.046179,
		0.862777, -0.499210, -0.080034,
		36.571384, 33.391422, 22.805265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922901, 33.234402, 23.371193>,  <35.967438, 33.740868, 22.861288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922901, 33.234402, 23.371193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.309464, 33.312195, 23.303988>,  <36.541401, 33.358871, 23.263664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.309464, 33.312195, 23.303988>,  <35.922901, 33.234402, 23.371193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309464, 33.312195, 23.303988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161966, 0.046713, 0.985690,
		0.199554, -0.979792, 0.013643,
		0.966409, 0.194489, -0.168015,
		36.599384, 33.370541, 23.253584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364792, 32.714676, 23.794294>,  <35.922901, 33.234402, 23.371193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364792, 32.714676, 23.794294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.610371, 33.018810, 23.709476>,  <36.757717, 33.201290, 23.658587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.610371, 33.018810, 23.709476>,  <36.364792, 32.714676, 23.794294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610371, 33.018810, 23.709476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168203, 0.136445, 0.976264,
		0.771218, -0.635041, -0.044121,
		0.613947, 0.760333, -0.212044,
		36.794556, 33.246910, 23.645863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971550, 32.616199, 24.231668>,  <36.364792, 32.714676, 23.794294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971550, 32.616199, 24.231668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983006, 32.999374, 24.117449>,  <36.989880, 33.229279, 24.048916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983006, 32.999374, 24.117449>,  <36.971550, 32.616199, 24.231668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983006, 32.999374, 24.117449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368080, 0.255489, 0.894004,
		0.929353, -0.130707, -0.345280,
		0.028637, 0.957936, -0.285551,
		36.991596, 33.286755, 24.031784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626163, 32.849194, 24.441895>,  <36.971550, 32.616199, 24.231668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626163, 32.849194, 24.441895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483406, 33.211407, 24.350121>,  <37.397751, 33.428734, 24.295055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483406, 33.211407, 24.350121>,  <37.626163, 32.849194, 24.441895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483406, 33.211407, 24.350121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307300, 0.345748, 0.886581,
		0.882154, 0.245908, -0.401665,
		-0.356892, 0.905532, -0.229436,
		37.376339, 33.483067, 24.281290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140934, 33.326324, 24.389082>,  <37.626163, 32.849194, 24.441895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140934, 33.326324, 24.389082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831036, 33.568554, 24.461798>,  <37.645096, 33.713890, 24.505428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831036, 33.568554, 24.461798>,  <38.140934, 33.326324, 24.389082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831036, 33.568554, 24.461798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511028, 0.430433, 0.744028,
		0.372315, 0.669333, -0.642942,
		-0.774746, 0.605574, 0.181791,
		37.598610, 33.750225, 24.516335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391148, 33.955772, 24.287760>,  <38.140934, 33.326324, 24.389082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391148, 33.955772, 24.287760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080788, 33.996841, 24.536736>,  <37.894569, 34.021484, 24.686121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080788, 33.996841, 24.536736>,  <38.391148, 33.955772, 24.287760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080788, 33.996841, 24.536736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560412, 0.565242, 0.605343,
		-0.289677, 0.818511, -0.496112,
		-0.775903, 0.102673, 0.622440,
		37.848015, 34.027645, 24.723467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438057, 34.596458, 24.558580>,  <38.391148, 33.955772, 24.287760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438057, 34.596458, 24.558580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213497, 34.397568, 24.823185>,  <38.078762, 34.278233, 24.981947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213497, 34.397568, 24.823185>,  <38.438057, 34.596458, 24.558580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213497, 34.397568, 24.823185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559869, 0.360449, 0.746072,
		-0.609410, 0.789201, 0.076029,
		-0.561397, -0.497230, 0.661511,
		38.045078, 34.248398, 25.021639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562515, 35.012890, 25.198170>,  <38.438057, 34.596458, 24.558580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562515, 35.012890, 25.198170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750729, 35.356720, 25.277891>,  <38.863655, 35.563019, 25.325724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750729, 35.356720, 25.277891>,  <38.562515, 35.012890, 25.198170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750729, 35.356720, 25.277891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431523, 0.421181, -0.797743,
		-0.769667, 0.289360, 0.569107,
		0.470532, 0.859580, 0.199303,
		38.891888, 35.614594, 25.337683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084713, 35.472382, 25.176411>,  <38.562515, 35.012890, 25.198170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084713, 35.472382, 25.176411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420322, 35.688816, 25.153540>,  <38.621689, 35.818676, 25.139816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420322, 35.688816, 25.153540>,  <38.084713, 35.472382, 25.176411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420322, 35.688816, 25.153540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370424, 0.491067, -0.788441,
		-0.398538, 0.682697, 0.612447,
		0.839019, 0.541089, -0.057179,
		38.672028, 35.851143, 25.136387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815865, 36.092205, 25.121054>,  <38.084713, 35.472382, 25.176411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815865, 36.092205, 25.121054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185520, 36.158077, 24.983152>,  <38.407314, 36.197601, 24.900412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185520, 36.158077, 24.983152>,  <37.815865, 36.092205, 25.121054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185520, 36.158077, 24.983152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375871, 0.553703, -0.743058,
		0.068524, 0.816268, 0.573595,
		0.924135, 0.164680, -0.344753,
		38.462761, 36.207481, 24.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865948, 36.794205, 24.897821>,  <37.815865, 36.092205, 25.121054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865948, 36.794205, 24.897821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171524, 36.624645, 24.703217>,  <38.354870, 36.522907, 24.586452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171524, 36.624645, 24.703217>,  <37.865948, 36.794205, 24.897821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171524, 36.624645, 24.703217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327596, 0.394787, -0.858385,
		0.555940, 0.815139, 0.162728,
		0.763945, -0.423901, -0.486514,
		38.400707, 36.497475, 24.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196049, 37.253929, 24.311417>,  <37.865948, 36.794205, 24.897821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196049, 37.253929, 24.311417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279922, 36.875549, 24.212460>,  <38.330246, 36.648521, 24.153086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279922, 36.875549, 24.212460>,  <38.196049, 37.253929, 24.311417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279922, 36.875549, 24.212460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356825, 0.161534, -0.920099,
		0.910333, 0.281210, -0.303668,
		0.209688, -0.945953, -0.247392,
		38.342831, 36.591763, 24.138243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629505, 37.362389, 23.645992>,  <38.196049, 37.253929, 24.311417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629505, 37.362389, 23.645992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481331, 36.990852, 23.643642>,  <38.392426, 36.767933, 23.642233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481331, 36.990852, 23.643642>,  <38.629505, 37.362389, 23.645992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481331, 36.990852, 23.643642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294308, 0.123369, -0.947715,
		0.880998, -0.349342, -0.319065,
		-0.370439, -0.928838, -0.005874,
		38.370197, 36.712200, 23.641880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871605, 37.134106, 23.144188>,  <38.629505, 37.362389, 23.645992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871605, 37.134106, 23.144188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554443, 36.899151, 23.209024>,  <38.364147, 36.758179, 23.247927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554443, 36.899151, 23.209024>,  <38.871605, 37.134106, 23.144188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554443, 36.899151, 23.209024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292903, 0.134147, -0.946685,
		0.534331, -0.798108, -0.278415,
		-0.792905, -0.587392, 0.162089,
		38.316570, 36.722935, 23.257650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812645, 36.816982, 22.494373>,  <38.871605, 37.134106, 23.144188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812645, 36.816982, 22.494373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466724, 36.769138, 22.689440>,  <38.259174, 36.740433, 22.806479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466724, 36.769138, 22.689440>,  <38.812645, 36.816982, 22.494373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466724, 36.769138, 22.689440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496622, 0.060441, -0.865860,
		0.074091, -0.990979, -0.111670,
		-0.864799, -0.119611, 0.487664,
		38.207283, 36.733257, 22.835739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580936, 36.181034, 22.130239>,  <38.812645, 36.816982, 22.494373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580936, 36.181034, 22.130239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277317, 36.374947, 22.304060>,  <38.095146, 36.491295, 22.408352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277317, 36.374947, 22.304060>,  <38.580936, 36.181034, 22.130239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277317, 36.374947, 22.304060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481822, 0.030579, -0.875735,
		-0.437829, -0.874101, 0.210367,
		-0.759048, 0.484781, 0.434549,
		38.049603, 36.520382, 22.434425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932926, 35.912067, 21.909927>,  <38.580936, 36.181034, 22.130239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932926, 35.912067, 21.909927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810509, 36.263214, 22.057268>,  <37.737057, 36.473904, 22.145674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810509, 36.263214, 22.057268>,  <37.932926, 35.912067, 21.909927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810509, 36.263214, 22.057268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626769, 0.105443, -0.772038,
		-0.716588, -0.467149, 0.517951,
		-0.306042, 0.877869, 0.368353,
		37.718697, 36.526573, 22.167774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182865, 35.897537, 21.876734>,  <37.932926, 35.912067, 21.909927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182865, 35.897537, 21.876734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287220, 36.282936, 21.900778>,  <37.349831, 36.514175, 21.915205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287220, 36.282936, 21.900778>,  <37.182865, 35.897537, 21.876734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287220, 36.282936, 21.900778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696972, 0.231071, -0.678850,
		-0.667959, 0.135206, 0.731813,
		0.260885, 0.963497, 0.060111,
		37.365486, 36.571983, 21.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568623, 36.260098, 21.814672>,  <37.182865, 35.897537, 21.876734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568623, 36.260098, 21.814672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839401, 36.533562, 21.705606>,  <37.001869, 36.697639, 21.640167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839401, 36.533562, 21.705606>,  <36.568623, 36.260098, 21.814672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839401, 36.533562, 21.705606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567082, 0.248298, -0.785344,
		-0.469207, 0.686263, 0.555777,
		0.676951, 0.683660, -0.272664,
		37.042488, 36.738659, 21.623808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193733, 36.788578, 21.559612>,  <36.568623, 36.260098, 21.814672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193733, 36.788578, 21.559612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.563515, 36.868874, 21.429943>,  <36.785385, 36.917053, 21.352142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.563515, 36.868874, 21.429943>,  <36.193733, 36.788578, 21.559612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563515, 36.868874, 21.429943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377050, 0.354797, -0.855542,
		-0.056729, 0.913138, 0.403683,
		0.924454, 0.200743, -0.324172,
		36.840851, 36.929096, 21.332691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038948, 37.284397, 21.087223>,  <36.193733, 36.788578, 21.559612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038948, 37.284397, 21.087223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425480, 37.216011, 21.010309>,  <36.657398, 37.174980, 20.964161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425480, 37.216011, 21.010309>,  <36.038948, 37.284397, 21.087223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425480, 37.216011, 21.010309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150866, 0.228882, -0.961693,
		0.208430, 0.958323, 0.195382,
		0.966331, -0.170969, -0.192284,
		36.715378, 37.164719, 20.952623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919266, 37.909233, 21.364115>,  <36.038948, 37.284397, 21.087223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919266, 37.909233, 21.364115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627655, 38.181484, 21.393139>,  <35.452686, 38.344833, 21.410553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627655, 38.181484, 21.393139>,  <35.919266, 37.909233, 21.364115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627655, 38.181484, 21.393139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117265, -0.228636, 0.966424,
		0.674362, 0.696043, 0.246496,
		-0.729030, 0.680625, 0.072562,
		35.408947, 38.385674, 21.414907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123589, 38.406021, 22.004025>,  <35.919266, 37.909233, 21.364115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123589, 38.406021, 22.004025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.728188, 38.405315, 21.943541>,  <35.490948, 38.404892, 21.907249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.728188, 38.405315, 21.943541>,  <36.123589, 38.406021, 22.004025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728188, 38.405315, 21.943541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150855, -0.057958, 0.986856,
		-0.010507, 0.998318, 0.057025,
		-0.988500, -0.001767, -0.151210,
		35.431637, 38.404785, 21.898178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805729, 38.934189, 22.422485>,  <36.123589, 38.406021, 22.004025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805729, 38.934189, 22.422485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475746, 38.715942, 22.363489>,  <35.277756, 38.584995, 22.328091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475746, 38.715942, 22.363489>,  <35.805729, 38.934189, 22.422485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475746, 38.715942, 22.363489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114319, -0.094484, 0.988941,
		-0.553517, 0.832693, 0.015571,
		-0.824955, -0.545615, -0.147491,
		35.228260, 38.552258, 22.319242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238441, 39.224102, 22.892044>,  <35.805729, 38.934189, 22.422485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238441, 39.224102, 22.892044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.110382, 38.861359, 22.782415>,  <35.033546, 38.643715, 22.716639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.110382, 38.861359, 22.782415>,  <35.238441, 39.224102, 22.892044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110382, 38.861359, 22.782415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349968, -0.155626, 0.923744,
		-0.880356, 0.391653, -0.267547,
		-0.320150, -0.906857, -0.274072,
		35.014336, 38.589302, 22.700193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664375, 39.202599, 23.043211>,  <35.238441, 39.224102, 22.892044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664375, 39.202599, 23.043211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.715313, 38.807987, 23.002142>,  <34.745876, 38.571220, 22.977501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.715313, 38.807987, 23.002142>,  <34.664375, 39.202599, 23.043211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715313, 38.807987, 23.002142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389136, -0.144910, 0.909711,
		-0.912336, -0.075895, -0.402348,
		0.127347, -0.986530, -0.102673,
		34.753517, 38.512028, 22.971340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059345, 38.925106, 23.251764>,  <34.664375, 39.202599, 23.043211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059345, 38.925106, 23.251764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.330467, 38.634186, 23.294865>,  <34.493141, 38.459633, 23.320724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.330467, 38.634186, 23.294865>,  <34.059345, 38.925106, 23.251764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330467, 38.634186, 23.294865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295389, -0.135167, 0.945767,
		-0.673297, -0.672872, -0.306454,
		0.677803, -0.727305, 0.107752,
		34.533810, 38.415993, 23.327190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658047, 38.312794, 23.561642>,  <34.059345, 38.925106, 23.251764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658047, 38.312794, 23.561642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035492, 38.207947, 23.642525>,  <34.261959, 38.145039, 23.691055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035492, 38.207947, 23.642525>,  <33.658047, 38.312794, 23.561642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035492, 38.207947, 23.642525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228454, -0.073531, 0.970774,
		-0.239584, -0.962232, -0.129265,
		0.943614, -0.262113, 0.202209,
		34.318577, 38.129314, 23.703188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600292, 37.584785, 24.034199>,  <33.658047, 38.312794, 23.561642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600292, 37.584785, 24.034199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951443, 37.772778, 24.070961>,  <34.162132, 37.885574, 24.093019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951443, 37.772778, 24.070961>,  <33.600292, 37.584785, 24.034199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951443, 37.772778, 24.070961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013814, -0.166986, 0.985863,
		0.478684, -0.866737, -0.140101,
		0.877879, 0.469981, 0.091907,
		34.214806, 37.913773, 24.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004158, 37.143238, 24.431223>,  <33.600292, 37.584785, 24.034199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004158, 37.143238, 24.431223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.165195, 37.505306, 24.485752>,  <34.261818, 37.722546, 24.518471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.165195, 37.505306, 24.485752>,  <34.004158, 37.143238, 24.431223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165195, 37.505306, 24.485752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016581, -0.141691, 0.989772,
		0.915229, -0.400736, -0.042035,
		0.402593, 0.905171, 0.136324,
		34.285973, 37.776859, 24.526649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362614, 37.099228, 25.043087>,  <34.004158, 37.143238, 24.431223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362614, 37.099228, 25.043087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.350716, 37.498451, 25.021221>,  <34.343578, 37.737988, 25.008101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.350716, 37.498451, 25.021221>,  <34.362614, 37.099228, 25.043087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350716, 37.498451, 25.021221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013400, 0.054287, 0.998435,
		0.999468, 0.030428, 0.011760,
		-0.029742, 0.998061, -0.054666,
		34.341793, 37.797871, 25.004822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909439, 37.422230, 25.381027>,  <34.362614, 37.099228, 25.043087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909439, 37.422230, 25.381027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664131, 37.737926, 25.393690>,  <34.516945, 37.927345, 25.401289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664131, 37.737926, 25.393690>,  <34.909439, 37.422230, 25.381027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664131, 37.737926, 25.393690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242187, 0.149737, 0.958606,
		0.751827, 0.595553, -0.282972,
		-0.613272, 0.789237, 0.031658,
		34.480148, 37.974697, 25.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232090, 37.947254, 25.744022>,  <34.909439, 37.422230, 25.381027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232090, 37.947254, 25.744022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.843216, 38.038170, 25.766630>,  <34.609890, 38.092720, 25.780195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.843216, 38.038170, 25.766630>,  <35.232090, 37.947254, 25.744022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843216, 38.038170, 25.766630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086771, 0.125398, 0.988305,
		0.217544, 0.965720, -0.141633,
		-0.972186, 0.227290, 0.056517,
		34.551559, 38.106358, 25.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.367783, 39.723270, 18.204405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976353, 39.713543, 18.122623>,  <35.741493, 39.707706, 18.073555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976353, 39.713543, 18.122623>,  <36.367783, 39.723270, 18.204405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976353, 39.713543, 18.122623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203683, 0.259416, 0.944043,
		0.030082, 0.965459, -0.258811,
		-0.978575, -0.024316, -0.204452,
		35.682781, 39.706249, 18.061287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135387, 40.026577, 18.802168>,  <36.367783, 39.723270, 18.204405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135387, 40.026577, 18.802168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790100, 39.873859, 18.670057>,  <35.582928, 39.782230, 18.590792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790100, 39.873859, 18.670057>,  <36.135387, 40.026577, 18.802168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790100, 39.873859, 18.670057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308129, -0.119755, 0.943777,
		-0.399881, 0.916456, -0.014267,
		-0.863222, -0.381795, -0.330274,
		35.531132, 39.759319, 18.570974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563248, 40.310276, 19.130962>,  <36.135387, 40.026577, 18.802168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563248, 40.310276, 19.130962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457161, 39.939533, 19.024677>,  <35.393509, 39.717087, 18.960905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457161, 39.939533, 19.024677>,  <35.563248, 40.310276, 19.130962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457161, 39.939533, 19.024677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272923, -0.192148, 0.942651,
		-0.924757, 0.322522, -0.202000,
		-0.265212, -0.926854, -0.265714,
		35.377598, 39.661476, 18.944963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847473, 40.175247, 19.454231>,  <35.563248, 40.310276, 19.130962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847473, 40.175247, 19.454231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963039, 39.810272, 19.338312>,  <35.032379, 39.591286, 19.268761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963039, 39.810272, 19.338312>,  <34.847473, 40.175247, 19.454231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963039, 39.810272, 19.338312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318591, -0.377091, 0.869657,
		-0.902789, -0.158931, -0.399642,
		0.288917, -0.912439, -0.289799,
		35.049713, 39.536541, 19.251373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350803, 39.748379, 19.745396>,  <34.847473, 40.175247, 19.454231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350803, 39.748379, 19.745396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643494, 39.488689, 19.662363>,  <34.819107, 39.332878, 19.612543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643494, 39.488689, 19.662363>,  <34.350803, 39.748379, 19.745396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643494, 39.488689, 19.662363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129254, -0.431195, 0.892952,
		-0.669232, -0.626565, -0.399431,
		0.731726, -0.649220, -0.207583,
		34.863010, 39.293922, 19.600088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141548, 39.035030, 19.855505>,  <34.350803, 39.748379, 19.745396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141548, 39.035030, 19.855505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538036, 39.035885, 19.908377>,  <34.775928, 39.036400, 19.940100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538036, 39.035885, 19.908377>,  <34.141548, 39.035030, 19.855505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538036, 39.035885, 19.908377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119496, -0.413164, 0.902783,
		0.056544, -0.910654, -0.409282,
		0.991224, 0.002139, 0.132181,
		34.835403, 39.036526, 19.948030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340469, 38.312050, 20.154013>,  <34.141548, 39.035030, 19.855505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340469, 38.312050, 20.154013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642017, 38.561325, 20.237270>,  <34.822945, 38.710892, 20.287226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642017, 38.561325, 20.237270>,  <34.340469, 38.312050, 20.154013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642017, 38.561325, 20.237270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097621, -0.419522, 0.902481,
		0.649736, -0.660030, -0.377100,
		0.753866, 0.623187, 0.208146,
		34.868176, 38.748280, 20.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830906, 37.843056, 20.428701>,  <34.340469, 38.312050, 20.154013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830906, 37.843056, 20.428701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939930, 38.211811, 20.538857>,  <35.005344, 38.433064, 20.604950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939930, 38.211811, 20.538857>,  <34.830906, 37.843056, 20.428701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939930, 38.211811, 20.538857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259927, -0.346134, 0.901460,
		0.926364, -0.174119, -0.333964,
		0.272558, 0.921886, 0.275388,
		35.021698, 38.488377, 20.621473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489136, 37.760506, 20.737499>,  <34.830906, 37.843056, 20.428701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489136, 37.760506, 20.737499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391724, 38.122093, 20.878090>,  <35.333275, 38.339046, 20.962444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391724, 38.122093, 20.878090>,  <35.489136, 37.760506, 20.737499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391724, 38.122093, 20.878090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183176, -0.313000, 0.931922,
		0.952438, 0.291338, -0.089358,
		-0.243535, 0.903965, 0.351479,
		35.318665, 38.393284, 20.983534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298721, 37.737591, 20.507589>,  <35.489136, 37.760506, 20.737499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298721, 37.737591, 20.507589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561428, 37.436275, 20.521572>,  <36.719051, 37.255486, 20.529961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561428, 37.436275, 20.521572>,  <36.298721, 37.737591, 20.507589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561428, 37.436275, 20.521572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037682, -0.079078, -0.996156,
		0.753155, 0.652921, -0.080321,
		0.656763, -0.753287, 0.034955,
		36.758457, 37.210289, 20.532059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867794, 37.904354, 20.107872>,  <36.298721, 37.737591, 20.507589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867794, 37.904354, 20.107872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870621, 37.504395, 20.103092>,  <36.872318, 37.264420, 20.100224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870621, 37.504395, 20.103092>,  <36.867794, 37.904354, 20.107872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870621, 37.504395, 20.103092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084607, 0.012506, -0.996336,
		0.996389, 0.006031, 0.084688,
		0.007068, -0.999904, -0.011950,
		36.872742, 37.204422, 20.099506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453503, 37.667629, 19.751419>,  <36.867794, 37.904354, 20.107872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453503, 37.667629, 19.751419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216518, 37.346466, 19.725117>,  <37.074326, 37.153767, 19.709335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216518, 37.346466, 19.725117>,  <37.453503, 37.667629, 19.751419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216518, 37.346466, 19.725117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227820, -0.088698, -0.969655,
		0.772712, -0.589467, 0.235469,
		-0.592465, -0.802908, -0.065755,
		37.038780, 37.105595, 19.705391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885101, 37.202023, 19.426991>,  <37.453503, 37.667629, 19.751419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885101, 37.202023, 19.426991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512589, 37.065166, 19.376936>,  <37.289082, 36.983051, 19.346903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512589, 37.065166, 19.376936>,  <37.885101, 37.202023, 19.426991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512589, 37.065166, 19.376936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204659, -0.207177, -0.956657,
		0.301387, -0.916524, 0.262962,
		-0.931279, -0.342141, -0.125135,
		37.233204, 36.962524, 19.339396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959190, 36.590302, 19.050905>,  <37.885101, 37.202023, 19.426991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959190, 36.590302, 19.050905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581966, 36.701103, 18.977255>,  <37.355633, 36.767586, 18.933065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581966, 36.701103, 18.977255>,  <37.959190, 36.590302, 19.050905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581966, 36.701103, 18.977255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071799, -0.370976, -0.925863,
		-0.324773, -0.886367, 0.329965,
		-0.943063, 0.277003, -0.184124,
		37.299049, 36.784206, 18.922018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571674, 35.980274, 18.788031>,  <37.959190, 36.590302, 19.050905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571674, 35.980274, 18.788031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 36.311508, 18.659735>,  <37.277416, 36.510250, 18.582758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 36.311508, 18.659735>,  <37.571674, 35.980274, 18.788031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387764, 36.311508, 18.659735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047717, -0.383696, -0.922226,
		-0.886751, -0.408715, 0.215929,
		-0.459779, 0.828088, -0.320740,
		37.249828, 36.559933, 18.563513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255581, 35.775230, 18.155170>,  <37.571674, 35.980274, 18.788031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255581, 35.775230, 18.155170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246365, 36.171238, 18.099560>,  <37.240833, 36.408844, 18.066193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246365, 36.171238, 18.099560>,  <37.255581, 35.775230, 18.155170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246365, 36.171238, 18.099560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057851, -0.140151, -0.988439,
		-0.998059, -0.014734, 0.060503,
		-0.023043, 0.990021, -0.139026,
		37.239452, 36.468243, 18.057852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713875, 35.885540, 17.748859>,  <37.255581, 35.775230, 18.155170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713875, 35.885540, 17.748859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935059, 36.215782, 17.703932>,  <37.067768, 36.413925, 17.676975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935059, 36.215782, 17.703932>,  <36.713875, 35.885540, 17.748859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935059, 36.215782, 17.703932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116176, -0.057088, -0.991587,
		-0.825068, 0.561358, 0.064348,
		0.552962, 0.825602, -0.112318,
		37.100948, 36.463463, 17.670237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297710, 36.340797, 17.467854>,  <36.713875, 35.885540, 17.748859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297710, 36.340797, 17.467854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676052, 36.430115, 17.373617>,  <36.903057, 36.483707, 17.317076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676052, 36.430115, 17.373617>,  <36.297710, 36.340797, 17.467854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676052, 36.430115, 17.373617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200954, -0.167157, -0.965234,
		-0.254914, 0.960311, -0.113233,
		0.945852, 0.223297, -0.235589,
		36.959808, 36.497105, 17.302940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275013, 36.879978, 16.897341>,  <36.297710, 36.340797, 17.467854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275013, 36.879978, 16.897341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654884, 36.756077, 16.915956>,  <36.882805, 36.681736, 16.927126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654884, 36.756077, 16.915956>,  <36.275013, 36.879978, 16.897341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654884, 36.756077, 16.915956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097089, 0.149837, -0.983932,
		0.297806, 0.938935, 0.172371,
		0.949676, -0.309756, 0.046538,
		36.939789, 36.663151, 16.929918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673828, 37.375454, 16.570833>,  <36.275013, 36.879978, 16.897341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673828, 37.375454, 16.570833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907581, 37.050880, 16.567308>,  <37.047832, 36.856136, 16.565193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907581, 37.050880, 16.567308>,  <36.673828, 37.375454, 16.570833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907581, 37.050880, 16.567308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101546, 0.083899, -0.991287,
		0.805099, 0.578396, 0.131427,
		0.584383, -0.811430, -0.008813,
		37.082897, 36.807453, 16.564665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287182, 37.550682, 16.153580>,  <36.673828, 37.375454, 16.570833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287182, 37.550682, 16.153580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287460, 37.150768, 16.145266>,  <37.287628, 36.910820, 16.140278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287460, 37.150768, 16.145266>,  <37.287182, 37.550682, 16.153580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287460, 37.150768, 16.145266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312684, 0.019962, -0.949647,
		0.949857, -0.005837, 0.312630,
		0.000698, -0.999784, -0.020786,
		37.287670, 36.850834, 16.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950958, 37.251015, 15.880695>,  <37.287182, 37.550682, 16.153580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950958, 37.251015, 15.880695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681744, 36.960804, 15.823224>,  <37.520214, 36.786678, 15.788741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681744, 36.960804, 15.823224>,  <37.950958, 37.251015, 15.880695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681744, 36.960804, 15.823224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389110, -0.182133, -0.903007,
		0.628983, -0.663660, 0.404890,
		-0.673033, -0.725523, -0.143678,
		37.479836, 36.743149, 15.780121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360199, 36.744770, 15.611739>,  <37.950958, 37.251015, 15.880695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360199, 36.744770, 15.611739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986057, 36.651669, 15.505206>,  <37.761574, 36.595806, 15.441286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986057, 36.651669, 15.505206>,  <38.360199, 36.744770, 15.611739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986057, 36.651669, 15.505206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284432, -0.047362, -0.957526,
		0.210258, -0.971381, 0.110504,
		-0.935355, -0.232758, -0.266333,
		37.705452, 36.581841, 15.425306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.178108, 35.234497, 14.936143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.415928, 35.520359, 15.083533>,  <30.558619, 35.691875, 15.171968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.415928, 35.520359, 15.083533>,  <30.178108, 35.234497, 14.936143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415928, 35.520359, 15.083533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184149, -0.325064, 0.927590,
		0.782689, -0.619351, -0.061662,
		0.594547, 0.714659, 0.368477,
		30.594292, 35.734756, 15.194077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419439, 34.963211, 15.507065>,  <30.178108, 35.234497, 14.936143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419439, 34.963211, 15.507065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.515917, 35.343880, 15.583106>,  <30.573803, 35.572281, 15.628731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.515917, 35.343880, 15.583106>,  <30.419439, 34.963211, 15.507065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515917, 35.343880, 15.583106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002172, -0.196415, 0.980518,
		0.970475, -0.236081, -0.049441,
		0.241193, 0.951676, 0.190103,
		30.588274, 35.629383, 15.640137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081673, 34.984280, 15.875686>,  <30.419439, 34.963211, 15.507065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081673, 34.984280, 15.875686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.908728, 35.332645, 15.969128>,  <30.804960, 35.541664, 16.025192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.908728, 35.332645, 15.969128>,  <31.081673, 34.984280, 15.875686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908728, 35.332645, 15.969128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020312, -0.268413, 0.963090,
		0.901471, 0.411659, 0.133741,
		-0.432363, 0.870914, 0.233605,
		30.779018, 35.593918, 16.039209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461184, 35.294289, 16.376961>,  <31.081673, 34.984280, 15.875686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461184, 35.294289, 16.376961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099926, 35.461185, 16.417446>,  <30.883171, 35.561325, 16.441738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099926, 35.461185, 16.417446>,  <31.461184, 35.294289, 16.376961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099926, 35.461185, 16.417446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052493, -0.126662, 0.990556,
		0.426121, 0.899926, 0.092492,
		-0.903142, 0.417241, 0.101213,
		30.828983, 35.586357, 16.447809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382212, 35.257011, 17.014206>,  <31.461184, 35.294289, 16.376961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382212, 35.257011, 17.014206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.014769, 35.398968, 16.944675>,  <30.794304, 35.484142, 16.902958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.014769, 35.398968, 16.944675>,  <31.382212, 35.257011, 17.014206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014769, 35.398968, 16.944675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160775, 0.066187, 0.984769,
		0.360991, 0.932562, -0.003743,
		-0.918606, 0.354891, -0.173825,
		30.739187, 35.505436, 16.892529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306850, 35.899540, 17.486610>,  <31.382212, 35.257011, 17.014206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306850, 35.899540, 17.486610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960424, 35.722309, 17.393991>,  <30.752569, 35.615971, 17.338421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960424, 35.722309, 17.393991>,  <31.306850, 35.899540, 17.486610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960424, 35.722309, 17.393991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268122, 0.020755, 0.963161,
		-0.421949, 0.896243, -0.136774,
		-0.866066, -0.443077, -0.231545,
		30.700605, 35.589386, 17.324528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884321, 36.277023, 17.851501>,  <31.306850, 35.899540, 17.486610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884321, 36.277023, 17.851501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.697506, 35.931477, 17.776018>,  <30.585417, 35.724148, 17.730728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.697506, 35.931477, 17.776018>,  <30.884321, 36.277023, 17.851501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697506, 35.931477, 17.776018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294747, -0.049114, 0.954312,
		-0.833665, 0.501323, -0.231684,
		-0.467040, -0.863865, -0.188708,
		30.557394, 35.672318, 17.719406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356485, 36.382000, 18.249208>,  <30.884321, 36.277023, 17.851501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356485, 36.382000, 18.249208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363665, 35.985920, 18.193821>,  <30.367973, 35.748272, 18.160587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363665, 35.985920, 18.193821>,  <30.356485, 36.382000, 18.249208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363665, 35.985920, 18.193821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019271, -0.138124, 0.990227,
		-0.999653, -0.020442, 0.016603,
		0.017949, -0.990204, -0.138470,
		30.369049, 35.688858, 18.152281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748365, 36.060295, 18.615759>,  <30.356485, 36.382000, 18.249208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748365, 36.060295, 18.615759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.029882, 35.783127, 18.553101>,  <30.198792, 35.616825, 18.515505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.029882, 35.783127, 18.553101>,  <29.748365, 36.060295, 18.615759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029882, 35.783127, 18.553101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023156, -0.198012, 0.979926,
		-0.710030, -0.693290, -0.123314,
		0.703791, -0.692922, -0.156648,
		30.241020, 35.575249, 18.506105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590292, 35.492626, 19.110664>,  <29.748365, 36.060295, 18.615759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590292, 35.492626, 19.110664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972191, 35.429195, 19.010019>,  <30.201330, 35.391136, 18.949633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972191, 35.429195, 19.010019>,  <29.590292, 35.492626, 19.110664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972191, 35.429195, 19.010019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181519, -0.359478, 0.915329,
		-0.235594, -0.919582, -0.314428,
		0.954749, -0.158572, -0.251613,
		30.258615, 35.381622, 18.934536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814924, 34.853149, 19.340536>,  <29.590292, 35.492626, 19.110664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814924, 34.853149, 19.340536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.163946, 35.046612, 19.313034>,  <30.373360, 35.162689, 19.296534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.163946, 35.046612, 19.313034>,  <29.814924, 34.853149, 19.340536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163946, 35.046612, 19.313034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289252, -0.398080, 0.870555,
		0.393682, -0.779492, -0.487245,
		0.872553, 0.483658, -0.068753,
		30.425713, 35.191708, 19.292408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270447, 34.352974, 19.582670>,  <29.814924, 34.853149, 19.340536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270447, 34.352974, 19.582670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.471798, 34.698204, 19.566133>,  <30.592607, 34.905342, 19.556211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.471798, 34.698204, 19.566133>,  <30.270447, 34.352974, 19.582670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471798, 34.698204, 19.566133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477895, -0.238223, 0.845497,
		0.719881, -0.445361, -0.532377,
		0.503376, 0.863078, -0.041344,
		30.622810, 34.957127, 19.553730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062052, 34.153717, 19.593527>,  <30.270447, 34.352974, 19.582670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062052, 34.153717, 19.593527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.992041, 34.526764, 19.719757>,  <30.950033, 34.750591, 19.795494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.992041, 34.526764, 19.719757>,  <31.062052, 34.153717, 19.593527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992041, 34.526764, 19.719757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483384, -0.197833, 0.852761,
		0.857732, 0.301801, -0.416186,
		-0.175029, 0.932619, 0.315574,
		30.939531, 34.806549, 19.814428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698160, 34.424030, 19.940704>,  <31.062052, 34.153717, 19.593527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698160, 34.424030, 19.940704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.404154, 34.660583, 20.073381>,  <31.227749, 34.802513, 20.152988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.404154, 34.660583, 20.073381>,  <31.698160, 34.424030, 19.940704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404154, 34.660583, 20.073381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383687, -0.040573, 0.922572,
		0.559047, 0.805373, -0.197082,
		-0.735018, 0.591379, 0.331693,
		31.183649, 34.837997, 20.172890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483311, 34.610313, 19.734737>,  <31.698160, 34.424030, 19.940704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483311, 34.610313, 19.734737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778309, 34.341778, 19.705362>,  <32.955307, 34.180656, 19.687737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778309, 34.341778, 19.705362>,  <32.483311, 34.610313, 19.734737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778309, 34.341778, 19.705362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238690, -0.157389, -0.958257,
		0.631761, 0.724243, -0.276317,
		0.737499, -0.671343, -0.073437,
		32.999557, 34.140373, 19.683331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037464, 34.768318, 19.152882>,  <32.483311, 34.610313, 19.734737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037464, 34.768318, 19.152882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.042297, 34.373516, 19.216976>,  <33.045197, 34.136635, 19.255432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.042297, 34.373516, 19.216976>,  <33.037464, 34.768318, 19.152882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042297, 34.373516, 19.216976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048926, -0.160639, -0.985800,
		0.998729, 0.004073, -0.050232,
		0.012084, -0.987005, 0.160236,
		33.045921, 34.077415, 19.265047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513813, 34.453861, 18.629976>,  <33.037464, 34.768318, 19.152882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513813, 34.453861, 18.629976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298908, 34.140411, 18.754740>,  <33.169964, 33.952343, 18.829597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298908, 34.140411, 18.754740>,  <33.513813, 34.453861, 18.629976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298908, 34.140411, 18.754740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043203, -0.394899, -0.917708,
		0.842306, -0.479577, 0.246020,
		-0.537265, -0.783620, 0.311907,
		33.137730, 33.905327, 18.848312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830929, 33.836468, 18.316000>,  <33.513813, 34.453861, 18.629976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830929, 33.836468, 18.316000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456619, 33.742725, 18.421371>,  <33.232033, 33.686478, 18.484594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456619, 33.742725, 18.421371>,  <33.830929, 33.836468, 18.316000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456619, 33.742725, 18.421371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111596, -0.511856, -0.851792,
		0.334465, -0.826486, 0.452830,
		-0.935778, -0.234360, 0.263430,
		33.175884, 33.672417, 18.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752327, 33.225681, 18.044769>,  <33.830929, 33.836468, 18.316000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752327, 33.225681, 18.044769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373898, 33.346489, 18.091650>,  <33.146839, 33.418972, 18.119778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373898, 33.346489, 18.091650>,  <33.752327, 33.225681, 18.044769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373898, 33.346489, 18.091650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221376, -0.338568, -0.914529,
		-0.236522, -0.891155, 0.387169,
		-0.946071, 0.302016, 0.117202,
		33.090076, 33.437096, 18.126810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320568, 32.823471, 17.548721>,  <33.752327, 33.225681, 18.044769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320568, 32.823471, 17.548721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.050407, 33.092533, 17.669626>,  <32.888309, 33.253971, 17.742170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.050407, 33.092533, 17.669626>,  <33.320568, 32.823471, 17.548721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050407, 33.092533, 17.669626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434682, -0.032030, -0.900014,
		-0.595718, -0.739262, 0.314024,
		-0.675405, 0.672655, 0.302263,
		32.847786, 33.294331, 17.760305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556454, 32.566193, 17.363783>,  <33.320568, 32.823471, 17.548721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556454, 32.566193, 17.363783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579735, 32.965286, 17.377260>,  <32.593704, 33.204742, 17.385347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579735, 32.965286, 17.377260>,  <32.556454, 32.566193, 17.363783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579735, 32.965286, 17.377260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282422, 0.048830, -0.958046,
		-0.957523, 0.046246, 0.284625,
		0.058204, 0.997736, 0.033695,
		32.597195, 33.264606, 17.387369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943241, 32.839817, 16.895279>,  <32.556454, 32.566193, 17.363783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943241, 32.839817, 16.895279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208672, 33.133114, 16.954638>,  <32.367931, 33.309093, 16.990253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208672, 33.133114, 16.954638>,  <31.943241, 32.839817, 16.895279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208672, 33.133114, 16.954638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191182, 0.357988, -0.913944,
		-0.723266, 0.578102, 0.377736,
		0.663578, 0.733241, 0.148397,
		32.407745, 33.353085, 16.999157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664007, 33.372158, 16.566534>,  <31.943241, 32.839817, 16.895279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664007, 33.372158, 16.566534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051823, 33.469173, 16.580214>,  <32.284512, 33.527382, 16.588421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051823, 33.469173, 16.580214>,  <31.664007, 33.372158, 16.566534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051823, 33.469173, 16.580214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098427, 0.513646, -0.852338,
		-0.224288, 0.823010, 0.521872,
		0.969540, 0.242535, 0.034198,
		32.342686, 33.541935, 16.590473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682800, 34.012779, 16.169125>,  <31.664007, 33.372158, 16.566534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682800, 34.012779, 16.169125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.063015, 33.889282, 16.182728>,  <32.291145, 33.815182, 16.190889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.063015, 33.889282, 16.182728>,  <31.682800, 34.012779, 16.169125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063015, 33.889282, 16.182728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189277, 0.488924, -0.851544,
		0.246283, 0.815861, 0.523178,
		0.950536, -0.308747, 0.034010,
		32.348175, 33.796658, 16.192930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135151, 34.573219, 16.078840>,  <31.682800, 34.012779, 16.169125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135151, 34.573219, 16.078840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.326160, 34.241657, 15.962304>,  <32.440765, 34.042721, 15.892383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.326160, 34.241657, 15.962304>,  <32.135151, 34.573219, 16.078840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326160, 34.241657, 15.962304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177530, 0.415778, -0.891971,
		0.860495, 0.374219, 0.345701,
		0.477527, -0.828909, -0.291340,
		32.469418, 33.992985, 15.874902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708317, 34.956421, 15.586709>,  <32.135151, 34.573219, 16.078840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708317, 34.956421, 15.586709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709583, 34.558537, 15.545636>,  <32.710342, 34.319805, 15.520992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709583, 34.558537, 15.545636>,  <32.708317, 34.956421, 15.586709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709583, 34.558537, 15.545636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299743, 0.098904, -0.948879,
		0.954015, -0.027778, 0.298470,
		0.003162, -0.994709, -0.102682,
		32.710533, 34.260124, 15.514832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419220, 34.762142, 15.316281>,  <32.708317, 34.956421, 15.586709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419220, 34.762142, 15.316281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161934, 34.470222, 15.223617>,  <33.007565, 34.295071, 15.168018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161934, 34.470222, 15.223617>,  <33.419220, 34.762142, 15.316281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161934, 34.470222, 15.223617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216809, 0.116576, -0.969228,
		0.734352, -0.673645, 0.083245,
		-0.643212, -0.729802, -0.231661,
		32.968971, 34.251282, 15.154119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833401, 34.283340, 15.062052>,  <33.419220, 34.762142, 15.316281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833401, 34.283340, 15.062052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476944, 34.165440, 14.924073>,  <33.263069, 34.094700, 14.841287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476944, 34.165440, 14.924073>,  <33.833401, 34.283340, 15.062052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476944, 34.165440, 14.924073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352811, 0.027873, -0.935279,
		0.285291, -0.955167, 0.079153,
		-0.891141, -0.294753, -0.344946,
		33.209602, 34.077015, 14.820589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289234, 33.590752, 15.251779>,  <33.833401, 34.283340, 15.062052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289234, 33.590752, 15.251779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647621, 33.450539, 15.142695>,  <34.862652, 33.366409, 15.077246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647621, 33.450539, 15.142695>,  <34.289234, 33.590752, 15.251779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647621, 33.450539, 15.142695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198077, -0.234194, 0.951798,
		-0.397508, -0.906795, -0.140396,
		0.895965, -0.350538, -0.272709,
		34.916412, 33.345379, 15.060883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374161, 32.875481, 15.616236>,  <34.289234, 33.590752, 15.251779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374161, 32.875481, 15.616236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.742725, 33.001617, 15.525403>,  <34.963863, 33.077301, 15.470903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.742725, 33.001617, 15.525403>,  <34.374161, 32.875481, 15.616236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742725, 33.001617, 15.525403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272055, -0.106209, 0.956403,
		0.277478, -0.943015, -0.183652,
		0.921408, 0.315345, -0.227081,
		35.019146, 33.096222, 15.457278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876827, 32.412586, 15.906102>,  <34.374161, 32.875481, 15.616236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876827, 32.412586, 15.906102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070908, 32.757301, 15.846897>,  <35.187355, 32.964130, 15.811375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070908, 32.757301, 15.846897>,  <34.876827, 32.412586, 15.906102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070908, 32.757301, 15.846897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314745, -0.014205, 0.949070,
		0.815791, -0.507077, -0.278134,
		0.485202, 0.861784, -0.148012,
		35.216469, 33.015835, 15.802494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540607, 32.368500, 16.124550>,  <34.876827, 32.412586, 15.906102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540607, 32.368500, 16.124550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476875, 32.763264, 16.134550>,  <35.438637, 33.000122, 16.140551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476875, 32.763264, 16.134550>,  <35.540607, 32.368500, 16.124550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476875, 32.763264, 16.134550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411348, 0.043344, 0.910447,
		0.897444, 0.155348, -0.412869,
		-0.159331, 0.986908, 0.025003,
		35.429077, 33.059338, 16.142052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130833, 32.607670, 16.384727>,  <35.540607, 32.368500, 16.124550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130833, 32.607670, 16.384727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891884, 32.923615, 16.440233>,  <35.748512, 33.113182, 16.473536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891884, 32.923615, 16.440233>,  <36.130833, 32.607670, 16.384727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891884, 32.923615, 16.440233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274206, 0.038572, 0.960897,
		0.753626, 0.612067, -0.239628,
		-0.597376, 0.789865, 0.138763,
		35.712669, 33.160572, 16.481863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460880, 33.207539, 16.759983>,  <36.130833, 32.607670, 16.384727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460880, 33.207539, 16.759983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076538, 33.260632, 16.857252>,  <35.845932, 33.292488, 16.915613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076538, 33.260632, 16.857252>,  <36.460880, 33.207539, 16.759983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076538, 33.260632, 16.857252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258514, 0.113978, 0.959260,
		0.099607, 0.984577, -0.143830,
		-0.960858, 0.132731, 0.243174,
		35.788280, 33.300449, 16.930204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507149, 33.741940, 17.157158>,  <36.460880, 33.207539, 16.759983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507149, 33.741940, 17.157158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140537, 33.601963, 17.234644>,  <35.920570, 33.517979, 17.281136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140537, 33.601963, 17.234644>,  <36.507149, 33.741940, 17.157158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140537, 33.601963, 17.234644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111510, 0.241560, 0.963958,
		-0.384121, 0.905092, -0.182374,
		-0.916524, -0.349940, 0.193715,
		35.865582, 33.496983, 17.292759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196560, 34.166348, 17.634083>,  <36.507149, 33.741940, 17.157158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196560, 34.166348, 17.634083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001434, 33.818176, 17.660595>,  <35.884357, 33.609276, 17.676502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001434, 33.818176, 17.660595>,  <36.196560, 34.166348, 17.634083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001434, 33.818176, 17.660595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191445, -0.032598, 0.980962,
		-0.851694, 0.491220, 0.182541,
		-0.487818, -0.870425, 0.066278,
		35.855087, 33.557049, 17.680479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760967, 34.164490, 18.290508>,  <36.196560, 34.166348, 17.634083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760967, 34.164490, 18.290508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831333, 33.782627, 18.194435>,  <35.873550, 33.553509, 18.136791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831333, 33.782627, 18.194435>,  <35.760967, 34.164490, 18.290508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831333, 33.782627, 18.194435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110039, -0.223387, 0.968499,
		-0.978236, -0.196800, 0.065753,
		0.175912, -0.954656, -0.240181,
		35.884106, 33.496231, 18.122381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335835, 33.700680, 18.743572>,  <35.760967, 34.164490, 18.290508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335835, 33.700680, 18.743572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627762, 33.461357, 18.611277>,  <35.802917, 33.317764, 18.531900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627762, 33.461357, 18.611277>,  <35.335835, 33.700680, 18.743572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627762, 33.461357, 18.611277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042227, -0.443412, 0.895322,
		-0.682335, -0.667390, -0.298346,
		0.729819, -0.598312, -0.330738,
		35.846706, 33.281864, 18.512054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179909, 33.022358, 18.950037>,  <35.335835, 33.700680, 18.743572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179909, 33.022358, 18.950037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572033, 33.016361, 18.871279>,  <35.807308, 33.012764, 18.824024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572033, 33.016361, 18.871279>,  <35.179909, 33.022358, 18.950037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572033, 33.016361, 18.871279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175208, -0.393860, 0.902317,
		-0.091072, -0.919048, -0.383479,
		0.980310, -0.014987, -0.196895,
		35.866127, 33.011864, 18.812210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464176, 32.482464, 19.405834>,  <35.179909, 33.022358, 18.950037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464176, 32.482464, 19.405834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796902, 32.683720, 19.312080>,  <35.996536, 32.804474, 19.255829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796902, 32.683720, 19.312080>,  <35.464176, 32.482464, 19.405834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796902, 32.683720, 19.312080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326901, -0.102811, 0.939450,
		0.448580, -0.858066, -0.249997,
		0.831812, 0.503143, -0.234383,
		36.046444, 32.834663, 19.241766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010513, 32.074516, 19.634161>,  <35.464176, 32.482464, 19.405834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010513, 32.074516, 19.634161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161201, 32.444145, 19.608320>,  <36.251614, 32.665924, 19.592815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161201, 32.444145, 19.608320>,  <36.010513, 32.074516, 19.634161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161201, 32.444145, 19.608320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530042, -0.157842, 0.833152,
		0.759695, -0.348107, -0.549259,
		0.376722, 0.924071, -0.064600,
		36.274220, 32.721367, 19.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665844, 32.035034, 19.979887>,  <36.010513, 32.074516, 19.634161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665844, 32.035034, 19.979887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596882, 32.428890, 19.968851>,  <36.555504, 32.665203, 19.962229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596882, 32.428890, 19.968851>,  <36.665844, 32.035034, 19.979887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596882, 32.428890, 19.968851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313916, 0.081473, 0.945949,
		0.933666, 0.154429, -0.323141,
		-0.172409, 0.984639, -0.027591,
		36.545158, 32.724281, 19.960573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.342335, 36.106827, 15.112557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970959, 36.239994, 15.046640>,  <37.748131, 36.319893, 15.007091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970959, 36.239994, 15.046640>,  <38.342335, 36.106827, 15.112557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970959, 36.239994, 15.046640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078990, -0.256538, -0.963301,
		-0.362978, -0.907387, 0.211883,
		-0.928443, 0.332921, -0.164792,
		37.692425, 36.339870, 14.997203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937401, 35.589664, 14.767079>,  <38.342335, 36.106827, 15.112557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937401, 35.589664, 14.767079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725388, 35.918373, 14.683407>,  <37.598179, 36.115597, 14.633204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725388, 35.918373, 14.683407>,  <37.937401, 35.589664, 14.767079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725388, 35.918373, 14.683407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038343, -0.269657, -0.962193,
		-0.847111, -0.501972, 0.174436,
		-0.530032, 0.821772, -0.209182,
		37.566380, 36.164906, 14.620652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346607, 35.309395, 14.446769>,  <37.937401, 35.589664, 14.767079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346607, 35.309395, 14.446769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402855, 35.693653, 14.350943>,  <37.436604, 35.924206, 14.293447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402855, 35.693653, 14.350943>,  <37.346607, 35.309395, 14.446769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402855, 35.693653, 14.350943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027154, -0.238137, -0.970852,
		-0.989691, 0.143030, -0.007402,
		0.140624, 0.960642, -0.239566,
		37.445042, 35.981846, 14.279073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872669, 35.583447, 13.854619>,  <37.346607, 35.309395, 14.446769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872669, 35.583447, 13.854619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136974, 35.883327, 13.839965>,  <37.295559, 36.063255, 13.831172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136974, 35.883327, 13.839965>,  <36.872669, 35.583447, 13.854619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136974, 35.883327, 13.839965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079651, 0.021501, -0.996591,
		-0.746357, 0.661428, 0.073922,
		0.660762, 0.749701, -0.036636,
		37.335201, 36.108238, 13.828974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496754, 36.127602, 13.373646>,  <36.872669, 35.583447, 13.854619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496754, 36.127602, 13.373646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886551, 36.212704, 13.402198>,  <37.120430, 36.263767, 13.419329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886551, 36.212704, 13.402198>,  <36.496754, 36.127602, 13.373646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886551, 36.212704, 13.402198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030507, 0.189529, -0.981401,
		-0.222329, 0.958547, 0.178204,
		0.974494, 0.212758, 0.071380,
		37.178898, 36.276531, 13.423612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576378, 36.868721, 13.249042>,  <36.496754, 36.127602, 13.373646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576378, 36.868721, 13.249042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912281, 36.673538, 13.153784>,  <37.113823, 36.556431, 13.096629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912281, 36.673538, 13.153784>,  <36.576378, 36.868721, 13.249042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912281, 36.673538, 13.153784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050809, 0.366055, -0.929205,
		0.540582, 0.792405, 0.282604,
		0.839755, -0.487953, -0.238144,
		37.164207, 36.527153, 13.082340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042057, 37.399208, 12.874804>,  <36.576378, 36.868721, 13.249042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042057, 37.399208, 12.874804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171978, 37.036518, 12.767207>,  <37.249931, 36.818905, 12.702649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171978, 37.036518, 12.767207>,  <37.042057, 37.399208, 12.874804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171978, 37.036518, 12.767207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046660, 0.268701, -0.962093,
		0.944631, 0.325038, 0.044966,
		0.324799, -0.906725, -0.268990,
		37.269417, 36.764500, 12.686510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345993, 37.559975, 12.225907>,  <37.042057, 37.399208, 12.874804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345993, 37.559975, 12.225907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334545, 37.160149, 12.223093>,  <37.327679, 36.920254, 12.221405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334545, 37.160149, 12.223093>,  <37.345993, 37.559975, 12.225907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334545, 37.160149, 12.223093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132316, 0.010764, -0.991149,
		0.990795, -0.027432, -0.132567,
		-0.028616, -0.999566, -0.007035,
		37.325958, 36.860279, 12.220983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846214, 37.341728, 11.791814>,  <37.345993, 37.559975, 12.225907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846214, 37.341728, 11.791814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570671, 37.052704, 11.815073>,  <37.405346, 36.879288, 11.829028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570671, 37.052704, 11.815073>,  <37.846214, 37.341728, 11.791814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570671, 37.052704, 11.815073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054503, -0.028360, -0.998111,
		0.722849, -0.690721, -0.019846,
		-0.688854, -0.722565, 0.058147,
		37.364014, 36.835934, 11.832517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986427, 36.919033, 11.188044>,  <37.846214, 37.341728, 11.791814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986427, 36.919033, 11.188044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622364, 36.803436, 11.306772>,  <37.403927, 36.734077, 11.378010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622364, 36.803436, 11.306772>,  <37.986427, 36.919033, 11.188044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622364, 36.803436, 11.306772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251313, -0.184427, -0.950173,
		0.329336, -0.939398, 0.095229,
		-0.910154, -0.288994, 0.296821,
		37.349319, 36.716740, 11.395819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846909, 36.159027, 10.984058>,  <37.986427, 36.919033, 11.188044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846909, 36.159027, 10.984058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500034, 36.357021, 11.005880>,  <37.291908, 36.475819, 11.018973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500034, 36.357021, 11.005880>,  <37.846909, 36.159027, 10.984058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500034, 36.357021, 11.005880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181386, -0.211940, -0.960302,
		-0.463773, -0.842657, 0.273575,
		-0.867187, 0.494985, 0.054554,
		37.239880, 36.505516, 11.022246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699306, 35.447838, 10.765777>,  <37.846909, 36.159027, 10.984058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699306, 35.447838, 10.765777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744743, 35.147675, 10.505319>,  <37.772007, 34.967579, 10.349044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744743, 35.147675, 10.505319>,  <37.699306, 35.447838, 10.765777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744743, 35.147675, 10.505319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955529, -0.262033, 0.135284,
		-0.272140, 0.606823, -0.746797,
		0.113592, -0.750403, -0.651147,
		37.778820, 34.922554, 10.309976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356190, 35.586510, 10.209394>,  <37.699306, 35.447838, 10.765777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356190, 35.586510, 10.209394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402092, 35.189545, 10.227027>,  <37.429634, 34.951366, 10.237607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402092, 35.189545, 10.227027>,  <37.356190, 35.586510, 10.209394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402092, 35.189545, 10.227027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985832, -0.108303, 0.128084,
		-0.122339, -0.058156, -0.990783,
		0.114754, -0.992415, 0.044083,
		37.436520, 34.891819, 10.240252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881283, 35.154449, 9.775981>,  <37.356190, 35.586510, 10.209394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881283, 35.154449, 9.775981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977398, 34.989338, 10.127407>,  <37.035069, 34.890270, 10.338263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977398, 34.989338, 10.127407>,  <36.881283, 35.154449, 9.775981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977398, 34.989338, 10.127407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966608, -0.018719, 0.255577,
		-0.089051, -0.910638, -0.403495,
		0.240291, -0.412781, 0.878563,
		37.049484, 34.865505, 10.390977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582233, 34.406281, 9.842456>,  <36.881283, 35.154449, 9.775981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582233, 34.406281, 9.842456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221085, 34.280891, 9.724768>,  <36.004395, 34.205658, 9.654155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221085, 34.280891, 9.724768>,  <36.582233, 34.406281, 9.842456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221085, 34.280891, 9.724768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231684, -0.221718, 0.947187,
		-0.362149, 0.923351, 0.127556,
		-0.902868, -0.313470, -0.294220,
		35.950226, 34.186852, 9.636501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114357, 34.891960, 10.156412>,  <36.582233, 34.406281, 9.842456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114357, 34.891960, 10.156412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930984, 34.543118, 10.087988>,  <35.820961, 34.333809, 10.046933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930984, 34.543118, 10.087988>,  <36.114357, 34.891960, 10.156412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930984, 34.543118, 10.087988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058708, -0.162340, 0.984987,
		-0.886788, 0.461593, 0.023222,
		-0.458433, -0.872111, -0.171060,
		35.793453, 34.281483, 10.036670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560810, 34.832100, 10.622887>,  <36.114357, 34.891960, 10.156412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560810, 34.832100, 10.622887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609787, 34.447605, 10.524070>,  <35.639172, 34.216908, 10.464780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609787, 34.447605, 10.524070>,  <35.560810, 34.832100, 10.622887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609787, 34.447605, 10.524070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044338, -0.253965, 0.966196,
		-0.991485, -0.107351, -0.073716,
		0.122443, -0.961237, -0.247043,
		35.646519, 34.159233, 10.449957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917191, 34.509010, 10.817543>,  <35.560810, 34.832100, 10.622887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917191, 34.509010, 10.817543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183514, 34.211754, 10.790867>,  <35.343307, 34.033401, 10.774861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183514, 34.211754, 10.790867>,  <34.917191, 34.509010, 10.817543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183514, 34.211754, 10.790867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316962, -0.362627, 0.876377,
		-0.675454, -0.562358, -0.476985,
		0.665805, -0.743139, -0.066692,
		35.383255, 33.988811, 10.770860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545837, 33.851082, 11.001381>,  <34.917191, 34.509010, 10.817543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545837, 33.851082, 11.001381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936810, 33.814594, 11.077598>,  <35.171394, 33.792702, 11.123327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936810, 33.814594, 11.077598>,  <34.545837, 33.851082, 11.001381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936810, 33.814594, 11.077598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211120, -0.390100, 0.896242,
		-0.007426, -0.916243, -0.400555,
		0.977432, -0.091221, 0.190541,
		35.230038, 33.787228, 11.134760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524929, 33.141468, 11.177921>,  <34.545837, 33.851082, 11.001381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524929, 33.141468, 11.177921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875847, 33.280052, 11.310775>,  <35.086399, 33.363205, 11.390487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875847, 33.280052, 11.310775>,  <34.524929, 33.141468, 11.177921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875847, 33.280052, 11.310775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214587, -0.335846, 0.917148,
		0.429304, -0.875883, -0.220290,
		0.877297, 0.346464, 0.332133,
		35.139034, 33.383991, 11.410415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809010, 32.642914, 11.591424>,  <34.524929, 33.141468, 11.177921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809010, 32.642914, 11.591424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998444, 32.969982, 11.722342>,  <35.112103, 33.166225, 11.800894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998444, 32.969982, 11.722342>,  <34.809010, 32.642914, 11.591424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998444, 32.969982, 11.722342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167918, -0.280971, 0.944912,
		0.864592, -0.502456, 0.004239,
		0.473586, 0.817675, 0.327297,
		35.140518, 33.215286, 11.820532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315552, 32.410946, 12.029199>,  <34.809010, 32.642914, 11.591424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315552, 32.410946, 12.029199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244465, 32.793209, 12.123117>,  <35.201813, 33.022568, 12.179468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244465, 32.793209, 12.123117>,  <35.315552, 32.410946, 12.029199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244465, 32.793209, 12.123117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073461, -0.225045, 0.971575,
		0.981336, 0.189914, -0.030209,
		-0.177717, 0.955661, 0.234796,
		35.191151, 33.079906, 12.193557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905876, 32.591675, 12.433369>,  <35.315552, 32.410946, 12.029199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905876, 32.591675, 12.433369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634731, 32.872540, 12.520514>,  <35.472042, 33.041058, 12.572802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634731, 32.872540, 12.520514>,  <35.905876, 32.591675, 12.433369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634731, 32.872540, 12.520514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327468, 0.023056, 0.944581,
		0.658228, 0.711641, -0.245566,
		-0.677864, 0.702165, 0.217864,
		35.431374, 33.083187, 12.585874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203606, 33.000961, 12.931032>,  <35.905876, 32.591675, 12.433369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203606, 33.000961, 12.931032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817375, 33.093327, 12.978949>,  <35.585636, 33.148746, 13.007698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817375, 33.093327, 12.978949>,  <36.203606, 33.000961, 12.931032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817375, 33.093327, 12.978949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138995, 0.068715, 0.987906,
		0.219886, 0.970546, -0.098445,
		-0.965573, 0.230910, 0.119791,
		35.527702, 33.162601, 13.014886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141884, 33.590057, 13.437696>,  <36.203606, 33.000961, 12.931032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141884, 33.590057, 13.437696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780510, 33.418781, 13.429161>,  <35.563686, 33.316017, 13.424040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780510, 33.418781, 13.429161>,  <36.141884, 33.590057, 13.437696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780510, 33.418781, 13.429161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018800, -0.010156, 0.999772,
		-0.428309, 0.903632, 0.001126,
		-0.903437, -0.428190, -0.021338,
		35.509480, 33.290325, 13.422760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775723, 33.923729, 13.835447>,  <36.141884, 33.590057, 13.437696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775723, 33.923729, 13.835447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533466, 33.605816, 13.819817>,  <35.388115, 33.415070, 13.810438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533466, 33.605816, 13.819817>,  <35.775723, 33.923729, 13.835447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533466, 33.605816, 13.819817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126275, 0.047507, 0.990857,
		-0.785659, 0.605033, -0.129133,
		-0.605636, -0.794782, -0.039076,
		35.351776, 33.367382, 13.808094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123489, 34.196819, 14.120137>,  <35.775723, 33.923729, 13.835447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123489, 34.196819, 14.120137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127949, 33.797367, 14.140573>,  <35.130623, 33.557697, 14.152834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127949, 33.797367, 14.140573>,  <35.123489, 34.196819, 14.120137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127949, 33.797367, 14.140573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242335, 0.046872, 0.969060,
		-0.970129, -0.023180, -0.241481,
		0.011144, -0.998632, 0.051089,
		35.131290, 33.497776, 14.155899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590492, 34.091560, 14.475906>,  <35.123489, 34.196819, 14.120137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590492, 34.091560, 14.475906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802620, 33.753971, 14.508101>,  <34.929897, 33.551418, 14.527419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802620, 33.753971, 14.508101>,  <34.590492, 34.091560, 14.475906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802620, 33.753971, 14.508101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115089, 0.022394, 0.993103,
		-0.839950, -0.535924, -0.085256,
		0.530318, -0.843969, 0.080489,
		34.961716, 33.500782, 14.532248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944790, 33.661232, 14.297404>,  <34.590492, 34.091560, 14.475906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944790, 33.661232, 14.297404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578247, 33.821026, 14.286882>,  <33.358322, 33.916904, 14.280569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578247, 33.821026, 14.286882>,  <33.944790, 33.661232, 14.297404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578247, 33.821026, 14.286882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130748, 0.236519, -0.962789,
		-0.378400, -0.885702, -0.268969,
		-0.916361, 0.399487, -0.026305,
		33.303337, 33.940872, 14.278991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658718, 33.465897, 13.538818>,  <33.944790, 33.661232, 14.297404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658718, 33.465897, 13.538818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433857, 33.765381, 13.679342>,  <33.298939, 33.945072, 13.763657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433857, 33.765381, 13.679342>,  <33.658718, 33.465897, 13.538818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433857, 33.765381, 13.679342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076203, 0.376084, -0.923447,
		-0.823515, -0.545890, -0.154363,
		-0.562154, 0.748709, 0.351309,
		33.265209, 33.989994, 13.784735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128075, 33.708733, 13.061690>,  <33.658718, 33.465897, 13.538818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128075, 33.708733, 13.061690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168636, 34.029785, 13.296809>,  <33.192974, 34.222416, 13.437881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168636, 34.029785, 13.296809>,  <33.128075, 33.708733, 13.061690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168636, 34.029785, 13.296809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039773, 0.587101, -0.808536,
		-0.994050, 0.105370, 0.027614,
		0.101407, 0.802627, 0.587798,
		33.199059, 34.270573, 13.473148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600613, 34.129238, 12.818704>,  <33.128075, 33.708733, 13.061690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600613, 34.129238, 12.818704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861427, 34.372845, 12.999349>,  <33.017914, 34.519009, 13.107736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861427, 34.372845, 12.999349>,  <32.600613, 34.129238, 12.818704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861427, 34.372845, 12.999349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053450, 0.631086, -0.773870,
		-0.756305, 0.480449, 0.444040,
		0.652032, 0.609016, 0.451613,
		33.057037, 34.555550, 13.134832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234360, 34.864155, 12.898741>,  <32.600613, 34.129238, 12.818704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234360, 34.864155, 12.898741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633347, 34.887981, 12.883187>,  <32.872738, 34.902279, 12.873856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633347, 34.887981, 12.883187>,  <32.234360, 34.864155, 12.898741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633347, 34.887981, 12.883187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071114, 0.822139, -0.564828,
		-0.001678, 0.566162, 0.824292,
		0.997467, 0.059566, -0.038883,
		32.932587, 34.905849, 12.871523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307384, 35.474010, 12.584086>,  <32.234360, 34.864155, 12.898741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307384, 35.474010, 12.584086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692978, 35.369976, 12.561836>,  <32.924332, 35.307556, 12.548486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692978, 35.369976, 12.561836>,  <32.307384, 35.474010, 12.584086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692978, 35.369976, 12.561836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103243, 0.558666, -0.822942,
		0.245112, 0.787558, 0.565397,
		0.963982, -0.260087, -0.055626,
		32.982174, 35.291950, 12.545149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589291, 36.045803, 12.360614>,  <32.307384, 35.474010, 12.584086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589291, 36.045803, 12.360614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851963, 35.760433, 12.262804>,  <33.009567, 35.589211, 12.204119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851963, 35.760433, 12.262804>,  <32.589291, 36.045803, 12.360614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851963, 35.760433, 12.262804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086705, 0.393501, -0.915226,
		0.749164, 0.579815, 0.320263,
		0.656686, -0.713423, -0.244524,
		33.048969, 35.546406, 12.189446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340061, 36.596607, 12.783134>,  <32.589291, 36.045803, 12.360614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340061, 36.596607, 12.783134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011993, 36.824291, 12.760080>,  <31.815153, 36.960903, 12.746248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011993, 36.824291, 12.760080>,  <32.340061, 36.596607, 12.783134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011993, 36.824291, 12.760080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194287, -0.182356, 0.963846,
		0.538120, 0.801715, 0.260153,
		-0.820170, 0.569209, -0.057633,
		31.765942, 36.995052, 12.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373695, 37.146839, 13.228141>,  <32.340061, 36.596607, 12.783134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373695, 37.146839, 13.228141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982824, 37.095043, 13.160794>,  <31.748301, 37.063965, 13.120386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982824, 37.095043, 13.160794>,  <32.373695, 37.146839, 13.228141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982824, 37.095043, 13.160794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137263, -0.219924, 0.965812,
		-0.162091, 0.966884, 0.197132,
		-0.977182, -0.129490, -0.168365,
		31.689671, 37.056194, 13.110285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048763, 37.321857, 13.868943>,  <32.373695, 37.146839, 13.228141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048763, 37.321857, 13.868943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753016, 37.144791, 13.666012>,  <31.575567, 37.038551, 13.544253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753016, 37.144791, 13.666012>,  <32.048763, 37.321857, 13.868943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753016, 37.144791, 13.666012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424117, -0.279017, 0.861554,
		-0.522934, 0.852171, 0.018554,
		-0.739368, -0.442666, -0.507328,
		31.531204, 37.011990, 13.513814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401955, 37.504242, 14.132463>,  <32.048763, 37.321857, 13.868943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401955, 37.504242, 14.132463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353516, 37.140610, 13.973011>,  <31.324453, 36.922432, 13.877339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353516, 37.140610, 13.973011>,  <31.401955, 37.504242, 14.132463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353516, 37.140610, 13.973011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361063, -0.333739, 0.870776,
		-0.924646, 0.249378, -0.287821,
		-0.121095, -0.909081, -0.398632,
		31.317186, 36.867886, 13.853421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694584, 37.363216, 14.164054>,  <31.401955, 37.504242, 14.132463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694584, 37.363216, 14.164054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906233, 37.023800, 14.162827>,  <31.033222, 36.820152, 14.162090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906233, 37.023800, 14.162827>,  <30.694584, 37.363216, 14.164054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906233, 37.023800, 14.162827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550759, -0.346184, 0.759487,
		-0.645517, -0.400172, -0.650515,
		0.529123, -0.848539, -0.003069,
		31.064970, 36.769238, 14.161906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173283, 36.854401, 14.298820>,  <30.694584, 37.363216, 14.164054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173283, 36.854401, 14.298820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518709, 36.661304, 14.357085>,  <30.725965, 36.545448, 14.392045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518709, 36.661304, 14.357085>,  <30.173283, 36.854401, 14.298820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518709, 36.661304, 14.357085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392010, -0.461041, 0.796096,
		-0.317147, -0.744584, -0.587377,
		0.863565, -0.482738, 0.145666,
		30.777779, 36.516483, 14.400784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033705, 36.124199, 14.443240>,  <30.173283, 36.854401, 14.298820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033705, 36.124199, 14.443240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389938, 36.123856, 14.625169>,  <30.603678, 36.123650, 14.734326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389938, 36.123856, 14.625169>,  <30.033705, 36.124199, 14.443240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389938, 36.123856, 14.625169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436661, -0.281384, 0.854489,
		0.127246, -0.959595, -0.250970,
		0.890582, -0.000859, 0.454822,
		30.657112, 36.123596, 14.761616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.401321, 39.660793, 11.307817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532570, 39.283276, 11.291903>,  <35.611317, 39.056763, 11.282354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532570, 39.283276, 11.291903>,  <35.401321, 39.660793, 11.307817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532570, 39.283276, 11.291903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304270, -0.145466, 0.941414,
		-0.894292, -0.296789, -0.334900,
		0.328118, -0.943799, -0.039785,
		35.631004, 39.000137, 11.279967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943398, 39.277817, 11.544054>,  <35.401321, 39.660793, 11.307817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943398, 39.277817, 11.544054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263012, 39.041912, 11.590912>,  <35.454781, 38.900372, 11.619026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263012, 39.041912, 11.590912>,  <34.943398, 39.277817, 11.544054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263012, 39.041912, 11.590912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226424, -0.114645, 0.967258,
		-0.557018, -0.799401, -0.225141,
		0.799039, -0.589757, 0.117145,
		35.502724, 38.864986, 11.626056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760876, 38.682926, 11.997693>,  <34.943398, 39.277817, 11.544054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760876, 38.682926, 11.997693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159351, 38.699112, 12.028575>,  <35.398438, 38.708824, 12.047104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159351, 38.699112, 12.028575>,  <34.760876, 38.682926, 11.997693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159351, 38.699112, 12.028575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072494, -0.107196, 0.991591,
		0.048404, -0.993414, -0.103854,
		0.996194, 0.040468, 0.077206,
		35.458210, 38.711250, 12.051737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884296, 38.279850, 12.518816>,  <34.760876, 38.682926, 11.997693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884296, 38.279850, 12.518816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214600, 38.504364, 12.496627>,  <35.412781, 38.639072, 12.483314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214600, 38.504364, 12.496627>,  <34.884296, 38.279850, 12.518816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214600, 38.504364, 12.496627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012436, 0.080210, 0.996700,
		0.563886, -0.823724, 0.059254,
		0.825760, 0.561289, -0.055473,
		35.462326, 38.672752, 12.479985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290497, 38.011662, 13.122730>,  <34.884296, 38.279850, 12.518816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290497, 38.011662, 13.122730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413784, 38.377289, 13.017300>,  <35.487755, 38.596664, 12.954041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413784, 38.377289, 13.017300>,  <35.290497, 38.011662, 13.122730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413784, 38.377289, 13.017300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187656, 0.213203, 0.958817,
		0.932623, -0.344988, -0.105818,
		0.308219, 0.914072, -0.263577,
		35.506248, 38.651512, 12.938227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870270, 38.129856, 13.524262>,  <35.290497, 38.011662, 13.122730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870270, 38.129856, 13.524262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751076, 38.496708, 13.418371>,  <35.679558, 38.716820, 13.354836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751076, 38.496708, 13.418371>,  <35.870270, 38.129856, 13.524262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751076, 38.496708, 13.418371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048578, 0.291537, 0.955325,
		0.953333, 0.271813, -0.131426,
		-0.297986, 0.917128, -0.264728,
		35.661678, 38.771847, 13.338953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332279, 38.592052, 13.908297>,  <35.870270, 38.129856, 13.524262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332279, 38.592052, 13.908297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012547, 38.804573, 13.796016>,  <35.820709, 38.932083, 13.728647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012547, 38.804573, 13.796016>,  <36.332279, 38.592052, 13.908297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012547, 38.804573, 13.796016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053988, 0.401752, 0.914156,
		0.598463, 0.745866, -0.292449,
		-0.799329, 0.531300, -0.280701,
		35.772747, 38.963963, 13.711805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482269, 39.278229, 14.162727>,  <36.332279, 38.592052, 13.908297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482269, 39.278229, 14.162727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.087654, 39.277649, 14.097318>,  <35.850883, 39.277302, 14.058072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.087654, 39.277649, 14.097318>,  <36.482269, 39.278229, 14.162727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087654, 39.277649, 14.097318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145671, 0.462212, 0.874723,
		0.074313, 0.886768, -0.456202,
		-0.986538, -0.001452, -0.163525,
		35.791691, 39.277214, 14.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253658, 39.862118, 14.469306>,  <36.482269, 39.278229, 14.162727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253658, 39.862118, 14.469306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913494, 39.655949, 14.427098>,  <35.709396, 39.532246, 14.401773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913494, 39.655949, 14.427098>,  <36.253658, 39.862118, 14.469306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913494, 39.655949, 14.427098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293198, 0.297764, 0.908500,
		-0.436843, 0.803538, -0.404344,
		-0.850413, -0.515425, -0.105519,
		35.658371, 39.501320, 14.395442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663750, 40.364918, 14.717940>,  <36.253658, 39.862118, 14.469306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663750, 40.364918, 14.717940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553658, 39.982231, 14.755769>,  <35.487602, 39.752621, 14.778466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553658, 39.982231, 14.755769>,  <35.663750, 40.364918, 14.717940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553658, 39.982231, 14.755769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159304, 0.142397, 0.976906,
		-0.948087, 0.253812, -0.191601,
		-0.275234, -0.956714, 0.094571,
		35.471088, 39.695217, 14.784141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065495, 40.382103, 15.097316>,  <35.663750, 40.364918, 14.717940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065495, 40.382103, 15.097316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.202820, 40.008213, 15.134044>,  <35.285217, 39.783878, 15.156080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.202820, 40.008213, 15.134044>,  <35.065495, 40.382103, 15.097316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202820, 40.008213, 15.134044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073380, 0.070770, 0.994790,
		-0.936350, -0.348264, -0.044293,
		0.343315, -0.934721, 0.091821,
		35.305813, 39.727798, 15.161590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558331, 40.044292, 15.480187>,  <35.065495, 40.382103, 15.097316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558331, 40.044292, 15.480187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.871120, 39.806747, 15.555909>,  <35.058796, 39.664219, 15.601342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.871120, 39.806747, 15.555909>,  <34.558331, 40.044292, 15.480187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871120, 39.806747, 15.555909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273416, -0.053884, 0.960385,
		-0.560139, -0.802758, -0.204509,
		0.781977, -0.593865, 0.189305,
		35.105713, 39.628590, 15.612700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915325, 39.625317, 15.573759>,  <34.558331, 40.044292, 15.480187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915325, 39.625317, 15.573759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.559681, 39.766819, 15.689921>,  <33.346294, 39.851723, 15.759619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.559681, 39.766819, 15.689921>,  <33.915325, 39.625317, 15.573759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559681, 39.766819, 15.689921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344350, -0.099056, -0.933601,
		-0.301505, -0.930076, 0.209890,
		-0.889110, 0.353761, 0.290405,
		33.292946, 39.872948, 15.777043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515038, 39.113781, 15.286062>,  <33.915325, 39.625317, 15.573759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515038, 39.113781, 15.286062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.288506, 39.440346, 15.331211>,  <33.152588, 39.636284, 15.358300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.288506, 39.440346, 15.331211>,  <33.515038, 39.113781, 15.286062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288506, 39.440346, 15.331211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223639, -0.020413, -0.974458,
		-0.793256, -0.577108, 0.194142,
		-0.566331, 0.816413, 0.112871,
		33.118607, 39.685268, 15.365072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819172, 39.061031, 14.958180>,  <33.515038, 39.113781, 15.286062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819172, 39.061031, 14.958180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881027, 39.456215, 14.959721>,  <32.918140, 39.693325, 14.960645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881027, 39.456215, 14.959721>,  <32.819172, 39.061031, 14.958180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881027, 39.456215, 14.959721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338600, 0.056662, -0.939223,
		-0.928135, 0.143940, 0.343287,
		0.154643, 0.987963, 0.003852,
		32.927422, 39.752605, 14.960876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503792, 39.259281, 14.376344>,  <32.819172, 39.061031, 14.958180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503792, 39.259281, 14.376344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700958, 39.597252, 14.459412>,  <32.819256, 39.800034, 14.509253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700958, 39.597252, 14.459412>,  <32.503792, 39.259281, 14.376344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700958, 39.597252, 14.459412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144622, 0.314923, -0.938034,
		-0.857974, 0.432336, 0.277426,
		0.492914, 0.844931, 0.207671,
		32.848831, 39.850731, 14.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047115, 39.875134, 14.294035>,  <32.503792, 39.259281, 14.376344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047115, 39.875134, 14.294035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427753, 39.991478, 14.254282>,  <32.656136, 40.061283, 14.230431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427753, 39.991478, 14.254282>,  <32.047115, 39.875134, 14.294035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427753, 39.991478, 14.254282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180372, 0.266618, -0.946774,
		-0.248879, 0.918867, 0.306174,
		0.951591, 0.290858, -0.099383,
		32.713230, 40.078735, 14.224467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993902, 40.449619, 13.857208>,  <32.047115, 39.875134, 14.294035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993902, 40.449619, 13.857208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389038, 40.389099, 13.842916>,  <32.626122, 40.352787, 13.834340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389038, 40.389099, 13.842916>,  <31.993902, 40.449619, 13.857208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389038, 40.389099, 13.842916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026497, 0.390335, -0.920292,
		0.153191, 0.908155, 0.389598,
		0.987841, -0.151304, -0.035732,
		32.685390, 40.343708, 13.832196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274326, 41.065323, 13.491500>,  <31.993902, 40.449619, 13.857208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274326, 41.065323, 13.491500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.528206, 40.756817, 13.472297>,  <32.680534, 40.571712, 13.460775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.528206, 40.756817, 13.472297>,  <32.274326, 41.065323, 13.491500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528206, 40.756817, 13.472297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159533, 0.191565, -0.968428,
		0.756111, 0.607003, 0.244628,
		0.634701, -0.771266, -0.048007,
		32.718616, 40.525436, 13.457894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843033, 41.341423, 13.232304>,  <32.274326, 41.065323, 13.491500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843033, 41.341423, 13.232304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891716, 40.957912, 13.129599>,  <32.920925, 40.727806, 13.067976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891716, 40.957912, 13.129599>,  <32.843033, 41.341423, 13.232304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891716, 40.957912, 13.129599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090069, 0.268286, -0.959119,
		0.988471, 0.093606, 0.119008,
		0.121707, -0.958781, -0.256762,
		32.928226, 40.670277, 13.052570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263493, 41.426655, 12.627058>,  <32.843033, 41.341423, 13.232304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263493, 41.426655, 12.627058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107254, 41.058777, 12.611053>,  <33.013512, 40.838051, 12.601449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107254, 41.058777, 12.611053>,  <33.263493, 41.426655, 12.627058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107254, 41.058777, 12.611053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154660, -0.022710, -0.987707,
		0.907479, -0.391979, 0.151110,
		-0.390592, -0.919694, -0.040014,
		32.990078, 40.782867, 12.599049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672985, 41.105396, 12.176460>,  <33.263493, 41.426655, 12.627058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672985, 41.105396, 12.176460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.341244, 40.882164, 12.165804>,  <33.142197, 40.748222, 12.159410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.341244, 40.882164, 12.165804>,  <33.672985, 41.105396, 12.176460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341244, 40.882164, 12.165804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142496, -0.165175, -0.975916,
		0.540241, -0.813180, 0.216514,
		-0.829358, -0.558083, -0.026640,
		33.092438, 40.714741, 12.157812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802818, 40.478493, 11.747235>,  <33.672985, 41.105396, 12.176460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802818, 40.478493, 11.747235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403717, 40.504524, 11.753493>,  <33.164257, 40.520145, 11.757248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403717, 40.504524, 11.753493>,  <33.802818, 40.478493, 11.747235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403717, 40.504524, 11.753493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021239, -0.086162, -0.996055,
		-0.063470, -0.994154, 0.087351,
		-0.997758, 0.065075, 0.015647,
		33.104389, 40.524048, 11.758187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589050, 39.973923, 11.311287>,  <33.802818, 40.478493, 11.747235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589050, 39.973923, 11.311287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270172, 40.214123, 11.336172>,  <33.078846, 40.358242, 11.351103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270172, 40.214123, 11.336172>,  <33.589050, 39.973923, 11.311287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270172, 40.214123, 11.336172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101068, -0.031154, -0.994392,
		-0.595197, -0.799016, 0.085527,
		-0.797199, 0.600503, 0.062212,
		33.031013, 40.394272, 11.354836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014065, 39.619263, 11.072975>,  <33.589050, 39.973923, 11.311287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014065, 39.619263, 11.072975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952755, 40.011543, 11.024426>,  <32.915970, 40.246910, 10.995297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952755, 40.011543, 11.024426>,  <33.014065, 39.619263, 11.072975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952755, 40.011543, 11.024426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009929, -0.124345, -0.992189,
		-0.988134, -0.150872, 0.028796,
		-0.153275, 0.980702, -0.121371,
		32.906773, 40.305756, 10.988015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446732, 39.488594, 10.505990>,  <33.014065, 39.619263, 11.072975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446732, 39.488594, 10.505990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148090, 39.267132, 10.358451>,  <31.968906, 39.134254, 10.269927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148090, 39.267132, 10.358451>,  <32.446732, 39.488594, 10.505990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148090, 39.267132, 10.358451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100743, -0.453949, 0.885314,
		-0.657598, 0.698137, 0.283142,
		-0.746603, -0.553657, -0.368848,
		31.924110, 39.101036, 10.247796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810532, 39.496220, 11.013836>,  <32.446732, 39.488594, 10.505990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810532, 39.496220, 11.013836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.782297, 39.167057, 10.788328>,  <31.765356, 38.969559, 10.653024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.782297, 39.167057, 10.788328>,  <31.810532, 39.496220, 11.013836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782297, 39.167057, 10.788328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096374, -0.556909, 0.824963,
		-0.992839, 0.112562, -0.039999,
		-0.070584, -0.822911, -0.563769,
		31.761122, 38.920185, 10.619198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184761, 39.225559, 11.192008>,  <31.810532, 39.496220, 11.013836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184761, 39.225559, 11.192008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391842, 38.926159, 11.026246>,  <31.516090, 38.746517, 10.926788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391842, 38.926159, 11.026246>,  <31.184761, 39.225559, 11.192008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391842, 38.926159, 11.026246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165006, -0.562624, 0.810079,
		-0.839499, -0.350999, -0.414778,
		0.517700, -0.748502, -0.414405,
		31.547152, 38.701607, 10.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798058, 38.640411, 11.270561>,  <31.184761, 39.225559, 11.192008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798058, 38.640411, 11.270561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162054, 38.488274, 11.204519>,  <31.380451, 38.396992, 11.164894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162054, 38.488274, 11.204519>,  <30.798058, 38.640411, 11.270561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162054, 38.488274, 11.204519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127985, -0.636411, 0.760658,
		-0.394384, -0.671060, -0.627806,
		0.909989, -0.380341, -0.165104,
		31.435051, 38.374172, 11.154987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760632, 37.824711, 11.173668>,  <30.798058, 38.640411, 11.270561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760632, 37.824711, 11.173668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144415, 37.897076, 11.260122>,  <31.374685, 37.940495, 11.311995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144415, 37.897076, 11.260122>,  <30.760632, 37.824711, 11.173668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144415, 37.897076, 11.260122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039897, -0.671932, 0.739538,
		0.279020, -0.718177, -0.637471,
		0.959456, 0.180913, 0.216136,
		31.432251, 37.951351, 11.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102001, 37.137573, 11.322861>,  <30.760632, 37.824711, 11.173668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102001, 37.137573, 11.322861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358984, 37.392429, 11.493180>,  <31.513174, 37.545341, 11.595372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358984, 37.392429, 11.493180>,  <31.102001, 37.137573, 11.322861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358984, 37.392429, 11.493180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099976, -0.481205, 0.870888,
		0.759771, -0.602079, -0.245455,
		0.642458, 0.637136, 0.425800,
		31.551722, 37.583569, 11.620920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671282, 36.720451, 11.567017>,  <31.102001, 37.137573, 11.322861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671282, 36.720451, 11.567017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692141, 37.059116, 11.778845>,  <31.704657, 37.262314, 11.905942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692141, 37.059116, 11.778845>,  <31.671282, 36.720451, 11.567017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692141, 37.059116, 11.778845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080673, -0.524987, 0.847278,
		0.995375, -0.086907, 0.040925,
		0.052149, 0.846662, 0.529570,
		31.707785, 37.313114, 11.937716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270279, 36.613129, 12.054502>,  <31.671282, 36.720451, 11.567017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270279, 36.613129, 12.054502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.037537, 36.899654, 12.208560>,  <31.897890, 37.071568, 12.300995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.037537, 36.899654, 12.208560>,  <32.270279, 36.613129, 12.054502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037537, 36.899654, 12.208560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014190, -0.464553, 0.885432,
		0.813165, 0.520663, 0.260140,
		-0.581860, 0.716311, 0.385147,
		31.862978, 37.114548, 12.324104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898438, 36.398952, 11.720038>,  <32.270279, 36.613129, 12.054502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898438, 36.398952, 11.720038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000664, 36.012260, 11.724464>,  <33.062000, 35.780247, 11.727119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000664, 36.012260, 11.724464>,  <32.898438, 36.398952, 11.720038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000664, 36.012260, 11.724464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018348, -0.006592, -0.999810,
		0.966617, 0.255722, 0.016052,
		0.255567, -0.966728, 0.011064,
		33.077335, 35.722240, 11.727784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514103, 36.387871, 11.282330>,  <32.898438, 36.398952, 11.720038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514103, 36.387871, 11.282330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363083, 36.017624, 11.292766>,  <33.272472, 35.795475, 11.299027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363083, 36.017624, 11.292766>,  <33.514103, 36.387871, 11.282330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363083, 36.017624, 11.292766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044347, -0.010069, -0.998965,
		0.924927, -0.378315, -0.037247,
		-0.377549, -0.925622, 0.026090,
		33.249817, 35.739937, 11.300592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919415, 35.979992, 10.778218>,  <33.514103, 36.387871, 11.282330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919415, 35.979992, 10.778218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.578873, 35.781689, 10.846830>,  <33.374550, 35.662708, 10.887998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.578873, 35.781689, 10.846830>,  <33.919415, 35.979992, 10.778218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578873, 35.781689, 10.846830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097433, -0.171855, -0.980292,
		0.515466, -0.851287, 0.098006,
		-0.851353, -0.495758, 0.171529,
		33.323467, 35.632961, 10.898289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074711, 35.373566, 10.485500>,  <33.919415, 35.979992, 10.778218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074711, 35.373566, 10.485500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676216, 35.392529, 10.514529>,  <33.437119, 35.403908, 10.531946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676216, 35.392529, 10.514529>,  <34.074711, 35.373566, 10.485500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676216, 35.392529, 10.514529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085691, -0.412151, -0.907077,
		-0.013095, -0.909881, 0.414662,
		-0.996236, 0.047410, 0.072572,
		33.377346, 35.406754, 10.536301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807148, 34.821972, 10.087162>,  <34.074711, 35.373566, 10.485500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807148, 34.821972, 10.087162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.482155, 35.051636, 10.127576>,  <33.287159, 35.189434, 10.151824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.482155, 35.051636, 10.127576>,  <33.807148, 34.821972, 10.087162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482155, 35.051636, 10.127576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315044, -0.286604, -0.904768,
		-0.490524, -0.766942, 0.413747,
		-0.812486, 0.574159, 0.101034,
		33.238407, 35.223885, 10.157887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247135, 34.430481, 10.027421>,  <33.807148, 34.821972, 10.087162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247135, 34.430481, 10.027421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131630, 34.795422, 9.911325>,  <33.062328, 35.014385, 9.841668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131630, 34.795422, 9.911325>,  <33.247135, 34.430481, 10.027421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131630, 34.795422, 9.911325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205484, -0.355148, -0.911946,
		-0.935090, -0.203696, 0.290026,
		-0.288762, 0.912347, -0.290239,
		33.045002, 35.069126, 9.824254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671234, 34.358311, 9.592558>,  <33.247135, 34.430481, 10.027421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671234, 34.358311, 9.592558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791687, 34.728477, 9.500533>,  <32.863960, 34.950577, 9.445318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791687, 34.728477, 9.500533>,  <32.671234, 34.358311, 9.592558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791687, 34.728477, 9.500533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236238, -0.161340, -0.958207,
		-0.923855, 0.342900, 0.170033,
		0.301137, 0.925413, -0.230061,
		32.882027, 35.006100, 9.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179173, 34.509357, 9.167236>,  <32.671234, 34.358311, 9.592558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179173, 34.509357, 9.167236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.498348, 34.741924, 9.103683>,  <32.689854, 34.881462, 9.065552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.498348, 34.741924, 9.103683>,  <32.179173, 34.509357, 9.167236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498348, 34.741924, 9.103683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031978, -0.222396, -0.974432,
		-0.601884, 0.782622, -0.158867,
		0.797943, 0.581414, -0.158883,
		32.737732, 34.916348, 9.056019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007301, 35.109829, 8.703360>,  <32.179173, 34.509357, 9.167236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007301, 35.109829, 8.703360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392765, 35.012730, 8.658753>,  <32.624043, 34.954472, 8.631989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392765, 35.012730, 8.658753>,  <32.007301, 35.109829, 8.703360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392765, 35.012730, 8.658753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163550, -0.206052, -0.964777,
		0.211219, 0.947954, -0.238265,
		0.963659, -0.242748, -0.111515,
		32.681862, 34.939907, 8.625299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.828514, 34.164890, 24.234362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226566, 34.164051, 24.273771>,  <34.465397, 34.163548, 24.297417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226566, 34.164051, 24.273771>,  <33.828514, 34.164890, 24.234362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226566, 34.164051, 24.273771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098508, -0.006535, -0.995115,
		0.002732, 0.999977, -0.006297,
		0.995133, -0.002098, 0.098524,
		34.525105, 34.163422, 24.303328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117657, 34.809174, 23.846312>,  <33.828514, 34.164890, 24.234362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117657, 34.809174, 23.846312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398621, 34.527424, 23.887251>,  <34.567200, 34.358376, 23.911816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398621, 34.527424, 23.887251>,  <34.117657, 34.809174, 23.846312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398621, 34.527424, 23.887251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234761, 0.093517, -0.967544,
		0.671942, 0.703642, 0.231047,
		0.702411, -0.704374, 0.102350,
		34.609344, 34.316113, 23.917955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736980, 35.094299, 23.600536>,  <34.117657, 34.809174, 23.846312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736980, 35.094299, 23.600536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765900, 34.697052, 23.563686>,  <34.783249, 34.458702, 23.541576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765900, 34.697052, 23.563686>,  <34.736980, 35.094299, 23.600536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765900, 34.697052, 23.563686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042560, 0.095354, -0.994533,
		0.996475, 0.067980, 0.049161,
		0.072296, -0.993120, -0.092124,
		34.787590, 34.399117, 23.536049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180611, 35.030529, 22.950886>,  <34.736980, 35.094299, 23.600536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180611, 35.030529, 22.950886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016781, 34.670635, 23.011196>,  <34.918484, 34.454700, 23.047382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016781, 34.670635, 23.011196>,  <35.180611, 35.030529, 22.950886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016781, 34.670635, 23.011196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094643, -0.206290, -0.973903,
		0.907354, -0.384617, 0.169644,
		-0.409576, -0.899730, 0.150777,
		34.893909, 34.400715, 23.056429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375439, 34.833656, 22.328918>,  <35.180611, 35.030529, 22.950886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375439, 34.833656, 22.328918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125793, 34.538189, 22.430786>,  <34.976006, 34.360909, 22.491907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125793, 34.538189, 22.430786>,  <35.375439, 34.833656, 22.328918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125793, 34.538189, 22.430786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128313, -0.224619, -0.965962,
		0.770727, -0.635546, 0.045406,
		-0.624112, -0.738666, 0.254669,
		34.938560, 34.316589, 22.507187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482513, 34.147243, 21.885883>,  <35.375439, 34.833656, 22.328918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482513, 34.147243, 21.885883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106514, 34.170612, 22.020334>,  <34.880913, 34.184635, 22.101006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106514, 34.170612, 22.020334>,  <35.482513, 34.147243, 21.885883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106514, 34.170612, 22.020334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338320, -0.286624, -0.896318,
		0.043978, -0.956260, 0.289192,
		-0.940003, 0.058421, 0.336127,
		34.824512, 34.188137, 22.121172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120113, 33.726410, 21.384575>,  <35.482513, 34.147243, 21.885883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120113, 33.726410, 21.384575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792259, 33.885567, 21.549444>,  <34.595547, 33.981060, 21.648365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792259, 33.885567, 21.549444>,  <35.120113, 33.726410, 21.384575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792259, 33.885567, 21.549444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532320, -0.263023, -0.804646,
		-0.211743, -0.878925, 0.427383,
		-0.819634, 0.397882, 0.412176,
		34.546368, 34.004932, 21.673096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693741, 33.315304, 21.188633>,  <35.120113, 33.726410, 21.384575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693741, 33.315304, 21.188633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476379, 33.635838, 21.288691>,  <34.345963, 33.828159, 21.348726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476379, 33.635838, 21.288691>,  <34.693741, 33.315304, 21.188633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476379, 33.635838, 21.288691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552435, -0.116991, -0.825305,
		-0.632082, -0.586663, 0.506259,
		-0.543404, 0.801336, 0.250145,
		34.313358, 33.876240, 21.363733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006828, 33.088753, 21.161747>,  <34.693741, 33.315304, 21.188633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006828, 33.088753, 21.161747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954037, 33.484985, 21.147215>,  <33.922359, 33.722725, 21.138494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954037, 33.484985, 21.147215>,  <34.006828, 33.088753, 21.161747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954037, 33.484985, 21.147215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533680, -0.101896, -0.839526,
		-0.835324, -0.091412, 0.542104,
		-0.131981, 0.990586, -0.036332,
		33.914444, 33.782162, 21.136316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213936, 33.193619, 21.090424>,  <34.006828, 33.088753, 21.161747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213936, 33.193619, 21.090424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393410, 33.526234, 20.959442>,  <33.501095, 33.725803, 20.880854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393410, 33.526234, 20.959442>,  <33.213936, 33.193619, 21.090424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393410, 33.526234, 20.959442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407899, -0.135467, -0.902922,
		-0.795174, 0.538693, 0.278402,
		0.448683, 0.831540, -0.327452,
		33.528015, 33.775696, 20.861206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687012, 33.557533, 20.781914>,  <33.213936, 33.193619, 21.090424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687012, 33.557533, 20.781914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009872, 33.727539, 20.618031>,  <33.203590, 33.829544, 20.519701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009872, 33.727539, 20.618031>,  <32.687012, 33.557533, 20.781914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009872, 33.727539, 20.618031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493159, 0.103972, -0.863704,
		-0.324491, 0.899194, 0.293522,
		0.807156, 0.425017, -0.409707,
		33.252018, 33.855045, 20.495119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368664, 34.154785, 20.321554>,  <32.687012, 33.557533, 20.781914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368664, 34.154785, 20.321554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750511, 34.102657, 20.214424>,  <32.979618, 34.071381, 20.150146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750511, 34.102657, 20.214424>,  <32.368664, 34.154785, 20.321554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750511, 34.102657, 20.214424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270118, 0.000073, -0.962827,
		0.125493, 0.991472, -0.035132,
		0.954614, -0.130318, -0.267824,
		33.036896, 34.063560, 20.134077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003189, 34.875496, 20.485043>,  <32.368664, 34.154785, 20.321554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003189, 34.875496, 20.485043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.620037, 34.967655, 20.553604>,  <31.390144, 35.022949, 20.594742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.620037, 34.967655, 20.553604>,  <32.003189, 34.875496, 20.485043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620037, 34.967655, 20.553604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213477, 0.172106, 0.961669,
		0.192063, 0.957757, -0.214041,
		-0.957883, 0.230394, 0.171403,
		31.332672, 35.036774, 20.605024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975256, 35.554356, 20.662788>,  <32.003189, 34.875496, 20.485043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975256, 35.554356, 20.662788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659769, 35.381393, 20.837578>,  <31.470476, 35.277615, 20.942451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659769, 35.381393, 20.837578>,  <31.975256, 35.554356, 20.662788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659769, 35.381393, 20.837578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327518, 0.305971, 0.893932,
		-0.520246, 0.848176, -0.099703,
		-0.788718, -0.432410, 0.436973,
		31.423153, 35.251671, 20.968670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631889, 36.050980, 21.082569>,  <31.975256, 35.554356, 20.662788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631889, 36.050980, 21.082569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.492682, 35.702599, 21.221325>,  <31.409157, 35.493572, 21.304579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.492682, 35.702599, 21.221325>,  <31.631889, 36.050980, 21.082569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492682, 35.702599, 21.221325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171616, 0.304579, 0.936899,
		-0.921645, 0.385590, 0.043469,
		-0.348019, -0.870949, 0.346887,
		31.388275, 35.441315, 21.325392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130421, 36.197052, 21.497011>,  <31.631889, 36.050980, 21.082569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130421, 36.197052, 21.497011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274658, 35.841656, 21.610537>,  <31.361200, 35.628418, 21.678652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274658, 35.841656, 21.610537>,  <31.130421, 36.197052, 21.497011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274658, 35.841656, 21.610537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048809, 0.321844, 0.945534,
		-0.931446, -0.327099, 0.159421,
		0.360592, -0.888494, 0.283815,
		31.382835, 35.575108, 21.695681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792570, 36.060986, 22.049585>,  <31.130421, 36.197052, 21.497011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792570, 36.060986, 22.049585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111330, 35.823349, 22.093416>,  <31.302586, 35.680767, 22.119715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111330, 35.823349, 22.093416>,  <30.792570, 36.060986, 22.049585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111330, 35.823349, 22.093416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095673, 0.303210, 0.948109,
		-0.596485, -0.745066, 0.298467,
		0.796902, -0.594088, 0.109577,
		31.350401, 35.645123, 22.126289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782948, 35.981495, 22.747614>,  <30.792570, 36.060986, 22.049585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782948, 35.981495, 22.747614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133394, 35.803448, 22.673542>,  <31.343662, 35.696617, 22.629099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133394, 35.803448, 22.673542>,  <30.782948, 35.981495, 22.747614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133394, 35.803448, 22.673542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306352, 0.217436, 0.926752,
		-0.372252, -0.868671, 0.326862,
		0.876114, -0.445121, -0.185178,
		31.396229, 35.669910, 22.617989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859171, 35.473675, 23.296114>,  <30.782948, 35.981495, 22.747614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859171, 35.473675, 23.296114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214417, 35.587452, 23.151703>,  <31.427565, 35.655720, 23.065056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214417, 35.587452, 23.151703>,  <30.859171, 35.473675, 23.296114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214417, 35.587452, 23.151703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313701, 0.198954, 0.928445,
		0.335921, -0.937820, 0.087463,
		0.888115, 0.284447, -0.361028,
		31.480852, 35.672787, 23.043394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396080, 35.142887, 23.817722>,  <30.859171, 35.473675, 23.296114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396080, 35.142887, 23.817722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611212, 35.434162, 23.647791>,  <31.740292, 35.608929, 23.545832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611212, 35.434162, 23.647791>,  <31.396080, 35.142887, 23.817722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611212, 35.434162, 23.647791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316182, 0.292904, 0.902350,
		0.781515, -0.619635, -0.072707,
		0.537831, 0.728190, -0.424827,
		31.772562, 35.652618, 23.520344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116234, 35.122807, 24.144621>,  <31.396080, 35.142887, 23.817722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116234, 35.122807, 24.144621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.066036, 35.475464, 23.962654>,  <32.035919, 35.687057, 23.853474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.066036, 35.475464, 23.962654>,  <32.116234, 35.122807, 24.144621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066036, 35.475464, 23.962654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391006, 0.465381, 0.794063,
		0.911793, -0.078226, -0.403131,
		-0.125493, 0.881647, -0.454918,
		32.028389, 35.739960, 23.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611092, 35.490593, 24.389923>,  <32.116234, 35.122807, 24.144621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611092, 35.490593, 24.389923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358315, 35.787674, 24.301342>,  <32.206650, 35.965923, 24.248194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358315, 35.787674, 24.301342>,  <32.611092, 35.490593, 24.389923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358315, 35.787674, 24.301342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092138, 0.355711, 0.930043,
		0.769521, 0.567327, -0.293219,
		-0.631940, 0.742705, -0.221455,
		32.168732, 36.010487, 24.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863384, 36.070889, 24.806108>,  <32.611092, 35.490593, 24.389923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863384, 36.070889, 24.806108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512589, 36.216930, 24.681150>,  <32.302113, 36.304554, 24.606176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512589, 36.216930, 24.681150>,  <32.863384, 36.070889, 24.806108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512589, 36.216930, 24.681150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173725, 0.365234, 0.914562,
		0.448007, 0.856332, -0.256878,
		-0.876989, 0.365104, -0.312393,
		32.249493, 36.326462, 24.587433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766891, 36.851807, 25.062218>,  <32.863384, 36.070889, 24.806108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766891, 36.851807, 25.062218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405540, 36.688900, 25.008476>,  <32.188732, 36.591156, 24.976231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405540, 36.688900, 25.008476>,  <32.766891, 36.851807, 25.062218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405540, 36.688900, 25.008476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288544, 0.345446, 0.892978,
		-0.317265, 0.845461, -0.429580,
		-0.903375, -0.407263, -0.134355,
		32.134529, 36.566723, 24.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245159, 37.428741, 25.103376>,  <32.766891, 36.851807, 25.062218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245159, 37.428741, 25.103376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048321, 37.095245, 25.203556>,  <31.930218, 36.895149, 25.263664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048321, 37.095245, 25.203556>,  <32.245159, 37.428741, 25.103376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048321, 37.095245, 25.203556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274195, 0.421491, 0.864386,
		-0.826232, 0.356688, -0.436020,
		-0.492095, -0.833738, 0.250447,
		31.900692, 36.845123, 25.278690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561218, 37.549297, 25.281050>,  <32.245159, 37.428741, 25.103376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561218, 37.549297, 25.281050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.620995, 37.192974, 25.452688>,  <31.656860, 36.979179, 25.555672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.620995, 37.192974, 25.452688>,  <31.561218, 37.549297, 25.281050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620995, 37.192974, 25.452688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404137, 0.341037, 0.848744,
		-0.902408, -0.300249, -0.309046,
		0.149439, -0.890811, 0.429097,
		31.665827, 36.925732, 25.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665443, 38.088131, 25.740524>,  <31.561218, 37.549297, 25.281050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665443, 38.088131, 25.740524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529053, 38.402164, 25.947359>,  <31.447218, 38.590584, 26.071461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529053, 38.402164, 25.947359>,  <31.665443, 38.088131, 25.740524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529053, 38.402164, 25.947359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226464, 0.602450, -0.765355,
		-0.912387, -0.143865, -0.383214,
		-0.340975, 0.785084, 0.517087,
		31.426760, 38.637691, 26.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091471, 38.537361, 25.357605>,  <31.665443, 38.088131, 25.740524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091471, 38.537361, 25.357605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343517, 38.726120, 25.604269>,  <31.494745, 38.839375, 25.752268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343517, 38.726120, 25.604269>,  <31.091471, 38.537361, 25.357605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343517, 38.726120, 25.604269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280567, 0.602141, -0.747468,
		-0.724043, 0.644006, 0.247020,
		0.630115, 0.471893, 0.616662,
		31.532551, 38.867687, 25.789268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002991, 39.247604, 25.257698>,  <31.091471, 38.537361, 25.357605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002991, 39.247604, 25.257698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374039, 39.184929, 25.393324>,  <31.596668, 39.147324, 25.474699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374039, 39.184929, 25.393324>,  <31.002991, 39.247604, 25.257698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374039, 39.184929, 25.393324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357149, 0.637870, -0.682324,
		-0.109368, 0.754036, 0.647664,
		0.927622, -0.156688, 0.339066,
		31.652325, 39.137924, 25.495043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296310, 39.893833, 25.407936>,  <31.002991, 39.247604, 25.257698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296310, 39.893833, 25.407936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577320, 39.624531, 25.315687>,  <31.745926, 39.462948, 25.260338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577320, 39.624531, 25.315687>,  <31.296310, 39.893833, 25.407936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577320, 39.624531, 25.315687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358519, 0.614753, -0.702526,
		0.614753, 0.410861, 0.673254,
		0.702526, -0.673254, -0.230620,
		31.788078, 39.422554, 25.246502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853157, 40.312595, 25.183979>,  <31.296310, 39.893833, 25.407936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853157, 40.312595, 25.183979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975197, 39.948746, 25.071194>,  <32.048420, 39.730438, 25.003523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975197, 39.948746, 25.071194>,  <31.853157, 40.312595, 25.183979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975197, 39.948746, 25.071194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553909, 0.410347, -0.724431,
		0.774661, 0.064841, 0.629044,
		0.305099, -0.909621, -0.281964,
		32.066727, 39.675858, 24.986605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613373, 40.383556, 25.154726>,  <31.853157, 40.312595, 25.183979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613373, 40.383556, 25.154726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501019, 40.087730, 24.910053>,  <32.433605, 39.910236, 24.763250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501019, 40.087730, 24.910053>,  <32.613373, 40.383556, 25.154726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501019, 40.087730, 24.910053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495485, 0.434091, -0.752369,
		0.821948, -0.514407, 0.244513,
		-0.280883, -0.739561, -0.611682,
		32.416752, 39.865864, 24.726549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171703, 40.427803, 24.693045>,  <32.613373, 40.383556, 25.154726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171703, 40.427803, 24.693045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878872, 40.239826, 24.495779>,  <32.703175, 40.127041, 24.377420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878872, 40.239826, 24.495779>,  <33.171703, 40.427803, 24.693045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878872, 40.239826, 24.495779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347021, 0.365701, -0.863620,
		0.586206, -0.803376, -0.104641,
		-0.732078, -0.469947, -0.493164,
		32.659248, 40.098843, 24.347830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533302, 40.025146, 24.245634>,  <33.171703, 40.427803, 24.693045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533302, 40.025146, 24.245634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158279, 40.035503, 24.106884>,  <32.933266, 40.041718, 24.023634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158279, 40.035503, 24.106884>,  <33.533302, 40.025146, 24.245634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158279, 40.035503, 24.106884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337103, 0.313496, -0.887740,
		0.085755, -0.949236, -0.302649,
		-0.937554, 0.025896, -0.346874,
		32.877014, 40.043274, 24.002821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531094, 39.695473, 23.619183>,  <33.533302, 40.025146, 24.245634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531094, 39.695473, 23.619183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208359, 39.930984, 23.599733>,  <33.014717, 40.072292, 23.588064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208359, 39.930984, 23.599733>,  <33.531094, 39.695473, 23.619183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208359, 39.930984, 23.599733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266593, 0.289408, -0.919332,
		-0.527208, -0.754710, -0.390467,
		-0.806833, 0.588775, -0.048622,
		32.966309, 40.107616, 23.585146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195148, 39.533901, 22.956869>,  <33.531094, 39.695473, 23.619183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195148, 39.533901, 22.956869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067127, 39.899326, 23.057249>,  <32.990314, 40.118580, 23.117477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067127, 39.899326, 23.057249>,  <33.195148, 39.533901, 22.956869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067127, 39.899326, 23.057249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269683, 0.341775, -0.900256,
		-0.908206, -0.220453, -0.355758,
		-0.320053, 0.913560, 0.250949,
		32.971111, 40.173393, 23.132534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683495, 39.718792, 22.453533>,  <33.195148, 39.533901, 22.956869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683495, 39.718792, 22.453533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821857, 40.063709, 22.601482>,  <32.904877, 40.270660, 22.690252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821857, 40.063709, 22.601482>,  <32.683495, 39.718792, 22.453533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821857, 40.063709, 22.601482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065968, 0.370880, -0.926335,
		-0.935947, 0.344824, 0.071406,
		0.345906, 0.862290, 0.369872,
		32.925629, 40.322395, 22.712444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206989, 40.269375, 22.170639>,  <32.683495, 39.718792, 22.453533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206989, 40.269375, 22.170639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551086, 40.443268, 22.277210>,  <32.757545, 40.547604, 22.341154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551086, 40.443268, 22.277210>,  <32.206989, 40.269375, 22.170639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551086, 40.443268, 22.277210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041547, 0.461029, -0.886412,
		-0.508187, 0.773600, 0.378535,
		0.860244, 0.434736, 0.266429,
		32.809158, 40.573689, 22.357140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125935, 40.997452, 22.046873>,  <32.206989, 40.269375, 22.170639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125935, 40.997452, 22.046873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518917, 40.922989, 22.042356>,  <32.754707, 40.878311, 22.039646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518917, 40.922989, 22.042356>,  <32.125935, 40.997452, 22.046873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518917, 40.922989, 22.042356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070894, 0.428768, -0.900629,
		0.172501, 0.884026, 0.434443,
		0.982455, -0.186159, -0.011291,
		32.813652, 40.867142, 22.038969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346104, 41.581856, 21.705460>,  <32.125935, 40.997452, 22.046873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346104, 41.581856, 21.705460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648014, 41.320778, 21.679232>,  <32.829159, 41.164131, 21.663494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648014, 41.320778, 21.679232>,  <32.346104, 41.581856, 21.705460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648014, 41.320778, 21.679232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109602, 0.224032, -0.968399,
		0.646762, 0.723737, 0.240631,
		0.754776, -0.652697, -0.065572,
		32.874447, 41.124969, 21.659559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824501, 41.878582, 21.251982>,  <32.346104, 41.581856, 21.705460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824501, 41.878582, 21.251982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934952, 41.494141, 21.249586>,  <33.001221, 41.263477, 21.248148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934952, 41.494141, 21.249586>,  <32.824501, 41.878582, 21.251982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934952, 41.494141, 21.249586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108895, 0.037476, -0.993347,
		0.954934, 0.273633, 0.115008,
		0.276122, -0.961104, -0.005990,
		33.017788, 41.205811, 21.247789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409935, 41.818775, 20.800945>,  <32.824501, 41.878582, 21.251982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409935, 41.818775, 20.800945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296772, 41.436092, 20.828285>,  <33.228874, 41.206482, 20.844690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296772, 41.436092, 20.828285>,  <33.409935, 41.818775, 20.800945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296772, 41.436092, 20.828285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062445, -0.089483, -0.994029,
		0.957111, -0.276954, 0.085057,
		-0.282912, -0.956707, 0.068351,
		33.211899, 41.149078, 20.848791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804508, 41.452538, 20.204844>,  <33.409935, 41.818775, 20.800945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804508, 41.452538, 20.204844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508301, 41.207954, 20.316387>,  <33.330578, 41.061207, 20.383314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508301, 41.207954, 20.316387>,  <33.804508, 41.452538, 20.204844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508301, 41.207954, 20.316387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104683, -0.304931, -0.946604,
		0.663837, -0.730165, 0.161797,
		-0.740514, -0.611454, 0.278860,
		33.286148, 41.024517, 20.400045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956421, 40.900848, 19.844038>,  <33.804508, 41.452538, 20.204844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956421, 40.900848, 19.844038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575188, 40.863300, 19.959154>,  <33.346447, 40.840771, 20.028223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575188, 40.863300, 19.959154>,  <33.956421, 40.900848, 19.844038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575188, 40.863300, 19.959154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251158, -0.285492, -0.924886,
		0.168985, -0.953772, 0.248520,
		-0.953081, -0.093874, 0.287791,
		33.289265, 40.835136, 20.045492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726620, 40.284359, 19.604723>,  <33.956421, 40.900848, 19.844038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726620, 40.284359, 19.604723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398739, 40.512634, 19.624313>,  <33.202011, 40.649601, 19.636068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398739, 40.512634, 19.624313>,  <33.726620, 40.284359, 19.604723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398739, 40.512634, 19.624313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287402, -0.335828, -0.897006,
		-0.495465, -0.749355, 0.439297,
		-0.819704, 0.570690, 0.048975,
		33.152828, 40.683842, 19.639006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271240, 39.845673, 19.350357>,  <33.726620, 40.284359, 19.604723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271240, 39.845673, 19.350357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080410, 40.196529, 19.328388>,  <32.965912, 40.407043, 19.315207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080410, 40.196529, 19.328388>,  <33.271240, 39.845673, 19.350357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080410, 40.196529, 19.328388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379691, -0.262065, -0.887218,
		-0.792610, -0.402421, 0.458069,
		-0.477079, 0.877143, -0.054920,
		32.937286, 40.459671, 19.311913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570957, 39.716988, 19.126802>,  <33.271240, 39.845673, 19.350357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570957, 39.716988, 19.126802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643356, 40.102425, 19.048086>,  <32.686798, 40.333687, 19.000856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643356, 40.102425, 19.048086>,  <32.570957, 39.716988, 19.126802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643356, 40.102425, 19.048086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258188, -0.146522, -0.954919,
		-0.948988, 0.223650, 0.222267,
		0.181001, 0.963593, -0.196791,
		32.697655, 40.391502, 18.989048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101109, 39.915096, 18.476496>,  <32.570957, 39.716988, 19.126802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101109, 39.915096, 18.476496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362167, 40.218117, 18.481640>,  <32.518803, 40.399929, 18.484726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362167, 40.218117, 18.481640>,  <32.101109, 39.915096, 18.476496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362167, 40.218117, 18.481640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028345, 0.041371, -0.998742,
		-0.757131, 0.651462, 0.048473,
		0.652647, 0.757553, 0.012858,
		32.557961, 40.445381, 18.485497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885643, 40.407749, 17.966759>,  <32.101109, 39.915096, 18.476496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885643, 40.407749, 17.966759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278976, 40.459808, 18.017544>,  <32.514977, 40.491043, 18.048016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278976, 40.459808, 18.017544>,  <31.885643, 40.407749, 17.966759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278976, 40.459808, 18.017544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123053, 0.037690, -0.991684,
		-0.133854, 0.990778, 0.021046,
		0.983332, 0.130151, 0.126963,
		32.573975, 40.498852, 18.055634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117054, 40.967476, 17.562630>,  <31.885643, 40.407749, 17.966759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117054, 40.967476, 17.562630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437397, 40.738480, 17.632921>,  <32.629604, 40.601082, 17.675097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437397, 40.738480, 17.632921>,  <32.117054, 40.967476, 17.562630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437397, 40.738480, 17.632921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151928, -0.089613, -0.984321,
		0.579262, 0.815000, 0.015210,
		0.800858, -0.572490, 0.175731,
		32.677654, 40.566734, 17.685640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507118, 41.070698, 16.949060>,  <32.117054, 40.967476, 17.562630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507118, 41.070698, 16.949060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708206, 40.775593, 17.129274>,  <32.828861, 40.598530, 17.237402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708206, 40.775593, 17.129274>,  <32.507118, 41.070698, 16.949060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708206, 40.775593, 17.129274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265512, -0.364209, -0.892668,
		0.822662, 0.568387, 0.012787,
		0.502723, -0.737759, 0.450534,
		32.859024, 40.554264, 17.264435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292725, 41.079529, 16.758924>,  <32.507118, 41.070698, 16.949060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292725, 41.079529, 16.758924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160942, 40.716282, 16.862286>,  <33.081871, 40.498333, 16.924303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160942, 40.716282, 16.862286>,  <33.292725, 41.079529, 16.758924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160942, 40.716282, 16.862286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227295, -0.341921, -0.911826,
		0.916402, -0.241676, 0.319061,
		-0.329460, -0.908120, 0.258405,
		33.062103, 40.443844, 16.939808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865120, 40.604042, 16.602982>,  <33.292725, 41.079529, 16.758924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865120, 40.604042, 16.602982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531715, 40.385361, 16.634892>,  <33.331673, 40.254150, 16.654037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531715, 40.385361, 16.634892>,  <33.865120, 40.604042, 16.602982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531715, 40.385361, 16.634892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132698, -0.338257, -0.931651,
		0.536325, -0.765959, 0.354489,
		-0.833514, -0.546708, 0.079774,
		33.281662, 40.221348, 16.658823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040947, 40.175217, 16.079891>,  <33.865120, 40.604042, 16.602982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040947, 40.175217, 16.079891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655556, 40.095341, 16.151258>,  <33.424320, 40.047413, 16.194078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655556, 40.095341, 16.151258>,  <34.040947, 40.175217, 16.079891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655556, 40.095341, 16.151258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124698, -0.255065, -0.958850,
		0.236986, -0.946078, 0.220847,
		-0.963477, -0.199695, 0.178421,
		33.366512, 40.035431, 16.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376343, 39.570774, 16.305956>,  <34.040947, 40.175217, 16.079891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376343, 39.570774, 16.305956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755451, 39.516590, 16.190458>,  <34.982918, 39.484077, 16.121159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755451, 39.516590, 16.190458>,  <34.376343, 39.570774, 16.305956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755451, 39.516590, 16.190458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262946, -0.180510, 0.947774,
		-0.180510, -0.974200, -0.135463,
		-0.947774, 0.135463, 0.288746,
		35.039783, 39.475952, 16.103834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525352, 38.972206, 16.552509>,  <34.376343, 39.570774, 16.305956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525352, 38.972206, 16.552509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871769, 39.170277, 16.524879>,  <35.079620, 39.289120, 16.508303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871769, 39.170277, 16.524879>,  <34.525352, 38.972206, 16.552509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871769, 39.170277, 16.524879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230849, -0.273493, 0.933761,
		0.443484, -0.824623, -0.351167,
		0.866043, 0.495175, -0.069074,
		35.131580, 39.318829, 16.504158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049259, 38.549934, 17.070955>,  <34.525352, 38.972206, 16.552509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049259, 38.549934, 17.070955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205948, 38.909927, 16.994444>,  <35.299961, 39.125923, 16.948538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205948, 38.909927, 16.994444>,  <35.049259, 38.549934, 17.070955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205948, 38.909927, 16.994444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397202, 0.022110, 0.917465,
		0.829930, -0.435367, -0.348814,
		0.391722, 0.899981, -0.191278,
		35.323463, 39.179920, 16.937061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700233, 38.593052, 17.537275>,  <35.049259, 38.549934, 17.070955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700233, 38.593052, 17.537275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596500, 38.956570, 17.406528>,  <35.534260, 39.174679, 17.328081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596500, 38.956570, 17.406528>,  <35.700233, 38.593052, 17.537275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596500, 38.956570, 17.406528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188300, 0.379528, 0.905816,
		0.947254, 0.173360, -0.269550,
		-0.259334, 0.908793, -0.326865,
		35.518700, 39.229206, 17.308470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221760, 38.992920, 17.832350>,  <35.700233, 38.593052, 17.537275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221760, 38.992920, 17.832350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913391, 39.236580, 17.757921>,  <35.728371, 39.382774, 17.713264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913391, 39.236580, 17.757921>,  <36.221760, 38.992920, 17.832350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913391, 39.236580, 17.757921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032248, 0.329092, 0.943747,
		0.636115, 0.721553, -0.273347,
		-0.770920, 0.609147, -0.186072,
		35.682114, 39.419323, 17.702099>
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
