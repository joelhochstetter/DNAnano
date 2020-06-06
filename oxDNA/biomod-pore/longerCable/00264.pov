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
	<24.114706, 34.965580, 34.830673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416504, 35.141441, 34.635761>,  <24.597584, 35.246960, 34.518814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416504, 35.141441, 34.635761>,  <24.114706, 34.965580, 34.830673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416504, 35.141441, 34.635761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226989, -0.521827, -0.822297,
		-0.615801, 0.731027, -0.293920,
		0.754497, 0.439654, -0.487277,
		24.642853, 35.273338, 34.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664101, 35.247185, 35.352009>,  <24.114706, 34.965580, 34.830673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664101, 35.247185, 35.352009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053013, 35.338070, 35.329933>,  <25.286360, 35.392601, 35.316689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053013, 35.338070, 35.329933>,  <24.664101, 35.247185, 35.352009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.053013, 35.338070, 35.329933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186239, -0.895260, -0.404753,
		-0.141375, 0.383254, -0.912759,
		0.972280, 0.227213, -0.055190,
		25.344696, 35.406235, 35.313377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879116, 34.887241, 34.793747>,  <24.664101, 35.247185, 35.352009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879116, 34.887241, 34.793747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224642, 34.986252, 34.969273>,  <25.431957, 35.045658, 35.074589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224642, 34.986252, 34.969273>,  <24.879116, 34.887241, 34.793747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224642, 34.986252, 34.969273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395629, -0.872539, -0.286624,
		0.311932, 0.421196, -0.851641,
		0.863815, 0.247527, 0.438811,
		25.483786, 35.060509, 35.100914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425732, 34.712246, 34.285980>,  <24.879116, 34.887241, 34.793747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425732, 34.712246, 34.285980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684601, 34.794941, 34.579491>,  <25.839922, 34.844559, 34.755596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684601, 34.794941, 34.579491>,  <25.425732, 34.712246, 34.285980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684601, 34.794941, 34.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612105, -0.714658, -0.338513,
		0.454417, 0.668225, -0.589050,
		0.647173, 0.206735, 0.733777,
		25.878752, 34.856960, 34.799625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075464, 34.888847, 34.073399>,  <25.425732, 34.712246, 34.285980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075464, 34.888847, 34.073399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118553, 34.728058, 34.437115>,  <26.144407, 34.631584, 34.655346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118553, 34.728058, 34.437115>,  <26.075464, 34.888847, 34.073399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118553, 34.728058, 34.437115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641494, -0.670638, -0.372466,
		0.759527, 0.623430, 0.185618,
		0.107724, -0.401971, 0.909294,
		26.150869, 34.607468, 34.709904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803843, 34.942181, 34.467396>,  <26.075464, 34.888847, 34.073399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803843, 34.942181, 34.467396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592186, 34.614105, 34.554398>,  <26.465193, 34.417259, 34.606598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592186, 34.614105, 34.554398>,  <26.803843, 34.942181, 34.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592186, 34.614105, 34.554398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705624, -0.567686, -0.424061,
		0.471281, -0.070913, 0.879128,
		-0.529140, -0.820185, 0.217501,
		26.433443, 34.368050, 34.619648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190973, 34.476727, 34.762104>,  <26.803843, 34.942181, 34.467396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190973, 34.476727, 34.762104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896627, 34.272118, 34.584633>,  <26.720020, 34.149353, 34.478149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896627, 34.272118, 34.584633>,  <27.190973, 34.476727, 34.762104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896627, 34.272118, 34.584633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653744, -0.707401, -0.268706,
		-0.176408, -0.487781, 0.854956,
		-0.735867, -0.511520, -0.443675,
		26.675867, 34.118660, 34.451530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163437, 33.719421, 34.945587>,  <27.190973, 34.476727, 34.762104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163437, 33.719421, 34.945587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985548, 33.720692, 34.587322>,  <26.878815, 33.721455, 34.372364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985548, 33.720692, 34.587322>,  <27.163437, 33.719421, 34.945587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985548, 33.720692, 34.587322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733487, -0.572604, -0.366226,
		-0.514022, -0.819826, 0.252323,
		-0.444723, 0.003173, -0.895663,
		26.852131, 33.721645, 34.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131041, 33.035664, 34.742558>,  <27.163437, 33.719421, 34.945587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131041, 33.035664, 34.742558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080805, 33.254436, 34.411476>,  <27.050663, 33.385700, 34.212826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080805, 33.254436, 34.411476>,  <27.131041, 33.035664, 34.742558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080805, 33.254436, 34.411476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660632, -0.576322, -0.481059,
		-0.740130, -0.607224, -0.288941,
		-0.125587, 0.546930, -0.827705,
		27.043129, 33.418514, 34.163166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169518, 32.549908, 34.208481>,  <27.131041, 33.035664, 34.742558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169518, 32.549908, 34.208481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258554, 32.912914, 34.066006>,  <27.311975, 33.130718, 33.980522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258554, 32.912914, 34.066006>,  <27.169518, 32.549908, 34.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258554, 32.912914, 34.066006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755074, -0.391588, -0.525853,
		-0.616698, -0.151896, -0.772406,
		0.222590, 0.907517, -0.356184,
		27.325331, 33.185169, 33.959152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215721, 32.431362, 33.545444>,  <27.169518, 32.549908, 34.208481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215721, 32.431362, 33.545444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418470, 32.776123, 33.551109>,  <27.540121, 32.982979, 33.554508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418470, 32.776123, 33.551109>,  <27.215721, 32.431362, 33.545444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418470, 32.776123, 33.551109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709509, -0.407811, -0.574706,
		-0.489566, 0.301352, -0.818237,
		0.506875, 0.861904, 0.014162,
		27.570532, 33.034695, 33.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357208, 32.816410, 32.802013>,  <27.215721, 32.431362, 33.545444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357208, 32.816410, 32.802013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619930, 32.857136, 33.100876>,  <27.777563, 32.881573, 33.280193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619930, 32.857136, 33.100876>,  <27.357208, 32.816410, 32.802013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619930, 32.857136, 33.100876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675405, -0.520039, -0.522865,
		0.335316, 0.848053, -0.410329,
		0.656804, 0.101813, 0.747156,
		27.816971, 32.887680, 33.325024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074862, 33.143875, 32.555325>,  <27.357208, 32.816410, 32.802013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074862, 33.143875, 32.555325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095869, 32.926464, 32.890423>,  <28.108475, 32.796017, 33.091480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095869, 32.926464, 32.890423>,  <28.074862, 33.143875, 32.555325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095869, 32.926464, 32.890423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601255, -0.652595, -0.461098,
		0.797329, 0.527916, 0.292525,
		0.052521, -0.543529, 0.837745,
		28.111626, 32.763405, 33.141747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843441, 33.005962, 32.739918>,  <28.074862, 33.143875, 32.555325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843441, 33.005962, 32.739918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566500, 32.749474, 32.872272>,  <28.400335, 32.595581, 32.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566500, 32.749474, 32.872272>,  <28.843441, 33.005962, 32.739918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566500, 32.749474, 32.872272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512174, -0.759733, -0.400604,
		0.508259, -0.107889, 0.854420,
		-0.692352, -0.641222, 0.330883,
		28.358793, 32.557106, 32.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985794, 33.624355, 32.886112>,  <28.843441, 33.005962, 32.739918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985794, 33.624355, 32.886112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124249, 33.494492, 32.534023>,  <29.207321, 33.416573, 32.322769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124249, 33.494492, 32.534023>,  <28.985794, 33.624355, 32.886112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124249, 33.494492, 32.534023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463773, 0.756357, -0.461344,
		0.815539, 0.567911, 0.111236,
		0.346136, -0.324656, -0.880221,
		29.228090, 33.397095, 32.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924709, 33.825241, 33.601246>,  <28.985794, 33.624355, 32.886112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924709, 33.825241, 33.601246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127850, 33.963615, 33.285675>,  <29.249733, 34.046642, 33.096333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127850, 33.963615, 33.285675>,  <28.924709, 33.825241, 33.601246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127850, 33.963615, 33.285675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786107, 0.560657, -0.260191,
		0.352310, 0.752323, 0.556675,
		0.507851, 0.345939, -0.788932,
		29.280205, 34.067398, 33.048996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308434, 34.080513, 33.783413>,  <28.924709, 33.825241, 33.601246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308434, 34.080513, 33.783413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085718, 33.756332, 33.710587>,  <27.952089, 33.561825, 33.666893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085718, 33.756332, 33.710587>,  <28.308434, 34.080513, 33.783413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085718, 33.756332, 33.710587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830345, 0.537083, 0.148555,
		-0.022615, 0.233888, -0.972000,
		-0.556791, -0.810455, -0.182062,
		27.918680, 33.513195, 33.655968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640774, 34.331337, 33.484737>,  <28.308434, 34.080513, 33.783413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640774, 34.331337, 33.484737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541662, 33.962852, 33.604717>,  <27.482195, 33.741760, 33.676704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541662, 33.962852, 33.604717>,  <27.640774, 34.331337, 33.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541662, 33.962852, 33.604717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905409, 0.330349, 0.266653,
		-0.344731, -0.205503, -0.915931,
		-0.247779, -0.921216, 0.299946,
		27.467329, 33.686489, 33.694702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063210, 34.177425, 33.069218>,  <27.640774, 34.331337, 33.484737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063210, 34.177425, 33.069218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065180, 33.978466, 33.416222>,  <27.066362, 33.859089, 33.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065180, 33.978466, 33.416222>,  <27.063210, 34.177425, 33.069218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065180, 33.978466, 33.416222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924251, 0.328917, 0.193839,
		-0.381753, -0.802749, -0.458104,
		0.004926, -0.497402, 0.867507,
		27.066658, 33.829247, 33.676476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351910, 33.817581, 33.083080>,  <27.063210, 34.177425, 33.069218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351910, 33.817581, 33.083080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510101, 33.817024, 33.450470>,  <26.605017, 33.816689, 33.670902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510101, 33.817024, 33.450470>,  <26.351910, 33.817581, 33.083080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510101, 33.817024, 33.450470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899711, 0.200515, 0.387704,
		-0.184709, -0.979690, 0.078042,
		0.395479, -0.001397, 0.918474,
		26.628744, 33.816605, 33.726013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136040, 33.299412, 33.697548>,  <26.351910, 33.817581, 33.083080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136040, 33.299412, 33.697548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257214, 33.641682, 33.865383>,  <26.329918, 33.847042, 33.966084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257214, 33.641682, 33.865383>,  <26.136040, 33.299412, 33.697548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257214, 33.641682, 33.865383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935355, 0.182598, 0.302935,
		0.182598, -0.484230, 0.855675,
		-0.302935, -0.855675, -0.419585,
		26.348095, 33.898384, 33.991257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964170, 33.543125, 34.471558>,  <26.136040, 33.299412, 33.697548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964170, 33.543125, 34.471558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958786, 33.861969, 34.230083>,  <25.955555, 34.053276, 34.085197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958786, 33.861969, 34.230083>,  <25.964170, 33.543125, 34.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958786, 33.861969, 34.230083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922061, 0.223659, 0.315878,
		0.386809, 0.560889, 0.731972,
		-0.013460, 0.797107, -0.603687,
		25.954748, 34.101101, 34.048977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764292, 33.995052, 34.942757>,  <25.964170, 33.543125, 34.471558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764292, 33.995052, 34.942757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682913, 34.078430, 34.560101>,  <25.634085, 34.128456, 34.330505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682913, 34.078430, 34.560101>,  <25.764292, 33.995052, 34.942757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682913, 34.078430, 34.560101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964337, 0.126292, 0.232605,
		0.169301, 0.969846, 0.175318,
		-0.203450, 0.208446, -0.956639,
		25.621878, 34.140965, 34.273109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051809, 33.537827, 35.458218>,  <25.764292, 33.995052, 34.942757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051809, 33.537827, 35.458218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230301, 33.828667, 35.249527>,  <26.337397, 34.003170, 35.124313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230301, 33.828667, 35.249527>,  <26.051809, 33.537827, 35.458218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230301, 33.828667, 35.249527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593704, 0.676747, 0.435350,
		0.669615, 0.115474, 0.733677,
		0.446242, 0.727103, -0.521718,
		26.364170, 34.046795, 35.093006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235338, 34.143085, 35.878986>,  <26.051809, 33.537827, 35.458218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235338, 34.143085, 35.878986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239140, 34.295338, 35.509117>,  <26.241421, 34.386688, 35.287193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239140, 34.295338, 35.509117>,  <26.235338, 34.143085, 35.878986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239140, 34.295338, 35.509117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380055, 0.856700, 0.348745,
		0.924915, 0.348113, 0.152805,
		0.009505, 0.380634, -0.924677,
		26.241991, 34.409527, 35.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467558, 34.821289, 35.973370>,  <26.235338, 34.143085, 35.878986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467558, 34.821289, 35.973370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295450, 34.846832, 35.613194>,  <26.192186, 34.862160, 35.397087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295450, 34.846832, 35.613194>,  <26.467558, 34.821289, 35.973370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295450, 34.846832, 35.613194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491863, 0.819827, 0.293178,
		0.756927, 0.569038, -0.321336,
		-0.430270, 0.063861, -0.900439,
		26.166368, 34.865990, 35.343063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564907, 35.509846, 35.664803>,  <26.467558, 34.821289, 35.973370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564907, 35.509846, 35.664803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236691, 35.352806, 35.498634>,  <26.039761, 35.258583, 35.398933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236691, 35.352806, 35.498634>,  <26.564907, 35.509846, 35.664803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236691, 35.352806, 35.498634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452942, 0.889927, 0.053618,
		0.348647, 0.232158, -0.908046,
		-0.820542, -0.392598, -0.415424,
		25.990528, 35.235027, 35.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396723, 35.899273, 34.950268>,  <26.564907, 35.509846, 35.664803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396723, 35.899273, 34.950268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088285, 35.753513, 35.159126>,  <25.903223, 35.666058, 35.284439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088285, 35.753513, 35.159126>,  <26.396723, 35.899273, 34.950268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088285, 35.753513, 35.159126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322187, 0.930612, 0.173657,
		-0.549191, -0.034322, -0.834992,
		-0.771093, -0.364395, 0.522142,
		25.856958, 35.644196, 35.315769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834650, 36.154766, 34.559498>,  <26.396723, 35.899273, 34.950268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834650, 36.154766, 34.559498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734661, 36.053848, 34.933422>,  <25.674667, 35.993298, 35.157776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734661, 36.053848, 34.933422>,  <25.834650, 36.154766, 34.559498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734661, 36.053848, 34.933422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257609, 0.947989, 0.186962,
		-0.933355, -0.194079, -0.301964,
		-0.249973, -0.252291, 0.934806,
		25.659670, 35.978161, 35.213863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099125, 36.296257, 34.735176>,  <25.834650, 36.154766, 34.559498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099125, 36.296257, 34.735176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319756, 36.341557, 35.065739>,  <25.452133, 36.368736, 35.264076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319756, 36.341557, 35.065739>,  <25.099125, 36.296257, 34.735176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319756, 36.341557, 35.065739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259823, 0.964776, 0.041209,
		-0.792626, -0.237448, 0.561571,
		0.551575, 0.113246, 0.826402,
		25.485228, 36.375530, 35.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722742, 36.629074, 35.282207>,  <25.099125, 36.296257, 34.735176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722742, 36.629074, 35.282207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102396, 36.689964, 35.392456>,  <25.330189, 36.726498, 35.458607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102396, 36.689964, 35.392456>,  <24.722742, 36.629074, 35.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102396, 36.689964, 35.392456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248172, 0.900414, 0.357304,
		-0.193782, -0.407531, 0.892394,
		0.949136, 0.152228, 0.275622,
		25.387136, 36.735634, 35.475143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727983, 36.847084, 35.954639>,  <24.722742, 36.629074, 35.282207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727983, 36.847084, 35.954639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061434, 36.974907, 35.774437>,  <25.261503, 37.051601, 35.666317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061434, 36.974907, 35.774437>,  <24.727983, 36.847084, 35.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061434, 36.974907, 35.774437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048018, 0.854482, 0.517257,
		0.550241, -0.409565, 0.727662,
		0.833624, 0.319557, -0.450504,
		25.311522, 37.070774, 35.639286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910963, 37.222374, 36.414276>,  <24.727983, 36.847084, 35.954639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910963, 37.222374, 36.414276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150312, 37.336716, 36.114880>,  <25.293922, 37.405323, 35.935242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150312, 37.336716, 36.114880>,  <24.910963, 37.222374, 36.414276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150312, 37.336716, 36.114880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145858, 0.879714, 0.452581,
		0.787829, -0.379986, 0.484703,
		0.598374, 0.285858, -0.748488,
		25.329824, 37.422474, 35.890335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442984, 37.379299, 36.746353>,  <24.910963, 37.222374, 36.414276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442984, 37.379299, 36.746353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502003, 37.572384, 36.401051>,  <25.537415, 37.688236, 36.193867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502003, 37.572384, 36.401051>,  <25.442984, 37.379299, 36.746353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502003, 37.572384, 36.401051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130130, 0.855751, 0.500755,
		0.980457, -0.186220, 0.063447,
		0.147545, 0.482713, -0.863261,
		25.546267, 37.717197, 36.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184366, 37.955784, 37.225754>,  <25.442984, 37.379299, 36.746353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184366, 37.955784, 37.225754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997892, 38.309601, 37.219372>,  <24.886009, 38.521893, 37.215542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997892, 38.309601, 37.219372>,  <25.184366, 37.955784, 37.225754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997892, 38.309601, 37.219372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370335, 0.211495, 0.904501,
		0.803446, 0.415753, -0.426174,
		-0.466183, 0.884545, -0.015957,
		24.858038, 38.574963, 37.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678638, 38.552902, 37.250225>,  <25.184366, 37.955784, 37.225754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678638, 38.552902, 37.250225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312426, 38.602001, 37.403446>,  <25.092697, 38.631462, 37.495380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312426, 38.602001, 37.403446>,  <25.678638, 38.552902, 37.250225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312426, 38.602001, 37.403446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401495, 0.336937, 0.851631,
		-0.024526, 0.933491, -0.357761,
		-0.915532, 0.122752, 0.383056,
		25.037766, 38.638828, 37.518364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155144, 37.939308, 36.879242>,  <25.678638, 38.552902, 37.250225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155144, 37.939308, 36.879242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918739, 38.042282, 36.573448>,  <25.776897, 38.104065, 36.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918739, 38.042282, 36.573448>,  <26.155144, 37.939308, 36.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918739, 38.042282, 36.573448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097056, 0.918131, 0.384207,
		0.800804, 0.301268, -0.517639,
		-0.591010, 0.257434, -0.764484,
		25.741436, 38.119511, 36.344105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407631, 38.569981, 36.611168>,  <26.155144, 37.939308, 36.879242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407631, 38.569981, 36.611168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037092, 38.566895, 36.460529>,  <25.814770, 38.565044, 36.370148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037092, 38.566895, 36.460529>,  <26.407631, 38.569981, 36.611168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037092, 38.566895, 36.460529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081221, 0.980361, 0.179713,
		0.367815, 0.197064, -0.908778,
		-0.926345, -0.007711, -0.376597,
		25.759190, 38.564583, 36.347549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424931, 39.210011, 36.128590>,  <26.407631, 38.569981, 36.611168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424931, 39.210011, 36.128590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051920, 39.120090, 36.241627>,  <25.828114, 39.066139, 36.309448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051920, 39.120090, 36.241627>,  <26.424931, 39.210011, 36.128590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051920, 39.120090, 36.241627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111963, 0.924023, 0.365576,
		-0.343303, 0.309270, -0.886846,
		-0.932528, -0.224797, 0.282593,
		25.772161, 39.052650, 36.326405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970394, 39.605270, 36.296524>,  <26.424931, 39.210011, 36.128590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970394, 39.605270, 36.296524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991062, 39.555008, 36.692814>,  <26.003464, 39.524853, 36.930588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991062, 39.555008, 36.692814>,  <25.970394, 39.605270, 36.296524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991062, 39.555008, 36.692814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031268, -0.991363, -0.127365,
		0.998174, 0.037559, -0.047297,
		0.051672, -0.125654, 0.990728,
		26.006563, 39.517311, 36.990032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439161, 40.177231, 36.311474>,  <25.970394, 39.605270, 36.296524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439161, 40.177231, 36.311474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100233, 40.069187, 36.494381>,  <24.896877, 40.004360, 36.604126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100233, 40.069187, 36.494381>,  <25.439161, 40.177231, 36.311474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100233, 40.069187, 36.494381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225093, -0.962496, -0.151442,
		0.481024, -0.025392, 0.876339,
		-0.847319, -0.270105, 0.457269,
		24.846037, 39.988155, 36.631561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536207, 39.678665, 36.949940>,  <25.439161, 40.177231, 36.311474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536207, 39.678665, 36.949940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199633, 39.661903, 36.734447>,  <24.997688, 39.651844, 36.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199633, 39.661903, 36.734447>,  <25.536207, 39.678665, 36.949940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199633, 39.661903, 36.734447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143707, -0.978439, -0.148342,
		-0.520900, -0.202239, 0.829315,
		-0.841435, -0.041907, -0.538732,
		24.947203, 39.649330, 36.572826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099781, 39.127041, 37.268028>,  <25.536207, 39.678665, 36.949940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099781, 39.127041, 37.268028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041937, 39.222160, 36.883831>,  <25.007231, 39.279232, 36.653313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041937, 39.222160, 36.883831>,  <25.099781, 39.127041, 37.268028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041937, 39.222160, 36.883831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182152, -0.947705, -0.262060,
		-0.972578, -0.212851, 0.093731,
		-0.144609, 0.237801, -0.960489,
		24.998554, 39.293499, 36.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560400, 38.800888, 36.778755>,  <25.099781, 39.127041, 37.268028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560400, 38.800888, 36.778755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922417, 38.871361, 36.623909>,  <25.139627, 38.913643, 36.531002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922417, 38.871361, 36.623909>,  <24.560400, 38.800888, 36.778755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922417, 38.871361, 36.623909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044648, -0.944500, -0.325463,
		-0.422973, 0.277274, -0.862678,
		0.905042, 0.176179, -0.387118,
		25.193930, 38.924213, 36.507774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535660, 38.694862, 35.956432>,  <24.560400, 38.800888, 36.778755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535660, 38.694862, 35.956432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911514, 38.648773, 36.085312>,  <25.137026, 38.621120, 36.162640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911514, 38.648773, 36.085312>,  <24.535660, 38.694862, 35.956432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911514, 38.648773, 36.085312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039045, -0.899345, -0.435494,
		0.339946, 0.421785, -0.840556,
		0.939634, -0.115225, 0.322197,
		25.193405, 38.614204, 36.181973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847660, 38.419533, 35.465733>,  <24.535660, 38.694862, 35.956432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847660, 38.419533, 35.465733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141079, 38.350311, 35.728626>,  <25.317131, 38.308781, 35.886364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141079, 38.350311, 35.728626>,  <24.847660, 38.419533, 35.465733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141079, 38.350311, 35.728626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294401, -0.790696, -0.536776,
		0.612564, 0.587242, -0.529067,
		0.733549, -0.173052, 0.657236,
		25.361143, 38.298397, 35.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396358, 38.345135, 35.015362>,  <24.847660, 38.419533, 35.465733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396358, 38.345135, 35.015362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464495, 38.165226, 35.366062>,  <25.505377, 38.057281, 35.576481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464495, 38.165226, 35.366062>,  <25.396358, 38.345135, 35.015362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464495, 38.165226, 35.366062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305876, -0.821667, -0.480940,
		0.936710, 0.350099, -0.002389,
		0.170339, -0.449770, 0.876751,
		25.515596, 38.030296, 35.629086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996622, 37.933384, 34.937031>,  <25.396358, 38.345135, 35.015362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996622, 37.933384, 34.937031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811871, 37.746735, 35.238739>,  <25.701019, 37.634743, 35.419765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811871, 37.746735, 35.238739>,  <25.996622, 37.933384, 34.937031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811871, 37.746735, 35.238739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372074, -0.873909, -0.312801,
		0.805128, 0.136170, 0.577258,
		-0.461876, -0.466628, 0.754274,
		25.673307, 37.606747, 35.465019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456533, 37.476570, 35.159386>,  <25.996622, 37.933384, 34.937031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456533, 37.476570, 35.159386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102846, 37.357208, 35.303112>,  <25.890633, 37.285591, 35.389347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102846, 37.357208, 35.303112>,  <26.456533, 37.476570, 35.159386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102846, 37.357208, 35.303112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295146, -0.953217, -0.065321,
		0.362000, 0.048293, 0.930926,
		-0.884220, -0.298405, 0.359318,
		25.837580, 37.267685, 35.410908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703138, 36.952393, 35.560661>,  <26.456533, 37.476570, 35.159386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703138, 36.952393, 35.560661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311983, 36.936550, 35.478527>,  <26.077290, 36.927044, 35.429245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311983, 36.936550, 35.478527>,  <26.703138, 36.952393, 35.560661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311983, 36.936550, 35.478527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079268, -0.978829, -0.188709,
		-0.193513, -0.200813, 0.960326,
		-0.977890, -0.039605, -0.205334,
		26.018616, 36.924667, 35.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085716, 37.227245, 36.118328>,  <26.703138, 36.952393, 35.560661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085716, 37.227245, 36.118328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206377, 36.846680, 36.093636>,  <27.278772, 36.618340, 36.078819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206377, 36.846680, 36.093636>,  <27.085716, 37.227245, 36.118328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206377, 36.846680, 36.093636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952353, 0.303740, -0.027653,
		0.045061, -0.050452, 0.997709,
		0.301650, -0.951418, -0.061735,
		27.296871, 36.561253, 36.075115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796034, 37.218578, 36.536133>,  <27.085716, 37.227245, 36.118328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796034, 37.218578, 36.536133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749533, 36.881611, 36.325684>,  <27.721632, 36.679428, 36.199413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749533, 36.881611, 36.325684>,  <27.796034, 37.218578, 36.536133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749533, 36.881611, 36.325684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982295, -0.019168, -0.186359,
		0.146909, -0.538477, 0.829735,
		-0.116254, -0.842422, -0.526127,
		27.714657, 36.628883, 36.167847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272669, 36.750095, 36.813538>,  <27.796034, 37.218578, 36.536133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272669, 36.750095, 36.813538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176207, 36.650444, 36.438351>,  <28.118328, 36.590652, 36.213238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176207, 36.650444, 36.438351>,  <28.272669, 36.750095, 36.813538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176207, 36.650444, 36.438351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966389, -0.150358, -0.208529,
		-0.089080, -0.956728, 0.277012,
		-0.241157, -0.249126, -0.937966,
		28.103859, 36.575706, 36.156960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975145, 36.592663, 36.439926>,  <28.272669, 36.750095, 36.813538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975145, 36.592663, 36.439926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360899, 36.486988, 36.434727>,  <29.592352, 36.423584, 36.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360899, 36.486988, 36.434727>,  <28.975145, 36.592663, 36.439926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360899, 36.486988, 36.434727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051245, -0.234831, 0.970684,
		-0.259491, -0.935447, -0.240006,
		0.964385, -0.264183, -0.012999,
		29.650215, 36.407734, 36.430828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098949, 35.993996, 36.898891>,  <28.975145, 36.592663, 36.439926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098949, 35.993996, 36.898891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438234, 36.202419, 36.860863>,  <29.641806, 36.327473, 36.838043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438234, 36.202419, 36.860863>,  <29.098949, 35.993996, 36.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438234, 36.202419, 36.860863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104770, 0.010898, 0.994437,
		0.519194, -0.853452, -0.045347,
		0.848210, 0.521057, -0.095074,
		29.692698, 36.358738, 36.832340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443274, 35.751289, 37.413948>,  <29.098949, 35.993996, 36.898891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443274, 35.751289, 37.413948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648436, 36.082325, 37.322720>,  <29.771534, 36.280949, 37.267982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648436, 36.082325, 37.322720>,  <29.443274, 35.751289, 37.413948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648436, 36.082325, 37.322720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211024, 0.135980, 0.967977,
		0.832103, -0.544611, -0.104897,
		0.512907, 0.827592, -0.228075,
		29.802307, 36.330601, 37.254295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188082, 35.716766, 37.694576>,  <29.443274, 35.751289, 37.413948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188082, 35.716766, 37.694576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112576, 36.106724, 37.647331>,  <30.067272, 36.340698, 37.618984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112576, 36.106724, 37.647331>,  <30.188082, 35.716766, 37.694576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112576, 36.106724, 37.647331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314203, 0.173911, 0.933291,
		0.930400, 0.139059, -0.339142,
		-0.188764, 0.974894, -0.118114,
		30.055946, 36.399193, 37.611897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758352, 36.149311, 37.713570>,  <30.188082, 35.716766, 37.694576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758352, 36.149311, 37.713570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459833, 36.383080, 37.841003>,  <30.280722, 36.523338, 37.917465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459833, 36.383080, 37.841003>,  <30.758352, 36.149311, 37.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459833, 36.383080, 37.841003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479621, 0.140277, 0.866191,
		0.461526, 0.799236, -0.384987,
		-0.746296, 0.584418, 0.318589,
		30.235945, 36.558403, 37.936581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017735, 36.799896, 38.007523>,  <30.758352, 36.149311, 37.713570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017735, 36.799896, 38.007523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667307, 36.668171, 38.148407>,  <30.457050, 36.589134, 38.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667307, 36.668171, 38.148407>,  <31.017735, 36.799896, 38.007523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667307, 36.668171, 38.148407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361565, 0.034617, 0.931704,
		-0.319019, 0.943584, 0.088743,
		-0.876069, -0.329318, 0.352211,
		30.404486, 36.569374, 38.254070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073416, 36.672310, 38.813679>,  <31.017735, 36.799896, 38.007523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073416, 36.672310, 38.813679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826166, 36.977814, 38.888081>,  <30.677816, 37.161114, 38.932724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826166, 36.977814, 38.888081>,  <31.073416, 36.672310, 38.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826166, 36.977814, 38.888081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422018, -0.122787, -0.898234,
		-0.663194, -0.633717, 0.398217,
		-0.618122, 0.763758, 0.186008,
		30.640730, 37.206940, 38.943882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239578, 36.466587, 38.812206>,  <31.073416, 36.672310, 38.813679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239578, 36.466587, 38.812206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360384, 36.830418, 38.698044>,  <30.432867, 37.048717, 38.629547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360384, 36.830418, 38.698044>,  <30.239578, 36.466587, 38.812206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360384, 36.830418, 38.698044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472643, -0.117129, -0.873435,
		-0.827887, 0.398684, 0.394531,
		0.302013, 0.909578, -0.285404,
		30.450989, 37.103291, 38.612423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646433, 37.056637, 38.718754>,  <30.239578, 36.466587, 38.812206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646433, 37.056637, 38.718754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971464, 37.050339, 38.485699>,  <30.166483, 37.046558, 38.345863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971464, 37.050339, 38.485699>,  <29.646433, 37.056637, 38.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971464, 37.050339, 38.485699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581920, -0.078494, -0.809449,
		-0.032986, 0.996790, -0.072948,
		0.812577, -0.015750, -0.582641,
		30.215237, 37.045612, 38.310905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534855, 37.527706, 38.059200>,  <29.646433, 37.056637, 38.718754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534855, 37.527706, 38.059200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825745, 37.265553, 37.977604>,  <30.000278, 37.108261, 37.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825745, 37.265553, 37.977604>,  <29.534855, 37.527706, 38.059200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825745, 37.265553, 37.977604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326217, -0.068520, -0.942808,
		0.603926, 0.752179, -0.263628,
		0.727224, -0.655387, -0.203993,
		30.043913, 37.068935, 37.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796032, 37.672737, 37.401966>,  <29.534855, 37.527706, 38.059200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796032, 37.672737, 37.401966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889278, 37.290062, 37.471718>,  <29.945227, 37.060459, 37.513569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889278, 37.290062, 37.471718>,  <29.796032, 37.672737, 37.401966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889278, 37.290062, 37.471718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180036, -0.218682, -0.959044,
		0.955638, 0.192173, -0.223216,
		0.233116, -0.956686, 0.174383,
		29.959213, 37.003056, 37.524033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348793, 37.505627, 36.929100>,  <29.796032, 37.672737, 37.401966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348793, 37.505627, 36.929100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185446, 37.153847, 37.026917>,  <30.087437, 36.942780, 37.085606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185446, 37.153847, 37.026917>,  <30.348793, 37.505627, 36.929100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185446, 37.153847, 37.026917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053186, -0.290369, -0.955436,
		0.911266, -0.377165, 0.165353,
		-0.408370, -0.879450, 0.244543,
		30.062935, 36.890011, 37.100281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853140, 36.957684, 36.730247>,  <30.348793, 37.505627, 36.929100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853140, 36.957684, 36.730247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491600, 36.788013, 36.752636>,  <30.274677, 36.686211, 36.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491600, 36.788013, 36.752636>,  <30.853140, 36.957684, 36.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491600, 36.788013, 36.752636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112320, -0.361467, -0.925595,
		0.412848, -0.830310, 0.374355,
		-0.903848, -0.424178, 0.055970,
		30.220446, 36.660759, 36.769428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905298, 36.197342, 36.609245>,  <30.853140, 36.957684, 36.730247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905298, 36.197342, 36.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550665, 36.348980, 36.503223>,  <30.337885, 36.439960, 36.439610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550665, 36.348980, 36.503223>,  <30.905298, 36.197342, 36.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550665, 36.348980, 36.503223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033507, -0.518881, -0.854189,
		-0.461348, -0.766194, 0.447331,
		-0.886586, 0.379089, -0.265058,
		30.284689, 36.462708, 36.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530930, 35.631565, 36.331470>,  <30.905298, 36.197342, 36.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530930, 35.631565, 36.331470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385399, 35.973377, 36.183197>,  <30.298080, 36.178467, 36.094234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385399, 35.973377, 36.183197>,  <30.530930, 35.631565, 36.331470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385399, 35.973377, 36.183197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059722, -0.375736, -0.924801,
		-0.929550, -0.358605, 0.085669,
		-0.363827, 0.854532, -0.370682,
		30.276251, 36.229736, 36.071991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031546, 35.518196, 35.906555>,  <30.530930, 35.631565, 36.331470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031546, 35.518196, 35.906555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145916, 35.885128, 35.795742>,  <30.214539, 36.105289, 35.729256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145916, 35.885128, 35.795742>,  <30.031546, 35.518196, 35.906555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145916, 35.885128, 35.795742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100916, -0.258666, -0.960681,
		-0.952923, 0.302639, 0.018615,
		0.285924, 0.917334, -0.277030,
		30.231693, 36.160328, 35.712631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615988, 35.714500, 35.428631>,  <30.031546, 35.518196, 35.906555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615988, 35.714500, 35.428631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937685, 35.941353, 35.357582>,  <30.130703, 36.077465, 35.314953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937685, 35.941353, 35.357582>,  <29.615988, 35.714500, 35.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937685, 35.941353, 35.357582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013216, -0.281733, -0.959402,
		-0.594152, 0.773941, -0.219087,
		0.804244, 0.567135, -0.177620,
		30.178959, 36.111492, 35.304295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413631, 36.008698, 34.837543>,  <29.615988, 35.714500, 35.428631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413631, 36.008698, 34.837543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808239, 36.072113, 34.853798>,  <30.045004, 36.110161, 34.863552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808239, 36.072113, 34.853798>,  <29.413631, 36.008698, 34.837543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808239, 36.072113, 34.853798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076059, -0.224261, -0.971557,
		-0.144913, 0.961547, -0.233295,
		0.986517, 0.158536, 0.040636,
		30.104195, 36.119675, 34.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523352, 36.507252, 34.322887>,  <29.413631, 36.008698, 34.837543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523352, 36.507252, 34.322887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866205, 36.314865, 34.396637>,  <30.071917, 36.199432, 34.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866205, 36.314865, 34.396637>,  <29.523352, 36.507252, 34.322887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866205, 36.314865, 34.396637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172477, -0.069281, -0.982574,
		0.485358, 0.873998, 0.023572,
		0.857134, -0.480966, 0.184371,
		30.123346, 36.170574, 34.451950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057692, 36.847557, 33.983761>,  <29.523352, 36.507252, 34.322887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057692, 36.847557, 33.983761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204676, 36.477318, 34.020069>,  <30.292866, 36.255173, 34.041855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204676, 36.477318, 34.020069>,  <30.057692, 36.847557, 33.983761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204676, 36.477318, 34.020069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040396, -0.081623, -0.995844,
		0.929161, 0.369600, 0.007397,
		0.367461, -0.925599, 0.090771,
		30.314915, 36.199638, 34.047302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655924, 36.876930, 33.604156>,  <30.057692, 36.847557, 33.983761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655924, 36.876930, 33.604156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529661, 36.499107, 33.640320>,  <30.453903, 36.272415, 33.662018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529661, 36.499107, 33.640320>,  <30.655924, 36.876930, 33.604156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529661, 36.499107, 33.640320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202752, -0.160224, -0.966033,
		0.926959, -0.286605, 0.242087,
		-0.315658, -0.944556, 0.090411,
		30.434963, 36.215740, 33.667442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985390, 36.337852, 33.117458>,  <30.655924, 36.876930, 33.604156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985390, 36.337852, 33.117458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654272, 36.144024, 33.230556>,  <30.455603, 36.027725, 33.298416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654272, 36.144024, 33.230556>,  <30.985390, 36.337852, 33.117458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654272, 36.144024, 33.230556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049316, -0.439179, -0.897045,
		0.558864, -0.756510, 0.339652,
		-0.827792, -0.484575, 0.282749,
		30.405935, 35.998650, 33.315380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874290, 35.687611, 32.617790>,  <30.985390, 36.337852, 33.117458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874290, 35.687611, 32.617790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529188, 35.738857, 32.813438>,  <30.322126, 35.769604, 32.930828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529188, 35.738857, 32.813438>,  <30.874290, 35.687611, 32.617790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529188, 35.738857, 32.813438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499257, -0.368841, -0.784028,
		0.079962, -0.920621, 0.382181,
		-0.862756, 0.128114, 0.489120,
		30.270361, 35.777290, 32.960175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594532, 35.039749, 32.630753>,  <30.874290, 35.687611, 32.617790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594532, 35.039749, 32.630753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321081, 35.326279, 32.686653>,  <30.157011, 35.498196, 32.720192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321081, 35.326279, 32.686653>,  <30.594532, 35.039749, 32.630753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321081, 35.326279, 32.686653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537926, -0.365141, -0.759807,
		-0.493243, -0.594599, 0.634952,
		-0.683627, 0.716327, 0.139747,
		30.115993, 35.541176, 32.728577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990118, 34.595776, 32.605301>,  <30.594532, 35.039749, 32.630753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990118, 34.595776, 32.605301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898417, 34.977020, 32.526287>,  <29.843395, 35.205769, 32.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898417, 34.977020, 32.526287>,  <29.990118, 34.595776, 32.605301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898417, 34.977020, 32.526287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312009, -0.264187, -0.912609,
		-0.922005, -0.147586, 0.357945,
		-0.229253, 0.953113, -0.197534,
		29.829641, 35.262955, 32.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307680, 34.568089, 32.314278>,  <29.990118, 34.595776, 32.605301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307680, 34.568089, 32.314278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423429, 34.942535, 32.234329>,  <29.492880, 35.167202, 32.186359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423429, 34.942535, 32.234329>,  <29.307680, 34.568089, 32.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423429, 34.942535, 32.234329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565677, -0.001201, -0.824626,
		-0.772186, 0.351687, 0.529193,
		0.289375, 0.936117, -0.199869,
		29.510242, 35.223370, 32.174370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683346, 34.946892, 32.099499>,  <29.307680, 34.568089, 32.314278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683346, 34.946892, 32.099499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010384, 35.123692, 31.951889>,  <29.206606, 35.229771, 31.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010384, 35.123692, 31.951889>,  <28.683346, 34.946892, 32.099499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010384, 35.123692, 31.951889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404903, -0.014323, -0.914248,
		-0.409384, 0.896900, 0.167257,
		0.817593, 0.442001, -0.369021,
		29.255661, 35.256290, 31.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368086, 35.297588, 31.618317>,  <28.683346, 34.946892, 32.099499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368086, 35.297588, 31.618317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755219, 35.326523, 31.521927>,  <28.987499, 35.343884, 31.464092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755219, 35.326523, 31.521927>,  <28.368086, 35.297588, 31.618317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755219, 35.326523, 31.521927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250123, 0.173142, -0.952607,
		-0.027181, 0.982237, 0.185664,
		0.967832, 0.072332, -0.240974,
		29.045568, 35.348221, 31.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449596, 36.037212, 31.359295>,  <28.368086, 35.297588, 31.618317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449596, 36.037212, 31.359295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745321, 35.844032, 31.171600>,  <28.922756, 35.728127, 31.058983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745321, 35.844032, 31.171600>,  <28.449596, 36.037212, 31.359295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745321, 35.844032, 31.171600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341325, 0.331914, -0.879392,
		0.580445, 0.810306, 0.080546,
		0.739311, -0.482946, -0.469236,
		28.967115, 35.699150, 31.030830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790739, 36.573765, 30.968372>,  <28.449596, 36.037212, 31.359295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790739, 36.573765, 30.968372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851862, 36.210239, 30.813084>,  <28.888535, 35.992126, 30.719912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851862, 36.210239, 30.813084>,  <28.790739, 36.573765, 30.968372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851862, 36.210239, 30.813084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430218, 0.292484, -0.854029,
		0.889698, 0.297521, -0.346293,
		0.152806, -0.908810, -0.388221,
		28.897703, 35.937595, 30.696617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122185, 36.728859, 30.192562>,  <28.790739, 36.573765, 30.968372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122185, 36.728859, 30.192562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972456, 36.358124, 30.204287>,  <28.882620, 36.135685, 30.211321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972456, 36.358124, 30.204287>,  <29.122185, 36.728859, 30.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972456, 36.358124, 30.204287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460347, 0.158294, -0.873513,
		0.804963, -0.340467, -0.485918,
		-0.374320, -0.926836, 0.029313,
		28.860159, 36.080074, 30.213079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310509, 36.428268, 29.527376>,  <29.122185, 36.728859, 30.192562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310509, 36.428268, 29.527376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995880, 36.231636, 29.676859>,  <28.807102, 36.113655, 29.766548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995880, 36.231636, 29.676859>,  <29.310509, 36.428268, 29.527376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995880, 36.231636, 29.676859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459457, 0.061576, -0.886063,
		0.412560, -0.868652, -0.274294,
		-0.786570, -0.491581, 0.373704,
		28.759909, 36.084164, 29.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142342, 35.963192, 29.037521>,  <29.310509, 36.428268, 29.527376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142342, 35.963192, 29.037521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816833, 35.944962, 29.269279>,  <28.621529, 35.934025, 29.408335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816833, 35.944962, 29.269279>,  <29.142342, 35.963192, 29.037521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816833, 35.944962, 29.269279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578612, -0.030146, -0.815045,
		0.054616, -0.998506, -0.001840,
		-0.813772, -0.045579, 0.579394,
		28.572702, 35.931290, 29.443098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671268, 35.423542, 28.750877>,  <29.142342, 35.963192, 29.037521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671268, 35.423542, 28.750877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451139, 35.663303, 28.983377>,  <28.319061, 35.807159, 29.122877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451139, 35.663303, 28.983377>,  <28.671268, 35.423542, 28.750877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451139, 35.663303, 28.983377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634584, 0.152157, -0.757728,
		-0.542629, -0.785849, 0.296639,
		-0.550325, 0.599407, 0.581252,
		28.286041, 35.843124, 29.157753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002396, 35.217388, 28.683853>,  <28.671268, 35.423542, 28.750877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002396, 35.217388, 28.683853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969698, 35.583702, 28.841162>,  <27.950079, 35.803490, 28.935547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969698, 35.583702, 28.841162>,  <28.002396, 35.217388, 28.683853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969698, 35.583702, 28.841162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780203, 0.186733, -0.597004,
		-0.620162, -0.355631, 0.699232,
		-0.081744, 0.915782, 0.393269,
		27.945175, 35.858437, 28.959143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259041, 35.305103, 28.848545>,  <28.002396, 35.217388, 28.683853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259041, 35.305103, 28.848545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447357, 35.653236, 28.790752>,  <27.560347, 35.862118, 28.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447357, 35.653236, 28.790752>,  <27.259041, 35.305103, 28.848545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447357, 35.653236, 28.790752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686489, 0.258521, -0.679632,
		-0.554155, 0.419151, 0.719184,
		0.470792, 0.870333, -0.144482,
		27.588594, 35.914337, 28.747408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765471, 35.683464, 28.904854>,  <27.259041, 35.305103, 28.848545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765471, 35.683464, 28.904854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034765, 35.918629, 28.725470>,  <27.196342, 36.059727, 28.617838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034765, 35.918629, 28.725470>,  <26.765471, 35.683464, 28.904854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034765, 35.918629, 28.725470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700030, 0.311429, -0.642627,
		-0.238142, 0.746576, 0.621219,
		0.673236, 0.587908, -0.448462,
		27.236736, 36.095001, 28.590931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302040, 36.203426, 28.564539>,  <26.765471, 35.683464, 28.904854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302040, 36.203426, 28.564539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653807, 36.230381, 28.376036>,  <26.864866, 36.246555, 28.262934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653807, 36.230381, 28.376036>,  <26.302040, 36.203426, 28.564539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653807, 36.230381, 28.376036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470054, 0.279590, -0.837185,
		0.075344, 0.957752, 0.277552,
		0.879416, 0.067387, -0.471260,
		26.917631, 36.250599, 28.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364149, 36.802925, 28.146566>,  <26.302040, 36.203426, 28.564539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364149, 36.802925, 28.146566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667234, 36.602234, 27.979647>,  <26.849085, 36.481819, 27.879496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667234, 36.602234, 27.979647>,  <26.364149, 36.802925, 28.146566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667234, 36.602234, 27.979647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269396, 0.341939, -0.900280,
		0.594388, 0.794572, 0.123927,
		0.757713, -0.501730, -0.417299,
		26.894548, 36.451714, 27.854458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690086, 37.200241, 27.619877>,  <26.364149, 36.802925, 28.146566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690086, 37.200241, 27.619877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789787, 36.822338, 27.534744>,  <26.849607, 36.595596, 27.483664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789787, 36.822338, 27.534744>,  <26.690086, 37.200241, 27.619877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789787, 36.822338, 27.534744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353821, 0.115738, -0.928125,
		0.901489, 0.306644, -0.305428,
		0.249254, -0.944761, -0.212833,
		26.864563, 36.538910, 27.470894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009777, 37.162991, 26.976101>,  <26.690086, 37.200241, 27.619877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009777, 37.162991, 26.976101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891382, 36.784431, 27.027832>,  <26.820345, 36.557297, 27.058870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891382, 36.784431, 27.027832>,  <27.009777, 37.162991, 26.976101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891382, 36.784431, 27.027832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333522, -0.024477, -0.942424,
		0.895073, -0.322078, -0.308400,
		-0.295985, -0.946397, 0.129329,
		26.802588, 36.500511, 27.066631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265469, 36.841141, 26.430149>,  <27.009777, 37.162991, 26.976101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265469, 36.841141, 26.430149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955559, 36.622437, 26.557129>,  <26.769613, 36.491215, 26.633316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955559, 36.622437, 26.557129>,  <27.265469, 36.841141, 26.430149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955559, 36.622437, 26.557129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290417, -0.138217, -0.946865,
		0.561588, -0.825800, -0.051702,
		-0.774776, -0.546764, 0.317447,
		26.723125, 36.458408, 26.652363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126120, 36.381592, 25.920519>,  <27.265469, 36.841141, 26.430149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126120, 36.381592, 25.920519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792208, 36.362896, 26.139957>,  <26.591860, 36.351677, 26.271620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792208, 36.362896, 26.139957>,  <27.126120, 36.381592, 25.920519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792208, 36.362896, 26.139957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547422, 0.177053, -0.817913,
		-0.058902, -0.983091, -0.173386,
		-0.834781, -0.046738, 0.548595,
		26.541773, 36.348873, 26.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775558, 35.905693, 25.669344>,  <27.126120, 36.381592, 25.920519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775558, 35.905693, 25.669344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505114, 36.147827, 25.837366>,  <26.342848, 36.293106, 25.938179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505114, 36.147827, 25.837366>,  <26.775558, 35.905693, 25.669344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505114, 36.147827, 25.837366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440623, 0.124742, -0.888983,
		-0.590530, -0.786137, 0.182384,
		-0.676111, 0.605333, 0.420054,
		26.302280, 36.329426, 25.963383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107264, 35.639050, 25.600363>,  <26.775558, 35.905693, 25.669344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107264, 35.639050, 25.600363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049002, 36.031231, 25.653278>,  <26.014046, 36.266541, 25.685028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049002, 36.031231, 25.653278>,  <26.107264, 35.639050, 25.600363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049002, 36.031231, 25.653278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419368, 0.059921, -0.905837,
		-0.896055, -0.187415, 0.402443,
		-0.145653, 0.980451, 0.132288,
		26.005306, 36.325367, 25.692965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646193, 35.724842, 25.095249>,  <26.107264, 35.639050, 25.600363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646193, 35.724842, 25.095249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756182, 36.093979, 25.203146>,  <25.822176, 36.315460, 25.267883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756182, 36.093979, 25.203146>,  <25.646193, 35.724842, 25.095249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756182, 36.093979, 25.203146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285304, 0.346238, -0.893712,
		-0.918145, 0.168789, 0.358496,
		0.274973, 0.922838, 0.269740,
		25.838675, 36.370831, 25.284069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017704, 36.147583, 24.917776>,  <25.646193, 35.724842, 25.095249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017704, 36.147583, 24.917776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336206, 36.388687, 24.938414>,  <25.527308, 36.533348, 24.950796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336206, 36.388687, 24.938414>,  <25.017704, 36.147583, 24.917776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336206, 36.388687, 24.938414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294847, 0.461136, -0.836910,
		-0.528243, 0.651183, 0.544903,
		0.796256, 0.602755, 0.051592,
		25.575083, 36.569515, 24.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765152, 36.730118, 24.804184>,  <25.017704, 36.147583, 24.917776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765152, 36.730118, 24.804184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156782, 36.770779, 24.733671>,  <25.391760, 36.795174, 24.691364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156782, 36.770779, 24.733671>,  <24.765152, 36.730118, 24.804184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156782, 36.770779, 24.733671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201343, 0.609395, -0.766876,
		0.029470, 0.786324, 0.617111,
		0.979077, 0.101651, -0.176280,
		25.450506, 36.801273, 24.680788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945597, 37.444771, 24.828091>,  <24.765152, 36.730118, 24.804184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945597, 37.444771, 24.828091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253389, 37.303707, 24.615101>,  <25.438065, 37.219070, 24.487307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253389, 37.303707, 24.615101>,  <24.945597, 37.444771, 24.828091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253389, 37.303707, 24.615101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117244, 0.741559, -0.660563,
		0.627816, 0.570720, 0.529268,
		0.769481, -0.352659, -0.532477,
		25.484234, 37.197910, 24.455359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288921, 38.082649, 24.514858>,  <24.945597, 37.444771, 24.828091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288921, 38.082649, 24.514858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434456, 37.771664, 24.309654>,  <25.521776, 37.585072, 24.186531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434456, 37.771664, 24.309654>,  <25.288921, 38.082649, 24.514858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434456, 37.771664, 24.309654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254391, 0.612758, -0.748206,
		0.896052, 0.141718, 0.420722,
		0.363835, -0.777460, -0.513011,
		25.543606, 37.538425, 24.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931618, 38.296638, 24.339628>,  <25.288921, 38.082649, 24.514858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931618, 38.296638, 24.339628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851761, 38.006187, 24.076454>,  <25.803846, 37.831917, 23.918549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851761, 38.006187, 24.076454>,  <25.931618, 38.296638, 24.339628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851761, 38.006187, 24.076454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320740, 0.586037, -0.744102,
		0.925888, -0.359581, 0.115901,
		-0.199642, -0.726129, -0.657936,
		25.791868, 37.788349, 23.879074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535494, 38.258114, 23.894600>,  <25.931618, 38.296638, 24.339628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535494, 38.258114, 23.894600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254761, 38.079433, 23.672651>,  <26.086321, 37.972225, 23.539482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254761, 38.079433, 23.672651>,  <26.535494, 38.258114, 23.894600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254761, 38.079433, 23.672651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155117, 0.664411, -0.731093,
		0.695242, -0.599179, -0.397018,
		-0.701838, -0.446702, -0.554869,
		26.044210, 37.945423, 23.506189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809856, 38.206383, 23.200001>,  <26.535494, 38.258114, 23.894600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809856, 38.206383, 23.200001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412909, 38.163929, 23.174885>,  <26.174740, 38.138458, 23.159815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412909, 38.163929, 23.174885>,  <26.809856, 38.206383, 23.200001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412909, 38.163929, 23.174885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016061, 0.616094, -0.787509,
		0.122265, -0.780490, -0.613096,
		-0.992368, -0.106132, -0.062791,
		26.115198, 38.132088, 23.156048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734829, 38.207787, 22.529009>,  <26.809856, 38.206383, 23.200001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734829, 38.207787, 22.529009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378454, 38.305210, 22.682325>,  <26.164629, 38.363663, 22.774315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378454, 38.305210, 22.682325>,  <26.734829, 38.207787, 22.529009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378454, 38.305210, 22.682325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085558, 0.738882, -0.668381,
		-0.445994, -0.628279, -0.637460,
		-0.890937, 0.243554, 0.383291,
		26.111174, 38.378277, 22.797314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285622, 38.317726, 21.928608>,  <26.734829, 38.207787, 22.529009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285622, 38.317726, 21.928608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101574, 38.508728, 22.228016>,  <25.991144, 38.623329, 22.407660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101574, 38.508728, 22.228016>,  <26.285622, 38.317726, 21.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101574, 38.508728, 22.228016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149753, 0.789244, -0.595540,
		-0.875136, -0.386113, -0.291639,
		-0.460120, 0.477505, 0.748518,
		25.963537, 38.651981, 22.452572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582062, 38.512871, 21.685097>,  <26.285622, 38.317726, 21.928608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582062, 38.512871, 21.685097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681314, 38.741501, 21.997952>,  <25.740866, 38.878677, 22.185663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681314, 38.741501, 21.997952>,  <25.582062, 38.512871, 21.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681314, 38.741501, 21.997952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204942, 0.820083, -0.534286,
		-0.946800, -0.027719, 0.320628,
		0.248132, 0.571572, 0.782135,
		25.755754, 38.912971, 22.232592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104393, 39.064983, 21.595467>,  <25.582062, 38.512871, 21.685097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104393, 39.064983, 21.595467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373985, 39.220531, 21.846712>,  <25.535740, 39.313862, 21.997459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373985, 39.220531, 21.846712>,  <25.104393, 39.064983, 21.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373985, 39.220531, 21.846712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172459, 0.909570, -0.378075,
		-0.718338, 0.146491, 0.680096,
		0.673980, 0.388874, 0.628115,
		25.576180, 39.337193, 22.035147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206608, 39.814911, 21.558151>,  <25.104393, 39.064983, 21.595467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206608, 39.814911, 21.558151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151831, 40.202019, 21.473618>,  <25.118963, 40.434284, 21.422897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151831, 40.202019, 21.473618>,  <25.206608, 39.814911, 21.558151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151831, 40.202019, 21.473618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, -0.192783, -0.971624,
		-0.981053, -0.162021, -0.106230,
		-0.136944, 0.967773, -0.211335,
		25.110748, 40.492352, 21.410217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580467, 39.888866, 21.127773>,  <25.206608, 39.814911, 21.558151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580467, 39.888866, 21.127773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775509, 40.229271, 21.049776>,  <24.892534, 40.433514, 21.002977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775509, 40.229271, 21.049776>,  <24.580467, 39.888866, 21.127773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775509, 40.229271, 21.049776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028989, -0.207437, -0.977819,
		-0.872585, 0.482439, -0.076477,
		0.487602, 0.851013, -0.194991,
		24.921789, 40.484573, 20.991280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192598, 40.292465, 20.687960>,  <24.580467, 39.888866, 21.127773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192598, 40.292465, 20.687960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577551, 40.395931, 20.654686>,  <24.808521, 40.458012, 20.634722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577551, 40.395931, 20.654686>,  <24.192598, 40.292465, 20.687960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577551, 40.395931, 20.654686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013810, -0.259188, -0.965728,
		-0.271357, 0.930546, -0.245865,
		0.962380, 0.258662, -0.083184,
		24.866264, 40.473530, 20.629730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247005, 40.746475, 20.100780>,  <24.192598, 40.292465, 20.687960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247005, 40.746475, 20.100780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603163, 40.584236, 20.183428>,  <24.816858, 40.486893, 20.233017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603163, 40.584236, 20.183428>,  <24.247005, 40.746475, 20.100780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603163, 40.584236, 20.183428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062721, -0.340267, -0.938235,
		0.450848, 0.848358, -0.277532,
		0.890394, -0.405594, 0.206619,
		24.870281, 40.462559, 20.245413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850231, 41.030338, 19.676237>,  <24.247005, 40.746475, 20.100780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850231, 41.030338, 19.676237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899729, 40.651546, 19.794846>,  <24.929426, 40.424271, 19.866011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899729, 40.651546, 19.794846>,  <24.850231, 41.030338, 19.676237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899729, 40.651546, 19.794846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184755, -0.271607, -0.944508,
		0.974963, 0.171659, 0.141349,
		0.123742, -0.946975, 0.296522,
		24.936852, 40.367455, 19.883802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464666, 41.064568, 19.338036>,  <24.850231, 41.030338, 19.676237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464666, 41.064568, 19.338036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853809, 41.082272, 19.247185>,  <26.087296, 41.092896, 19.192675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853809, 41.082272, 19.247185>,  <25.464666, 41.064568, 19.338036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853809, 41.082272, 19.247185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230746, -0.111929, 0.966555,
		0.017363, -0.992730, -0.119106,
		0.972859, 0.044266, -0.227125,
		26.145668, 41.095551, 19.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823244, 40.459778, 19.750364>,  <25.464666, 41.064568, 19.338036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823244, 40.459778, 19.750364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078112, 40.746769, 19.637760>,  <26.231031, 40.918964, 19.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078112, 40.746769, 19.637760>,  <25.823244, 40.459778, 19.750364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078112, 40.746769, 19.637760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125783, 0.263553, 0.956409,
		0.760391, -0.644803, 0.077682,
		0.637168, 0.717474, -0.281508,
		26.269262, 40.962009, 19.553308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489088, 40.402740, 20.107815>,  <25.823244, 40.459778, 19.750364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489088, 40.402740, 20.107815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399555, 40.779190, 20.006472>,  <26.345835, 41.005058, 19.945665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399555, 40.779190, 20.006472>,  <26.489088, 40.402740, 20.107815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399555, 40.779190, 20.006472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023164, 0.254744, 0.966731,
		0.974352, 0.222254, -0.035220,
		-0.223832, 0.941121, -0.253359,
		26.332405, 41.061527, 19.930464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057793, 40.825775, 20.625082>,  <26.489088, 40.402740, 20.107815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057793, 40.825775, 20.625082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667557, 40.738922, 20.611927>,  <25.433416, 40.686810, 20.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667557, 40.738922, 20.611927>,  <26.057793, 40.825775, 20.625082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667557, 40.738922, 20.611927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137507, 0.487196, 0.862399,
		-0.171232, 0.845868, -0.505160,
		-0.975588, -0.217134, -0.032889,
		25.374880, 40.673782, 20.602060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607744, 41.484558, 20.722645>,  <26.057793, 40.825775, 20.625082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607744, 41.484558, 20.722645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413900, 41.148273, 20.819271>,  <25.297594, 40.946503, 20.877247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413900, 41.148273, 20.819271>,  <25.607744, 41.484558, 20.722645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413900, 41.148273, 20.819271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166148, 0.359602, 0.918194,
		-0.858807, 0.404829, -0.313949,
		-0.484609, -0.840714, 0.241567,
		25.268518, 40.896061, 20.891741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112753, 41.743221, 21.194782>,  <25.607744, 41.484558, 20.722645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112753, 41.743221, 21.194782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104990, 41.349178, 21.263115>,  <25.100332, 41.112751, 21.304113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104990, 41.349178, 21.263115>,  <25.112753, 41.743221, 21.194782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104990, 41.349178, 21.263115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227514, 0.170731, 0.958691,
		-0.973581, -0.020261, -0.227439,
		-0.019406, -0.985109, 0.170830,
		25.099169, 41.053646, 21.314363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477139, 41.603912, 21.531710>,  <25.112753, 41.743221, 21.194782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477139, 41.603912, 21.531710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747265, 41.331310, 21.644491>,  <24.909340, 41.167747, 21.712160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747265, 41.331310, 21.644491>,  <24.477139, 41.603912, 21.531710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747265, 41.331310, 21.644491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276039, 0.120955, 0.953505,
		-0.683925, -0.721746, -0.106440,
		0.675314, -0.681508, 0.281954,
		24.949860, 41.126858, 21.729078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218472, 41.154011, 22.116695>,  <24.477139, 41.603912, 21.531710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218472, 41.154011, 22.116695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614189, 41.096001, 22.123240>,  <24.851620, 41.061195, 22.127167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614189, 41.096001, 22.123240>,  <24.218472, 41.154011, 22.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614189, 41.096001, 22.123240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035559, -0.130788, 0.990772,
		-0.141569, -0.980742, -0.134545,
		0.989289, -0.145047, 0.016359,
		24.910976, 41.052494, 22.128147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.315649, 40.712284, 22.633591>,  <24.218472, 41.154011, 22.116695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.315649, 40.712284, 22.633591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676744, 40.877075, 22.584049>,  <24.893402, 40.975948, 22.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676744, 40.877075, 22.584049>,  <24.315649, 40.712284, 22.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676744, 40.877075, 22.584049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158394, -0.050636, 0.986077,
		0.399971, -0.909786, -0.110966,
		0.902737, 0.411978, -0.123851,
		24.947565, 41.000668, 22.546894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730404, 40.281807, 23.068676>,  <24.315649, 40.712284, 22.633591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730404, 40.281807, 23.068676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941336, 40.611996, 22.988153>,  <25.067896, 40.810108, 22.939840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941336, 40.611996, 22.988153>,  <24.730404, 40.281807, 23.068676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941336, 40.611996, 22.988153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328243, 0.020609, 0.944368,
		0.783696, -0.564071, -0.260087,
		0.527331, 0.825469, -0.201304,
		25.099535, 40.859638, 22.927763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409506, 40.203316, 23.338942>,  <24.730404, 40.281807, 23.068676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409506, 40.203316, 23.338942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379040, 40.599167, 23.290213>,  <25.360760, 40.836678, 23.260975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379040, 40.599167, 23.290213>,  <25.409506, 40.203316, 23.338942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379040, 40.599167, 23.290213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288378, 0.138821, 0.947400,
		0.954483, 0.037026, -0.295959,
		-0.076164, 0.989625, -0.121825,
		25.356192, 40.896053, 23.253666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963860, 40.519554, 23.765694>,  <25.409506, 40.203316, 23.338942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963860, 40.519554, 23.765694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683723, 40.799889, 23.711506>,  <25.515642, 40.968090, 23.678993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683723, 40.799889, 23.711506>,  <25.963860, 40.519554, 23.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683723, 40.799889, 23.711506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213955, 0.387162, 0.896844,
		0.680989, 0.599112, -0.421093,
		-0.700341, 0.700836, -0.135470,
		25.473621, 41.010139, 23.670864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285215, 41.146980, 23.918791>,  <25.963860, 40.519554, 23.765694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285215, 41.146980, 23.918791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894484, 41.228382, 23.945280>,  <25.660044, 41.277222, 23.961174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894484, 41.228382, 23.945280>,  <26.285215, 41.146980, 23.918791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894484, 41.228382, 23.945280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138053, 0.362757, 0.921601,
		0.163526, 0.909392, -0.382447,
		-0.976832, 0.203504, 0.066224,
		25.601435, 41.289433, 23.965147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171293, 41.906094, 24.116796>,  <26.285215, 41.146980, 23.918791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171293, 41.906094, 24.116796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846174, 41.696045, 24.217674>,  <25.651102, 41.570015, 24.278200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846174, 41.696045, 24.217674>,  <26.171293, 41.906094, 24.116796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846174, 41.696045, 24.217674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100811, 0.299595, 0.948725,
		-0.573754, 0.796548, -0.190572,
		-0.812799, -0.525124, 0.252195,
		25.602335, 41.538509, 24.293333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802706, 42.400162, 24.453169>,  <26.171293, 41.906094, 24.116796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802706, 42.400162, 24.453169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697729, 42.027527, 24.553780>,  <25.634743, 41.803947, 24.614147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697729, 42.027527, 24.553780>,  <25.802706, 42.400162, 24.453169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697729, 42.027527, 24.553780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222400, 0.195252, 0.955204,
		-0.938969, 0.306627, 0.155942,
		-0.262443, -0.931588, 0.251529,
		25.618996, 41.748051, 24.629238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515711, 42.519260, 25.071070>,  <25.802706, 42.400162, 24.453169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515711, 42.519260, 25.071070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570234, 42.123333, 25.087450>,  <25.602949, 41.885777, 25.097279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570234, 42.123333, 25.087450>,  <25.515711, 42.519260, 25.071070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570234, 42.123333, 25.087450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348573, 0.086616, 0.933271,
		-0.927317, -0.112938, 0.356831,
		0.136309, -0.989820, 0.040953,
		25.611128, 41.826385, 25.099735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373339, 42.331642, 25.728621>,  <25.515711, 42.519260, 25.071070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373339, 42.331642, 25.728621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604534, 42.042130, 25.577858>,  <25.743252, 41.868420, 25.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604534, 42.042130, 25.577858>,  <25.373339, 42.331642, 25.728621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604534, 42.042130, 25.577858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428878, -0.123517, 0.894878,
		-0.694255, -0.678879, 0.239024,
		0.577991, -0.723786, -0.376908,
		25.777931, 41.824993, 25.464785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455976, 41.902924, 26.350857>,  <25.373339, 42.331642, 25.728621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455976, 41.902924, 26.350857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734297, 41.759495, 26.101929>,  <25.901289, 41.673435, 25.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734297, 41.759495, 26.101929>,  <25.455976, 41.902924, 26.350857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734297, 41.759495, 26.101929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563278, -0.265155, 0.782567,
		-0.445621, -0.895051, 0.017483,
		0.695801, -0.358576, -0.622321,
		25.943037, 41.651920, 25.915232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697800, 41.302883, 26.695457>,  <25.455976, 41.902924, 26.350857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697800, 41.302883, 26.695457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982306, 41.386463, 26.426996>,  <26.153009, 41.436611, 26.265921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982306, 41.386463, 26.426996>,  <25.697800, 41.302883, 26.695457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982306, 41.386463, 26.426996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679774, -0.447483, 0.581090,
		-0.178912, -0.869540, -0.460315,
		0.711264, 0.208946, -0.671151,
		26.195684, 41.449146, 26.225651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931816, 40.618595, 26.366289>,  <25.697800, 41.302883, 26.695457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931816, 40.618595, 26.366289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197079, 40.916988, 26.390747>,  <26.356236, 41.096024, 26.405422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197079, 40.916988, 26.390747>,  <25.931816, 40.618595, 26.366289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197079, 40.916988, 26.390747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600326, -0.578900, 0.551800,
		0.447028, -0.329224, -0.831732,
		0.663155, 0.745981, 0.061143,
		26.396025, 41.140781, 26.409090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522741, 40.320820, 26.364191>,  <25.931816, 40.618595, 26.366289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522741, 40.320820, 26.364191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677839, 40.664330, 26.498148>,  <26.770899, 40.870438, 26.578522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677839, 40.664330, 26.498148>,  <26.522741, 40.320820, 26.364191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677839, 40.664330, 26.498148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555384, -0.507625, 0.658685,
		0.735664, -0.069409, -0.673782,
		0.387747, 0.858778, 0.334892,
		26.794163, 40.921963, 26.598616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189215, 40.131359, 26.548199>,  <26.522741, 40.320820, 26.364191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189215, 40.131359, 26.548199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115084, 40.480293, 26.729170>,  <27.070604, 40.689651, 26.837753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115084, 40.480293, 26.729170>,  <27.189215, 40.131359, 26.548199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115084, 40.480293, 26.729170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548655, -0.290105, 0.784103,
		0.815249, 0.393543, -0.424844,
		-0.185329, 0.872332, 0.452427,
		27.059484, 40.741993, 26.864899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806562, 40.264633, 26.921040>,  <27.189215, 40.131359, 26.548199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806562, 40.264633, 26.921040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533464, 40.505447, 27.086649>,  <27.369606, 40.649937, 27.186014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533464, 40.505447, 27.086649>,  <27.806562, 40.264633, 26.921040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533464, 40.505447, 27.086649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402243, -0.163345, 0.900844,
		0.609968, 0.781583, -0.130641,
		-0.682745, 0.602035, 0.414021,
		27.328642, 40.686058, 27.210855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277700, 40.604359, 27.426249>,  <27.806562, 40.264633, 26.921040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277700, 40.604359, 27.426249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888685, 40.631702, 27.515244>,  <27.655277, 40.648109, 27.568640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888685, 40.631702, 27.515244>,  <28.277700, 40.604359, 27.426249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888685, 40.631702, 27.515244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230127, 0.139242, 0.963147,
		0.034863, 0.987896, -0.151150,
		-0.972536, 0.068362, 0.222487,
		27.596924, 40.652210, 27.581989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273045, 41.156605, 27.833080>,  <28.277700, 40.604359, 27.426249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273045, 41.156605, 27.833080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946690, 40.946289, 27.929308>,  <27.750875, 40.820099, 27.987043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946690, 40.946289, 27.929308>,  <28.273045, 41.156605, 27.833080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946690, 40.946289, 27.929308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196187, 0.139641, 0.970573,
		-0.543907, 0.839076, -0.010779,
		-0.815890, -0.525787, 0.240567,
		27.701923, 40.788551, 28.001478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851004, 41.460674, 28.270851>,  <28.273045, 41.156605, 27.833080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851004, 41.460674, 28.270851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780338, 41.071899, 28.332996>,  <27.737940, 40.838634, 28.370283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780338, 41.071899, 28.332996>,  <27.851004, 41.460674, 28.270851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780338, 41.071899, 28.332996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204304, 0.118196, 0.971745,
		-0.962835, 0.203411, 0.177689,
		-0.176661, -0.971933, 0.155361,
		27.727341, 40.780319, 28.379604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700794, 41.412727, 29.012188>,  <27.851004, 41.460674, 28.270851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700794, 41.412727, 29.012188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711256, 41.020786, 28.932985>,  <27.717533, 40.785622, 28.885464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711256, 41.020786, 28.932985>,  <27.700794, 41.412727, 29.012188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711256, 41.020786, 28.932985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418396, -0.169160, 0.892373,
		-0.907888, -0.106186, 0.405541,
		0.026156, -0.979852, -0.198006,
		27.719103, 40.726830, 28.873583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424858, 41.113701, 29.554752>,  <27.700794, 41.412727, 29.012188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424858, 41.113701, 29.554752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649427, 40.838497, 29.370821>,  <27.784170, 40.673374, 29.260462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649427, 40.838497, 29.370821>,  <27.424858, 41.113701, 29.554752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649427, 40.838497, 29.370821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389740, -0.270346, 0.880350,
		-0.730003, -0.673464, 0.116367,
		0.561425, -0.688011, -0.459830,
		27.817854, 40.632095, 29.232872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286716, 40.467827, 29.981264>,  <27.424858, 41.113701, 29.554752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286716, 40.467827, 29.981264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624874, 40.418934, 29.773277>,  <27.827768, 40.389599, 29.648485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624874, 40.418934, 29.773277>,  <27.286716, 40.467827, 29.981264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624874, 40.418934, 29.773277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446616, -0.372195, 0.813637,
		-0.292984, -0.920070, -0.260060,
		0.845396, -0.122236, -0.519965,
		27.878492, 40.382263, 29.617289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588785, 39.821205, 30.317326>,  <27.286716, 40.467827, 29.981264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588785, 39.821205, 30.317326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874746, 40.005241, 30.106716>,  <28.046324, 40.115665, 29.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874746, 40.005241, 30.106716>,  <27.588785, 39.821205, 30.317326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874746, 40.005241, 30.106716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678805, -0.276028, 0.680465,
		0.167743, -0.843873, -0.509648,
		0.714903, 0.460095, -0.526523,
		28.089218, 40.143269, 29.948759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084246, 39.330334, 30.190643>,  <27.588785, 39.821205, 30.317326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084246, 39.330334, 30.190643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242790, 39.697475, 30.182276>,  <28.337917, 39.917763, 30.177256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242790, 39.697475, 30.182276>,  <28.084246, 39.330334, 30.190643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242790, 39.697475, 30.182276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655016, -0.266747, 0.706966,
		0.643314, -0.293914, -0.706939,
		0.396361, 0.917856, -0.020917,
		28.361698, 39.972832, 30.176001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877085, 39.213863, 30.181313>,  <28.084246, 39.330334, 30.190643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877085, 39.213863, 30.181313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839157, 39.597950, 30.286373>,  <28.816401, 39.828403, 30.349409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839157, 39.597950, 30.286373>,  <28.877085, 39.213863, 30.181313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839157, 39.597950, 30.286373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677878, -0.130940, 0.723420,
		0.729034, 0.246641, -0.638496,
		-0.094820, 0.960220, 0.262652,
		28.810711, 39.886017, 30.365170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583822, 39.446091, 30.356668>,  <28.877085, 39.213863, 30.181313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583822, 39.446091, 30.356668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339556, 39.707382, 30.535723>,  <29.192995, 39.864155, 30.643156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339556, 39.707382, 30.535723>,  <29.583822, 39.446091, 30.356668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339556, 39.707382, 30.535723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627494, 0.054346, 0.776722,
		0.483048, 0.755210, -0.443083,
		-0.610668, 0.653226, 0.447638,
		29.156355, 39.903351, 30.670013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040943, 39.941692, 30.707281>,  <29.583822, 39.446091, 30.356668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040943, 39.941692, 30.707281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683924, 40.012913, 30.873005>,  <29.469711, 40.055645, 30.972439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683924, 40.012913, 30.873005>,  <30.040943, 39.941692, 30.707281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683924, 40.012913, 30.873005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425197, 0.026266, 0.904719,
		0.150207, 0.983670, -0.099152,
		-0.892550, 0.178054, 0.414309,
		29.416159, 40.066330, 30.997297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214239, 40.474518, 31.142788>,  <30.040943, 39.941692, 30.707281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214239, 40.474518, 31.142788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879017, 40.290989, 31.260866>,  <29.677883, 40.180870, 31.331713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879017, 40.290989, 31.260866>,  <30.214239, 40.474518, 31.142788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879017, 40.290989, 31.260866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340816, -0.017767, 0.939962,
		-0.426033, 0.888349, 0.171264,
		-0.838057, -0.458824, 0.295195,
		29.627600, 40.153343, 31.349424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989132, 40.785587, 31.805573>,  <30.214239, 40.474518, 31.142788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989132, 40.785587, 31.805573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828817, 40.419277, 31.794817>,  <29.732628, 40.199490, 31.788364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828817, 40.419277, 31.794817>,  <29.989132, 40.785587, 31.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828817, 40.419277, 31.794817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429171, -0.213594, 0.877604,
		-0.809433, 0.340193, 0.478631,
		-0.400787, -0.915776, -0.026889,
		29.708582, 40.144543, 31.786751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741198, 40.754879, 32.463455>,  <29.989132, 40.785587, 31.805573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741198, 40.754879, 32.463455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766088, 40.383102, 32.317982>,  <29.781023, 40.160038, 32.230698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766088, 40.383102, 32.317982>,  <29.741198, 40.754879, 32.463455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766088, 40.383102, 32.317982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252405, -0.337887, 0.906710,
		-0.965618, -0.148219, 0.213570,
		0.062229, -0.929443, -0.363681,
		29.784758, 40.104271, 32.208878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429840, 40.349499, 32.989471>,  <29.741198, 40.754879, 32.463455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429840, 40.349499, 32.989471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668169, 40.111385, 32.773834>,  <29.811167, 39.968517, 32.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668169, 40.111385, 32.773834>,  <29.429840, 40.349499, 32.989471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668169, 40.111385, 32.773834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370447, -0.391872, 0.842144,
		-0.712575, -0.701476, -0.012964,
		0.595824, -0.595288, -0.539098,
		29.846916, 39.932800, 32.612106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382444, 39.745556, 33.389484>,  <29.429840, 40.349499, 32.989471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382444, 39.745556, 33.389484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687098, 39.717793, 33.131771>,  <29.869890, 39.701134, 32.977142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687098, 39.717793, 33.131771>,  <29.382444, 39.745556, 33.389484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687098, 39.717793, 33.131771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570863, -0.398619, 0.717787,
		-0.306639, -0.914487, -0.263982,
		0.761635, -0.069404, -0.644279,
		29.915588, 39.696972, 32.938488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596066, 39.097668, 33.582115>,  <29.382444, 39.745556, 33.389484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596066, 39.097668, 33.582115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902891, 39.258430, 33.382080>,  <30.086987, 39.354889, 33.262058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902891, 39.258430, 33.382080>,  <29.596066, 39.097668, 33.582115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902891, 39.258430, 33.382080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636192, -0.375743, 0.673852,
		0.082920, -0.835038, -0.543907,
		0.767062, 0.401905, -0.500088,
		30.133009, 39.379002, 33.232052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962641, 38.555927, 33.437004>,  <29.596066, 39.097668, 33.582115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962641, 38.555927, 33.437004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194815, 38.881378, 33.423714>,  <30.334120, 39.076649, 33.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194815, 38.881378, 33.423714>,  <29.962641, 38.555927, 33.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194815, 38.881378, 33.423714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554070, -0.364711, 0.748327,
		0.596744, -0.452762, -0.662498,
		0.580434, 0.813629, -0.033223,
		30.368944, 39.125465, 33.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681297, 38.257401, 33.431778>,  <29.962641, 38.555927, 33.437004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681297, 38.257401, 33.431778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674433, 38.637535, 33.556072>,  <30.670315, 38.865616, 33.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674433, 38.637535, 33.556072>,  <30.681297, 38.257401, 33.431778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674433, 38.637535, 33.556072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497935, -0.261382, 0.826886,
		0.867045, 0.168918, -0.468722,
		-0.017160, 0.950340, 0.310740,
		30.669285, 38.922638, 33.649296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435101, 38.298370, 33.570213>,  <30.681297, 38.257401, 33.431778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435101, 38.298370, 33.570213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192501, 38.569420, 33.736580>,  <31.046942, 38.732048, 33.836399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192501, 38.569420, 33.736580>,  <31.435101, 38.298370, 33.570213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192501, 38.569420, 33.736580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323231, -0.267793, 0.907639,
		0.726416, 0.684920, -0.056613,
		-0.606500, 0.677622, 0.415916,
		31.010551, 38.772705, 33.861355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851833, 38.900494, 33.351753>,  <31.435101, 38.298370, 33.570213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851833, 38.900494, 33.351753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182793, 39.083496, 33.482048>,  <32.381367, 39.193298, 33.560226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182793, 39.083496, 33.482048>,  <31.851833, 38.900494, 33.351753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182793, 39.083496, 33.482048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152230, 0.740980, -0.654045,
		-0.540594, 0.491567, 0.682730,
		0.827396, 0.457504, 0.325738,
		32.431011, 39.220749, 33.579769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659527, 39.646282, 33.338043>,  <31.851833, 38.900494, 33.351753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659527, 39.646282, 33.338043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044186, 39.568020, 33.261154>,  <32.274982, 39.521061, 33.215019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044186, 39.568020, 33.261154>,  <31.659527, 39.646282, 33.338043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044186, 39.568020, 33.261154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044280, 0.580883, -0.812782,
		0.270686, 0.790123, 0.549941,
		0.961649, -0.195657, -0.192224,
		32.332680, 39.509323, 33.203487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977186, 40.285477, 33.192734>,  <31.659527, 39.646282, 33.338043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977186, 40.285477, 33.192734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203228, 40.004963, 33.018906>,  <32.338852, 39.836655, 32.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203228, 40.004963, 33.018906>,  <31.977186, 40.285477, 33.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203228, 40.004963, 33.018906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101434, 0.463690, -0.880172,
		0.818760, 0.541469, 0.190899,
		0.565104, -0.701286, -0.434574,
		32.372761, 39.794579, 32.888535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309628, 40.655594, 32.600513>,  <31.977186, 40.285477, 33.192734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309628, 40.655594, 32.600513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388313, 40.279919, 32.487919>,  <32.435524, 40.054516, 32.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388313, 40.279919, 32.487919>,  <32.309628, 40.655594, 32.600513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388313, 40.279919, 32.487919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146465, 0.255727, -0.955590,
		0.969458, 0.229210, -0.087252,
		0.196718, -0.939184, -0.281488,
		32.447330, 39.998165, 32.403473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868137, 40.819191, 32.102154>,  <32.309628, 40.655594, 32.600513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868137, 40.819191, 32.102154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744526, 40.442646, 32.047989>,  <32.670361, 40.216717, 32.015491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744526, 40.442646, 32.047989>,  <32.868137, 40.819191, 32.102154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744526, 40.442646, 32.047989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406809, 0.259537, -0.875870,
		0.859657, -0.215579, -0.463159,
		-0.309026, -0.941364, -0.135413,
		32.651817, 40.160236, 32.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255234, 40.439190, 31.598576>,  <32.868137, 40.819191, 32.102154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255234, 40.439190, 31.598576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892822, 40.271908, 31.624516>,  <32.675373, 40.171539, 31.640079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892822, 40.271908, 31.624516>,  <33.255234, 40.439190, 31.598576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892822, 40.271908, 31.624516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154655, 0.184547, -0.970580,
		0.393937, -0.889406, -0.231883,
		-0.906033, -0.418209, 0.064851,
		32.621014, 40.146446, 31.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193394, 39.961655, 31.073442>,  <33.255234, 40.439190, 31.598576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193394, 39.961655, 31.073442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811485, 40.051701, 31.151146>,  <32.582340, 40.105728, 31.197767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811485, 40.051701, 31.151146>,  <33.193394, 39.961655, 31.073442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811485, 40.051701, 31.151146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157470, 0.171365, -0.972542,
		-0.252227, -0.959143, -0.128164,
		-0.954770, 0.225120, 0.194259,
		32.525055, 40.119236, 31.209423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876831, 39.750381, 30.458857>,  <33.193394, 39.961655, 31.073442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876831, 39.750381, 30.458857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604156, 39.951904, 30.671076>,  <32.440552, 40.072819, 30.798407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604156, 39.951904, 30.671076>,  <32.876831, 39.750381, 30.458857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604156, 39.951904, 30.671076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370738, 0.387298, -0.844129,
		-0.630762, -0.772124, -0.077233,
		-0.681684, 0.503811, 0.530549,
		32.399651, 40.103046, 30.830240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233528, 39.553474, 30.159084>,  <32.876831, 39.750381, 30.458857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233528, 39.553474, 30.159084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176762, 39.894440, 30.360380>,  <32.142704, 40.099018, 30.481157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176762, 39.894440, 30.360380>,  <32.233528, 39.553474, 30.159084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176762, 39.894440, 30.360380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338417, 0.435974, -0.833907,
		-0.930234, -0.288647, 0.226601,
		-0.141913, 0.852414, 0.503241,
		32.134190, 40.150166, 30.511353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653711, 39.864113, 29.786343>,  <32.233528, 39.553474, 30.159084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653711, 39.864113, 29.786343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780548, 40.170525, 30.010002>,  <31.856649, 40.354374, 30.144197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780548, 40.170525, 30.010002>,  <31.653711, 39.864113, 29.786343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780548, 40.170525, 30.010002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465554, 0.639377, -0.611928,
		-0.826264, -0.066276, 0.559371,
		0.317093, 0.766032, 0.559149,
		31.875675, 40.400333, 30.177748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154604, 40.230549, 29.877281>,  <31.653711, 39.864113, 29.786343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154604, 40.230549, 29.877281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435186, 40.507130, 29.946386>,  <31.603537, 40.673080, 29.987850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435186, 40.507130, 29.946386>,  <31.154604, 40.230549, 29.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435186, 40.507130, 29.946386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490344, 0.644123, -0.587084,
		-0.517222, 0.327102, 0.790876,
		0.701458, 0.691454, 0.172762,
		31.645624, 40.714565, 29.998215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783609, 40.835556, 30.164347>,  <31.154604, 40.230549, 29.877281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783609, 40.835556, 30.164347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127394, 40.957375, 30.000114>,  <31.333664, 41.030468, 29.901575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127394, 40.957375, 30.000114>,  <30.783609, 40.835556, 30.164347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127394, 40.957375, 30.000114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511160, 0.522190, -0.682666,
		0.006495, 0.796597, 0.604476,
		0.859461, 0.304550, -0.410580,
		31.385233, 41.048740, 29.876940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661951, 41.560837, 29.859825>,  <30.783609, 40.835556, 30.164347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661951, 41.560837, 29.859825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012545, 41.490944, 29.680384>,  <31.222900, 41.449009, 29.572720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012545, 41.490944, 29.680384>,  <30.661951, 41.560837, 29.859825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012545, 41.490944, 29.680384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325577, 0.471289, -0.819687,
		0.354651, 0.864496, 0.356186,
		0.876483, -0.174737, -0.448603,
		31.275490, 41.438522, 29.545803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848415, 42.174274, 29.602671>,  <30.661951, 41.560837, 29.859825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848415, 42.174274, 29.602671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054577, 41.918644, 29.374304>,  <31.178274, 41.765266, 29.237284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054577, 41.918644, 29.374304>,  <30.848415, 42.174274, 29.602671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054577, 41.918644, 29.374304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320038, 0.474469, -0.820033,
		0.794944, 0.605362, 0.040014,
		0.515402, -0.639075, -0.570915,
		31.209198, 41.726921, 29.203030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104155, 42.604576, 29.029806>,  <30.848415, 42.174274, 29.602671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104155, 42.604576, 29.029806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134169, 42.231941, 28.887533>,  <31.152178, 42.008358, 28.802170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134169, 42.231941, 28.887533>,  <31.104155, 42.604576, 29.029806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134169, 42.231941, 28.887533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442199, 0.288615, -0.849212,
		0.893773, 0.221005, -0.390291,
		0.075037, -0.931589, -0.355684,
		31.156679, 41.952465, 28.780828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363319, 42.655716, 28.334799>,  <31.104155, 42.604576, 29.029806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363319, 42.655716, 28.334799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194338, 42.294338, 28.363998>,  <31.092949, 42.077511, 28.381517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194338, 42.294338, 28.363998>,  <31.363319, 42.655716, 28.334799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194338, 42.294338, 28.363998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443596, 0.135849, -0.885871,
		0.790415, -0.406620, -0.458153,
		-0.422452, -0.903441, 0.072998,
		31.067602, 42.023308, 28.385899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422398, 42.379932, 27.657740>,  <31.363319, 42.655716, 28.334799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422398, 42.379932, 27.657740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127192, 42.173306, 27.831404>,  <30.950068, 42.049328, 27.935602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127192, 42.173306, 27.831404>,  <31.422398, 42.379932, 27.657740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127192, 42.173306, 27.831404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546406, 0.079945, -0.833696,
		0.395952, -0.852506, -0.341256,
		-0.738013, -0.516569, 0.434160,
		30.905788, 42.018333, 27.961651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300707, 41.860886, 27.188696>,  <31.422398, 42.379932, 27.657740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300707, 41.860886, 27.188696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969723, 41.928551, 27.402870>,  <30.771132, 41.969151, 27.531374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969723, 41.928551, 27.402870>,  <31.300707, 41.860886, 27.188696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969723, 41.928551, 27.402870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543596, -0.002307, -0.839344,
		-0.140752, -0.985585, 0.093866,
		-0.827462, 0.169164, 0.535435,
		30.721483, 41.979301, 27.563501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807598, 41.447411, 26.937897>,  <31.300707, 41.860886, 27.188696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807598, 41.447411, 26.937897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582783, 41.706310, 27.143879>,  <30.447893, 41.861652, 27.267467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582783, 41.706310, 27.143879>,  <30.807598, 41.447411, 26.937897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582783, 41.706310, 27.143879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688789, -0.021581, -0.724640,
		-0.457913, -0.761969, 0.457951,
		-0.562036, 0.647254, 0.514954,
		30.414171, 41.900486, 27.298365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139616, 41.153236, 26.923525>,  <30.807598, 41.447411, 26.937897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139616, 41.153236, 26.923525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097506, 41.536331, 27.030602>,  <30.072239, 41.766190, 27.094847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097506, 41.536331, 27.030602>,  <30.139616, 41.153236, 26.923525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097506, 41.536331, 27.030602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833172, 0.062009, -0.549527,
		-0.542901, -0.280885, 0.791431,
		-0.105278, 0.957736, 0.267690,
		30.065922, 41.823650, 27.110909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462982, 41.243244, 27.154213>,  <30.139616, 41.153236, 26.923525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462982, 41.243244, 27.154213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604034, 41.593655, 27.022621>,  <29.688665, 41.803902, 26.943666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604034, 41.593655, 27.022621>,  <29.462982, 41.243244, 27.154213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604034, 41.593655, 27.022621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814345, 0.114103, -0.569054,
		-0.460970, 0.468567, 0.753625,
		0.352631, 0.876028, -0.328977,
		29.709824, 41.856464, 26.923927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817493, 41.603638, 27.128929>,  <29.462982, 41.243244, 27.154213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817493, 41.603638, 27.128929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097252, 41.787243, 26.909786>,  <29.265106, 41.897408, 26.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097252, 41.787243, 26.909786>,  <28.817493, 41.603638, 27.128929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097252, 41.787243, 26.909786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697028, 0.268485, -0.664882,
		-0.158101, 0.846888, 0.507726,
		0.699397, 0.459017, -0.547857,
		29.307072, 41.924950, 26.745430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469181, 42.194656, 26.766308>,  <28.817493, 41.603638, 27.128929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469181, 42.194656, 26.766308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788147, 42.099789, 26.544359>,  <28.979527, 42.042870, 26.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788147, 42.099789, 26.544359>,  <28.469181, 42.194656, 26.766308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788147, 42.099789, 26.544359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506279, 0.237397, -0.829050,
		0.328351, 0.942015, 0.069228,
		0.797413, -0.237171, -0.554872,
		29.027370, 42.028637, 26.377897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628950, 42.774349, 26.347757>,  <28.469181, 42.194656, 26.766308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628950, 42.774349, 26.347757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808805, 42.462635, 26.173157>,  <28.916719, 42.275604, 26.068396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808805, 42.462635, 26.173157>,  <28.628950, 42.774349, 26.347757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808805, 42.462635, 26.173157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459076, 0.217583, -0.861341,
		0.766209, 0.587679, -0.259919,
		0.449638, -0.779289, -0.436503,
		28.943697, 42.228848, 26.042206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807119, 43.044521, 25.687075>,  <28.628950, 42.774349, 26.347757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807119, 43.044521, 25.687075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830242, 42.646729, 25.652071>,  <28.844116, 42.408051, 25.631069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830242, 42.646729, 25.652071>,  <28.807119, 43.044521, 25.687075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830242, 42.646729, 25.652071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366627, 0.060382, -0.928407,
		0.928570, 0.085752, -0.361115,
		0.057808, -0.994485, -0.087507,
		28.847584, 42.348381, 25.625818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111588, 42.958492, 25.084625>,  <28.807119, 43.044521, 25.687075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111588, 42.958492, 25.084625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917189, 42.614384, 25.146265>,  <28.800550, 42.407921, 25.183249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917189, 42.614384, 25.146265>,  <29.111588, 42.958492, 25.084625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917189, 42.614384, 25.146265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325167, 0.014322, -0.945548,
		0.811219, -0.509639, -0.286691,
		-0.485995, -0.860269, 0.154099,
		28.771391, 42.356304, 25.192495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370249, 42.518764, 24.613401>,  <29.111588, 42.958492, 25.084625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370249, 42.518764, 24.613401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007006, 42.385727, 24.715164>,  <28.789061, 42.305904, 24.776222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007006, 42.385727, 24.715164>,  <29.370249, 42.518764, 24.613401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007006, 42.385727, 24.715164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303906, 0.105520, -0.946840,
		0.288066, -0.937149, -0.196900,
		-0.908107, -0.332592, 0.254409,
		28.734573, 42.285950, 24.791487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253227, 42.078918, 24.163887>,  <29.370249, 42.518764, 24.613401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253227, 42.078918, 24.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876112, 42.029549, 24.287771>,  <28.649843, 41.999928, 24.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876112, 42.029549, 24.287771>,  <29.253227, 42.078918, 24.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876112, 42.029549, 24.287771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302379, -0.074753, -0.950252,
		0.140436, -0.989534, 0.033156,
		-0.942786, -0.123424, 0.309713,
		28.593277, 41.992523, 24.380686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998360, 41.412880, 23.809561>,  <29.253227, 42.078918, 24.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998360, 41.412880, 23.809561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707737, 41.661987, 23.925684>,  <28.533363, 41.811451, 23.995358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707737, 41.661987, 23.925684>,  <28.998360, 41.412880, 23.809561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707737, 41.661987, 23.925684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443567, -0.102437, -0.890368,
		-0.524753, -0.775672, 0.350666,
		-0.726555, 0.622767, 0.290309,
		28.489771, 41.848816, 24.012777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349897, 40.894566, 23.619797>,  <28.998360, 41.412880, 23.809561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349897, 40.894566, 23.619797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241781, 41.277134, 23.663988>,  <28.176910, 41.506676, 23.690504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241781, 41.277134, 23.663988>,  <28.349897, 40.894566, 23.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241781, 41.277134, 23.663988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536107, -0.054199, -0.842408,
		-0.799707, -0.286926, 0.527392,
		-0.270292, 0.956418, 0.110480,
		28.160694, 41.564060, 23.697132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707893, 40.866570, 23.419287>,  <28.349897, 40.894566, 23.619797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707893, 40.866570, 23.419287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850323, 41.238865, 23.385977>,  <27.935780, 41.462242, 23.365990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850323, 41.238865, 23.385977>,  <27.707893, 40.866570, 23.419287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850323, 41.238865, 23.385977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385179, 0.064993, -0.920551,
		-0.851380, 0.359860, 0.381644,
		0.356074, 0.930740, -0.083277,
		27.957146, 41.518085, 23.360994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093882, 41.249207, 23.360022>,  <27.707893, 40.866570, 23.419287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093882, 41.249207, 23.360022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414072, 41.426632, 23.198784>,  <27.606186, 41.533089, 23.102041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414072, 41.426632, 23.198784>,  <27.093882, 41.249207, 23.360022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414072, 41.426632, 23.198784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404335, -0.096807, -0.909473,
		-0.442435, 0.890997, 0.101858,
		0.800477, 0.443568, -0.403092,
		27.654215, 41.559704, 23.077856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838388, 41.521164, 22.788197>,  <27.093882, 41.249207, 23.360022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838388, 41.521164, 22.788197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232407, 41.520077, 22.719282>,  <27.468817, 41.519424, 22.677933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232407, 41.520077, 22.719282>,  <26.838388, 41.521164, 22.788197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232407, 41.520077, 22.719282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170856, -0.144964, -0.974574,
		-0.022325, 0.989433, -0.143261,
		0.985043, -0.002719, -0.172287,
		27.527920, 41.519260, 22.667597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983778, 42.008999, 22.232283>,  <26.838388, 41.521164, 22.788197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983778, 42.008999, 22.232283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322929, 41.798901, 22.203371>,  <27.526421, 41.672844, 22.186024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322929, 41.798901, 22.203371>,  <26.983778, 42.008999, 22.232283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322929, 41.798901, 22.203371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020649, 0.103509, -0.994414,
		0.529791, 0.844633, 0.076917,
		0.847877, -0.525244, -0.072279,
		27.577291, 41.641327, 22.181688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262547, 42.218006, 21.678970>,  <26.983778, 42.008999, 22.232283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262547, 42.218006, 21.678970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490646, 41.894375, 21.735823>,  <27.627506, 41.700195, 21.769934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490646, 41.894375, 21.735823>,  <27.262547, 42.218006, 21.678970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490646, 41.894375, 21.735823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011800, -0.164934, -0.986234,
		0.821385, 0.564079, -0.084507,
		0.570252, -0.809081, 0.142131,
		27.661722, 41.651649, 21.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865944, 42.215004, 21.093887>,  <27.262547, 42.218006, 21.678970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865944, 42.215004, 21.093887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739725, 41.852768, 21.207268>,  <27.663994, 41.635426, 21.275295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739725, 41.852768, 21.207268>,  <27.865944, 42.215004, 21.093887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739725, 41.852768, 21.207268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163479, -0.242366, -0.956312,
		0.934722, -0.348098, -0.071567,
		-0.315545, -0.905586, 0.283452,
		27.645061, 41.581093, 21.292303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943769, 41.866707, 20.512775>,  <27.865944, 42.215004, 21.093887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943769, 41.866707, 20.512775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728708, 41.609364, 20.730772>,  <27.599670, 41.454956, 20.861570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728708, 41.609364, 20.730772>,  <27.943769, 41.866707, 20.512775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728708, 41.609364, 20.730772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380838, -0.391374, -0.837728,
		0.752256, -0.657962, -0.034592,
		-0.537655, -0.643360, 0.544991,
		27.567411, 41.416355, 20.894270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863693, 41.275921, 20.102760>,  <27.943769, 41.866707, 20.512775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863693, 41.275921, 20.102760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591442, 41.171638, 20.376631>,  <27.428091, 41.109070, 20.540953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591442, 41.171638, 20.376631>,  <27.863693, 41.275921, 20.102760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591442, 41.171638, 20.376631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591156, -0.356598, -0.723444,
		0.432758, -0.897146, 0.088595,
		-0.680628, -0.260703, 0.684675,
		27.387253, 41.093430, 20.582033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608435, 40.646553, 19.883486>,  <27.863693, 41.275921, 20.102760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608435, 40.646553, 19.883486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330364, 40.800369, 20.126421>,  <27.163523, 40.892658, 20.272182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330364, 40.800369, 20.126421>,  <27.608435, 40.646553, 19.883486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330364, 40.800369, 20.126421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717406, -0.317813, -0.619939,
		-0.045369, -0.866675, 0.496805,
		-0.695177, 0.384537, 0.607339,
		27.121811, 40.915730, 20.308622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758659, 39.927303, 19.911194>,  <27.608435, 40.646553, 19.883486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758659, 39.927303, 19.911194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947016, 39.640743, 19.705267>,  <28.060030, 39.468807, 19.581711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947016, 39.640743, 19.705267>,  <27.758659, 39.927303, 19.911194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947016, 39.640743, 19.705267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374398, -0.366120, 0.851929,
		-0.798805, -0.593911, 0.095815,
		0.470890, -0.716398, -0.514817,
		28.088284, 39.425823, 19.550821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613905, 39.194126, 20.238285>,  <27.758659, 39.927303, 19.911194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613905, 39.194126, 20.238285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956469, 39.192841, 20.031771>,  <28.162006, 39.192070, 19.907862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956469, 39.192841, 20.031771>,  <27.613905, 39.194126, 20.238285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956469, 39.192841, 20.031771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491078, -0.303634, 0.816486,
		-0.159384, -0.952783, -0.258458,
		0.856411, -0.003212, -0.516285,
		28.213392, 39.191875, 19.876884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969078, 38.786163, 20.674803>,  <27.613905, 39.194126, 20.238285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969078, 38.786163, 20.674803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245913, 38.932434, 20.425871>,  <28.412014, 39.020195, 20.276512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245913, 38.932434, 20.425871>,  <27.969078, 38.786163, 20.674803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245913, 38.932434, 20.425871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647930, 0.065255, 0.758899,
		0.318121, -0.928452, -0.191770,
		0.692088, 0.365675, -0.622331,
		28.453539, 39.042137, 20.239172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613466, 38.320148, 20.761938>,  <27.969078, 38.786163, 20.674803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613466, 38.320148, 20.761938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710955, 38.677402, 20.610723>,  <28.769447, 38.891754, 20.519995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710955, 38.677402, 20.610723>,  <28.613466, 38.320148, 20.761938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710955, 38.677402, 20.610723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742021, 0.079274, 0.665673,
		0.624504, -0.442748, -0.643404,
		0.243721, 0.893135, -0.378035,
		28.784071, 38.945343, 20.497313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481434, 38.369698, 20.713999>,  <28.613466, 38.320148, 20.761938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481434, 38.369698, 20.713999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339769, 38.743767, 20.712141>,  <29.254770, 38.968208, 20.711025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339769, 38.743767, 20.712141>,  <29.481434, 38.369698, 20.713999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339769, 38.743767, 20.712141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763163, 0.291884, 0.576529,
		0.540510, 0.200639, -0.817063,
		-0.354162, 0.935173, -0.004646,
		29.233521, 39.024319, 20.710747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093115, 38.756157, 20.635866>,  <29.481434, 38.369698, 20.713999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093115, 38.756157, 20.635866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829391, 39.017242, 20.785147>,  <29.671158, 39.173893, 20.874716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829391, 39.017242, 20.785147>,  <30.093115, 38.756157, 20.635866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829391, 39.017242, 20.785147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686816, 0.320858, 0.652176,
		0.305940, 0.686305, -0.659838,
		-0.659306, 0.652714, 0.373202,
		29.631599, 39.213058, 20.897108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526409, 39.224972, 20.789520>,  <30.093115, 38.756157, 20.635866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526409, 39.224972, 20.789520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205610, 39.330177, 21.004044>,  <30.013132, 39.393299, 21.132757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205610, 39.330177, 21.004044>,  <30.526409, 39.224972, 20.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205610, 39.330177, 21.004044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588034, 0.505417, 0.631482,
		-0.104973, 0.821815, -0.560001,
		-0.801995, 0.263011, 0.536310,
		29.965012, 39.409081, 21.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432068, 40.020214, 20.884615>,  <30.526409, 39.224972, 20.789520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432068, 40.020214, 20.884615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237019, 39.822006, 21.172138>,  <30.119989, 39.703083, 21.344652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237019, 39.822006, 21.172138>,  <30.432068, 40.020214, 20.884615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237019, 39.822006, 21.172138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478066, 0.537377, 0.694751,
		-0.730532, 0.682415, -0.025148,
		-0.487623, -0.495516, 0.718810,
		30.090733, 39.673351, 21.387781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395144, 40.473606, 21.406502>,  <30.432068, 40.020214, 20.884615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395144, 40.473606, 21.406502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320242, 40.133076, 21.602537>,  <30.275301, 39.928757, 21.720158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320242, 40.133076, 21.602537>,  <30.395144, 40.473606, 21.406502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320242, 40.133076, 21.602537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292639, 0.427913, 0.855134,
		-0.937709, 0.303547, 0.169000,
		-0.187256, -0.851322, 0.490087,
		30.264065, 39.877678, 21.749563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122690, 40.663326, 22.090435>,  <30.395144, 40.473606, 21.406502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122690, 40.663326, 22.090435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240860, 40.281548, 22.107227>,  <30.311762, 40.052483, 22.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240860, 40.281548, 22.107227>,  <30.122690, 40.663326, 22.090435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240860, 40.281548, 22.107227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309818, 0.137278, 0.940834,
		-0.903735, -0.264939, 0.336259,
		0.295424, -0.954443, 0.041980,
		30.329487, 39.995216, 22.119822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920919, 40.459187, 22.687807>,  <30.122690, 40.663326, 22.090435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920919, 40.459187, 22.687807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205786, 40.188648, 22.612568>,  <30.376705, 40.026325, 22.567425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205786, 40.188648, 22.612568>,  <29.920919, 40.459187, 22.687807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205786, 40.188648, 22.612568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298229, 0.048921, 0.953240,
		-0.635517, -0.734959, 0.236545,
		0.712164, -0.676345, -0.188096,
		30.419436, 39.985744, 22.556139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977211, 40.106781, 23.352568>,  <29.920919, 40.459187, 22.687807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977211, 40.106781, 23.352568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313644, 39.998959, 23.164986>,  <30.515505, 39.934265, 23.052437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313644, 39.998959, 23.164986>,  <29.977211, 40.106781, 23.352568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313644, 39.998959, 23.164986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494111, 0.030143, 0.868876,
		-0.220075, -0.962513, 0.158543,
		0.841083, -0.269556, -0.468955,
		30.565969, 39.918091, 23.024300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269014, 39.438457, 23.671974>,  <29.977211, 40.106781, 23.352568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269014, 39.438457, 23.671974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559498, 39.638443, 23.483229>,  <30.733788, 39.758434, 23.369982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559498, 39.638443, 23.483229>,  <30.269014, 39.438457, 23.671974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559498, 39.638443, 23.483229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572511, -0.059832, 0.817711,
		0.380594, -0.863976, -0.329686,
		0.726209, 0.499965, -0.471864,
		30.777361, 39.788433, 23.341669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824661, 39.030804, 23.730251>,  <30.269014, 39.438457, 23.671974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824661, 39.030804, 23.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967525, 39.401634, 23.684702>,  <31.053244, 39.624134, 23.657373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967525, 39.401634, 23.684702>,  <30.824661, 39.030804, 23.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967525, 39.401634, 23.684702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550517, -0.110448, 0.827486,
		0.754566, -0.358231, -0.549819,
		0.357158, 0.927077, -0.113872,
		31.074673, 39.679756, 23.650539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510008, 39.009007, 23.957859>,  <30.824661, 39.030804, 23.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510008, 39.009007, 23.957859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441208, 39.402576, 23.977053>,  <31.399929, 39.638718, 23.988569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441208, 39.402576, 23.977053>,  <31.510008, 39.009007, 23.957859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441208, 39.402576, 23.977053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482968, 0.041770, 0.874641,
		0.858579, 0.173612, -0.482390,
		-0.171998, 0.983928, 0.047986,
		31.389608, 39.697754, 23.991449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145374, 39.386269, 24.192423>,  <31.510008, 39.009007, 23.957859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145374, 39.386269, 24.192423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850693, 39.651379, 24.246075>,  <31.673883, 39.810444, 24.278265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850693, 39.651379, 24.246075>,  <32.145374, 39.386269, 24.192423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850693, 39.651379, 24.246075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324746, 0.172783, 0.929885,
		0.593132, 0.728609, -0.342525,
		-0.736705, 0.662778, 0.134129,
		31.629681, 39.850212, 24.286314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337959, 39.761524, 24.723476>,  <32.145374, 39.386269, 24.192423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337959, 39.761524, 24.723476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960289, 39.892979, 24.732647>,  <31.733686, 39.971851, 24.738150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960289, 39.892979, 24.732647>,  <32.337959, 39.761524, 24.723476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960289, 39.892979, 24.732647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128504, 0.303335, 0.944179,
		0.303335, 0.894420, -0.328633,
		-0.944179, 0.328633, 0.022924,
		31.677034, 39.991570, 24.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329201, 40.517975, 24.912855>,  <32.337959, 39.761524, 24.723476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329201, 40.517975, 24.912855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994310, 40.331932, 25.027905>,  <31.793377, 40.220306, 25.096933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994310, 40.331932, 25.027905>,  <32.329201, 40.517975, 24.912855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994310, 40.331932, 25.027905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215190, 0.203321, 0.955172,
		-0.502737, 0.861589, -0.070139,
		-0.837227, -0.465107, 0.287623,
		31.743143, 40.192398, 25.114191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129665, 40.818325, 25.445004>,  <32.329201, 40.517975, 24.912855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129665, 40.818325, 25.445004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895960, 40.498524, 25.500746>,  <31.755735, 40.306641, 25.534191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895960, 40.498524, 25.500746>,  <32.129665, 40.818325, 25.445004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895960, 40.498524, 25.500746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001550, 0.172813, 0.984953,
		-0.811560, 0.575260, -0.102208,
		-0.584267, -0.799507, 0.139357,
		31.720680, 40.258671, 25.542553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706865, 40.935822, 26.063885>,  <32.129665, 40.818325, 25.445004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706865, 40.935822, 26.063885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704527, 40.541122, 25.999033>,  <31.703123, 40.304302, 25.960121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704527, 40.541122, 25.999033>,  <31.706865, 40.935822, 26.063885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704527, 40.541122, 25.999033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225160, -0.159267, 0.961216,
		-0.974304, -0.030883, 0.223109,
		-0.005848, -0.986752, -0.162129,
		31.702772, 40.245098, 25.950394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338821, 40.662228, 26.661222>,  <31.706865, 40.935822, 26.063885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338821, 40.662228, 26.661222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542210, 40.358555, 26.498690>,  <31.664244, 40.176353, 26.401171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542210, 40.358555, 26.498690>,  <31.338821, 40.662228, 26.661222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542210, 40.358555, 26.498690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248563, -0.322390, 0.913390,
		-0.824422, -0.565432, 0.024778,
		0.508472, -0.759178, -0.406331,
		31.694752, 40.130802, 26.376791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250156, 40.080208, 27.128582>,  <31.338821, 40.662228, 26.661222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250156, 40.080208, 27.128582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574383, 39.994434, 26.910589>,  <31.768919, 39.942970, 26.779793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574383, 39.994434, 26.910589>,  <31.250156, 40.080208, 27.128582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574383, 39.994434, 26.910589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473206, -0.308465, 0.825182,
		-0.345058, -0.926750, -0.148557,
		0.810562, -0.214438, -0.544982,
		31.817553, 39.930103, 26.747095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406080, 39.414940, 27.279097>,  <31.250156, 40.080208, 27.128582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406080, 39.414940, 27.279097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723114, 39.628479, 27.161242>,  <31.913334, 39.756603, 27.090528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723114, 39.628479, 27.161242>,  <31.406080, 39.414940, 27.279097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723114, 39.628479, 27.161242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478620, -0.245293, 0.843062,
		0.377796, -0.809219, -0.449927,
		0.792586, 0.533850, -0.294638,
		31.960890, 39.788635, 27.072849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885809, 39.171047, 27.643339>,  <31.406080, 39.414940, 27.279097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885809, 39.171047, 27.643339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124249, 39.459297, 27.501709>,  <32.267311, 39.632248, 27.416731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124249, 39.459297, 27.501709>,  <31.885809, 39.171047, 27.643339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124249, 39.459297, 27.501709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662040, -0.191629, 0.724556,
		0.454281, -0.666318, -0.591311,
		0.596097, 0.720624, -0.354076,
		32.303078, 39.675484, 27.395487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558826, 38.933678, 27.798780>,  <31.885809, 39.171047, 27.643339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558826, 38.933678, 27.798780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616486, 39.322060, 27.722389>,  <32.651081, 39.555088, 27.676556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616486, 39.322060, 27.722389>,  <32.558826, 38.933678, 27.798780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616486, 39.322060, 27.722389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613930, 0.063608, 0.786794,
		0.776087, -0.230664, -0.586928,
		0.144151, 0.970952, -0.190977,
		32.659733, 39.613346, 27.665096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311806, 39.124462, 27.714970>,  <32.558826, 38.933678, 27.798780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311806, 39.124462, 27.714970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136715, 39.466755, 27.825331>,  <33.031662, 39.672131, 27.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136715, 39.466755, 27.825331>,  <33.311806, 39.124462, 27.714970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136715, 39.466755, 27.825331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738987, 0.167622, 0.652534,
		0.512145, 0.489522, -0.705745,
		-0.437728, 0.855728, 0.275903,
		33.005398, 39.723473, 27.908102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828232, 39.649906, 27.773260>,  <33.311806, 39.124462, 27.714970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828232, 39.649906, 27.773260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528820, 39.748749, 28.019396>,  <33.349174, 39.808056, 28.167078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528820, 39.748749, 28.019396>,  <33.828232, 39.649906, 27.773260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528820, 39.748749, 28.019396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661451, 0.212755, 0.719179,
		0.046799, 0.945342, -0.322704,
		-0.748527, 0.247110, 0.615341,
		33.304260, 39.822884, 28.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265812, 39.961826, 28.234690>,  <33.828232, 39.649906, 27.773260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265812, 39.961826, 28.234690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908016, 39.934082, 28.411364>,  <33.693340, 39.917435, 28.517368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908016, 39.934082, 28.411364>,  <34.265812, 39.961826, 28.234690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908016, 39.934082, 28.411364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425487, 0.171350, 0.888594,
		-0.137315, 0.982766, -0.123759,
		-0.894486, -0.069359, 0.441683,
		33.639671, 39.913273, 28.543869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168671, 40.624252, 28.572872>,  <34.265812, 39.961826, 28.234690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168671, 40.624252, 28.572872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971989, 40.332375, 28.762932>,  <33.853977, 40.157246, 28.876966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971989, 40.332375, 28.762932>,  <34.168671, 40.624252, 28.572872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971989, 40.332375, 28.762932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567446, 0.145372, 0.810476,
		-0.660476, 0.668138, 0.342583,
		-0.491708, -0.729697, 0.475147,
		33.824474, 40.113464, 28.905476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038383, 40.942886, 29.216787>,  <34.168671, 40.624252, 28.572872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038383, 40.942886, 29.216787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034576, 40.542927, 29.221024>,  <34.032291, 40.302952, 29.223566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034576, 40.542927, 29.221024>,  <34.038383, 40.942886, 29.216787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034576, 40.542927, 29.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532195, 0.003900, 0.846613,
		-0.846568, 0.013697, 0.532104,
		-0.009521, -0.999899, 0.010592,
		34.031719, 40.242958, 29.224201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004044, 40.876877, 29.862869>,  <34.038383, 40.942886, 29.216787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004044, 40.876877, 29.862869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088017, 40.499928, 29.758671>,  <34.138401, 40.273758, 29.696152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088017, 40.499928, 29.758671>,  <34.004044, 40.876877, 29.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088017, 40.499928, 29.758671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484221, -0.131251, 0.865045,
		-0.849387, -0.307739, 0.428764,
		0.209933, -0.942375, -0.260497,
		34.150997, 40.217216, 29.680521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176239, 40.493008, 30.513498>,  <34.004044, 40.876877, 29.862869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176239, 40.493008, 30.513498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307438, 40.261913, 30.214529>,  <34.386158, 40.123257, 30.035147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307438, 40.261913, 30.214529>,  <34.176239, 40.493008, 30.513498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307438, 40.261913, 30.214529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798666, -0.252971, 0.546020,
		-0.504531, -0.776033, 0.378445,
		0.327994, -0.577735, -0.747423,
		34.405834, 40.088593, 29.990301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230263, 39.890678, 30.856218>,  <34.176239, 40.493008, 30.513498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230263, 39.890678, 30.856218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474625, 39.871685, 30.540106>,  <34.621243, 39.860291, 30.350439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474625, 39.871685, 30.540106>,  <34.230263, 39.890678, 30.856218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474625, 39.871685, 30.540106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738186, -0.326620, 0.590255,
		-0.286147, -0.943962, -0.164485,
		0.610902, -0.047479, -0.790281,
		34.657894, 39.857441, 30.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533379, 39.192120, 30.839537>,  <34.230263, 39.890678, 30.856218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533379, 39.192120, 30.839537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795128, 39.365654, 30.591799>,  <34.952175, 39.469772, 30.443155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795128, 39.365654, 30.591799>,  <34.533379, 39.192120, 30.839537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795128, 39.365654, 30.591799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755318, -0.413954, 0.508072,
		-0.035961, -0.800269, -0.598562,
		0.654371, 0.433834, -0.619344,
		34.991440, 39.495804, 30.405996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889946, 38.675953, 30.718731>,  <34.533379, 39.192120, 30.839537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889946, 38.675953, 30.718731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112198, 38.996273, 30.629297>,  <35.245548, 39.188465, 30.575638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112198, 38.996273, 30.629297>,  <34.889946, 38.675953, 30.718731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112198, 38.996273, 30.629297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818165, -0.478789, 0.318381,
		0.147912, -0.359830, -0.921219,
		0.555633, 0.800802, -0.223582,
		35.278889, 39.236515, 30.562223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477768, 38.433224, 30.524780>,  <34.889946, 38.675953, 30.718731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477768, 38.433224, 30.524780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594139, 38.803570, 30.621220>,  <35.663960, 39.025780, 30.679083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594139, 38.803570, 30.621220>,  <35.477768, 38.433224, 30.524780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594139, 38.803570, 30.621220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773584, -0.375919, 0.510149,
		0.562964, 0.038094, -0.825603,
		0.290926, 0.925869, 0.241098,
		35.681416, 39.081329, 30.693548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118488, 38.328503, 30.529451>,  <35.477768, 38.433224, 30.524780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118488, 38.328503, 30.529451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057541, 38.648209, 30.761988>,  <36.020973, 38.840031, 30.901510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057541, 38.648209, 30.761988>,  <36.118488, 38.328503, 30.529451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057541, 38.648209, 30.761988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794475, -0.250821, 0.553081,
		0.587871, 0.546135, -0.596778,
		-0.152372, 0.799266, 0.581341,
		36.011829, 38.887989, 30.936390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754982, 38.698021, 30.571423>,  <36.118488, 38.328503, 30.529451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754982, 38.698021, 30.571423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540112, 38.810005, 30.889683>,  <36.411190, 38.877197, 31.080639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540112, 38.810005, 30.889683>,  <36.754982, 38.698021, 30.571423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540112, 38.810005, 30.889683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758334, -0.252695, 0.600895,
		0.369285, 0.926157, -0.076563,
		-0.537176, 0.279962, 0.795653,
		36.378960, 38.893993, 31.128378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234982, 38.995247, 30.981739>,  <36.754982, 38.698021, 30.571423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234982, 38.995247, 30.981739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944187, 38.943928, 31.251564>,  <36.769711, 38.913136, 31.413458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944187, 38.943928, 31.251564>,  <37.234982, 38.995247, 30.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944187, 38.943928, 31.251564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686371, -0.107619, 0.719245,
		-0.019680, 0.985879, 0.166296,
		-0.726985, -0.128295, 0.674561,
		36.726093, 38.905437, 31.453932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344906, 39.530060, 31.525677>,  <37.234982, 38.995247, 30.981739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344906, 39.530060, 31.525677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151535, 39.207764, 31.662546>,  <37.035511, 39.014385, 31.744667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151535, 39.207764, 31.662546>,  <37.344906, 39.530060, 31.525677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151535, 39.207764, 31.662546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749042, -0.178457, 0.638036,
		-0.453027, 0.564747, 0.689803,
		-0.483429, -0.805738, 0.342173,
		37.006508, 38.966042, 31.765198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710697, 39.742435, 32.235458>,  <37.344906, 39.530060, 31.525677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710697, 39.742435, 32.235458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061256, 39.690239, 32.420887>,  <38.271591, 39.658920, 32.532143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061256, 39.690239, 32.420887>,  <37.710697, 39.742435, 32.235458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061256, 39.690239, 32.420887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199288, 0.974573, -0.102432,
		-0.438419, 0.182156, 0.880118,
		0.876398, -0.130489, 0.463573,
		38.324177, 39.651093, 32.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768871, 40.307022, 32.704178>,  <37.710697, 39.742435, 32.235458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768871, 40.307022, 32.704178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144882, 40.173252, 32.677307>,  <38.370487, 40.092991, 32.661182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144882, 40.173252, 32.677307>,  <37.768871, 40.307022, 32.704178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144882, 40.173252, 32.677307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338929, 0.893552, 0.294434,
		-0.038435, -0.299545, 0.953308,
		0.940026, -0.334420, -0.067180,
		38.426891, 40.072926, 32.657154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112160, 40.344769, 33.383686>,  <37.768871, 40.307022, 32.704178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112160, 40.344769, 33.383686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402744, 40.352482, 33.108910>,  <38.577095, 40.357109, 32.944046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402744, 40.352482, 33.108910>,  <38.112160, 40.344769, 33.383686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402744, 40.352482, 33.108910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319664, 0.875392, 0.362634,
		0.608334, -0.483029, 0.629772,
		0.726460, 0.019287, -0.686938,
		38.620682, 40.358269, 32.902828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698238, 40.490860, 33.654881>,  <38.112160, 40.344769, 33.383686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698238, 40.490860, 33.654881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738144, 40.624851, 33.280109>,  <38.762085, 40.705246, 33.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738144, 40.624851, 33.280109>,  <38.698238, 40.490860, 33.654881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738144, 40.624851, 33.280109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202217, 0.915152, 0.348719,
		0.974246, -0.224252, 0.023559,
		0.099761, 0.334975, -0.936931,
		38.768074, 40.725342, 32.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153461, 40.981400, 33.747700>,  <38.698238, 40.490860, 33.654881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153461, 40.981400, 33.747700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053200, 41.014839, 33.361916>,  <38.993042, 41.034904, 33.130444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053200, 41.014839, 33.361916>,  <39.153461, 40.981400, 33.747700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053200, 41.014839, 33.361916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041885, 0.996268, 0.075472,
		0.967170, -0.021479, -0.253220,
		-0.250654, 0.083600, -0.964460,
		38.978004, 41.039921, 33.072578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679050, 41.355659, 33.381355>,  <39.153461, 40.981400, 33.747700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679050, 41.355659, 33.381355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386475, 41.418549, 33.115940>,  <39.210930, 41.456280, 32.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386475, 41.418549, 33.115940>,  <39.679050, 41.355659, 33.381355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386475, 41.418549, 33.115940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348922, 0.922316, -0.166091,
		0.585879, -0.353008, -0.729473,
		-0.731437, 0.157220, -0.663538,
		39.167046, 41.465714, 32.916878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036514, 41.633003, 32.797863>,  <39.679050, 41.355659, 33.381355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036514, 41.633003, 32.797863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651035, 41.739601, 32.791332>,  <39.419746, 41.803558, 32.787415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651035, 41.739601, 32.791332>,  <40.036514, 41.633003, 32.797863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651035, 41.739601, 32.791332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256432, 0.906831, -0.334516,
		-0.074340, -0.326559, -0.942249,
		-0.963699, 0.266491, -0.016326,
		39.361927, 41.819550, 32.786434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967102, 41.960144, 32.292305>,  <40.036514, 41.633003, 32.797863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967102, 41.960144, 32.292305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641354, 42.091976, 32.483372>,  <39.445904, 42.171074, 32.598011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641354, 42.091976, 32.483372>,  <39.967102, 41.960144, 32.292305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641354, 42.091976, 32.483372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238396, 0.940423, -0.242429,
		-0.529112, -0.083553, -0.844428,
		-0.814375, 0.329581, 0.477671,
		39.397041, 42.190849, 32.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411694, 42.195377, 31.904537>,  <39.967102, 41.960144, 32.292305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411694, 42.195377, 31.904537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384914, 42.397240, 32.248825>,  <39.368847, 42.518356, 32.455399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384914, 42.397240, 32.248825>,  <39.411694, 42.195377, 31.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384914, 42.397240, 32.248825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203680, 0.851405, -0.483347,
		-0.976746, 0.142950, -0.159791,
		-0.066952, 0.504654, 0.860722,
		39.364830, 42.548637, 32.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117146, 42.778427, 31.675468>,  <39.411694, 42.195377, 31.904537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117146, 42.778427, 31.675468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291653, 42.885338, 32.019150>,  <39.396358, 42.949486, 32.225357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291653, 42.885338, 32.019150>,  <39.117146, 42.778427, 31.675468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291653, 42.885338, 32.019150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198172, 0.902881, -0.381489,
		-0.877721, 0.336703, 0.340935,
		0.436272, 0.267278, 0.859203,
		39.422535, 42.965523, 32.276909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137657, 43.556137, 31.616930>,  <39.117146, 42.778427, 31.675468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137657, 43.556137, 31.616930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289360, 43.500938, 31.982906>,  <39.380383, 43.467819, 32.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289360, 43.500938, 31.982906>,  <39.137657, 43.556137, 31.616930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289360, 43.500938, 31.982906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470537, 0.880178, -0.062296,
		-0.796716, 0.454140, 0.398749,
		0.379261, -0.137994, 0.914942,
		39.403137, 43.459541, 32.257389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921623, 44.048527, 32.079048>,  <39.137657, 43.556137, 31.616930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921623, 44.048527, 32.079048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281738, 43.937527, 32.213203>,  <39.497807, 43.870926, 32.293697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281738, 43.937527, 32.213203>,  <38.921623, 44.048527, 32.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281738, 43.937527, 32.213203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311372, 0.948936, -0.050676,
		-0.304198, 0.150053, 0.940717,
		0.900284, -0.277498, 0.335387,
		39.551823, 43.854279, 32.313820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094536, 44.584827, 32.579529>,  <38.921623, 44.048527, 32.079048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094536, 44.584827, 32.579529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416298, 44.412617, 32.415779>,  <39.609356, 44.309292, 32.317528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416298, 44.412617, 32.415779>,  <39.094536, 44.584827, 32.579529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416298, 44.412617, 32.415779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341677, 0.898975, -0.274045,
		0.486000, 0.080568, 0.870237,
		0.804401, -0.430526, -0.409374,
		39.657619, 44.283459, 32.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749424, 44.923290, 32.762730>,  <39.094536, 44.584827, 32.579529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749424, 44.923290, 32.762730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849022, 44.719322, 32.433369>,  <39.908779, 44.596943, 32.235752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849022, 44.719322, 32.433369>,  <39.749424, 44.923290, 32.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849022, 44.719322, 32.433369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334625, 0.843114, -0.420934,
		0.908861, -0.170720, 0.380562,
		0.248995, -0.509916, -0.823400,
		39.923721, 44.566349, 32.186348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360992, 45.197311, 32.558277>,  <39.749424, 44.923290, 32.762730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360992, 45.197311, 32.558277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194611, 45.028828, 32.235897>,  <40.094780, 44.927738, 32.042469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194611, 45.028828, 32.235897>,  <40.360992, 45.197311, 32.558277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194611, 45.028828, 32.235897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264324, 0.791999, -0.550337,
		0.870121, -0.441950, -0.218103,
		-0.415959, -0.421210, -0.805953,
		40.069824, 44.902466, 31.994112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846298, 45.290810, 32.073627>,  <40.360992, 45.197311, 32.558277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846298, 45.290810, 32.073627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497391, 45.238678, 31.885088>,  <40.288048, 45.207397, 31.771965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497391, 45.238678, 31.885088>,  <40.846298, 45.290810, 32.073627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497391, 45.238678, 31.885088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223636, 0.750844, -0.621466,
		0.434901, -0.647494, -0.625790,
		-0.872267, -0.130327, -0.471345,
		40.235710, 45.199581, 31.743685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074348, 45.265511, 31.374172>,  <40.846298, 45.290810, 32.073627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074348, 45.265511, 31.374172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682373, 45.345173, 31.377161>,  <40.447189, 45.392971, 31.378954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682373, 45.345173, 31.377161>,  <41.074348, 45.265511, 31.374172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682373, 45.345173, 31.377161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144388, 0.735312, -0.662170,
		-0.137370, -0.647807, -0.749317,
		-0.979939, 0.199155, 0.007474,
		40.388390, 45.404919, 31.379404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892838, 45.529095, 30.616018>,  <41.074348, 45.265511, 31.374172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892838, 45.529095, 30.616018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586636, 45.657196, 30.839241>,  <40.402912, 45.734058, 30.973175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586636, 45.657196, 30.839241>,  <40.892838, 45.529095, 30.616018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586636, 45.657196, 30.839241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009477, 0.861620, -0.507465,
		-0.643355, -0.393758, -0.656543,
		-0.765509, 0.320258, 0.558059,
		40.356983, 45.753273, 31.006659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435555, 45.810310, 30.187588>,  <40.892838, 45.529095, 30.616018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435555, 45.810310, 30.187588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352665, 45.988216, 30.536127>,  <40.302933, 46.094959, 30.745251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352665, 45.988216, 30.536127>,  <40.435555, 45.810310, 30.187588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352665, 45.988216, 30.536127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049874, 0.884719, -0.463450,
		-0.977022, -0.139494, -0.161152,
		-0.207223, 0.444763, 0.871346,
		40.290497, 46.121647, 30.797531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866966, 46.220894, 30.066319>,  <40.435555, 45.810310, 30.187588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866966, 46.220894, 30.066319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105476, 46.363163, 30.354193>,  <40.248585, 46.448524, 30.526918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105476, 46.363163, 30.354193>,  <39.866966, 46.220894, 30.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105476, 46.363163, 30.354193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057407, 0.875309, -0.480144,
		-0.800723, 0.327614, 0.501509,
		0.596278, 0.355672, 0.719688,
		40.284359, 46.469864, 30.570099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512627, 46.791756, 30.260746>,  <39.866966, 46.220894, 30.066319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512627, 46.791756, 30.260746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900627, 46.804085, 30.357204>,  <40.133427, 46.811481, 30.415079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900627, 46.804085, 30.357204>,  <39.512627, 46.791756, 30.260746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900627, 46.804085, 30.357204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099852, 0.853883, -0.510797,
		-0.221654, 0.519552, 0.825188,
		0.969999, 0.030824, 0.241145,
		40.191628, 46.813332, 30.429548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756596, 47.313225, 30.726137>,  <39.512627, 46.791756, 30.260746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756596, 47.313225, 30.726137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007610, 47.189476, 30.440342>,  <40.158218, 47.115227, 30.268866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007610, 47.189476, 30.440342>,  <39.756596, 47.313225, 30.726137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007610, 47.189476, 30.440342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196422, 0.825079, -0.529777,
		0.753406, 0.472793, 0.456997,
		0.627533, -0.309373, -0.714486,
		40.195869, 47.096664, 30.225996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325863, 47.910366, 30.631550>,  <39.756596, 47.313225, 30.726137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325863, 47.910366, 30.631550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230217, 47.686310, 30.314295>,  <40.172829, 47.551876, 30.123941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230217, 47.686310, 30.314295>,  <40.325863, 47.910366, 30.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230217, 47.686310, 30.314295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100599, 0.826730, -0.553531,
		0.965765, -0.052569, -0.254035,
		-0.239117, -0.560137, -0.793139,
		40.158482, 47.518269, 30.076353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862309, 47.296452, 30.430580>,  <40.325863, 47.910366, 30.631550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862309, 47.296452, 30.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628971, 47.423740, 30.729498>,  <40.488968, 47.500114, 30.908848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628971, 47.423740, 30.729498>,  <40.862309, 47.296452, 30.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628971, 47.423740, 30.729498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094137, -0.940344, 0.326944,
		0.806752, 0.120373, 0.578500,
		-0.583344, 0.318220, 0.747292,
		40.453968, 47.519207, 30.953686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081886, 47.142220, 31.177748>,  <40.862309, 47.296452, 30.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081886, 47.142220, 31.177748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698139, 47.126682, 31.065958>,  <40.467892, 47.117359, 30.998884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698139, 47.126682, 31.065958>,  <41.081886, 47.142220, 31.177748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698139, 47.126682, 31.065958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026778, -0.973474, 0.227225,
		-0.280887, 0.225476, 0.932879,
		-0.959367, -0.038844, -0.279474,
		40.410328, 47.115028, 30.982115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635872, 46.893707, 31.767429>,  <41.081886, 47.142220, 31.177748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635872, 46.893707, 31.767429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430943, 46.812691, 31.433603>,  <40.307987, 46.764080, 31.233307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430943, 46.812691, 31.433603>,  <40.635872, 46.893707, 31.767429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430943, 46.812691, 31.433603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195464, -0.918783, 0.342975,
		-0.836254, 0.338841, 0.431122,
		-0.512322, -0.202546, -0.834567,
		40.277245, 46.751926, 31.183233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986713, 46.641285, 31.937834>,  <40.635872, 46.893707, 31.767429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986713, 46.641285, 31.937834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070831, 46.480892, 31.581184>,  <40.121300, 46.384659, 31.367195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070831, 46.480892, 31.581184>,  <39.986713, 46.641285, 31.937834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070831, 46.480892, 31.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367777, -0.877470, 0.307873,
		-0.905824, 0.263176, -0.331997,
		0.210293, -0.400979, -0.891624,
		40.133919, 46.360600, 31.313698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386051, 46.256294, 31.710144>,  <39.986713, 46.641285, 31.937834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386051, 46.256294, 31.710144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698074, 46.089920, 31.523165>,  <39.885288, 45.990093, 31.410976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698074, 46.089920, 31.523165>,  <39.386051, 46.256294, 31.710144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698074, 46.089920, 31.523165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297191, -0.903713, 0.308190,
		-0.550627, -0.101484, -0.828560,
		0.780056, -0.415938, -0.467448,
		39.932091, 45.965137, 31.382931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144165, 45.663052, 31.575296>,  <39.386051, 46.256294, 31.710144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144165, 45.663052, 31.575296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530918, 45.593666, 31.500404>,  <39.762970, 45.552036, 31.455469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530918, 45.593666, 31.500404>,  <39.144165, 45.663052, 31.575296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530918, 45.593666, 31.500404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131536, -0.967292, 0.216895,
		-0.218727, -0.185084, -0.958072,
		0.966880, -0.173462, -0.187228,
		39.820984, 45.541626, 31.444237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097115, 45.038162, 31.143131>,  <39.144165, 45.663052, 31.575296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097115, 45.038162, 31.143131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458599, 45.067116, 31.311926>,  <39.675488, 45.084488, 31.413202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458599, 45.067116, 31.311926>,  <39.097115, 45.038162, 31.143131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458599, 45.067116, 31.311926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068528, -0.997353, 0.024325,
		0.422632, 0.006936, -0.906275,
		0.903707, 0.072386, 0.421989,
		39.729710, 45.088833, 31.438522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568939, 44.476162, 30.904858>,  <39.097115, 45.038162, 31.143131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568939, 44.476162, 30.904858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733273, 44.601467, 31.247337>,  <39.831875, 44.676651, 31.452826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733273, 44.601467, 31.247337>,  <39.568939, 44.476162, 30.904858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733273, 44.601467, 31.247337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102371, -0.949026, 0.298109,
		0.905944, -0.034824, -0.421963,
		0.410835, 0.313267, 0.856200,
		39.856522, 44.695446, 31.504198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074749, 43.900211, 31.043606>,  <39.568939, 44.476162, 30.904858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074749, 43.900211, 31.043606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043186, 44.122288, 31.374794>,  <40.024250, 44.255535, 31.573507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043186, 44.122288, 31.374794>,  <40.074749, 43.900211, 31.043606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043186, 44.122288, 31.374794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098283, -0.822180, 0.560679,
		0.992025, 0.125615, 0.010307,
		-0.078904, 0.555195, 0.827969,
		40.019516, 44.288845, 31.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719566, 43.916973, 31.512100>,  <40.074749, 43.900211, 31.043606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719566, 43.916973, 31.512100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361168, 43.894276, 31.688265>,  <40.146126, 43.880657, 31.793964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361168, 43.894276, 31.688265>,  <40.719566, 43.916973, 31.512100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361168, 43.894276, 31.688265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281473, -0.839670, 0.464465,
		0.343447, 0.540125, 0.768316,
		-0.896001, -0.056741, 0.440412,
		40.092369, 43.877254, 31.820389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850613, 43.407040, 32.015518>,  <40.719566, 43.916973, 31.512100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850613, 43.407040, 32.015518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463757, 43.501949, 32.052040>,  <40.231644, 43.558895, 32.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463757, 43.501949, 32.052040>,  <40.850613, 43.407040, 32.015518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463757, 43.501949, 32.052040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135365, -0.784588, 0.605061,
		0.215206, 0.572820, 0.790926,
		-0.967142, 0.237276, 0.091308,
		40.173615, 43.573132, 32.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602661, 43.033478, 32.684803>,  <40.850613, 43.407040, 32.015518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602661, 43.033478, 32.684803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274235, 43.195381, 32.523796>,  <40.077179, 43.292522, 32.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274235, 43.195381, 32.523796>,  <40.602661, 43.033478, 32.684803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274235, 43.195381, 32.523796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564057, -0.466960, 0.681020,
		0.087690, 0.786205, 0.611712,
		-0.821067, 0.404759, -0.402517,
		40.027916, 43.316811, 32.403042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158680, 43.338577, 33.271694>,  <40.602661, 43.033478, 32.684803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158680, 43.338577, 33.271694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921238, 43.246559, 32.963223>,  <39.778774, 43.191349, 32.778141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921238, 43.246559, 32.963223>,  <40.158680, 43.338577, 33.271694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921238, 43.246559, 32.963223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607030, -0.501135, 0.616748,
		-0.528343, 0.834232, 0.157831,
		-0.593605, -0.230046, -0.771175,
		39.743156, 43.177544, 32.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394337, 43.357773, 33.619038>,  <40.158680, 43.338577, 33.271694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394337, 43.357773, 33.619038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374809, 43.119434, 33.298393>,  <39.363094, 42.976429, 33.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374809, 43.119434, 33.298393>,  <39.394337, 43.357773, 33.619038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374809, 43.119434, 33.298393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377444, -0.732053, 0.567128,
		-0.924745, 0.330248, -0.189164,
		-0.048815, -0.595848, -0.801612,
		39.360165, 42.940681, 33.057911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913395, 42.804684, 33.569641>,  <39.394337, 43.357773, 33.619038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913395, 42.804684, 33.569641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987053, 42.786560, 33.176899>,  <39.031246, 42.775684, 32.941254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987053, 42.786560, 33.176899>,  <38.913395, 42.804684, 33.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987053, 42.786560, 33.176899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312671, -0.949746, -0.014809,
		-0.931842, 0.309724, -0.189056,
		0.184142, -0.045313, -0.981855,
		39.042297, 42.772964, 32.882343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349167, 42.461899, 33.336723>,  <38.913395, 42.804684, 33.569641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349167, 42.461899, 33.336723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661736, 42.399353, 33.095085>,  <38.849277, 42.361824, 32.950104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661736, 42.399353, 33.095085>,  <38.349167, 42.461899, 33.336723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661736, 42.399353, 33.095085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190055, -0.981739, 0.008273,
		-0.594353, 0.108346, -0.796872,
		0.781424, -0.156366, -0.604092,
		38.896164, 42.352444, 32.913857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119785, 42.051132, 32.781273>,  <38.349167, 42.461899, 33.336723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119785, 42.051132, 32.781273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514164, 41.984379, 32.784431>,  <38.750790, 41.944324, 32.786327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514164, 41.984379, 32.784431>,  <38.119785, 42.051132, 32.781273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514164, 41.984379, 32.784431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163145, -0.971869, -0.169866,
		0.036019, 0.166191, -0.985436,
		0.985945, -0.166887, 0.007893,
		38.809948, 41.934311, 32.786800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046833, 41.418755, 32.398796>,  <38.119785, 42.051132, 32.781273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046833, 41.418755, 32.398796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425579, 41.469910, 32.516834>,  <38.652828, 41.500603, 32.587658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425579, 41.469910, 32.516834>,  <38.046833, 41.418755, 32.398796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425579, 41.469910, 32.516834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170547, -0.977570, -0.123572,
		0.272676, 0.167335, -0.947442,
		0.946869, 0.127889, 0.295099,
		38.709641, 41.508278, 32.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520409, 41.235493, 31.811934>,  <38.046833, 41.418755, 32.398796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520409, 41.235493, 31.811934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674767, 41.194145, 32.178627>,  <38.767380, 41.169338, 32.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674767, 41.194145, 32.178627>,  <38.520409, 41.235493, 31.811934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674767, 41.194145, 32.178627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144542, -0.974656, -0.170743,
		0.911149, 0.198395, -0.361174,
		0.385895, -0.103367, 0.916734,
		38.790535, 41.163136, 32.453648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150234, 40.758041, 31.784130>,  <38.520409, 41.235493, 31.811934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150234, 40.758041, 31.784130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017097, 40.730083, 32.160286>,  <38.937214, 40.713310, 32.385979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017097, 40.730083, 32.160286>,  <39.150234, 40.758041, 31.784130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017097, 40.730083, 32.160286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172712, -0.984898, -0.012075,
		0.927031, 0.158397, 0.339887,
		-0.332842, -0.069896, 0.940389,
		38.917244, 40.709114, 32.442402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600788, 40.290195, 32.066357>,  <39.150234, 40.758041, 31.784130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600788, 40.290195, 32.066357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272633, 40.296680, 32.294987>,  <39.075737, 40.300571, 32.432163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272633, 40.296680, 32.294987>,  <39.600788, 40.290195, 32.066357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272633, 40.296680, 32.294987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021073, -0.998061, 0.058559,
		0.571412, 0.060086, 0.818461,
		-0.820393, 0.016214, 0.571571,
		39.026516, 40.301544, 32.466457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662998, 39.678894, 32.563583>,  <39.600788, 40.290195, 32.066357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662998, 39.678894, 32.563583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281513, 39.796398, 32.589302>,  <39.052624, 39.866901, 32.604733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281513, 39.796398, 32.589302>,  <39.662998, 39.678894, 32.563583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281513, 39.796398, 32.589302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289977, -0.955016, 0.062108,
		0.079653, 0.040588, 0.995996,
		-0.953713, 0.293763, 0.064300,
		38.995399, 39.884525, 32.608593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 39.292976, 33.252609>,  <39.662998, 39.678894, 32.563583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313007, 39.292976, 33.252609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044922, 39.408058, 32.978954>,  <38.884071, 39.477108, 32.814762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044922, 39.408058, 32.978954>,  <39.313007, 39.292976, 33.252609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044922, 39.408058, 32.978954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380224, -0.924749, -0.016398,
		-0.637370, 0.249134, 0.729171,
		-0.670215, 0.287701, -0.684135,
		38.843857, 39.494370, 32.773712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106392, 39.299206, 33.023617>,  <39.313007, 39.292976, 33.252609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106392, 39.299206, 33.023617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939030, 39.170189, 33.363243>,  <39.838612, 39.092781, 33.567020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939030, 39.170189, 33.363243>,  <40.106392, 39.299206, 33.023617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939030, 39.170189, 33.363243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848964, 0.193362, 0.491805,
		-0.322803, 0.926596, 0.192920,
		-0.418401, -0.322538, 0.849064,
		39.813511, 39.073429, 33.617962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085274, 39.823658, 33.585651>,  <40.106392, 39.299206, 33.023617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085274, 39.823658, 33.585651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105583, 39.443970, 33.709846>,  <40.117767, 39.216156, 33.784363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105583, 39.443970, 33.709846>,  <40.085274, 39.823658, 33.585651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105583, 39.443970, 33.709846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847406, 0.205468, 0.489577,
		-0.528512, 0.238252, 0.814808,
		0.050775, -0.949220, 0.310488,
		40.120815, 39.159203, 33.802994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288723, 39.806602, 34.268555>,  <40.085274, 39.823658, 33.585651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288723, 39.806602, 34.268555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384682, 39.446045, 34.124367>,  <40.442257, 39.229710, 34.037853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384682, 39.446045, 34.124367>,  <40.288723, 39.806602, 34.268555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384682, 39.446045, 34.124367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911750, 0.081680, 0.402542,
		-0.333406, -0.425227, 0.841441,
		0.239900, -0.901394, -0.360468,
		40.456654, 39.175629, 34.016228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923267, 39.785328, 34.347027>,  <40.288723, 39.806602, 34.268555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923267, 39.785328, 34.347027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878944, 39.405418, 34.229961>,  <40.852348, 39.177471, 34.159721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878944, 39.405418, 34.229961>,  <40.923267, 39.785328, 34.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878944, 39.405418, 34.229961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916119, -0.211777, 0.340407,
		-0.385289, -0.230395, 0.893572,
		-0.110810, -0.949773, -0.292665,
		40.845703, 39.120487, 34.142162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245193, 39.339561, 34.794121>,  <40.923267, 39.785328, 34.347027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245193, 39.339561, 34.794121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231426, 39.127487, 34.455246>,  <41.223164, 39.000244, 34.251923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231426, 39.127487, 34.455246>,  <41.245193, 39.339561, 34.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231426, 39.127487, 34.455246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958555, -0.257398, 0.122140,
		-0.282820, -0.807867, 0.517072,
		-0.034421, -0.530186, -0.847182,
		41.221100, 38.968430, 34.201092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245636, 38.508614, 34.686069>,  <41.245193, 39.339561, 34.794121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245636, 38.508614, 34.686069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431538, 38.738277, 34.416451>,  <41.543079, 38.876076, 34.254681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431538, 38.738277, 34.416451>,  <41.245636, 38.508614, 34.686069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431538, 38.738277, 34.416451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876034, -0.187518, 0.444298,
		0.128703, -0.796979, -0.590135,
		0.464757, 0.574161, -0.674047,
		41.570965, 38.910526, 34.214237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751553, 38.144638, 34.384453>,  <41.245636, 38.508614, 34.686069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751553, 38.144638, 34.384453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843433, 38.533897, 34.378590>,  <41.898563, 38.767452, 34.375072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843433, 38.533897, 34.378590>,  <41.751553, 38.144638, 34.384453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843433, 38.533897, 34.378590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880099, -0.201260, 0.430024,
		0.415528, -0.111677, -0.902698,
		0.229701, 0.973151, -0.014658,
		41.912342, 38.825844, 34.374191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442612, 38.240486, 33.987328>,  <41.751553, 38.144638, 34.384453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442612, 38.240486, 33.987328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353947, 38.464680, 34.306507>,  <42.300747, 38.599197, 34.498013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353947, 38.464680, 34.306507>,  <42.442612, 38.240486, 33.987328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353947, 38.464680, 34.306507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765701, -0.406642, 0.498341,
		0.603793, 0.721453, -0.339027,
		-0.221667, 0.560489, 0.797945,
		42.287445, 38.632828, 34.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144493, 38.262939, 34.311527>,  <42.442612, 38.240486, 33.987328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144493, 38.262939, 34.311527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861977, 38.406673, 34.555504>,  <42.692467, 38.492916, 34.701889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861977, 38.406673, 34.555504>,  <43.144493, 38.262939, 34.311527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861977, 38.406673, 34.555504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556666, -0.250374, 0.792108,
		0.437348, 0.898993, -0.023195,
		-0.706292, 0.359339, 0.609940,
		42.650089, 38.514477, 34.738487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279900, 38.709866, 33.694458>,  <43.144493, 38.262939, 34.311527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279900, 38.709866, 33.694458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531494, 38.810345, 33.988743>,  <43.682453, 38.870632, 34.165314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531494, 38.810345, 33.988743>,  <43.279900, 38.709866, 33.694458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531494, 38.810345, 33.988743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209560, -0.966112, 0.150702,
		0.748637, 0.059386, -0.660315,
		0.628989, 0.251197, 0.735712,
		43.720192, 38.885704, 34.209457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802940, 38.327454, 33.498646>,  <43.279900, 38.709866, 33.694458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802940, 38.327454, 33.498646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797459, 38.395302, 33.892811>,  <43.794170, 38.436008, 34.129311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797459, 38.395302, 33.892811>,  <43.802940, 38.327454, 33.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797459, 38.395302, 33.892811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070551, -0.982887, 0.170164,
		0.997414, 0.071854, 0.001505,
		-0.013706, 0.169618, 0.985415,
		43.793346, 38.446186, 34.188435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571854, 38.191502, 33.615318>,  <43.802940, 38.327454, 33.498646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571854, 38.191502, 33.615318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843258, 38.434784, 33.780102>,  <45.006100, 38.580753, 33.878971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843258, 38.434784, 33.780102>,  <44.571854, 38.191502, 33.615318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843258, 38.434784, 33.780102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566180, -0.790295, 0.234252,
		0.468045, 0.074304, -0.880575,
		0.678508, 0.608205, 0.411963,
		45.046810, 38.617245, 33.903690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290913, 37.917519, 33.427181>,  <44.571854, 38.191502, 33.615318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290913, 37.917519, 33.427181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301991, 38.135681, 33.762268>,  <45.308636, 38.266579, 33.963322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301991, 38.135681, 33.762268>,  <45.290913, 37.917519, 33.427181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301991, 38.135681, 33.762268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673168, -0.629697, 0.387719,
		0.738971, 0.553187, -0.384586,
		0.027691, 0.545404, 0.837716,
		45.310299, 38.299301, 34.013584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016983, 38.124210, 33.610641>,  <45.290913, 37.917519, 33.427181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016983, 38.124210, 33.610641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777603, 38.049934, 33.922382>,  <45.633976, 38.005371, 34.109425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777603, 38.049934, 33.922382>,  <46.016983, 38.124210, 33.610641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777603, 38.049934, 33.922382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463263, -0.873855, 0.147527,
		0.653644, 0.449330, 0.608976,
		-0.598446, -0.185686, 0.779348,
		45.598068, 37.994228, 34.156185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408653, 37.973640, 34.185036>,  <46.016983, 38.124210, 33.610641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408653, 37.973640, 34.185036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048328, 37.800926, 34.166702>,  <45.832134, 37.697296, 34.155704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048328, 37.800926, 34.166702>,  <46.408653, 37.973640, 34.185036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048328, 37.800926, 34.166702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428486, -0.901049, 0.067159,
		-0.070293, 0.040861, 0.996689,
		-0.900810, -0.431788, -0.045829,
		45.778084, 37.671391, 34.152954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371624, 37.374676, 34.616772>,  <46.408653, 37.973640, 34.185036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371624, 37.374676, 34.616772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058155, 37.302464, 34.379025>,  <45.870075, 37.259136, 34.236378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058155, 37.302464, 34.379025>,  <46.371624, 37.374676, 34.616772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058155, 37.302464, 34.379025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204500, -0.978478, 0.027568,
		-0.586550, -0.099944, 0.803723,
		-0.783670, -0.180531, -0.594365,
		45.823055, 37.248302, 34.200714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585739, 36.759949, 34.527737>,  <46.371624, 37.374676, 34.616772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585739, 36.759949, 34.527737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.567406, 36.929619, 34.889503>,  <46.556408, 37.031422, 35.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.567406, 36.929619, 34.889503>,  <46.585739, 36.759949, 34.527737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.567406, 36.929619, 34.889503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487791, 0.799596, -0.350295,
		-0.871756, 0.425114, -0.243555,
		-0.045831, 0.424176, 0.904419,
		46.553658, 37.056873, 35.160828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771957, 36.428303, 35.180676>,  <46.585739, 36.759949, 34.527737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771957, 36.428303, 35.180676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426449, 36.399879, 35.380215>,  <46.219143, 36.382824, 35.499939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426449, 36.399879, 35.380215>,  <46.771957, 36.428303, 35.180676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426449, 36.399879, 35.380215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442017, 0.582134, -0.682452,
		-0.241899, -0.809982, -0.534242,
		-0.863774, -0.071060, 0.498844,
		46.167316, 36.378563, 35.529869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840000, 35.693161, 35.272408>,  <46.771957, 36.428303, 35.180676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840000, 35.693161, 35.272408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746548, 35.474808, 34.950554>,  <46.690475, 35.343796, 34.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746548, 35.474808, 34.950554>,  <46.840000, 35.693161, 35.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.746548, 35.474808, 34.950554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972263, -0.140557, -0.186943,
		-0.011048, -0.825989, 0.563578,
		-0.233628, -0.545881, -0.804631,
		46.676460, 35.311043, 34.709164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339607, 35.649979, 34.643665>,  <46.840000, 35.693161, 35.272408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339607, 35.649979, 34.643665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696850, 35.470234, 34.652065>,  <47.911194, 35.362385, 34.657104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696850, 35.470234, 34.652065>,  <47.339607, 35.649979, 34.643665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696850, 35.470234, 34.652065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335968, -0.635235, 0.695415,
		-0.299155, -0.628132, -0.718302,
		0.893102, -0.449363, 0.020999,
		47.964779, 35.335426, 34.658363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.282978, 34.922741, 34.708729>,  <47.339607, 35.649979, 34.643665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.282978, 34.922741, 34.708729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645645, 35.013206, 34.851166>,  <47.863247, 35.067486, 34.936626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645645, 35.013206, 34.851166>,  <47.282978, 34.922741, 34.708729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645645, 35.013206, 34.851166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213001, -0.483170, 0.849221,
		0.364115, -0.845811, -0.389903,
		0.906670, 0.226165, 0.356088,
		47.917645, 35.081055, 34.957993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.147144, 34.152340, 26.383827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.772800, 34.128811, 26.522800>,  <29.548195, 34.114693, 26.606184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.772800, 34.128811, 26.522800>,  <30.147144, 34.152340, 26.383827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772800, 34.128811, 26.522800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343151, 0.071995, 0.936517,
		-0.080099, 0.995669, -0.047193,
		-0.935859, -0.058820, 0.347431,
		29.492043, 34.111164, 26.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114161, 34.755821, 26.958469>,  <30.147144, 34.152340, 26.383827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114161, 34.755821, 26.958469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841377, 34.472000, 27.029421>,  <29.677708, 34.301708, 27.071991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841377, 34.472000, 27.029421>,  <30.114161, 34.755821, 26.958469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841377, 34.472000, 27.029421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267605, -0.016364, 0.963390,
		-0.680677, 0.704458, 0.201041,
		-0.681957, -0.709557, 0.177378,
		29.636789, 34.259132, 27.082634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630981, 35.099861, 27.427101>,  <30.114161, 34.755821, 26.958469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630981, 35.099861, 27.427101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.599192, 34.703503, 27.470581>,  <29.580118, 34.465687, 27.496670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.599192, 34.703503, 27.470581>,  <29.630981, 35.099861, 27.427101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599192, 34.703503, 27.470581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241560, 0.086650, 0.966509,
		-0.967126, 0.103071, 0.232474,
		-0.079475, -0.990893, 0.108699,
		29.575350, 34.406235, 27.503191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248280, 35.060886, 28.040026>,  <29.630981, 35.099861, 27.427101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248280, 35.060886, 28.040026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404325, 34.700245, 27.965282>,  <29.497953, 34.483860, 27.920437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404325, 34.700245, 27.965282>,  <29.248280, 35.060886, 28.040026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404325, 34.700245, 27.965282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265573, -0.084136, 0.960413,
		-0.881636, -0.424297, 0.206619,
		0.390116, -0.901606, -0.186859,
		29.521360, 34.429764, 27.909225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095221, 34.723232, 28.528286>,  <29.248280, 35.060886, 28.040026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095221, 34.723232, 28.528286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.403139, 34.494755, 28.414341>,  <29.587891, 34.357670, 28.345974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.403139, 34.494755, 28.414341>,  <29.095221, 34.723232, 28.528286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403139, 34.494755, 28.414341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283417, -0.094003, 0.954378,
		-0.571915, -0.815414, 0.089523,
		0.769798, -0.571195, -0.284864,
		29.634079, 34.323395, 28.328882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182640, 34.218811, 29.070461>,  <29.095221, 34.723232, 28.528286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182640, 34.218811, 29.070461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.537664, 34.180508, 28.890209>,  <29.750679, 34.157524, 28.782059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.537664, 34.180508, 28.890209>,  <29.182640, 34.218811, 29.070461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537664, 34.180508, 28.890209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450896, -0.020082, 0.892350,
		-0.094502, -0.995202, 0.025354,
		0.887560, -0.095761, -0.450631,
		29.803932, 34.151779, 28.755020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577042, 33.605446, 29.300488>,  <29.182640, 34.218811, 29.070461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577042, 33.605446, 29.300488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.864489, 33.842506, 29.154963>,  <30.036957, 33.984741, 29.067648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.864489, 33.842506, 29.154963>,  <29.577042, 33.605446, 29.300488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864489, 33.842506, 29.154963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516814, -0.105096, 0.849623,
		0.465291, -0.798576, -0.381812,
		0.718615, 0.592648, -0.363814,
		30.080072, 34.020302, 29.045818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137249, 33.374214, 29.674896>,  <29.577042, 33.605446, 29.300488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137249, 33.374214, 29.674896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271215, 33.704891, 29.494049>,  <30.351595, 33.903297, 29.385540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271215, 33.704891, 29.494049>,  <30.137249, 33.374214, 29.674896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271215, 33.704891, 29.494049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848373, -0.055782, 0.526453,
		0.409994, -0.559884, -0.720024,
		0.334917, 0.826691, -0.452120,
		30.371691, 33.952900, 29.358414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807198, 33.293533, 29.523046>,  <30.137249, 33.374214, 29.674896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807198, 33.293533, 29.523046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.758833, 33.688416, 29.564631>,  <30.729815, 33.925346, 29.589581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.758833, 33.688416, 29.564631>,  <30.807198, 33.293533, 29.523046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758833, 33.688416, 29.564631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783242, 0.030537, 0.620967,
		0.609846, 0.156510, -0.776912,
		-0.120913, 0.987204, 0.103962,
		30.722559, 33.984577, 29.595819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465431, 33.627499, 29.437082>,  <30.807198, 33.293533, 29.523046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465431, 33.627499, 29.437082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257769, 33.891144, 29.654724>,  <31.133171, 34.049332, 29.785309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257769, 33.891144, 29.654724>,  <31.465431, 33.627499, 29.437082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257769, 33.891144, 29.654724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819969, 0.204520, 0.534624,
		0.241097, 0.723700, -0.646630,
		-0.519156, 0.659113, 0.544103,
		31.102022, 34.088879, 29.817955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971809, 34.147114, 29.451775>,  <31.465431, 33.627499, 29.437082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971809, 34.147114, 29.451775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.697321, 34.259754, 29.720045>,  <31.532629, 34.327339, 29.881006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.697321, 34.259754, 29.720045>,  <31.971809, 34.147114, 29.451775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697321, 34.259754, 29.720045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701333, 0.500734, 0.507343,
		-0.192963, 0.818515, -0.541108,
		-0.686219, 0.281599, 0.670675,
		31.491455, 34.344234, 29.921247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136429, 34.894093, 29.571081>,  <31.971809, 34.147114, 29.451775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136429, 34.894093, 29.571081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913609, 34.799099, 29.889399>,  <31.779915, 34.742104, 30.080389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913609, 34.799099, 29.889399>,  <32.136429, 34.894093, 29.571081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913609, 34.799099, 29.889399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707424, 0.366248, 0.604495,
		-0.435019, 0.899701, -0.036015,
		-0.557055, -0.237489, 0.795795,
		31.746492, 34.727852, 30.128138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128574, 35.530087, 29.954266>,  <32.136429, 34.894093, 29.571081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128574, 35.530087, 29.954266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.054283, 35.233059, 30.211670>,  <32.009708, 35.054844, 30.366112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.054283, 35.233059, 30.211670>,  <32.128574, 35.530087, 29.954266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054283, 35.233059, 30.211670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692650, 0.365580, 0.621761,
		-0.696952, 0.561202, 0.446441,
		-0.185723, -0.742565, 0.643509,
		31.998566, 35.010288, 30.404722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193199, 35.851208, 30.658413>,  <32.128574, 35.530087, 29.954266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193199, 35.851208, 30.658413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222397, 35.455803, 30.711348>,  <32.239914, 35.218559, 30.743109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222397, 35.455803, 30.711348>,  <32.193199, 35.851208, 30.658413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222397, 35.455803, 30.711348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631394, 0.148513, 0.761108,
		-0.772019, 0.028003, 0.634982,
		0.072990, -0.988514, 0.132336,
		32.244293, 35.159248, 30.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009750, 35.688320, 31.440516>,  <32.193199, 35.851208, 30.658413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009750, 35.688320, 31.440516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.227760, 35.399174, 31.270617>,  <32.358566, 35.225685, 31.168676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.227760, 35.399174, 31.270617>,  <32.009750, 35.688320, 31.440516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227760, 35.399174, 31.270617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667399, 0.067420, 0.741642,
		-0.507474, -0.687687, 0.519188,
		0.545021, -0.722870, -0.424748,
		32.391266, 35.182312, 31.143192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363255, 35.419197, 32.026058>,  <32.009750, 35.688320, 31.440516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363255, 35.419197, 32.026058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571777, 35.287033, 31.711336>,  <32.696892, 35.207733, 31.522501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571777, 35.287033, 31.711336>,  <32.363255, 35.419197, 32.026058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571777, 35.287033, 31.711336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843411, 0.059034, 0.534016,
		-0.129998, -0.941988, 0.309448,
		0.521305, -0.330413, -0.786809,
		32.728168, 35.187908, 31.475294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920460, 35.042599, 32.328793>,  <32.363255, 35.419197, 32.026058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920460, 35.042599, 32.328793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084515, 35.033436, 31.964098>,  <33.182949, 35.027939, 31.745281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084515, 35.033436, 31.964098>,  <32.920460, 35.042599, 32.328793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084515, 35.033436, 31.964098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909673, 0.082014, 0.407148,
		0.065450, -0.996368, 0.054473,
		0.410136, -0.022904, -0.911737,
		33.207554, 35.026566, 31.690577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345379, 34.399887, 32.123409>,  <32.920460, 35.042599, 32.328793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345379, 34.399887, 32.123409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.485794, 34.720592, 31.929941>,  <33.570045, 34.913017, 31.813860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.485794, 34.720592, 31.929941>,  <33.345379, 34.399887, 32.123409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485794, 34.720592, 31.929941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846176, -0.050450, 0.530511,
		0.400945, -0.595503, -0.696146,
		0.351041, 0.801767, -0.483672,
		33.591106, 34.961124, 31.784840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984703, 34.166088, 32.140644>,  <33.345379, 34.399887, 32.123409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984703, 34.166088, 32.140644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976139, 34.555820, 32.050999>,  <33.971001, 34.789658, 31.997211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976139, 34.555820, 32.050999>,  <33.984703, 34.166088, 32.140644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976139, 34.555820, 32.050999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877733, 0.125639, 0.462386,
		0.478673, -0.186811, -0.857889,
		-0.021405, 0.974329, -0.224110,
		33.969719, 34.848118, 31.983765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686562, 34.411732, 31.834501>,  <33.984703, 34.166088, 32.140644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686562, 34.411732, 31.834501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538342, 34.766335, 31.945351>,  <34.449409, 34.979095, 32.011860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538342, 34.766335, 31.945351>,  <34.686562, 34.411732, 31.834501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538342, 34.766335, 31.945351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870254, 0.227116, 0.437124,
		0.324573, 0.403146, -0.855643,
		-0.370555, 0.886505, 0.277123,
		34.427174, 35.032288, 32.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189224, 34.969509, 31.795149>,  <34.686562, 34.411732, 31.834501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189224, 34.969509, 31.795149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933250, 35.124500, 32.060581>,  <34.779667, 35.217495, 32.219841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933250, 35.124500, 32.060581>,  <35.189224, 34.969509, 31.795149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933250, 35.124500, 32.060581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768237, 0.303441, 0.563680,
		0.017054, 0.870509, -0.491857,
		-0.639938, 0.387476, 0.663582,
		34.741268, 35.240742, 32.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486767, 35.619072, 32.024517>,  <35.189224, 34.969509, 31.795149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486767, 35.619072, 32.024517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225269, 35.551144, 32.319481>,  <35.068371, 35.510387, 32.496460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225269, 35.551144, 32.319481>,  <35.486767, 35.619072, 32.024517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225269, 35.551144, 32.319481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611818, 0.454839, 0.647148,
		-0.445306, 0.874232, -0.193446,
		-0.653745, -0.169825, 0.737413,
		35.029144, 35.500195, 32.540703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251854, 35.925823, 32.053070>,  <35.486767, 35.619072, 32.024517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251854, 35.925823, 32.053070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418907, 36.209236, 31.825541>,  <36.519138, 36.379284, 31.689022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418907, 36.209236, 31.825541>,  <36.251854, 35.925823, 32.053070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418907, 36.209236, 31.825541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907066, 0.288556, -0.306540,
		-0.053056, 0.643984, 0.763197,
		0.417632, 0.708534, -0.568826,
		36.544197, 36.421795, 31.654892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748718, 36.566891, 31.904453>,  <36.251854, 35.925823, 32.053070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748718, 36.566891, 31.904453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002941, 36.643913, 31.605391>,  <36.155476, 36.690125, 31.425953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002941, 36.643913, 31.605391>,  <35.748718, 36.566891, 31.904453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002941, 36.643913, 31.605391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767967, 0.058150, -0.637844,
		-0.079343, 0.979562, 0.184833,
		0.635556, 0.192554, -0.747657,
		36.193607, 36.701679, 31.381094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594601, 37.246578, 31.641096>,  <35.748718, 36.566891, 31.904453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594601, 37.246578, 31.641096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789955, 37.035347, 31.363214>,  <35.907169, 36.908607, 31.196486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789955, 37.035347, 31.363214>,  <35.594601, 37.246578, 31.641096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789955, 37.035347, 31.363214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728798, 0.191006, -0.657549,
		0.479928, 0.827437, -0.291576,
		0.488387, -0.528076, -0.694704,
		35.936470, 36.876923, 31.154804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440639, 37.619213, 30.930588>,  <35.594601, 37.246578, 31.641096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440639, 37.619213, 30.930588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552116, 37.242325, 30.856236>,  <35.619003, 37.016193, 30.811625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552116, 37.242325, 30.856236>,  <35.440639, 37.619213, 30.930588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552116, 37.242325, 30.856236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641680, -0.038682, -0.765996,
		0.714548, 0.332751, -0.615385,
		0.278690, -0.942221, -0.185879,
		35.635723, 36.959660, 30.800472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617088, 37.650414, 30.306814>,  <35.440639, 37.619213, 30.930588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617088, 37.650414, 30.306814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496807, 37.277050, 30.385122>,  <35.424637, 37.053032, 30.432108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496807, 37.277050, 30.385122>,  <35.617088, 37.650414, 30.306814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496807, 37.277050, 30.385122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637513, 0.044056, -0.769179,
		0.709332, -0.356103, -0.608308,
		-0.300707, -0.933408, 0.195770,
		35.406593, 36.997028, 30.443853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613018, 37.346439, 29.649090>,  <35.617088, 37.650414, 30.306814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613018, 37.346439, 29.649090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393253, 37.096603, 29.871094>,  <35.261395, 36.946701, 30.004295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393253, 37.096603, 29.871094>,  <35.613018, 37.346439, 29.649090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393253, 37.096603, 29.871094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632297, -0.123437, -0.764829,
		0.546213, -0.771136, -0.327109,
		-0.549410, -0.624590, 0.555010,
		35.228432, 36.909225, 30.037598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444302, 36.899158, 29.166096>,  <35.613018, 37.346439, 29.649090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444302, 36.899158, 29.166096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188137, 36.872425, 29.472143>,  <35.034439, 36.856384, 29.655771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188137, 36.872425, 29.472143>,  <35.444302, 36.899158, 29.166096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188137, 36.872425, 29.472143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752600, -0.144081, -0.642521,
		0.153180, -0.987306, 0.041972,
		-0.640413, -0.066834, 0.765118,
		34.996014, 36.852375, 29.701679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064030, 36.400673, 28.929506>,  <35.444302, 36.899158, 29.166096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064030, 36.400673, 28.929506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836643, 36.573883, 29.209318>,  <34.700211, 36.677807, 29.377205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836643, 36.573883, 29.209318>,  <35.064030, 36.400673, 28.929506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836643, 36.573883, 29.209318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799815, -0.091682, -0.593204,
		-0.192736, -0.896709, 0.398454,
		-0.568462, 0.433021, 0.699531,
		34.666103, 36.703789, 29.419178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389992, 35.987820, 29.094288>,  <35.064030, 36.400673, 28.929506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389992, 35.987820, 29.094288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278873, 36.348457, 29.226923>,  <34.212204, 36.564842, 29.306505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278873, 36.348457, 29.226923>,  <34.389992, 35.987820, 29.094288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278873, 36.348457, 29.226923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849817, -0.069694, -0.522450,
		-0.447930, -0.426924, 0.785554,
		-0.277795, 0.901598, 0.331589,
		34.195534, 36.618938, 29.326399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765194, 35.950481, 29.233450>,  <34.389992, 35.987820, 29.094288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765194, 35.950481, 29.233450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790390, 36.347466, 29.191380>,  <33.805508, 36.585655, 29.166138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790390, 36.347466, 29.191380>,  <33.765194, 35.950481, 29.233450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790390, 36.347466, 29.191380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761871, -0.020251, -0.647412,
		-0.644658, 0.120912, 0.754848,
		0.062994, 0.992457, -0.105174,
		33.809288, 36.645203, 29.159828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063972, 36.202682, 29.376335>,  <33.765194, 35.950481, 29.233450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063972, 36.202682, 29.376335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235615, 36.497467, 29.167431>,  <33.338600, 36.674339, 29.042088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235615, 36.497467, 29.167431>,  <33.063972, 36.202682, 29.376335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235615, 36.497467, 29.167431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806962, 0.053009, -0.588220,
		-0.405812, 0.673852, 0.617447,
		0.429103, 0.736963, -0.522261,
		33.364346, 36.718555, 29.010752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582283, 36.805134, 29.402330>,  <33.063972, 36.202682, 29.376335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582283, 36.805134, 29.402330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794453, 36.859276, 29.067587>,  <32.921753, 36.891762, 28.866741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794453, 36.859276, 29.067587>,  <32.582283, 36.805134, 29.402330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794453, 36.859276, 29.067587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845674, 0.153275, -0.511216,
		0.059075, 0.978870, 0.195764,
		0.530420, 0.135352, -0.836860,
		32.953579, 36.899883, 28.816528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151958, 37.347229, 29.093262>,  <32.582283, 36.805134, 29.402330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151958, 37.347229, 29.093262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366585, 37.185677, 28.796890>,  <32.495361, 37.088745, 28.619068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366585, 37.185677, 28.796890>,  <32.151958, 37.347229, 29.093262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366585, 37.185677, 28.796890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729135, 0.220109, -0.648008,
		0.424805, 0.887936, -0.176382,
		0.536566, -0.403883, -0.740929,
		32.527554, 37.064510, 28.574612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157799, 37.961899, 28.527403>,  <32.151958, 37.347229, 29.093262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157799, 37.961899, 28.527403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.277710, 37.624043, 28.349995>,  <32.349655, 37.421329, 28.243549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.277710, 37.624043, 28.349995>,  <32.157799, 37.961899, 28.527403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277710, 37.624043, 28.349995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778049, 0.052573, -0.626000,
		0.552064, 0.532742, -0.641414,
		0.299775, -0.844643, -0.443523,
		32.367641, 37.370651, 28.216938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344326, 38.205448, 27.848577>,  <32.157799, 37.961899, 28.527403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344326, 38.205448, 27.848577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260300, 37.814651, 27.863352>,  <32.209885, 37.580173, 27.872215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260300, 37.814651, 27.863352>,  <32.344326, 38.205448, 27.848577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260300, 37.814651, 27.863352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560285, 0.089338, -0.823468,
		0.801220, -0.193676, -0.566159,
		-0.210065, -0.976990, 0.036935,
		32.197281, 37.521553, 27.874432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373581, 38.007278, 27.043667>,  <32.344326, 38.205448, 27.848577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373581, 38.007278, 27.043667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178677, 37.723682, 27.247593>,  <32.061733, 37.553524, 27.369949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178677, 37.723682, 27.247593>,  <32.373581, 38.007278, 27.043667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178677, 37.723682, 27.247593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633817, -0.114469, -0.764966,
		0.600709, -0.695870, -0.393592,
		-0.487263, -0.708987, 0.509816,
		32.032497, 37.510986, 27.400537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292046, 37.420319, 26.596062>,  <32.373581, 38.007278, 27.043667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292046, 37.420319, 26.596062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014999, 37.372917, 26.880665>,  <31.848772, 37.344475, 27.051426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014999, 37.372917, 26.880665>,  <32.292046, 37.420319, 26.596062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014999, 37.372917, 26.880665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707614, -0.079660, -0.702094,
		0.139881, -0.989753, -0.028683,
		-0.692615, -0.118506, 0.711506,
		31.807215, 37.337364, 27.094116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015488, 36.823055, 26.425436>,  <32.292046, 37.420319, 26.596062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015488, 36.823055, 26.425436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.765211, 37.044399, 26.645365>,  <31.615044, 37.177204, 26.777321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.765211, 37.044399, 26.645365>,  <32.015488, 36.823055, 26.425436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765211, 37.044399, 26.645365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747393, -0.223401, -0.625696,
		-0.223401, -0.802427, 0.553355,
		0.625696, -0.553355, -0.549821,
		31.577503, 37.210407, 26.810310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.642988, 36.314823, 26.746059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432003, 36.654530, 26.755331>,  <31.305412, 36.858353, 26.760895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432003, 36.654530, 26.755331>,  <31.642988, 36.314823, 26.746059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432003, 36.654530, 26.755331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669961, -0.399015, -0.626051,
		-0.522433, -0.345747, 0.779438,
		-0.527462, 0.849262, 0.023179,
		31.273764, 36.909309, 26.762285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973963, 36.122623, 26.726965>,  <31.642988, 36.314823, 26.746059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973963, 36.122623, 26.726965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959349, 36.499241, 26.593002>,  <30.950581, 36.725212, 26.512625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959349, 36.499241, 26.593002>,  <30.973963, 36.122623, 26.726965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959349, 36.499241, 26.593002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550780, -0.298608, -0.779407,
		-0.833851, 0.155986, 0.529492,
		-0.036534, 0.941542, -0.334908,
		30.948389, 36.781704, 26.492531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295504, 36.203114, 26.406721>,  <30.973963, 36.122623, 26.726965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295504, 36.203114, 26.406721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508558, 36.516182, 26.277901>,  <30.636391, 36.704025, 26.200607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508558, 36.516182, 26.277901>,  <30.295504, 36.203114, 26.406721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508558, 36.516182, 26.277901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362181, -0.133133, -0.922551,
		-0.764934, 0.608025, 0.212559,
		0.532636, 0.782676, -0.322053,
		30.668348, 36.750984, 26.181284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823935, 36.499531, 26.088125>,  <30.295504, 36.203114, 26.406721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823935, 36.499531, 26.088125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169697, 36.632530, 25.937262>,  <30.377153, 36.712330, 25.846743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169697, 36.632530, 25.937262>,  <29.823935, 36.499531, 26.088125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169697, 36.632530, 25.937262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340142, -0.165720, -0.925656,
		-0.370279, 0.928431, -0.030154,
		0.864405, 0.332495, -0.377161,
		30.429018, 36.732277, 25.824114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605028, 36.921814, 25.597025>,  <29.823935, 36.499531, 26.088125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605028, 36.921814, 25.597025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.976604, 36.822086, 25.487547>,  <30.199551, 36.762249, 25.421860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.976604, 36.822086, 25.487547>,  <29.605028, 36.921814, 25.597025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976604, 36.822086, 25.487547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318922, -0.163395, -0.933591,
		0.188044, 0.954537, -0.231298,
		0.928940, -0.249322, -0.273697,
		30.255287, 36.747292, 25.405437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639942, 37.061069, 24.910124>,  <29.605028, 36.921814, 25.597025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639942, 37.061069, 24.910124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923346, 36.782734, 24.957140>,  <30.093388, 36.615730, 24.985350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923346, 36.782734, 24.957140>,  <29.639942, 37.061069, 24.910124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923346, 36.782734, 24.957140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239996, -0.394217, -0.887127,
		0.663637, 0.600330, -0.446307,
		0.708511, -0.695842, 0.117541,
		30.135899, 36.573982, 24.992403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759800, 36.999954, 24.287695>,  <29.639942, 37.061069, 24.910124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759800, 36.999954, 24.287695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984844, 36.700207, 24.427361>,  <30.119871, 36.520359, 24.511160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984844, 36.700207, 24.427361>,  <29.759800, 36.999954, 24.287695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984844, 36.700207, 24.427361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176272, -0.521366, -0.834928,
		0.807713, 0.408190, -0.425419,
		0.562608, -0.749372, 0.349162,
		30.153627, 36.475395, 24.532108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270802, 36.853226, 23.795921>,  <29.759800, 36.999954, 24.287695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270802, 36.853226, 23.795921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230692, 36.528496, 24.026014>,  <30.206627, 36.333660, 24.164070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230692, 36.528496, 24.026014>,  <30.270802, 36.853226, 23.795921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230692, 36.528496, 24.026014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051275, -0.573162, -0.817837,
		0.993638, -0.111501, 0.015846,
		-0.100272, -0.811821, 0.575232,
		30.200611, 36.284950, 24.198584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803493, 36.460110, 23.524862>,  <30.270802, 36.853226, 23.795921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803493, 36.460110, 23.524862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518023, 36.240383, 23.698717>,  <30.346739, 36.108547, 23.803030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518023, 36.240383, 23.698717>,  <30.803493, 36.460110, 23.524862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518023, 36.240383, 23.698717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109091, -0.525757, -0.843611,
		0.691926, -0.649482, 0.315296,
		-0.713679, -0.549321, 0.434637,
		30.303919, 36.075588, 23.829109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004089, 35.699562, 23.364389>,  <30.803493, 36.460110, 23.524862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004089, 35.699562, 23.364389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614891, 35.715115, 23.455399>,  <30.381372, 35.724445, 23.510004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614891, 35.715115, 23.455399>,  <31.004089, 35.699562, 23.364389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614891, 35.715115, 23.455399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199625, -0.636628, -0.744885,
		0.115885, -0.770190, 0.627199,
		-0.972996, 0.038883, 0.227525,
		30.322992, 35.726780, 23.523655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731731, 34.969170, 23.225946>,  <31.004089, 35.699562, 23.364389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731731, 34.969170, 23.225946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390129, 35.169861, 23.281000>,  <30.185167, 35.290276, 23.314032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390129, 35.169861, 23.281000>,  <30.731731, 34.969170, 23.225946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390129, 35.169861, 23.281000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355716, -0.370057, -0.858210,
		-0.379667, -0.781868, 0.494505,
		-0.854002, 0.501737, 0.137624,
		30.133928, 35.320381, 23.322290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083353, 34.436878, 23.161612>,  <30.731731, 34.969170, 23.225946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083353, 34.436878, 23.161612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014853, 34.819241, 23.066177>,  <29.973753, 35.048656, 23.008917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014853, 34.819241, 23.066177>,  <30.083353, 34.436878, 23.161612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014853, 34.819241, 23.066177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240509, -0.275399, -0.930758,
		-0.955421, -0.102012, 0.277065,
		-0.171252, 0.955902, -0.238587,
		29.963476, 35.106010, 22.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550974, 34.311325, 22.727507>,  <30.083353, 34.436878, 23.161612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550974, 34.311325, 22.727507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636421, 34.697624, 22.668592>,  <29.687689, 34.929405, 22.633244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636421, 34.697624, 22.668592>,  <29.550974, 34.311325, 22.727507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636421, 34.697624, 22.668592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262708, -0.088421, -0.960815,
		-0.940931, 0.243941, 0.234822,
		0.213619, 0.965751, -0.147283,
		29.700506, 34.987350, 22.624407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960936, 34.612087, 22.384787>,  <29.550974, 34.311325, 22.727507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960936, 34.612087, 22.384787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.251921, 34.870220, 22.291544>,  <29.426512, 35.025101, 22.235600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.251921, 34.870220, 22.291544>,  <28.960936, 34.612087, 22.384787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251921, 34.870220, 22.291544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366099, 0.077728, -0.927324,
		-0.580316, 0.759935, 0.292801,
		0.727465, 0.645335, -0.233104,
		29.470160, 35.063820, 22.221613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623684, 35.149670, 22.051733>,  <28.960936, 34.612087, 22.384787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623684, 35.149670, 22.051733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008045, 35.199379, 21.952763>,  <29.238663, 35.229202, 21.893381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008045, 35.199379, 21.952763>,  <28.623684, 35.149670, 22.051733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008045, 35.199379, 21.952763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270723, 0.234284, -0.933713,
		-0.058065, 0.964193, 0.258767,
		0.960905, 0.124270, -0.247426,
		29.296316, 35.236660, 21.878534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607597, 35.860523, 21.692612>,  <28.623684, 35.149670, 22.051733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607597, 35.860523, 21.692612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942610, 35.659679, 21.606421>,  <29.143618, 35.539173, 21.554707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942610, 35.659679, 21.606421>,  <28.607597, 35.860523, 21.692612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942610, 35.659679, 21.606421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174898, 0.127252, -0.976329,
		0.517641, 0.855392, 0.018760,
		0.837531, -0.502107, -0.215477,
		29.193869, 35.509048, 21.541777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846531, 36.189423, 21.025404>,  <28.607597, 35.860523, 21.692612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846531, 36.189423, 21.025404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049284, 35.844814, 21.037039>,  <29.170937, 35.638050, 21.044020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049284, 35.844814, 21.037039>,  <28.846531, 36.189423, 21.025404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049284, 35.844814, 21.037039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118511, -0.103067, -0.987589,
		0.853830, 0.497144, -0.154344,
		0.506882, -0.861525, 0.029085,
		29.201349, 35.586357, 21.045765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386570, 36.162235, 20.433916>,  <28.846531, 36.189423, 21.025404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386570, 36.162235, 20.433916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280272, 35.788410, 20.528542>,  <29.216492, 35.564114, 20.585318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280272, 35.788410, 20.528542>,  <29.386570, 36.162235, 20.433916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280272, 35.788410, 20.528542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461367, -0.092171, -0.882408,
		0.846475, -0.343640, -0.406685,
		-0.265746, -0.934567, 0.236565,
		29.200548, 35.508041, 20.599510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441225, 35.936111, 19.826693>,  <29.386570, 36.162235, 20.433916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441225, 35.936111, 19.826693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248913, 35.622166, 19.983074>,  <29.133526, 35.433800, 20.076902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248913, 35.622166, 19.983074>,  <29.441225, 35.936111, 19.826693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248913, 35.622166, 19.983074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585154, -0.044872, -0.809680,
		0.653028, -0.618045, -0.437691,
		-0.480779, -0.784861, 0.390954,
		29.104679, 35.386707, 20.100361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339388, 35.341625, 19.269703>,  <29.441225, 35.936111, 19.826693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339388, 35.341625, 19.269703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066935, 35.316513, 19.561487>,  <28.903463, 35.301445, 19.736559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066935, 35.316513, 19.561487>,  <29.339388, 35.341625, 19.269703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066935, 35.316513, 19.561487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731294, 0.009930, -0.681990,
		0.035572, -0.997978, -0.052674,
		-0.681134, -0.062780, 0.729463,
		28.862595, 35.297680, 19.780327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942678, 34.767735, 19.083254>,  <29.339388, 35.341625, 19.269703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942678, 34.767735, 19.083254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709511, 34.960785, 19.344721>,  <28.569611, 35.076614, 19.501600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709511, 34.960785, 19.344721>,  <28.942678, 34.767735, 19.083254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709511, 34.960785, 19.344721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739711, 0.017664, -0.672692,
		-0.336203, -0.875651, 0.346704,
		-0.582919, 0.482622, 0.653667,
		28.534636, 35.105572, 19.540821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338551, 34.384937, 19.224237>,  <28.942678, 34.767735, 19.083254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338551, 34.384937, 19.224237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.295382, 34.780170, 19.268133>,  <28.269480, 35.017311, 19.294470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.295382, 34.780170, 19.268133>,  <28.338551, 34.384937, 19.224237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295382, 34.780170, 19.268133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616326, 0.020115, -0.787234,
		-0.780061, -0.152595, 0.606811,
		-0.107922, 0.988084, 0.109739,
		28.263004, 35.076595, 19.301054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709433, 34.320827, 19.377335>,  <28.338551, 34.384937, 19.224237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709433, 34.320827, 19.377335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.850845, 34.612888, 19.143446>,  <27.935694, 34.788124, 19.003113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.850845, 34.612888, 19.143446>,  <27.709433, 34.320827, 19.377335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850845, 34.612888, 19.143446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719478, -0.187228, -0.668802,
		-0.597802, 0.657136, 0.459135,
		0.353531, 0.730149, -0.584721,
		27.956905, 34.831932, 18.968029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369196, 34.983021, 19.247004>,  <27.709433, 34.320827, 19.377335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369196, 34.983021, 19.247004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504353, 34.905476, 18.878601>,  <27.585445, 34.858948, 18.657560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504353, 34.905476, 18.878601>,  <27.369196, 34.983021, 19.247004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504353, 34.905476, 18.878601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911326, -0.311918, -0.268684,
		-0.235191, 0.930121, -0.282064,
		0.337890, -0.193861, -0.921004,
		27.605719, 34.847317, 18.602301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032583, 35.253979, 19.754349>,  <27.369196, 34.983021, 19.247004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032583, 35.253979, 19.754349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.635475, 35.206234, 19.749287>,  <26.397211, 35.177586, 19.746250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.635475, 35.206234, 19.749287>,  <27.032583, 35.253979, 19.754349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635475, 35.206234, 19.749287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046922, 0.288871, 0.956217,
		-0.110484, 0.949897, -0.292383,
		-0.992770, -0.119366, -0.012656,
		26.337645, 35.170425, 19.745489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792370, 35.904388, 19.988073>,  <27.032583, 35.253979, 19.754349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792370, 35.904388, 19.988073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.521326, 35.622097, 20.070814>,  <26.358700, 35.452721, 20.120459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.521326, 35.622097, 20.070814>,  <26.792370, 35.904388, 19.988073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521326, 35.622097, 20.070814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097131, 0.192926, 0.976394,
		-0.728979, 0.681706, -0.062180,
		-0.677610, -0.705731, 0.206854,
		26.318043, 35.410378, 20.132870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265997, 36.233334, 20.512260>,  <26.792370, 35.904388, 19.988073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265997, 36.233334, 20.512260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.213768, 35.838097, 20.544804>,  <26.182430, 35.600952, 20.564329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.213768, 35.838097, 20.544804>,  <26.265997, 36.233334, 20.512260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213768, 35.838097, 20.544804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029771, 0.085930, 0.995856,
		-0.990991, 0.127611, -0.040637,
		-0.130574, -0.988095, 0.081357,
		26.174595, 35.541668, 20.569210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739510, 36.121796, 21.004625>,  <26.265997, 36.233334, 20.512260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739510, 36.121796, 21.004625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.920429, 35.765083, 20.999693>,  <26.028980, 35.551056, 20.996733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.920429, 35.765083, 20.999693>,  <25.739510, 36.121796, 21.004625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920429, 35.765083, 20.999693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057539, 0.015378, 0.998225,
		-0.890009, -0.452204, 0.058268,
		0.452297, -0.891782, -0.012333,
		26.056118, 35.497547, 20.995993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442535, 35.730007, 21.580294>,  <25.739510, 36.121796, 21.004625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442535, 35.730007, 21.580294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.789558, 35.546280, 21.504007>,  <25.997772, 35.436043, 21.458235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.789558, 35.546280, 21.504007>,  <25.442535, 35.730007, 21.580294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789558, 35.546280, 21.504007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175046, -0.076927, 0.981550,
		-0.465516, -0.884934, 0.013663,
		0.867556, -0.459319, -0.190715,
		26.049826, 35.408485, 21.446793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463236, 35.249767, 22.075172>,  <25.442535, 35.730007, 21.580294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463236, 35.249767, 22.075172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831619, 35.335739, 21.945162>,  <26.052649, 35.387321, 21.867155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831619, 35.335739, 21.945162>,  <25.463236, 35.249767, 22.075172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831619, 35.335739, 21.945162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329208, 0.017084, 0.944103,
		0.208465, -0.976481, -0.055021,
		0.920959, 0.214926, -0.325026,
		26.107906, 35.400215, 21.847654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907495, 34.820316, 22.579336>,  <25.463236, 35.249767, 22.075172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907495, 34.820316, 22.579336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.155079, 35.085793, 22.411337>,  <26.303629, 35.245079, 22.310537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.155079, 35.085793, 22.411337>,  <25.907495, 34.820316, 22.579336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155079, 35.085793, 22.411337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635340, -0.108697, 0.764544,
		0.461771, -0.740063, -0.488951,
		0.618958, 0.663695, -0.419999,
		26.340767, 35.284901, 22.285337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514404, 34.407307, 22.456091>,  <25.907495, 34.820316, 22.579336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514404, 34.407307, 22.456091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.593340, 34.798965, 22.475397>,  <26.640701, 35.033962, 22.486980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.593340, 34.798965, 22.475397>,  <26.514404, 34.407307, 22.456091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593340, 34.798965, 22.475397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687082, -0.173257, 0.705620,
		0.699268, -0.106085, -0.706945,
		0.197339, 0.979146, 0.048264,
		26.652542, 35.092709, 22.489876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229866, 34.566181, 22.394291>,  <26.514404, 34.407307, 22.456091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229866, 34.566181, 22.394291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.101574, 34.897655, 22.577772>,  <27.024599, 35.096539, 22.687860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.101574, 34.897655, 22.577772>,  <27.229866, 34.566181, 22.394291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101574, 34.897655, 22.577772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670673, -0.143278, 0.727783,
		0.668827, 0.541063, -0.509825,
		-0.320730, 0.828687, 0.458705,
		27.005356, 35.146263, 22.715384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827099, 34.918098, 22.568411>,  <27.229866, 34.566181, 22.394291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827099, 34.918098, 22.568411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538765, 35.055817, 22.809029>,  <27.365765, 35.138447, 22.953400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538765, 35.055817, 22.809029>,  <27.827099, 34.918098, 22.568411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538765, 35.055817, 22.809029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675560, 0.154963, 0.720837,
		0.154963, 0.925985, -0.344295,
		-0.720837, 0.344295, 0.601544,
		27.322514, 35.159103, 22.989492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248405, 35.366585, 23.088659>,  <27.827099, 34.918098, 22.568411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248405, 35.366585, 23.088659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882437, 35.292286, 23.231998>,  <27.662855, 35.247707, 23.318003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882437, 35.292286, 23.231998>,  <28.248405, 35.366585, 23.088659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882437, 35.292286, 23.231998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330157, 0.166330, 0.929156,
		-0.232188, 0.968418, -0.090855,
		-0.914924, -0.185743, 0.358350,
		27.607960, 35.236565, 23.339504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103184, 35.938377, 23.623938>,  <28.248405, 35.366585, 23.088659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103184, 35.938377, 23.623938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869440, 35.620884, 23.691473>,  <27.729195, 35.430386, 23.731995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869440, 35.620884, 23.691473>,  <28.103184, 35.938377, 23.623938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869440, 35.620884, 23.691473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337242, -0.048294, 0.940178,
		-0.738101, 0.606341, 0.295902,
		-0.584359, -0.793737, 0.168838,
		27.694132, 35.382763, 23.742125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979681, 35.966045, 24.259140>,  <28.103184, 35.938377, 23.623938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979681, 35.966045, 24.259140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.885651, 35.582760, 24.193935>,  <27.829231, 35.352791, 24.154814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.885651, 35.582760, 24.193935>,  <27.979681, 35.966045, 24.259140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885651, 35.582760, 24.193935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342989, -0.238700, 0.908505,
		-0.909449, 0.157658, 0.384769,
		-0.235078, -0.958210, -0.163010,
		27.815126, 35.295296, 24.145033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833105, 35.803341, 24.850462>,  <27.979681, 35.966045, 24.259140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833105, 35.803341, 24.850462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864967, 35.443279, 24.679174>,  <27.884085, 35.227242, 24.576401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864967, 35.443279, 24.679174>,  <27.833105, 35.803341, 24.850462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864967, 35.443279, 24.679174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383847, -0.368760, 0.846568,
		-0.919954, -0.231804, 0.316150,
		0.079654, -0.900157, -0.428220,
		27.888863, 35.173233, 24.550709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568998, 35.260368, 25.337332>,  <27.833105, 35.803341, 24.850462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568998, 35.260368, 25.337332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803511, 35.050240, 25.090654>,  <27.944218, 34.924160, 24.942648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803511, 35.050240, 25.090654>,  <27.568998, 35.260368, 25.337332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803511, 35.050240, 25.090654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456676, -0.414445, 0.787199,
		-0.669119, -0.743149, -0.003079,
		0.586282, -0.525323, -0.616692,
		27.979395, 34.892643, 24.905647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506207, 34.473545, 25.487106>,  <27.568998, 35.260368, 25.337332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506207, 34.473545, 25.487106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856533, 34.535229, 25.304167>,  <28.066729, 34.572239, 25.194403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856533, 34.535229, 25.304167>,  <27.506207, 34.473545, 25.487106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856533, 34.535229, 25.304167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439768, -0.645415, 0.624535,
		-0.198872, -0.748104, -0.633080,
		0.875816, 0.154206, -0.457347,
		28.119278, 34.581490, 25.166964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861967, 33.782669, 25.669418>,  <27.506207, 34.473545, 25.487106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861967, 33.782669, 25.669418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135729, 34.041733, 25.535477>,  <28.299986, 34.197170, 25.455112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135729, 34.041733, 25.535477>,  <27.861967, 33.782669, 25.669418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135729, 34.041733, 25.535477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646176, -0.326083, 0.690019,
		0.337706, -0.688628, -0.641674,
		0.684406, 0.647658, -0.334854,
		28.341051, 34.236031, 25.435020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507439, 33.347290, 25.625450>,  <27.861967, 33.782669, 25.669418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507439, 33.347290, 25.625450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572418, 33.738796, 25.675457>,  <28.611406, 33.973701, 25.705462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572418, 33.738796, 25.675457>,  <28.507439, 33.347290, 25.625450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572418, 33.738796, 25.675457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782343, -0.204973, 0.588155,
		0.601291, 0.002263, -0.799027,
		0.162448, 0.978765, 0.125019,
		28.621153, 34.032425, 25.712963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328907, 33.448334, 25.451063>,  <28.507439, 33.347290, 25.625450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328907, 33.448334, 25.451063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140574, 33.728928, 25.665066>,  <29.027575, 33.897285, 25.793467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140574, 33.728928, 25.665066>,  <29.328907, 33.448334, 25.451063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140574, 33.728928, 25.665066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717910, -0.047815, 0.694492,
		0.512760, 0.711074, -0.481093,
		-0.470832, 0.701489, 0.535005,
		28.999325, 33.939373, 25.825567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827106, 33.589584, 25.946220>,  <29.328907, 33.448334, 25.451063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827106, 33.589584, 25.946220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527561, 33.807899, 26.096588>,  <29.347834, 33.938889, 26.186810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527561, 33.807899, 26.096588>,  <29.827106, 33.589584, 25.946220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527561, 33.807899, 26.096588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484159, 0.063225, 0.872693,
		0.452539, 0.835533, -0.311596,
		-0.748865, 0.545790, 0.375919,
		29.302902, 33.971638, 26.209364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.722454, 37.061848, 27.843025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.454723, 37.006378, 28.134991>,  <33.294086, 36.973099, 28.310169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.454723, 37.006378, 28.134991>,  <33.722454, 37.061848, 27.843025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454723, 37.006378, 28.134991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727774, 0.075312, 0.681670,
		-0.149499, 0.987471, 0.050512,
		-0.669325, -0.138670, 0.729914,
		33.253925, 36.964779, 28.353966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937237, 37.663857, 28.417307>,  <33.722454, 37.061848, 27.843025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937237, 37.663857, 28.417307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.734417, 37.382359, 28.616358>,  <33.612724, 37.213459, 28.735788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.734417, 37.382359, 28.616358>,  <33.937237, 37.663857, 28.417307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734417, 37.382359, 28.616358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640974, 0.078112, 0.763578,
		-0.576238, 0.706142, 0.411477,
		-0.507053, -0.703748, 0.497630,
		33.582302, 37.171234, 28.765646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750317, 37.913013, 29.126059>,  <33.937237, 37.663857, 28.417307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750317, 37.913013, 29.126059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750980, 37.513527, 29.146330>,  <33.751381, 37.273834, 29.158493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750980, 37.513527, 29.146330>,  <33.750317, 37.913013, 29.126059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750980, 37.513527, 29.146330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704333, 0.037146, 0.708897,
		-0.709868, 0.034515, 0.703489,
		0.001664, -0.998714, 0.050679,
		33.751480, 37.213913, 29.161533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678658, 37.689613, 29.830660>,  <33.750317, 37.913013, 29.126059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678658, 37.689613, 29.830660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844234, 37.373432, 29.650068>,  <33.943581, 37.183723, 29.541714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844234, 37.373432, 29.650068>,  <33.678658, 37.689613, 29.830660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844234, 37.373432, 29.650068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615335, -0.122519, 0.778686,
		-0.670830, -0.600143, 0.435678,
		0.413944, -0.790454, -0.451479,
		33.968418, 37.136295, 29.514626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913315, 37.287170, 30.409235>,  <33.678658, 37.689613, 29.830660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913315, 37.287170, 30.409235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.104412, 37.074860, 30.129225>,  <34.219070, 36.947472, 29.961220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.104412, 37.074860, 30.129225>,  <33.913315, 37.287170, 30.409235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104412, 37.074860, 30.129225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715154, -0.227808, 0.660801,
		-0.510211, -0.816319, 0.270755,
		0.477744, -0.530780, -0.700024,
		34.247734, 36.915627, 29.919218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115513, 36.501675, 30.537672>,  <33.913315, 37.287170, 30.409235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115513, 36.501675, 30.537672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.393967, 36.633263, 30.282431>,  <34.561039, 36.712215, 30.129286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.393967, 36.633263, 30.282431>,  <34.115513, 36.501675, 30.537672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393967, 36.633263, 30.282431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705034, -0.145666, 0.694053,
		0.135373, -0.933038, -0.333339,
		0.696133, 0.328971, -0.638104,
		34.602806, 36.731953, 30.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585995, 36.041481, 30.678249>,  <34.115513, 36.501675, 30.537672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585995, 36.041481, 30.678249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.807056, 36.275925, 30.441252>,  <34.939693, 36.416592, 30.299053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.807056, 36.275925, 30.441252>,  <34.585995, 36.041481, 30.678249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807056, 36.275925, 30.441252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801301, -0.178243, 0.571092,
		0.229117, -0.790380, -0.568160,
		0.552650, 0.586114, -0.592494,
		34.972851, 36.451759, 30.263504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296101, 35.716705, 30.661463>,  <34.585995, 36.041481, 30.678249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296101, 35.716705, 30.661463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.330997, 36.106579, 30.579115>,  <35.351936, 36.340504, 30.529707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.330997, 36.106579, 30.579115>,  <35.296101, 35.716705, 30.661463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330997, 36.106579, 30.579115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862964, 0.029300, 0.504415,
		0.497676, -0.221663, -0.838561,
		0.087240, 0.974683, -0.205869,
		35.357170, 36.398983, 30.517355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965782, 35.778381, 30.519426>,  <35.296101, 35.716705, 30.661463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965782, 35.778381, 30.519426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892609, 36.168003, 30.572731>,  <35.848705, 36.401775, 30.604713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892609, 36.168003, 30.572731>,  <35.965782, 35.778381, 30.519426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892609, 36.168003, 30.572731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894235, 0.108534, 0.434240,
		0.408508, 0.198607, -0.890885,
		-0.182935, 0.974051, 0.133264,
		35.837727, 36.460220, 30.612711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637379, 36.087006, 30.456835>,  <35.965782, 35.778381, 30.519426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637379, 36.087006, 30.456835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417919, 36.358829, 30.651640>,  <36.286243, 36.521923, 30.768522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417919, 36.358829, 30.651640>,  <36.637379, 36.087006, 30.456835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417919, 36.358829, 30.651640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712852, 0.075877, 0.697198,
		0.436835, 0.729685, -0.526056,
		-0.548651, 0.679560, 0.487012,
		36.253323, 36.562698, 30.797743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125332, 36.576500, 30.543404>,  <36.637379, 36.087006, 30.456835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125332, 36.576500, 30.543404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818298, 36.642105, 30.791250>,  <36.634079, 36.681469, 30.939959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818298, 36.642105, 30.791250>,  <37.125332, 36.576500, 30.543404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818298, 36.642105, 30.791250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640799, 0.217570, 0.736234,
		-0.014061, 0.962166, -0.272099,
		-0.767580, 0.164009, 0.619615,
		36.588024, 36.691307, 30.977135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192699, 37.243515, 30.892565>,  <37.125332, 36.576500, 30.543404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192699, 37.243515, 30.892565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990093, 36.981709, 31.117083>,  <36.868530, 36.824627, 31.251793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990093, 36.981709, 31.117083>,  <37.192699, 37.243515, 30.892565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990093, 36.981709, 31.117083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706143, 0.058661, 0.705635,
		-0.494773, 0.753773, 0.432466,
		-0.506520, -0.654512, 0.561295,
		36.838139, 36.785355, 31.285471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171661, 37.485737, 31.618151>,  <37.192699, 37.243515, 30.892565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171661, 37.485737, 31.618151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158905, 37.085960, 31.622072>,  <37.151253, 36.846092, 31.624426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158905, 37.085960, 31.622072>,  <37.171661, 37.485737, 31.618151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158905, 37.085960, 31.622072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723920, -0.016331, 0.689691,
		-0.689147, 0.029092, 0.724037,
		-0.031889, -0.999443, 0.009806,
		37.149338, 36.786129, 31.625013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896873, 37.827370, 32.240021>,  <37.171661, 37.485737, 31.618151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896873, 37.827370, 32.240021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991238, 38.215542, 32.260433>,  <37.047855, 38.448444, 32.272682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991238, 38.215542, 32.260433>,  <36.896873, 37.827370, 32.240021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991238, 38.215542, 32.260433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851586, 0.231744, -0.470209,
		-0.468133, 0.067470, 0.881079,
		0.235910, 0.970434, 0.051031,
		37.062012, 38.506672, 32.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204502, 38.102036, 32.253445>,  <36.896873, 37.827370, 32.240021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204502, 38.102036, 32.253445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471973, 38.358189, 32.102299>,  <36.632458, 38.511879, 32.011612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471973, 38.358189, 32.102299>,  <36.204502, 38.102036, 32.253445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471973, 38.358189, 32.102299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711931, 0.404780, -0.573853,
		-0.214534, 0.652734, 0.726576,
		0.668677, 0.640383, -0.377863,
		36.672577, 38.550304, 31.988939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860409, 38.734013, 32.369614>,  <36.204502, 38.102036, 32.253445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860409, 38.734013, 32.369614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121307, 38.794823, 32.072571>,  <36.277847, 38.831306, 31.894344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121307, 38.794823, 32.072571>,  <35.860409, 38.734013, 32.369614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121307, 38.794823, 32.072571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730072, 0.389518, -0.561490,
		0.203901, 0.908386, 0.365047,
		0.652242, 0.152022, -0.742610,
		36.316978, 38.840431, 31.849789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689323, 39.358227, 32.134216>,  <35.860409, 38.734013, 32.369614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689323, 39.358227, 32.134216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.902302, 39.201656, 31.834007>,  <36.030090, 39.107716, 31.653881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.902302, 39.201656, 31.834007>,  <35.689323, 39.358227, 32.134216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902302, 39.201656, 31.834007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712376, 0.271682, -0.647077,
		0.457185, 0.879191, -0.134184,
		0.532449, -0.391423, -0.750524,
		36.062035, 39.084229, 31.608850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779736, 39.887672, 31.742828>,  <35.689323, 39.358227, 32.134216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779736, 39.887672, 31.742828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.859032, 39.587822, 31.490238>,  <35.906609, 39.407913, 31.338684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.859032, 39.587822, 31.490238>,  <35.779736, 39.887672, 31.742828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859032, 39.587822, 31.490238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621104, 0.402321, -0.672583,
		0.758241, 0.525549, -0.385836,
		0.198245, -0.749624, -0.631477,
		35.918507, 39.362934, 31.300795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972252, 40.242317, 31.153841>,  <35.779736, 39.887672, 31.742828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972252, 40.242317, 31.153841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.868420, 39.874500, 31.035820>,  <35.806118, 39.653809, 30.965008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.868420, 39.874500, 31.035820>,  <35.972252, 40.242317, 31.153841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868420, 39.874500, 31.035820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538893, 0.391460, -0.745891,
		0.801381, -0.034618, -0.597151,
		-0.259582, -0.919544, -0.295054,
		35.790546, 39.598637, 30.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983555, 40.298035, 30.400753>,  <35.972252, 40.242317, 31.153841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983555, 40.298035, 30.400753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768162, 39.966057, 30.459034>,  <35.638927, 39.766869, 30.494003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768162, 39.966057, 30.459034>,  <35.983555, 40.298035, 30.400753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768162, 39.966057, 30.459034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718352, 0.361760, -0.594223,
		0.440462, -0.424644, -0.790993,
		-0.538482, -0.829944, 0.145703,
		35.606617, 39.717075, 30.502745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870716, 40.062145, 29.724997>,  <35.983555, 40.298035, 30.400753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870716, 40.062145, 29.724997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.593914, 39.877457, 29.946964>,  <35.427834, 39.766644, 30.080145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.593914, 39.877457, 29.946964>,  <35.870716, 40.062145, 29.724997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593914, 39.877457, 29.946964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695264, 0.219446, -0.684435,
		0.194244, -0.859451, -0.472877,
		-0.692009, -0.461722, 0.554920,
		35.386311, 39.738941, 30.113441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411587, 39.797722, 29.233040>,  <35.870716, 40.062145, 29.724997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411587, 39.797722, 29.233040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.184540, 39.800217, 29.562347>,  <35.048313, 39.801712, 29.759933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.184540, 39.800217, 29.562347>,  <35.411587, 39.797722, 29.233040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184540, 39.800217, 29.562347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813654, 0.148334, -0.562107,
		-0.125624, -0.988918, -0.079123,
		-0.567614, 0.006235, 0.823271,
		35.014256, 39.802086, 29.809328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902187, 39.220360, 29.128435>,  <35.411587, 39.797722, 29.233040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902187, 39.220360, 29.128435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763771, 39.501881, 29.376604>,  <34.680721, 39.670792, 29.525505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763771, 39.501881, 29.376604>,  <34.902187, 39.220360, 29.128435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763771, 39.501881, 29.376604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857610, 0.030888, -0.513373,
		-0.380475, -0.709727, 0.592897,
		-0.346041, 0.703800, 0.620421,
		34.659958, 39.713020, 29.562731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309879, 38.976238, 29.258263>,  <34.902187, 39.220360, 29.128435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309879, 38.976238, 29.258263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.283489, 39.359997, 29.367954>,  <34.267654, 39.590252, 29.433769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.283489, 39.359997, 29.367954>,  <34.309879, 38.976238, 29.258263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283489, 39.359997, 29.367954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939407, 0.032928, -0.341219,
		-0.336394, -0.280127, 0.899093,
		-0.065979, 0.959398, 0.274230,
		34.263695, 39.647816, 29.450224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598770, 38.986809, 29.356680>,  <34.309879, 38.976238, 29.258263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598770, 38.986809, 29.356680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.728260, 39.365055, 29.343903>,  <33.805954, 39.592003, 29.336237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.728260, 39.365055, 29.343903>,  <33.598770, 38.986809, 29.356680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728260, 39.365055, 29.343903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870034, 0.284246, -0.402797,
		-0.371809, 0.158188, 0.914732,
		0.323727, 0.945611, -0.031943,
		33.825378, 39.648739, 29.334320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079159, 39.459225, 29.687164>,  <33.598770, 38.986809, 29.356680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079159, 39.459225, 29.687164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.303581, 39.670269, 29.432026>,  <33.438232, 39.796894, 29.278942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.303581, 39.670269, 29.432026>,  <33.079159, 39.459225, 29.687164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303581, 39.670269, 29.432026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809610, 0.189190, -0.555642,
		-0.172488, 0.828152, 0.533304,
		0.561051, 0.527609, -0.637847,
		33.471897, 39.828552, 29.240671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558342, 39.840282, 29.242794>,  <33.079159, 39.459225, 29.687164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558342, 39.840282, 29.242794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.885910, 39.881332, 29.016932>,  <33.082451, 39.905960, 28.881414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.885910, 39.881332, 29.016932>,  <32.558342, 39.840282, 29.242794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885910, 39.881332, 29.016932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573160, 0.196406, -0.795558,
		0.029260, 0.975138, 0.219660,
		0.818921, 0.102622, -0.564656,
		33.131588, 39.912121, 28.847534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312740, 40.292225, 28.823692>,  <32.558342, 39.840282, 29.242794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312740, 40.292225, 28.823692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.633350, 40.129208, 28.648664>,  <32.825714, 40.031395, 28.543648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.633350, 40.129208, 28.648664>,  <32.312740, 40.292225, 28.823692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633350, 40.129208, 28.648664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437401, 0.099368, -0.893760,
		0.407730, 0.907762, -0.098615,
		0.801522, -0.407547, -0.437571,
		32.873806, 40.006943, 28.517393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336044, 41.013580, 28.981043>,  <32.312740, 40.292225, 28.823692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336044, 41.013580, 28.981043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.998314, 41.148792, 29.147341>,  <31.795675, 41.229919, 29.247120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.998314, 41.148792, 29.147341>,  <32.336044, 41.013580, 28.981043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998314, 41.148792, 29.147341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268898, -0.403811, 0.874431,
		0.463468, 0.850100, 0.250053,
		-0.844329, 0.338032, 0.415744,
		31.745016, 41.250202, 29.272064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602425, 41.367439, 29.445747>,  <32.336044, 41.013580, 28.981043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602425, 41.367439, 29.445747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233212, 41.259079, 29.555019>,  <32.011684, 41.194065, 29.620583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233212, 41.259079, 29.555019>,  <32.602425, 41.367439, 29.445747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233212, 41.259079, 29.555019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371415, -0.442285, 0.816354,
		-0.100325, 0.854984, 0.508859,
		-0.923031, -0.270899, 0.273182,
		31.956303, 41.177811, 29.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585972, 41.558083, 30.086311>,  <32.602425, 41.367439, 29.445747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585972, 41.558083, 30.086311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.309753, 41.271412, 30.047289>,  <32.144024, 41.099411, 30.023876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.309753, 41.271412, 30.047289>,  <32.585972, 41.558083, 30.086311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309753, 41.271412, 30.047289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343570, -0.443711, 0.827696,
		-0.636478, 0.538046, 0.552632,
		-0.690547, -0.716678, -0.097556,
		32.102589, 41.056408, 30.018023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454762, 41.400921, 30.727688>,  <32.585972, 41.558083, 30.086311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454762, 41.400921, 30.727688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.236782, 41.099373, 30.580877>,  <32.105995, 40.918446, 30.492790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.236782, 41.099373, 30.580877>,  <32.454762, 41.400921, 30.727688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236782, 41.099373, 30.580877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148072, -0.517384, 0.842846,
		-0.825289, 0.404964, 0.393577,
		-0.544953, -0.753868, -0.367027,
		32.073296, 40.873211, 30.470770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829058, 41.275894, 31.079399>,  <32.454762, 41.400921, 30.727688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829058, 41.275894, 31.079399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.912210, 40.926510, 30.903288>,  <31.962103, 40.716877, 30.797621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.912210, 40.926510, 30.903288>,  <31.829058, 41.275894, 31.079399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912210, 40.926510, 30.903288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024587, -0.454638, 0.890337,
		-0.977845, -0.174261, -0.115987,
		0.207883, -0.873463, -0.440280,
		31.974575, 40.664471, 30.771204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362108, 40.757927, 31.304798>,  <31.829058, 41.275894, 31.079399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362108, 40.757927, 31.304798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.684206, 40.555237, 31.181631>,  <31.877464, 40.433624, 31.107731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.684206, 40.555237, 31.181631>,  <31.362108, 40.757927, 31.304798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684206, 40.555237, 31.181631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103821, -0.631768, 0.768173,
		-0.583784, -0.586599, -0.561336,
		0.805244, -0.506725, -0.307915,
		31.925779, 40.403217, 31.089256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246323, 40.106846, 31.566029>,  <31.362108, 40.757927, 31.304798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246323, 40.106846, 31.566029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.636442, 40.120529, 31.478737>,  <31.870514, 40.128738, 31.426361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.636442, 40.120529, 31.478737>,  <31.246323, 40.106846, 31.566029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636442, 40.120529, 31.478737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195008, -0.597372, 0.777894,
		-0.103757, -0.801235, -0.589286,
		0.975298, 0.034204, -0.218229,
		31.929031, 40.130791, 31.413269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481628, 39.420273, 31.745895>,  <31.246323, 40.106846, 31.566029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481628, 39.420273, 31.745895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.816385, 39.637299, 31.716961>,  <32.017239, 39.767513, 31.699600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.816385, 39.637299, 31.716961>,  <31.481628, 39.420273, 31.745895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816385, 39.637299, 31.716961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347239, -0.424089, 0.836405,
		0.423130, -0.725098, -0.543318,
		0.836891, 0.542569, -0.072337,
		32.067451, 39.800068, 31.695259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071373, 38.949760, 31.815758>,  <31.481628, 39.420273, 31.745895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071373, 38.949760, 31.815758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.232971, 39.312206, 31.865938>,  <32.329929, 39.529675, 31.896046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.232971, 39.312206, 31.865938>,  <32.071373, 38.949760, 31.815758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232971, 39.312206, 31.865938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457630, -0.318943, 0.829970,
		0.792062, -0.277896, -0.543519,
		0.403997, 0.906118, 0.125449,
		32.354172, 39.584042, 31.903572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732658, 38.801075, 31.989721>,  <32.071373, 38.949760, 31.815758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732658, 38.801075, 31.989721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.648823, 39.166039, 32.130341>,  <32.598522, 39.385017, 32.214714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.648823, 39.166039, 32.130341>,  <32.732658, 38.801075, 31.989721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648823, 39.166039, 32.130341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241522, -0.300085, 0.922831,
		0.947492, 0.278320, -0.157472,
		-0.209587, 0.912407, 0.351548,
		32.585945, 39.439762, 32.235806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214146, 38.968174, 32.421783>,  <32.732658, 38.801075, 31.989721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214146, 38.968174, 32.421783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.934353, 39.223022, 32.551273>,  <32.766476, 39.375931, 32.628967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.934353, 39.223022, 32.551273>,  <33.214146, 38.968174, 32.421783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934353, 39.223022, 32.551273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374342, -0.059214, 0.925398,
		0.608759, 0.768486, -0.197082,
		-0.699486, 0.637121, 0.323723,
		32.724506, 39.414158, 32.648392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594383, 39.428600, 32.699581>,  <33.214146, 38.968174, 32.421783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594383, 39.428600, 32.699581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.239151, 39.418869, 32.883198>,  <33.026012, 39.413033, 32.993366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.239151, 39.418869, 32.883198>,  <33.594383, 39.428600, 32.699581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239151, 39.418869, 32.883198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459143, 0.001450, 0.888361,
		-0.022275, 0.999703, 0.009881,
		-0.888083, -0.024325, 0.459039,
		32.972725, 39.411572, 33.020908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.186039, 42.547165, 26.015366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903299, 42.374599, 26.239595>,  <29.733656, 42.271061, 26.374134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903299, 42.374599, 26.239595>,  <30.186039, 42.547165, 26.015366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903299, 42.374599, 26.239595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504431, 0.248146, 0.827027,
		-0.495894, 0.867356, 0.042216,
		-0.706851, -0.431413, 0.560575,
		29.691244, 42.245174, 26.407768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125393, 43.031700, 26.627117>,  <30.186039, 42.547165, 26.015366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125393, 43.031700, 26.627117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961317, 42.679932, 26.723755>,  <29.862871, 42.468872, 26.781738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961317, 42.679932, 26.723755>,  <30.125393, 43.031700, 26.627117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961317, 42.679932, 26.723755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589738, -0.053700, 0.805807,
		-0.695667, 0.473014, 0.540653,
		-0.410191, -0.879417, 0.241597,
		29.838261, 42.416107, 26.796234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011698, 43.161850, 27.291924>,  <30.125393, 43.031700, 26.627117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011698, 43.161850, 27.291924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023932, 42.766026, 27.235590>,  <30.031271, 42.528530, 27.201790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023932, 42.766026, 27.235590>,  <30.011698, 43.161850, 27.291924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023932, 42.766026, 27.235590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445614, -0.112622, 0.888113,
		-0.894702, -0.089918, 0.437518,
		0.030583, -0.989561, -0.140832,
		30.033106, 42.469158, 27.193340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763445, 42.799438, 27.923195>,  <30.011698, 43.161850, 27.291924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763445, 42.799438, 27.923195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956249, 42.509331, 27.726562>,  <30.071932, 42.335266, 27.608583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956249, 42.509331, 27.726562>,  <29.763445, 42.799438, 27.923195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956249, 42.509331, 27.726562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398990, -0.317812, 0.860117,
		-0.780047, -0.610721, 0.136186,
		0.482010, -0.725269, -0.491580,
		30.100853, 42.291752, 27.579088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665663, 42.143833, 28.273232>,  <29.763445, 42.799438, 27.923195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665663, 42.143833, 28.273232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002453, 42.107433, 28.060518>,  <30.204527, 42.085594, 27.932890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002453, 42.107433, 28.060518>,  <29.665663, 42.143833, 28.273232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002453, 42.107433, 28.060518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442151, -0.448438, 0.776792,
		-0.309157, -0.889170, -0.337340,
		0.841977, -0.090996, -0.531786,
		30.255045, 42.080135, 27.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901354, 41.369053, 28.384804>,  <29.665663, 42.143833, 28.273232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901354, 41.369053, 28.384804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208254, 41.602577, 28.278601>,  <30.392393, 41.742691, 28.214878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208254, 41.602577, 28.278601>,  <29.901354, 41.369053, 28.384804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208254, 41.602577, 28.278601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530197, -0.344444, 0.774758,
		0.360857, -0.735206, -0.573807,
		0.767251, 0.583808, -0.265509,
		30.438429, 41.777721, 28.198948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390921, 40.918720, 28.472725>,  <29.901354, 41.369053, 28.384804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390921, 40.918720, 28.472725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606850, 41.255009, 28.455858>,  <30.736406, 41.456783, 28.445738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606850, 41.255009, 28.455858>,  <30.390921, 40.918720, 28.472725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606850, 41.255009, 28.455858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671676, -0.400001, 0.623579,
		0.507390, -0.364944, -0.780622,
		0.539821, 0.840723, -0.042168,
		30.768797, 41.507225, 28.443209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069483, 40.663929, 28.472021>,  <30.390921, 40.918720, 28.472725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069483, 40.663929, 28.472021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090223, 41.050220, 28.573750>,  <31.102669, 41.281994, 28.634787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090223, 41.050220, 28.573750>,  <31.069483, 40.663929, 28.472021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090223, 41.050220, 28.573750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630193, -0.229197, 0.741839,
		0.774705, 0.121806, -0.620480,
		0.051852, 0.965729, 0.254321,
		31.105780, 41.339939, 28.650045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775042, 40.847755, 28.405313>,  <31.069483, 40.663929, 28.472021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775042, 40.847755, 28.405313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604794, 41.113853, 28.650684>,  <31.502644, 41.273514, 28.797907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604794, 41.113853, 28.650684>,  <31.775042, 40.847755, 28.405313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604794, 41.113853, 28.650684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666747, -0.227767, 0.709628,
		0.611796, 0.711032, -0.346610,
		-0.425622, 0.665248, 0.613425,
		31.477106, 41.313427, 28.834711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393509, 40.797180, 28.094843>,  <31.775042, 40.847755, 28.405313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393509, 40.797180, 28.094843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610100, 40.462742, 28.059647>,  <32.740055, 40.262077, 28.038528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610100, 40.462742, 28.059647>,  <32.393509, 40.797180, 28.094843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610100, 40.462742, 28.059647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262834, -0.068938, -0.962375,
		0.798573, 0.544232, -0.257084,
		0.541478, -0.836097, -0.087990,
		32.772545, 40.211914, 28.033249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827461, 40.916199, 27.499681>,  <32.393509, 40.797180, 28.094843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827461, 40.916199, 27.499681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788910, 40.521118, 27.548925>,  <32.765781, 40.284069, 27.578472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788910, 40.521118, 27.548925>,  <32.827461, 40.916199, 27.499681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788910, 40.521118, 27.548925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422013, -0.071470, -0.903768,
		0.901452, -0.139056, -0.409935,
		-0.096376, -0.987702, 0.123110,
		32.759998, 40.224808, 27.585859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085033, 40.677147, 26.923449>,  <32.827461, 40.916199, 27.499681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085033, 40.677147, 26.923449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851315, 40.375507, 27.043402>,  <32.711082, 40.194523, 27.115374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851315, 40.375507, 27.043402>,  <33.085033, 40.677147, 26.923449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851315, 40.375507, 27.043402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435139, -0.020792, -0.900123,
		0.685019, -0.656429, -0.315990,
		-0.584297, -0.754101, 0.299881,
		32.676025, 40.149277, 27.133366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031937, 40.142372, 26.395012>,  <33.085033, 40.677147, 26.923449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031937, 40.142372, 26.395012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710621, 40.017414, 26.597841>,  <32.517830, 39.942440, 26.719540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710621, 40.017414, 26.597841>,  <33.031937, 40.142372, 26.395012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710621, 40.017414, 26.597841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481303, -0.160984, -0.861645,
		0.350807, -0.936211, -0.021041,
		-0.803294, -0.312398, 0.507076,
		32.469631, 39.923695, 26.749964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827579, 39.609478, 25.950537>,  <33.031937, 40.142372, 26.395012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827579, 39.609478, 25.950537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522915, 39.688126, 26.197504>,  <32.340115, 39.735313, 26.345684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522915, 39.688126, 26.197504>,  <32.827579, 39.609478, 25.950537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522915, 39.688126, 26.197504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644002, -0.124374, -0.754846,
		-0.071627, -0.972559, 0.221354,
		-0.761664, 0.196620, 0.617421,
		32.294415, 39.747112, 26.382730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377995, 39.119427, 25.867962>,  <32.827579, 39.609478, 25.950537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377995, 39.119427, 25.867962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172562, 39.429989, 26.014076>,  <32.049301, 39.616325, 26.101744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172562, 39.429989, 26.014076>,  <32.377995, 39.119427, 25.867962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172562, 39.429989, 26.014076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662682, -0.088477, -0.743656,
		-0.545058, -0.623994, 0.559949,
		-0.513580, 0.776404, 0.365285,
		32.018486, 39.662910, 26.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693182, 38.970970, 25.762951>,  <32.377995, 39.119427, 25.867962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693182, 38.970970, 25.762951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710238, 39.366657, 25.818981>,  <31.720470, 39.604069, 25.852600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710238, 39.366657, 25.818981>,  <31.693182, 38.970970, 25.762951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710238, 39.366657, 25.818981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465453, 0.143730, -0.873324,
		-0.884045, -0.027961, 0.466565,
		0.042640, 0.989222, 0.140078,
		31.723030, 39.663425, 25.861004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996468, 39.227718, 25.706062>,  <31.693182, 38.970970, 25.762951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996468, 39.227718, 25.706062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246069, 39.531883, 25.634071>,  <31.395830, 39.714382, 25.590876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246069, 39.531883, 25.634071>,  <30.996468, 39.227718, 25.706062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246069, 39.531883, 25.634071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507262, 0.218985, -0.833505,
		-0.594396, 0.611405, 0.522376,
		0.624002, 0.760413, -0.179978,
		31.433270, 39.760006, 25.580078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545702, 39.681023, 25.325787>,  <30.996468, 39.227718, 25.706062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545702, 39.681023, 25.325787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907797, 39.843578, 25.276157>,  <31.125053, 39.941113, 25.246380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907797, 39.843578, 25.276157>,  <30.545702, 39.681023, 25.325787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907797, 39.843578, 25.276157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176131, 0.093155, -0.979949,
		-0.386680, 0.908940, 0.155905,
		0.905238, 0.406386, -0.124072,
		31.179369, 39.965496, 25.238935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472574, 40.330845, 24.967978>,  <30.545702, 39.681023, 25.325787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472574, 40.330845, 24.967978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844931, 40.231819, 24.860533>,  <31.068344, 40.172405, 24.796066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844931, 40.231819, 24.860533>,  <30.472574, 40.330845, 24.967978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844931, 40.231819, 24.860533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242328, 0.131737, -0.961209,
		0.273346, 0.959874, 0.062641,
		0.930892, -0.247563, -0.268614,
		31.124199, 40.157551, 24.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693895, 40.773361, 24.482550>,  <30.472574, 40.330845, 24.967978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693895, 40.773361, 24.482550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982716, 40.501381, 24.431467>,  <31.156008, 40.338192, 24.400818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982716, 40.501381, 24.431467>,  <30.693895, 40.773361, 24.482550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982716, 40.501381, 24.431467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149554, 0.026822, -0.988390,
		0.675484, 0.732765, -0.082323,
		0.722049, -0.679953, -0.127706,
		31.199331, 40.297394, 24.393156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030647, 40.996918, 23.874149>,  <30.693895, 40.773361, 24.482550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030647, 40.996918, 23.874149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085501, 40.604050, 23.925596>,  <31.118412, 40.368328, 23.956465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085501, 40.604050, 23.925596>,  <31.030647, 40.996918, 23.874149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085501, 40.604050, 23.925596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229863, -0.157854, -0.960336,
		0.963513, 0.102130, -0.247411,
		0.137134, -0.982167, 0.128618,
		31.126640, 40.309399, 23.964182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531595, 40.870461, 23.418329>,  <31.030647, 40.996918, 23.874149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531595, 40.870461, 23.418329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364254, 40.514305, 23.490093>,  <31.263849, 40.300613, 23.533152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364254, 40.514305, 23.490093>,  <31.531595, 40.870461, 23.418329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364254, 40.514305, 23.490093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224652, -0.089952, -0.970278,
		0.880064, -0.446224, -0.162396,
		-0.418353, -0.890389, 0.179409,
		31.238749, 40.247189, 23.543917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795567, 40.349380, 22.845278>,  <31.531595, 40.870461, 23.418329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795567, 40.349380, 22.845278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459202, 40.202816, 23.004583>,  <31.257383, 40.114880, 23.100166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459202, 40.202816, 23.004583>,  <31.795567, 40.349380, 22.845278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459202, 40.202816, 23.004583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232244, -0.420379, -0.877123,
		0.488807, -0.830076, 0.268405,
		-0.840911, -0.366408, 0.398264,
		31.206928, 40.092892, 23.124063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.753174, 35.749992, 27.074657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.051128, 35.974514, 26.930391>,  <26.229900, 36.109226, 26.843832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.051128, 35.974514, 26.930391>,  <25.753174, 35.749992, 27.074657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051128, 35.974514, 26.930391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538479, -0.186601, 0.821718,
		0.393936, -0.806297, -0.441248,
		0.744886, 0.561307, -0.360665,
		26.274593, 36.142906, 26.822191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390846, 35.309673, 27.095011>,  <25.753174, 35.749992, 27.074657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390846, 35.309673, 27.095011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.497835, 35.695095, 27.097027>,  <26.562029, 35.926346, 27.098236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.497835, 35.695095, 27.097027>,  <26.390846, 35.309673, 27.095011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497835, 35.695095, 27.097027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591095, -0.168211, 0.788867,
		0.760963, -0.208021, -0.614543,
		0.267474, 0.963552, 0.005043,
		26.578077, 35.984161, 27.098539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185575, 35.288399, 27.194830>,  <26.390846, 35.309673, 27.095011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185575, 35.288399, 27.194830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.075115, 35.654102, 27.313404>,  <27.008839, 35.873524, 27.384548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.075115, 35.654102, 27.313404>,  <27.185575, 35.288399, 27.194830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075115, 35.654102, 27.313404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779190, 0.032397, 0.625950,
		0.562676, 0.403834, -0.721328,
		-0.276148, 0.914259, 0.296434,
		26.992271, 35.928379, 27.402334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851080, 35.686291, 27.529955>,  <27.185575, 35.288399, 27.194830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851080, 35.686291, 27.529955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.561447, 35.954510, 27.594538>,  <27.387669, 36.115440, 27.633287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.561447, 35.954510, 27.594538>,  <27.851080, 35.686291, 27.529955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561447, 35.954510, 27.594538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370499, 0.180703, 0.911086,
		0.581754, 0.719519, -0.379282,
		-0.724081, 0.670551, 0.161457,
		27.344223, 36.155674, 27.642975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056839, 36.381634, 27.675760>,  <27.851080, 35.686291, 27.529955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056839, 36.381634, 27.675760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.702917, 36.336021, 27.856478>,  <27.490564, 36.308655, 27.964909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.702917, 36.336021, 27.856478>,  <28.056839, 36.381634, 27.675760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702917, 36.336021, 27.856478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404090, 0.295019, 0.865838,
		-0.232017, 0.948663, -0.214957,
		-0.884805, -0.114027, 0.451794,
		27.437475, 36.301815, 27.992016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084234, 36.948074, 27.992117>,  <28.056839, 36.381634, 27.675760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084234, 36.948074, 27.992117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.834776, 36.691563, 28.170923>,  <27.685101, 36.537655, 28.278208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.834776, 36.691563, 28.170923>,  <28.084234, 36.948074, 27.992117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834776, 36.691563, 28.170923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516785, 0.090830, 0.851283,
		-0.586516, 0.761909, 0.274761,
		-0.623644, -0.641284, 0.447016,
		27.647682, 36.499176, 28.305029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146084, 37.077450, 28.758192>,  <28.084234, 36.948074, 27.992117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146084, 37.077450, 28.758192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.954691, 36.726791, 28.738022>,  <27.839855, 36.516396, 28.725920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.954691, 36.726791, 28.738022>,  <28.146084, 37.077450, 28.758192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954691, 36.726791, 28.738022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308574, -0.221630, 0.925020,
		-0.822093, 0.427046, 0.376557,
		-0.478483, -0.876648, -0.050425,
		27.811146, 36.463799, 28.722895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763353, 37.049988, 29.431875>,  <28.146084, 37.077450, 28.758192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763353, 37.049988, 29.431875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.825022, 36.683155, 29.284800>,  <27.862022, 36.463055, 29.196554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.825022, 36.683155, 29.284800>,  <27.763353, 37.049988, 29.431875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825022, 36.683155, 29.284800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455411, -0.264293, 0.850147,
		-0.876831, -0.298517, 0.376902,
		0.154171, -0.917081, -0.367688,
		27.871273, 36.408031, 29.174494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529396, 36.494549, 29.958168>,  <27.763353, 37.049988, 29.431875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529396, 36.494549, 29.958168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.772861, 36.306431, 29.702559>,  <27.918940, 36.193558, 29.549192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.772861, 36.306431, 29.702559>,  <27.529396, 36.494549, 29.958168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772861, 36.306431, 29.702559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387385, -0.526726, 0.756633,
		-0.692433, -0.708082, -0.138411,
		0.608662, -0.470299, -0.639022,
		27.955460, 36.165340, 29.510851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504854, 35.897381, 30.137722>,  <27.529396, 36.494549, 29.958168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504854, 35.897381, 30.137722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.844385, 35.879765, 29.926991>,  <28.048103, 35.869194, 29.800550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.844385, 35.879765, 29.926991>,  <27.504854, 35.897381, 30.137722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844385, 35.879765, 29.926991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459687, -0.430691, 0.776655,
		-0.261108, -0.901424, -0.345337,
		0.848829, -0.044043, -0.526830,
		28.099033, 35.866550, 29.768942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831213, 35.313309, 30.433678>,  <27.504854, 35.897381, 30.137722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831213, 35.313309, 30.433678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.099255, 35.525448, 30.225950>,  <28.260078, 35.652733, 30.101315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.099255, 35.525448, 30.225950>,  <27.831213, 35.313309, 30.433678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099255, 35.525448, 30.225950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716705, -0.280268, 0.638579,
		0.193122, -0.800112, -0.567913,
		0.670103, 0.530350, -0.519318,
		28.300285, 35.684551, 30.070154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383461, 34.867352, 30.405941>,  <27.831213, 35.313309, 30.433678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383461, 34.867352, 30.405941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.553434, 35.219223, 30.320534>,  <28.655418, 35.430347, 30.269289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.553434, 35.219223, 30.320534>,  <28.383461, 34.867352, 30.405941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553434, 35.219223, 30.320534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765833, -0.223601, 0.602911,
		0.482628, -0.419716, -0.768706,
		0.424935, 0.879682, -0.213517,
		28.680914, 35.483128, 30.256479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123714, 34.722073, 30.194481>,  <28.383461, 34.867352, 30.405941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123714, 34.722073, 30.194481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.039640, 35.086346, 30.336735>,  <28.989195, 35.304909, 30.422087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.039640, 35.086346, 30.336735>,  <29.123714, 34.722073, 30.194481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039640, 35.086346, 30.336735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519279, -0.204214, 0.829847,
		0.828354, 0.359095, -0.429976,
		-0.210186, 0.910685, 0.355632,
		28.976585, 35.359550, 30.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755440, 34.844406, 30.524572>,  <29.123714, 34.722073, 30.194481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755440, 34.844406, 30.524572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.523365, 35.128727, 30.683640>,  <29.384121, 35.299320, 30.779079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.523365, 35.128727, 30.683640>,  <29.755440, 34.844406, 30.524572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523365, 35.128727, 30.683640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577891, 0.015195, 0.815972,
		0.573955, 0.703224, -0.419584,
		-0.580187, 0.710806, 0.397666,
		29.349308, 35.341969, 30.802938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422836, 35.129028, 30.236456>,  <29.755440, 34.844406, 30.524572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422836, 35.129028, 30.236456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651871, 34.837036, 30.087181>,  <30.789291, 34.661842, 29.997616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651871, 34.837036, 30.087181>,  <30.422836, 35.129028, 30.236456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651871, 34.837036, 30.087181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628237, -0.098216, -0.771798,
		0.526746, 0.676373, -0.514839,
		0.572588, -0.729982, -0.373187,
		30.823647, 34.618042, 29.975225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493288, 35.260944, 29.554638>,  <30.422836, 35.129028, 30.236456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493288, 35.260944, 29.554638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.596149, 34.874538, 29.565180>,  <30.657866, 34.642696, 29.571505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.596149, 34.874538, 29.565180>,  <30.493288, 35.260944, 29.554638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596149, 34.874538, 29.565180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505658, -0.157747, -0.848190,
		0.823518, 0.204789, -0.529037,
		0.257154, -0.966011, 0.026354,
		30.673296, 34.584736, 29.573086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755688, 35.172558, 29.003687>,  <30.493288, 35.260944, 29.554638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755688, 35.172558, 29.003687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663092, 34.793827, 29.093069>,  <30.607534, 34.566589, 29.146698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663092, 34.793827, 29.093069>,  <30.755688, 35.172558, 29.003687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663092, 34.793827, 29.093069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501306, -0.080752, -0.861493,
		0.833729, -0.311446, -0.455957,
		-0.231489, -0.946827, 0.223455,
		30.593645, 34.509781, 29.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027164, 34.750793, 28.460081>,  <30.755688, 35.172558, 29.003687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027164, 34.750793, 28.460081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730124, 34.553543, 28.641352>,  <30.551899, 34.435192, 28.750114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730124, 34.553543, 28.641352>,  <31.027164, 34.750793, 28.460081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730124, 34.553543, 28.641352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426382, -0.173701, -0.887709,
		0.516469, -0.852440, -0.081269,
		-0.742603, -0.493126, 0.453176,
		30.507343, 34.405605, 28.777304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908161, 34.189411, 28.094654>,  <31.027164, 34.750793, 28.460081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908161, 34.189411, 28.094654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567102, 34.199188, 28.303421>,  <30.362467, 34.205055, 28.428680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567102, 34.199188, 28.303421>,  <30.908161, 34.189411, 28.094654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567102, 34.199188, 28.303421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492739, -0.369874, -0.787656,
		0.173792, -0.928760, 0.327415,
		-0.852646, 0.024442, 0.521917,
		30.311308, 34.206520, 28.459995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653728, 33.609409, 27.985468>,  <30.908161, 34.189411, 28.094654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653728, 33.609409, 27.985468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336470, 33.831947, 28.084581>,  <30.146114, 33.965469, 28.144051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336470, 33.831947, 28.084581>,  <30.653728, 33.609409, 27.985468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336470, 33.831947, 28.084581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495838, -0.353637, -0.793149,
		-0.353637, -0.751947, 0.556342,
		0.793149, -0.556342, -0.247785,
		30.098524, 33.998852, 28.158916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125183, 33.315205, 27.797150>,  <30.653728, 33.609409, 27.985468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125183, 33.315205, 27.797150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925859, 33.658772, 27.844391>,  <29.806265, 33.864910, 27.872736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925859, 33.658772, 27.844391>,  <30.125183, 33.315205, 27.797150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925859, 33.658772, 27.844391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516593, -0.184746, -0.836062,
		-0.696288, -0.477631, 0.535771,
		-0.498311, 0.858917, 0.118104,
		29.776365, 33.916447, 27.879822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420572, 33.130909, 27.583292>,  <30.125183, 33.315205, 27.797150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420572, 33.130909, 27.583292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.444759, 33.530151, 27.578604>,  <29.459272, 33.769695, 27.575790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.444759, 33.530151, 27.578604>,  <29.420572, 33.130909, 27.583292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444759, 33.530151, 27.578604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551367, 0.023611, -0.833929,
		-0.832069, 0.056888, 0.551748,
		0.060468, 0.998101, -0.011720,
		29.462900, 33.829582, 27.575089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695358, 33.367249, 27.422613>,  <29.420572, 33.130909, 27.583292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695358, 33.367249, 27.422613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943605, 33.665890, 27.326761>,  <29.092554, 33.845074, 27.269251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943605, 33.665890, 27.326761>,  <28.695358, 33.367249, 27.422613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943605, 33.665890, 27.326761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483569, 0.123858, -0.866499,
		-0.617248, 0.653642, 0.437901,
		0.620617, 0.746600, -0.239629,
		29.129791, 33.889870, 27.254873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237589, 33.948917, 27.091270>,  <28.695358, 33.367249, 27.422613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237589, 33.948917, 27.091270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613344, 33.978691, 26.957401>,  <28.838799, 33.996555, 26.877079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613344, 33.978691, 26.957401>,  <28.237589, 33.948917, 27.091270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613344, 33.978691, 26.957401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337107, 0.378470, -0.862044,
		0.062494, 0.922615, 0.380625,
		0.939390, 0.074439, -0.334673,
		28.895161, 34.001022, 26.857000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299095, 34.609192, 26.828012>,  <28.237589, 33.948917, 27.091270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299095, 34.609192, 26.828012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609779, 34.429958, 26.650948>,  <28.796190, 34.322418, 26.544708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609779, 34.429958, 26.650948>,  <28.299095, 34.609192, 26.828012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609779, 34.429958, 26.650948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287643, 0.372891, -0.882164,
		0.560344, 0.812513, 0.160741,
		0.776709, -0.448079, -0.442661,
		28.842793, 34.295536, 26.518148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679256, 35.055801, 26.406202>,  <28.299095, 34.609192, 26.828012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679256, 35.055801, 26.406202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.774033, 34.712357, 26.224367>,  <28.830898, 34.506290, 26.115267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.774033, 34.712357, 26.224367>,  <28.679256, 35.055801, 26.406202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774033, 34.712357, 26.224367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534464, 0.275544, -0.799014,
		0.811300, 0.432278, -0.393609,
		0.236940, -0.858610, -0.454586,
		28.845114, 34.454773, 26.087992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140345, 35.183617, 25.879013>,  <28.679256, 35.055801, 26.406202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140345, 35.183617, 25.879013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.974457, 34.830776, 25.789652>,  <28.874924, 34.619072, 25.736036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.974457, 34.830776, 25.789652>,  <29.140345, 35.183617, 25.879013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974457, 34.830776, 25.789652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220425, 0.335585, -0.915858,
		0.882847, -0.330582, -0.333611,
		-0.414721, -0.882099, -0.223402,
		28.850040, 34.566147, 25.722631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354498, 35.016560, 25.160019>,  <29.140345, 35.183617, 25.879013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354498, 35.016560, 25.160019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044559, 34.771011, 25.220385>,  <28.858597, 34.623684, 25.256603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044559, 34.771011, 25.220385>,  <29.354498, 35.016560, 25.160019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044559, 34.771011, 25.220385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395990, 0.285259, -0.872822,
		0.492749, -0.736065, -0.464119,
		-0.774848, -0.613869, 0.150914,
		28.812105, 34.586849, 25.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047798, 35.172081, 24.839319>,  <29.354498, 35.016560, 25.160019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047798, 35.172081, 24.839319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105074, 35.518337, 24.647421>,  <30.139439, 35.726093, 24.532282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105074, 35.518337, 24.647421>,  <30.047798, 35.172081, 24.839319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105074, 35.518337, 24.647421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382281, 0.398744, 0.833585,
		0.912885, -0.302757, -0.273825,
		0.143188, 0.865645, -0.479746,
		30.148029, 35.778030, 24.503496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675777, 35.402607, 25.058292>,  <30.047798, 35.172081, 24.839319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675777, 35.402607, 25.058292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536123, 35.738216, 24.891375>,  <30.452330, 35.939583, 24.791224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536123, 35.738216, 24.891375>,  <30.675777, 35.402607, 25.058292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536123, 35.738216, 24.891375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530920, 0.544062, 0.649708,
		0.772158, 0.005287, -0.635409,
		-0.349137, 0.839028, -0.417295,
		30.431383, 35.989925, 24.766186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234426, 35.898655, 25.081997>,  <30.675777, 35.402607, 25.058292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234426, 35.898655, 25.081997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880960, 36.084824, 25.061903>,  <30.668880, 36.196526, 25.049847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880960, 36.084824, 25.061903>,  <31.234426, 35.898655, 25.081997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880960, 36.084824, 25.061903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275818, 0.604351, 0.747452,
		0.378237, 0.646640, -0.662414,
		-0.883663, 0.465420, -0.050233,
		30.615862, 36.224449, 25.046833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477722, 36.526012, 25.163702>,  <31.234426, 35.898655, 25.081997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477722, 36.526012, 25.163702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.087231, 36.582512, 25.229462>,  <30.852936, 36.616409, 25.268917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.087231, 36.582512, 25.229462>,  <31.477722, 36.526012, 25.163702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087231, 36.582512, 25.229462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216388, 0.591696, 0.776577,
		0.012415, 0.793691, -0.608194,
		-0.976229, 0.141247, 0.164399,
		30.794363, 36.624886, 25.278782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496040, 37.177555, 25.285551>,  <31.477722, 36.526012, 25.163702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496040, 37.177555, 25.285551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.163012, 37.048767, 25.465845>,  <30.963194, 36.971497, 25.574022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.163012, 37.048767, 25.465845>,  <31.496040, 37.177555, 25.285551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163012, 37.048767, 25.465845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200927, 0.582761, 0.787412,
		-0.516191, 0.746142, -0.420499,
		-0.832572, -0.321965, 0.450736,
		30.913240, 36.952179, 25.601067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369577, 37.766243, 25.672712>,  <31.496040, 37.177555, 25.285551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369577, 37.766243, 25.672712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.175901, 37.452492, 25.827793>,  <31.059696, 37.264240, 25.920841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.175901, 37.452492, 25.827793>,  <31.369577, 37.766243, 25.672712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175901, 37.452492, 25.827793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171940, 0.349166, 0.921151,
		-0.857902, 0.512674, -0.034197,
		-0.484190, -0.784378, 0.387700,
		31.030643, 37.217178, 25.944103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816837, 38.113564, 26.147827>,  <31.369577, 37.766243, 25.672712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816837, 38.113564, 26.147827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.860125, 37.727959, 26.244967>,  <30.886097, 37.496597, 26.303249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.860125, 37.727959, 26.244967>,  <30.816837, 38.113564, 26.147827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860125, 37.727959, 26.244967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155802, 0.257710, 0.953578,
		-0.981843, -0.065356, 0.178083,
		0.108216, -0.964009, 0.242848,
		30.892590, 37.438755, 26.317822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637428, 38.058414, 26.802704>,  <30.816837, 38.113564, 26.147827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637428, 38.058414, 26.802704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.827982, 37.707108, 26.786177>,  <30.942314, 37.496323, 26.776260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.827982, 37.707108, 26.786177>,  <30.637428, 38.058414, 26.802704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827982, 37.707108, 26.786177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532369, 0.250728, 0.808529,
		-0.699745, -0.407164, 0.587004,
		0.476383, -0.878267, -0.041316,
		30.970898, 37.443626, 26.773783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703796, 37.803627, 27.561350>,  <30.637428, 38.058414, 26.802704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703796, 37.803627, 27.561350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978493, 37.636894, 27.323145>,  <31.143311, 37.536854, 27.180222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978493, 37.636894, 27.323145>,  <30.703796, 37.803627, 27.561350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978493, 37.636894, 27.323145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607420, -0.120933, 0.785122,
		-0.399283, -0.900902, 0.170143,
		0.686742, -0.416834, -0.595512,
		31.184515, 37.511845, 27.144491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957514, 37.390205, 28.044792>,  <30.703796, 37.803627, 27.561350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957514, 37.390205, 28.044792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215118, 37.376698, 27.739084>,  <31.369682, 37.368591, 27.555660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215118, 37.376698, 27.739084>,  <30.957514, 37.390205, 28.044792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215118, 37.376698, 27.739084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744945, -0.199647, 0.636552,
		-0.174082, -0.979286, -0.103418,
		0.644013, -0.033771, -0.764269,
		31.408321, 37.366566, 27.509804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300224, 36.716629, 28.129139>,  <30.957514, 37.390205, 28.044792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300224, 36.716629, 28.129139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.536207, 36.953098, 27.909151>,  <31.677797, 37.094978, 27.777159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.536207, 36.953098, 27.909151>,  <31.300224, 36.716629, 28.129139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536207, 36.953098, 27.909151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773179, -0.217330, 0.595786,
		0.232687, -0.776713, -0.585298,
		0.589958, 0.591172, -0.549969,
		31.713194, 37.130451, 27.744160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924387, 36.240314, 27.870462>,  <31.300224, 36.716629, 28.129139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924387, 36.240314, 27.870462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009930, 36.631046, 27.873749>,  <32.061256, 36.865486, 27.875721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009930, 36.631046, 27.873749>,  <31.924387, 36.240314, 27.870462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009930, 36.631046, 27.873749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832714, -0.186691, 0.521281,
		0.510737, -0.104637, -0.853346,
		0.213857, 0.976830, 0.008217,
		32.074085, 36.924095, 27.876213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596245, 36.290791, 27.607580>,  <31.924387, 36.240314, 27.870462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596245, 36.290791, 27.607580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547108, 36.632755, 27.809191>,  <32.517624, 36.837933, 27.930157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547108, 36.632755, 27.809191>,  <32.596245, 36.290791, 27.607580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547108, 36.632755, 27.809191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823866, -0.195306, 0.532072,
		0.553312, 0.480612, -0.680337,
		-0.122847, 0.854908, 0.504025,
		32.510254, 36.889229, 27.960398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240902, 36.585377, 27.630175>,  <32.596245, 36.290791, 27.607580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240902, 36.585377, 27.630175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.005581, 36.727806, 27.920584>,  <32.864388, 36.813263, 28.094830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.005581, 36.727806, 27.920584>,  <33.240902, 36.585377, 27.630175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005581, 36.727806, 27.920584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769099, -0.030940, 0.638381,
		0.249774, 0.933946, -0.255654,
		-0.588303, 0.356074, 0.726024,
		32.829090, 36.834629, 28.138391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.701382, 39.602585, 22.560345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337828, 39.705219, 22.691854>,  <31.119696, 39.766800, 22.770760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337828, 39.705219, 22.691854>,  <31.701382, 39.602585, 22.560345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337828, 39.705219, 22.691854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413633, -0.453905, -0.789226,
		-0.053273, -0.853307, 0.518680,
		-0.908884, 0.256587, 0.328775,
		31.065163, 39.782196, 22.790487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301758, 39.099171, 22.327444>,  <31.701382, 39.602585, 22.560345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301758, 39.099171, 22.327444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010359, 39.364037, 22.397680>,  <30.835520, 39.522957, 22.439821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010359, 39.364037, 22.397680>,  <31.301758, 39.099171, 22.327444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010359, 39.364037, 22.397680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482968, -0.314664, -0.817146,
		-0.485832, -0.680094, 0.549036,
		-0.728498, 0.662163, 0.175589,
		30.791809, 39.562683, 22.450357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642696, 38.731350, 22.236109>,  <31.301758, 39.099171, 22.327444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642696, 38.731350, 22.236109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540972, 39.116951, 22.205055>,  <30.479937, 39.348312, 22.186422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540972, 39.116951, 22.205055>,  <30.642696, 38.731350, 22.236109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540972, 39.116951, 22.205055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600682, -0.220356, -0.768521,
		-0.757963, -0.148811, 0.635097,
		-0.254311, 0.964002, -0.077634,
		30.464678, 39.406151, 22.181765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969618, 38.782894, 22.376997>,  <30.642696, 38.731350, 22.236109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969618, 38.782894, 22.376997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.045181, 39.120476, 22.176178>,  <30.090519, 39.323025, 22.055687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.045181, 39.120476, 22.176178>,  <29.969618, 38.782894, 22.376997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045181, 39.120476, 22.176178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698561, -0.243822, -0.672729,
		-0.690164, 0.477795, 0.543494,
		0.188910, 0.843957, -0.502046,
		30.101854, 39.373661, 22.025564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316051, 39.196175, 22.325277>,  <29.969618, 38.782894, 22.376997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316051, 39.196175, 22.325277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.551121, 39.346947, 22.038902>,  <29.692162, 39.437408, 21.867077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.551121, 39.346947, 22.038902>,  <29.316051, 39.196175, 22.325277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551121, 39.346947, 22.038902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777007, 0.016172, -0.629284,
		-0.225615, 0.926102, 0.302378,
		0.587671, 0.376926, -0.715939,
		29.727423, 39.460026, 21.824120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956577, 39.746052, 21.995438>,  <29.316051, 39.196175, 22.325277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956577, 39.746052, 21.995438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237587, 39.654129, 21.726025>,  <29.406193, 39.598976, 21.564377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237587, 39.654129, 21.726025>,  <28.956577, 39.746052, 21.995438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237587, 39.654129, 21.726025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705667, -0.102386, -0.701107,
		0.092158, 0.967836, -0.234095,
		0.702525, -0.229806, -0.673534,
		29.448345, 39.585186, 21.523964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750874, 40.068760, 21.343489>,  <28.956577, 39.746052, 21.995438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750874, 40.068760, 21.343489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.028748, 39.829342, 21.183914>,  <29.195473, 39.685692, 21.088169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.028748, 39.829342, 21.183914>,  <28.750874, 40.068760, 21.343489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028748, 39.829342, 21.183914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599926, -0.176124, -0.780429,
		0.396862, 0.781486, -0.481435,
		0.694687, -0.598548, -0.398937,
		29.237154, 39.649776, 21.064234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813898, 40.274502, 20.658394>,  <28.750874, 40.068760, 21.343489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813898, 40.274502, 20.658394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.941898, 39.896107, 20.679220>,  <29.018698, 39.669071, 20.691715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.941898, 39.896107, 20.679220>,  <28.813898, 40.274502, 20.658394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941898, 39.896107, 20.679220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468905, -0.205889, -0.858917,
		0.823242, 0.250441, -0.509462,
		0.320000, -0.945986, 0.052064,
		29.037899, 39.612312, 20.694839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039101, 40.056057, 19.941088>,  <28.813898, 40.274502, 20.658394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039101, 40.056057, 19.941088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.983753, 39.717255, 20.146395>,  <28.950544, 39.513973, 20.269579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.983753, 39.717255, 20.146395>,  <29.039101, 40.056057, 19.941088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983753, 39.717255, 20.146395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362193, -0.439075, -0.822210,
		0.921776, -0.299670, -0.246023,
		-0.138369, -0.847001, 0.513267,
		28.942242, 39.463154, 20.300375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369829, 39.451004, 19.472956>,  <29.039101, 40.056057, 19.941088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369829, 39.451004, 19.472956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076414, 39.342800, 19.722353>,  <28.900366, 39.277878, 19.871992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076414, 39.342800, 19.722353>,  <29.369829, 39.451004, 19.472956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076414, 39.342800, 19.722353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506656, -0.393825, -0.766944,
		0.453016, -0.878478, 0.151827,
		-0.733537, -0.270514, 0.623495,
		28.856354, 39.261646, 19.909401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203672, 38.827454, 19.136349>,  <29.369829, 39.451004, 19.472956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203672, 38.827454, 19.136349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897299, 38.980667, 19.342892>,  <28.713474, 39.072598, 19.466818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897299, 38.980667, 19.342892>,  <29.203672, 38.827454, 19.136349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897299, 38.980667, 19.342892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628005, -0.273763, -0.728466,
		-0.137668, -0.882234, 0.450233,
		-0.765935, 0.383036, 0.516359,
		28.667519, 39.095577, 19.497799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635244, 38.311249, 19.252031>,  <29.203672, 38.827454, 19.136349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635244, 38.311249, 19.252031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.489809, 38.683735, 19.262117>,  <28.402548, 38.907227, 19.268169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.489809, 38.683735, 19.262117>,  <28.635244, 38.311249, 19.252031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489809, 38.683735, 19.262117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583399, -0.206513, -0.785492,
		-0.726257, -0.300306, 0.618358,
		-0.363587, 0.931219, 0.025217,
		28.380733, 38.963100, 19.269682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515297, 37.671059, 19.467299>,  <28.635244, 38.311249, 19.252031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515297, 37.671059, 19.467299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.401356, 37.695663, 19.849936>,  <28.332991, 37.710426, 20.079517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.401356, 37.695663, 19.849936>,  <28.515297, 37.671059, 19.467299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401356, 37.695663, 19.849936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619464, 0.749751, -0.232678,
		-0.731521, -0.658855, -0.175462,
		-0.284854, 0.061516, 0.956595,
		28.315899, 37.714119, 20.136913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419781, 37.013672, 19.753662>,  <28.515297, 37.671059, 19.467299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419781, 37.013672, 19.753662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.536880, 37.183804, 19.411110>,  <28.607141, 37.285885, 19.205578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.536880, 37.183804, 19.411110>,  <28.419781, 37.013672, 19.753662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536880, 37.183804, 19.411110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746497, -0.458013, -0.482665,
		-0.597527, 0.780587, 0.183426,
		0.292750, 0.425333, -0.856382,
		28.624706, 37.311405, 19.154196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071823, 36.333290, 19.634218>,  <28.419781, 37.013672, 19.753662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071823, 36.333290, 19.634218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.121054, 35.947868, 19.539211>,  <28.150591, 35.716614, 19.482206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.121054, 35.947868, 19.539211>,  <28.071823, 36.333290, 19.634218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121054, 35.947868, 19.539211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420664, -0.166119, 0.891878,
		-0.898830, -0.209684, 0.384887,
		0.123075, -0.963554, -0.237519,
		28.157976, 35.658802, 19.467955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969948, 35.998486, 20.309755>,  <28.071823, 36.333290, 19.634218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969948, 35.998486, 20.309755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.118608, 35.708118, 20.078264>,  <28.207806, 35.533897, 19.939369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.118608, 35.708118, 20.078264>,  <27.969948, 35.998486, 20.309755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118608, 35.708118, 20.078264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509655, -0.361507, 0.780746,
		-0.775968, -0.585116, 0.235612,
		0.371651, -0.725915, -0.578725,
		28.230104, 35.490345, 19.904646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033241, 35.336018, 20.801485>,  <27.969948, 35.998486, 20.309755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033241, 35.336018, 20.801485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.269281, 35.319687, 20.478966>,  <28.410906, 35.309887, 20.285454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.269281, 35.319687, 20.478966>,  <28.033241, 35.336018, 20.801485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269281, 35.319687, 20.478966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790887, -0.171314, 0.587494,
		-0.162119, -0.984370, -0.068799,
		0.590098, -0.040832, -0.806298,
		28.446310, 35.307438, 20.237076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273737, 34.618824, 20.810760>,  <28.033241, 35.336018, 20.801485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273737, 34.618824, 20.810760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.548016, 34.835590, 20.616379>,  <28.712582, 34.965649, 20.499750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.548016, 34.835590, 20.616379>,  <28.273737, 34.618824, 20.810760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548016, 34.835590, 20.616379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617302, -0.079178, 0.782732,
		0.385694, -0.836698, -0.388815,
		0.685695, 0.541911, -0.485957,
		28.753725, 34.998165, 20.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903854, 34.258274, 20.842140>,  <28.273737, 34.618824, 20.810760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903854, 34.258274, 20.842140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994909, 34.642368, 20.777489>,  <29.049543, 34.872826, 20.738699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994909, 34.642368, 20.777489>,  <28.903854, 34.258274, 20.842140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994909, 34.642368, 20.777489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627605, -0.017775, 0.778328,
		0.744508, -0.278616, -0.606697,
		0.227639, 0.960238, -0.161627,
		29.063202, 34.930439, 20.729000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608681, 34.341839, 21.105427>,  <28.903854, 34.258274, 20.842140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608681, 34.341839, 21.105427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.505165, 34.727932, 21.090658>,  <29.443056, 34.959587, 21.081797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.505165, 34.727932, 21.090658>,  <29.608681, 34.341839, 21.105427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505165, 34.727932, 21.090658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408287, 0.143946, 0.901433,
		0.875403, 0.218206, -0.431342,
		-0.258788, 0.965228, -0.036921,
		29.427528, 35.017502, 21.079582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193199, 34.825577, 21.135908>,  <29.608681, 34.341839, 21.105427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193199, 34.825577, 21.135908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877474, 35.033878, 21.266012>,  <29.688038, 35.158859, 21.344074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877474, 35.033878, 21.266012>,  <30.193199, 34.825577, 21.135908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877474, 35.033878, 21.266012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428373, 0.087564, 0.899349,
		0.439861, 0.849203, -0.292194,
		-0.789315, 0.520756, 0.325260,
		29.640678, 35.190105, 21.363590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510508, 35.345257, 21.550941>,  <30.193199, 34.825577, 21.135908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510508, 35.345257, 21.550941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123358, 35.313675, 21.646431>,  <29.891068, 35.294727, 21.703724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123358, 35.313675, 21.646431>,  <30.510508, 35.345257, 21.550941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123358, 35.313675, 21.646431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218243, 0.207707, 0.953534,
		-0.124866, 0.975000, -0.183804,
		-0.967873, -0.078950, 0.238722,
		29.832996, 35.289989, 21.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522989, 35.823055, 22.074194>,  <30.510508, 35.345257, 21.550941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522989, 35.823055, 22.074194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183983, 35.611511, 22.092188>,  <29.980579, 35.484585, 22.102985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183983, 35.611511, 22.092188>,  <30.522989, 35.823055, 22.074194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183983, 35.611511, 22.092188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045527, 0.156877, 0.986568,
		-0.528816, 0.834083, -0.157033,
		-0.847515, -0.528862, 0.044986,
		29.929729, 35.452854, 22.105684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052364, 36.228741, 22.395700>,  <30.522989, 35.823055, 22.074194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052364, 36.228741, 22.395700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931501, 35.851021, 22.447865>,  <29.858984, 35.624390, 22.479162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931501, 35.851021, 22.447865>,  <30.052364, 36.228741, 22.395700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931501, 35.851021, 22.447865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073864, 0.159585, 0.984417,
		-0.950391, 0.287819, -0.117969,
		-0.302160, -0.944295, 0.130409,
		29.840853, 35.567734, 22.486986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494684, 36.290844, 22.613119>,  <30.052364, 36.228741, 22.395700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494684, 36.290844, 22.613119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.661329, 35.947205, 22.732035>,  <29.761316, 35.741020, 22.803385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.661329, 35.947205, 22.732035>,  <29.494684, 36.290844, 22.613119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661329, 35.947205, 22.732035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116979, 0.273643, 0.954691,
		-0.901527, -0.432513, 0.013507,
		0.416613, -0.859100, 0.297291,
		29.786312, 35.689476, 22.821222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087824, 36.027763, 23.196951>,  <29.494684, 36.290844, 22.613119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087824, 36.027763, 23.196951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446217, 35.853985, 23.233776>,  <29.661253, 35.749718, 23.255871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446217, 35.853985, 23.233776>,  <29.087824, 36.027763, 23.196951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446217, 35.853985, 23.233776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046136, 0.297243, 0.953687,
		-0.441688, -0.850238, 0.286367,
		0.895982, -0.434444, 0.092062,
		29.715012, 35.723652, 23.261395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046329, 35.685745, 23.823975>,  <29.087824, 36.027763, 23.196951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046329, 35.685745, 23.823975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440115, 35.712090, 23.758867>,  <29.676386, 35.727898, 23.719803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440115, 35.712090, 23.758867>,  <29.046329, 35.685745, 23.823975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440115, 35.712090, 23.758867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151352, 0.151662, 0.976776,
		0.089019, -0.986236, 0.139337,
		0.984463, 0.065863, -0.162769,
		29.735455, 35.731850, 23.710037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327007, 35.353008, 24.389835>,  <29.046329, 35.685745, 23.823975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327007, 35.353008, 24.389835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.615982, 35.578911, 24.230268>,  <29.789368, 35.714451, 24.134529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.615982, 35.578911, 24.230268>,  <29.327007, 35.353008, 24.389835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615982, 35.578911, 24.230268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358000, 0.188065, 0.914586,
		0.591541, -0.803543, -0.066317,
		0.722437, 0.564757, -0.398917,
		29.832714, 35.748337, 24.110594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259377, 34.519634, 24.593195>,  <29.327007, 35.353008, 24.389835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259377, 34.519634, 24.593195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.911394, 34.575230, 24.782450>,  <28.702604, 34.608589, 24.896004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.911394, 34.575230, 24.782450>,  <29.259377, 34.519634, 24.593195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911394, 34.575230, 24.782450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448307, 0.176769, -0.876227,
		-0.205425, -0.974389, -0.091469,
		-0.869955, 0.138993, 0.473138,
		28.650408, 34.616928, 24.924391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861799, 34.526051, 24.066051>,  <29.259377, 34.519634, 24.593195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861799, 34.526051, 24.066051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.555986, 34.597797, 24.313704>,  <28.372499, 34.640846, 24.462294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.555986, 34.597797, 24.313704>,  <28.861799, 34.526051, 24.066051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555986, 34.597797, 24.313704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604325, 0.134688, -0.785271,
		-0.224241, -0.974519, 0.005423,
		-0.764531, 0.179367, 0.619129,
		28.326628, 34.651608, 24.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222452, 34.127541, 23.870642>,  <28.861799, 34.526051, 24.066051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222452, 34.127541, 23.870642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108677, 34.442627, 24.089218>,  <28.040411, 34.631680, 24.220364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108677, 34.442627, 24.089218>,  <28.222452, 34.127541, 23.870642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108677, 34.442627, 24.089218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753086, 0.169129, -0.635812,
		-0.593258, -0.592367, 0.545111,
		-0.284440, 0.787716, 0.546440,
		28.023344, 34.678944, 24.253151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448400, 34.077465, 23.903227>,  <28.222452, 34.127541, 23.870642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448400, 34.077465, 23.903227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.550081, 34.454060, 23.991751>,  <27.611090, 34.680016, 24.044865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.550081, 34.454060, 23.991751>,  <27.448400, 34.077465, 23.903227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550081, 34.454060, 23.991751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716139, 0.337026, -0.611194,
		-0.650020, -0.003120, 0.759911,
		0.254203, 0.941490, 0.221308,
		27.626343, 34.736507, 24.058144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884413, 34.443695, 23.855053>,  <27.448400, 34.077465, 23.903227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884413, 34.443695, 23.855053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.152348, 34.737831, 23.813890>,  <27.313108, 34.914314, 23.789192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.152348, 34.737831, 23.813890>,  <26.884413, 34.443695, 23.855053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152348, 34.737831, 23.813890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547085, 0.395072, -0.737981,
		-0.502012, 0.550627, 0.666928,
		0.669837, 0.735342, -0.102909,
		27.353298, 34.958435, 23.783018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464287, 35.023323, 23.939777>,  <26.884413, 34.443695, 23.855053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464287, 35.023323, 23.939777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.805269, 35.094975, 23.743317>,  <27.009859, 35.137966, 23.625441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.805269, 35.094975, 23.743317>,  <26.464287, 35.023323, 23.939777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805269, 35.094975, 23.743317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522772, 0.301270, -0.797462,
		0.005122, 0.936563, 0.350463,
		0.852457, 0.179128, -0.491152,
		27.061007, 35.148712, 23.595972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422890, 35.779594, 23.668379>,  <26.464287, 35.023323, 23.939777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422890, 35.779594, 23.668379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.714914, 35.600353, 23.461996>,  <26.890129, 35.492809, 23.338167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.714914, 35.600353, 23.461996>,  <26.422890, 35.779594, 23.668379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714914, 35.600353, 23.461996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472872, 0.213812, -0.854796,
		0.493358, 0.868035, -0.055801,
		0.730062, -0.448107, -0.515955,
		26.933933, 35.465919, 23.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406866, 36.492958, 23.969917>,  <26.422890, 35.779594, 23.668379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406866, 36.492958, 23.969917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.110733, 36.726868, 24.102554>,  <25.933054, 36.867214, 24.182137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.110733, 36.726868, 24.102554>,  <26.406866, 36.492958, 23.969917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110733, 36.726868, 24.102554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128809, -0.360723, 0.923736,
		0.659787, 0.726581, 0.191730,
		-0.740330, 0.584772, 0.331590,
		25.888634, 36.902298, 24.202032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714190, 36.840866, 24.498655>,  <26.406866, 36.492958, 23.969917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714190, 36.840866, 24.498655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.316792, 36.836369, 24.543980>,  <26.078352, 36.833668, 24.571175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.316792, 36.836369, 24.543980>,  <26.714190, 36.840866, 24.498655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316792, 36.836369, 24.543980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113061, -0.215796, 0.969871,
		0.013545, 0.976374, 0.215664,
		-0.993496, -0.011246, 0.113312,
		26.018744, 36.832996, 24.577974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676394, 37.317913, 25.049299>,  <26.714190, 36.840866, 24.498655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676394, 37.317913, 25.049299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.335249, 37.110088, 25.028561>,  <26.130562, 36.985394, 25.016117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.335249, 37.110088, 25.028561>,  <26.676394, 37.317913, 25.049299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335249, 37.110088, 25.028561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083305, -0.233422, 0.968800,
		-0.515451, 0.821932, 0.242358,
		-0.852860, -0.519559, -0.051847,
		26.079391, 36.954220, 25.013006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078640, 37.585651, 25.532135>,  <26.676394, 37.317913, 25.049299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078640, 37.585651, 25.532135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.010355, 37.197533, 25.463570>,  <25.969385, 36.964661, 25.422430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.010355, 37.197533, 25.463570>,  <26.078640, 37.585651, 25.532135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010355, 37.197533, 25.463570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067112, -0.185016, 0.980441,
		-0.983033, 0.155868, 0.096703,
		-0.170711, -0.970296, -0.171416,
		25.959141, 36.906445, 25.412146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592812, 37.513172, 25.972662>,  <26.078640, 37.585651, 25.532135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592812, 37.513172, 25.972662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.724936, 37.141838, 25.904436>,  <25.804211, 36.919037, 25.863501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.724936, 37.141838, 25.904436>,  <25.592812, 37.513172, 25.972662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724936, 37.141838, 25.904436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082809, -0.151509, 0.984981,
		-0.940233, -0.339474, 0.026830,
		0.330310, -0.928333, -0.170565,
		25.824028, 36.863338, 25.853266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510832, 37.162922, 26.566500>,  <25.592812, 37.513172, 25.972662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510832, 37.162922, 26.566500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.722692, 36.875263, 26.386595>,  <25.849810, 36.702667, 26.278652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.722692, 36.875263, 26.386595>,  <25.510832, 37.162922, 26.566500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722692, 36.875263, 26.386595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231967, -0.387227, 0.892327,
		-0.815879, -0.576955, -0.038276,
		0.529654, -0.719151, -0.449765,
		25.881588, 36.659519, 26.251665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404633, 36.555622, 26.945911>,  <25.510832, 37.162922, 26.566500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404633, 36.555622, 26.945911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.745918, 36.471466, 26.755016>,  <25.950689, 36.420971, 26.640478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.745918, 36.471466, 26.755016>,  <25.404633, 36.555622, 26.945911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745918, 36.471466, 26.755016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362667, -0.418276, 0.832778,
		-0.374820, -0.883620, -0.280582,
		0.853219, -0.210384, -0.477238,
		26.001883, 36.408348, 26.611845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.344875, 41.604279, 21.065987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543047, 41.353294, 20.825705>,  <26.661951, 41.202705, 20.681536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543047, 41.353294, 20.825705>,  <26.344875, 41.604279, 21.065987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543047, 41.353294, 20.825705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698244, -0.123706, 0.705090,
		-0.516725, -0.768762, 0.376830,
		0.495430, -0.627457, -0.600705,
		26.691675, 41.165058, 20.645493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359812, 40.965206, 21.363363>,  <26.344875, 41.604279, 21.065987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359812, 40.965206, 21.363363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678656, 41.001232, 21.124531>,  <26.869961, 41.022846, 20.981232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678656, 41.001232, 21.124531>,  <26.359812, 40.965206, 21.363363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678656, 41.001232, 21.124531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603327, -0.078145, 0.793656,
		0.024820, -0.992866, -0.116627,
		0.797108, 0.090063, -0.597083,
		26.917788, 41.028252, 20.945406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916260, 40.561523, 21.650833>,  <26.359812, 40.965206, 21.363363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916260, 40.561523, 21.650833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118778, 40.809635, 21.411196>,  <27.240290, 40.958504, 21.267412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118778, 40.809635, 21.411196>,  <26.916260, 40.561523, 21.650833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118778, 40.809635, 21.411196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688914, 0.126946, 0.713640,
		0.518710, -0.774039, -0.363048,
		0.506298, 0.620281, -0.599094,
		27.270668, 40.995720, 21.231468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592585, 40.370327, 21.644182>,  <26.916260, 40.561523, 21.650833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592585, 40.370327, 21.644182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571907, 40.759953, 21.556067>,  <27.559500, 40.993729, 21.503197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571907, 40.759953, 21.556067>,  <27.592585, 40.370327, 21.644182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571907, 40.759953, 21.556067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538581, 0.212948, 0.815220,
		0.840986, -0.076502, -0.535620,
		-0.051693, 0.974064, -0.220289,
		27.556398, 41.052170, 21.489979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274477, 40.550827, 21.873262>,  <27.592585, 40.370327, 21.644182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274477, 40.550827, 21.873262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071817, 40.890568, 21.814066>,  <27.950222, 41.094414, 21.778547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071817, 40.890568, 21.814066>,  <28.274477, 40.550827, 21.873262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071817, 40.890568, 21.814066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271246, 0.319972, 0.907769,
		0.818372, 0.419776, -0.392497,
		-0.506648, 0.849356, -0.147993,
		27.919823, 41.145374, 21.769669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699066, 40.963764, 22.339823>,  <28.274477, 40.550827, 21.873262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699066, 40.963764, 22.339823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356644, 41.166195, 22.297775>,  <28.151190, 41.287655, 22.272547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356644, 41.166195, 22.297775>,  <28.699066, 40.963764, 22.339823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356644, 41.166195, 22.297775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207148, 0.522238, 0.827259,
		0.473555, 0.686406, -0.551899,
		-0.856058, 0.506078, -0.105121,
		28.099827, 41.318020, 22.266239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773548, 41.776791, 22.403471>,  <28.699066, 40.963764, 22.339823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773548, 41.776791, 22.403471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395517, 41.685558, 22.497118>,  <28.168699, 41.630817, 22.553307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395517, 41.685558, 22.497118>,  <28.773548, 41.776791, 22.403471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395517, 41.685558, 22.497118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086081, 0.517306, 0.851460,
		-0.315313, 0.824847, -0.469260,
		-0.945075, -0.228083, 0.234117,
		28.111994, 41.617134, 22.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548269, 42.399944, 22.686970>,  <28.773548, 41.776791, 22.403471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548269, 42.399944, 22.686970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260321, 42.150879, 22.809660>,  <28.087551, 42.001442, 22.883274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260321, 42.150879, 22.809660>,  <28.548269, 42.399944, 22.686970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260321, 42.150879, 22.809660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074743, 0.369790, 0.926104,
		-0.690072, 0.689601, -0.219662,
		-0.719871, -0.622660, 0.306725,
		28.044359, 41.964081, 22.901678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219671, 42.765808, 23.148617>,  <28.548269, 42.399944, 22.686970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219671, 42.765808, 23.148617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138472, 42.383423, 23.233404>,  <28.089752, 42.153992, 23.284277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138472, 42.383423, 23.233404>,  <28.219671, 42.765808, 23.148617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138472, 42.383423, 23.233404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054242, 0.205167, 0.977223,
		-0.977676, 0.209872, 0.010205,
		-0.202998, -0.955960, 0.211971,
		28.077572, 42.096634, 23.296995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838150, 42.824265, 23.744631>,  <28.219671, 42.765808, 23.148617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838150, 42.824265, 23.744631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917448, 42.433861, 23.708609>,  <27.965027, 42.199619, 23.686995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917448, 42.433861, 23.708609>,  <27.838150, 42.824265, 23.744631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917448, 42.433861, 23.708609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245628, -0.039479, 0.968560,
		-0.948877, -0.214130, 0.231909,
		0.198243, -0.976007, -0.090057,
		27.976921, 42.141060, 23.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376158, 42.459652, 24.291990>,  <27.838150, 42.824265, 23.744631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376158, 42.459652, 24.291990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713816, 42.264221, 24.203709>,  <27.916410, 42.146961, 24.150740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713816, 42.264221, 24.203709>,  <27.376158, 42.459652, 24.291990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713816, 42.264221, 24.203709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232748, -0.036871, 0.971838,
		-0.482958, -0.871740, 0.082591,
		0.844145, -0.488579, -0.220703,
		27.967060, 42.117649, 24.137497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378166, 41.780087, 24.658876>,  <27.376158, 42.459652, 24.291990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378166, 41.780087, 24.658876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752140, 41.899174, 24.581665>,  <27.976524, 41.970627, 24.535337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752140, 41.899174, 24.581665>,  <27.378166, 41.780087, 24.658876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752140, 41.899174, 24.581665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220493, -0.061271, 0.973462,
		0.277988, -0.952686, -0.122928,
		0.934936, 0.297716, -0.193028,
		28.032621, 41.988487, 24.523756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853266, 41.355450, 25.057180>,  <27.378166, 41.780087, 24.658876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853266, 41.355450, 25.057180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577711, 41.457157, 25.328703>,  <26.412378, 41.518181, 25.491617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577711, 41.457157, 25.328703>,  <26.853266, 41.355450, 25.057180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577711, 41.457157, 25.328703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715817, -0.091109, -0.692319,
		-0.114203, -0.962828, 0.244787,
		-0.688886, 0.254287, 0.678804,
		26.371044, 41.533440, 25.532345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464735, 40.844864, 25.049543>,  <26.853266, 41.355450, 25.057180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464735, 40.844864, 25.049543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249628, 41.151241, 25.190472>,  <26.120564, 41.335068, 25.275028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249628, 41.151241, 25.190472>,  <26.464735, 40.844864, 25.049543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249628, 41.151241, 25.190472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745721, -0.237175, -0.622614,
		-0.393328, -0.597556, 0.698728,
		-0.537768, 0.765947, 0.352322,
		26.088297, 41.381023, 25.296169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808689, 40.533592, 25.198425>,  <26.464735, 40.844864, 25.049543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808689, 40.533592, 25.198425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765108, 40.926159, 25.135241>,  <25.738960, 41.161697, 25.097330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765108, 40.926159, 25.135241>,  <25.808689, 40.533592, 25.198425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765108, 40.926159, 25.135241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656931, -0.190348, -0.729527,
		-0.746037, 0.024285, 0.665461,
		-0.108952, 0.981416, -0.157960,
		25.732422, 41.220585, 25.087852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098698, 40.643696, 24.984549>,  <25.808689, 40.533592, 25.198425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098698, 40.643696, 24.984549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290472, 40.969543, 24.853987>,  <25.405537, 41.165051, 24.775650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290472, 40.969543, 24.853987>,  <25.098698, 40.643696, 24.984549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290472, 40.969543, 24.853987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504746, -0.048295, -0.861916,
		-0.717895, 0.577985, 0.388020,
		0.479435, 0.814617, -0.326406,
		25.434303, 41.213928, 24.756065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510414, 41.024719, 24.643673>,  <25.098698, 40.643696, 24.984549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510414, 41.024719, 24.643673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.861641, 41.167107, 24.515741>,  <25.072376, 41.252537, 24.438982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.861641, 41.167107, 24.515741>,  <24.510414, 41.024719, 24.643673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861641, 41.167107, 24.515741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354218, 0.034089, -0.934541,
		-0.321762, 0.933877, 0.156021,
		0.878066, 0.355965, -0.319827,
		25.125061, 41.273895, 24.419794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306000, 41.356720, 24.057093>,  <24.510414, 41.024719, 24.643673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306000, 41.356720, 24.057093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.704615, 41.335045, 24.031857>,  <24.943783, 41.322041, 24.016716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.704615, 41.335045, 24.031857>,  <24.306000, 41.356720, 24.057093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704615, 41.335045, 24.031857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067361, -0.081004, -0.994435,
		0.048776, 0.995240, -0.084373,
		0.996536, -0.054188, -0.063089,
		25.003576, 41.318787, 24.012930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540468, 41.915760, 23.600033>,  <24.306000, 41.356720, 24.057093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540468, 41.915760, 23.600033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.826632, 41.636395, 23.608070>,  <24.998329, 41.468777, 23.612894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.826632, 41.636395, 23.608070>,  <24.540468, 41.915760, 23.600033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826632, 41.636395, 23.608070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035259, 0.007363, -0.999351,
		0.697814, 0.715655, 0.029893,
		0.715411, -0.698415, 0.020095,
		25.041254, 41.426868, 23.614100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031473, 42.143997, 23.144150>,  <24.540468, 41.915760, 23.600033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031473, 42.143997, 23.144150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.117889, 41.755096, 23.180048>,  <25.169739, 41.521755, 23.201588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.117889, 41.755096, 23.180048>,  <25.031473, 42.143997, 23.144150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117889, 41.755096, 23.180048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006656, -0.090448, -0.995879,
		0.976361, 0.215749, -0.013069,
		0.216042, -0.972251, 0.089746,
		25.182701, 41.463421, 23.206972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694263, 42.005943, 22.788979>,  <25.031473, 42.143997, 23.144150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694263, 42.005943, 22.788979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522102, 41.645741, 22.813747>,  <25.418806, 41.429619, 22.828609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522102, 41.645741, 22.813747>,  <25.694263, 42.005943, 22.788979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522102, 41.645741, 22.813747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158274, -0.142831, -0.977010,
		0.888653, -0.410706, 0.204002,
		-0.430402, -0.900511, 0.061923,
		25.392982, 41.375587, 22.832325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146746, 41.506851, 22.546766>,  <25.694263, 42.005943, 22.788979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146746, 41.506851, 22.546766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782211, 41.343208, 22.528446>,  <25.563492, 41.245022, 22.517454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782211, 41.343208, 22.528446>,  <26.146746, 41.506851, 22.546766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782211, 41.343208, 22.528446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174374, -0.282842, -0.943183,
		0.372912, -0.867542, 0.329102,
		-0.911334, -0.409111, -0.045802,
		25.508810, 41.220474, 22.514706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254293, 40.896225, 22.216854>,  <26.146746, 41.506851, 22.546766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254293, 40.896225, 22.216854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.858372, 40.949299, 22.196136>,  <25.620819, 40.981144, 22.183706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.858372, 40.949299, 22.196136>,  <26.254293, 40.896225, 22.216854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858372, 40.949299, 22.196136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013405, -0.275240, -0.961282,
		-0.141799, -0.952176, 0.270656,
		-0.989805, 0.132681, -0.051792,
		25.561430, 40.989105, 22.180599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051285, 40.441933, 21.737076>,  <26.254293, 40.896225, 22.216854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051285, 40.441933, 21.737076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737314, 40.689140, 21.754707>,  <25.548933, 40.837467, 21.765287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737314, 40.689140, 21.754707>,  <26.051285, 40.441933, 21.737076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737314, 40.689140, 21.754707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252895, -0.254618, -0.933388,
		-0.565631, -0.743786, 0.356151,
		-0.784924, 0.618022, 0.044080,
		25.501837, 40.874546, 21.767931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633480, 39.999645, 22.153824>,  <26.051285, 40.441933, 21.737076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633480, 39.999645, 22.153824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236666, 39.951584, 22.168959>,  <25.998577, 39.922749, 22.178040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236666, 39.951584, 22.168959>,  <26.633480, 39.999645, 22.153824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236666, 39.951584, 22.168959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124415, -0.887491, 0.443711,
		-0.019732, 0.444885, 0.895370,
		-0.992034, -0.120152, 0.037838,
		25.939056, 39.915539, 22.180309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502666, 39.820389, 22.794193>,  <26.633480, 39.999645, 22.153824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502666, 39.820389, 22.794193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.181099, 39.690037, 22.595188>,  <25.988159, 39.611828, 22.475784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.181099, 39.690037, 22.595188>,  <26.502666, 39.820389, 22.794193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181099, 39.690037, 22.595188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063247, -0.878623, 0.473310,
		-0.591369, 0.349035, 0.726950,
		-0.803917, -0.325878, -0.497515,
		25.939924, 39.592274, 22.445934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019569, 39.604965, 23.283417>,  <26.502666, 39.820389, 22.794193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019569, 39.604965, 23.283417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938856, 39.396042, 22.952002>,  <25.890429, 39.270687, 22.753153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938856, 39.396042, 22.952002>,  <26.019569, 39.604965, 23.283417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938856, 39.396042, 22.952002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106631, -0.829196, 0.548693,
		-0.973608, 0.199066, 0.111625,
		-0.201786, -0.522309, -0.828538,
		25.878321, 39.239349, 22.703440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301855, 39.368130, 23.278828>,  <26.019569, 39.604965, 23.283417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301855, 39.368130, 23.278828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511505, 39.119572, 23.045877>,  <25.637295, 38.970436, 22.906107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511505, 39.119572, 23.045877>,  <25.301855, 39.368130, 23.278828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511505, 39.119572, 23.045877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139679, -0.737291, 0.660978,
		-0.840107, -0.265091, -0.473230,
		0.524127, -0.621393, -0.582376,
		25.668743, 38.933155, 22.871164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936571, 38.721321, 23.268337>,  <25.301855, 39.368130, 23.278828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936571, 38.721321, 23.268337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.292404, 38.612373, 23.121664>,  <25.505905, 38.547005, 23.033661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.292404, 38.612373, 23.121664>,  <24.936571, 38.721321, 23.268337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292404, 38.612373, 23.121664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038576, -0.844702, 0.533845,
		-0.455138, -0.460755, -0.761941,
		0.889584, -0.272366, -0.366682,
		25.559280, 38.530663, 23.011660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812771, 38.106998, 22.977272>,  <24.936571, 38.721321, 23.268337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812771, 38.106998, 22.977272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.204222, 38.134708, 23.054720>,  <25.439093, 38.151337, 23.101189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.204222, 38.134708, 23.054720>,  <24.812771, 38.106998, 22.977272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204222, 38.134708, 23.054720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053339, -0.823805, 0.564359,
		0.198600, -0.562625, -0.802503,
		0.978628, 0.069277, 0.193617,
		25.497810, 38.155491, 23.112804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085575, 37.392647, 22.820320>,  <24.812771, 38.106998, 22.977272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085575, 37.392647, 22.820320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368849, 37.557159, 23.049868>,  <25.538813, 37.655869, 23.187595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368849, 37.557159, 23.049868>,  <25.085575, 37.392647, 22.820320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368849, 37.557159, 23.049868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040018, -0.788121, 0.614219,
		0.704893, -0.457944, -0.541676,
		0.708184, 0.411282, 0.573866,
		25.581305, 37.680546, 23.222027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390961, 36.801788, 23.034332>,  <25.085575, 37.392647, 22.820320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390961, 36.801788, 23.034332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.513224, 37.085636, 23.288265>,  <25.586582, 37.255943, 23.440626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.513224, 37.085636, 23.288265>,  <25.390961, 36.801788, 23.034332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513224, 37.085636, 23.288265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114575, -0.634486, 0.764395,
		0.945223, -0.306379, -0.112630,
		0.305657, 0.709619, 0.634835,
		25.604921, 37.298523, 23.478716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881260, 36.480106, 23.476608>,  <25.390961, 36.801788, 23.034332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881260, 36.480106, 23.476608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798254, 36.809227, 23.688244>,  <25.748451, 37.006699, 23.815226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798254, 36.809227, 23.688244>,  <25.881260, 36.480106, 23.476608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798254, 36.809227, 23.688244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137836, -0.510874, 0.848534,
		0.968473, 0.249010, -0.007398,
		-0.207514, 0.822801, 0.529090,
		25.736000, 37.056068, 23.846972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650627, 36.317768, 23.138903>,  <25.881260, 36.480106, 23.476608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650627, 36.317768, 23.138903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767809, 35.956795, 23.012547>,  <26.838118, 35.740211, 22.936733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767809, 35.956795, 23.012547>,  <26.650627, 36.317768, 23.138903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767809, 35.956795, 23.012547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356742, 0.203363, -0.911800,
		0.887081, 0.379808, -0.262360,
		0.292955, -0.902435, -0.315892,
		26.855696, 35.686066, 22.917778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890011, 36.405064, 22.510900>,  <26.650627, 36.317768, 23.138903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890011, 36.405064, 22.510900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829075, 36.009747, 22.507347>,  <26.792513, 35.772556, 22.505215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829075, 36.009747, 22.507347>,  <26.890011, 36.405064, 22.510900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829075, 36.009747, 22.507347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391469, 0.068589, -0.917632,
		0.907494, -0.136314, -0.397333,
		-0.152338, -0.988289, -0.008881,
		26.783373, 35.713261, 22.504683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232773, 36.095490, 21.906265>,  <26.890011, 36.405064, 22.510900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232773, 36.095490, 21.906265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925440, 35.857162, 21.999786>,  <26.741039, 35.714165, 22.055899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925440, 35.857162, 21.999786>,  <27.232773, 36.095490, 21.906265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925440, 35.857162, 21.999786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234783, -0.077459, -0.968957,
		0.595434, -0.799374, -0.080374,
		-0.768333, -0.595820, 0.233801,
		26.694941, 35.678417, 22.069927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346840, 35.500393, 21.516308>,  <27.232773, 36.095490, 21.906265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346840, 35.500393, 21.516308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967182, 35.437698, 21.625530>,  <26.739388, 35.400082, 21.691063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967182, 35.437698, 21.625530>,  <27.346840, 35.500393, 21.516308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967182, 35.437698, 21.625530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251513, -0.144213, -0.957049,
		0.189386, -0.977054, 0.097456,
		-0.949144, -0.156740, 0.273054,
		26.682440, 35.390678, 21.707447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149740, 34.748859, 21.360172>,  <27.346840, 35.500393, 21.516308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149740, 34.748859, 21.360172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822269, 34.978523, 21.355938>,  <26.625786, 35.116322, 21.353397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822269, 34.978523, 21.355938>,  <27.149740, 34.748859, 21.360172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822269, 34.978523, 21.355938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188871, -0.286625, -0.939241,
		-0.542305, -0.766936, 0.343094,
		-0.818678, 0.574156, -0.010586,
		26.576666, 35.150768, 21.352762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646601, 34.370537, 20.879452>,  <27.149740, 34.748859, 21.360172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646601, 34.370537, 20.879452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471998, 34.727718, 20.923441>,  <26.367237, 34.942028, 20.949835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471998, 34.727718, 20.923441>,  <26.646601, 34.370537, 20.879452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471998, 34.727718, 20.923441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454716, -0.113487, -0.883376,
		-0.776336, -0.435604, 0.455579,
		-0.436505, 0.892956, 0.109972,
		26.341047, 34.995605, 20.956432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909763, 34.278294, 20.634283>,  <26.646601, 34.370537, 20.879452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909763, 34.278294, 20.634283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006193, 34.665367, 20.604719>,  <26.064051, 34.897614, 20.586981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006193, 34.665367, 20.604719>,  <25.909763, 34.278294, 20.634283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006193, 34.665367, 20.604719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406007, 0.031389, -0.913330,
		-0.881499, 0.250191, 0.400456,
		0.241077, 0.967688, -0.073910,
		26.078516, 34.955673, 20.582546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290604, 34.621655, 20.243164>,  <25.909763, 34.278294, 20.634283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290604, 34.621655, 20.243164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.615585, 34.853325, 20.216406>,  <25.810575, 34.992325, 20.200352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.615585, 34.853325, 20.216406>,  <25.290604, 34.621655, 20.243164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615585, 34.853325, 20.216406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130428, 0.068725, -0.989073,
		-0.568247, 0.812303, 0.131377,
		0.812455, 0.579173, -0.066894,
		25.859322, 35.027077, 20.196337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095825, 35.235970, 19.843842>,  <25.290604, 34.621655, 20.243164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095825, 35.235970, 19.843842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490147, 35.198357, 19.788208>,  <25.726740, 35.175789, 19.754827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490147, 35.198357, 19.788208>,  <25.095825, 35.235970, 19.843842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490147, 35.198357, 19.788208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137273, 0.025509, -0.990205,
		0.096658, 0.995242, 0.012239,
		0.985806, -0.094031, -0.139085,
		25.785889, 35.170147, 19.746483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.132713, 35.191830, 33.404823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408611, 35.313351, 33.141933>,  <34.574150, 35.386265, 32.984200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408611, 35.313351, 33.141933>,  <34.132713, 35.191830, 33.404823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408611, 35.313351, 33.141933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668240, -0.082356, -0.739373,
		-0.278751, 0.949169, 0.146209,
		0.689749, 0.303804, -0.657229,
		34.615536, 35.404491, 32.944763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871120, 35.735126, 33.131065>,  <34.132713, 35.191830, 33.404823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871120, 35.735126, 33.131065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130573, 35.574131, 32.872677>,  <34.286247, 35.477535, 32.717644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130573, 35.574131, 32.872677>,  <33.871120, 35.735126, 33.131065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130573, 35.574131, 32.872677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707308, -0.005365, -0.706885,
		0.281046, 0.915410, -0.288162,
		0.648636, -0.402486, -0.645970,
		34.325165, 35.453384, 32.678886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866268, 36.084869, 32.565887>,  <33.871120, 35.735126, 33.131065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866268, 36.084869, 32.565887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028023, 35.749985, 32.418621>,  <34.125076, 35.549053, 32.330261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028023, 35.749985, 32.418621>,  <33.866268, 36.084869, 32.565887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028023, 35.749985, 32.418621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661849, 0.009945, -0.749571,
		0.631213, 0.546785, -0.550087,
		0.404384, -0.837214, -0.368167,
		34.149338, 35.498821, 32.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939846, 36.199535, 31.843447>,  <33.866268, 36.084869, 32.565887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939846, 36.199535, 31.843447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941494, 35.800285, 31.867872>,  <33.942482, 35.560734, 31.882528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941494, 35.800285, 31.867872>,  <33.939846, 36.199535, 31.843447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941494, 35.800285, 31.867872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628514, -0.050084, -0.776184,
		0.777787, -0.035179, -0.627542,
		0.004124, -0.998125, 0.061065,
		33.942730, 35.500847, 31.886192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963299, 35.995571, 31.125952>,  <33.939846, 36.199535, 31.843447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963299, 35.995571, 31.125952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848106, 35.684132, 31.348967>,  <33.778992, 35.497269, 31.482775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848106, 35.684132, 31.348967>,  <33.963299, 35.995571, 31.125952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848106, 35.684132, 31.348967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631166, -0.283533, -0.721968,
		0.720205, -0.559813, -0.409774,
		-0.287983, -0.778600, 0.557537,
		33.761711, 35.450550, 31.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843185, 35.418839, 30.679718>,  <33.963299, 35.995571, 31.125952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843185, 35.418839, 30.679718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611553, 35.335091, 30.994890>,  <33.472572, 35.284843, 31.183992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611553, 35.335091, 30.994890>,  <33.843185, 35.418839, 30.679718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611553, 35.335091, 30.994890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703950, -0.359100, -0.612781,
		0.411241, -0.909512, 0.060565,
		-0.579081, -0.209366, 0.787928,
		33.437828, 35.272282, 31.231268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486694, 34.790840, 30.412977>,  <33.843185, 35.418839, 30.679718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486694, 34.790840, 30.412977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246998, 34.898659, 30.714508>,  <33.103180, 34.963348, 30.895426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246998, 34.898659, 30.714508>,  <33.486694, 34.790840, 30.412977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246998, 34.898659, 30.714508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799175, -0.256923, -0.543424,
		0.047199, -0.928082, 0.369371,
		-0.599242, 0.269543, 0.753827,
		33.067226, 34.979523, 30.940657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008121, 34.310661, 30.465183>,  <33.486694, 34.790840, 30.412977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008121, 34.310661, 30.465183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.809006, 34.573536, 30.691570>,  <32.689537, 34.731258, 30.827402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.809006, 34.573536, 30.691570>,  <33.008121, 34.310661, 30.465183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809006, 34.573536, 30.691570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867018, -0.360445, -0.344034,
		-0.022093, -0.661959, 0.749214,
		-0.497787, 0.657183, 0.565967,
		32.659668, 34.770691, 30.861361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426762, 33.904667, 30.977840>,  <33.008121, 34.310661, 30.465183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426762, 33.904667, 30.977840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367477, 34.293705, 30.906178>,  <32.331909, 34.527126, 30.863180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367477, 34.293705, 30.906178>,  <32.426762, 33.904667, 30.977840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367477, 34.293705, 30.906178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859370, -0.216304, -0.463352,
		-0.489406, 0.085289, 0.867875,
		-0.148206, 0.972594, -0.179156,
		32.323017, 34.585484, 30.852430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766022, 34.018860, 31.216999>,  <32.426762, 33.904667, 30.977840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766022, 34.018860, 31.216999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842308, 34.324024, 30.969904>,  <31.888081, 34.507122, 30.821648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842308, 34.324024, 30.969904>,  <31.766022, 34.018860, 31.216999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842308, 34.324024, 30.969904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889466, -0.131932, -0.437544,
		-0.415305, 0.632902, 0.653419,
		0.190716, 0.762908, -0.617737,
		31.899523, 34.552898, 30.784582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129948, 34.374691, 31.202003>,  <31.766022, 34.018860, 31.216999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129948, 34.374691, 31.202003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.325098, 34.478882, 30.868746>,  <31.442188, 34.541397, 30.668791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.325098, 34.478882, 30.868746>,  <31.129948, 34.374691, 31.202003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325098, 34.478882, 30.868746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845387, -0.096805, -0.525308,
		-0.217483, 0.960615, 0.172975,
		0.487874, 0.260477, -0.833145,
		31.471460, 34.557026, 30.618803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716103, 34.797005, 30.823992>,  <31.129948, 34.374691, 31.202003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716103, 34.797005, 30.823992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971779, 34.687153, 30.536655>,  <31.125185, 34.621243, 30.364254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971779, 34.687153, 30.536655>,  <30.716103, 34.797005, 30.823992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971779, 34.687153, 30.536655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725711, 0.093730, -0.681585,
		0.254511, 0.956972, -0.139389,
		0.639193, -0.274627, -0.718340,
		31.163536, 34.604763, 30.321154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157379, 35.301411, 30.935194>,  <30.716103, 34.797005, 30.823992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157379, 35.301411, 30.935194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798876, 35.355137, 31.104277>,  <29.583775, 35.387371, 31.205727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798876, 35.355137, 31.104277>,  <30.157379, 35.301411, 30.935194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798876, 35.355137, 31.104277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441148, 0.171230, 0.880948,
		0.045943, 0.976033, -0.212718,
		-0.896258, 0.134313, 0.422708,
		29.529999, 35.395432, 31.231089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220896, 35.963379, 31.257448>,  <30.157379, 35.301411, 30.935194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220896, 35.963379, 31.257448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928251, 35.753593, 31.431656>,  <29.752665, 35.627720, 31.536180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928251, 35.753593, 31.431656>,  <30.220896, 35.963379, 31.257448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928251, 35.753593, 31.431656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344348, 0.267057, 0.900058,
		-0.588360, 0.808464, -0.014783,
		-0.731613, -0.524468, 0.435519,
		29.708767, 35.596252, 31.562311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033796, 36.362926, 31.775631>,  <30.220896, 35.963379, 31.257448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033796, 36.362926, 31.775631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870882, 36.016827, 31.892563>,  <29.773134, 35.809166, 31.962723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870882, 36.016827, 31.892563>,  <30.033796, 36.362926, 31.775631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870882, 36.016827, 31.892563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244216, 0.205250, 0.947751,
		-0.880045, 0.457395, 0.127714,
		-0.407283, -0.865253, 0.292332,
		29.748697, 35.757252, 31.980263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508196, 36.499973, 32.163864>,  <30.033796, 36.362926, 31.775631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508196, 36.499973, 32.163864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.590763, 36.124653, 32.274849>,  <29.640305, 35.899460, 32.341438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.590763, 36.124653, 32.274849>,  <29.508196, 36.499973, 32.163864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590763, 36.124653, 32.274849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228933, 0.322009, 0.918640,
		-0.951305, -0.126105, 0.281277,
		0.206419, -0.938300, 0.277459,
		29.652689, 35.843163, 32.358086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169195, 36.384178, 32.883713>,  <29.508196, 36.499973, 32.163864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169195, 36.384178, 32.883713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455660, 36.111839, 32.822311>,  <29.627539, 35.948437, 32.785469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455660, 36.111839, 32.822311>,  <29.169195, 36.384178, 32.883713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455660, 36.111839, 32.822311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356511, 0.167782, 0.919102,
		-0.600009, -0.712953, 0.362887,
		0.716163, -0.680843, -0.153506,
		29.670509, 35.907585, 32.776260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085447, 35.875439, 33.534351>,  <29.169195, 36.384178, 32.883713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085447, 35.875439, 33.534351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451670, 35.859322, 33.374283>,  <29.671404, 35.849651, 33.278244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451670, 35.859322, 33.374283>,  <29.085447, 35.875439, 33.534351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451670, 35.859322, 33.374283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398785, -0.038275, 0.916246,
		-0.052258, -0.998454, -0.018965,
		0.915555, -0.040318, -0.400168,
		29.726336, 35.847233, 33.254234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493650, 35.412167, 33.981518>,  <29.085447, 35.875439, 33.534351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493650, 35.412167, 33.981518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768381, 35.593624, 33.754368>,  <29.933220, 35.702499, 33.618080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768381, 35.593624, 33.754368>,  <29.493650, 35.412167, 33.981518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768381, 35.593624, 33.754368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632372, 0.012176, 0.774569,
		0.358290, -0.891102, -0.278507,
		0.686828, 0.453641, -0.567870,
		29.974430, 35.729717, 33.584007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124660, 34.995209, 33.946411>,  <29.493650, 35.412167, 33.981518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124660, 34.995209, 33.946411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228251, 35.369980, 33.852524>,  <30.290405, 35.594845, 33.796192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228251, 35.369980, 33.852524>,  <30.124660, 34.995209, 33.946411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228251, 35.369980, 33.852524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545277, 0.058764, 0.836194,
		0.797249, -0.344540, -0.495668,
		0.258975, 0.936931, -0.234719,
		30.305943, 35.651058, 33.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745792, 35.024010, 34.322800>,  <30.124660, 34.995209, 33.946411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745792, 35.024010, 34.322800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618134, 35.391724, 34.230667>,  <30.541538, 35.612354, 34.175388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618134, 35.391724, 34.230667>,  <30.745792, 35.024010, 34.322800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618134, 35.391724, 34.230667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218017, 0.307744, 0.926155,
		0.922287, 0.245364, -0.298636,
		-0.319149, 0.919288, -0.230334,
		30.522388, 35.667511, 34.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207552, 35.531643, 34.774956>,  <30.745792, 35.024010, 34.322800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207552, 35.531643, 34.774956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888830, 35.736568, 34.646809>,  <30.697598, 35.859524, 34.569920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888830, 35.736568, 34.646809>,  <31.207552, 35.531643, 34.774956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888830, 35.736568, 34.646809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110703, 0.397461, 0.910917,
		0.594008, 0.761290, -0.259985,
		-0.796806, 0.512311, -0.320372,
		30.649788, 35.890263, 34.550697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405968, 36.316418, 34.964497>,  <31.207552, 35.531643, 34.774956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405968, 36.316418, 34.964497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013952, 36.253990, 34.915237>,  <30.778742, 36.216534, 34.885681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013952, 36.253990, 34.915237>,  <31.405968, 36.316418, 34.964497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013952, 36.253990, 34.915237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175866, 0.391745, 0.903110,
		-0.092702, 0.906741, -0.411372,
		-0.980039, -0.156066, -0.123149,
		30.719940, 36.207169, 34.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137552, 36.987137, 35.117146>,  <31.405968, 36.316418, 34.964497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137552, 36.987137, 35.117146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854803, 36.709610, 35.172203>,  <30.685154, 36.543095, 35.205238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854803, 36.709610, 35.172203>,  <31.137552, 36.987137, 35.117146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854803, 36.709610, 35.172203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227007, 0.406823, 0.884852,
		-0.669925, 0.594231, -0.445074,
		-0.706872, -0.693819, 0.137647,
		30.642742, 36.501465, 35.213497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589216, 37.374237, 35.408192>,  <31.137552, 36.987137, 35.117146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589216, 37.374237, 35.408192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516088, 36.994488, 35.510380>,  <30.472212, 36.766636, 35.571693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516088, 36.994488, 35.510380>,  <30.589216, 37.374237, 35.408192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516088, 36.994488, 35.510380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212564, 0.291872, 0.932538,
		-0.959893, 0.116182, -0.255163,
		-0.182819, -0.949375, 0.255469,
		30.461243, 36.709675, 35.587021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964413, 37.420979, 35.541771>,  <30.589216, 37.374237, 35.408192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964413, 37.420979, 35.541771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067797, 37.081512, 35.726364>,  <30.129827, 36.877834, 35.837120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067797, 37.081512, 35.726364>,  <29.964413, 37.420979, 35.541771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067797, 37.081512, 35.726364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317300, 0.376626, 0.870330,
		-0.912424, -0.371374, -0.171938,
		0.258461, -0.848666, 0.461480,
		30.145334, 36.826912, 35.864807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243078, 38.086716, 35.162067>,  <29.964413, 37.420979, 35.541771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243078, 38.086716, 35.162067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448910, 38.417480, 35.252773>,  <30.572409, 38.615940, 35.307198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448910, 38.417480, 35.252773>,  <30.243078, 38.086716, 35.162067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448910, 38.417480, 35.252773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048769, 0.235817, -0.970573,
		-0.856054, 0.510497, 0.081019,
		0.514581, 0.826911, 0.226769,
		30.603285, 38.665554, 35.320805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919106, 38.728363, 34.956776>,  <30.243078, 38.086716, 35.162067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919106, 38.728363, 34.956776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315094, 38.780964, 34.936131>,  <30.552687, 38.812523, 34.923744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315094, 38.780964, 34.936131>,  <29.919106, 38.728363, 34.956776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315094, 38.780964, 34.936131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071660, 0.152569, -0.985691,
		-0.121746, 0.979505, 0.160462,
		0.989971, 0.131503, -0.051617,
		30.612085, 38.820415, 34.920647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074541, 39.181480, 34.416039>,  <29.919106, 38.728363, 34.956776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074541, 39.181480, 34.416039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461702, 39.085331, 34.445389>,  <30.694000, 39.027641, 34.462997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461702, 39.085331, 34.445389>,  <30.074541, 39.181480, 34.416039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461702, 39.085331, 34.445389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142545, 0.284619, -0.947984,
		0.206985, 0.928016, 0.309747,
		0.967904, -0.240371, 0.073372,
		30.752073, 39.013218, 34.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357628, 39.772964, 34.350189>,  <30.074541, 39.181480, 34.416039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357628, 39.772964, 34.350189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578421, 39.470898, 34.208748>,  <30.710897, 39.289658, 34.123882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578421, 39.470898, 34.208748>,  <30.357628, 39.772964, 34.350189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578421, 39.470898, 34.208748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015840, 0.414485, -0.909918,
		0.833704, 0.507861, 0.216827,
		0.551984, -0.755168, -0.353603,
		30.744017, 39.244347, 34.102669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957405, 40.091312, 34.092342>,  <30.357628, 39.772964, 34.350189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957405, 40.091312, 34.092342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839928, 39.742100, 33.936619>,  <30.769442, 39.532574, 33.843185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839928, 39.742100, 33.936619>,  <30.957405, 40.091312, 34.092342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839928, 39.742100, 33.936619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308242, 0.472011, -0.825950,
		0.904838, -0.122574, -0.407731,
		-0.293693, -0.873030, -0.389310,
		30.751820, 39.480190, 33.819824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137802, 40.189621, 33.327835>,  <30.957405, 40.091312, 34.092342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137802, 40.189621, 33.327835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901533, 39.868202, 33.357300>,  <30.759771, 39.675350, 33.374977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901533, 39.868202, 33.357300>,  <31.137802, 40.189621, 33.327835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901533, 39.868202, 33.357300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313777, 0.144626, -0.938418,
		0.743405, -0.577411, -0.337559,
		-0.590672, -0.803543, 0.073663,
		30.724331, 39.627140, 33.379398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156702, 39.888981, 32.640503>,  <31.137802, 40.189621, 33.327835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156702, 39.888981, 32.640503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837524, 39.739250, 32.829464>,  <30.646017, 39.649410, 32.942841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837524, 39.739250, 32.829464>,  <31.156702, 39.888981, 32.640503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837524, 39.739250, 32.829464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540410, 0.097247, -0.835764,
		0.266912, -0.922182, -0.279889,
		-0.797944, -0.374330, 0.472400,
		30.598141, 39.626953, 32.971184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849962, 39.519440, 32.078632>,  <31.156702, 39.888981, 32.640503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849962, 39.519440, 32.078632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565830, 39.560570, 32.357159>,  <30.395351, 39.585247, 32.524277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565830, 39.560570, 32.357159>,  <30.849962, 39.519440, 32.078632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565830, 39.560570, 32.357159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690715, 0.088543, -0.717686,
		-0.135453, -0.990750, 0.008132,
		-0.710328, 0.102830, 0.696319,
		30.352732, 39.591419, 32.566055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404528, 39.068005, 31.820730>,  <30.849962, 39.519440, 32.078632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404528, 39.068005, 31.820730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219555, 39.309925, 32.080074>,  <30.108570, 39.455078, 32.235680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219555, 39.309925, 32.080074>,  <30.404528, 39.068005, 31.820730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219555, 39.309925, 32.080074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771717, 0.085521, -0.630190,
		-0.436587, -0.791773, 0.427186,
		-0.462434, 0.604799, 0.648362,
		30.080824, 39.491364, 32.274582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777931, 38.869602, 31.851957>,  <30.404528, 39.068005, 31.820730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777931, 38.869602, 31.851957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.766455, 39.253941, 31.962189>,  <29.759569, 39.484543, 32.028328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.766455, 39.253941, 31.962189>,  <29.777931, 38.869602, 31.851957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766455, 39.253941, 31.962189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694374, 0.179156, -0.696956,
		-0.719042, -0.211351, 0.662049,
		-0.028692, 0.960851, 0.275577,
		29.757847, 39.542194, 32.044861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111942, 38.995750, 31.722239>,  <29.777931, 38.869602, 31.851957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111942, 38.995750, 31.722239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.295795, 39.348888, 31.760853>,  <29.406107, 39.560772, 31.784021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.295795, 39.348888, 31.760853>,  <29.111942, 38.995750, 31.722239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295795, 39.348888, 31.760853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630818, 0.401052, -0.664248,
		-0.625145, 0.244415, 0.741252,
		0.459633, 0.882847, 0.096534,
		29.433685, 39.613743, 31.789814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617035, 39.540092, 31.824982>,  <29.111942, 38.995750, 31.722239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617035, 39.540092, 31.824982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938356, 39.712322, 31.660393>,  <29.131149, 39.815659, 31.561640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938356, 39.712322, 31.660393>,  <28.617035, 39.540092, 31.824982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938356, 39.712322, 31.660393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594665, 0.541851, -0.593946,
		-0.032781, 0.721806, 0.691318,
		0.803305, 0.430573, -0.411470,
		29.179348, 39.841496, 31.536951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320778, 40.182030, 31.650875>,  <28.617035, 39.540092, 31.824982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320778, 40.182030, 31.650875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.662289, 40.150879, 31.444962>,  <28.867195, 40.132187, 31.321413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.662289, 40.150879, 31.444962>,  <28.320778, 40.182030, 31.650875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662289, 40.150879, 31.444962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424737, 0.467650, -0.775179,
		0.301111, 0.880476, 0.366189,
		0.853775, -0.077881, -0.514785,
		28.918421, 40.127514, 31.290525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526077, 40.877075, 31.223358>,  <28.320778, 40.182030, 31.650875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526077, 40.877075, 31.223358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698792, 40.556534, 31.057760>,  <28.802420, 40.364208, 30.958401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698792, 40.556534, 31.057760>,  <28.526077, 40.877075, 31.223358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698792, 40.556534, 31.057760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427519, 0.222329, -0.876240,
		0.794222, 0.555339, -0.246596,
		0.431785, -0.801354, -0.413997,
		28.828327, 40.316128, 30.933561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822163, 41.159157, 30.640245>,  <28.526077, 40.877075, 31.223358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822163, 41.159157, 30.640245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.807291, 40.766708, 30.564329>,  <28.798368, 40.531239, 30.518780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.807291, 40.766708, 30.564329>,  <28.822163, 41.159157, 30.640245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807291, 40.766708, 30.564329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408794, 0.188235, -0.893003,
		0.911869, 0.044384, -0.408074,
		-0.037179, -0.981121, -0.189790,
		28.796137, 40.472374, 30.507393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914726, 41.149811, 29.946655>,  <28.822163, 41.159157, 30.640245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914726, 41.149811, 29.946655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.775412, 40.782478, 30.021870>,  <28.691822, 40.562077, 30.066999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.775412, 40.782478, 30.021870>,  <28.914726, 41.149811, 29.946655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775412, 40.782478, 30.021870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507650, 0.016150, -0.861412,
		0.788027, -0.395477, -0.471818,
		-0.348288, -0.918334, 0.188037,
		28.670925, 40.506977, 30.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035263, 40.759136, 29.352812>,  <28.914726, 41.149811, 29.946655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035263, 40.759136, 29.352812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745834, 40.577942, 29.561138>,  <28.572178, 40.469227, 29.686134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745834, 40.577942, 29.561138>,  <29.035263, 40.759136, 29.352812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745834, 40.577942, 29.561138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516135, -0.145923, -0.843985,
		0.458313, -0.879494, -0.128217,
		-0.723571, -0.452986, 0.520816,
		28.528763, 40.442047, 29.717382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961479, 40.200794, 28.953371>,  <29.035263, 40.759136, 29.352812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961479, 40.200794, 28.953371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630030, 40.251179, 29.171551>,  <28.431160, 40.281410, 29.302458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630030, 40.251179, 29.171551>,  <28.961479, 40.200794, 28.953371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630030, 40.251179, 29.171551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558599, -0.122175, -0.820391,
		-0.036695, -0.984484, 0.171597,
		-0.828626, 0.125958, 0.545448,
		28.381441, 40.288967, 29.335186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545496, 39.688671, 28.627417>,  <28.961479, 40.200794, 28.953371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545496, 39.688671, 28.627417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.336342, 39.965500, 28.826464>,  <28.210850, 40.131596, 28.945892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.336342, 39.965500, 28.826464>,  <28.545496, 39.688671, 28.627417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336342, 39.965500, 28.826464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536145, 0.186819, -0.823193,
		-0.662675, -0.697233, 0.273366,
		-0.522887, 0.692073, 0.497618,
		28.179476, 40.173122, 28.975750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878689, 39.490334, 28.553356>,  <28.545496, 39.688671, 28.627417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878689, 39.490334, 28.553356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.840839, 39.874920, 28.656610>,  <27.818130, 40.105671, 28.718563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.840839, 39.874920, 28.656610>,  <27.878689, 39.490334, 28.553356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840839, 39.874920, 28.656610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570982, 0.159995, -0.805221,
		-0.815491, -0.223585, 0.533839,
		-0.094624, 0.961464, 0.258138,
		27.812452, 40.163361, 28.734053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260620, 39.600323, 28.341671>,  <27.878689, 39.490334, 28.553356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260620, 39.600323, 28.341671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.405909, 39.968204, 28.401291>,  <27.493082, 40.188934, 28.437063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.405909, 39.968204, 28.401291>,  <27.260620, 39.600323, 28.341671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405909, 39.968204, 28.401291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379083, 0.292016, -0.878079,
		-0.851098, 0.262434, 0.454710,
		0.363221, 0.919704, 0.149050,
		27.514875, 40.244114, 28.446007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622841, 40.058163, 28.290934>,  <27.260620, 39.600323, 28.341671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622841, 40.058163, 28.290934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950401, 40.274143, 28.213108>,  <27.146938, 40.403732, 28.166412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950401, 40.274143, 28.213108>,  <26.622841, 40.058163, 28.290934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950401, 40.274143, 28.213108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385790, 0.266874, -0.883144,
		-0.424929, 0.798269, 0.426851,
		0.818903, 0.539948, -0.194562,
		27.196072, 40.436127, 28.154739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344561, 40.634972, 27.956760>,  <26.622841, 40.058163, 28.290934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344561, 40.634972, 27.956760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.728413, 40.688507, 27.857809>,  <26.958723, 40.720631, 27.798437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.728413, 40.688507, 27.857809>,  <26.344561, 40.634972, 27.956760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728413, 40.688507, 27.857809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281266, 0.457324, -0.843649,
		0.000219, 0.879171, 0.476507,
		0.959630, 0.133841, -0.247381,
		27.016302, 40.728661, 27.783594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330187, 41.366405, 27.728331>,  <26.344561, 40.634972, 27.956760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330187, 41.366405, 27.728331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.641256, 41.168003, 27.573826>,  <26.827898, 41.048962, 27.481123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.641256, 41.168003, 27.573826>,  <26.330187, 41.366405, 27.728331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641256, 41.168003, 27.573826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203564, 0.382638, -0.901194,
		0.594798, 0.779464, 0.196598,
		0.777674, -0.496008, -0.386263,
		26.874559, 41.019199, 27.457947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749109, 41.856663, 27.459633>,  <26.330187, 41.366405, 27.728331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749109, 41.856663, 27.459633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.846790, 41.522903, 27.261986>,  <26.905399, 41.322647, 27.143398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.846790, 41.522903, 27.261986>,  <26.749109, 41.856663, 27.459633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846790, 41.522903, 27.261986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367632, 0.391847, -0.843388,
		0.897336, 0.387611, -0.211059,
		0.244204, -0.834394, -0.494116,
		26.920052, 41.272587, 27.113750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328438, 41.992798, 27.010386>,  <26.749109, 41.856663, 27.459633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328438, 41.992798, 27.010386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.137272, 41.664677, 26.884716>,  <27.022572, 41.467804, 26.809315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.137272, 41.664677, 26.884716>,  <27.328438, 41.992798, 27.010386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137272, 41.664677, 26.884716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337372, 0.501644, -0.796576,
		0.811035, -0.274701, -0.516489,
		-0.477914, -0.820300, -0.314175,
		26.993898, 41.418587, 26.790464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153986, 42.207699, 26.277613>,  <27.328438, 41.992798, 27.010386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153986, 42.207699, 26.277613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.937061, 41.873474, 26.312784>,  <26.806906, 41.672939, 26.333887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.937061, 41.873474, 26.312784>,  <27.153986, 42.207699, 26.277613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937061, 41.873474, 26.312784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597733, 0.310157, -0.739269,
		0.590434, -0.453472, -0.667645,
		-0.542312, -0.835563, 0.087928,
		26.774368, 41.622807, 26.339163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163090, 41.926949, 25.472092>,  <27.153986, 42.207699, 26.277613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163090, 41.926949, 25.472092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.877300, 41.756451, 25.694025>,  <26.705826, 41.654152, 25.827185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.877300, 41.756451, 25.694025>,  <27.163090, 41.926949, 25.472092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877300, 41.756451, 25.694025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647765, 0.103266, -0.754809,
		0.264441, -0.898692, -0.349890,
		-0.714473, -0.426249, 0.554833,
		26.662958, 41.628578, 25.860476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717785, 41.565334, 25.245388>,  <27.163090, 41.926949, 25.472092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717785, 41.565334, 25.245388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.028578, 41.755447, 25.080267>,  <28.215054, 41.869514, 24.981194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.028578, 41.755447, 25.080267>,  <27.717785, 41.565334, 25.245388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028578, 41.755447, 25.080267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483274, -0.030111, 0.874951,
		0.403418, -0.879318, -0.253087,
		0.776982, 0.475281, -0.412804,
		28.261673, 41.898033, 24.956427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302961, 41.182362, 25.380186>,  <27.717785, 41.565334, 25.245388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302961, 41.182362, 25.380186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465836, 41.543129, 25.322571>,  <28.563560, 41.759590, 25.288002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465836, 41.543129, 25.322571>,  <28.302961, 41.182362, 25.380186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465836, 41.543129, 25.322571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599865, -0.145162, 0.786823,
		0.688740, -0.406785, -0.600136,
		0.407184, 0.901917, -0.144037,
		28.587992, 41.813705, 25.279360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900307, 41.041611, 25.618429>,  <28.302961, 41.182362, 25.380186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900307, 41.041611, 25.618429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886147, 41.440372, 25.590361>,  <28.877649, 41.679630, 25.573519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886147, 41.440372, 25.590361>,  <28.900307, 41.041611, 25.618429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886147, 41.440372, 25.590361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608155, 0.077207, 0.790055,
		0.793029, -0.014705, -0.609007,
		-0.035402, 0.996907, -0.070171,
		28.875526, 41.739445, 25.569309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684847, 41.284355, 25.629992>,  <28.900307, 41.041611, 25.618429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684847, 41.284355, 25.629992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422916, 41.557060, 25.760471>,  <29.265759, 41.720684, 25.838758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422916, 41.557060, 25.760471>,  <29.684847, 41.284355, 25.629992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422916, 41.557060, 25.760471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550616, 0.134692, 0.823820,
		0.517712, 0.719069, -0.463589,
		-0.654825, 0.681761, 0.326199,
		29.226469, 41.761589, 25.858332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108385, 41.866608, 25.684160>,  <29.684847, 41.284355, 25.629992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108385, 41.866608, 25.684160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774094, 41.920990, 25.896980>,  <29.573519, 41.953621, 26.024672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774094, 41.920990, 25.896980>,  <30.108385, 41.866608, 25.684160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774094, 41.920990, 25.896980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543199, 0.346857, 0.764608,
		-0.080591, 0.928012, -0.363730,
		-0.835728, 0.135957, 0.532048,
		29.523375, 41.961777, 26.056595>
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
