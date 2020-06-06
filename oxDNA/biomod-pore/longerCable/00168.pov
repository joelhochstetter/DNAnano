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
	<24.069128, 34.823856, 34.785069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370586, 34.968906, 35.004349>,  <24.551462, 35.055935, 35.135918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370586, 34.968906, 35.004349>,  <24.069128, 34.823856, 34.785069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370586, 34.968906, 35.004349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633133, -0.176523, -0.753646,
		-0.176523, 0.915064, -0.362626,
		0.753646, 0.362626, 0.548197,
		24.596680, 35.077694, 35.168808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.483858, 35.409290, 34.495445>,  <24.069128, 34.823856, 34.785069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.483858, 35.409290, 34.495445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682077, 35.148289, 34.724766>,  <24.801008, 34.991688, 34.862358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682077, 35.148289, 34.724766>,  <24.483858, 35.409290, 34.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682077, 35.148289, 34.724766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591254, -0.230109, -0.772961,
		0.636280, 0.722006, 0.271764,
		0.495547, -0.652501, 0.573302,
		24.830742, 34.952538, 34.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238602, 35.461151, 34.460560>,  <24.483858, 35.409290, 34.495445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238602, 35.461151, 34.460560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130333, 35.083282, 34.534679>,  <25.065372, 34.856564, 34.579151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130333, 35.083282, 34.534679>,  <25.238602, 35.461151, 34.460560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130333, 35.083282, 34.534679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576365, -0.313197, -0.754792,
		0.771064, -0.097501, 0.629249,
		-0.270672, -0.944670, 0.185298,
		25.049131, 34.799881, 34.590267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887625, 35.062477, 34.627022>,  <25.238602, 35.461151, 34.460560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887625, 35.062477, 34.627022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589235, 34.901432, 34.414825>,  <25.410202, 34.804806, 34.287506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589235, 34.901432, 34.414825>,  <25.887625, 35.062477, 34.627022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589235, 34.901432, 34.414825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613990, -0.107233, -0.781996,
		0.257958, -0.909066, 0.327195,
		-0.745972, -0.402617, -0.530495,
		25.365444, 34.780647, 34.255676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057669, 34.455261, 34.334335>,  <25.887625, 35.062477, 34.627022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057669, 34.455261, 34.334335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797396, 34.606380, 34.070858>,  <25.641232, 34.697052, 33.912769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797396, 34.606380, 34.070858>,  <26.057669, 34.455261, 34.334335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797396, 34.606380, 34.070858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732243, 0.082474, -0.676031,
		-0.201080, -0.922206, -0.330306,
		-0.650682, 0.377801, -0.658695,
		25.602192, 34.719719, 33.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979174, 34.069866, 33.644695>,  <26.057669, 34.455261, 34.334335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979174, 34.069866, 33.644695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920452, 34.465359, 33.656425>,  <25.885220, 34.702656, 33.663464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920452, 34.465359, 33.656425>,  <25.979174, 34.069866, 33.644695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920452, 34.465359, 33.656425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855374, 0.141780, -0.498231,
		-0.496774, -0.048060, -0.866548,
		-0.146804, 0.988731, 0.029323,
		25.876411, 34.761978, 33.665222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276133, 34.235203, 32.950294>,  <25.979174, 34.069866, 33.644695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276133, 34.235203, 32.950294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281521, 34.626434, 33.033424>,  <26.284754, 34.861172, 33.083302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281521, 34.626434, 33.033424>,  <26.276133, 34.235203, 32.950294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281521, 34.626434, 33.033424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811559, 0.110717, -0.573685,
		-0.584116, 0.176387, -0.792273,
		0.013473, 0.978074, 0.207820,
		26.285563, 34.919857, 33.095772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259161, 34.763512, 32.274376>,  <26.276133, 34.235203, 32.950294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259161, 34.763512, 32.274376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445889, 34.931187, 32.585854>,  <26.557924, 35.031792, 32.772739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445889, 34.931187, 32.585854>,  <26.259161, 34.763512, 32.274376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445889, 34.931187, 32.585854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845876, 0.045256, -0.531457,
		-0.258021, 0.906771, -0.333454,
		0.466819, 0.419188, 0.778692,
		26.585934, 35.056942, 32.819462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602999, 35.422096, 32.102413>,  <26.259161, 34.763512, 32.274376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602999, 35.422096, 32.102413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794413, 35.278755, 32.423058>,  <26.909262, 35.192749, 32.615444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794413, 35.278755, 32.423058>,  <26.602999, 35.422096, 32.102413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794413, 35.278755, 32.423058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806413, -0.181854, -0.562697,
		0.347421, 0.915703, 0.201957,
		0.478536, -0.358354, 0.801615,
		26.937973, 35.171249, 32.663544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310259, 35.628857, 32.035908>,  <26.602999, 35.422096, 32.102413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310259, 35.628857, 32.035908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338436, 35.317554, 32.285503>,  <27.355343, 35.130775, 32.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338436, 35.317554, 32.285503>,  <27.310259, 35.628857, 32.035908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338436, 35.317554, 32.285503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853045, -0.277250, -0.442094,
		0.517061, 0.563432, 0.644354,
		0.070443, -0.778252, 0.623988,
		27.359570, 35.084080, 32.472698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974741, 35.607544, 32.237198>,  <27.310259, 35.628857, 32.035908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974741, 35.607544, 32.237198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877243, 35.236431, 32.350204>,  <27.818745, 35.013763, 32.418007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877243, 35.236431, 32.350204>,  <27.974741, 35.607544, 32.237198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877243, 35.236431, 32.350204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741423, -0.366046, -0.562408,
		0.625204, 0.072380, 0.777098,
		-0.243746, -0.927778, 0.282517,
		27.804119, 34.958099, 32.434959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626139, 35.375847, 32.356178>,  <27.974741, 35.607544, 32.237198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626139, 35.375847, 32.356178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341822, 35.103359, 32.286079>,  <28.171230, 34.939865, 32.244022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341822, 35.103359, 32.286079>,  <28.626139, 35.375847, 32.356178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341822, 35.103359, 32.286079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586549, -0.436513, -0.682215,
		0.388243, -0.587702, 0.709840,
		-0.710793, -0.681221, -0.175243,
		28.128584, 34.898994, 32.233505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950680, 34.605618, 32.264187>,  <28.626139, 35.375847, 32.356178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950680, 34.605618, 32.264187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600468, 34.642635, 32.074497>,  <28.390341, 34.664848, 31.960684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600468, 34.642635, 32.074497>,  <28.950680, 34.605618, 32.264187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600468, 34.642635, 32.074497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365182, -0.515914, -0.774903,
		-0.316372, -0.851626, 0.417901,
		-0.875529, 0.092548, -0.474219,
		28.337809, 34.670399, 31.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653240, 34.600586, 31.512609>,  <28.950680, 34.605618, 32.264187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653240, 34.600586, 31.512609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548212, 34.257690, 31.689785>,  <28.485195, 34.051952, 31.796091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548212, 34.257690, 31.689785>,  <28.653240, 34.600586, 31.512609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548212, 34.257690, 31.689785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746509, 0.471328, 0.469653,
		-0.611376, -0.207341, -0.763694,
		-0.262572, -0.857239, 0.442941,
		28.469440, 34.000519, 31.822668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823662, 34.362202, 31.467979>,  <28.653240, 34.600586, 31.512609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823662, 34.362202, 31.467979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027676, 34.264477, 31.797871>,  <28.150084, 34.205841, 31.995806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027676, 34.264477, 31.797871>,  <27.823662, 34.362202, 31.467979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027676, 34.264477, 31.797871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763008, 0.314140, 0.564921,
		-0.397097, -0.917403, -0.026190,
		0.510033, -0.244312, 0.824730,
		28.180685, 34.191185, 32.045288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370958, 33.943233, 31.961737>,  <27.823662, 34.362202, 31.467979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370958, 33.943233, 31.961737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652761, 34.155621, 32.150097>,  <27.821844, 34.283051, 32.263111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652761, 34.155621, 32.150097>,  <27.370958, 33.943233, 31.961737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652761, 34.155621, 32.150097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693571, 0.374464, 0.615416,
		0.150429, -0.760167, 0.632074,
		0.704507, 0.530965, 0.470899,
		27.864113, 34.314911, 32.291367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460709, 33.744770, 32.721680>,  <27.370958, 33.943233, 31.961737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460709, 33.744770, 32.721680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571016, 34.121090, 32.642834>,  <27.637201, 34.346882, 32.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571016, 34.121090, 32.642834>,  <27.460709, 33.744770, 32.721680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571016, 34.121090, 32.642834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800108, 0.338315, 0.495349,
		0.532709, 0.021111, 0.846035,
		0.275769, 0.940796, -0.197114,
		27.653748, 34.403328, 32.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219919, 34.062519, 33.278587>,  <27.460709, 33.744770, 32.721680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219919, 34.062519, 33.278587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286280, 34.373791, 33.036293>,  <27.326096, 34.560555, 32.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286280, 34.373791, 33.036293>,  <27.219919, 34.062519, 33.278587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286280, 34.373791, 33.036293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563329, 0.578949, 0.589473,
		0.809405, 0.243436, 0.534418,
		0.165902, 0.778176, -0.605738,
		27.336050, 34.607243, 32.854572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545879, 34.626331, 33.690655>,  <27.219919, 34.062519, 33.278587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545879, 34.626331, 33.690655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339153, 34.778080, 33.383675>,  <27.215118, 34.869129, 33.199486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339153, 34.778080, 33.383675>,  <27.545879, 34.626331, 33.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339153, 34.778080, 33.383675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513300, 0.580125, 0.632438,
		0.685147, 0.720785, -0.105085,
		-0.516814, 0.379373, -0.767450,
		27.184109, 34.891891, 33.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378393, 35.316776, 33.950615>,  <27.545879, 34.626331, 33.690655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378393, 35.316776, 33.950615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151161, 35.254318, 33.627403>,  <27.014822, 35.216843, 33.433475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151161, 35.254318, 33.627403>,  <27.378393, 35.316776, 33.950615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151161, 35.254318, 33.627403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751823, 0.497820, 0.432364,
		0.334738, 0.853108, -0.400197,
		-0.568079, -0.156149, -0.808025,
		26.980738, 35.207474, 33.384995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897764, 35.938908, 33.861340>,  <27.378393, 35.316776, 33.950615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897764, 35.938908, 33.861340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737501, 35.666927, 33.615692>,  <26.641344, 35.503738, 33.468304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737501, 35.666927, 33.615692>,  <26.897764, 35.938908, 33.861340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737501, 35.666927, 33.615692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805151, 0.581174, -0.118186,
		0.437270, 0.447107, -0.780314,
		-0.400656, -0.679950, -0.614119,
		26.617304, 35.462944, 33.431458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324083, 36.083408, 34.397877>,  <26.897764, 35.938908, 33.861340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324083, 36.083408, 34.397877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508268, 36.352264, 34.629807>,  <27.618780, 36.513577, 34.768967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508268, 36.352264, 34.629807>,  <27.324083, 36.083408, 34.397877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508268, 36.352264, 34.629807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014950, -0.647231, 0.762148,
		0.887553, -0.359609, -0.287977,
		0.460462, 0.672141, 0.579828,
		27.646406, 36.553905, 34.803757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926291, 35.808743, 34.733208>,  <27.324083, 36.083408, 34.397877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926291, 35.808743, 34.733208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832235, 36.115936, 34.971504>,  <27.775803, 36.300251, 35.114483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832235, 36.115936, 34.971504>,  <27.926291, 35.808743, 34.733208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832235, 36.115936, 34.971504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250574, -0.544311, 0.800586,
		0.939107, 0.337526, -0.064449,
		-0.235139, 0.767985, 0.595742,
		27.761694, 36.346333, 35.150227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208746, 35.591412, 35.336971>,  <27.926291, 35.808743, 34.733208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208746, 35.591412, 35.336971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026501, 35.905392, 35.504906>,  <27.917154, 36.093781, 35.605667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026501, 35.905392, 35.504906>,  <28.208746, 35.591412, 35.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026501, 35.905392, 35.504906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295963, -0.311226, 0.903075,
		0.839537, 0.535709, -0.090518,
		-0.455613, 0.784955, 0.419836,
		27.889816, 36.140877, 35.630856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608850, 35.967377, 35.858448>,  <28.208746, 35.591412, 35.336971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608850, 35.967377, 35.858448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234995, 36.051235, 35.973335>,  <28.010681, 36.101551, 36.042267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234995, 36.051235, 35.973335>,  <28.608850, 35.967377, 35.858448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234995, 36.051235, 35.973335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225406, -0.275412, 0.934527,
		0.275026, 0.938187, 0.210155,
		-0.934640, 0.209649, 0.287218,
		27.954603, 36.114128, 36.059502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596443, 36.262894, 36.609928>,  <28.608850, 35.967377, 35.858448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596443, 36.262894, 36.609928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222027, 36.132645, 36.556561>,  <27.997377, 36.054497, 36.524540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222027, 36.132645, 36.556561>,  <28.596443, 36.262894, 36.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222027, 36.132645, 36.556561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043999, -0.267869, 0.962450,
		-0.349131, 0.906762, 0.236409,
		-0.936040, -0.325619, -0.133418,
		27.941216, 36.034958, 36.516537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136492, 36.684666, 36.975319>,  <28.596443, 36.262894, 36.609928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136492, 36.684666, 36.975319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022169, 36.301384, 36.980495>,  <27.953575, 36.071415, 36.983601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022169, 36.301384, 36.980495>,  <28.136492, 36.684666, 36.975319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022169, 36.301384, 36.980495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066931, -0.006492, 0.997736,
		-0.955947, 0.286026, 0.065989,
		-0.285807, -0.958200, 0.012938,
		27.936426, 36.013924, 36.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474581, 36.507210, 37.417061>,  <28.136492, 36.684666, 36.975319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474581, 36.507210, 37.417061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724266, 36.195446, 37.395592>,  <27.874077, 36.008389, 37.382710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724266, 36.195446, 37.395592>,  <27.474581, 36.507210, 37.417061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724266, 36.195446, 37.395592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089675, 0.003232, 0.995966,
		-0.776090, -0.626509, 0.071911,
		0.624214, -0.779408, -0.053674,
		27.911530, 35.961624, 37.379490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333513, 36.102081, 38.027084>,  <27.474581, 36.507210, 37.417061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333513, 36.102081, 38.027084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704647, 36.046837, 37.888493>,  <27.927328, 36.013691, 37.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704647, 36.046837, 37.888493>,  <27.333513, 36.102081, 38.027084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704647, 36.046837, 37.888493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361878, 0.108272, 0.925917,
		-0.090367, -0.984481, 0.150439,
		0.927835, -0.138113, -0.346477,
		27.982998, 36.005402, 37.784550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640587, 35.649143, 38.488785>,  <27.333513, 36.102081, 38.027084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640587, 35.649143, 38.488785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915665, 35.876858, 38.308567>,  <28.080711, 36.013485, 38.200436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915665, 35.876858, 38.308567>,  <27.640587, 35.649143, 38.488785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915665, 35.876858, 38.308567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390844, 0.232665, 0.890566,
		0.611812, -0.788530, -0.062499,
		0.687697, 0.569287, -0.450540,
		28.121973, 36.047646, 38.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303078, 35.487953, 38.828632>,  <27.640587, 35.649143, 38.488785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303078, 35.487953, 38.828632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301332, 35.854012, 38.667389>,  <28.300285, 36.073647, 38.570644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301332, 35.854012, 38.667389>,  <28.303078, 35.487953, 38.828632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301332, 35.854012, 38.667389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136599, 0.399876, 0.906333,
		0.990617, -0.051108, -0.126753,
		-0.004365, 0.915143, -0.403106,
		28.300022, 36.128555, 38.546455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907829, 35.893082, 39.093258>,  <28.303078, 35.487953, 38.828632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907829, 35.893082, 39.093258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649771, 36.170021, 38.963989>,  <28.494936, 36.336185, 38.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649771, 36.170021, 38.963989>,  <28.907829, 35.893082, 39.093258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649771, 36.170021, 38.963989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074598, 0.363866, 0.928459,
		0.760410, 0.623099, -0.183098,
		-0.645145, 0.692351, -0.323169,
		28.456226, 36.377728, 38.867039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235283, 36.549618, 39.231087>,  <28.907829, 35.893082, 39.093258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235283, 36.549618, 39.231087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841162, 36.603050, 39.188507>,  <28.604689, 36.635109, 39.162960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841162, 36.603050, 39.188507>,  <29.235283, 36.549618, 39.231087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841162, 36.603050, 39.188507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037365, 0.439557, 0.897437,
		0.166675, 0.888226, -0.428106,
		-0.985304, 0.133584, -0.106452,
		28.545570, 36.643124, 39.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048349, 37.196301, 39.512623>,  <29.235283, 36.549618, 39.231087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048349, 37.196301, 39.512623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736786, 36.947552, 39.545055>,  <28.549849, 36.798302, 39.564514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736786, 36.947552, 39.545055>,  <29.048349, 37.196301, 39.512623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736786, 36.947552, 39.545055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109978, 0.262728, 0.958582,
		-0.617419, 0.737730, -0.273034,
		-0.778908, -0.621874, 0.081079,
		28.503113, 36.760990, 39.569378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561417, 37.280373, 40.113556>,  <29.048349, 37.196301, 39.512623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561417, 37.280373, 40.113556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419956, 36.908951, 40.068455>,  <28.335079, 36.686096, 40.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419956, 36.908951, 40.068455>,  <28.561417, 37.280373, 40.113556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419956, 36.908951, 40.068455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349393, 0.019319, 0.936777,
		-0.867672, 0.370689, -0.331263,
		-0.353653, -0.928556, -0.112754,
		28.313860, 36.630383, 40.034630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825480, 37.148003, 40.224930>,  <28.561417, 37.280373, 40.113556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825480, 37.148003, 40.224930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012228, 36.818310, 40.353104>,  <28.124277, 36.620495, 40.430008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012228, 36.818310, 40.353104>,  <27.825480, 37.148003, 40.224930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012228, 36.818310, 40.353104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492561, 0.058568, 0.868305,
		-0.734449, -0.563219, -0.378640,
		0.466870, -0.824229, 0.320435,
		28.152288, 36.571041, 40.449234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414419, 36.663845, 39.720100>,  <27.825480, 37.148003, 40.224930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414419, 36.663845, 39.720100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773304, 36.802425, 39.610569>,  <27.988634, 36.885574, 39.544849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773304, 36.802425, 39.610569>,  <27.414419, 36.663845, 39.720100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773304, 36.802425, 39.610569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088054, -0.467285, -0.879711,
		-0.432732, 0.813399, -0.388747,
		0.897212, 0.346448, -0.273832,
		28.042467, 36.906361, 39.528419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262905, 36.762741, 39.121201>,  <27.414419, 36.663845, 39.720100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262905, 36.762741, 39.121201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662748, 36.755665, 39.129910>,  <27.902655, 36.751419, 39.135136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662748, 36.755665, 39.129910>,  <27.262905, 36.762741, 39.121201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662748, 36.755665, 39.129910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015264, -0.308097, -0.951232,
		0.023539, 0.951190, -0.307705,
		0.999606, -0.017694, 0.021771,
		27.962631, 36.750355, 39.136440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603746, 37.203407, 38.530003>,  <27.262905, 36.762741, 39.121201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603746, 37.203407, 38.530003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877529, 36.928917, 38.628483>,  <28.041798, 36.764221, 38.687569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877529, 36.928917, 38.628483>,  <27.603746, 37.203407, 38.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877529, 36.928917, 38.628483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106754, -0.239716, -0.964956,
		0.721196, 0.686752, -0.090817,
		0.684455, -0.686228, 0.246196,
		28.082867, 36.723049, 38.702343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912085, 37.877193, 38.242054>,  <27.603746, 37.203407, 38.530003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912085, 37.877193, 38.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771442, 37.745708, 38.592670>,  <27.687057, 37.666817, 38.803040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771442, 37.745708, 38.592670>,  <27.912085, 37.877193, 38.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771442, 37.745708, 38.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055167, 0.941975, 0.331118,
		-0.934521, 0.068066, -0.349337,
		-0.351605, -0.328709, 0.876541,
		27.665960, 37.647095, 38.855633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168468, 37.306396, 38.022598>,  <27.912085, 37.877193, 38.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168468, 37.306396, 38.022598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196846, 36.934322, 38.166668>,  <28.213873, 36.711079, 38.253109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196846, 36.934322, 38.166668>,  <28.168468, 37.306396, 38.022598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196846, 36.934322, 38.166668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297496, -0.324919, -0.897732,
		0.952083, 0.170840, 0.253675,
		0.070945, -0.930183, 0.360174,
		28.218130, 36.655266, 38.274719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752975, 37.045681, 37.746178>,  <28.168468, 37.306396, 38.022598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752975, 37.045681, 37.746178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582918, 36.712692, 37.888298>,  <28.480885, 36.512897, 37.973568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582918, 36.712692, 37.888298>,  <28.752975, 37.045681, 37.746178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582918, 36.712692, 37.888298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211719, -0.473113, -0.855184,
		0.880016, -0.288353, 0.377392,
		-0.425143, -0.832476, 0.355297,
		28.455376, 36.462948, 37.994888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188414, 36.477882, 37.776348>,  <28.752975, 37.045681, 37.746178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188414, 36.477882, 37.776348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827570, 36.309464, 37.738571>,  <28.611063, 36.208412, 37.715904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827570, 36.309464, 37.738571>,  <29.188414, 36.477882, 37.776348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827570, 36.309464, 37.738571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385035, -0.686628, -0.616676,
		0.194800, -0.592674, 0.781531,
		-0.902109, -0.421045, -0.094445,
		28.556938, 36.183151, 37.710239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867645, 36.531689, 37.776009>,  <29.188414, 36.477882, 37.776348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867645, 36.531689, 37.776009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982416, 36.179871, 37.624180>,  <30.051279, 35.968781, 37.533085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982416, 36.179871, 37.624180>,  <29.867645, 36.531689, 37.776009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982416, 36.179871, 37.624180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592787, -0.474276, 0.650897,
		-0.752514, 0.038245, -0.657465,
		0.286926, -0.879546, -0.379570,
		30.068495, 35.916008, 37.510307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976826, 37.177372, 38.036816>,  <29.867645, 36.531689, 37.776009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976826, 37.177372, 38.036816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254408, 36.936485, 38.194679>,  <30.420958, 36.791954, 38.289398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254408, 36.936485, 38.194679>,  <29.976826, 37.177372, 38.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254408, 36.936485, 38.194679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708278, 0.669531, -0.223765,
		-0.129483, 0.434814, 0.891163,
		0.693957, -0.602217, 0.394662,
		30.462595, 36.755821, 38.313076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425554, 37.593891, 38.520256>,  <29.976826, 37.177372, 38.036816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425554, 37.593891, 38.520256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644501, 37.297924, 38.363834>,  <30.775867, 37.120346, 38.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644501, 37.297924, 38.363834>,  <30.425554, 37.593891, 38.520256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644501, 37.297924, 38.363834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728412, 0.651281, -0.212720,
		0.412078, -0.168410, 0.895450,
		0.547365, -0.739913, -0.391050,
		30.808710, 37.075951, 38.246521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146309, 37.758579, 38.551746>,  <30.425554, 37.593891, 38.520256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146309, 37.758579, 38.551746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185686, 37.474541, 38.272869>,  <31.209312, 37.304119, 38.105545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185686, 37.474541, 38.272869>,  <31.146309, 37.758579, 38.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185686, 37.474541, 38.272869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665345, 0.567946, -0.484513,
		0.740017, -0.416174, 0.528369,
		0.098444, -0.710096, -0.697189,
		31.215219, 37.261513, 38.063713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827126, 37.687187, 38.418213>,  <31.146309, 37.758579, 38.551746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827126, 37.687187, 38.418213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644772, 37.554916, 38.087681>,  <31.535358, 37.475555, 37.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644772, 37.554916, 38.087681>,  <31.827126, 37.687187, 38.418213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644772, 37.554916, 38.087681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713147, 0.419782, -0.561430,
		0.532532, -0.845242, 0.044451,
		-0.455884, -0.330679, -0.826330,
		31.508005, 37.455711, 37.839783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257751, 37.245224, 37.961548>,  <31.827126, 37.687187, 38.418213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257751, 37.245224, 37.961548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998827, 37.475506, 37.761730>,  <31.843472, 37.613674, 37.641838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998827, 37.475506, 37.761730>,  <32.257751, 37.245224, 37.961548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998827, 37.475506, 37.761730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762214, 0.491861, -0.420835,
		0.003431, -0.653175, -0.757199,
		-0.647316, 0.575704, -0.499547,
		31.804632, 37.648216, 37.611866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369823, 37.339127, 37.121727>,  <32.257751, 37.245224, 37.961548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369823, 37.339127, 37.121727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221027, 37.653801, 37.318806>,  <32.131752, 37.842606, 37.437054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221027, 37.653801, 37.318806>,  <32.369823, 37.339127, 37.121727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221027, 37.653801, 37.318806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744341, 0.569936, -0.348037,
		-0.554601, 0.237268, -0.797572,
		-0.371987, 0.786687, 0.492695,
		32.109432, 37.889809, 37.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503735, 37.932079, 36.645287>,  <32.369823, 37.339127, 37.121727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503735, 37.932079, 36.645287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468151, 38.002552, 37.037418>,  <32.446800, 38.044834, 37.272697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468151, 38.002552, 37.037418>,  <32.503735, 37.932079, 36.645287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468151, 38.002552, 37.037418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892322, 0.451399, -0.000146,
		-0.442546, 0.874757, -0.197365,
		-0.088963, 0.176178, 0.980330,
		32.441463, 38.055405, 37.331516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712193, 38.620602, 36.734657>,  <32.503735, 37.932079, 36.645287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712193, 38.620602, 36.734657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751900, 38.469128, 37.102734>,  <32.775723, 38.378242, 37.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751900, 38.469128, 37.102734>,  <32.712193, 38.620602, 36.734657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751900, 38.469128, 37.102734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887351, 0.452157, 0.090350,
		-0.450283, 0.807561, 0.380908,
		0.099267, -0.378682, 0.920188,
		32.781681, 38.355522, 37.378792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804604, 39.178654, 37.319183>,  <32.712193, 38.620602, 36.734657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804604, 39.178654, 37.319183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991890, 38.825207, 37.319599>,  <33.104263, 38.613140, 37.319851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991890, 38.825207, 37.319599>,  <32.804604, 39.178654, 37.319183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991890, 38.825207, 37.319599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881444, 0.466983, -0.070601,
		0.061897, 0.033975, 0.997504,
		0.468216, -0.883613, 0.001042,
		33.132355, 38.560123, 37.319912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295738, 39.261196, 37.828701>,  <32.804604, 39.178654, 37.319183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295738, 39.261196, 37.828701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367832, 39.000660, 37.533875>,  <33.411087, 38.844337, 37.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367832, 39.000660, 37.533875>,  <33.295738, 39.261196, 37.828701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367832, 39.000660, 37.533875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813215, 0.520223, -0.260863,
		0.553351, -0.552378, 0.623443,
		0.180235, -0.651341, -0.737068,
		33.421902, 38.805256, 37.312756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667591, 39.129147, 38.402752>,  <33.295738, 39.261196, 37.828701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667591, 39.129147, 38.402752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050797, 39.192051, 38.498657>,  <34.280720, 39.229794, 38.556198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050797, 39.192051, 38.498657>,  <33.667591, 39.129147, 38.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050797, 39.192051, 38.498657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217589, -0.943291, -0.250713,
		0.186738, 0.292355, -0.937901,
		0.958011, 0.157259, 0.239761,
		34.338200, 39.239227, 38.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186691, 38.805401, 37.893742>,  <33.667591, 39.129147, 38.402752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186691, 38.805401, 37.893742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356995, 38.819592, 38.255398>,  <34.459175, 38.828106, 38.472393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356995, 38.819592, 38.255398>,  <34.186691, 38.805401, 37.893742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356995, 38.819592, 38.255398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430920, -0.886589, -0.168133,
		0.795637, 0.461196, -0.392760,
		0.425759, 0.035475, 0.904141,
		34.484722, 38.830235, 38.526642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886726, 38.866638, 37.849350>,  <34.186691, 38.805401, 37.893742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886726, 38.866638, 37.849350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765297, 38.666245, 38.173538>,  <34.692440, 38.546009, 38.368050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765297, 38.666245, 38.173538>,  <34.886726, 38.866638, 37.849350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765297, 38.666245, 38.173538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351188, -0.849557, -0.393599,
		0.885725, 0.165140, 0.433842,
		-0.303575, -0.500980, 0.810470,
		34.674225, 38.515949, 38.416679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446659, 38.507111, 38.324169>,  <34.886726, 38.866638, 37.849350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446659, 38.507111, 38.324169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091946, 38.323193, 38.342960>,  <34.879116, 38.212841, 38.354237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091946, 38.323193, 38.342960>,  <35.446659, 38.507111, 38.324169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091946, 38.323193, 38.342960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349084, -0.732931, -0.583911,
		0.302912, -0.501402, 0.810457,
		-0.886783, -0.459791, 0.046982,
		34.825912, 38.185257, 38.357056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529144, 37.813484, 38.518085>,  <35.446659, 38.507111, 38.324169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529144, 37.813484, 38.518085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205311, 37.847630, 38.285778>,  <35.011009, 37.868114, 38.146393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205311, 37.847630, 38.285778>,  <35.529144, 37.813484, 38.518085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205311, 37.847630, 38.285778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334858, -0.745442, -0.576356,
		-0.482124, -0.661083, 0.574915,
		-0.809585, 0.085360, -0.580764,
		34.962437, 37.873238, 38.111549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258503, 37.162178, 38.315994>,  <35.529144, 37.813484, 38.518085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258503, 37.162178, 38.315994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146412, 37.426529, 38.037506>,  <35.079159, 37.585140, 37.870415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146412, 37.426529, 38.037506>,  <35.258503, 37.162178, 38.315994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146412, 37.426529, 38.037506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127853, -0.693120, -0.709393,
		-0.951382, -0.287803, 0.109735,
		-0.280225, 0.660874, -0.696218,
		35.062344, 37.624790, 37.828640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637169, 36.869110, 37.830227>,  <35.258503, 37.162178, 38.315994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637169, 36.869110, 37.830227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861073, 37.140976, 37.640602>,  <34.995415, 37.304096, 37.526829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861073, 37.140976, 37.640602>,  <34.637169, 36.869110, 37.830227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861073, 37.140976, 37.640602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131677, -0.637769, -0.758888,
		-0.818128, 0.362371, -0.446492,
		0.559758, 0.679660, -0.474061,
		35.028999, 37.344875, 37.498383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560719, 36.868927, 37.073517>,  <34.637169, 36.869110, 37.830227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560719, 36.868927, 37.073517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941349, 36.988239, 37.103279>,  <35.169727, 37.059826, 37.121136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941349, 36.988239, 37.103279>,  <34.560719, 36.868927, 37.073517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941349, 36.988239, 37.103279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269789, -0.694220, -0.667287,
		-0.147383, 0.655048, -0.741074,
		0.951573, 0.298280, 0.074409,
		35.226822, 37.077724, 37.125603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777855, 36.987183, 36.373604>,  <34.560719, 36.868927, 37.073517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777855, 36.987183, 36.373604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068401, 36.839355, 36.605396>,  <35.242729, 36.750660, 36.744473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068401, 36.839355, 36.605396>,  <34.777855, 36.987183, 36.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068401, 36.839355, 36.605396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204708, -0.688532, -0.695714,
		0.656110, 0.623971, -0.424475,
		0.726370, -0.369572, 0.579485,
		35.286312, 36.728485, 36.779243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535763, 37.085884, 36.157246>,  <34.777855, 36.987183, 36.373604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535763, 37.085884, 36.157246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499363, 36.760372, 36.386848>,  <35.477524, 36.565067, 36.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499363, 36.760372, 36.386848>,  <35.535763, 37.085884, 36.157246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499363, 36.760372, 36.386848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243842, -0.577064, -0.779447,
		0.965536, 0.069036, 0.250947,
		-0.091003, -0.813776, 0.574010,
		35.472061, 36.516239, 36.559052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171513, 36.664368, 36.178757>,  <35.535763, 37.085884, 36.157246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171513, 36.664368, 36.178757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852325, 36.425400, 36.210621>,  <35.660812, 36.282021, 36.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852325, 36.425400, 36.210621>,  <36.171513, 36.664368, 36.178757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852325, 36.425400, 36.210621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270609, -0.473234, -0.838344,
		0.538540, -0.647411, 0.539291,
		-0.797963, -0.597418, 0.079660,
		35.612938, 36.246174, 36.234520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317108, 35.899086, 36.244106>,  <36.171513, 36.664368, 36.178757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317108, 35.899086, 36.244106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957565, 35.912155, 36.069298>,  <35.741840, 35.919994, 35.964413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957565, 35.912155, 36.069298>,  <36.317108, 35.899086, 36.244106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957565, 35.912155, 36.069298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337402, -0.584793, -0.737684,
		-0.279667, -0.810524, 0.514623,
		-0.898859, 0.032671, -0.437020,
		35.687908, 35.921955, 35.938190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170967, 35.229927, 36.104977>,  <36.317108, 35.899086, 36.244106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170967, 35.229927, 36.104977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971207, 35.476398, 35.861362>,  <35.851349, 35.624279, 35.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971207, 35.476398, 35.861362>,  <36.170967, 35.229927, 36.104977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971207, 35.476398, 35.861362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224550, -0.586897, -0.777901,
		-0.836765, -0.525244, 0.154735,
		-0.499401, 0.616175, -0.609038,
		35.821384, 35.661251, 35.678650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807961, 34.696404, 35.639488>,  <36.170967, 35.229927, 36.104977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807961, 34.696404, 35.639488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875389, 35.053997, 35.473412>,  <35.915848, 35.268551, 35.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875389, 35.053997, 35.473412>,  <35.807961, 34.696404, 35.639488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875389, 35.053997, 35.473412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179910, -0.442046, -0.878765,
		-0.969131, 0.073442, -0.235354,
		0.168575, 0.893981, -0.415187,
		35.925961, 35.322193, 35.348854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465843, 34.638565, 35.021496>,  <35.807961, 34.696404, 35.639488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465843, 34.638565, 35.021496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711571, 34.946777, 34.953491>,  <35.859005, 35.131702, 34.912689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711571, 34.946777, 34.953491>,  <35.465843, 34.638565, 35.021496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711571, 34.946777, 34.953491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101235, -0.290649, -0.951459,
		-0.782540, 0.567284, -0.256555,
		0.614315, 0.770527, -0.170015,
		35.895866, 35.177937, 34.902485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205170, 34.822586, 34.478054>,  <35.465843, 34.638565, 35.021496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205170, 34.822586, 34.478054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586094, 34.941849, 34.504009>,  <35.814648, 35.013405, 34.519585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586094, 34.941849, 34.504009>,  <35.205170, 34.822586, 34.478054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586094, 34.941849, 34.504009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206955, -0.474852, -0.855386,
		-0.224222, 0.828022, -0.513911,
		0.952310, 0.298153, 0.064891,
		35.871788, 35.031296, 34.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351757, 35.044689, 33.812599>,  <35.205170, 34.822586, 34.478054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351757, 35.044689, 33.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712257, 34.975662, 33.971584>,  <35.928558, 34.934246, 34.066975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712257, 34.975662, 33.971584>,  <35.351757, 35.044689, 33.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712257, 34.975662, 33.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302253, -0.406880, -0.862028,
		0.310479, 0.897033, -0.314539,
		0.901247, -0.172571, 0.397459,
		35.982632, 34.923889, 34.090820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782963, 35.332611, 33.353653>,  <35.351757, 35.044689, 33.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782963, 35.332611, 33.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010681, 35.073673, 33.556374>,  <36.147312, 34.918312, 33.678005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010681, 35.073673, 33.556374>,  <35.782963, 35.332611, 33.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010681, 35.073673, 33.556374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272043, -0.433386, -0.859168,
		0.775816, 0.626994, -0.070621,
		0.569299, -0.647345, 0.506797,
		36.181473, 34.879471, 33.708412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416111, 35.414703, 32.976433>,  <35.782963, 35.332611, 33.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416111, 35.414703, 32.976433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467571, 35.081341, 33.191425>,  <36.498447, 34.881325, 33.320423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467571, 35.081341, 33.191425>,  <36.416111, 35.414703, 32.976433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467571, 35.081341, 33.191425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341442, -0.471625, -0.813011,
		0.931057, 0.288114, 0.223884,
		0.128651, -0.833403, 0.537484,
		36.506165, 34.831322, 33.352669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047401, 35.068035, 32.756184>,  <36.416111, 35.414703, 32.976433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047401, 35.068035, 32.756184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830227, 34.776321, 32.922729>,  <36.699921, 34.601292, 33.022655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830227, 34.776321, 32.922729>,  <37.047401, 35.068035, 32.756184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830227, 34.776321, 32.922729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185092, -0.587535, -0.787746,
		0.819122, -0.350630, 0.453980,
		-0.542936, -0.729288, 0.416364,
		36.667347, 34.557533, 33.047638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475735, 34.449100, 32.726875>,  <37.047401, 35.068035, 32.756184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475735, 34.449100, 32.726875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096451, 34.328594, 32.767162>,  <36.868881, 34.256290, 32.791336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096451, 34.328594, 32.767162>,  <37.475735, 34.449100, 32.726875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096451, 34.328594, 32.767162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104295, -0.594750, -0.797117,
		0.300044, -0.745327, 0.595366,
		-0.948207, -0.301264, 0.100718,
		36.811989, 34.238216, 32.797379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505856, 33.809563, 32.681618>,  <37.475735, 34.449100, 32.726875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505856, 33.809563, 32.681618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114845, 33.844807, 32.605003>,  <36.880241, 33.865955, 32.559036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114845, 33.844807, 32.605003>,  <37.505856, 33.809563, 32.681618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114845, 33.844807, 32.605003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090495, -0.645176, -0.758656,
		-0.190423, -0.758936, 0.622699,
		-0.977522, 0.088114, -0.191537,
		36.821590, 33.871243, 32.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201305, 33.150951, 32.432442>,  <37.505856, 33.809563, 32.681618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201305, 33.150951, 32.432442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901123, 33.394871, 32.330482>,  <36.721016, 33.541222, 32.269306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901123, 33.394871, 32.330482>,  <37.201305, 33.150951, 32.432442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901123, 33.394871, 32.330482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209228, -0.585023, -0.783563,
		-0.626934, -0.534695, 0.566618,
		-0.750452, 0.609795, -0.254897,
		36.675987, 33.577808, 32.254013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611729, 32.687996, 32.261799>,  <37.201305, 33.150951, 32.432442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611729, 32.687996, 32.261799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566677, 33.039799, 32.076851>,  <36.539646, 33.250881, 31.965883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566677, 33.039799, 32.076851>,  <36.611729, 32.687996, 32.261799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566677, 33.039799, 32.076851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197938, -0.475859, -0.856959,
		-0.973722, -0.004998, 0.227683,
		-0.112628, 0.879507, -0.462365,
		36.532890, 33.303650, 31.938141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107002, 32.573818, 31.775503>,  <36.611729, 32.687996, 32.261799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107002, 32.573818, 31.775503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236088, 32.921387, 31.625397>,  <36.313538, 33.129929, 31.535332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236088, 32.921387, 31.625397>,  <36.107002, 32.573818, 31.775503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236088, 32.921387, 31.625397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159286, -0.340967, -0.926482,
		-0.932998, 0.358761, 0.028374,
		0.322711, 0.868926, -0.375267,
		36.332901, 33.182064, 31.512817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570026, 32.863396, 31.229759>,  <36.107002, 32.573818, 31.775503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570026, 32.863396, 31.229759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929352, 33.021935, 31.153923>,  <36.144947, 33.117058, 31.108421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929352, 33.021935, 31.153923>,  <35.570026, 32.863396, 31.229759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929352, 33.021935, 31.153923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131286, -0.169646, -0.976721,
		-0.419288, 0.902289, -0.100359,
		0.898311, 0.396351, -0.189588,
		36.198845, 33.140839, 31.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466267, 33.340126, 30.688196>,  <35.570026, 32.863396, 31.229759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466267, 33.340126, 30.688196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861900, 33.281204, 30.686853>,  <36.099281, 33.245850, 30.686049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861900, 33.281204, 30.686853>,  <35.466267, 33.340126, 30.688196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861900, 33.281204, 30.686853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022902, 0.176190, -0.984090,
		0.145554, 0.973272, 0.177640,
		0.989085, -0.147306, -0.003355,
		36.158627, 33.237011, 30.685846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581623, 33.739132, 30.221725>,  <35.466267, 33.340126, 30.688196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581623, 33.739132, 30.221725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924648, 33.533386, 30.222984>,  <36.130463, 33.409939, 30.223740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924648, 33.533386, 30.222984>,  <35.581623, 33.739132, 30.221725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924648, 33.533386, 30.222984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017466, 0.023002, -0.999583,
		0.514077, 0.857264, 0.028710,
		0.857566, -0.514364, 0.003148,
		36.181919, 33.379078, 30.223928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964378, 33.999626, 29.723768>,  <35.581623, 33.739132, 30.221725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964378, 33.999626, 29.723768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152836, 33.649479, 29.767139>,  <36.265911, 33.439392, 29.793161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152836, 33.649479, 29.767139>,  <35.964378, 33.999626, 29.723768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152836, 33.649479, 29.767139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008863, -0.118220, -0.992948,
		0.882011, 0.468784, -0.047941,
		0.471146, -0.875366, 0.108427,
		36.294178, 33.386868, 29.799667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439335, 33.976837, 29.203365>,  <35.964378, 33.999626, 29.723768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439335, 33.976837, 29.203365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381332, 33.598698, 29.320183>,  <36.346531, 33.371815, 29.390274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381332, 33.598698, 29.320183>,  <36.439335, 33.976837, 29.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381332, 33.598698, 29.320183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127329, -0.274880, -0.953010,
		0.981204, -0.175374, -0.080512,
		-0.145002, -0.945349, 0.292044,
		36.337833, 33.315094, 29.407797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019108, 33.426910, 28.960875>,  <36.439335, 33.976837, 29.203365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019108, 33.426910, 28.960875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662163, 33.253891, 29.012409>,  <36.447998, 33.150078, 29.043329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662163, 33.253891, 29.012409>,  <37.019108, 33.426910, 28.960875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662163, 33.253891, 29.012409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025762, -0.333814, -0.942287,
		0.450592, -0.837538, 0.309025,
		-0.892358, -0.432548, 0.128837,
		36.394455, 33.124126, 29.051060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064545, 32.935753, 28.539158>,  <37.019108, 33.426910, 28.960875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064545, 32.935753, 28.539158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672867, 32.904503, 28.614073>,  <36.437859, 32.885754, 28.659021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672867, 32.904503, 28.614073>,  <37.064545, 32.935753, 28.539158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672867, 32.904503, 28.614073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143354, -0.386913, -0.910905,
		0.143629, -0.918801, 0.367663,
		-0.979194, -0.078126, 0.187286,
		36.379108, 32.881065, 28.670258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961891, 32.373699, 28.406687>,  <37.064545, 32.935753, 28.539158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961891, 32.373699, 28.406687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591549, 32.519844, 28.368105>,  <36.369343, 32.607529, 28.344955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591549, 32.519844, 28.368105>,  <36.961891, 32.373699, 28.406687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591549, 32.519844, 28.368105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066478, -0.408761, -0.910217,
		-0.371983, -0.836318, 0.402742,
		-0.925856, 0.365359, -0.096455,
		36.313793, 32.629452, 28.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409775, 31.821812, 28.190201>,  <36.961891, 32.373699, 28.406687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409775, 31.821812, 28.190201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267326, 32.171913, 28.059290>,  <36.181858, 32.381973, 27.980743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267326, 32.171913, 28.059290>,  <36.409775, 31.821812, 28.190201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267326, 32.171913, 28.059290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077851, -0.376814, -0.923011,
		-0.931191, -0.303225, 0.202331,
		-0.356121, 0.875252, -0.327280,
		36.160488, 32.434490, 27.961105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838070, 31.541462, 27.814754>,  <36.409775, 31.821812, 28.190201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838070, 31.541462, 27.814754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874073, 31.922628, 27.698929>,  <35.895676, 32.151329, 27.629435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874073, 31.922628, 27.698929>,  <35.838070, 31.541462, 27.814754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874073, 31.922628, 27.698929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398070, -0.232088, -0.887511,
		-0.912929, 0.195151, 0.358438,
		0.090009, 0.952917, -0.289563,
		35.901077, 32.208504, 27.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406357, 31.527077, 27.204695>,  <35.838070, 31.541462, 27.814754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406357, 31.527077, 27.204695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597084, 31.877756, 27.179258>,  <35.711521, 32.088165, 27.163996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597084, 31.877756, 27.179258>,  <35.406357, 31.527077, 27.204695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597084, 31.877756, 27.179258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243950, 0.062480, -0.967773,
		-0.844473, 0.476964, 0.243663,
		0.476817, 0.876699, -0.063593,
		35.740128, 32.140766, 27.160181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957561, 32.011147, 26.914724>,  <35.406357, 31.527077, 27.204695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957561, 32.011147, 26.914724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320839, 32.154514, 26.828262>,  <35.538807, 32.240536, 26.776384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320839, 32.154514, 26.828262>,  <34.957561, 32.011147, 26.914724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320839, 32.154514, 26.828262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251693, 0.055041, -0.966241,
		-0.334421, 0.931937, 0.140199,
		0.908192, 0.358418, -0.216156,
		35.593296, 32.262039, 26.763416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817760, 32.512959, 26.338631>,  <34.957561, 32.011147, 26.914724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817760, 32.512959, 26.338631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200851, 32.398212, 26.329992>,  <35.430706, 32.329365, 26.324808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200851, 32.398212, 26.329992>,  <34.817760, 32.512959, 26.338631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200851, 32.398212, 26.329992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030608, -0.026958, -0.999168,
		0.286045, 0.957591, -0.034599,
		0.957727, -0.286866, -0.021598,
		35.488171, 32.312153, 26.323513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027687, 32.873962, 25.820461>,  <34.817760, 32.512959, 26.338631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027687, 32.873962, 25.820461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328339, 32.610718, 25.838095>,  <35.508732, 32.452770, 25.848675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328339, 32.610718, 25.838095>,  <35.027687, 32.873962, 25.820461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328339, 32.610718, 25.838095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081399, 0.026230, -0.996336,
		0.654540, 0.752467, 0.073285,
		0.751632, -0.658108, 0.044082,
		35.553829, 32.413284, 25.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579990, 33.174606, 25.390604>,  <35.027687, 32.873962, 25.820461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579990, 33.174606, 25.390604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643303, 32.782997, 25.441912>,  <35.681290, 32.548031, 25.472696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643303, 32.782997, 25.441912>,  <35.579990, 33.174606, 25.390604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643303, 32.782997, 25.441912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203514, -0.094769, -0.974475,
		0.966192, 0.180350, 0.184245,
		0.158286, -0.979026, 0.128269,
		35.690788, 32.489288, 25.480392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328541, 32.892475, 25.225788>,  <35.579990, 33.174606, 25.390604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328541, 32.892475, 25.225788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076515, 32.585583, 25.177820>,  <35.925301, 32.401447, 25.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076515, 32.585583, 25.177820>,  <36.328541, 32.892475, 25.225788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076515, 32.585583, 25.177820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395326, -0.183990, -0.899925,
		0.668384, -0.614417, 0.419231,
		-0.630063, -0.767229, -0.119919,
		35.887497, 32.355415, 25.141844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761974, 32.307407, 24.956427>,  <36.328541, 32.892475, 25.225788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761974, 32.307407, 24.956427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386230, 32.208473, 24.861404>,  <36.160786, 32.149113, 24.804390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386230, 32.208473, 24.861404>,  <36.761974, 32.307407, 24.956427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386230, 32.208473, 24.861404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317493, -0.365350, -0.875053,
		0.129642, -0.897410, 0.421721,
		-0.939357, -0.247337, -0.237556,
		36.104424, 32.134274, 24.790138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794086, 31.612795, 24.750565>,  <36.761974, 32.307407, 24.956427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794086, 31.612795, 24.750565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451420, 31.747442, 24.594198>,  <36.245819, 31.828230, 24.500378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451420, 31.747442, 24.594198>,  <36.794086, 31.612795, 24.750565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451420, 31.747442, 24.594198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233958, -0.421850, -0.875960,
		-0.459775, -0.841860, 0.282628,
		-0.856663, 0.336621, -0.390916,
		36.194420, 31.848429, 24.476923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638485, 31.144596, 24.183172>,  <36.794086, 31.612795, 24.750565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638485, 31.144596, 24.183172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387802, 31.446947, 24.107389>,  <36.237392, 31.628357, 24.061920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387802, 31.446947, 24.107389>,  <36.638485, 31.144596, 24.183172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387802, 31.446947, 24.107389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108212, -0.156350, -0.981756,
		-0.771708, -0.635770, 0.016190,
		-0.626703, 0.755877, -0.189455,
		36.199791, 31.673710, 24.050552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297390, 30.925629, 23.504942>,  <36.638485, 31.144596, 24.183172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297390, 30.925629, 23.504942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215504, 31.315786, 23.537678>,  <36.166374, 31.549881, 23.557320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215504, 31.315786, 23.537678>,  <36.297390, 30.925629, 23.504942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215504, 31.315786, 23.537678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090424, 0.102096, -0.990656,
		-0.974636, -0.195400, -0.109099,
		-0.204712, 0.975395, 0.081838,
		36.154091, 31.608404, 23.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779640, 31.023546, 22.915895>,  <36.297390, 30.925629, 23.504942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779640, 31.023546, 22.915895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944229, 31.374836, 23.013395>,  <36.042984, 31.585609, 23.071896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944229, 31.374836, 23.013395>,  <35.779640, 31.023546, 22.915895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944229, 31.374836, 23.013395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154730, 0.196244, -0.968270,
		-0.898191, 0.436134, -0.055138,
		0.411475, 0.878223, 0.243748,
		36.067673, 31.638304, 23.086519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706078, 31.412022, 22.254189>,  <35.779640, 31.023546, 22.915895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706078, 31.412022, 22.254189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930920, 31.666758, 22.465271>,  <36.065826, 31.819599, 22.591921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930920, 31.666758, 22.465271>,  <35.706078, 31.412022, 22.254189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930920, 31.666758, 22.465271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145492, 0.551956, -0.821083,
		-0.814167, 0.538313, 0.217604,
		0.562108, 0.636839, 0.527704,
		36.099552, 31.857809, 22.623583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537373, 32.167595, 22.058357>,  <35.706078, 31.412022, 22.254189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537373, 32.167595, 22.058357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907074, 32.143181, 22.209103>,  <36.128895, 32.128532, 22.299549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907074, 32.143181, 22.209103>,  <35.537373, 32.167595, 22.058357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907074, 32.143181, 22.209103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336864, 0.594900, -0.729806,
		-0.179649, 0.801479, 0.570402,
		0.924256, -0.061039, 0.376862,
		36.184349, 32.124870, 22.322161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722637, 32.849541, 22.319254>,  <35.537373, 32.167595, 22.058357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722637, 32.849541, 22.319254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058090, 32.655758, 22.219664>,  <36.259361, 32.539486, 22.159908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058090, 32.655758, 22.219664>,  <35.722637, 32.849541, 22.319254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058090, 32.655758, 22.219664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185962, 0.684286, -0.705103,
		0.511965, 0.545024, 0.663957,
		0.838635, -0.484460, -0.248977,
		36.309681, 32.510422, 22.144970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209152, 33.352173, 22.146889>,  <35.722637, 32.849541, 22.319254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209152, 33.352173, 22.146889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369850, 33.029312, 21.973864>,  <36.466267, 32.835598, 21.870049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369850, 33.029312, 21.973864>,  <36.209152, 33.352173, 22.146889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369850, 33.029312, 21.973864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149793, 0.523919, -0.838494,
		0.903419, 0.272064, 0.331385,
		0.401743, -0.807150, -0.432565,
		36.490372, 32.787167, 21.844093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770615, 33.720585, 21.801628>,  <36.209152, 33.352173, 22.146889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770615, 33.720585, 21.801628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725307, 33.350624, 21.656452>,  <36.698124, 33.128647, 21.569347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725307, 33.350624, 21.656452>,  <36.770615, 33.720585, 21.801628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725307, 33.350624, 21.656452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389706, 0.294662, -0.872526,
		0.913948, -0.240265, 0.327066,
		-0.113263, -0.924904, -0.362939,
		36.691330, 33.073154, 21.547571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346096, 33.573326, 21.413408>,  <36.770615, 33.720585, 21.801628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346096, 33.573326, 21.413408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067265, 33.317402, 21.283962>,  <36.899967, 33.163845, 21.206295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067265, 33.317402, 21.283962>,  <37.346096, 33.573326, 21.413408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067265, 33.317402, 21.283962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228211, 0.229890, -0.946082,
		0.679711, -0.733342, -0.014238,
		-0.697075, -0.639813, -0.323615,
		36.858143, 33.125458, 21.186878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622360, 33.206524, 20.852173>,  <37.346096, 33.573326, 21.413408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622360, 33.206524, 20.852173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226784, 33.164684, 20.810118>,  <36.989437, 33.139580, 20.784883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226784, 33.164684, 20.810118>,  <37.622360, 33.206524, 20.852173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226784, 33.164684, 20.810118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083545, 0.192828, -0.977670,
		0.122537, -0.975642, -0.181956,
		-0.988941, -0.104599, -0.105139,
		36.930103, 33.133305, 20.778576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558521, 32.888153, 20.271935>,  <37.622360, 33.206524, 20.852173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558521, 32.888153, 20.271935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200397, 33.055595, 20.332853>,  <36.985523, 33.156063, 20.369404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200397, 33.055595, 20.332853>,  <37.558521, 32.888153, 20.271935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200397, 33.055595, 20.332853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047934, 0.430441, -0.901345,
		-0.442864, -0.799680, -0.405442,
		-0.895306, 0.418608, 0.152295,
		36.931805, 33.181179, 20.378542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172741, 32.786823, 19.677557>,  <37.558521, 32.888153, 20.271935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172741, 32.786823, 19.677557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964058, 33.088226, 19.837578>,  <36.838848, 33.269070, 19.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964058, 33.088226, 19.837578>,  <37.172741, 32.786823, 19.677557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964058, 33.088226, 19.837578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330771, 0.610901, -0.719299,
		-0.786392, -0.242938, -0.567951,
		-0.521708, 0.753512, 0.400051,
		36.807545, 33.314281, 19.957594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842331, 33.020336, 19.152020>,  <37.172741, 32.786823, 19.677557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842331, 33.020336, 19.152020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867855, 33.336960, 19.395123>,  <36.883171, 33.526932, 19.540985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867855, 33.336960, 19.395123>,  <36.842331, 33.020336, 19.152020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867855, 33.336960, 19.395123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553017, 0.478895, -0.681785,
		-0.830723, 0.379606, -0.407185,
		0.063811, 0.791555, 0.607758,
		36.886997, 33.574425, 19.577450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619961, 33.770466, 18.789949>,  <36.842331, 33.020336, 19.152020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619961, 33.770466, 18.789949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885136, 33.809586, 19.086853>,  <37.044239, 33.833057, 19.264996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885136, 33.809586, 19.086853>,  <36.619961, 33.770466, 18.789949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885136, 33.809586, 19.086853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674977, 0.350865, -0.649076,
		-0.323913, 0.931305, 0.166589,
		0.662938, 0.097801, 0.742259,
		37.084019, 33.838924, 19.309530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674042, 34.170277, 19.363436>,  <36.619961, 33.770466, 18.789949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674042, 34.170277, 19.363436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733315, 34.565090, 19.338730>,  <36.768879, 34.801979, 19.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733315, 34.565090, 19.338730>,  <36.674042, 34.170277, 19.363436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733315, 34.565090, 19.338730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210515, -0.029544, -0.977144,
		-0.966295, 0.157796, 0.203406,
		0.148180, 0.987030, -0.061767,
		36.777767, 34.861198, 19.320200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034828, 34.541737, 18.993179>,  <36.674042, 34.170277, 19.363436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034828, 34.541737, 18.993179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354542, 34.779522, 18.957954>,  <36.546371, 34.922192, 18.936819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354542, 34.779522, 18.957954>,  <36.034828, 34.541737, 18.993179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354542, 34.779522, 18.957954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111702, 0.002977, -0.993737,
		-0.590476, 0.804119, 0.068782,
		0.799288, 0.594461, -0.088064,
		36.594330, 34.957859, 18.931536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789566, 35.086025, 18.588640>,  <36.034828, 34.541737, 18.993179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789566, 35.086025, 18.588640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163219, 34.953182, 18.536337>,  <36.387413, 34.873474, 18.504955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163219, 34.953182, 18.536337>,  <35.789566, 35.086025, 18.588640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163219, 34.953182, 18.536337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165748, -0.079186, -0.982984,
		0.316105, 0.939911, -0.129017,
		0.934134, -0.332110, -0.130757,
		36.443459, 34.853550, 18.497110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900024, 34.994663, 17.859970>,  <35.789566, 35.086025, 18.588640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900024, 34.994663, 17.859970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153355, 35.167282, 17.603016>,  <36.305355, 35.270855, 17.448843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153355, 35.167282, 17.603016>,  <35.900024, 34.994663, 17.859970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153355, 35.167282, 17.603016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712810, -0.002099, 0.701354,
		0.301322, -0.902086, -0.308944,
		0.633330, 0.431552, -0.642384,
		36.343353, 35.296749, 17.410301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510159, 34.680687, 17.886209>,  <35.900024, 34.994663, 17.859970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510159, 34.680687, 17.886209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574661, 35.061272, 17.781353>,  <36.613361, 35.289623, 17.718439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574661, 35.061272, 17.781353>,  <36.510159, 34.680687, 17.886209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574661, 35.061272, 17.781353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659189, 0.093841, 0.746099,
		0.734485, -0.293111, -0.612061,
		0.161254, 0.951462, -0.262140,
		36.623039, 35.346710, 17.702711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190521, 34.778591, 17.836077>,  <36.510159, 34.680687, 17.886209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190521, 34.778591, 17.836077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988472, 35.105225, 17.947813>,  <36.867241, 35.301205, 18.014854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988472, 35.105225, 17.947813>,  <37.190521, 34.778591, 17.836077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988472, 35.105225, 17.947813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441876, -0.033326, 0.896457,
		0.741345, 0.576259, -0.343996,
		-0.505127, 0.816588, 0.279341,
		36.836933, 35.350201, 18.031616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658722, 35.229164, 18.278915>,  <37.190521, 34.778591, 17.836077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658722, 35.229164, 18.278915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267433, 35.267334, 18.352646>,  <37.032661, 35.290234, 18.396885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267433, 35.267334, 18.352646>,  <37.658722, 35.229164, 18.278915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267433, 35.267334, 18.352646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188797, 0.040082, 0.981198,
		0.086239, 0.994630, -0.057225,
		-0.978222, 0.095421, 0.184327,
		36.973965, 35.295959, 18.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595100, 35.800083, 18.793531>,  <37.658722, 35.229164, 18.278915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595100, 35.800083, 18.793531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280624, 35.556419, 18.835155>,  <37.091938, 35.410221, 18.860130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280624, 35.556419, 18.835155>,  <37.595100, 35.800083, 18.793531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280624, 35.556419, 18.835155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133122, -0.002501, 0.991096,
		-0.603477, 0.793042, 0.083059,
		-0.786189, -0.609161, 0.104062,
		37.044769, 35.373672, 18.866375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013924, 36.098969, 19.234007>,  <37.595100, 35.800083, 18.793531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013924, 36.098969, 19.234007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982449, 35.701237, 19.262594>,  <36.963566, 35.462597, 19.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982449, 35.701237, 19.262594>,  <37.013924, 36.098969, 19.234007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982449, 35.701237, 19.262594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136258, 0.081747, 0.987295,
		-0.987543, 0.067948, -0.141918,
		-0.078686, -0.994334, 0.071470,
		36.958843, 35.402935, 19.284035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392651, 36.100468, 19.580244>,  <37.013924, 36.098969, 19.234007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392651, 36.100468, 19.580244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597748, 35.763500, 19.646486>,  <36.720806, 35.561321, 19.686232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597748, 35.763500, 19.646486>,  <36.392651, 36.100468, 19.580244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597748, 35.763500, 19.646486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026765, 0.177112, 0.983827,
		-0.858125, -0.508883, 0.068266,
		0.512743, -0.842419, 0.165605,
		36.751572, 35.510773, 19.696167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994068, 35.674614, 20.105387>,  <36.392651, 36.100468, 19.580244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994068, 35.674614, 20.105387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340923, 35.475384, 20.105127>,  <36.549034, 35.355846, 20.104973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340923, 35.475384, 20.105127>,  <35.994068, 35.674614, 20.105387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340923, 35.475384, 20.105127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056019, 0.096237, 0.993781,
		-0.494915, -0.861777, 0.111352,
		0.867134, -0.498075, -0.000647,
		36.601063, 35.325962, 20.104933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984230, 35.106823, 20.528294>,  <35.994068, 35.674614, 20.105387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984230, 35.106823, 20.528294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375961, 35.179718, 20.493187>,  <36.611000, 35.223454, 20.472122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375961, 35.179718, 20.493187>,  <35.984230, 35.106823, 20.528294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375961, 35.179718, 20.493187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097188, -0.043410, 0.994319,
		0.177390, -0.982296, -0.060223,
		0.979330, 0.182235, -0.087767,
		36.669762, 35.234390, 20.466856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170963, 34.926735, 21.120419>,  <35.984230, 35.106823, 20.528294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170963, 34.926735, 21.120419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512695, 35.102547, 21.009472>,  <36.717735, 35.208035, 20.942904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512695, 35.102547, 21.009472>,  <36.170963, 34.926735, 21.120419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512695, 35.102547, 21.009472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248458, 0.123355, 0.960756,
		0.456494, -0.889718, -0.003819,
		0.854331, 0.439529, -0.277368,
		36.768993, 35.234406, 20.926262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706402, 34.580372, 21.498701>,  <36.170963, 34.926735, 21.120419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706402, 34.580372, 21.498701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812809, 34.951855, 21.395369>,  <36.876656, 35.174744, 21.333370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812809, 34.951855, 21.395369>,  <36.706402, 34.580372, 21.498701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812809, 34.951855, 21.395369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025024, 0.261243, 0.964949,
		0.963642, -0.263161, 0.046256,
		0.266021, 0.928708, -0.258330,
		36.892616, 35.230469, 21.317869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266842, 34.656277, 21.836264>,  <36.706402, 34.580372, 21.498701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266842, 34.656277, 21.836264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140526, 35.028236, 21.760828>,  <37.064735, 35.251411, 21.715567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140526, 35.028236, 21.760828>,  <37.266842, 34.656277, 21.836264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140526, 35.028236, 21.760828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255148, 0.274659, 0.927072,
		0.913881, 0.244639, -0.323995,
		-0.315786, 0.929900, -0.188587,
		37.045792, 35.307205, 21.704252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803871, 34.951393, 22.194721>,  <37.266842, 34.656277, 21.836264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803871, 34.951393, 22.194721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508198, 35.215435, 22.141268>,  <37.330791, 35.373859, 22.109196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508198, 35.215435, 22.141268>,  <37.803871, 34.951393, 22.194721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508198, 35.215435, 22.141268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171555, 0.376417, 0.910428,
		0.651285, 0.650050, -0.391488,
		-0.739187, 0.660109, -0.133635,
		37.286442, 35.413467, 22.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089279, 35.621014, 22.251701>,  <37.803871, 34.951393, 22.194721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089279, 35.621014, 22.251701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703072, 35.625259, 22.355742>,  <37.471348, 35.627808, 22.418165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703072, 35.625259, 22.355742>,  <38.089279, 35.621014, 22.251701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703072, 35.625259, 22.355742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228955, 0.510069, 0.829101,
		-0.123869, 0.860068, -0.494914,
		-0.965524, 0.010613, 0.260099,
		37.413414, 35.628445, 22.433771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098137, 36.124306, 22.794966>,  <38.089279, 35.621014, 22.251701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098137, 36.124306, 22.794966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733780, 35.961781, 22.823751>,  <37.515163, 35.864265, 22.841022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733780, 35.961781, 22.823751>,  <38.098137, 36.124306, 22.794966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733780, 35.961781, 22.823751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056080, 0.294685, 0.953948,
		-0.408808, 0.864911, -0.291213,
		-0.910896, -0.406312, 0.071966,
		37.460510, 35.839886, 22.845341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599709, 36.619659, 23.027809>,  <38.098137, 36.124306, 22.794966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599709, 36.619659, 23.027809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485718, 36.260628, 23.162359>,  <37.417324, 36.045208, 23.243090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485718, 36.260628, 23.162359>,  <37.599709, 36.619659, 23.027809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485718, 36.260628, 23.162359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033687, 0.341330, 0.939340,
		-0.957943, 0.279020, -0.067034,
		-0.284975, -0.897575, 0.336374,
		37.400227, 35.991356, 23.263271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185730, 36.722363, 23.660866>,  <37.599709, 36.619659, 23.027809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185730, 36.722363, 23.660866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235325, 36.325954, 23.680893>,  <37.265083, 36.088108, 23.692909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235325, 36.325954, 23.680893>,  <37.185730, 36.722363, 23.660866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235325, 36.325954, 23.680893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083094, 0.060650, 0.994694,
		-0.988799, -0.119167, 0.089868,
		0.123986, -0.991020, 0.050069,
		37.272522, 36.028648, 23.695913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664314, 36.413372, 24.181845>,  <37.185730, 36.722363, 23.660866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664314, 36.413372, 24.181845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981434, 36.170486, 24.160801>,  <37.171703, 36.024757, 24.148174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981434, 36.170486, 24.160801>,  <36.664314, 36.413372, 24.181845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981434, 36.170486, 24.160801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009229, -0.074345, 0.997190,
		-0.609417, -0.791054, -0.053336,
		0.792796, -0.607212, -0.052608,
		37.219273, 35.988323, 24.145020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649570, 36.145836, 24.846079>,  <36.664314, 36.413372, 24.181845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649570, 36.145836, 24.846079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971954, 35.953182, 24.708414>,  <37.165386, 35.837589, 24.625814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971954, 35.953182, 24.708414>,  <36.649570, 36.145836, 24.846079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971954, 35.953182, 24.708414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274820, -0.210505, 0.938169,
		-0.524305, -0.850713, -0.037295,
		0.805964, -0.481638, -0.344162,
		37.213745, 35.808693, 24.605165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678425, 35.418247, 25.020124>,  <36.649570, 36.145836, 24.846079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678425, 35.418247, 25.020124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068573, 35.490120, 24.968960>,  <37.302662, 35.533245, 24.938261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068573, 35.490120, 24.968960>,  <36.678425, 35.418247, 25.020124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068573, 35.490120, 24.968960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158318, -0.166590, 0.973233,
		0.153564, -0.969517, -0.190935,
		0.975374, 0.179682, -0.127910,
		37.361183, 35.544025, 24.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040154, 34.848164, 25.339373>,  <36.678425, 35.418247, 25.020124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040154, 34.848164, 25.339373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297638, 35.153282, 25.314787>,  <37.452129, 35.336353, 25.300035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297638, 35.153282, 25.314787>,  <37.040154, 34.848164, 25.339373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297638, 35.153282, 25.314787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262349, -0.144513, 0.954091,
		0.718896, -0.630282, -0.293144,
		0.643709, 0.762798, -0.061465,
		37.490749, 35.382122, 25.296347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633904, 34.571087, 25.761841>,  <37.040154, 34.848164, 25.339373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633904, 34.571087, 25.761841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675205, 34.968906, 25.756109>,  <37.699986, 35.207600, 25.752670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675205, 34.968906, 25.756109>,  <37.633904, 34.571087, 25.761841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675205, 34.968906, 25.756109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413704, -0.029841, 0.909922,
		0.904538, -0.099876, -0.414532,
		0.103250, 0.994552, -0.014327,
		37.706181, 35.267273, 25.751812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282471, 34.736504, 26.044260>,  <37.633904, 34.571087, 25.761841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282471, 34.736504, 26.044260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081287, 35.079586, 26.086916>,  <37.960579, 35.285435, 26.112511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081287, 35.079586, 26.086916>,  <38.282471, 34.736504, 26.044260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081287, 35.079586, 26.086916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214826, 0.004545, 0.976642,
		0.837188, 0.514118, -0.186544,
		-0.502957, 0.857708, 0.106641,
		37.930401, 35.336899, 26.118908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746166, 35.126080, 26.432211>,  <38.282471, 34.736504, 26.044260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746166, 35.126080, 26.432211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400097, 35.315971, 26.496840>,  <38.192455, 35.429909, 26.535616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400097, 35.315971, 26.496840>,  <38.746166, 35.126080, 26.432211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400097, 35.315971, 26.496840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211092, 0.052509, 0.976055,
		0.454882, 0.878562, -0.145642,
		-0.865172, 0.474734, 0.161572,
		38.140545, 35.458393, 26.545311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939980, 35.683887, 26.892366>,  <38.746166, 35.126080, 26.432211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939980, 35.683887, 26.892366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541504, 35.663380, 26.920589>,  <38.302418, 35.651073, 26.937523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541504, 35.663380, 26.920589>,  <38.939980, 35.683887, 26.892366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541504, 35.663380, 26.920589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059553, 0.191162, 0.979750,
		-0.063719, 0.980218, -0.187381,
		-0.996189, -0.051270, 0.070556,
		38.242645, 35.647999, 26.941755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761986, 36.214020, 27.337336>,  <38.939980, 35.683887, 26.892366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761986, 36.214020, 27.337336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471283, 35.939262, 27.337841>,  <38.296860, 35.774406, 27.338144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471283, 35.939262, 27.337841>,  <38.761986, 36.214020, 27.337336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471283, 35.939262, 27.337841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061429, 0.066830, 0.995872,
		-0.684142, 0.723679, -0.090764,
		-0.726758, -0.686893, 0.001266,
		38.253254, 35.733196, 27.338221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204113, 36.469666, 27.732809>,  <38.761986, 36.214020, 27.337336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204113, 36.469666, 27.732809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115391, 36.081108, 27.698858>,  <38.062157, 35.847973, 27.678488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115391, 36.081108, 27.698858>,  <38.204113, 36.469666, 27.732809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115391, 36.081108, 27.698858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290325, -0.017310, 0.956772,
		-0.930868, 0.236857, -0.278179,
		-0.221802, -0.971390, -0.084879,
		38.048851, 35.789692, 27.673395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504292, 36.406223, 27.889311>,  <38.204113, 36.469666, 27.732809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504292, 36.406223, 27.889311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714199, 36.075378, 27.969814>,  <37.840141, 35.876873, 28.018116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714199, 36.075378, 27.969814>,  <37.504292, 36.406223, 27.889311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714199, 36.075378, 27.969814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261688, 0.068232, 0.962738,
		-0.810025, -0.557879, -0.180640,
		0.524765, -0.827113, 0.201260,
		37.871628, 35.827244, 28.030191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010353, 35.994873, 28.148272>,  <37.504292, 36.406223, 27.889311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010353, 35.994873, 28.148272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332565, 35.797535, 28.279566>,  <37.525890, 35.679131, 28.358341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332565, 35.797535, 28.279566>,  <37.010353, 35.994873, 28.148272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332565, 35.797535, 28.279566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353478, 0.044513, 0.934383,
		-0.475585, -0.868693, -0.138531,
		0.805526, -0.493347, 0.328233,
		37.574223, 35.649532, 28.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737686, 35.457081, 28.604649>,  <37.010353, 35.994873, 28.148272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737686, 35.457081, 28.604649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124714, 35.492634, 28.699234>,  <37.356930, 35.513966, 28.755985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124714, 35.492634, 28.699234>,  <36.737686, 35.457081, 28.604649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124714, 35.492634, 28.699234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233685, -0.040612, 0.971464,
		0.095951, -0.995214, -0.018524,
		0.967566, 0.088884, 0.236464,
		37.414986, 35.519299, 28.770174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920315, 35.052574, 29.168516>,  <36.737686, 35.457081, 28.604649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920315, 35.052574, 29.168516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241489, 35.289516, 29.195101>,  <37.434193, 35.431683, 29.211052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241489, 35.289516, 29.195101>,  <36.920315, 35.052574, 29.168516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241489, 35.289516, 29.195101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233674, 0.210229, 0.949316,
		0.548359, -0.777766, 0.307217,
		0.802931, 0.592354, 0.066462,
		37.482368, 35.467224, 29.215040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339310, 34.884319, 29.860203>,  <36.920315, 35.052574, 29.168516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339310, 34.884319, 29.860203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440449, 35.252213, 29.740089>,  <37.501133, 35.472946, 29.668022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440449, 35.252213, 29.740089>,  <37.339310, 34.884319, 29.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440449, 35.252213, 29.740089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037184, 0.319374, 0.946899,
		0.966793, -0.228251, 0.114951,
		0.252843, 0.919729, -0.300282,
		37.516300, 35.528130, 29.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921154, 35.049381, 30.268522>,  <37.339310, 34.884319, 29.860203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921154, 35.049381, 30.268522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759480, 35.392662, 30.141953>,  <37.662476, 35.598629, 30.066011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759480, 35.392662, 30.141953>,  <37.921154, 35.049381, 30.268522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759480, 35.392662, 30.141953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011045, 0.350494, 0.936500,
		0.914611, 0.375024, -0.151143,
		-0.404184, 0.858202, -0.316423,
		37.638226, 35.650124, 30.047026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206383, 35.473450, 30.746454>,  <37.921154, 35.049381, 30.268522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206383, 35.473450, 30.746454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943031, 35.708500, 30.558311>,  <37.785023, 35.849529, 30.445425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943031, 35.708500, 30.558311>,  <38.206383, 35.473450, 30.746454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943031, 35.708500, 30.558311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083911, 0.563708, 0.821701,
		0.747999, 0.580455, -0.321822,
		-0.658374, 0.587627, -0.470359,
		37.745518, 35.884789, 30.417204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452503, 36.180992, 30.886709>,  <38.206383, 35.473450, 30.746454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452503, 36.180992, 30.886709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059185, 36.190872, 30.814569>,  <37.823196, 36.196800, 30.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059185, 36.190872, 30.814569>,  <38.452503, 36.180992, 30.886709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059185, 36.190872, 30.814569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129467, 0.601556, 0.788269,
		0.127964, 0.798448, -0.588307,
		-0.983292, 0.024704, -0.180350,
		37.764198, 36.198284, 30.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256458, 36.882504, 31.064989>,  <38.452503, 36.180992, 30.886709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256458, 36.882504, 31.064989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911041, 36.680874, 31.059347>,  <37.703789, 36.559895, 31.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911041, 36.680874, 31.059347>,  <38.256458, 36.882504, 31.064989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911041, 36.680874, 31.059347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330739, 0.545044, 0.770415,
		-0.380659, 0.669952, -0.637387,
		-0.863545, -0.504075, -0.014103,
		37.651978, 36.529652, 31.055117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765129, 37.396942, 31.000954>,  <38.256458, 36.882504, 31.064989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765129, 37.396942, 31.000954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598392, 37.071167, 31.162416>,  <37.498352, 36.875702, 31.259295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598392, 37.071167, 31.162416>,  <37.765129, 37.396942, 31.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598392, 37.071167, 31.162416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224677, 0.522614, 0.822432,
		-0.880775, 0.252131, -0.400831,
		-0.416841, -0.814435, 0.403657,
		37.473339, 36.826836, 31.283514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084362, 37.577950, 31.168474>,  <37.765129, 37.396942, 31.000954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084362, 37.577950, 31.168474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152988, 37.256142, 31.395916>,  <37.194164, 37.063057, 31.532381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152988, 37.256142, 31.395916>,  <37.084362, 37.577950, 31.168474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152988, 37.256142, 31.395916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302251, 0.506342, 0.807628,
		-0.937662, -0.310424, -0.156295,
		0.171568, -0.804522, 0.568603,
		37.204460, 37.014786, 31.566498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431210, 37.495411, 31.501566>,  <37.084362, 37.577950, 31.168474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431210, 37.495411, 31.501566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695244, 37.294411, 31.724915>,  <36.853664, 37.173809, 31.858923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695244, 37.294411, 31.724915>,  <36.431210, 37.495411, 31.501566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695244, 37.294411, 31.724915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457074, 0.321205, 0.829404,
		-0.596126, -0.802697, -0.017656,
		0.660088, -0.502499, 0.558371,
		36.893269, 37.143661, 31.892426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041912, 37.267406, 32.113644>,  <36.431210, 37.495411, 31.501566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041912, 37.267406, 32.113644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420517, 37.249805, 32.241501>,  <36.647682, 37.239246, 32.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420517, 37.249805, 32.241501>,  <36.041912, 37.267406, 32.113644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420517, 37.249805, 32.241501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270921, 0.429661, 0.861390,
		-0.175242, -0.901918, 0.394760,
		0.946516, -0.044003, 0.319643,
		36.704472, 37.236603, 32.337395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070435, 36.884762, 32.815544>,  <36.041912, 37.267406, 32.113644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070435, 36.884762, 32.815544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391762, 37.121853, 32.792389>,  <36.584560, 37.264107, 32.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391762, 37.121853, 32.792389>,  <36.070435, 36.884762, 32.815544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391762, 37.121853, 32.792389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285875, 0.469052, 0.835623,
		0.522449, -0.654725, 0.546244,
		0.803320, 0.592728, -0.057886,
		36.632759, 37.299671, 32.775024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287910, 36.695499, 33.399666>,  <36.070435, 36.884762, 32.815544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287910, 36.695499, 33.399666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469204, 37.028568, 33.272396>,  <36.577980, 37.228409, 33.196033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469204, 37.028568, 33.272396>,  <36.287910, 36.695499, 33.399666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469204, 37.028568, 33.272396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242774, 0.458759, 0.854752,
		0.857697, -0.310153, 0.410075,
		0.453229, 0.832674, -0.318179,
		36.605171, 37.278370, 33.176941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813885, 36.791103, 33.825142>,  <36.287910, 36.695499, 33.399666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813885, 36.791103, 33.825142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759388, 37.149559, 33.656204>,  <36.726692, 37.364632, 33.554844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759388, 37.149559, 33.656204>,  <36.813885, 36.791103, 33.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759388, 37.149559, 33.656204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014743, 0.424433, 0.905339,
		0.990566, 0.129570, -0.044613,
		-0.136240, 0.896141, -0.422339,
		36.718517, 37.418400, 33.529503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197701, 37.256634, 34.105846>,  <36.813885, 36.791103, 33.825142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197701, 37.256634, 34.105846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909946, 37.495094, 33.963249>,  <36.737293, 37.638172, 33.877689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909946, 37.495094, 33.963249>,  <37.197701, 37.256634, 34.105846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909946, 37.495094, 33.963249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085499, 0.433329, 0.897171,
		0.689328, 0.675893, -0.260761,
		-0.719387, 0.596150, -0.356494,
		36.694130, 37.673939, 33.856300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356541, 37.879166, 34.381630>,  <37.197701, 37.256634, 34.105846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356541, 37.879166, 34.381630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969566, 37.877842, 34.280396>,  <36.737381, 37.877048, 34.219654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969566, 37.877842, 34.280396>,  <37.356541, 37.879166, 34.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969566, 37.877842, 34.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228431, 0.442036, 0.867424,
		0.109004, 0.896991, -0.428398,
		-0.967439, -0.003306, -0.253084,
		36.679337, 37.876850, 34.204472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956821, 38.126842, 33.997425>,  <37.356541, 37.879166, 34.381630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956821, 38.126842, 33.997425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327850, 38.272316, 34.031715>,  <38.550468, 38.359600, 34.052288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327850, 38.272316, 34.031715>,  <37.956821, 38.126842, 33.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327850, 38.272316, 34.031715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280803, -0.527126, -0.802052,
		-0.246505, 0.768031, -0.591070,
		0.927570, 0.363683, 0.085726,
		38.606121, 38.381420, 34.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170853, 38.285431, 33.384102>,  <37.956821, 38.126842, 33.997425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170853, 38.285431, 33.384102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519054, 38.240723, 33.575821>,  <38.727978, 38.213898, 33.690853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519054, 38.240723, 33.575821>,  <38.170853, 38.285431, 33.384102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519054, 38.240723, 33.575821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376250, -0.476651, -0.794506,
		0.317256, 0.871959, -0.372876,
		0.870508, -0.111768, 0.479295,
		38.780209, 38.207191, 33.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727989, 38.457184, 32.878174>,  <38.170853, 38.285431, 33.384102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727989, 38.457184, 32.878174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902435, 38.217766, 33.146965>,  <39.007103, 38.074116, 33.308239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902435, 38.217766, 33.146965>,  <38.727989, 38.457184, 32.878174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902435, 38.217766, 33.146965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443057, -0.507140, -0.739263,
		0.783266, 0.620126, 0.044018,
		0.436113, -0.598542, 0.671977,
		39.033268, 38.038204, 33.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351768, 38.456188, 32.649292>,  <38.727989, 38.457184, 32.878174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351768, 38.456188, 32.649292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370136, 38.130947, 32.881413>,  <39.381157, 37.935802, 33.020687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370136, 38.130947, 32.881413>,  <39.351768, 38.456188, 32.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370136, 38.130947, 32.881413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483643, -0.490197, -0.725118,
		0.874060, 0.313956, 0.370744,
		0.045917, -0.813104, 0.580304,
		39.383911, 37.887016, 33.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009796, 38.289989, 32.538788>,  <39.351768, 38.456188, 32.649292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009796, 38.289989, 32.538788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837639, 37.964760, 32.695587>,  <39.734344, 37.769623, 32.789669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837639, 37.964760, 32.695587>,  <40.009796, 38.289989, 32.538788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837639, 37.964760, 32.695587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426593, -0.565946, -0.705495,
		0.795475, -0.136416, 0.590433,
		-0.430394, -0.813078, 0.392002,
		39.708519, 37.720837, 32.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575081, 37.871864, 32.723568>,  <40.009796, 38.289989, 32.538788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575081, 37.871864, 32.723568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254292, 37.635586, 32.687977>,  <40.061817, 37.493816, 32.666622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254292, 37.635586, 32.687977>,  <40.575081, 37.871864, 32.723568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254292, 37.635586, 32.687977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405660, -0.429195, -0.806989,
		0.438501, -0.683275, 0.583825,
		-0.801970, -0.590700, -0.088974,
		40.013699, 37.458374, 32.661285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793343, 37.370419, 32.393814>,  <40.575081, 37.871864, 32.723568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793343, 37.370419, 32.393814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407890, 37.288864, 32.324707>,  <40.176620, 37.239933, 32.283241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407890, 37.288864, 32.324707>,  <40.793343, 37.370419, 32.393814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407890, 37.288864, 32.324707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241911, -0.390778, -0.888128,
		0.113559, -0.897621, 0.425887,
		-0.963630, -0.203882, -0.172768,
		40.118801, 37.227699, 32.272877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803902, 36.677544, 32.132889>,  <40.793343, 37.370419, 32.393814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803902, 36.677544, 32.132889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452332, 36.834465, 32.024376>,  <40.241390, 36.928619, 31.959269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452332, 36.834465, 32.024376>,  <40.803902, 36.677544, 32.132889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452332, 36.834465, 32.024376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166035, -0.281533, -0.945078,
		-0.447135, -0.875690, 0.182308,
		-0.878921, 0.392308, -0.271279,
		40.188656, 36.952156, 31.942993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473034, 36.177269, 31.700529>,  <40.803902, 36.677544, 32.132889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473034, 36.177269, 31.700529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317364, 36.529804, 31.593359>,  <40.223961, 36.741325, 31.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317364, 36.529804, 31.593359>,  <40.473034, 36.177269, 31.700529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317364, 36.529804, 31.593359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203112, -0.201594, -0.958178,
		-0.898494, -0.427314, -0.100556,
		-0.389172, 0.881341, -0.267924,
		40.200611, 36.794205, 31.512981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159695, 36.020790, 31.066589>,  <40.473034, 36.177269, 31.700529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159695, 36.020790, 31.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166164, 36.420734, 31.064917>,  <40.170048, 36.660702, 31.063913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166164, 36.420734, 31.064917>,  <40.159695, 36.020790, 31.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166164, 36.420734, 31.064917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021274, -0.004527, -0.999763,
		-0.999643, 0.016085, -0.021344,
		0.016178, 0.999860, -0.004184,
		40.171017, 36.720692, 31.063662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560780, 36.273983, 30.701870>,  <40.159695, 36.020790, 31.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560780, 36.273983, 30.701870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831699, 36.568253, 30.704731>,  <39.994251, 36.744812, 30.706448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831699, 36.568253, 30.704731>,  <39.560780, 36.273983, 30.701870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831699, 36.568253, 30.704731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067907, 0.072193, -0.995076,
		-0.732566, 0.673480, 0.098854,
		0.677300, 0.735672, 0.007152,
		40.034889, 36.788956, 30.706877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323368, 36.780956, 30.195711>,  <39.560780, 36.273983, 30.701870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323368, 36.780956, 30.195711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707916, 36.874737, 30.253395>,  <39.938644, 36.931004, 30.288006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707916, 36.874737, 30.253395>,  <39.323368, 36.780956, 30.195711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707916, 36.874737, 30.253395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116099, 0.129650, -0.984740,
		-0.249570, 0.963444, 0.097422,
		0.961372, 0.234451, 0.144212,
		39.996326, 36.945072, 30.296659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393204, 37.468079, 29.920723>,  <39.323368, 36.780956, 30.195711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393204, 37.468079, 29.920723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745781, 37.279182, 29.923586>,  <39.957329, 37.165844, 29.925304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745781, 37.279182, 29.923586>,  <39.393204, 37.468079, 29.920723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745781, 37.279182, 29.923586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116315, 0.202364, -0.972378,
		0.457744, 0.857929, 0.233301,
		0.881443, -0.472236, 0.007159,
		40.010212, 37.137512, 29.925734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846237, 37.888260, 29.526848>,  <39.393204, 37.468079, 29.920723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846237, 37.888260, 29.526848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015503, 37.525951, 29.517782>,  <40.117062, 37.308567, 29.512342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015503, 37.525951, 29.517782>,  <39.846237, 37.888260, 29.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015503, 37.525951, 29.517782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353615, 0.188130, -0.916277,
		0.834199, 0.379722, 0.399904,
		0.423165, -0.905769, -0.022663,
		40.142452, 37.254219, 29.510983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473484, 37.972378, 29.096565>,  <39.846237, 37.888260, 29.526848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473484, 37.972378, 29.096565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399643, 37.579605, 29.113239>,  <40.355339, 37.343941, 29.123243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399643, 37.579605, 29.113239>,  <40.473484, 37.972378, 29.096565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399643, 37.579605, 29.113239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238018, -0.085817, -0.967462,
		0.953556, -0.168677, 0.249559,
		-0.184605, -0.981928, 0.041683,
		40.344261, 37.285027, 29.125744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865986, 37.644482, 28.729246>,  <40.473484, 37.972378, 29.096565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865986, 37.644482, 28.729246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627464, 37.323444, 28.735828>,  <40.484352, 37.130821, 28.739779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627464, 37.323444, 28.735828>,  <40.865986, 37.644482, 28.729246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627464, 37.323444, 28.735828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260338, -0.212736, -0.941790,
		0.759372, -0.557309, 0.335799,
		-0.596305, -0.802590, 0.016457,
		40.448574, 37.082668, 28.740765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205555, 37.049076, 28.391605>,  <40.865986, 37.644482, 28.729246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205555, 37.049076, 28.391605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809319, 37.004791, 28.359436>,  <40.571575, 36.978218, 28.340134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809319, 37.004791, 28.359436>,  <41.205555, 37.049076, 28.391605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809319, 37.004791, 28.359436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090067, -0.085028, -0.992299,
		0.103024, -0.990208, 0.094200,
		-0.990593, -0.110715, -0.080425,
		40.512142, 36.971577, 28.335308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137466, 36.661491, 27.789660>,  <41.205555, 37.049076, 28.391605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137466, 36.661491, 27.789660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760723, 36.792625, 27.819101>,  <40.534676, 36.871307, 27.836767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760723, 36.792625, 27.819101>,  <41.137466, 36.661491, 27.789660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760723, 36.792625, 27.819101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049177, 0.082202, -0.995402,
		-0.332380, -0.941151, -0.061301,
		-0.941862, 0.327837, 0.073605,
		40.478165, 36.890976, 27.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758789, 36.316418, 27.242878>,  <41.137466, 36.661491, 27.789660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758789, 36.316418, 27.242878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509579, 36.612835, 27.343029>,  <40.360050, 36.790684, 27.403120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509579, 36.612835, 27.343029>,  <40.758789, 36.316418, 27.242878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509579, 36.612835, 27.343029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226488, 0.135477, -0.964546,
		-0.748692, -0.657647, 0.083432,
		-0.623027, 0.741044, 0.250380,
		40.322670, 36.835148, 27.418142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103493, 36.091026, 26.998899>,  <40.758789, 36.316418, 27.242878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103493, 36.091026, 26.998899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099018, 36.490639, 27.015907>,  <40.096333, 36.730408, 27.026112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099018, 36.490639, 27.015907>,  <40.103493, 36.091026, 26.998899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099018, 36.490639, 27.015907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332019, 0.036401, -0.942570,
		-0.943206, -0.024661, 0.331290,
		-0.011186, 0.999033, 0.042522,
		40.095661, 36.790348, 27.028664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456463, 36.264336, 26.689949>,  <40.103493, 36.091026, 26.998899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456463, 36.264336, 26.689949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678478, 36.596882, 26.678911>,  <39.811687, 36.796410, 26.672289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678478, 36.596882, 26.678911>,  <39.456463, 36.264336, 26.689949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678478, 36.596882, 26.678911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384508, 0.227008, -0.894774,
		-0.737623, 0.507242, 0.445665,
		0.555037, 0.831368, -0.027593,
		39.844990, 36.846291, 26.670633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000519, 36.905289, 26.514107>,  <39.456463, 36.264336, 26.689949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000519, 36.905289, 26.514107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385654, 36.949257, 26.415430>,  <39.616737, 36.975636, 26.356224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385654, 36.949257, 26.415430>,  <39.000519, 36.905289, 26.514107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385654, 36.949257, 26.415430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263451, 0.181241, -0.947494,
		-0.059435, 0.977277, 0.203464,
		0.962840, 0.109917, -0.246693,
		39.674507, 36.982231, 26.341423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019516, 37.387074, 25.991137>,  <39.000519, 36.905289, 26.514107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019516, 37.387074, 25.991137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360146, 37.185421, 25.933619>,  <39.564522, 37.064430, 25.899107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360146, 37.185421, 25.933619>,  <39.019516, 37.387074, 25.991137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360146, 37.185421, 25.933619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241828, -0.134393, -0.960967,
		0.465130, 0.853106, -0.236358,
		0.851571, -0.504132, -0.143795,
		39.615616, 37.034180, 25.890480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338406, 37.635284, 25.408575>,  <39.019516, 37.387074, 25.991137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338406, 37.635284, 25.408575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515896, 37.278049, 25.438248>,  <39.622391, 37.063709, 25.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515896, 37.278049, 25.438248>,  <39.338406, 37.635284, 25.408575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515896, 37.278049, 25.438248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016624, -0.074559, -0.997078,
		0.896008, 0.443663, -0.018237,
		0.443727, -0.893087, 0.074181,
		39.649014, 37.010124, 25.460503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860188, 37.678333, 24.930277>,  <39.338406, 37.635284, 25.408575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860188, 37.678333, 24.930277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812870, 37.284863, 24.984522>,  <39.784477, 37.048782, 25.017069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812870, 37.284863, 24.984522>,  <39.860188, 37.678333, 24.930277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812870, 37.284863, 24.984522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024131, -0.139379, -0.989945,
		0.992685, -0.113836, 0.040226,
		-0.118298, -0.983674, 0.135613,
		39.777382, 36.989761, 25.025206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367943, 37.389153, 24.592886>,  <39.860188, 37.678333, 24.930277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367943, 37.389153, 24.592886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127193, 37.071743, 24.628794>,  <39.982742, 36.881298, 24.650339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127193, 37.071743, 24.628794>,  <40.367943, 37.389153, 24.592886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127193, 37.071743, 24.628794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290810, -0.322478, -0.900798,
		0.743757, -0.516064, 0.424858,
		-0.601877, -0.793527, 0.089769,
		39.946629, 36.833683, 24.655724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777527, 36.842419, 24.451103>,  <40.367943, 37.389153, 24.592886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777527, 36.842419, 24.451103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414402, 36.685642, 24.391432>,  <40.196526, 36.591576, 24.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414402, 36.685642, 24.391432>,  <40.777527, 36.842419, 24.451103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414402, 36.685642, 24.391432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348467, -0.507072, -0.788320,
		0.233331, -0.767633, 0.596906,
		-0.907815, -0.391942, -0.149179,
		40.142059, 36.568058, 24.346678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971420, 36.288212, 24.149412>,  <40.777527, 36.842419, 24.451103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971420, 36.288212, 24.149412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579952, 36.299248, 24.067984>,  <40.345070, 36.305870, 24.019127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579952, 36.299248, 24.067984>,  <40.971420, 36.288212, 24.149412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579952, 36.299248, 24.067984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172033, -0.431533, -0.885542,
		-0.112282, -0.901675, 0.417582,
		-0.978672, 0.027593, -0.203571,
		40.286350, 36.307526, 24.006912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772652, 35.630989, 23.801241>,  <40.971420, 36.288212, 24.149412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772652, 35.630989, 23.801241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458336, 35.856197, 23.698841>,  <40.269745, 35.991322, 23.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458336, 35.856197, 23.698841>,  <40.772652, 35.630989, 23.801241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458336, 35.856197, 23.698841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054906, -0.348771, -0.935598,
		-0.616049, -0.749241, 0.243148,
		-0.785792, 0.563024, -0.255998,
		40.222599, 36.025105, 23.622042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291718, 35.184708, 23.437294>,  <40.772652, 35.630989, 23.801241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291718, 35.184708, 23.437294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159130, 35.549492, 23.340578>,  <40.079578, 35.768360, 23.282549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159130, 35.549492, 23.340578>,  <40.291718, 35.184708, 23.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159130, 35.549492, 23.340578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114813, -0.293364, -0.949082,
		-0.936456, -0.286826, 0.201944,
		-0.331465, 0.911959, -0.241791,
		40.059692, 35.823078, 23.268042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564655, 35.056664, 23.142412>,  <40.291718, 35.184708, 23.437294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564655, 35.056664, 23.142412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711548, 35.400826, 23.001083>,  <39.799683, 35.607323, 22.916286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711548, 35.400826, 23.001083>,  <39.564655, 35.056664, 23.142412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711548, 35.400826, 23.001083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226945, -0.285499, -0.931121,
		-0.902018, 0.422122, 0.090421,
		0.367232, 0.860409, -0.353324,
		39.821716, 35.658947, 22.895086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062206, 35.504360, 22.811935>,  <39.564655, 35.056664, 23.142412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062206, 35.504360, 22.811935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412018, 35.605495, 22.646397>,  <39.621906, 35.666176, 22.547073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412018, 35.605495, 22.646397>,  <39.062206, 35.504360, 22.811935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412018, 35.605495, 22.646397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315273, -0.352023, -0.881296,
		-0.368505, 0.901196, -0.228144,
		0.874533, 0.252835, -0.413845,
		39.674377, 35.681347, 22.522243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876236, 35.738224, 22.158701>,  <39.062206, 35.504360, 22.811935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876236, 35.738224, 22.158701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269352, 35.667446, 22.137459>,  <39.505222, 35.624981, 22.124714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269352, 35.667446, 22.137459>,  <38.876236, 35.738224, 22.158701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269352, 35.667446, 22.137459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114527, -0.358008, -0.926668,
		0.144955, 0.916800, -0.372110,
		0.982788, -0.176942, -0.053104,
		39.564190, 35.614365, 22.121529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097271, 35.890701, 21.502214>,  <38.876236, 35.738224, 22.158701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097271, 35.890701, 21.502214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386063, 35.643223, 21.626123>,  <39.559338, 35.494736, 21.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386063, 35.643223, 21.626123>,  <39.097271, 35.890701, 21.502214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386063, 35.643223, 21.626123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007910, -0.440297, -0.897817,
		0.691869, 0.650656, -0.312991,
		0.721979, -0.618697, 0.309775,
		39.602657, 35.457615, 21.719055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653030, 35.906956, 20.994678>,  <39.097271, 35.890701, 21.502214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653030, 35.906956, 20.994678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683735, 35.560139, 21.191589>,  <39.702160, 35.352047, 21.309736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683735, 35.560139, 21.191589>,  <39.653030, 35.906956, 20.994678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683735, 35.560139, 21.191589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243885, -0.495065, -0.833925,
		0.966761, -0.056045, -0.249462,
		0.076763, -0.867046, 0.492278,
		39.706764, 35.300026, 21.339273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081879, 35.541451, 20.597248>,  <39.653030, 35.906956, 20.994678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081879, 35.541451, 20.597248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926117, 35.248535, 20.820721>,  <39.832661, 35.072788, 20.954803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926117, 35.248535, 20.820721>,  <40.081879, 35.541451, 20.597248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926117, 35.248535, 20.820721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044199, -0.591003, -0.805457,
		0.920006, -0.338342, 0.197773,
		-0.389404, -0.732284, 0.558680,
		39.809296, 35.028851, 20.988325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425224, 35.009956, 20.440361>,  <40.081879, 35.541451, 20.597248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425224, 35.009956, 20.440361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085892, 34.855438, 20.585194>,  <39.882290, 34.762726, 20.672092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085892, 34.855438, 20.585194>,  <40.425224, 35.009956, 20.440361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085892, 34.855438, 20.585194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031971, -0.645248, -0.763304,
		0.528494, -0.659113, 0.535036,
		-0.848335, -0.386297, 0.362082,
		39.831390, 34.739548, 20.693819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564663, 34.386726, 20.458717>,  <40.425224, 35.009956, 20.440361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564663, 34.386726, 20.458717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165325, 34.390381, 20.436018>,  <39.925720, 34.392574, 20.422398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165325, 34.390381, 20.436018>,  <40.564663, 34.386726, 20.458717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165325, 34.390381, 20.436018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036851, -0.655922, -0.753928,
		-0.044115, -0.754773, 0.654501,
		-0.998347, 0.009141, -0.056750,
		39.865822, 34.393124, 20.418993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072132, 33.963604, 20.231485>,  <40.564663, 34.386726, 20.458717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072132, 33.963604, 20.231485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465530, 33.916351, 20.286301>,  <41.701569, 33.888000, 20.319191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465530, 33.916351, 20.286301>,  <41.072132, 33.963604, 20.231485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465530, 33.916351, 20.286301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075984, 0.417715, 0.905395,
		-0.164202, -0.900865, 0.401845,
		0.983496, -0.118134, 0.137041,
		41.760578, 33.880913, 20.327414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097130, 33.761223, 20.907448>,  <41.072132, 33.963604, 20.231485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097130, 33.761223, 20.907448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464516, 33.894970, 20.822960>,  <41.684948, 33.975220, 20.772268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464516, 33.894970, 20.822960>,  <41.097130, 33.761223, 20.907448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464516, 33.894970, 20.822960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059468, 0.411232, 0.909589,
		0.390990, -0.847993, 0.357821,
		0.918472, 0.334361, -0.211216,
		41.740055, 33.995281, 20.759594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544651, 33.352596, 21.381115>,  <41.097130, 33.761223, 20.907448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544651, 33.352596, 21.381115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760574, 33.674725, 21.283089>,  <41.890129, 33.868004, 21.224272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760574, 33.674725, 21.283089>,  <41.544651, 33.352596, 21.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760574, 33.674725, 21.283089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189420, 0.167453, 0.967512,
		0.820197, -0.568695, -0.062151,
		0.539812, 0.805323, -0.245067,
		41.922520, 33.916321, 21.209568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127052, 33.296757, 21.764210>,  <41.544651, 33.352596, 21.381115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127052, 33.296757, 21.764210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124905, 33.685486, 21.669947>,  <42.123615, 33.918724, 21.613388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124905, 33.685486, 21.669947>,  <42.127052, 33.296757, 21.764210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124905, 33.685486, 21.669947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193123, 0.232234, 0.953295,
		0.981160, -0.040396, -0.188927,
		-0.005365, 0.971821, -0.235660,
		42.123295, 33.977032, 21.599249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688858, 33.437698, 22.108543>,  <42.127052, 33.296757, 21.764210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688858, 33.437698, 22.108543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448055, 33.753582, 22.061312>,  <42.303574, 33.943111, 22.032972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448055, 33.753582, 22.061312>,  <42.688858, 33.437698, 22.108543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448055, 33.753582, 22.061312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290595, 0.354417, 0.888787,
		0.743734, 0.500744, -0.442848,
		-0.602008, 0.789711, -0.118079,
		42.267452, 33.990494, 22.025888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029301, 34.048908, 22.157415>,  <42.688858, 33.437698, 22.108543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029301, 34.048908, 22.157415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664902, 34.175819, 22.262810>,  <42.446262, 34.251965, 22.326046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664902, 34.175819, 22.262810>,  <43.029301, 34.048908, 22.157415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664902, 34.175819, 22.262810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368928, 0.341366, 0.864501,
		0.184339, 0.884763, -0.428034,
		-0.910995, 0.317274, 0.263487,
		42.391602, 34.271000, 22.341856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209686, 34.619965, 22.475840>,  <43.029301, 34.048908, 22.157415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209686, 34.619965, 22.475840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834526, 34.575302, 22.607214>,  <42.609428, 34.548504, 22.686039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834526, 34.575302, 22.607214>,  <43.209686, 34.619965, 22.475840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834526, 34.575302, 22.607214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259353, 0.403061, 0.877655,
		-0.230372, 0.908337, -0.349075,
		-0.937904, -0.111653, 0.328434,
		42.553154, 34.541805, 22.705744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983536, 35.374519, 22.735809>,  <43.209686, 34.619965, 22.475840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983536, 35.374519, 22.735809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731712, 35.124443, 22.920328>,  <42.580616, 34.974400, 23.031040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731712, 35.124443, 22.920328>,  <42.983536, 35.374519, 22.735809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731712, 35.124443, 22.920328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179628, 0.460520, 0.869284,
		-0.755901, 0.630129, -0.177624,
		-0.629561, -0.625187, 0.461296,
		42.542843, 34.936886, 23.058718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508408, 35.750393, 23.189884>,  <42.983536, 35.374519, 22.735809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508408, 35.750393, 23.189884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525330, 35.384953, 23.351645>,  <42.535480, 35.165688, 23.448700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525330, 35.384953, 23.351645>,  <42.508408, 35.750393, 23.189884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525330, 35.384953, 23.351645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093769, 0.406608, 0.908778,
		-0.994695, -0.000522, 0.102868,
		0.042301, -0.913603, 0.404402,
		42.538021, 35.110870, 23.472965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947773, 35.710102, 23.742846>,  <42.508408, 35.750393, 23.189884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947773, 35.710102, 23.742846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211967, 35.417660, 23.811243>,  <42.370483, 35.242195, 23.852282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211967, 35.417660, 23.811243>,  <41.947773, 35.710102, 23.742846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211967, 35.417660, 23.811243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012038, 0.238021, 0.971185,
		-0.750743, -0.639395, 0.166010,
		0.660485, -0.731109, 0.170996,
		42.410114, 35.198326, 23.862541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799149, 35.454121, 24.410263>,  <41.947773, 35.710102, 23.742846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799149, 35.454121, 24.410263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155399, 35.279423, 24.359602>,  <42.369148, 35.174603, 24.329205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155399, 35.279423, 24.359602>,  <41.799149, 35.454121, 24.410263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155399, 35.279423, 24.359602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084176, -0.115363, 0.989750,
		-0.446880, -0.892157, -0.065982,
		0.890625, -0.436745, -0.126652,
		42.422588, 35.148399, 24.321606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742897, 34.849518, 24.874689>,  <41.799149, 35.454121, 24.410263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742897, 34.849518, 24.874689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126907, 34.933666, 24.800840>,  <42.357315, 34.984158, 24.756531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126907, 34.933666, 24.800840>,  <41.742897, 34.849518, 24.874689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126907, 34.933666, 24.800840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151042, 0.165930, 0.974502,
		0.235648, -0.963436, 0.127521,
		0.960030, 0.210379, -0.184620,
		42.414917, 34.996780, 24.745455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203110, 34.459785, 25.317062>,  <41.742897, 34.849518, 24.874689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203110, 34.459785, 25.317062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404972, 34.792885, 25.225967>,  <42.526089, 34.992744, 25.171310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404972, 34.792885, 25.225967>,  <42.203110, 34.459785, 25.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404972, 34.792885, 25.225967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283079, 0.089595, 0.954903,
		0.815593, -0.546361, -0.190518,
		0.504652, 0.832744, -0.227736,
		42.556366, 35.042709, 25.157646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804871, 34.400928, 25.751637>,  <42.203110, 34.459785, 25.317062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804871, 34.400928, 25.751637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751160, 34.781219, 25.639866>,  <42.718933, 35.009396, 25.572803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751160, 34.781219, 25.639866>,  <42.804871, 34.400928, 25.751637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751160, 34.781219, 25.639866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435285, 0.309907, 0.845271,
		0.890223, -0.008134, -0.455452,
		-0.134273, 0.950732, -0.279427,
		42.710876, 35.066441, 25.556038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234615, 34.776539, 26.203243>,  <42.804871, 34.400928, 25.751637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234615, 34.776539, 26.203243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063633, 35.096375, 26.034512>,  <42.961044, 35.288277, 25.933271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063633, 35.096375, 26.034512>,  <43.234615, 34.776539, 26.203243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063633, 35.096375, 26.034512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103238, 0.506729, 0.855901,
		0.898123, 0.322311, -0.299152,
		-0.427455, 0.799588, -0.421831,
		42.935398, 35.336250, 25.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719757, 35.290012, 26.331915>,  <43.234615, 34.776539, 26.203243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719757, 35.290012, 26.331915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357693, 35.450142, 26.274738>,  <43.140453, 35.546219, 26.240433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357693, 35.450142, 26.274738>,  <43.719757, 35.290012, 26.331915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357693, 35.450142, 26.274738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123598, 0.569602, 0.812574,
		0.406712, 0.717840, -0.565059,
		-0.905157, 0.400324, -0.142940,
		43.086147, 35.570240, 26.231855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743763, 36.029869, 26.602215>,  <43.719757, 35.290012, 26.331915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743763, 36.029869, 26.602215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354336, 35.942612, 26.575127>,  <43.120682, 35.890255, 26.558874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354336, 35.942612, 26.575127>,  <43.743763, 36.029869, 26.602215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354336, 35.942612, 26.575127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183677, 0.571433, 0.799830,
		-0.135781, 0.791124, -0.596394,
		-0.973564, -0.218146, -0.067722,
		43.062267, 35.877167, 26.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401669, 36.660408, 26.786810>,  <43.743763, 36.029869, 26.602215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401669, 36.660408, 26.786810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134045, 36.371311, 26.856098>,  <42.973473, 36.197853, 26.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134045, 36.371311, 26.856098>,  <43.401669, 36.660408, 26.786810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134045, 36.371311, 26.856098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202604, 0.401610, 0.893119,
		-0.715063, 0.562451, -0.415130,
		-0.669056, -0.722743, 0.173222,
		42.933327, 36.154488, 26.908064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771236, 36.981133, 26.998394>,  <43.401669, 36.660408, 26.786810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771236, 36.981133, 26.998394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782265, 36.603359, 27.129410>,  <42.788883, 36.376694, 27.208019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782265, 36.603359, 27.129410>,  <42.771236, 36.981133, 26.998394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782265, 36.603359, 27.129410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140736, 0.320732, 0.936656,
		-0.989663, -0.071920, -0.124073,
		0.027570, -0.944436, 0.327538,
		42.790535, 36.320030, 27.227671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171001, 36.993233, 27.305712>,  <42.771236, 36.981133, 26.998394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171001, 36.993233, 27.305712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414845, 36.699249, 27.424519>,  <42.561150, 36.522861, 27.495802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414845, 36.699249, 27.424519>,  <42.171001, 36.993233, 27.305712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414845, 36.699249, 27.424519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022980, 0.390916, 0.920139,
		-0.792369, -0.554100, 0.255195,
		0.609609, -0.734954, 0.297017,
		42.597729, 36.478764, 27.513624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861111, 36.661423, 27.947374>,  <42.171001, 36.993233, 27.305712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861111, 36.661423, 27.947374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238930, 36.530121, 27.951004>,  <42.465622, 36.451340, 27.953182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238930, 36.530121, 27.951004>,  <41.861111, 36.661423, 27.947374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238930, 36.530121, 27.951004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095618, 0.301366, 0.948702,
		-0.314155, -0.895223, 0.316042,
		0.944545, -0.328258, 0.009076,
		42.522293, 36.431644, 27.953728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843216, 36.218182, 28.476555>,  <41.861111, 36.661423, 27.947374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843216, 36.218182, 28.476555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235588, 36.279434, 28.428663>,  <42.471012, 36.316185, 28.399929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235588, 36.279434, 28.428663>,  <41.843216, 36.218182, 28.476555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235588, 36.279434, 28.428663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098589, 0.138897, 0.985387,
		0.167519, -0.978397, 0.121151,
		0.980927, 0.153127, -0.119727,
		42.529865, 36.325375, 28.392744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217941, 35.734997, 28.911058>,  <41.843216, 36.218182, 28.476555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217941, 35.734997, 28.911058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457916, 36.047077, 28.840229>,  <42.601902, 36.234325, 28.797731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457916, 36.047077, 28.840229>,  <42.217941, 35.734997, 28.911058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457916, 36.047077, 28.840229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118259, 0.132414, 0.984114,
		0.791258, -0.611347, -0.012826,
		0.599937, 0.780205, -0.177071,
		42.637897, 36.281139, 28.787107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637291, 35.699226, 29.446981>,  <42.217941, 35.734997, 28.911058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637291, 35.699226, 29.446981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715290, 36.071194, 29.322250>,  <42.762089, 36.294373, 29.247412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715290, 36.071194, 29.322250>,  <42.637291, 35.699226, 29.446981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715290, 36.071194, 29.322250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011223, 0.315795, 0.948761,
		0.980740, -0.188502, 0.051141,
		0.194993, 0.929914, -0.311829,
		42.773788, 36.350166, 29.228703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261467, 35.870701, 29.809679>,  <42.637291, 35.699226, 29.446981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261467, 35.870701, 29.809679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086296, 36.207317, 29.683170>,  <42.981194, 36.409286, 29.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086296, 36.207317, 29.683170>,  <43.261467, 35.870701, 29.809679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086296, 36.207317, 29.683170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045663, 0.330523, 0.942692,
		0.897849, 0.427274, -0.106319,
		-0.437929, 0.841541, -0.316271,
		42.954918, 36.459778, 29.588289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739365, 36.424465, 30.138901>,  <43.261467, 35.870701, 29.809679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739365, 36.424465, 30.138901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390652, 36.596046, 30.044250>,  <43.181423, 36.698994, 29.987461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390652, 36.596046, 30.044250>,  <43.739365, 36.424465, 30.138901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390652, 36.596046, 30.044250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038874, 0.420920, 0.906264,
		0.488346, 0.799265, -0.350276,
		-0.871784, 0.428954, -0.236625,
		43.129116, 36.724731, 29.973263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731457, 37.141972, 30.508308>,  <43.739365, 36.424465, 30.138901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731457, 37.141972, 30.508308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347183, 37.065945, 30.427349>,  <43.116619, 37.020329, 30.378775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347183, 37.065945, 30.427349>,  <43.731457, 37.141972, 30.508308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347183, 37.065945, 30.427349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269255, 0.459833, 0.846201,
		-0.067768, 0.867426, -0.492930,
		-0.960682, -0.190069, -0.202397,
		43.058979, 37.008923, 30.366631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319225, 37.875450, 30.471046>,  <43.731457, 37.141972, 30.508308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319225, 37.875450, 30.471046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103580, 37.551037, 30.561901>,  <42.974194, 37.356388, 30.616413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103580, 37.551037, 30.561901>,  <43.319225, 37.875450, 30.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103580, 37.551037, 30.561901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324525, 0.448889, 0.832576,
		-0.777202, 0.375139, -0.505200,
		-0.539110, -0.811030, 0.227135,
		42.941849, 37.307728, 30.630041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892517, 38.138744, 30.904545>,  <43.319225, 37.875450, 30.471046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892517, 38.138744, 30.904545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822704, 37.751968, 30.978903>,  <42.780815, 37.519901, 31.023518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822704, 37.751968, 30.978903>,  <42.892517, 38.138744, 30.904545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822704, 37.751968, 30.978903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234680, 0.224202, 0.945864,
		-0.956276, 0.121461, -0.266053,
		-0.174535, -0.966944, 0.185894,
		42.770344, 37.461884, 31.034672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165318, 37.999222, 31.077190>,  <42.892517, 38.138744, 30.904545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165318, 37.999222, 31.077190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377903, 37.700546, 31.237190>,  <42.505455, 37.521339, 31.333189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377903, 37.700546, 31.237190>,  <42.165318, 37.999222, 31.077190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377903, 37.700546, 31.237190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357251, 0.230580, 0.905099,
		-0.768062, -0.623925, -0.144212,
		0.531462, -0.746693, 0.399998,
		42.537342, 37.476540, 31.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662064, 37.742355, 31.497478>,  <42.165318, 37.999222, 31.077190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662064, 37.742355, 31.497478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024483, 37.624615, 31.619087>,  <42.241936, 37.553970, 31.692053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024483, 37.624615, 31.619087>,  <41.662064, 37.742355, 31.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024483, 37.624615, 31.619087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278198, 0.127030, 0.952087,
		-0.318871, -0.947216, 0.033206,
		0.906050, -0.294355, 0.304020,
		42.296299, 37.536308, 31.710293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475372, 37.262836, 31.845068>,  <41.662064, 37.742355, 31.497478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475372, 37.262836, 31.845068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846355, 37.316429, 31.984705>,  <42.068947, 37.348583, 32.068485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846355, 37.316429, 31.984705>,  <41.475372, 37.262836, 31.845068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846355, 37.316429, 31.984705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357790, 0.046752, 0.932631,
		0.108639, -0.989880, 0.091299,
		0.927461, 0.133986, 0.349091,
		42.124596, 37.356625, 32.089432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526257, 36.806973, 32.400372>,  <41.475372, 37.262836, 31.845068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526257, 36.806973, 32.400372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837051, 37.050381, 32.464863>,  <42.023529, 37.196426, 32.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837051, 37.050381, 32.464863>,  <41.526257, 36.806973, 32.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837051, 37.050381, 32.464863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202569, -0.000813, 0.979268,
		0.596032, -0.793540, 0.122635,
		0.776989, 0.608517, 0.161232,
		42.070148, 37.232937, 32.513233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858406, 36.546066, 32.971569>,  <41.526257, 36.806973, 32.400372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858406, 36.546066, 32.971569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995186, 36.921928, 32.975895>,  <42.077251, 37.147446, 32.978489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995186, 36.921928, 32.975895>,  <41.858406, 36.546066, 32.971569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995186, 36.921928, 32.975895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008180, -0.014481, 0.999862,
		0.939684, -0.341810, -0.012638,
		0.341946, 0.939658, 0.010811,
		42.097771, 37.203827, 32.979137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543144, 36.530178, 33.249596>,  <41.858406, 36.546066, 32.971569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543144, 36.530178, 33.249596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375332, 36.887394, 33.314671>,  <42.274643, 37.101723, 33.353718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375332, 36.887394, 33.314671>,  <42.543144, 36.530178, 33.249596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375332, 36.887394, 33.314671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094027, -0.135507, 0.986305,
		0.902857, 0.429086, -0.027120,
		-0.419534, 0.893042, 0.162690,
		42.249470, 37.155308, 33.363476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914352, 36.700073, 33.884640>,  <42.543144, 36.530178, 33.249596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914352, 36.700073, 33.884640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606209, 36.953350, 33.854679>,  <42.421322, 37.105316, 33.836704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606209, 36.953350, 33.854679>,  <42.914352, 36.700073, 33.884640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606209, 36.953350, 33.854679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064757, 0.039161, 0.997132,
		0.634313, 0.773001, 0.010835,
		-0.770360, 0.633195, -0.074897,
		42.375099, 37.143311, 33.832211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018085, 37.163536, 34.430946>,  <42.914352, 36.700073, 33.884640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018085, 37.163536, 34.430946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635578, 37.225792, 34.331894>,  <42.406075, 37.263145, 34.272461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635578, 37.225792, 34.331894>,  <43.018085, 37.163536, 34.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635578, 37.225792, 34.331894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224605, 0.151562, 0.962591,
		0.187347, 0.976118, -0.109977,
		-0.956271, 0.155638, -0.247636,
		42.348698, 37.272484, 34.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753651, 37.736950, 34.880478>,  <43.018085, 37.163536, 34.430946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753651, 37.736950, 34.880478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447323, 37.513393, 34.753250>,  <42.263527, 37.379261, 34.676914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447323, 37.513393, 34.753250>,  <42.753651, 37.736950, 34.880478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447323, 37.513393, 34.753250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356130, -0.043240, 0.933436,
		-0.535443, 0.828113, -0.165924,
		-0.765815, -0.558892, -0.318068,
		42.217579, 37.345726, 34.657829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078171, 38.084511, 35.114529>,  <42.753651, 37.736950, 34.880478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078171, 38.084511, 35.114529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949642, 37.712467, 35.043369>,  <41.872524, 37.489243, 35.000675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949642, 37.712467, 35.043369>,  <42.078171, 38.084511, 35.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949642, 37.712467, 35.043369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461579, -0.010200, 0.887040,
		-0.826858, 0.367144, -0.426041,
		-0.321326, -0.930108, -0.177900,
		41.853245, 37.433434, 34.989998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403851, 38.052502, 35.237926>,  <42.078171, 38.084511, 35.114529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403851, 38.052502, 35.237926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497894, 37.669308, 35.303631>,  <41.554321, 37.439392, 35.343052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497894, 37.669308, 35.303631>,  <41.403851, 38.052502, 35.237926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497894, 37.669308, 35.303631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488331, 0.029697, 0.872153,
		-0.840392, -0.285261, -0.460834,
		0.235106, -0.957990, 0.164259,
		41.568428, 37.381912, 35.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850578, 37.596439, 35.316692>,  <41.403851, 38.052502, 35.237926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850578, 37.596439, 35.316692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124561, 37.431843, 35.557194>,  <41.288952, 37.333084, 35.701496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124561, 37.431843, 35.557194>,  <40.850578, 37.596439, 35.316692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124561, 37.431843, 35.557194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609001, 0.129630, 0.782505,
		-0.399935, -0.902147, -0.161809,
		0.684960, -0.411493, 0.601252,
		41.330048, 37.308395, 35.737568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462704, 37.500660, 35.873764>,  <40.850578, 37.596439, 35.316692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462704, 37.500660, 35.873764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818867, 37.400127, 36.025562>,  <41.032562, 37.339809, 36.116642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818867, 37.400127, 36.025562>,  <40.462704, 37.500660, 35.873764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818867, 37.400127, 36.025562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345809, 0.168603, 0.923033,
		-0.295968, -0.953104, 0.063213,
		0.890404, -0.251329, 0.379493,
		41.085987, 37.324730, 36.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352463, 37.029350, 36.329479>,  <40.462704, 37.500660, 35.873764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352463, 37.029350, 36.329479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708031, 37.169044, 36.448048>,  <40.921371, 37.252861, 36.519188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708031, 37.169044, 36.448048>,  <40.352463, 37.029350, 36.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708031, 37.169044, 36.448048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390496, 0.239459, 0.888916,
		0.239459, -0.905923, 0.349233,
		-0.888916, -0.349233, -0.296419,
		40.974705, 37.273815, 36.536972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349548, 36.789272, 36.941833>,  <40.352463, 37.029350, 36.329479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349548, 36.789272, 36.941833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627159, 37.076939, 36.955196>,  <40.793728, 37.249538, 36.963215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627159, 37.076939, 36.955196>,  <40.349548, 36.789272, 36.941833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627159, 37.076939, 36.955196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291832, 0.238602, 0.926231,
		0.658147, -0.652581, 0.375474,
		0.694030, 0.719171, 0.033409,
		40.835369, 37.292690, 36.965218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492573, 36.842049, 37.685879>,  <40.349548, 36.789272, 36.941833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492573, 36.842049, 37.685879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616806, 37.187809, 37.527714>,  <40.691345, 37.395264, 37.432816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616806, 37.187809, 37.527714>,  <40.492573, 36.842049, 37.685879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616806, 37.187809, 37.527714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055529, 0.431776, 0.900270,
		0.948923, -0.257653, 0.182102,
		0.310584, 0.864398, -0.395415,
		40.709980, 37.447128, 37.409088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166531, 37.003025, 37.985928>,  <40.492573, 36.842049, 37.685879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166531, 37.003025, 37.985928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987778, 37.335289, 37.853081>,  <40.880527, 37.534649, 37.773373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987778, 37.335289, 37.853081>,  <41.166531, 37.003025, 37.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987778, 37.335289, 37.853081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043563, 0.391015, 0.919353,
		0.893531, 0.396376, -0.210924,
		-0.446884, 0.830659, -0.332116,
		40.853714, 37.584488, 37.753445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469326, 37.506817, 38.396519>,  <41.166531, 37.003025, 37.985928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469326, 37.506817, 38.396519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134933, 37.652023, 38.231907>,  <40.934299, 37.739147, 38.133141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134933, 37.652023, 38.231907>,  <41.469326, 37.506817, 38.396519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134933, 37.652023, 38.231907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246775, 0.421133, 0.872783,
		0.490147, 0.831182, -0.262473,
		-0.835977, 0.363020, -0.411532,
		40.884140, 37.760929, 38.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428524, 38.241959, 38.593082>,  <41.469326, 37.506817, 38.396519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428524, 38.241959, 38.593082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 38.100571, 38.503410>,  <40.847286, 38.015736, 38.449608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 38.100571, 38.503410>,  <41.428524, 38.241959, 38.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065250, 38.100571, 38.503410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367783, 0.418188, 0.830575,
		-0.199838, 0.836764, -0.509794,
		-0.908185, -0.353474, -0.224177,
		40.792793, 37.994530, 38.436157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938839, 38.760040, 38.352295>,  <41.428524, 38.241959, 38.593082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938839, 38.760040, 38.352295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754669, 38.458740, 38.540176>,  <40.644165, 38.277958, 38.652905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754669, 38.458740, 38.540176>,  <40.938839, 38.760040, 38.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754669, 38.458740, 38.540176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439272, 0.653129, 0.616816,
		-0.771393, 0.077673, -0.631601,
		-0.460427, -0.753252, 0.469700,
		40.616543, 38.232765, 38.681087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195827, 38.923458, 38.519062>,  <40.938839, 38.760040, 38.352295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195827, 38.923458, 38.519062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283237, 38.629433, 38.775787>,  <40.335682, 38.453018, 38.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283237, 38.629433, 38.775787>,  <40.195827, 38.923458, 38.519062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283237, 38.629433, 38.775787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408404, 0.528444, 0.744280,
		-0.886257, -0.424764, -0.184725,
		0.218526, -0.735066, 0.641813,
		40.348797, 38.408913, 38.968330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741180, 39.339481, 38.862999>,  <40.195827, 38.923458, 38.519062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741180, 39.339481, 38.862999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860798, 39.012836, 39.060467>,  <39.932568, 38.816849, 39.178947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860798, 39.012836, 39.060467>,  <39.741180, 39.339481, 38.862999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860798, 39.012836, 39.060467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554219, 0.272512, 0.786498,
		-0.776797, -0.508800, -0.371091,
		0.299043, -0.816615, 0.493673,
		39.950512, 38.767853, 39.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259930, 39.136940, 39.213188>,  <39.741180, 39.339481, 38.862999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259930, 39.136940, 39.213188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540363, 38.934078, 39.413700>,  <39.708622, 38.812363, 39.534008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540363, 38.934078, 39.413700>,  <39.259930, 39.136940, 39.213188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540363, 38.934078, 39.413700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530682, 0.098474, 0.841831,
		-0.476301, -0.856211, -0.200099,
		0.701081, -0.507154, 0.501279,
		39.750687, 38.781933, 39.564083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965351, 38.499435, 39.474621>,  <39.259930, 39.136940, 39.213188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965351, 38.499435, 39.474621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279037, 38.586777, 39.706944>,  <39.467247, 38.639179, 39.846336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279037, 38.586777, 39.706944>,  <38.965351, 38.499435, 39.474621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279037, 38.586777, 39.706944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528197, -0.256281, 0.809523,
		0.325609, -0.941617, -0.085647,
		0.784211, 0.218349, 0.580807,
		39.514301, 38.652283, 39.881184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019291, 37.991058, 40.032097>,  <38.965351, 38.499435, 39.474621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019291, 37.991058, 40.032097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185783, 38.335354, 40.149319>,  <39.285679, 38.541931, 40.219654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185783, 38.335354, 40.149319>,  <39.019291, 37.991058, 40.032097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185783, 38.335354, 40.149319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519458, -0.039425, 0.853586,
		0.746267, -0.507521, 0.430706,
		0.416232, 0.860737, 0.293057,
		39.310654, 38.593575, 40.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179962, 37.944347, 40.775391>,  <39.019291, 37.991058, 40.032097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179962, 37.944347, 40.775391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201229, 38.340347, 40.723110>,  <39.213989, 38.577946, 40.691742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201229, 38.340347, 40.723110>,  <39.179962, 37.944347, 40.775391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201229, 38.340347, 40.723110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570604, 0.137528, 0.809628,
		0.819503, 0.031535, 0.572206,
		0.053163, 0.989996, -0.130699,
		39.217178, 38.637344, 40.683899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330135, 38.183987, 41.404678>,  <39.179962, 37.944347, 40.775391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330135, 38.183987, 41.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175068, 38.476673, 41.180428>,  <39.082027, 38.652287, 41.045876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175068, 38.476673, 41.180428>,  <39.330135, 38.183987, 41.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175068, 38.476673, 41.180428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533704, 0.317715, 0.783720,
		0.751583, 0.603030, 0.267355,
		-0.387664, 0.731719, -0.560628,
		39.058769, 38.696190, 41.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404491, 38.789474, 41.803238>,  <39.330135, 38.183987, 41.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404491, 38.789474, 41.803238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105381, 38.843491, 41.543209>,  <38.925915, 38.875900, 41.387192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105381, 38.843491, 41.543209>,  <39.404491, 38.789474, 41.803238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105381, 38.843491, 41.543209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546902, 0.429888, 0.718397,
		0.376470, 0.892727, -0.247607,
		-0.747776, 0.135039, -0.650074,
		38.881050, 38.884003, 41.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120392, 39.472393, 41.836006>,  <39.404491, 38.789474, 41.803238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120392, 39.472393, 41.836006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816669, 39.267700, 41.675213>,  <38.634438, 39.144882, 41.578739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816669, 39.267700, 41.675213>,  <39.120392, 39.472393, 41.836006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816669, 39.267700, 41.675213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559437, 0.197789, 0.804928,
		-0.332402, 0.836067, -0.436464,
		-0.759302, -0.511734, -0.401982,
		38.588879, 39.114182, 41.554619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564430, 39.858242, 42.019047>,  <39.120392, 39.472393, 41.836006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564430, 39.858242, 42.019047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395870, 39.506134, 41.931831>,  <38.294735, 39.294868, 41.879501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395870, 39.506134, 41.931831>,  <38.564430, 39.858242, 42.019047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395870, 39.506134, 41.931831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660937, 0.133488, 0.738474,
		-0.620952, 0.455304, -0.638057,
		-0.421404, -0.880272, -0.218038,
		38.269447, 39.242054, 41.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894138, 39.945881, 41.983269>,  <38.564430, 39.858242, 42.019047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894138, 39.945881, 41.983269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958977, 39.573277, 42.113506>,  <37.997879, 39.349712, 42.191650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958977, 39.573277, 42.113506>,  <37.894138, 39.945881, 41.983269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958977, 39.573277, 42.113506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560703, 0.184568, 0.807184,
		-0.811995, -0.313408, -0.492382,
		0.162100, -0.931510, 0.325597,
		38.007607, 39.293823, 42.211185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349930, 39.788708, 42.266476>,  <37.894138, 39.945881, 41.983269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349930, 39.788708, 42.266476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604500, 39.523571, 42.424263>,  <37.757244, 39.364491, 42.518936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604500, 39.523571, 42.424263>,  <37.349930, 39.788708, 42.266476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604500, 39.523571, 42.424263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444983, 0.102211, 0.889687,
		-0.630038, -0.741753, -0.229902,
		0.636429, -0.662839, 0.394464,
		37.795429, 39.324718, 42.542603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346363, 39.651058, 42.968975>,  <37.349930, 39.788708, 42.266476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346363, 39.651058, 42.968975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177853, 39.288288, 42.967354>,  <37.076744, 39.070625, 42.966381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177853, 39.288288, 42.967354>,  <37.346363, 39.651058, 42.968975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177853, 39.288288, 42.967354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856297, -0.396281, -0.331235,
		0.298798, -0.143013, 0.943540,
		-0.421278, -0.906923, -0.004054,
		37.051468, 39.016212, 42.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674557, 39.142387, 43.397957>,  <37.346363, 39.651058, 42.968975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674557, 39.142387, 43.397957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501263, 38.999092, 43.067146>,  <37.397285, 38.913116, 42.868660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501263, 38.999092, 43.067146>,  <37.674557, 39.142387, 43.397957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501263, 38.999092, 43.067146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899224, -0.233799, -0.369777,
		-0.060892, -0.903883, 0.423424,
		-0.433231, -0.358236, -0.827030,
		37.371292, 38.891621, 42.819038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114624, 38.569016, 43.168480>,  <37.674557, 39.142387, 43.397957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114624, 38.569016, 43.168480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908699, 38.708992, 42.855427>,  <37.785145, 38.792976, 42.667595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908699, 38.708992, 42.855427>,  <38.114624, 38.569016, 43.168480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908699, 38.708992, 42.855427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789008, -0.163660, -0.592184,
		-0.335313, -0.922366, -0.191849,
		-0.514812, 0.349937, -0.782631,
		37.754253, 38.813972, 42.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194145, 38.083874, 42.590248>,  <38.114624, 38.569016, 43.168480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194145, 38.083874, 42.590248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146030, 38.461906, 42.468689>,  <38.117161, 38.688725, 42.395756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146030, 38.461906, 42.468689>,  <38.194145, 38.083874, 42.590248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146030, 38.461906, 42.468689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764215, -0.107233, -0.635984,
		-0.633644, -0.308745, -0.709346,
		-0.120292, 0.945081, -0.303896,
		38.109943, 38.745430, 42.377522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317844, 38.037022, 41.954697>,  <38.194145, 38.083874, 42.590248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317844, 38.037022, 41.954697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330276, 38.434547, 41.997330>,  <38.337738, 38.673065, 42.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330276, 38.434547, 41.997330>,  <38.317844, 38.037022, 41.954697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330276, 38.434547, 41.997330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696882, 0.054891, -0.715082,
		-0.716512, 0.096502, -0.690868,
		0.031085, 0.993818, 0.106581,
		38.339603, 38.732693, 42.029305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741287, 38.168301, 41.568451>,  <38.317844, 38.037022, 41.954697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741287, 38.168301, 41.568451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905396, 38.516731, 41.676453>,  <38.003860, 38.725792, 41.741253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905396, 38.516731, 41.676453>,  <37.741287, 38.168301, 41.568451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905396, 38.516731, 41.676453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407570, 0.089719, -0.908756,
		-0.815822, 0.482880, -0.318216,
		0.410270, 0.871078, 0.270002,
		38.028477, 38.778053, 41.757454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609100, 38.510551, 40.920364>,  <37.741287, 38.168301, 41.568451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609100, 38.510551, 40.920364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897530, 38.701363, 41.121361>,  <38.070587, 38.815849, 41.241959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897530, 38.701363, 41.121361>,  <37.609100, 38.510551, 40.920364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897530, 38.701363, 41.121361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559413, 0.027052, -0.828447,
		-0.408788, 0.878470, -0.247351,
		0.721075, 0.477030, 0.502486,
		38.113853, 38.844471, 41.272106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827042, 39.025845, 40.435280>,  <37.609100, 38.510551, 40.920364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827042, 39.025845, 40.435280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122585, 38.993763, 40.702908>,  <38.299911, 38.974514, 40.863483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122585, 38.993763, 40.702908>,  <37.827042, 39.025845, 40.435280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122585, 38.993763, 40.702908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667807, 0.219879, -0.711117,
		-0.090078, 0.972224, 0.216022,
		0.738864, -0.080205, 0.669065,
		38.344246, 38.969700, 40.903625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339241, 39.456738, 40.120045>,  <37.827042, 39.025845, 40.435280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339241, 39.456738, 40.120045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538891, 39.280018, 40.418221>,  <38.658680, 39.173985, 40.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538891, 39.280018, 40.418221>,  <38.339241, 39.456738, 40.120045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538891, 39.280018, 40.418221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866428, 0.267541, -0.421573,
		-0.013187, 0.856292, 0.516324,
		0.499127, -0.441798, 0.745444,
		38.688629, 39.147480, 40.641853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938221, 39.859386, 40.280384>,  <38.339241, 39.456738, 40.120045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938221, 39.859386, 40.280384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014797, 39.500355, 40.439232>,  <39.060745, 39.284935, 40.534542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014797, 39.500355, 40.439232>,  <38.938221, 39.859386, 40.280384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014797, 39.500355, 40.439232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913794, 0.015323, -0.405889,
		0.358232, 0.440590, 0.823134,
		0.191443, -0.897578, 0.397119,
		39.072231, 39.231083, 40.558369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611160, 39.895042, 40.582623>,  <38.938221, 39.859386, 40.280384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611160, 39.895042, 40.582623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523106, 39.517197, 40.485264>,  <39.470272, 39.290489, 40.426849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523106, 39.517197, 40.485264>,  <39.611160, 39.895042, 40.582623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523106, 39.517197, 40.485264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911386, -0.110220, -0.396519,
		0.347730, -0.309120, 0.885171,
		-0.220136, -0.944614, -0.243401,
		39.457066, 39.233814, 40.412243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174374, 39.516926, 40.397835>,  <39.611160, 39.895042, 40.582623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174374, 39.516926, 40.397835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919983, 39.208687, 40.414364>,  <39.767349, 39.023743, 40.424282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919983, 39.208687, 40.414364>,  <40.174374, 39.516926, 40.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919983, 39.208687, 40.414364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596131, -0.524583, -0.607816,
		0.490059, -0.361926, 0.793002,
		-0.635980, -0.770598, 0.041321,
		39.729187, 38.977509, 40.426762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636101, 38.915180, 40.538200>,  <40.174374, 39.516926, 40.397835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636101, 38.915180, 40.538200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284355, 38.837486, 40.364304>,  <40.073307, 38.790871, 40.259964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284355, 38.837486, 40.364304>,  <40.636101, 38.915180, 40.538200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284355, 38.837486, 40.364304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466320, -0.535930, -0.703793,
		-0.096293, -0.821616, 0.561849,
		-0.879360, -0.194232, -0.434742,
		40.020546, 38.779217, 40.233879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661922, 38.213974, 40.258293>,  <40.636101, 38.915180, 40.538200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661922, 38.213974, 40.258293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363674, 38.367748, 40.040573>,  <40.184727, 38.460014, 39.909943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363674, 38.367748, 40.040573>,  <40.661922, 38.213974, 40.258293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363674, 38.367748, 40.040573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325930, -0.502047, -0.801074,
		-0.581228, -0.774697, 0.249034,
		-0.745616, 0.384439, -0.544301,
		40.139988, 38.483082, 39.877281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345840, 37.709362, 39.851913>,  <40.661922, 38.213974, 40.258293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345840, 37.709362, 39.851913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236885, 38.033413, 39.644257>,  <40.171513, 38.227844, 39.519665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236885, 38.033413, 39.644257>,  <40.345840, 37.709362, 39.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236885, 38.033413, 39.644257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401839, -0.394457, -0.826395,
		-0.874261, -0.433708, -0.218096,
		-0.272385, 0.810124, -0.519139,
		40.155170, 38.276451, 39.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980171, 37.313393, 39.313560>,  <40.345840, 37.709362, 39.851913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980171, 37.313393, 39.313560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039253, 37.693439, 39.203678>,  <40.074703, 37.921467, 39.137749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039253, 37.693439, 39.203678>,  <39.980171, 37.313393, 39.313560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039253, 37.693439, 39.203678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196253, -0.300380, -0.933411,
		-0.969365, 0.083955, -0.230830,
		0.147702, 0.950118, -0.274701,
		40.083565, 37.978474, 39.121269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688576, 37.338432, 38.686234>,  <39.980171, 37.313393, 39.313560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688576, 37.338432, 38.686234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946415, 37.644218, 38.682549>,  <40.101116, 37.827690, 38.680340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946415, 37.644218, 38.682549>,  <39.688576, 37.338432, 38.686234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946415, 37.644218, 38.682549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148521, -0.137031, -0.979369,
		-0.749960, 0.629927, -0.201869,
		0.644594, 0.764470, -0.009210,
		40.139793, 37.873558, 38.679787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569408, 37.692390, 38.054935>,  <39.688576, 37.338432, 38.686234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569408, 37.692390, 38.054935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946407, 37.761585, 38.169319>,  <40.172607, 37.803101, 38.237949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946407, 37.761585, 38.169319>,  <39.569408, 37.692390, 38.054935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946407, 37.761585, 38.169319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314839, -0.172509, -0.933336,
		-0.112126, 0.969699, -0.217053,
		0.942499, 0.172988, 0.285957,
		40.229156, 37.813480, 38.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803188, 38.103718, 37.542545>,  <39.569408, 37.692390, 38.054935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803188, 38.103718, 37.542545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146114, 37.993656, 37.716583>,  <40.351868, 37.927620, 37.821007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146114, 37.993656, 37.716583>,  <39.803188, 38.103718, 37.542545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146114, 37.993656, 37.716583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447925, -0.017858, -0.893893,
		0.253728, 0.961234, 0.107938,
		0.857313, -0.275154, 0.435092,
		40.403309, 37.911110, 37.847111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364925, 38.526157, 37.141548>,  <39.803188, 38.103718, 37.542545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364925, 38.526157, 37.141548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549290, 38.220158, 37.321472>,  <40.659908, 38.036556, 37.429428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549290, 38.220158, 37.321472>,  <40.364925, 38.526157, 37.141548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549290, 38.220158, 37.321472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555852, -0.146256, -0.818314,
		0.691801, 0.627199, 0.357818,
		0.460912, -0.765004, 0.449810,
		40.687565, 37.990658, 37.456413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012112, 38.600357, 36.851368>,  <40.364925, 38.526157, 37.141548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012112, 38.600357, 36.851368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945103, 38.236950, 37.004482>,  <40.904896, 38.018906, 37.096352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945103, 38.236950, 37.004482>,  <41.012112, 38.600357, 36.851368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945103, 38.236950, 37.004482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585032, -0.404132, -0.703146,
		0.793520, 0.106153, 0.599214,
		-0.167521, -0.908520, 0.382790,
		40.894848, 37.964394, 37.119320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614410, 38.349461, 36.940788>,  <41.012112, 38.600357, 36.851368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614410, 38.349461, 36.940788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362003, 38.040672, 36.910122>,  <41.210560, 37.855400, 36.891724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362003, 38.040672, 36.910122>,  <41.614410, 38.349461, 36.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362003, 38.040672, 36.910122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585774, -0.409347, -0.699502,
		0.508614, -0.486305, 0.710506,
		-0.631015, -0.771973, -0.076665,
		41.172699, 37.809082, 36.887123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014874, 37.872417, 36.902260>,  <41.614410, 38.349461, 36.940788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014874, 37.872417, 36.902260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681469, 37.694149, 36.771645>,  <41.481426, 37.587189, 36.693275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681469, 37.694149, 36.771645>,  <42.014874, 37.872417, 36.902260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681469, 37.694149, 36.771645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536786, -0.513300, -0.669615,
		0.130816, -0.733416, 0.667074,
		-0.833515, -0.445672, -0.326540,
		41.431416, 37.560448, 36.673683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232109, 37.202099, 36.810154>,  <42.014874, 37.872417, 36.902260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232109, 37.202099, 36.810154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893467, 37.219147, 36.597950>,  <41.690281, 37.229378, 36.470627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893467, 37.219147, 36.597950>,  <42.232109, 37.202099, 36.810154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893467, 37.219147, 36.597950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522469, -0.123353, -0.843689,
		-0.101402, -0.991447, 0.082162,
		-0.846608, 0.042624, -0.530508,
		41.639484, 37.231934, 36.438797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310535, 36.656731, 36.272408>,  <42.232109, 37.202099, 36.810154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310535, 36.656731, 36.272408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022186, 36.893639, 36.128429>,  <41.849174, 37.035782, 36.042042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022186, 36.893639, 36.128429>,  <42.310535, 36.656731, 36.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022186, 36.893639, 36.128429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457134, 0.015963, -0.889254,
		-0.520930, -0.805584, -0.282253,
		-0.720875, 0.592266, -0.359944,
		41.805923, 37.071320, 36.020447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945736, 36.199760, 36.248569>,  <42.310535, 36.656731, 36.272408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945736, 36.199760, 36.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048656, 36.574291, 36.153004>,  <43.110409, 36.799011, 36.095665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048656, 36.574291, 36.153004>,  <42.945736, 36.199760, 36.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048656, 36.574291, 36.153004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939560, -0.300201, -0.164638,
		-0.225879, -0.182116, -0.956981,
		0.257303, 0.936330, -0.238918,
		43.125847, 36.855190, 36.081329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266357, 36.132648, 35.632587>,  <42.945736, 36.199760, 36.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266357, 36.132648, 35.632587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380100, 36.472973, 35.809345>,  <43.448345, 36.677166, 35.915401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380100, 36.472973, 35.809345>,  <43.266357, 36.132648, 35.632587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380100, 36.472973, 35.809345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956451, -0.220058, -0.191771,
		-0.065918, 0.477180, -0.876330,
		0.284353, 0.850807, 0.441894,
		43.465405, 36.728214, 35.941914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595276, 36.432461, 35.085899>,  <43.266357, 36.132648, 35.632587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595276, 36.432461, 35.085899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761311, 36.545967, 35.431660>,  <43.860931, 36.614071, 35.639114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761311, 36.545967, 35.431660>,  <43.595276, 36.432461, 35.085899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761311, 36.545967, 35.431660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909600, -0.148552, -0.388021,
		0.018300, 0.947316, -0.319776,
		0.415082, 0.283767, 0.864397,
		43.885834, 36.631096, 35.690979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120567, 37.081299, 34.985691>,  <43.595276, 36.432461, 35.085899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120567, 37.081299, 34.985691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197487, 36.820427, 35.278999>,  <44.243641, 36.663906, 35.454983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197487, 36.820427, 35.278999>,  <44.120567, 37.081299, 34.985691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197487, 36.820427, 35.278999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897459, -0.185390, -0.400248,
		0.396973, 0.735049, 0.549650,
		0.192302, -0.652176, 0.733271,
		44.255177, 36.624775, 35.498981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768288, 37.163921, 35.144272>,  <44.120567, 37.081299, 34.985691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768288, 37.163921, 35.144272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683071, 36.779659, 35.215549>,  <44.631939, 36.549103, 35.258316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683071, 36.779659, 35.215549>,  <44.768288, 37.163921, 35.144272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683071, 36.779659, 35.215549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888658, -0.266322, -0.373308,
		0.406076, 0.078818, 0.910434,
		-0.213046, -0.960656, 0.178189,
		44.619156, 36.491463, 35.269005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477478, 37.564816, 34.560188>,  <44.768288, 37.163921, 35.144272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477478, 37.564816, 34.560188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704762, 37.315266, 34.345554>,  <44.841133, 37.165535, 34.216774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704762, 37.315266, 34.345554>,  <44.477478, 37.564816, 34.560188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704762, 37.315266, 34.345554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770047, -0.173230, -0.614019,
		0.290118, 0.762084, -0.578843,
		0.568207, -0.623874, -0.536583,
		44.875225, 37.128105, 34.184578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471169, 37.756302, 33.921379>,  <44.477478, 37.564816, 34.560188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471169, 37.756302, 33.921379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536758, 37.362106, 33.938927>,  <44.576115, 37.125587, 33.949455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536758, 37.362106, 33.938927>,  <44.471169, 37.756302, 33.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536758, 37.362106, 33.938927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836243, -0.162456, -0.523741,
		0.523268, 0.049199, -0.850747,
		0.163976, -0.985488, 0.043866,
		44.585953, 37.066460, 33.952087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616493, 37.399029, 33.256802>,  <44.471169, 37.756302, 33.921379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616493, 37.399029, 33.256802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421677, 37.179073, 33.528214>,  <44.304787, 37.047100, 33.691063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421677, 37.179073, 33.528214>,  <44.616493, 37.399029, 33.256802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421677, 37.179073, 33.528214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826430, 0.038870, -0.561697,
		0.282499, -0.834330, -0.473380,
		-0.487040, -0.549893, 0.678534,
		44.275566, 37.014107, 33.731773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363346, 36.823914, 32.945709>,  <44.616493, 37.399029, 33.256802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363346, 36.823914, 32.945709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111881, 36.841854, 33.256260>,  <43.961002, 36.852619, 33.442593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111881, 36.841854, 33.256260>,  <44.363346, 36.823914, 32.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111881, 36.841854, 33.256260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774518, -0.125989, -0.619878,
		0.070012, -0.991017, 0.113945,
		-0.628666, 0.044854, 0.776381,
		43.923283, 36.855309, 33.489174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042637, 36.183441, 33.088703>,  <44.363346, 36.823914, 32.945709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042637, 36.183441, 33.088703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818394, 36.499626, 33.187405>,  <43.683846, 36.689335, 33.246624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818394, 36.499626, 33.187405>,  <44.042637, 36.183441, 33.088703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818394, 36.499626, 33.187405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770634, -0.388970, -0.504804,
		-0.303047, -0.473156, 0.827216,
		-0.560613, 0.790459, 0.246754,
		43.650211, 36.736763, 33.261429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433811, 35.855934, 33.116455>,  <44.042637, 36.183441, 33.088703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433811, 35.855934, 33.116455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336735, 36.241489, 33.072617>,  <43.278488, 36.472824, 33.046314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336735, 36.241489, 33.072617>,  <43.433811, 35.855934, 33.116455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336735, 36.241489, 33.072617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858333, -0.266003, -0.438756,
		-0.452066, -0.012413, 0.891898,
		-0.242693, 0.963893, -0.109596,
		43.263927, 36.530659, 33.039738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973282, 35.333588, 33.369228>,  <43.433811, 35.855934, 33.116455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973282, 35.333588, 33.369228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924473, 35.206181, 33.745243>,  <43.895187, 35.129738, 33.970852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924473, 35.206181, 33.745243>,  <43.973282, 35.333588, 33.369228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924473, 35.206181, 33.745243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832983, -0.547843, -0.077502,
		0.539676, 0.773574, 0.332164,
		-0.122020, -0.318513, 0.940032,
		43.887867, 35.110626, 34.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503712, 35.379173, 34.011143>,  <43.973282, 35.333588, 33.369228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503712, 35.379173, 34.011143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284969, 35.044285, 34.012589>,  <44.153725, 34.843353, 34.013458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284969, 35.044285, 34.012589>,  <44.503712, 35.379173, 34.011143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284969, 35.044285, 34.012589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823120, -0.538426, -0.180474,
		0.153044, -0.095717, 0.983573,
		-0.546856, -0.837219, 0.003617,
		44.120914, 34.793118, 34.013672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157471, 35.361511, 33.641155>,  <44.503712, 35.379173, 34.011143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157471, 35.361511, 33.641155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066559, 35.197895, 33.994659>,  <45.012012, 35.099724, 34.206760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066559, 35.197895, 33.994659>,  <45.157471, 35.361511, 33.641155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066559, 35.197895, 33.994659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970523, -0.169864, 0.170973,
		0.080184, 0.896567, 0.435589,
		-0.227280, -0.409040, 0.883759,
		44.998375, 35.075184, 34.259789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556450, 35.752254, 34.116093>,  <45.157471, 35.361511, 33.641155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556450, 35.752254, 34.116093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470772, 35.383198, 34.244377>,  <45.419365, 35.161762, 34.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470772, 35.383198, 34.244377>,  <45.556450, 35.752254, 34.116093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470772, 35.383198, 34.244377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821096, 0.007772, 0.570738,
		-0.529079, 0.385581, 0.755912,
		-0.214191, -0.922641, 0.320711,
		45.406513, 35.106407, 34.340591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663490, 35.833630, 34.837559>,  <45.556450, 35.752254, 34.116093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663490, 35.833630, 34.837559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683731, 35.447517, 34.735054>,  <45.695877, 35.215851, 34.673553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683731, 35.447517, 34.735054>,  <45.663490, 35.833630, 34.837559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683731, 35.447517, 34.735054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923486, -0.052475, 0.380026,
		-0.380280, -0.255880, 0.888770,
		0.050603, -0.965283, -0.256257,
		45.698914, 35.157932, 34.658176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861500, 35.369678, 35.480469>,  <45.663490, 35.833630, 34.837559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861500, 35.369678, 35.480469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998528, 35.291771, 35.112835>,  <46.080746, 35.245026, 34.892254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998528, 35.291771, 35.112835>,  <45.861500, 35.369678, 35.480469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998528, 35.291771, 35.112835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930789, 0.203212, 0.303870,
		0.127585, -0.959568, 0.250901,
		0.342570, -0.194766, -0.919082,
		46.101299, 35.233341, 34.837109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195225, 34.639488, 35.272072>,  <45.861500, 35.369678, 35.480469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195225, 34.639488, 35.272072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573380, 34.568825, 35.162506>,  <46.800274, 34.526424, 35.096767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573380, 34.568825, 35.162506>,  <46.195225, 34.639488, 35.272072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573380, 34.568825, 35.162506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025786, -0.797209, 0.603153,
		-0.324923, -0.577277, -0.749117,
		0.945389, -0.176661, -0.273917,
		46.856995, 34.515827, 35.080330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703529, 34.826092, 35.792805>,  <46.195225, 34.639488, 35.272072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703529, 34.826092, 35.792805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545490, 35.181271, 35.698608>,  <46.450668, 35.394379, 35.642090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545490, 35.181271, 35.698608>,  <46.703529, 34.826092, 35.792805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545490, 35.181271, 35.698608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917876, -0.392034, 0.061755,
		-0.037485, 0.240548, 0.969913,
		-0.395094, 0.887945, -0.235488,
		46.426964, 35.447655, 35.627960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454739, 35.278198, 35.748711>,  <46.703529, 34.826092, 35.792805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454739, 35.278198, 35.748711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781410, 35.215424, 35.526573>,  <47.977413, 35.177757, 35.393291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781410, 35.215424, 35.526573>,  <47.454739, 35.278198, 35.748711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781410, 35.215424, 35.526573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431040, -0.805745, -0.406176,
		-0.383722, 0.571091, -0.725680,
		0.816677, -0.156939, -0.555346,
		48.026413, 35.168343, 35.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333042, 35.246616, 35.089699>,  <47.454739, 35.278198, 35.748711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333042, 35.246616, 35.089699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665886, 35.024876, 35.082993>,  <47.865593, 34.891830, 35.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665886, 35.024876, 35.082993>,  <47.333042, 35.246616, 35.089699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665886, 35.024876, 35.082993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504910, -0.744686, -0.436474,
		0.229474, 0.371662, -0.899560,
		0.832110, -0.554356, -0.016769,
		47.915520, 34.858570, 35.077961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.714794, 31.904896, 26.803350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330555, 31.798647, 26.770601>,  <39.100014, 31.734898, 26.750952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330555, 31.798647, 26.770601>,  <39.714794, 31.904896, 26.803350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330555, 31.798647, 26.770601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211675, 0.508163, 0.834844,
		-0.180149, 0.819277, -0.544364,
		-0.960594, -0.265624, -0.081875,
		39.042377, 31.718960, 26.746038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272579, 32.509720, 26.996681>,  <39.714794, 31.904896, 26.803350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272579, 32.509720, 26.996681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053261, 32.177670, 27.037201>,  <38.921669, 31.978439, 27.061514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053261, 32.177670, 27.037201>,  <39.272579, 32.509720, 26.996681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053261, 32.177670, 27.037201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376621, 0.353259, 0.856367,
		-0.746679, 0.431389, -0.506334,
		-0.548294, -0.830127, 0.101301,
		38.888771, 31.928631, 27.067591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640682, 32.772964, 27.297552>,  <39.272579, 32.509720, 26.996681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640682, 32.772964, 27.297552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654331, 32.381123, 27.376760>,  <38.662521, 32.146019, 27.424286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654331, 32.381123, 27.376760>,  <38.640682, 32.772964, 27.297552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654331, 32.381123, 27.376760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081503, 0.194748, 0.977461,
		-0.996089, -0.049492, -0.073195,
		0.034122, -0.979604, 0.198020,
		38.664566, 32.087242, 27.436167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075272, 32.720001, 27.822681>,  <38.640682, 32.772964, 27.297552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075272, 32.720001, 27.822681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292618, 32.385307, 27.849924>,  <38.423023, 32.184490, 27.866270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292618, 32.385307, 27.849924>,  <38.075272, 32.720001, 27.822681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292618, 32.385307, 27.849924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108593, 0.010394, 0.994032,
		-0.832445, -0.547516, -0.085216,
		0.543362, -0.836731, 0.068109,
		38.455627, 32.134289, 27.870358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652672, 32.322510, 28.234674>,  <38.075272, 32.720001, 27.822681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652672, 32.322510, 28.234674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039108, 32.219776, 28.245304>,  <38.270969, 32.158138, 28.251682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039108, 32.219776, 28.245304>,  <37.652672, 32.322510, 28.234674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039108, 32.219776, 28.245304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011739, 0.059129, 0.998181,
		-0.257936, -0.964646, 0.054109,
		0.966090, -0.256832, 0.026576,
		38.328934, 32.142727, 28.253277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742554, 31.806118, 28.744225>,  <37.652672, 32.322510, 28.234674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742554, 31.806118, 28.744225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.123463, 31.917091, 28.693296>,  <38.352009, 31.983675, 28.662739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.123463, 31.917091, 28.693296>,  <37.742554, 31.806118, 28.744225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123463, 31.917091, 28.693296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094086, 0.130036, 0.987035,
		0.290393, -0.951904, 0.097726,
		0.952271, 0.277433, -0.127323,
		38.409145, 32.000320, 28.655100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153416, 31.534761, 29.311886>,  <37.742554, 31.806118, 28.744225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153416, 31.534761, 29.311886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387386, 31.827341, 29.171688>,  <38.527767, 32.002888, 29.087570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387386, 31.827341, 29.171688>,  <38.153416, 31.534761, 29.311886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387386, 31.827341, 29.171688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223008, 0.270442, 0.936552,
		0.779829, -0.625973, -0.004931,
		0.584922, 0.731450, -0.350495,
		38.562862, 32.046776, 29.066540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672985, 31.457144, 29.759472>,  <38.153416, 31.534761, 29.311886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672985, 31.457144, 29.759472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725407, 31.816856, 29.592562>,  <38.756859, 32.032684, 29.492416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725407, 31.816856, 29.592562>,  <38.672985, 31.457144, 29.759472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725407, 31.816856, 29.592562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257190, 0.375652, 0.890359,
		0.957433, -0.224004, -0.182055,
		0.131055, 0.899282, -0.417273,
		38.764725, 32.086639, 29.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174400, 31.677322, 30.026751>,  <38.672985, 31.457144, 29.759472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174400, 31.677322, 30.026751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001587, 32.012230, 29.892689>,  <38.897900, 32.213173, 29.812252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001587, 32.012230, 29.892689>,  <39.174400, 31.677322, 30.026751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001587, 32.012230, 29.892689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169041, 0.440220, 0.881834,
		0.885874, 0.324327, -0.331722,
		-0.432033, 0.837269, -0.335155,
		38.871979, 32.263409, 29.792143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646755, 32.347763, 30.187702>,  <39.174400, 31.677322, 30.026751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646755, 32.347763, 30.187702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263992, 32.460213, 30.158602>,  <39.034336, 32.527683, 30.141142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263992, 32.460213, 30.158602>,  <39.646755, 32.347763, 30.187702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263992, 32.460213, 30.158602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034127, 0.357666, 0.933226,
		0.288376, 0.890529, -0.351848,
		-0.956909, 0.281128, -0.072751,
		38.976921, 32.544552, 30.136776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574406, 32.950283, 30.450029>,  <39.646755, 32.347763, 30.187702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574406, 32.950283, 30.450029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191311, 32.839531, 30.481224>,  <38.961456, 32.773079, 30.499941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191311, 32.839531, 30.481224>,  <39.574406, 32.950283, 30.450029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191311, 32.839531, 30.481224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083104, 0.525879, 0.846490,
		-0.275388, 0.804231, -0.526662,
		-0.957734, -0.276881, 0.077986,
		38.903992, 32.756466, 30.504620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166782, 33.497448, 30.502674>,  <39.574406, 32.950283, 30.450029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166782, 33.497448, 30.502674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984337, 33.186703, 30.676311>,  <38.874870, 33.000256, 30.780493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984337, 33.186703, 30.676311>,  <39.166782, 33.497448, 30.502674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984337, 33.186703, 30.676311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002097, 0.486848, 0.873484,
		-0.889918, 0.399321, -0.220430,
		-0.456116, -0.776867, 0.434092,
		38.847504, 32.953644, 30.806540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805695, 33.826477, 31.038151>,  <39.166782, 33.497448, 30.502674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805695, 33.826477, 31.038151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818779, 33.433643, 31.112373>,  <38.826630, 33.197941, 31.156908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818779, 33.433643, 31.112373>,  <38.805695, 33.826477, 31.038151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818779, 33.433643, 31.112373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120490, 0.188178, 0.974716,
		-0.992175, -0.009530, 0.124488,
		0.032715, -0.982089, 0.185558,
		38.828594, 33.139015, 31.168041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292648, 33.722904, 31.558521>,  <38.805695, 33.826477, 31.038151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292648, 33.722904, 31.558521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537540, 33.407558, 31.582691>,  <38.684475, 33.218349, 31.597193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537540, 33.407558, 31.582691>,  <38.292648, 33.722904, 31.558521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537540, 33.407558, 31.582691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062459, 0.124403, 0.990264,
		-0.788208, -0.602496, 0.125404,
		0.612231, -0.788367, 0.060424,
		38.721210, 33.171047, 31.600819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017601, 33.275787, 32.064468>,  <38.292648, 33.722904, 31.558521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017601, 33.275787, 32.064468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399792, 33.159508, 32.084663>,  <38.629108, 33.089741, 32.096783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399792, 33.159508, 32.084663>,  <38.017601, 33.275787, 32.064468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399792, 33.159508, 32.084663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013790, 0.126934, 0.991815,
		-0.294733, -0.948356, 0.117274,
		0.955481, -0.290703, 0.050489,
		38.686436, 33.072296, 32.099812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190407, 32.884373, 32.634888>,  <38.017601, 33.275787, 32.064468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190407, 32.884373, 32.634888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574406, 32.955853, 32.548649>,  <38.804806, 32.998741, 32.496906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574406, 32.955853, 32.548649>,  <38.190407, 32.884373, 32.634888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574406, 32.955853, 32.548649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197919, 0.111666, 0.973837,
		0.198098, -0.977547, 0.071831,
		0.959992, 0.178698, -0.215596,
		38.862404, 33.009460, 32.483971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679291, 32.513893, 33.149639>,  <38.190407, 32.884373, 32.634888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679291, 32.513893, 33.149639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889870, 32.814323, 32.990269>,  <39.016216, 32.994579, 32.894646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889870, 32.814323, 32.990269>,  <38.679291, 32.513893, 33.149639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889870, 32.814323, 32.990269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242257, 0.316678, 0.917075,
		0.814962, -0.579314, -0.015238,
		0.526449, 0.751073, -0.398423,
		39.047806, 33.039646, 32.870743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181835, 32.560375, 33.495750>,  <38.679291, 32.513893, 33.149639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181835, 32.560375, 33.495750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199471, 32.919353, 33.320187>,  <39.210052, 33.134743, 33.214848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199471, 32.919353, 33.320187>,  <39.181835, 32.560375, 33.495750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199471, 32.919353, 33.320187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423220, 0.381193, 0.821934,
		0.904954, -0.221991, -0.363014,
		0.044084, 0.897447, -0.438913,
		39.212696, 33.188587, 33.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816441, 32.923401, 33.670090>,  <39.181835, 32.560375, 33.495750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816441, 32.923401, 33.670090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.584126, 33.235096, 33.575882>,  <39.444736, 33.422115, 33.519356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.584126, 33.235096, 33.575882>,  <39.816441, 32.923401, 33.670090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584126, 33.235096, 33.575882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032652, 0.311382, 0.949724,
		0.813399, 0.543899, -0.206291,
		-0.580789, 0.779240, -0.235518,
		39.409889, 33.468868, 33.505226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126785, 33.429073, 34.012962>,  <39.816441, 32.923401, 33.670090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126785, 33.429073, 34.012962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775085, 33.604412, 33.938377>,  <39.564064, 33.709614, 33.893627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775085, 33.604412, 33.938377>,  <40.126785, 33.429073, 34.012962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775085, 33.604412, 33.938377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058571, 0.487942, 0.870909,
		0.472739, 0.754829, -0.454699,
		-0.879254, 0.438344, -0.186458,
		39.511311, 33.735916, 33.882439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196800, 34.088554, 34.277210>,  <40.126785, 33.429073, 34.012962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196800, 34.088554, 34.277210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799931, 34.038845, 34.272331>,  <39.561810, 34.009018, 34.269405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799931, 34.038845, 34.272331>,  <40.196800, 34.088554, 34.277210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799931, 34.038845, 34.272331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077594, 0.537033, 0.839985,
		-0.097841, 0.834356, -0.542473,
		-0.992172, -0.124278, -0.012197,
		39.502277, 34.001560, 34.268673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591503, 34.181747, 34.879101>,  <40.196800, 34.088554, 34.277210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591503, 34.181747, 34.879101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.949322, 34.360512, 34.882050>,  <41.164013, 34.467770, 34.883820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.949322, 34.360512, 34.882050>,  <40.591503, 34.181747, 34.879101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949322, 34.360512, 34.882050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082220, -0.148314, -0.985517,
		-0.439341, 0.882200, -0.169419,
		0.894550, 0.446907, 0.007374,
		41.217686, 34.494583, 34.884262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478333, 34.730316, 34.362331>,  <40.591503, 34.181747, 34.879101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478333, 34.730316, 34.362331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870247, 34.669052, 34.413803>,  <41.105396, 34.632294, 34.444687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870247, 34.669052, 34.413803>,  <40.478333, 34.730316, 34.362331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870247, 34.669052, 34.413803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143794, 0.092016, -0.985320,
		0.139069, 0.983908, 0.112180,
		0.979787, -0.153158, 0.128684,
		41.164185, 34.623104, 34.452408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837528, 35.181347, 33.873707>,  <40.478333, 34.730316, 34.362331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837528, 35.181347, 33.873707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114086, 34.913944, 33.983303>,  <41.280022, 34.753502, 34.049061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114086, 34.913944, 33.983303>,  <40.837528, 35.181347, 33.873707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114086, 34.913944, 33.983303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329614, -0.045599, -0.943014,
		0.642904, 0.742307, 0.188822,
		0.691396, -0.668506, 0.273991,
		41.321507, 34.713394, 34.065502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495609, 35.449245, 33.600990>,  <40.837528, 35.181347, 33.873707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495609, 35.449245, 33.600990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560192, 35.060940, 33.672035>,  <41.598942, 34.827957, 33.714661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560192, 35.060940, 33.672035>,  <41.495609, 35.449245, 33.600990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560192, 35.060940, 33.672035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429527, -0.092907, -0.898262,
		0.888504, 0.221315, 0.401971,
		0.161453, -0.970767, 0.177609,
		41.608627, 34.769711, 33.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203590, 35.359993, 33.550564>,  <41.495609, 35.449245, 33.600990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203590, 35.359993, 33.550564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.054474, 34.997158, 33.472363>,  <41.965004, 34.779457, 33.425442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.054474, 34.997158, 33.472363>,  <42.203590, 35.359993, 33.550564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054474, 34.997158, 33.472363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404837, 0.030588, -0.913877,
		0.834946, -0.419831, 0.355819,
		-0.372791, -0.907086, -0.195502,
		41.942638, 34.725033, 33.413712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715961, 34.991451, 33.190575>,  <42.203590, 35.359993, 33.550564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715961, 34.991451, 33.190575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.373951, 34.803448, 33.102913>,  <42.168743, 34.690647, 33.050316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.373951, 34.803448, 33.102913>,  <42.715961, 34.991451, 33.190575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373951, 34.803448, 33.102913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266999, -0.036703, -0.962997,
		0.444571, -0.881900, 0.156873,
		-0.855025, -0.470006, -0.219150,
		42.117443, 34.662445, 33.037167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910519, 34.430092, 32.811996>,  <42.715961, 34.991451, 33.190575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910519, 34.430092, 32.811996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522041, 34.406189, 32.719730>,  <42.288956, 34.391846, 32.664371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522041, 34.406189, 32.719730>,  <42.910519, 34.430092, 32.811996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522041, 34.406189, 32.719730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237901, -0.298153, -0.924396,
		-0.013532, -0.952646, 0.303782,
		-0.971196, -0.059761, -0.230670,
		42.230682, 34.388260, 32.650528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846283, 33.757458, 32.539841>,  <42.910519, 34.430092, 32.811996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846283, 33.757458, 32.539841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.545029, 33.986248, 32.409836>,  <42.364277, 34.123520, 32.331833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.545029, 33.986248, 32.409836>,  <42.846283, 33.757458, 32.539841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545029, 33.986248, 32.409836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144841, -0.337752, -0.930024,
		-0.641724, -0.747509, 0.171527,
		-0.753134, 0.571974, -0.325014,
		42.319088, 34.157841, 32.312332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512852, 33.348526, 32.012844>,  <42.846283, 33.757458, 32.539841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512852, 33.348526, 32.012844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.396595, 33.726353, 31.951771>,  <42.326839, 33.953049, 31.915127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.396595, 33.726353, 31.951771>,  <42.512852, 33.348526, 32.012844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396595, 33.726353, 31.951771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113000, -0.124572, -0.985755,
		-0.950135, -0.303757, -0.070530,
		-0.290644, 0.944570, -0.152685,
		42.309402, 34.009724, 31.905966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026569, 33.304600, 31.524981>,  <42.512852, 33.348526, 32.012844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026569, 33.304600, 31.524981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.144295, 33.686535, 31.508694>,  <42.214931, 33.915695, 31.498920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.144295, 33.686535, 31.508694>,  <42.026569, 33.304600, 31.524981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144295, 33.686535, 31.508694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027742, -0.051124, -0.998307,
		-0.955306, 0.292687, -0.041536,
		0.294315, 0.954841, -0.040719,
		42.232590, 33.972988, 31.496477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540501, 33.566566, 31.183746>,  <42.026569, 33.304600, 31.524981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540501, 33.566566, 31.183746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850834, 33.813526, 31.131752>,  <42.037033, 33.961700, 31.100555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850834, 33.813526, 31.131752>,  <41.540501, 33.566566, 31.183746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850834, 33.813526, 31.131752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065442, -0.126161, -0.989849,
		-0.627530, 0.776468, -0.057477,
		0.775837, 0.617399, -0.129983,
		42.083584, 33.998745, 31.092756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271706, 33.894608, 30.716579>,  <41.540501, 33.566566, 31.183746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271706, 33.894608, 30.716579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653114, 34.013046, 30.694223>,  <41.881958, 34.084110, 30.680811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653114, 34.013046, 30.694223>,  <41.271706, 33.894608, 30.716579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653114, 34.013046, 30.694223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027535, -0.099079, -0.994699,
		-0.300063, 0.950006, -0.086321,
		0.953522, 0.296095, -0.055888,
		41.939171, 34.101875, 30.677458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312386, 34.388969, 30.164551>,  <41.271706, 33.894608, 30.716579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312386, 34.388969, 30.164551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.678898, 34.240620, 30.225056>,  <41.898804, 34.151608, 30.261358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.678898, 34.240620, 30.225056>,  <41.312386, 34.388969, 30.164551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678898, 34.240620, 30.225056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072038, -0.218902, -0.973084,
		0.394009, 0.902514, -0.173859,
		0.916279, -0.370879, 0.151264,
		41.953781, 34.129356, 30.270435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831150, 34.793827, 29.735394>,  <41.312386, 34.388969, 30.164551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831150, 34.793827, 29.735394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.920994, 34.409843, 29.802357>,  <41.974899, 34.179455, 29.842535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.920994, 34.409843, 29.802357>,  <41.831150, 34.793827, 29.735394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920994, 34.409843, 29.802357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035876, -0.163537, -0.985885,
		0.973787, 0.227448, -0.002293,
		0.224613, -0.959960, 0.167410,
		41.988377, 34.121857, 29.852579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366741, 34.535610, 29.203665>,  <41.831150, 34.793827, 29.735394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366741, 34.535610, 29.203665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.244919, 34.184322, 29.351166>,  <42.171825, 33.973549, 29.439667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.244919, 34.184322, 29.351166>,  <42.366741, 34.535610, 29.203665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244919, 34.184322, 29.351166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108015, -0.416493, -0.902699,
		0.946350, -0.235091, 0.221706,
		-0.304556, -0.878217, 0.368755,
		42.153553, 33.920856, 29.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823139, 34.041256, 28.868885>,  <42.366741, 34.535610, 29.203665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823139, 34.041256, 28.868885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.510899, 33.831371, 29.004730>,  <42.323555, 33.705441, 29.086237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.510899, 33.831371, 29.004730>,  <42.823139, 34.041256, 28.868885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510899, 33.831371, 29.004730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001224, -0.544640, -0.838669,
		0.625029, -0.654250, 0.425788,
		-0.780600, -0.524714, 0.339615,
		42.276718, 33.673958, 29.106615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996387, 33.364918, 28.879969>,  <42.823139, 34.041256, 28.868885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996387, 33.364918, 28.879969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597164, 33.371193, 28.855877>,  <42.357628, 33.374958, 28.841423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597164, 33.371193, 28.855877>,  <42.996387, 33.364918, 28.879969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597164, 33.371193, 28.855877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046116, -0.463426, -0.884935,
		-0.041795, -0.885997, 0.461804,
		-0.998062, 0.015690, -0.060228,
		42.297745, 33.375900, 28.837809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833408, 32.606274, 28.622240>,  <42.996387, 33.364918, 28.879969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833408, 32.606274, 28.622240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.504906, 32.826302, 28.561628>,  <42.307804, 32.958321, 28.525261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.504906, 32.826302, 28.561628>,  <42.833408, 32.606274, 28.622240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504906, 32.826302, 28.561628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120284, -0.426524, -0.896443,
		-0.557739, -0.717981, 0.416449,
		-0.821254, 0.550073, -0.151528,
		42.258530, 32.991322, 28.516171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428940, 32.161854, 28.114864>,  <42.833408, 32.606274, 28.622240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428940, 32.161854, 28.114864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.242702, 32.514645, 28.085661>,  <42.130959, 32.726318, 28.068140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.242702, 32.514645, 28.085661>,  <42.428940, 32.161854, 28.114864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242702, 32.514645, 28.085661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273290, -0.221750, -0.936023,
		-0.841744, -0.415855, 0.344283,
		-0.465595, 0.881981, -0.073008,
		42.103024, 32.779240, 28.063759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.715282, 32.029305, 27.995893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786350, 32.396778, 27.854784>,  <41.828991, 32.617264, 27.770119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786350, 32.396778, 27.854784>,  <41.715282, 32.029305, 27.995893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786350, 32.396778, 27.854784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428930, -0.250342, -0.867956,
		-0.885693, 0.305526, 0.349574,
		0.177670, 0.918685, -0.352776,
		41.839653, 32.672382, 27.748951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103207, 32.213947, 27.659325>,  <41.715282, 32.029305, 27.995893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103207, 32.213947, 27.659325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380264, 32.445591, 27.487335>,  <41.546497, 32.584576, 27.384142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380264, 32.445591, 27.487335>,  <41.103207, 32.213947, 27.659325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380264, 32.445591, 27.487335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372472, -0.223308, -0.900777,
		-0.617666, 0.784069, 0.061030,
		0.692643, 0.579111, -0.429973,
		41.588058, 32.619324, 27.358343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746498, 32.529991, 27.120207>,  <41.103207, 32.213947, 27.659325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746498, 32.529991, 27.120207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122746, 32.628571, 27.026821>,  <41.348492, 32.687717, 26.970791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122746, 32.628571, 27.026821>,  <40.746498, 32.529991, 27.120207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122746, 32.628571, 27.026821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204523, -0.137496, -0.969157,
		-0.270944, 0.959354, -0.078928,
		0.940617, 0.246445, -0.233463,
		41.404930, 32.702503, 26.956781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737194, 33.048553, 26.562723>,  <40.746498, 32.529991, 27.120207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737194, 33.048553, 26.562723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088814, 32.862015, 26.523149>,  <41.299786, 32.750092, 26.499405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088814, 32.862015, 26.523149>,  <40.737194, 33.048553, 26.562723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088814, 32.862015, 26.523149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, -0.101789, -0.981124,
		0.447473, 0.878727, -0.166155,
		0.879053, -0.466346, -0.098934,
		41.352531, 32.722111, 26.493469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072506, 33.329891, 25.952097>,  <40.737194, 33.048553, 26.562723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072506, 33.329891, 25.952097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.246132, 32.976089, 26.020506>,  <41.350307, 32.763809, 26.061552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.246132, 32.976089, 26.020506>,  <41.072506, 33.329891, 25.952097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246132, 32.976089, 26.020506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103462, -0.237527, -0.965855,
		0.894922, 0.401547, -0.194614,
		0.434062, -0.884500, 0.171023,
		41.376350, 32.710739, 26.071814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560425, 33.408791, 25.577042>,  <41.072506, 33.329891, 25.952097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560425, 33.408791, 25.577042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533897, 33.015625, 25.645731>,  <41.517979, 32.779728, 25.686945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533897, 33.015625, 25.645731>,  <41.560425, 33.408791, 25.577042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533897, 33.015625, 25.645731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076223, -0.166609, -0.983073,
		0.994883, -0.078288, -0.063870,
		-0.066321, -0.982910, 0.171724,
		41.514000, 32.720753, 25.697248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864483, 33.150311, 25.050621>,  <41.560425, 33.408791, 25.577042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864483, 33.150311, 25.050621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668865, 32.820213, 25.163620>,  <41.551495, 32.622154, 25.231421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668865, 32.820213, 25.163620>,  <41.864483, 33.150311, 25.050621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668865, 32.820213, 25.163620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086345, -0.276478, -0.957134,
		0.867975, -0.492472, 0.063954,
		-0.489044, -0.825246, 0.282499,
		41.522152, 32.572639, 25.248369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153946, 32.690365, 24.658936>,  <41.864483, 33.150311, 25.050621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153946, 32.690365, 24.658936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801689, 32.542946, 24.778027>,  <41.590336, 32.454494, 24.849482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.801689, 32.542946, 24.778027>,  <42.153946, 32.690365, 24.658936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801689, 32.542946, 24.778027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098139, -0.472882, -0.875643,
		0.463504, -0.800348, 0.380272,
		-0.880643, -0.368545, 0.297729,
		41.537495, 32.432381, 24.867346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180031, 31.995686, 24.511938>,  <42.153946, 32.690365, 24.658936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180031, 31.995686, 24.511938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.795380, 32.105076, 24.520796>,  <41.564590, 32.170708, 24.526112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.795380, 32.105076, 24.520796>,  <42.180031, 31.995686, 24.511938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795380, 32.105076, 24.520796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125350, -0.366098, -0.922095,
		-0.244058, -0.889486, 0.386328,
		-0.961625, 0.273471, 0.022148,
		41.506893, 32.187119, 24.527439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966194, 31.623611, 23.950340>,  <42.180031, 31.995686, 24.511938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966194, 31.623611, 23.950340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638084, 31.824921, 24.059052>,  <41.441219, 31.945707, 24.124277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638084, 31.824921, 24.059052>,  <41.966194, 31.623611, 23.950340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638084, 31.824921, 24.059052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442468, -0.257241, -0.859098,
		-0.362451, -0.824949, 0.433692,
		-0.820276, 0.503276, 0.271776,
		41.392002, 31.975903, 24.140585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371189, 31.159689, 23.937008>,  <41.966194, 31.623611, 23.950340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371189, 31.159689, 23.937008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.277966, 31.543072, 23.871225>,  <41.222031, 31.773102, 23.831757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.277966, 31.543072, 23.871225>,  <41.371189, 31.159689, 23.937008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277966, 31.543072, 23.871225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196168, -0.211972, -0.957385,
		-0.952470, -0.190871, 0.237421,
		-0.233063, 0.958455, -0.164454,
		41.208046, 31.830608, 23.821890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846992, 31.161613, 23.441893>,  <41.371189, 31.159689, 23.937008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846992, 31.161613, 23.441893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984554, 31.537027, 23.429974>,  <41.067089, 31.762276, 23.422823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984554, 31.537027, 23.429974>,  <40.846992, 31.161613, 23.441893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984554, 31.537027, 23.429974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001563, -0.031160, -0.999513,
		-0.939004, 0.343782, -0.009249,
		0.343903, 0.938532, -0.029797,
		41.087727, 31.818586, 23.421034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483368, 31.484016, 22.932652>,  <40.846992, 31.161613, 23.441893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483368, 31.484016, 22.932652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823574, 31.692955, 22.957241>,  <41.027699, 31.818317, 22.971994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823574, 31.692955, 22.957241>,  <40.483368, 31.484016, 22.932652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823574, 31.692955, 22.957241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, 0.037998, -0.998085,
		-0.523680, 0.851887, 0.006826,
		0.850516, 0.522345, 0.061473,
		41.078728, 31.849659, 22.975683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405094, 31.953016, 22.468218>,  <40.483368, 31.484016, 22.932652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405094, 31.953016, 22.468218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800339, 31.952183, 22.529703>,  <41.037487, 31.951683, 22.566595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800339, 31.952183, 22.529703>,  <40.405094, 31.953016, 22.468218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800339, 31.952183, 22.529703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152962, 0.113111, -0.981738,
		-0.015341, 0.993580, 0.112085,
		0.988113, -0.002084, 0.153715,
		41.096771, 31.951557, 22.575817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614250, 32.510857, 22.099382>,  <40.405094, 31.953016, 22.468218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614250, 32.510857, 22.099382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926273, 32.272110, 22.174500>,  <41.113487, 32.128860, 22.219570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926273, 32.272110, 22.174500>,  <40.614250, 32.510857, 22.099382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926273, 32.272110, 22.174500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146205, -0.117951, -0.982197,
		0.608390, 0.793624, -0.004744,
		0.780055, -0.596865, 0.187792,
		41.160290, 32.093052, 22.230837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062565, 32.700798, 21.644901>,  <40.614250, 32.510857, 22.099382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062565, 32.700798, 21.644901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.202461, 32.332294, 21.712969>,  <41.286400, 32.111191, 21.753809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.202461, 32.332294, 21.712969>,  <41.062565, 32.700798, 21.644901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202461, 32.332294, 21.712969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156863, -0.121490, -0.980119,
		0.923621, 0.369480, 0.102022,
		0.349739, -0.921263, 0.170169,
		41.307384, 32.055916, 21.764019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692039, 32.607056, 21.305613>,  <41.062565, 32.700798, 21.644901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692039, 32.607056, 21.305613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575306, 32.227287, 21.351957>,  <41.505264, 31.999426, 21.379765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575306, 32.227287, 21.351957>,  <41.692039, 32.607056, 21.305613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575306, 32.227287, 21.351957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054045, -0.137312, -0.989052,
		0.954941, -0.282378, 0.091384,
		-0.291835, -0.949425, 0.115863,
		41.487755, 31.942459, 21.386717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225636, 32.144714, 20.893219>,  <41.692039, 32.607056, 21.305613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225636, 32.144714, 20.893219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880463, 31.955912, 20.965384>,  <41.673359, 31.842628, 21.008682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880463, 31.955912, 20.965384>,  <42.225636, 32.144714, 20.893219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880463, 31.955912, 20.965384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040750, -0.290866, -0.955896,
		0.503670, -0.832227, 0.231764,
		-0.862935, -0.472012, 0.180413,
		41.621582, 31.814308, 21.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340599, 31.545319, 20.684835>,  <42.225636, 32.144714, 20.893219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340599, 31.545319, 20.684835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940720, 31.554422, 20.681326>,  <41.700790, 31.559885, 20.679220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940720, 31.554422, 20.681326>,  <42.340599, 31.545319, 20.684835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940720, 31.554422, 20.681326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001235, -0.406505, -0.913648,
		-0.024363, -0.913365, 0.406412,
		-0.999702, 0.022761, -0.008775,
		41.640808, 31.561251, 20.678694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064148, 30.845709, 20.353500>,  <42.340599, 31.545319, 20.684835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064148, 30.845709, 20.353500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768578, 31.112617, 20.316118>,  <41.591236, 31.272762, 20.293688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768578, 31.112617, 20.316118>,  <42.064148, 30.845709, 20.353500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768578, 31.112617, 20.316118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075492, -0.219820, -0.972615,
		-0.669544, -0.711635, 0.212805,
		-0.738926, 0.667274, -0.093456,
		41.546898, 31.312799, 20.288082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580074, 30.528118, 19.934992>,  <42.064148, 30.845709, 20.353500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580074, 30.528118, 19.934992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.492672, 30.917768, 19.911886>,  <41.440231, 31.151558, 19.898024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.492672, 30.917768, 19.911886>,  <41.580074, 30.528118, 19.934992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492672, 30.917768, 19.911886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203584, -0.103396, -0.973582,
		-0.954363, -0.200975, 0.220909,
		-0.218507, 0.974124, -0.057763,
		41.427120, 31.210007, 19.894558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949993, 30.554777, 19.669163>,  <41.580074, 30.528118, 19.934992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949993, 30.554777, 19.669163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107300, 30.918333, 19.613649>,  <41.201683, 31.136467, 19.580341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107300, 30.918333, 19.613649>,  <40.949993, 30.554777, 19.669163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107300, 30.918333, 19.613649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242259, -0.043177, -0.969250,
		-0.886933, 0.414797, 0.203207,
		0.393269, 0.908889, -0.138783,
		41.225281, 31.191000, 19.572014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377075, 31.094244, 19.457289>,  <40.949993, 30.554777, 19.669163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377075, 31.094244, 19.457289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728046, 31.217628, 19.310337>,  <40.938629, 31.291658, 19.222166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728046, 31.217628, 19.310337>,  <40.377075, 31.094244, 19.457289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728046, 31.217628, 19.310337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389666, 0.011638, -0.920883,
		-0.279781, 0.951166, 0.130409,
		0.877430, 0.308461, -0.367380,
		40.991276, 31.310167, 19.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346764, 31.833870, 19.119976>,  <40.377075, 31.094244, 19.457289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346764, 31.833870, 19.119976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614098, 31.571075, 18.980436>,  <40.774498, 31.413399, 18.896711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614098, 31.571075, 18.980436>,  <40.346764, 31.833870, 19.119976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614098, 31.571075, 18.980436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300151, 0.190921, -0.934590,
		0.680618, 0.729326, -0.069597,
		0.668333, -0.656988, -0.348852,
		40.814598, 31.373980, 18.875780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533535, 31.810482, 18.838366>,  <40.346764, 31.833870, 19.119976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533535, 31.810482, 18.838366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.209854, 31.584751, 18.772966>,  <39.015648, 31.449312, 18.733727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.209854, 31.584751, 18.772966>,  <39.533535, 31.810482, 18.838366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209854, 31.584751, 18.772966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305831, 0.166971, 0.937330,
		-0.501661, 0.808490, -0.307701,
		-0.809199, -0.564327, -0.163498,
		38.967094, 31.415453, 18.723917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034752, 32.055584, 19.221859>,  <39.533535, 31.810482, 18.838366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034752, 32.055584, 19.221859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884560, 31.688467, 19.170208>,  <38.794445, 31.468197, 19.139217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884560, 31.688467, 19.170208>,  <39.034752, 32.055584, 19.221859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884560, 31.688467, 19.170208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399524, 0.034564, 0.916071,
		-0.836300, 0.395553, -0.379658,
		-0.375477, -0.917793, -0.129127,
		38.771915, 31.413130, 19.131470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359875, 32.051083, 19.345196>,  <39.034752, 32.055584, 19.221859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359875, 32.051083, 19.345196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468220, 31.673147, 19.418865>,  <38.533226, 31.446386, 19.463066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468220, 31.673147, 19.418865>,  <38.359875, 32.051083, 19.345196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468220, 31.673147, 19.418865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375806, 0.072352, 0.923870,
		-0.886229, -0.319458, -0.335477,
		0.270865, -0.944834, 0.184174,
		38.549480, 31.389696, 19.474117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801258, 31.716505, 19.717159>,  <38.359875, 32.051083, 19.345196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801258, 31.716505, 19.717159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119606, 31.488127, 19.797768>,  <38.310616, 31.351101, 19.846132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119606, 31.488127, 19.797768>,  <37.801258, 31.716505, 19.717159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119606, 31.488127, 19.797768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208184, 0.054488, 0.976571,
		-0.568547, -0.819179, -0.075496,
		0.795873, -0.570944, 0.201520,
		38.358368, 31.316843, 19.858223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603935, 31.422688, 20.262598>,  <37.801258, 31.716505, 19.717159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603935, 31.422688, 20.262598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988029, 31.311396, 20.271887>,  <38.218487, 31.244621, 20.277460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988029, 31.311396, 20.271887>,  <37.603935, 31.422688, 20.262598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988029, 31.311396, 20.271887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038839, -0.050753, 0.997956,
		-0.276482, -0.959173, -0.059541,
		0.960234, -0.278230, 0.023221,
		38.276100, 31.227926, 20.278852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706532, 30.820740, 20.703926>,  <37.603935, 31.422688, 20.262598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706532, 30.820740, 20.703926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073730, 30.976532, 20.674025>,  <38.294048, 31.070007, 20.656084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073730, 30.976532, 20.674025>,  <37.706532, 30.820740, 20.703926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073730, 30.976532, 20.674025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161621, -0.195279, 0.967339,
		0.362164, -0.900095, -0.242213,
		0.917996, 0.389482, -0.074751,
		38.349129, 31.093376, 20.651600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142860, 30.397453, 21.182739>,  <37.706532, 30.820740, 20.703926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142860, 30.397453, 21.182739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323830, 30.747913, 21.116201>,  <38.432411, 30.958189, 21.076279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323830, 30.747913, 21.116201>,  <38.142860, 30.397453, 21.182739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323830, 30.747913, 21.116201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332591, 0.007302, 0.943043,
		0.827462, -0.481983, -0.288097,
		0.452427, 0.876150, -0.166345,
		38.459557, 31.010759, 21.066298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834278, 30.324238, 21.452406>,  <38.142860, 30.397453, 21.182739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834278, 30.324238, 21.452406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762054, 30.717037, 21.474596>,  <38.718719, 30.952717, 21.487911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762054, 30.717037, 21.474596>,  <38.834278, 30.324238, 21.452406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762054, 30.717037, 21.474596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316267, 0.004558, 0.948659,
		0.931329, 0.188835, -0.311397,
		-0.180560, 0.981998, 0.055477,
		38.707886, 31.011637, 21.491240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281231, 30.431620, 22.033489>,  <38.834278, 30.324238, 21.452406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281231, 30.431620, 22.033489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066120, 30.765051, 21.982979>,  <38.937054, 30.965109, 21.952673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066120, 30.765051, 21.982979>,  <39.281231, 30.431620, 22.033489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066120, 30.765051, 21.982979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072072, 0.194686, 0.978214,
		0.840001, 0.516961, -0.164775,
		-0.537778, 0.833576, -0.126278,
		38.904785, 31.015123, 21.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714245, 30.891392, 22.349754>,  <39.281231, 30.431620, 22.033489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714245, 30.891392, 22.349754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335594, 31.020264, 22.353634>,  <39.108402, 31.097588, 22.355961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335594, 31.020264, 22.353634>,  <39.714245, 30.891392, 22.349754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335594, 31.020264, 22.353634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063170, 0.155937, 0.985745,
		0.316077, 0.933747, -0.167966,
		-0.946628, 0.322181, 0.009697,
		39.051605, 31.116919, 22.356543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732170, 31.509441, 22.773399>,  <39.714245, 30.891392, 22.349754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732170, 31.509441, 22.773399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353275, 31.381317, 22.768515>,  <39.125938, 31.304443, 22.765583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353275, 31.381317, 22.768515>,  <39.732170, 31.509441, 22.773399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353275, 31.381317, 22.768515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008906, -0.011787, 0.999891,
		-0.320420, 0.947239, 0.008312,
		-0.947234, -0.320311, -0.012213,
		39.069107, 31.285223, 22.764851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419220, 32.095753, 23.150763>,  <39.732170, 31.509441, 22.773399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419220, 32.095753, 23.150763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155350, 31.795475, 23.165161>,  <38.997028, 31.615309, 23.173801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155350, 31.795475, 23.165161>,  <39.419220, 32.095753, 23.150763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155350, 31.795475, 23.165161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052003, 0.002191, 0.998645,
		-0.749751, 0.660651, 0.037593,
		-0.659673, -0.750690, 0.035998,
		38.957447, 31.570269, 23.175961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881554, 32.328274, 23.647308>,  <39.419220, 32.095753, 23.150763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881554, 32.328274, 23.647308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855118, 31.931391, 23.605042>,  <38.839256, 31.693262, 23.579681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855118, 31.931391, 23.605042>,  <38.881554, 32.328274, 23.647308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855118, 31.931391, 23.605042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098070, -0.098927, 0.990251,
		-0.992983, 0.075805, -0.090767,
		-0.066087, -0.992203, -0.105667,
		38.835293, 31.633730, 23.573341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219624, 32.162403, 23.963484>,  <38.881554, 32.328274, 23.647308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219624, 32.162403, 23.963484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480011, 31.858784, 23.959869>,  <38.636246, 31.676613, 23.957701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480011, 31.858784, 23.959869>,  <38.219624, 32.162403, 23.963484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480011, 31.858784, 23.959869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021303, 0.006367, 0.999753,
		-0.758804, -0.651002, 0.020315,
		0.650970, -0.759049, -0.009037,
		38.675301, 31.631069, 23.957159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929207, 31.677303, 24.437933>,  <38.219624, 32.162403, 23.963484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929207, 31.677303, 24.437933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313736, 31.578691, 24.388817>,  <38.544453, 31.519524, 24.359346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313736, 31.578691, 24.388817>,  <37.929207, 31.677303, 24.437933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313736, 31.578691, 24.388817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119631, -0.027822, 0.992428,
		-0.248081, -0.968735, 0.002747,
		0.961324, -0.246532, -0.122793,
		38.602135, 31.504732, 24.351978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939487, 31.114248, 24.792721>,  <37.929207, 31.677303, 24.437933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939487, 31.114248, 24.792721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318729, 31.237572, 24.761646>,  <38.546276, 31.311565, 24.743002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318729, 31.237572, 24.761646>,  <37.939487, 31.114248, 24.792721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318729, 31.237572, 24.761646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100337, -0.058285, 0.993245,
		0.301698, -0.949499, -0.086195,
		0.948109, 0.308309, -0.077685,
		38.603161, 31.330065, 24.738340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392277, 30.580881, 25.186293>,  <37.939487, 31.114248, 24.792721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392277, 30.580881, 25.186293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588963, 30.929182, 25.185135>,  <38.706974, 31.138163, 25.184441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588963, 30.929182, 25.185135>,  <38.392277, 30.580881, 25.186293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588963, 30.929182, 25.185135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095437, -0.050591, 0.994149,
		0.865511, -0.489113, -0.107978,
		0.491714, 0.870752, -0.002892,
		38.736477, 31.190407, 25.184267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805237, 30.456411, 25.762999>,  <38.392277, 30.580881, 25.186293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805237, 30.456411, 25.762999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847954, 30.846678, 25.686401>,  <38.873585, 31.080837, 25.640442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847954, 30.846678, 25.686401>,  <38.805237, 30.456411, 25.762999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847954, 30.846678, 25.686401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026592, 0.189724, 0.981477,
		0.993925, -0.109910, -0.005684,
		0.106796, 0.975666, -0.191494,
		38.879993, 31.139378, 25.628954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381290, 30.626442, 26.194727>,  <38.805237, 30.456411, 25.762999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381290, 30.626442, 26.194727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179764, 30.960011, 26.104618>,  <39.058849, 31.160152, 26.050552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179764, 30.960011, 26.104618>,  <39.381290, 30.626442, 26.194727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179764, 30.960011, 26.104618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104599, 0.317762, 0.942383,
		0.857456, 0.451223, -0.247320,
		-0.503814, 0.833922, -0.225270,
		39.028618, 31.210188, 26.037037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690788, 31.098074, 26.522251>,  <39.381290, 30.626442, 26.194727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690788, 31.098074, 26.522251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340473, 31.275635, 26.446405>,  <39.130283, 31.382172, 26.400898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340473, 31.275635, 26.446405>,  <39.690788, 31.098074, 26.522251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340473, 31.275635, 26.446405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079187, 0.255371, 0.963595,
		0.476163, 0.858916, -0.188499,
		-0.875784, 0.443902, -0.189613,
		39.077740, 31.408806, 26.389521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.161278, 33.654057, 30.486780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797535, 33.803036, 30.412651>,  <42.579288, 33.892426, 30.368174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797535, 33.803036, 30.412651>,  <43.161278, 33.654057, 30.486780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797535, 33.803036, 30.412651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015873, 0.476215, 0.879186,
		0.415708, 0.796555, -0.438962,
		-0.909360, 0.372452, -0.185322,
		42.524727, 33.914772, 30.357054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233059, 34.382744, 30.565620>,  <43.161278, 33.654057, 30.486780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233059, 34.382744, 30.565620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851738, 34.271690, 30.613161>,  <42.622944, 34.205059, 30.641685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851738, 34.271690, 30.613161>,  <43.233059, 34.382744, 30.565620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851738, 34.271690, 30.613161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061855, 0.205696, 0.976659,
		-0.295605, 0.938406, -0.178918,
		-0.953306, -0.277638, 0.118850,
		42.565746, 34.188400, 30.648817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001534, 34.884315, 30.953823>,  <43.233059, 34.382744, 30.565620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001534, 34.884315, 30.953823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733429, 34.589703, 30.990217>,  <42.572567, 34.412937, 31.012054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733429, 34.589703, 30.990217>,  <43.001534, 34.884315, 30.953823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733429, 34.589703, 30.990217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181229, 0.281332, 0.942342,
		-0.719659, 0.615124, -0.322046,
		-0.670259, -0.736529, 0.090985,
		42.532352, 34.368744, 31.017513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589958, 35.241009, 31.434721>,  <43.001534, 34.884315, 30.953823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589958, 35.241009, 31.434721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462460, 34.861889, 31.431076>,  <42.385960, 34.634418, 31.428888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462460, 34.861889, 31.431076>,  <42.589958, 35.241009, 31.434721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462460, 34.861889, 31.431076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243751, 0.072677, 0.967111,
		-0.915961, 0.310487, -0.254192,
		-0.318749, -0.947795, -0.009112,
		42.366837, 34.577549, 31.428343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882565, 35.229809, 31.608932>,  <42.589958, 35.241009, 31.434721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882565, 35.229809, 31.608932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 34.866726, 31.715223>,  <42.090401, 34.648876, 31.778997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 34.866726, 31.715223>,  <41.882565, 35.229809, 31.608932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012463, 34.866726, 31.715223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288663, 0.172430, 0.941776,
		-0.900676, -0.382538, -0.206027,
		0.324740, -0.907707, 0.265728,
		42.109886, 34.594414, 31.794941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322861, 34.917942, 31.894903>,  <41.882565, 35.229809, 31.608932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322861, 34.917942, 31.894903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630981, 34.700817, 32.028763>,  <41.815853, 34.570541, 32.109077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630981, 34.700817, 32.028763>,  <41.322861, 34.917942, 31.894903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630981, 34.700817, 32.028763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361670, 0.060332, 0.930352,
		-0.525197, -0.837684, -0.149845,
		0.770301, -0.542812, 0.334651,
		41.862072, 34.537975, 32.129158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985874, 34.340813, 32.294830>,  <41.322861, 34.917942, 31.894903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985874, 34.340813, 32.294830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.366947, 34.367840, 32.413376>,  <41.595592, 34.384056, 32.484501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.366947, 34.367840, 32.413376>,  <40.985874, 34.340813, 32.294830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366947, 34.367840, 32.413376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299260, 0.037619, 0.953430,
		0.053309, -0.997003, 0.056070,
		0.952681, 0.067606, 0.296358,
		41.652752, 34.388111, 32.502285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029099, 34.000206, 32.914295>,  <40.985874, 34.340813, 32.294830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029099, 34.000206, 32.914295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376858, 34.197296, 32.929104>,  <41.585514, 34.315548, 32.937988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376858, 34.197296, 32.929104>,  <41.029099, 34.000206, 32.914295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376858, 34.197296, 32.929104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070302, 0.049176, 0.996313,
		0.489086, -0.868795, 0.077393,
		0.869398, 0.492724, 0.037026,
		41.637676, 34.345112, 32.940212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338646, 33.569698, 33.361168>,  <41.029099, 34.000206, 32.914295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338646, 33.569698, 33.361168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491650, 33.939232, 33.355289>,  <41.583450, 34.160954, 33.351765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491650, 33.939232, 33.355289>,  <41.338646, 33.569698, 33.361168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491650, 33.939232, 33.355289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030881, 0.028676, 0.999112,
		0.923435, -0.381717, 0.039498,
		0.382510, 0.923834, -0.014693,
		41.606403, 34.216381, 33.350883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821518, 33.524826, 33.886883>,  <41.338646, 33.569698, 33.361168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821518, 33.524826, 33.886883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738697, 33.907421, 33.804653>,  <41.689003, 34.136978, 33.755314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738697, 33.907421, 33.804653>,  <41.821518, 33.524826, 33.886883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738697, 33.907421, 33.804653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223596, 0.158302, 0.961741,
		0.952435, 0.245099, 0.181089,
		-0.207055, 0.956487, -0.205576,
		41.676582, 34.194366, 33.742981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335751, 33.900253, 34.219185>,  <41.821518, 33.524826, 33.886883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335751, 33.900253, 34.219185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019234, 34.140144, 34.171555>,  <41.829323, 34.284081, 34.142979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019234, 34.140144, 34.171555>,  <42.335751, 33.900253, 34.219185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019234, 34.140144, 34.171555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211265, -0.085427, 0.973689,
		0.573775, 0.795632, 0.194299,
		-0.791296, 0.599727, -0.119073,
		41.781845, 34.320061, 34.135834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404869, 34.513210, 34.646801>,  <42.335751, 33.900253, 34.219185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404869, 34.513210, 34.646801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010380, 34.508839, 34.580780>,  <41.773685, 34.506214, 34.541168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010380, 34.508839, 34.580780>,  <42.404869, 34.513210, 34.646801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010380, 34.508839, 34.580780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163898, 0.199331, 0.966128,
		0.022339, 0.979871, -0.198377,
		-0.986224, -0.010932, -0.165052,
		41.714512, 34.505558, 34.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 35.122044, 34.786560>,  <42.404869, 34.513210, 34.646801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344078, 35.122044, 34.786560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001995, 34.920326, 34.834423>,  <41.796745, 34.799297, 34.863140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001995, 34.920326, 34.834423>,  <42.344078, 35.122044, 34.786560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001995, 34.920326, 34.834423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094083, 0.378081, 0.920979,
		-0.509680, 0.776368, -0.370782,
		-0.855204, -0.504290, 0.119657,
		41.745434, 34.769039, 34.870319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764175, 35.586197, 35.069530>,  <42.344078, 35.122044, 34.786560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764175, 35.586197, 35.069530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694027, 35.206585, 35.174282>,  <41.651939, 34.978817, 35.237133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694027, 35.206585, 35.174282>,  <41.764175, 35.586197, 35.069530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694027, 35.206585, 35.174282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057891, 0.275480, 0.959562,
		-0.982799, 0.153119, -0.103252,
		-0.175371, -0.949034, 0.261877,
		41.641415, 34.921875, 35.252846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028542, 36.188160, 35.363804>,  <41.764175, 35.586197, 35.069530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028542, 36.188160, 35.363804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870399, 36.555317, 35.377449>,  <41.775513, 36.775612, 35.385635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870399, 36.555317, 35.377449>,  <42.028542, 36.188160, 35.363804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870399, 36.555317, 35.377449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126031, 0.091001, -0.987844,
		-0.909839, -0.386253, -0.151661,
		-0.395359, 0.917893, 0.034117,
		41.751793, 36.830685, 35.387684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505062, 36.239002, 34.875076>,  <42.028542, 36.188160, 35.363804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505062, 36.239002, 34.875076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632362, 36.617020, 34.905060>,  <41.708740, 36.843830, 34.923050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632362, 36.617020, 34.905060>,  <41.505062, 36.239002, 34.875076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632362, 36.617020, 34.905060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101392, 0.044681, -0.993843,
		-0.942570, 0.323889, -0.081600,
		0.318249, 0.945040, 0.074954,
		41.727837, 36.900532, 34.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159000, 36.697552, 34.351276>,  <41.505062, 36.239002, 34.875076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159000, 36.697552, 34.351276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494297, 36.894882, 34.444214>,  <41.695473, 37.013283, 34.499977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494297, 36.894882, 34.444214>,  <41.159000, 36.697552, 34.351276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494297, 36.894882, 34.444214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116904, 0.253602, -0.960218,
		-0.532627, 0.832053, 0.154907,
		0.838237, 0.493330, 0.232345,
		41.745770, 37.042881, 34.513916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131409, 37.208118, 33.846657>,  <41.159000, 36.697552, 34.351276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131409, 37.208118, 33.846657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501789, 37.231247, 33.995937>,  <41.724018, 37.245125, 34.085506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501789, 37.231247, 33.995937>,  <41.131409, 37.208118, 33.846657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501789, 37.231247, 33.995937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296594, 0.500400, -0.813408,
		-0.233779, 0.863862, 0.446196,
		0.925948, 0.057819, 0.373199,
		41.779572, 37.248592, 34.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411438, 37.987099, 33.795010>,  <41.131409, 37.208118, 33.846657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411438, 37.987099, 33.795010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713730, 37.725285, 33.803600>,  <41.895103, 37.568195, 33.808754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713730, 37.725285, 33.803600>,  <41.411438, 37.987099, 33.795010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713730, 37.725285, 33.803600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385349, 0.417930, -0.822703,
		0.529507, 0.630019, 0.568065,
		0.755730, -0.654531, 0.021480,
		41.940449, 37.528927, 33.810043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876759, 38.361530, 33.463623>,  <41.411438, 37.987099, 33.795010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876759, 38.361530, 33.463623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992641, 37.978786, 33.454857>,  <42.062172, 37.749138, 33.449596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992641, 37.978786, 33.454857>,  <41.876759, 38.361530, 33.463623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992641, 37.978786, 33.454857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455468, 0.157967, -0.876125,
		0.841794, 0.243842, 0.481585,
		0.289710, -0.956863, -0.021913,
		42.079556, 37.691727, 33.448284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330917, 38.457489, 33.038063>,  <41.876759, 38.361530, 33.463623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330917, 38.457489, 33.038063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288910, 38.059715, 33.041370>,  <42.263706, 37.821053, 33.043354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288910, 38.059715, 33.041370>,  <42.330917, 38.457489, 33.038063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288910, 38.059715, 33.041370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381525, -0.047972, -0.923113,
		0.918373, -0.093791, 0.384440,
		-0.105022, -0.994435, 0.008272,
		42.257404, 37.761383, 33.043854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981319, 38.064091, 32.839619>,  <42.330917, 38.457489, 33.038063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981319, 38.064091, 32.839619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695312, 37.805119, 32.734100>,  <42.523708, 37.649734, 32.670788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695312, 37.805119, 32.734100>,  <42.981319, 38.064091, 32.839619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695312, 37.805119, 32.734100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442706, -0.127270, -0.887589,
		0.541078, -0.751423, 0.377621,
		-0.715015, -0.647430, -0.263797,
		42.480808, 37.610889, 32.654961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334774, 37.540817, 32.533005>,  <42.981319, 38.064091, 32.839619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334774, 37.540817, 32.533005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965054, 37.496548, 32.386898>,  <42.743221, 37.469986, 32.299236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965054, 37.496548, 32.386898>,  <43.334774, 37.540817, 32.533005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965054, 37.496548, 32.386898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381161, -0.218639, -0.898283,
		0.019554, -0.969510, 0.244273,
		-0.924302, -0.110672, -0.365264,
		42.687763, 37.463345, 32.277317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390076, 36.917870, 32.154469>,  <43.334774, 37.540817, 32.533005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390076, 36.917870, 32.154469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068516, 37.121403, 32.031292>,  <42.875580, 37.243523, 31.957386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068516, 37.121403, 32.031292>,  <43.390076, 36.917870, 32.154469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068516, 37.121403, 32.031292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166650, -0.304308, -0.937883,
		-0.570938, -0.805284, 0.159836,
		-0.803901, 0.508837, -0.307942,
		42.827347, 37.274052, 31.938910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093170, 36.398106, 31.850649>,  <43.390076, 36.917870, 32.154469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093170, 36.398106, 31.850649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911774, 36.724720, 31.707758>,  <42.802937, 36.920689, 31.622025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911774, 36.724720, 31.707758>,  <43.093170, 36.398106, 31.850649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911774, 36.724720, 31.707758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149642, -0.325362, -0.933674,
		-0.878606, -0.476873, 0.025362,
		-0.453496, 0.816536, -0.357226,
		42.775726, 36.969681, 31.600590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603107, 36.177956, 31.297209>,  <43.093170, 36.398106, 31.850649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603107, 36.177956, 31.297209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651443, 36.567619, 31.220875>,  <42.680447, 36.801418, 31.175074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651443, 36.567619, 31.220875>,  <42.603107, 36.177956, 31.297209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651443, 36.567619, 31.220875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081006, -0.181926, -0.979970,
		-0.989361, 0.133881, 0.056928,
		0.120843, 0.974155, -0.190835,
		42.687695, 36.859867, 31.163624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120522, 36.343014, 30.835819>,  <42.603107, 36.177956, 31.297209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120522, 36.343014, 30.835819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.396935, 36.628635, 30.790920>,  <42.562782, 36.800011, 30.763981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.396935, 36.628635, 30.790920>,  <42.120522, 36.343014, 30.835819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396935, 36.628635, 30.790920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090983, -0.239980, -0.966505,
		-0.717076, 0.657672, -0.230800,
		0.691031, 0.714057, -0.112247,
		42.604244, 36.842854, 30.757246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814819, 36.755615, 30.244541>,  <42.120522, 36.343014, 30.835819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814819, 36.755615, 30.244541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212086, 36.784500, 30.281210>,  <42.450447, 36.801830, 30.303211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212086, 36.784500, 30.281210>,  <41.814819, 36.755615, 30.244541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212086, 36.784500, 30.281210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104476, -0.200184, -0.974172,
		-0.051998, 0.977093, -0.206361,
		0.993167, 0.072214, 0.091674,
		42.510036, 36.806164, 30.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270447, 37.289551, 30.217953>,  <41.814819, 36.755615, 30.244541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270447, 37.289551, 30.217953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902447, 37.136570, 30.252207>,  <40.681648, 37.044781, 30.272760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902447, 37.136570, 30.252207>,  <41.270447, 37.289551, 30.217953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902447, 37.136570, 30.252207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063019, 0.071306, 0.995462,
		-0.386826, 0.921218, -0.041500,
		-0.919997, -0.382455, 0.085637,
		40.626450, 37.021832, 30.277899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014633, 37.641052, 30.819967>,  <41.270447, 37.289551, 30.217953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014633, 37.641052, 30.819967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717533, 37.380749, 30.756937>,  <40.539272, 37.224567, 30.719120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717533, 37.380749, 30.756937>,  <41.014633, 37.641052, 30.819967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717533, 37.380749, 30.756937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300790, 0.114041, 0.946847,
		-0.598203, 0.750668, -0.280447,
		-0.742751, -0.650763, -0.157574,
		40.494709, 37.185520, 30.709665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313606, 38.036297, 30.982971>,  <41.014633, 37.641052, 30.819967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313606, 38.036297, 30.982971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263359, 37.639576, 30.992414>,  <40.233212, 37.401543, 30.998081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263359, 37.639576, 30.992414>,  <40.313606, 38.036297, 30.982971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263359, 37.639576, 30.992414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529499, 0.087151, 0.843822,
		-0.838958, 0.093501, -0.536104,
		-0.125620, -0.991798, 0.023608,
		40.225674, 37.342037, 30.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758492, 37.983685, 31.314222>,  <40.313606, 38.036297, 30.982971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758492, 37.983685, 31.314222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878620, 37.605732, 31.366394>,  <39.950699, 37.378960, 31.397697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878620, 37.605732, 31.366394>,  <39.758492, 37.983685, 31.314222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878620, 37.605732, 31.366394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399093, -0.000281, 0.916910,
		-0.866331, -0.327425, -0.377178,
		0.300325, -0.944877, 0.130429,
		39.968719, 37.322269, 31.405523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138466, 37.591892, 31.588320>,  <39.758492, 37.983685, 31.314222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138466, 37.591892, 31.588320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470497, 37.386856, 31.676157>,  <39.669716, 37.263832, 31.728859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470497, 37.386856, 31.676157>,  <39.138466, 37.591892, 31.588320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470497, 37.386856, 31.676157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307151, -0.091591, 0.947243,
		-0.465438, -0.853732, -0.233472,
		0.830076, -0.512594, 0.219595,
		39.719521, 37.233078, 31.742035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826393, 37.036041, 32.043282>,  <39.138466, 37.591892, 31.588320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826393, 37.036041, 32.043282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216183, 37.093727, 32.112106>,  <39.450054, 37.128338, 32.153400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216183, 37.093727, 32.112106>,  <38.826393, 37.036041, 32.043282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216183, 37.093727, 32.112106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181126, 0.052142, 0.982077,
		0.132658, -0.988172, 0.076932,
		0.974472, 0.144215, 0.172066,
		39.508526, 37.136993, 32.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040279, 36.589077, 32.670776>,  <38.826393, 37.036041, 32.043282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040279, 36.589077, 32.670776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.337620, 36.856190, 32.655281>,  <39.516026, 37.016457, 32.645985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.337620, 36.856190, 32.655281>,  <39.040279, 36.589077, 32.670776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337620, 36.856190, 32.655281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243203, 0.323774, 0.914343,
		0.623122, -0.670256, 0.403083,
		0.743352, 0.667778, -0.038742,
		39.560627, 37.056522, 32.643658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329704, 36.562725, 33.332211>,  <39.040279, 36.589077, 32.670776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329704, 36.562725, 33.332211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452461, 36.913891, 33.185188>,  <39.526115, 37.124588, 33.096977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452461, 36.913891, 33.185188>,  <39.329704, 36.562725, 33.332211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452461, 36.913891, 33.185188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038863, 0.397423, 0.916812,
		0.950952, -0.267075, 0.156082,
		0.306888, 0.877910, -0.367551,
		39.544529, 37.177265, 33.074924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657082, 36.895939, 33.822582>,  <39.329704, 36.562725, 33.332211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657082, 36.895939, 33.822582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545883, 37.196548, 33.583271>,  <39.479164, 37.376915, 33.439686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545883, 37.196548, 33.583271>,  <39.657082, 36.895939, 33.822582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545883, 37.196548, 33.583271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299816, 0.523828, 0.797317,
		0.912594, 0.401024, 0.079696,
		-0.277996, 0.751521, -0.598276,
		39.462486, 37.422005, 33.403790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593472, 37.469341, 34.369122>,  <39.657082, 36.895939, 33.822582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593472, 37.469341, 34.369122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435696, 37.655479, 34.052166>,  <39.341030, 37.767162, 33.861992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435696, 37.655479, 34.052166>,  <39.593472, 37.469341, 34.369122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435696, 37.655479, 34.052166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177487, 0.807482, 0.562558,
		0.901620, 0.362532, -0.235908,
		-0.394437, 0.465343, -0.792386,
		39.317364, 37.795082, 33.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868568, 38.117863, 34.402683>,  <39.593472, 37.469341, 34.369122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868568, 38.117863, 34.402683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529396, 38.131977, 34.191113>,  <39.325893, 38.140446, 34.064171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529396, 38.131977, 34.191113>,  <39.868568, 38.117863, 34.402683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529396, 38.131977, 34.191113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264932, 0.836022, 0.480497,
		0.459152, 0.547559, -0.699542,
		-0.847933, 0.035290, -0.528927,
		39.275017, 38.142563, 34.032433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843525, 38.760880, 34.080700>,  <39.868568, 38.117863, 34.402683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843525, 38.760880, 34.080700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463730, 38.638702, 34.109482>,  <39.235851, 38.565395, 34.126751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463730, 38.638702, 34.109482>,  <39.843525, 38.760880, 34.080700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463730, 38.638702, 34.109482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275723, 0.921526, 0.273436,
		-0.149825, 0.239785, -0.959195,
		-0.949489, -0.305439, 0.071953,
		39.178883, 38.547070, 34.131069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.423515, 38.088444, 26.644062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261677, 37.723251, 26.665133>,  <40.164574, 37.504135, 26.677774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261677, 37.723251, 26.665133>,  <40.423515, 38.088444, 26.644062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261677, 37.723251, 26.665133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119673, 0.004248, 0.992804,
		-0.906633, 0.407985, 0.107540,
		-0.404592, -0.912979, 0.052676,
		40.140301, 37.449356, 26.680935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224277, 38.134701, 27.305130>,  <40.423515, 38.088444, 26.644062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224277, 38.134701, 27.305130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175789, 37.745770, 27.225248>,  <40.146698, 37.512409, 27.177319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175789, 37.745770, 27.225248>,  <40.224277, 38.134701, 27.305130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175789, 37.745770, 27.225248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121090, -0.185201, 0.975212,
		-0.985212, 0.142396, -0.095289,
		-0.121218, -0.972329, -0.199705,
		40.139423, 37.454071, 27.165337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746220, 37.932571, 27.734303>,  <40.224277, 38.134701, 27.305130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746220, 37.932571, 27.734303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913803, 37.589684, 27.614540>,  <40.014355, 37.383949, 27.542683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913803, 37.589684, 27.614540>,  <39.746220, 37.932571, 27.734303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913803, 37.589684, 27.614540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065708, -0.357499, 0.931599,
		-0.905623, -0.370632, -0.206105,
		0.418963, -0.857220, -0.299406,
		40.039494, 37.332516, 27.524717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261261, 37.340958, 27.892921>,  <39.746220, 37.932571, 27.734303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261261, 37.340958, 27.892921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639706, 37.211521, 27.887758>,  <39.866772, 37.133858, 27.884661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639706, 37.211521, 27.887758>,  <39.261261, 37.340958, 27.892921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639706, 37.211521, 27.887758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091169, -0.304374, 0.948180,
		-0.310779, -0.895895, -0.317472,
		0.946100, -0.323618, -0.012915,
		39.923538, 37.114445, 27.883886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275230, 36.733082, 28.433556>,  <39.261261, 37.340958, 27.892921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275230, 36.733082, 28.433556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668335, 36.774296, 28.372149>,  <39.904198, 36.799026, 28.335304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668335, 36.774296, 28.372149>,  <39.275230, 36.733082, 28.433556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668335, 36.774296, 28.372149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165924, -0.125208, 0.978157,
		0.081566, -0.986765, -0.140146,
		0.982759, 0.103038, -0.153515,
		39.963161, 36.805206, 28.326094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686287, 36.157310, 28.629154>,  <39.275230, 36.733082, 28.433556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686287, 36.157310, 28.629154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885693, 36.498550, 28.690742>,  <40.005337, 36.703293, 28.727695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885693, 36.498550, 28.690742>,  <39.686287, 36.157310, 28.629154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885693, 36.498550, 28.690742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152758, -0.261283, 0.953098,
		0.853317, -0.451611, -0.260570,
		0.498512, 0.853099, 0.153971,
		40.035248, 36.754478, 28.736935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148674, 36.009193, 29.076004>,  <39.686287, 36.157310, 28.629154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148674, 36.009193, 29.076004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183205, 36.406853, 29.101957>,  <40.203922, 36.645451, 29.117529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183205, 36.406853, 29.101957>,  <40.148674, 36.009193, 29.076004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183205, 36.406853, 29.101957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144085, -0.076903, 0.986573,
		0.985793, -0.075821, -0.149881,
		0.086329, 0.994152, 0.064885,
		40.209103, 36.705097, 29.121424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747581, 36.125065, 29.421970>,  <40.148674, 36.009193, 29.076004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747581, 36.125065, 29.421970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527206, 36.455948, 29.466150>,  <40.394981, 36.654476, 29.492659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527206, 36.455948, 29.466150>,  <40.747581, 36.125065, 29.421970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527206, 36.455948, 29.466150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212541, 0.011095, 0.977089,
		0.807027, 0.561792, -0.181927,
		-0.550939, 0.827204, 0.110450,
		40.361923, 36.704109, 29.499285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245712, 36.749352, 29.720779>,  <40.747581, 36.125065, 29.421970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245712, 36.749352, 29.720779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862656, 36.829529, 29.803486>,  <40.632824, 36.877636, 29.853109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862656, 36.829529, 29.803486>,  <41.245712, 36.749352, 29.720779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862656, 36.829529, 29.803486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227749, 0.087741, 0.969759,
		0.176238, 0.975769, -0.129675,
		-0.957638, 0.200441, 0.206767,
		40.575363, 36.889660, 29.865517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930500, 37.066906, 29.565222>,  <41.245712, 36.749352, 29.720779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930500, 37.066906, 29.565222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292252, 36.973564, 29.708126>,  <42.509304, 36.917561, 29.793869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292252, 36.973564, 29.708126>,  <41.930500, 37.066906, 29.565222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292252, 36.973564, 29.708126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294124, -0.265688, -0.918096,
		0.309163, 0.935390, -0.171648,
		0.904383, -0.233356, 0.357262,
		42.563568, 36.903557, 29.815304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347847, 37.479973, 29.156677>,  <41.930500, 37.066906, 29.565222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347847, 37.479973, 29.156677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530315, 37.153244, 29.297934>,  <42.639797, 36.957207, 29.382687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530315, 37.153244, 29.297934>,  <42.347847, 37.479973, 29.156677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530315, 37.153244, 29.297934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444439, -0.134681, -0.885627,
		0.770963, 0.560944, 0.301591,
		0.456169, -0.816825, 0.353140,
		42.667168, 36.908195, 29.403875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983765, 37.536491, 28.860531>,  <42.347847, 37.479973, 29.156677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983765, 37.536491, 28.860531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928741, 37.156094, 28.971306>,  <42.895725, 36.927856, 29.037771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928741, 37.156094, 28.971306>,  <42.983765, 37.536491, 28.860531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928741, 37.156094, 28.971306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381824, -0.308899, -0.871087,
		0.913941, -0.014086, 0.405603,
		-0.137561, -0.950991, 0.276937,
		42.887474, 36.870796, 29.054386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593090, 37.225643, 28.679546>,  <42.983765, 37.536491, 28.860531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593090, 37.225643, 28.679546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308159, 36.944923, 28.682554>,  <43.137199, 36.776489, 28.684359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308159, 36.944923, 28.682554>,  <43.593090, 37.225643, 28.679546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308159, 36.944923, 28.682554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343398, -0.357856, -0.868341,
		0.612097, -0.615963, 0.495910,
		-0.712331, -0.701803, 0.007522,
		43.094460, 36.734383, 28.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799782, 36.758907, 28.273569>,  <43.593090, 37.225643, 28.679546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799782, 36.758907, 28.273569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425430, 36.620464, 28.299913>,  <43.200817, 36.537399, 28.315720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425430, 36.620464, 28.299913>,  <43.799782, 36.758907, 28.273569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425430, 36.620464, 28.299913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084526, -0.402050, -0.911708,
		0.342024, -0.847684, 0.405526,
		-0.935882, -0.346103, 0.065859,
		43.144665, 36.516632, 28.319672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785286, 36.071892, 28.011103>,  <43.799782, 36.758907, 28.273569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785286, 36.071892, 28.011103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400017, 36.179207, 28.003925>,  <43.168854, 36.243595, 27.999619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400017, 36.179207, 28.003925>,  <43.785286, 36.071892, 28.011103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400017, 36.179207, 28.003925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088801, -0.380379, -0.920557,
		-0.253794, -0.885063, 0.390195,
		-0.963173, 0.268282, -0.017943,
		43.111065, 36.259693, 27.998543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311199, 35.521786, 27.984642>,  <43.785286, 36.071892, 28.011103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311199, 35.521786, 27.984642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062840, 35.803646, 27.847269>,  <42.913822, 35.972763, 27.764845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062840, 35.803646, 27.847269>,  <43.311199, 35.521786, 27.984642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062840, 35.803646, 27.847269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051575, -0.473883, -0.879076,
		-0.782191, -0.528106, 0.330577,
		-0.620900, 0.704655, -0.343430,
		42.876568, 36.015041, 27.744240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795700, 35.103081, 27.579914>,  <43.311199, 35.521786, 27.984642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795700, 35.103081, 27.579914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783237, 35.490818, 27.482426>,  <42.775761, 35.723461, 27.423933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783237, 35.490818, 27.482426>,  <42.795700, 35.103081, 27.579914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783237, 35.490818, 27.482426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034788, -0.244743, -0.968964,
		-0.998909, -0.021711, 0.041347,
		-0.031156, 0.969345, -0.243721,
		42.773891, 35.781620, 27.409309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271099, 35.051922, 27.078741>,  <42.795700, 35.103081, 27.579914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271099, 35.051922, 27.078741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450802, 35.406315, 27.032789>,  <42.558624, 35.618950, 27.005219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450802, 35.406315, 27.032789>,  <42.271099, 35.051922, 27.078741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450802, 35.406315, 27.032789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101405, -0.077189, -0.991846,
		-0.887631, 0.457240, 0.055166,
		0.449254, 0.885987, -0.114881,
		42.585579, 35.672112, 26.998325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861397, 35.466888, 26.603924>,  <42.271099, 35.051922, 27.078741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861397, 35.466888, 26.603924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245335, 35.579094, 26.603226>,  <42.475697, 35.646416, 26.602806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245335, 35.579094, 26.603226>,  <41.861397, 35.466888, 26.603924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245335, 35.579094, 26.603226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042088, -0.150166, -0.987765,
		-0.277342, 0.948031, -0.155943,
		0.959849, 0.280511, -0.001747,
		42.533291, 35.663246, 26.602701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881992, 36.039864, 26.062199>,  <41.861397, 35.466888, 26.603924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881992, 36.039864, 26.062199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252525, 35.895340, 26.104836>,  <42.474846, 35.808624, 26.130417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252525, 35.895340, 26.104836>,  <41.881992, 36.039864, 26.062199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252525, 35.895340, 26.104836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081117, -0.085003, -0.993073,
		0.367871, 0.928562, -0.049433,
		0.926332, -0.361313, 0.106592,
		42.530426, 35.786945, 26.136812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303459, 36.329235, 25.519112>,  <41.881992, 36.039864, 26.062199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303459, 36.329235, 25.519112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489315, 35.991116, 25.624630>,  <42.600826, 35.788246, 25.687941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489315, 35.991116, 25.624630>,  <42.303459, 36.329235, 25.519112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489315, 35.991116, 25.624630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006909, -0.301355, -0.953487,
		0.885475, 0.441202, -0.145861,
		0.464637, -0.845296, 0.263794,
		42.628708, 35.737526, 25.703768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640545, 36.206528, 24.953402>,  <42.303459, 36.329235, 25.519112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640545, 36.206528, 24.953402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664207, 35.862667, 25.156382>,  <42.678406, 35.656353, 25.278170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664207, 35.862667, 25.156382>,  <42.640545, 36.206528, 24.953402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664207, 35.862667, 25.156382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000997, -0.508393, -0.861125,
		0.998248, 0.050436, -0.030932,
		0.059157, -0.859647, 0.507452,
		42.681953, 35.604774, 25.308617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284073, 35.984047, 24.703587>,  <42.640545, 36.206528, 24.953402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284073, 35.984047, 24.703587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088108, 35.670181, 24.855524>,  <42.970528, 35.481861, 24.946688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088108, 35.670181, 24.855524>,  <43.284073, 35.984047, 24.703587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088108, 35.670181, 24.855524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156568, -0.507827, -0.847112,
		0.857598, -0.355538, 0.371644,
		-0.489911, -0.784669, 0.379845,
		42.941135, 35.434780, 24.969479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.127274, 31.281307, 25.241964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369740, 31.595297, 25.190777>,  <35.515221, 31.783691, 25.160065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369740, 31.595297, 25.190777>,  <35.127274, 31.281307, 25.241964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369740, 31.595297, 25.190777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132236, 0.059190, 0.989449,
		0.784268, -0.616693, -0.067923,
		0.606166, 0.784976, -0.127970,
		35.551590, 31.830790, 25.152386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730061, 31.193932, 25.589851>,  <35.127274, 31.281307, 25.241964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730061, 31.193932, 25.589851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726387, 31.593321, 25.568077>,  <35.724182, 31.832954, 25.555014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726387, 31.593321, 25.568077>,  <35.730061, 31.193932, 25.589851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726387, 31.593321, 25.568077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258785, 0.054953, 0.964371,
		0.965891, -0.005233, -0.258895,
		-0.009180, 0.998475, -0.054433,
		35.723633, 31.892864, 25.551746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376972, 31.428286, 25.850330>,  <35.730061, 31.193932, 25.589851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376972, 31.428286, 25.850330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100605, 31.715433, 25.884481>,  <35.934784, 31.887722, 25.904972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100605, 31.715433, 25.884481>,  <36.376972, 31.428286, 25.850330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100605, 31.715433, 25.884481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283619, 0.160535, 0.945404,
		0.664971, 0.677415, -0.314519,
		-0.690922, 0.717870, 0.085377,
		35.893330, 31.930794, 25.910095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774597, 31.984167, 26.164186>,  <36.376972, 31.428286, 25.850330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774597, 31.984167, 26.164186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389030, 32.077724, 26.215036>,  <36.157692, 32.133858, 26.245546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389030, 32.077724, 26.215036>,  <36.774597, 31.984167, 26.164186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389030, 32.077724, 26.215036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216857, 0.412940, 0.884564,
		0.154399, 0.880213, -0.448760,
		-0.963916, 0.233892, 0.127123,
		36.099857, 32.147892, 26.253174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834404, 32.512794, 26.561295>,  <36.774597, 31.984167, 26.164186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834404, 32.512794, 26.561295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445412, 32.440590, 26.620216>,  <36.212017, 32.397266, 26.655569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445412, 32.440590, 26.620216>,  <36.834404, 32.512794, 26.561295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445412, 32.440590, 26.620216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095819, 0.266423, 0.959081,
		-0.212371, 0.946802, -0.241795,
		-0.972480, -0.180513, 0.147303,
		36.153667, 32.386436, 26.664408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489117, 33.159103, 26.866051>,  <36.834404, 32.512794, 26.561295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489117, 33.159103, 26.866051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264038, 32.843536, 26.964827>,  <36.128990, 32.654198, 27.024092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264038, 32.843536, 26.964827>,  <36.489117, 33.159103, 26.866051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264038, 32.843536, 26.964827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130561, 0.379782, 0.915816,
		-0.816285, 0.483090, -0.316705,
		-0.562701, -0.788916, 0.246938,
		36.095226, 32.606861, 27.038908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112423, 33.467735, 27.284733>,  <36.489117, 33.159103, 26.866051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112423, 33.467735, 27.284733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024704, 33.087505, 27.372656>,  <35.972073, 32.859367, 27.425409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024704, 33.087505, 27.372656>,  <36.112423, 33.467735, 27.284733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024704, 33.087505, 27.372656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078531, 0.241759, 0.967153,
		-0.972492, 0.194832, -0.127667,
		-0.219297, -0.950575, 0.219809,
		35.958916, 32.802334, 27.438599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445435, 33.479721, 27.679134>,  <36.112423, 33.467735, 27.284733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445435, 33.479721, 27.679134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696564, 33.176380, 27.749262>,  <35.847240, 32.994377, 27.791338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696564, 33.176380, 27.749262>,  <35.445435, 33.479721, 27.679134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696564, 33.176380, 27.749262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072817, 0.167029, 0.983259,
		-0.774942, -0.630080, 0.049644,
		0.627824, -0.758354, 0.175318,
		35.884911, 32.948875, 27.801857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152962, 33.175438, 28.248959>,  <35.445435, 33.479721, 27.679134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152962, 33.175438, 28.248959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522404, 33.025303, 28.280153>,  <35.744068, 32.935223, 28.298870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522404, 33.025303, 28.280153>,  <35.152962, 33.175438, 28.248959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522404, 33.025303, 28.280153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066070, 0.044533, 0.996821,
		-0.377620, -0.925817, 0.016332,
		0.923600, -0.375341, 0.077985,
		35.799484, 32.912701, 28.303549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077560, 32.710632, 28.826757>,  <35.152962, 33.175438, 28.248959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077560, 32.710632, 28.826757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472298, 32.768093, 28.797068>,  <35.709141, 32.802570, 28.779255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472298, 32.768093, 28.797068>,  <35.077560, 32.710632, 28.826757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472298, 32.768093, 28.797068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073990, 0.006975, 0.997235,
		0.143769, -0.989604, -0.003745,
		0.986842, 0.143649, -0.074223,
		35.768349, 32.811188, 28.774801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361050, 32.339066, 29.361998>,  <35.077560, 32.710632, 28.826757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361050, 32.339066, 29.361998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662453, 32.586758, 29.273649>,  <35.843296, 32.735371, 29.220640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662453, 32.586758, 29.273649>,  <35.361050, 32.339066, 29.361998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662453, 32.586758, 29.273649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148134, 0.167402, 0.974696,
		0.640533, -0.767159, 0.034410,
		0.753507, 0.619228, -0.220870,
		35.888504, 32.772526, 29.207388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942184, 32.172695, 29.823893>,  <35.361050, 32.339066, 29.361998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942184, 32.172695, 29.823893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083012, 32.521717, 29.688421>,  <36.167507, 32.731129, 29.607138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083012, 32.521717, 29.688421>,  <35.942184, 32.172695, 29.823893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083012, 32.521717, 29.688421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418019, 0.177169, 0.890994,
		0.837441, -0.455264, -0.302368,
		0.352068, 0.872551, -0.338678,
		36.188633, 32.783482, 29.586819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680790, 32.190231, 29.854507>,  <35.942184, 32.172695, 29.823893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680790, 32.190231, 29.854507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540897, 32.564892, 29.862268>,  <36.456963, 32.789688, 29.866924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540897, 32.564892, 29.862268>,  <36.680790, 32.190231, 29.854507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540897, 32.564892, 29.862268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506619, 0.171660, 0.844908,
		0.788053, 0.305318, -0.534559,
		-0.349728, 0.936650, 0.019402,
		36.435978, 32.845886, 29.868090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204067, 32.612099, 30.132940>,  <36.680790, 32.190231, 29.854507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204067, 32.612099, 30.132940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871964, 32.828701, 30.185755>,  <36.672699, 32.958664, 30.217443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871964, 32.828701, 30.185755>,  <37.204067, 32.612099, 30.132940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871964, 32.828701, 30.185755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286639, 0.211657, 0.934366,
		0.478020, 0.813615, -0.330949,
		-0.830262, 0.541508, 0.132038,
		36.622887, 32.991154, 30.225367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828903, 33.015415, 29.908634>,  <37.204067, 32.612099, 30.132940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828903, 33.015415, 29.908634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200214, 32.885925, 29.981853>,  <38.423000, 32.808231, 30.025785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200214, 32.885925, 29.981853>,  <37.828903, 33.015415, 29.908634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200214, 32.885925, 29.981853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100678, -0.255075, -0.961665,
		0.358009, 0.911119, -0.204188,
		0.928275, -0.323727, 0.183049,
		38.478695, 32.788807, 30.036768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223927, 33.277073, 29.377781>,  <37.828903, 33.015415, 29.908634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223927, 33.277073, 29.377781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407627, 32.952572, 29.522533>,  <38.517845, 32.757870, 29.609385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407627, 32.952572, 29.522533>,  <38.223927, 33.277073, 29.377781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407627, 32.952572, 29.522533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078037, -0.368962, -0.926163,
		0.884874, 0.453578, -0.106137,
		0.459247, -0.811255, 0.361880,
		38.545403, 32.709194, 29.631098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833290, 33.302586, 28.874752>,  <38.223927, 33.277073, 29.377781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833290, 33.302586, 28.874752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802467, 32.934635, 29.028580>,  <38.783974, 32.713867, 29.120876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802467, 32.934635, 29.028580>,  <38.833290, 33.302586, 28.874752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802467, 32.934635, 29.028580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251272, -0.391185, -0.885345,
		0.964844, 0.028411, 0.261282,
		-0.077056, -0.919873, 0.384571,
		38.779350, 32.658672, 29.143951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397114, 32.889198, 28.604584>,  <38.833290, 33.302586, 28.874752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397114, 32.889198, 28.604584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144779, 32.614071, 28.748220>,  <38.993378, 32.448994, 28.834402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144779, 32.614071, 28.748220>,  <39.397114, 32.889198, 28.604584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144779, 32.614071, 28.748220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123638, -0.545993, -0.828616,
		0.766002, -0.478324, 0.429474,
		-0.630837, -0.687821, 0.359093,
		38.955528, 32.407726, 28.855947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683716, 32.305035, 28.436012>,  <39.397114, 32.889198, 28.604584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683716, 32.305035, 28.436012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305962, 32.205566, 28.522078>,  <39.079308, 32.145885, 28.573717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305962, 32.205566, 28.522078>,  <39.683716, 32.305035, 28.436012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305962, 32.205566, 28.522078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037385, -0.568884, -0.821567,
		0.326706, -0.783921, 0.527950,
		-0.944386, -0.248673, 0.215165,
		39.022644, 32.130966, 28.586626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603279, 31.572292, 28.275827>,  <39.683716, 32.305035, 28.436012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603279, 31.572292, 28.275827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242073, 31.744131, 28.274067>,  <39.025349, 31.847235, 28.273010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242073, 31.744131, 28.274067>,  <39.603279, 31.572292, 28.275827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242073, 31.744131, 28.274067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199337, -0.428035, -0.881505,
		-0.380568, -0.795134, 0.472154,
		-0.903013, 0.429590, -0.004397,
		38.971169, 31.873009, 28.272747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156242, 31.059216, 28.026482>,  <39.603279, 31.572292, 28.275827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156242, 31.059216, 28.026482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943596, 31.393372, 27.970625>,  <38.816006, 31.593866, 27.937111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943596, 31.393372, 27.970625>,  <39.156242, 31.059216, 28.026482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943596, 31.393372, 27.970625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073191, -0.209565, -0.975051,
		-0.843814, -0.508136, 0.172553,
		-0.531620, 0.835392, -0.139643,
		38.784111, 31.643990, 27.928732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594566, 30.835760, 27.661818>,  <39.156242, 31.059216, 28.026482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594566, 30.835760, 27.661818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625851, 31.227962, 27.589720>,  <38.644623, 31.463284, 27.546461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625851, 31.227962, 27.589720>,  <38.594566, 30.835760, 27.661818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625851, 31.227962, 27.589720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039691, -0.177592, -0.983304,
		-0.996147, 0.084058, 0.025028,
		0.078209, 0.980508, -0.180244,
		38.649315, 31.522116, 27.535646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106720, 30.966236, 27.098537>,  <38.594566, 30.835760, 27.661818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106720, 30.966236, 27.098537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350441, 31.283316, 27.090771>,  <38.496674, 31.473562, 27.086111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350441, 31.283316, 27.090771>,  <38.106720, 30.966236, 27.098537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350441, 31.283316, 27.090771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035635, 0.002912, -0.999361,
		-0.792133, 0.609609, 0.030023,
		0.609307, 0.792697, -0.019417,
		38.533234, 31.521124, 27.084946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814342, 31.412577, 26.722021>,  <38.106720, 30.966236, 27.098537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814342, 31.412577, 26.722021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202465, 31.507271, 26.702185>,  <38.435337, 31.564087, 26.690283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202465, 31.507271, 26.702185>,  <37.814342, 31.412577, 26.722021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202465, 31.507271, 26.702185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045070, -0.024484, -0.998684,
		-0.237640, 0.971265, -0.013087,
		0.970307, 0.236738, -0.049593,
		38.493557, 31.578293, 26.687307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857147, 31.921770, 26.135189>,  <37.814342, 31.412577, 26.722021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857147, 31.921770, 26.135189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213226, 31.763327, 26.225212>,  <38.426872, 31.668261, 26.279226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213226, 31.763327, 26.225212>,  <37.857147, 31.921770, 26.135189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213226, 31.763327, 26.225212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210169, -0.081237, -0.974284,
		0.404204, 0.914603, 0.010932,
		0.890195, -0.396107, 0.225058,
		38.480286, 31.644495, 26.292730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323975, 32.283585, 25.689749>,  <37.857147, 31.921770, 26.135189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323975, 32.283585, 25.689749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539135, 31.963427, 25.795605>,  <38.668232, 31.771332, 25.859119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539135, 31.963427, 25.795605>,  <38.323975, 32.283585, 25.689749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539135, 31.963427, 25.795605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345377, -0.077134, -0.935289,
		0.769010, 0.594495, 0.234946,
		0.537902, -0.800391, 0.264641,
		38.700504, 31.723309, 25.874998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007469, 32.404575, 25.311665>,  <38.323975, 32.283585, 25.689749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007469, 32.404575, 25.311665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006306, 32.022614, 25.430424>,  <39.005608, 31.793436, 25.501678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006306, 32.022614, 25.430424>,  <39.007469, 32.404575, 25.311665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006306, 32.022614, 25.430424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317265, -0.282441, -0.905301,
		0.948333, 0.091561, 0.303779,
		-0.002910, -0.954905, 0.296897,
		39.005432, 31.736141, 25.519493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674717, 32.143360, 25.122601>,  <39.007469, 32.404575, 25.311665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674717, 32.143360, 25.122601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373314, 31.880987, 25.140438>,  <39.192474, 31.723564, 25.151140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373314, 31.880987, 25.140438>,  <39.674717, 32.143360, 25.122601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373314, 31.880987, 25.140438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205294, -0.299187, -0.931848,
		0.624569, -0.692996, 0.360097,
		-0.753504, -0.655929, 0.044595,
		39.147263, 31.684208, 25.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413403, 31.819675, 25.219528>,  <39.674717, 32.143360, 25.122601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413403, 31.819675, 25.219528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764984, 31.981638, 25.118742>,  <40.975933, 32.078815, 25.058270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764984, 31.981638, 25.118742>,  <40.413403, 31.819675, 25.219528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764984, 31.981638, 25.118742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232711, 0.097016, 0.967695,
		0.416272, -0.909196, -0.008954,
		0.878956, 0.404908, -0.251965,
		41.028671, 32.103111, 25.043152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844398, 31.535454, 25.620201>,  <40.413403, 31.819675, 25.219528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844398, 31.535454, 25.620201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062962, 31.853323, 25.514423>,  <41.194099, 32.044044, 25.450956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062962, 31.853323, 25.514423>,  <40.844398, 31.535454, 25.620201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062962, 31.853323, 25.514423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336244, 0.081034, 0.938282,
		0.767058, -0.601603, -0.222927,
		0.546409, 0.794675, -0.264443,
		41.226883, 32.091724, 25.435091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451698, 31.401522, 25.884773>,  <40.844398, 31.535454, 25.620201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451698, 31.401522, 25.884773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.433952, 31.799833, 25.852634>,  <41.423306, 32.038822, 25.833351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.433952, 31.799833, 25.852634>,  <41.451698, 31.401522, 25.884773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433952, 31.799833, 25.852634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433924, 0.091651, 0.896276,
		0.899857, 0.004898, -0.436158,
		-0.044364, 0.995779, -0.080348,
		41.420643, 32.098568, 25.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055340, 31.623234, 26.192688>,  <41.451698, 31.401522, 25.884773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055340, 31.623234, 26.192688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.828472, 31.952579, 26.184732>,  <41.692352, 32.150188, 26.179958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.828472, 31.952579, 26.184732>,  <42.055340, 31.623234, 26.192688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828472, 31.952579, 26.184732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493323, 0.358962, 0.792325,
		0.659511, 0.439567, -0.609775,
		-0.567166, 0.823364, -0.019891,
		41.658321, 32.199589, 26.178764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489552, 32.071671, 26.574806>,  <42.055340, 31.623234, 26.192688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489552, 32.071671, 26.574806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.151493, 32.282581, 26.539690>,  <41.948658, 32.409126, 26.518620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.151493, 32.282581, 26.539690>,  <42.489552, 32.071671, 26.574806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151493, 32.282581, 26.539690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282219, 0.579636, 0.764444,
		0.453961, 0.621291, -0.638684,
		-0.845146, 0.527277, -0.087792,
		41.897949, 32.440765, 26.513353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645409, 32.763248, 26.536476>,  <42.489552, 32.071671, 26.574806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645409, 32.763248, 26.536476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.267452, 32.729553, 26.663027>,  <42.040680, 32.709335, 26.738956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.267452, 32.729553, 26.663027>,  <42.645409, 32.763248, 26.536476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267452, 32.729553, 26.663027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226050, 0.531167, 0.816555,
		-0.236837, 0.843069, -0.482850,
		-0.944886, -0.084242, 0.316375,
		41.983986, 32.704281, 26.757938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426865, 33.490620, 26.862732>,  <42.645409, 32.763248, 26.536476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426865, 33.490620, 26.862732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174904, 33.208729, 26.993319>,  <42.023727, 33.039593, 27.071671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174904, 33.208729, 26.993319>,  <42.426865, 33.490620, 26.862732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174904, 33.208729, 26.993319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022003, 0.403979, 0.914503,
		-0.776366, 0.583228, -0.238960,
		-0.629899, -0.704731, 0.326469,
		41.985935, 32.997311, 27.091259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225086, 33.912682, 27.424870>,  <42.426865, 33.490620, 26.862732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225086, 33.912682, 27.424870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082565, 33.546955, 27.501884>,  <41.997051, 33.327518, 27.548094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082565, 33.546955, 27.501884>,  <42.225086, 33.912682, 27.424870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082565, 33.546955, 27.501884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057021, 0.184400, 0.981196,
		-0.932629, 0.360583, -0.013567,
		-0.356304, -0.914318, 0.192537,
		41.975674, 33.272659, 27.559645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650806, 33.957581, 27.853874>,  <42.225086, 33.912682, 27.424870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650806, 33.957581, 27.853874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798466, 33.591961, 27.921103>,  <41.887062, 33.372589, 27.961439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798466, 33.591961, 27.921103>,  <41.650806, 33.957581, 27.853874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798466, 33.591961, 27.921103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050190, 0.200188, 0.978471,
		-0.928012, -0.352770, 0.119776,
		0.369153, -0.914045, 0.168072,
		41.909210, 33.317749, 27.971523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188145, 33.621105, 28.284969>,  <41.650806, 33.957581, 27.853874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188145, 33.621105, 28.284969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.516541, 33.399731, 28.341084>,  <41.713577, 33.266907, 28.374752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.516541, 33.399731, 28.341084>,  <41.188145, 33.621105, 28.284969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516541, 33.399731, 28.341084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057518, 0.164288, 0.984734,
		-0.568034, -0.816528, 0.103047,
		0.820993, -0.553435, 0.140287,
		41.762840, 33.233700, 28.383169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037746, 33.310200, 28.894346>,  <41.188145, 33.621105, 28.284969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037746, 33.310200, 28.894346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.435299, 33.329945, 28.854824>,  <41.673832, 33.341789, 28.831110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.435299, 33.329945, 28.854824>,  <41.037746, 33.310200, 28.894346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435299, 33.329945, 28.854824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081731, 0.273024, 0.958529,
		0.074287, -0.960740, 0.267320,
		0.993882, 0.049357, -0.098805,
		41.733463, 33.344753, 28.825182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234703, 32.908928, 29.501770>,  <41.037746, 33.310200, 28.894346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234703, 32.908928, 29.501770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.526928, 33.154797, 29.382797>,  <41.702263, 33.302319, 29.311413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.526928, 33.154797, 29.382797>,  <41.234703, 32.908928, 29.501770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526928, 33.154797, 29.382797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227600, 0.191477, 0.954743,
		0.643801, -0.765193, -0.000013,
		0.730560, 0.614667, -0.297432,
		41.746098, 33.339195, 29.293568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640278, 32.808907, 29.957403>,  <41.234703, 32.908928, 29.501770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640278, 32.808907, 29.957403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800304, 33.135784, 29.791449>,  <41.896320, 33.331913, 29.691875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800304, 33.135784, 29.791449>,  <41.640278, 32.808907, 29.957403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800304, 33.135784, 29.791449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378156, 0.265171, 0.886951,
		0.834830, -0.511735, -0.202941,
		0.400071, 0.817197, -0.414888,
		41.920326, 33.380943, 29.666983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379520, 32.867146, 30.130140>,  <41.640278, 32.808907, 29.957403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379520, 32.867146, 30.130140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246117, 33.233131, 30.039274>,  <42.166073, 33.452724, 29.984755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246117, 33.233131, 30.039274>,  <42.379520, 32.867146, 30.130140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246117, 33.233131, 30.039274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353204, 0.344682, 0.869737,
		0.874080, 0.209832, -0.438126,
		-0.333513, 0.914967, -0.227166,
		42.146061, 33.507622, 29.971125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.663116, 35.318977, 24.523260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.283993, 35.211094, 24.591278>,  <43.056519, 35.146362, 24.632090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.283993, 35.211094, 24.591278>,  <43.663116, 35.318977, 24.523260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283993, 35.211094, 24.591278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007555, -0.514184, -0.857646,
		0.318750, -0.814170, 0.485311,
		-0.947809, -0.269708, 0.170047,
		42.999649, 35.130180, 24.642292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620052, 34.653988, 24.322666>,  <43.663116, 35.318977, 24.523260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620052, 34.653988, 24.322666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.246891, 34.797588, 24.311361>,  <43.022995, 34.883751, 24.304579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.246891, 34.797588, 24.311361>,  <43.620052, 34.653988, 24.322666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246891, 34.797588, 24.311361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114256, -0.369497, -0.922180,
		-0.341502, -0.857083, 0.385726,
		-0.932910, 0.358998, -0.028257,
		42.967018, 34.905289, 24.302883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137714, 34.142918, 24.054132>,  <43.620052, 34.653988, 24.322666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137714, 34.142918, 24.054132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.950512, 34.492008, 23.998528>,  <42.838192, 34.701462, 23.965164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.950512, 34.492008, 23.998528>,  <43.137714, 34.142918, 24.054132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950512, 34.492008, 23.998528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194017, -0.254931, -0.947295,
		-0.862166, -0.416367, 0.288632,
		-0.468004, 0.872724, -0.139011,
		42.810112, 34.753826, 23.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496799, 33.869518, 23.803122>,  <43.137714, 34.142918, 24.054132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496799, 33.869518, 23.803122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.511539, 34.260998, 23.722332>,  <42.520382, 34.495884, 23.673859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.511539, 34.260998, 23.722332>,  <42.496799, 33.869518, 23.803122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511539, 34.260998, 23.722332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306023, -0.181349, -0.934592,
		-0.951311, 0.096245, 0.292821,
		0.036847, 0.978698, -0.201973,
		42.522594, 34.554607, 23.661739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872944, 33.938396, 23.528969>,  <42.496799, 33.869518, 23.803122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872944, 33.938396, 23.528969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070953, 34.264061, 23.407585>,  <42.189758, 34.459461, 23.334755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070953, 34.264061, 23.407585>,  <41.872944, 33.938396, 23.528969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070953, 34.264061, 23.407585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474593, -0.039190, -0.879332,
		-0.727812, 0.579313, 0.366996,
		0.495026, 0.814162, -0.303461,
		42.219460, 34.508308, 23.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390339, 34.373596, 23.208828>,  <41.872944, 33.938396, 23.528969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390339, 34.373596, 23.208828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748394, 34.434708, 23.041307>,  <41.963226, 34.471375, 22.940794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748394, 34.434708, 23.041307>,  <41.390339, 34.373596, 23.208828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748394, 34.434708, 23.041307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369153, -0.272651, -0.888475,
		-0.249925, 0.949906, -0.187661,
		0.895133, 0.152776, -0.418803,
		42.016933, 34.480541, 22.915667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188488, 34.723248, 22.557257>,  <41.390339, 34.373596, 23.208828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188488, 34.723248, 22.557257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.569775, 34.619816, 22.494619>,  <41.798546, 34.557755, 22.457037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.569775, 34.619816, 22.494619>,  <41.188488, 34.723248, 22.557257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569775, 34.619816, 22.494619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193381, -0.123436, -0.973328,
		0.232356, 0.958070, -0.167666,
		0.953213, -0.258582, -0.156591,
		41.855740, 34.542240, 22.447641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492023, 35.072330, 21.905750>,  <41.188488, 34.723248, 22.557257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492023, 35.072330, 21.905750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710499, 34.738438, 21.933786>,  <41.841583, 34.538101, 21.950607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710499, 34.738438, 21.933786>,  <41.492023, 35.072330, 21.905750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710499, 34.738438, 21.933786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056414, -0.046827, -0.997309,
		0.835763, 0.548668, 0.021514,
		0.546184, -0.834728, 0.070089,
		41.874355, 34.488018, 21.954813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049248, 35.188587, 21.284729>,  <41.492023, 35.072330, 21.905750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049248, 35.188587, 21.284729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080780, 34.807438, 21.401905>,  <42.099697, 34.578747, 21.472212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080780, 34.807438, 21.401905>,  <42.049248, 35.188587, 21.284729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080780, 34.807438, 21.401905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138271, -0.280566, -0.949823,
		0.987252, 0.115377, 0.109639,
		0.078827, -0.952875, 0.292942,
		42.104427, 34.521576, 21.489788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587578, 34.932388, 20.803663>,  <42.049248, 35.188587, 21.284729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587578, 34.932388, 20.803663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376202, 34.621178, 20.939556>,  <42.249374, 34.434452, 21.021091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376202, 34.621178, 20.939556>,  <42.587578, 34.932388, 20.803663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376202, 34.621178, 20.939556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003997, -0.397887, -0.917426,
		0.848960, -0.486164, 0.207150,
		-0.528442, -0.778030, 0.339733,
		42.217670, 34.387768, 21.041475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962162, 34.369247, 20.604799>,  <42.587578, 34.932388, 20.803663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962162, 34.369247, 20.604799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.589607, 34.229401, 20.645378>,  <42.366074, 34.145493, 20.669725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.589607, 34.229401, 20.645378>,  <42.962162, 34.369247, 20.604799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589607, 34.229401, 20.645378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087904, -0.486418, -0.869293,
		0.353268, -0.800727, 0.483775,
		-0.931383, -0.349619, 0.101449,
		42.310192, 34.124516, 20.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044899, 33.722244, 20.307632>,  <42.962162, 34.369247, 20.604799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044899, 33.722244, 20.307632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647457, 33.764641, 20.323217>,  <42.408993, 33.790077, 20.332567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647457, 33.764641, 20.323217>,  <43.044899, 33.722244, 20.307632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647457, 33.764641, 20.323217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076157, -0.374199, -0.924216,
		-0.083380, -0.921272, 0.379877,
		-0.993603, 0.105991, 0.038961,
		42.349377, 33.796440, 20.334906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789051, 33.223736, 20.020868>,  <43.044899, 33.722244, 20.307632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789051, 33.223736, 20.020868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.451706, 33.417583, 19.928024>,  <42.249298, 33.533894, 19.872318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.451706, 33.417583, 19.928024>,  <42.789051, 33.223736, 20.020868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451706, 33.417583, 19.928024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030266, -0.474119, -0.879940,
		-0.536489, -0.735085, 0.414523,
		-0.843364, 0.484624, -0.232112,
		42.198696, 33.562969, 19.858391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277977, 32.721798, 19.766056>,  <42.789051, 33.223736, 20.020868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277977, 32.721798, 19.766056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286961, 33.096889, 19.627399>,  <42.292351, 33.321945, 19.544205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286961, 33.096889, 19.627399>,  <42.277977, 32.721798, 19.766056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286961, 33.096889, 19.627399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111316, -0.346920, -0.931265,
		-0.993531, -0.017672, -0.112176,
		0.022459, 0.937728, -0.346643,
		42.293697, 33.378208, 19.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780399, 32.405769, 19.353327>,  <42.277977, 32.721798, 19.766056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780399, 32.405769, 19.353327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631496, 32.039345, 19.412998>,  <41.542152, 31.819490, 19.448801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631496, 32.039345, 19.412998>,  <41.780399, 32.405769, 19.353327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631496, 32.039345, 19.412998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274449, 0.262192, 0.925166,
		-0.886622, 0.303462, -0.349016,
		-0.372262, -0.916060, 0.149181,
		41.519817, 31.764526, 19.457752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224369, 32.490116, 19.726494>,  <41.780399, 32.405769, 19.353327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224369, 32.490116, 19.726494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274399, 32.097702, 19.785715>,  <41.304417, 31.862253, 19.821249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274399, 32.097702, 19.785715>,  <41.224369, 32.490116, 19.726494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274399, 32.097702, 19.785715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289418, 0.106658, 0.951242,
		-0.948996, -0.161828, -0.270590,
		0.125077, -0.981038, 0.148054,
		41.311920, 31.803391, 19.830132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606567, 32.187775, 20.195385>,  <41.224369, 32.490116, 19.726494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606567, 32.187775, 20.195385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902885, 31.920530, 20.223269>,  <41.080673, 31.760183, 20.239998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902885, 31.920530, 20.223269>,  <40.606567, 32.187775, 20.195385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902885, 31.920530, 20.223269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179158, -0.096495, 0.979077,
		-0.647404, -0.737779, -0.191180,
		0.740790, -0.668110, 0.069708,
		41.125122, 31.720097, 20.244181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373077, 31.603020, 20.678614>,  <40.606567, 32.187775, 20.195385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373077, 31.603020, 20.678614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772308, 31.579992, 20.687729>,  <41.011848, 31.566175, 20.693197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772308, 31.579992, 20.687729>,  <40.373077, 31.603020, 20.678614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772308, 31.579992, 20.687729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022641, 0.003195, 0.999739,
		-0.057629, -0.998336, 0.001885,
		0.998082, -0.057571, 0.022788,
		41.071732, 31.562723, 20.694565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460598, 31.139774, 21.246803>,  <40.373077, 31.603020, 20.678614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460598, 31.139774, 21.246803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.810966, 31.322935, 21.186014>,  <41.021187, 31.432831, 21.149540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.810966, 31.322935, 21.186014>,  <40.460598, 31.139774, 21.246803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810966, 31.322935, 21.186014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110431, 0.116349, 0.987050,
		0.469654, -0.881356, 0.051345,
		0.875917, 0.457902, -0.151973,
		41.073742, 31.460306, 21.140423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015942, 30.810575, 21.660627>,  <40.460598, 31.139774, 21.246803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015942, 30.810575, 21.660627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179909, 31.166939, 21.582397>,  <41.278290, 31.380756, 21.535460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179909, 31.166939, 21.582397>,  <41.015942, 30.810575, 21.660627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179909, 31.166939, 21.582397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151145, 0.145105, 0.977804,
		0.899512, -0.430379, -0.075175,
		0.409918, 0.890909, -0.195574,
		41.302883, 31.434212, 21.523726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647766, 30.841026, 22.102036>,  <41.015942, 30.810575, 21.660627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647766, 30.841026, 22.102036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547626, 31.218460, 22.015343>,  <41.487541, 31.444920, 21.963327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547626, 31.218460, 22.015343>,  <41.647766, 30.841026, 22.102036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547626, 31.218460, 22.015343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078524, 0.242913, 0.966865,
		0.964965, 0.225039, -0.134908,
		-0.250353, 0.943584, -0.216731,
		41.472519, 31.501535, 21.950323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096535, 31.263914, 22.406151>,  <41.647766, 30.841026, 22.102036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096535, 31.263914, 22.406151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.792557, 31.514292, 22.336082>,  <41.610172, 31.664518, 22.294041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.792557, 31.514292, 22.336082>,  <42.096535, 31.263914, 22.406151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792557, 31.514292, 22.336082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164010, 0.445438, 0.880162,
		0.628960, 0.640142, -0.441167,
		-0.759941, 0.625943, -0.175173,
		41.564575, 31.702074, 22.283531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339588, 31.954273, 22.717031>,  <42.096535, 31.263914, 22.406151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339588, 31.954273, 22.717031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.939960, 31.944815, 22.702631>,  <41.700184, 31.939140, 22.693991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.939960, 31.944815, 22.702631>,  <42.339588, 31.954273, 22.717031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939960, 31.944815, 22.702631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042131, 0.362658, 0.930970,
		-0.008956, 0.931622, -0.363318,
		-0.999072, -0.023644, -0.036002,
		41.640240, 31.937721, 22.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159077, 32.548367, 23.100555>,  <42.339588, 31.954273, 22.717031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159077, 32.548367, 23.100555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.815094, 32.349056, 23.056364>,  <41.608704, 32.229469, 23.029850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.815094, 32.349056, 23.056364>,  <42.159077, 32.548367, 23.100555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815094, 32.349056, 23.056364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283521, 0.286402, 0.915199,
		-0.424378, 0.818351, -0.387563,
		-0.859953, -0.498273, -0.110477,
		41.557110, 32.199574, 23.023220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598381, 33.017174, 23.281897>,  <42.159077, 32.548367, 23.100555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598381, 33.017174, 23.281897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452942, 32.648689, 23.337290>,  <41.365681, 32.427601, 23.370525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452942, 32.648689, 23.337290>,  <41.598381, 33.017174, 23.281897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452942, 32.648689, 23.337290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339598, 0.269500, 0.901134,
		-0.867452, 0.280619, -0.410828,
		-0.363593, -0.921207, 0.138481,
		41.343864, 32.372326, 23.378834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954876, 33.073872, 23.581392>,  <41.598381, 33.017174, 23.281897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954876, 33.073872, 23.581392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064491, 32.697250, 23.659767>,  <41.130260, 32.471279, 23.706791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064491, 32.697250, 23.659767>,  <40.954876, 33.073872, 23.581392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064491, 32.697250, 23.659767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184965, 0.148331, 0.971486,
		-0.943765, -0.302463, -0.133506,
		0.274035, -0.941549, 0.195935,
		41.146702, 32.414787, 23.718548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408592, 32.790485, 24.153877>,  <40.954876, 33.073872, 23.581392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408592, 32.790485, 24.153877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.714951, 32.533592, 24.166174>,  <40.898766, 32.379456, 24.173552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.714951, 32.533592, 24.166174>,  <40.408592, 32.790485, 24.153877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714951, 32.533592, 24.166174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071094, -0.037070, 0.996781,
		-0.639022, -0.765616, -0.074050,
		0.765896, -0.642229, 0.030742,
		40.944721, 32.340923, 24.175396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213337, 32.297012, 24.631443>,  <40.408592, 32.790485, 24.153877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213337, 32.297012, 24.631443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607841, 32.240387, 24.597378>,  <40.844543, 32.206409, 24.576939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607841, 32.240387, 24.597378>,  <40.213337, 32.297012, 24.631443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607841, 32.240387, 24.597378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070731, -0.104033, 0.992056,
		-0.149310, -0.984446, -0.092590,
		0.986257, -0.141575, -0.085164,
		40.903721, 32.197918, 24.571829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911236, 31.605030, 24.653896>,  <40.213337, 32.297012, 24.631443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911236, 31.605030, 24.653896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519608, 31.526939, 24.676889>,  <39.284630, 31.480085, 24.690685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519608, 31.526939, 24.676889>,  <39.911236, 31.605030, 24.653896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519608, 31.526939, 24.676889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006510, -0.252272, -0.967634,
		0.203409, -0.947758, 0.245722,
		-0.979072, -0.195226, 0.057484,
		39.225887, 31.468372, 24.694134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793015, 31.052763, 24.185186>,  <39.911236, 31.605030, 24.653896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793015, 31.052763, 24.185186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420479, 31.171156, 24.270033>,  <39.196957, 31.242191, 24.320942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420479, 31.171156, 24.270033>,  <39.793015, 31.052763, 24.185186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420479, 31.171156, 24.270033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251194, -0.100481, -0.962707,
		-0.263633, -0.949893, 0.167931,
		-0.931343, 0.295984, 0.212117,
		39.141075, 31.259951, 24.333668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402206, 30.541969, 23.819422>,  <39.793015, 31.052763, 24.185186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402206, 30.541969, 23.819422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161903, 30.857719, 23.869982>,  <39.017723, 31.047171, 23.900318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161903, 30.857719, 23.869982>,  <39.402206, 30.541969, 23.819422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161903, 30.857719, 23.869982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338787, -0.108178, -0.934623,
		-0.724097, -0.604302, 0.332419,
		-0.600755, 0.789377, 0.126399,
		38.981678, 31.094532, 23.907902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823414, 30.337057, 23.418388>,  <39.402206, 30.541969, 23.819422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823414, 30.337057, 23.418388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766335, 30.730042, 23.466402>,  <38.732086, 30.965832, 23.495211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766335, 30.730042, 23.466402>,  <38.823414, 30.337057, 23.418388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766335, 30.730042, 23.466402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234618, 0.084242, -0.968430,
		-0.961557, -0.166355, 0.218482,
		-0.142698, 0.982461, 0.120033,
		38.723526, 31.024780, 23.502413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193016, 30.463827, 23.116650>,  <38.823414, 30.337057, 23.418388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193016, 30.463827, 23.116650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423344, 30.790071, 23.139307>,  <38.561539, 30.985819, 23.152901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423344, 30.790071, 23.139307>,  <38.193016, 30.463827, 23.116650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423344, 30.790071, 23.139307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129810, 0.159608, -0.978608,
		-0.807206, 0.556149, 0.197780,
		0.575820, 0.815612, 0.056643,
		38.596088, 31.034756, 23.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820290, 31.007099, 22.849426>,  <38.193016, 30.463827, 23.116650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820290, 31.007099, 22.849426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210922, 31.082848, 22.808588>,  <38.445301, 31.128298, 22.784084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210922, 31.082848, 22.808588>,  <37.820290, 31.007099, 22.849426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210922, 31.082848, 22.808588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136020, 0.175811, -0.974981,
		-0.166685, 0.966037, 0.197452,
		0.976583, 0.189372, -0.102096,
		38.503899, 31.139660, 22.777960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794800, 31.397839, 22.361269>,  <37.820290, 31.007099, 22.849426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794800, 31.397839, 22.361269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191875, 31.350376, 22.352501>,  <38.430122, 31.321899, 22.347240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191875, 31.350376, 22.352501>,  <37.794800, 31.397839, 22.361269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191875, 31.350376, 22.352501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002772, 0.159196, -0.987243,
		0.120632, 0.980091, 0.157704,
		0.992693, -0.118656, -0.021921,
		38.489685, 31.314779, 22.345924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411919, 31.899096, 22.735107>,  <37.794800, 31.397839, 22.361269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411919, 31.899096, 22.735107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045372, 31.982342, 22.598307>,  <36.825443, 32.032291, 22.516226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.045372, 31.982342, 22.598307>,  <37.411919, 31.899096, 22.735107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045372, 31.982342, 22.598307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389603, -0.266982, 0.881437,
		0.092134, 0.940961, 0.325735,
		-0.916363, 0.208118, -0.342003,
		36.770462, 32.044777, 22.495707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136986, 32.442070, 23.112978>,  <37.411919, 31.899096, 22.735107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136986, 32.442070, 23.112978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800694, 32.272152, 22.978685>,  <36.598919, 32.170200, 22.898109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800694, 32.272152, 22.978685>,  <37.136986, 32.442070, 23.112978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800694, 32.272152, 22.978685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386079, 0.035591, 0.921779,
		-0.379618, 0.904590, -0.193927,
		-0.840734, -0.424795, -0.335733,
		36.548473, 32.144714, 22.877966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596863, 32.812149, 23.380457>,  <37.136986, 32.442070, 23.112978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596863, 32.812149, 23.380457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430565, 32.456059, 23.305988>,  <36.330788, 32.242405, 23.261307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430565, 32.456059, 23.305988>,  <36.596863, 32.812149, 23.380457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430565, 32.456059, 23.305988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302209, -0.057849, 0.951485,
		-0.857802, 0.451839, -0.244983,
		-0.415746, -0.890222, -0.186173,
		36.305840, 32.188992, 23.250137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959103, 32.877392, 23.524988>,  <36.596863, 32.812149, 23.380457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959103, 32.877392, 23.524988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028255, 32.484013, 23.546688>,  <36.069748, 32.247986, 23.559708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028255, 32.484013, 23.546688>,  <35.959103, 32.877392, 23.524988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028255, 32.484013, 23.546688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315972, -0.003206, 0.948763,
		-0.932885, -0.181163, -0.311297,
		0.172879, -0.983448, 0.054252,
		36.080120, 32.188980, 23.562963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340977, 32.640053, 23.833088>,  <35.959103, 32.877392, 23.524988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340977, 32.640053, 23.833088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601837, 32.343098, 23.894476>,  <35.758354, 32.164925, 23.931309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601837, 32.343098, 23.894476>,  <35.340977, 32.640053, 23.833088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601837, 32.343098, 23.894476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236680, -0.007063, 0.971562,
		-0.720195, -0.669929, -0.180315,
		0.652152, -0.742391, 0.153472,
		35.797482, 32.120380, 23.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947498, 32.181232, 24.249346>,  <35.340977, 32.640053, 23.833088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947498, 32.181232, 24.249346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335491, 32.091377, 24.286615>,  <35.568287, 32.037464, 24.308977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335491, 32.091377, 24.286615>,  <34.947498, 32.181232, 24.249346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335491, 32.091377, 24.286615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106624, -0.048476, 0.993117,
		-0.218574, -0.973236, -0.070972,
		0.969978, -0.224636, 0.093175,
		35.626484, 32.023987, 24.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898750, 31.730282, 24.709354>,  <34.947498, 32.181232, 24.249346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898750, 31.730282, 24.709354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280697, 31.848392, 24.722250>,  <35.509865, 31.919258, 24.729988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280697, 31.848392, 24.722250>,  <34.898750, 31.730282, 24.709354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280697, 31.848392, 24.722250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051390, 0.057330, 0.997032,
		0.292553, -0.953690, 0.069917,
		0.954867, 0.295278, 0.032239,
		35.567158, 31.936975, 24.731922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.509537, 34.386265, 20.446180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.909527, 34.385227, 20.443506>,  <39.149521, 34.384605, 20.441902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.909527, 34.385227, 20.443506>,  <38.509537, 34.386265, 20.446180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909527, 34.385227, 20.443506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007168, 0.350274, 0.936620,
		-0.000089, -0.936644, 0.350284,
		0.999974, -0.002595, -0.006683,
		39.209518, 34.384449, 20.441502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764233, 34.184444, 21.039864>,  <38.509537, 34.386265, 20.446180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764233, 34.184444, 21.039864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102791, 34.370251, 20.935688>,  <39.305927, 34.481735, 20.873182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102791, 34.370251, 20.935688>,  <38.764233, 34.184444, 21.039864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102791, 34.370251, 20.935688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086665, 0.362382, 0.927992,
		0.525451, -0.808022, 0.266462,
		0.846399, 0.464521, -0.260441,
		39.356712, 34.509605, 20.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297909, 34.053734, 21.698437>,  <38.764233, 34.184444, 21.039864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297909, 34.053734, 21.698437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477699, 34.335438, 21.478624>,  <39.585575, 34.504459, 21.346737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477699, 34.335438, 21.478624>,  <39.297909, 34.053734, 21.698437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477699, 34.335438, 21.478624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430362, 0.368354, 0.824077,
		0.782787, -0.606905, -0.137519,
		0.449481, 0.704260, -0.549531,
		39.612545, 34.546715, 21.313765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876076, 34.208237, 21.999475>,  <39.297909, 34.053734, 21.698437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876076, 34.208237, 21.999475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836937, 34.538147, 21.776705>,  <39.813454, 34.736092, 21.643042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836937, 34.538147, 21.776705>,  <39.876076, 34.208237, 21.999475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836937, 34.538147, 21.776705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308307, 0.557206, 0.771018,
		0.946241, -0.096260, -0.308807,
		-0.097851, 0.824776, -0.556928,
		39.807583, 34.785580, 21.609627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475285, 34.626671, 22.214821>,  <39.876076, 34.208237, 21.999475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475285, 34.626671, 22.214821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.199566, 34.871376, 22.059584>,  <40.034134, 35.018200, 21.966442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.199566, 34.871376, 22.059584>,  <40.475285, 34.626671, 22.214821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199566, 34.871376, 22.059584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194362, 0.672204, 0.714399,
		0.697917, 0.417004, -0.582253,
		-0.689300, 0.611759, -0.388093,
		39.992775, 35.054905, 21.943155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805157, 35.382580, 22.063957>,  <40.475285, 34.626671, 22.214821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805157, 35.382580, 22.063957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410366, 35.446377, 22.072374>,  <40.173492, 35.484653, 22.077425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410366, 35.446377, 22.072374>,  <40.805157, 35.382580, 22.063957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410366, 35.446377, 22.072374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137383, 0.767567, 0.626073,
		0.083703, 0.620809, -0.779481,
		-0.986975, 0.159492, 0.021041,
		40.114273, 35.494225, 22.078686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724762, 36.123146, 21.989513>,  <40.805157, 35.382580, 22.063957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724762, 36.123146, 21.989513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395958, 35.959343, 22.147802>,  <40.198673, 35.861061, 22.242777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395958, 35.959343, 22.147802>,  <40.724762, 36.123146, 21.989513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395958, 35.959343, 22.147802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008308, 0.703452, 0.710694,
		-0.569406, 0.580913, -0.581650,
		-0.822015, -0.409505, 0.395724,
		40.149353, 35.836491, 22.266520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458538, 36.664604, 22.366446>,  <40.724762, 36.123146, 21.989513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458538, 36.664604, 22.366446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281849, 36.342827, 22.525322>,  <40.175835, 36.149761, 22.620647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281849, 36.342827, 22.525322>,  <40.458538, 36.664604, 22.366446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281849, 36.342827, 22.525322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079751, 0.476178, 0.875725,
		-0.893600, 0.355151, -0.274493,
		-0.441723, -0.804439, 0.397189,
		40.149334, 36.101494, 22.644478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972412, 37.024525, 22.785618>,  <40.458538, 36.664604, 22.366446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972412, 37.024525, 22.785618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.979324, 36.655052, 22.938726>,  <39.983471, 36.433369, 23.030592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.979324, 36.655052, 22.938726>,  <39.972412, 37.024525, 22.785618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979324, 36.655052, 22.938726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080790, 0.380289, 0.921332,
		-0.996581, -0.046845, -0.068053,
		0.017280, -0.923681, 0.382774,
		39.984509, 36.377949, 23.053558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426426, 36.985821, 23.237698>,  <39.972412, 37.024525, 22.785618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426426, 36.985821, 23.237698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675426, 36.694359, 23.351931>,  <39.824825, 36.519482, 23.420471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675426, 36.694359, 23.351931>,  <39.426426, 36.985821, 23.237698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675426, 36.694359, 23.351931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119482, 0.272145, 0.954809,
		-0.773445, -0.628492, 0.082349,
		0.622501, -0.728653, 0.285582,
		39.862175, 36.475761, 23.437605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074039, 36.593506, 23.579062>,  <39.426426, 36.985821, 23.237698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074039, 36.593506, 23.579062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.441727, 36.516216, 23.716290>,  <39.662338, 36.469841, 23.798626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.441727, 36.516216, 23.716290>,  <39.074039, 36.593506, 23.579062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441727, 36.516216, 23.716290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344986, 0.024729, 0.938282,
		-0.189783, -0.980843, -0.043928,
		0.919221, -0.193225, 0.343071,
		39.717491, 36.458248, 23.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977730, 36.128868, 24.063211>,  <39.074039, 36.593506, 23.579062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977730, 36.128868, 24.063211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344200, 36.257378, 24.159052>,  <39.564083, 36.334484, 24.216557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344200, 36.257378, 24.159052>,  <38.977730, 36.128868, 24.063211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344200, 36.257378, 24.159052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217204, -0.104408, 0.970526,
		0.336822, -0.941213, -0.025874,
		0.916173, 0.321274, 0.239602,
		39.619053, 36.353760, 24.230932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436951, 35.565689, 24.125080>,  <38.977730, 36.128868, 24.063211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436951, 35.565689, 24.125080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070652, 35.609207, 24.279778>,  <37.850872, 35.635319, 24.372595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070652, 35.609207, 24.279778>,  <38.436951, 35.565689, 24.125080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070652, 35.609207, 24.279778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401669, -0.228413, -0.886842,
		-0.008145, -0.967467, 0.252867,
		-0.915748, 0.108793, 0.386741,
		37.795929, 35.641846, 24.395800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111542, 35.000782, 23.919512>,  <38.436951, 35.565689, 24.125080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111542, 35.000782, 23.919512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829750, 35.271996, 24.003391>,  <37.660675, 35.434723, 24.053719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829750, 35.271996, 24.003391>,  <38.111542, 35.000782, 23.919512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829750, 35.271996, 24.003391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306521, -0.024186, -0.951557,
		-0.640117, -0.734632, 0.224870,
		-0.704482, 0.678035, 0.209698,
		37.618404, 35.475407, 24.066301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443893, 34.711487, 23.653700>,  <38.111542, 35.000782, 23.919512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443893, 34.711487, 23.653700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411518, 35.108234, 23.692972>,  <37.392090, 35.346283, 23.716536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411518, 35.108234, 23.692972>,  <37.443893, 34.711487, 23.653700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411518, 35.108234, 23.692972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477733, 0.047846, -0.877201,
		-0.874768, -0.117908, 0.469976,
		-0.080943, 0.991871, 0.098183,
		37.387234, 35.405796, 23.722427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837723, 34.789139, 23.265898>,  <37.443893, 34.711487, 23.653700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837723, 34.789139, 23.265898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976261, 35.162754, 23.300797>,  <37.059383, 35.386925, 23.321735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976261, 35.162754, 23.300797>,  <36.837723, 34.789139, 23.265898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976261, 35.162754, 23.300797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225190, 0.173060, -0.958822,
		-0.910679, 0.312434, 0.270275,
		0.346342, 0.934043, 0.087245,
		37.080162, 35.442966, 23.326969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335125, 35.252090, 23.139498>,  <36.837723, 34.789139, 23.265898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335125, 35.252090, 23.139498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686932, 35.420631, 23.051041>,  <36.898018, 35.521755, 22.997967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686932, 35.420631, 23.051041>,  <36.335125, 35.252090, 23.139498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686932, 35.420631, 23.051041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320635, 0.181353, -0.929680,
		-0.351618, 0.888579, 0.294604,
		0.879521, 0.421353, -0.221143,
		36.950787, 35.547039, 22.984697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176201, 35.731323, 22.586990>,  <36.335125, 35.252090, 23.139498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176201, 35.731323, 22.586990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574070, 35.724922, 22.546240>,  <36.812790, 35.721081, 22.521790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574070, 35.724922, 22.546240>,  <36.176201, 35.731323, 22.586990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574070, 35.724922, 22.546240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100435, 0.073899, -0.992195,
		0.023407, 0.997137, 0.071897,
		0.994668, -0.016003, -0.101878,
		36.872471, 35.720119, 22.515676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267063, 36.202003, 22.026424>,  <36.176201, 35.731323, 22.586990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267063, 36.202003, 22.026424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.587894, 35.963684, 22.042929>,  <36.780392, 35.820694, 22.052832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.587894, 35.963684, 22.042929>,  <36.267063, 36.202003, 22.026424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587894, 35.963684, 22.042929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092948, 0.056286, -0.994079,
		0.589945, 0.801162, 0.100524,
		0.802076, -0.595795, 0.041260,
		36.828518, 35.784946, 22.055307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708191, 36.489269, 21.491184>,  <36.267063, 36.202003, 22.026424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708191, 36.489269, 21.491184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.834911, 36.117130, 21.565035>,  <36.910946, 35.893845, 21.609344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.834911, 36.117130, 21.565035>,  <36.708191, 36.489269, 21.491184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834911, 36.117130, 21.565035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078747, -0.168180, -0.982606,
		0.945217, 0.325831, 0.019983,
		0.316803, -0.930349, 0.184625,
		36.929951, 35.838024, 21.620422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333977, 36.371563, 20.980518>,  <36.708191, 36.489269, 21.491184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333977, 36.371563, 20.980518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205097, 36.006908, 21.082586>,  <37.127769, 35.788116, 21.143827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205097, 36.006908, 21.082586>,  <37.333977, 36.371563, 20.980518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205097, 36.006908, 21.082586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134672, -0.310941, -0.940839,
		0.937045, -0.268770, 0.222955,
		-0.322196, -0.911635, 0.255170,
		37.108437, 35.733418, 21.159138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796097, 35.973797, 20.674467>,  <37.333977, 36.371563, 20.980518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796097, 35.973797, 20.674467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.465679, 35.755741, 20.731707>,  <37.267429, 35.624908, 20.766050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.465679, 35.755741, 20.731707>,  <37.796097, 35.973797, 20.674467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465679, 35.755741, 20.731707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003246, -0.249289, -0.968424,
		0.563599, -0.800423, 0.204154,
		-0.826042, -0.545140, 0.143098,
		37.217865, 35.592197, 20.774635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924870, 35.413498, 20.300589>,  <37.796097, 35.973797, 20.674467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924870, 35.413498, 20.300589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537785, 35.352108, 20.380566>,  <37.305534, 35.315273, 20.428553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537785, 35.352108, 20.380566>,  <37.924870, 35.413498, 20.300589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537785, 35.352108, 20.380566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130164, -0.375002, -0.917840,
		0.215845, -0.914231, 0.342918,
		-0.967713, -0.153476, 0.199943,
		37.247471, 35.306065, 20.440548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841812, 34.760132, 20.046471>,  <37.924870, 35.413498, 20.300589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841812, 34.760132, 20.046471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.480957, 34.932167, 20.060173>,  <37.264446, 35.035389, 20.068394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.480957, 34.932167, 20.060173>,  <37.841812, 34.760132, 20.046471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480957, 34.932167, 20.060173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215016, -0.379333, -0.899930,
		-0.374026, -0.819240, 0.434685,
		-0.902149, 0.430062, 0.034269,
		37.210316, 35.061195, 20.070450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329941, 34.312386, 19.895445>,  <37.841812, 34.760132, 20.046471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329941, 34.312386, 19.895445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.155067, 34.663513, 19.817148>,  <37.050144, 34.874187, 19.770170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.155067, 34.663513, 19.817148>,  <37.329941, 34.312386, 19.895445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155067, 34.663513, 19.817148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265929, -0.334076, -0.904254,
		-0.859160, -0.343267, 0.379488,
		-0.437178, 0.877816, -0.195740,
		37.023914, 34.926857, 19.758427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923885, 34.517494, 20.436180>,  <37.329941, 34.312386, 19.895445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923885, 34.517494, 20.436180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.889160, 34.226616, 20.163813>,  <36.868324, 34.052090, 20.000393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.889160, 34.226616, 20.163813>,  <36.923885, 34.517494, 20.436180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889160, 34.226616, 20.163813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601465, -0.506611, 0.617726,
		-0.794168, 0.463176, -0.393402,
		-0.086814, -0.727196, -0.680919,
		36.863117, 34.008457, 19.959538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204380, 34.327682, 20.523994>,  <36.923885, 34.517494, 20.436180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204380, 34.327682, 20.523994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380054, 34.019600, 20.338995>,  <36.485458, 33.834751, 20.227995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380054, 34.019600, 20.338995>,  <36.204380, 34.327682, 20.523994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380054, 34.019600, 20.338995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351671, -0.621109, 0.700394,
		-0.826709, -0.144953, -0.543638,
		0.439182, -0.770203, -0.462500,
		36.511810, 33.788540, 20.200245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776024, 33.745182, 20.613420>,  <36.204380, 34.327682, 20.523994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776024, 33.745182, 20.613420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.140732, 33.602032, 20.532816>,  <36.359554, 33.516144, 20.484453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.140732, 33.602032, 20.532816>,  <35.776024, 33.745182, 20.613420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140732, 33.602032, 20.532816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105875, -0.678870, 0.726586,
		-0.396827, -0.641141, -0.656861,
		0.911767, -0.357874, -0.201513,
		36.414261, 33.494671, 20.472363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636574, 33.052113, 20.717978>,  <35.776024, 33.745182, 20.613420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636574, 33.052113, 20.717978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.035789, 33.077114, 20.718473>,  <36.275318, 33.092117, 20.718771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.035789, 33.077114, 20.718473>,  <35.636574, 33.052113, 20.717978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035789, 33.077114, 20.718473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041817, -0.682144, 0.730022,
		0.046477, -0.728542, -0.683423,
		0.998044, 0.062508, 0.001239,
		36.335201, 33.095867, 20.718845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990620, 32.353420, 20.637400>,  <35.636574, 33.052113, 20.717978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990620, 32.353420, 20.637400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261684, 32.576519, 20.829103>,  <36.424324, 32.710381, 20.944126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261684, 32.576519, 20.829103>,  <35.990620, 32.353420, 20.637400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261684, 32.576519, 20.829103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177981, -0.756745, 0.629015,
		0.713511, -0.340959, -0.612086,
		0.677661, 0.557749, 0.479262,
		36.464981, 32.743843, 20.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461506, 31.884886, 20.935392>,  <35.990620, 32.353420, 20.637400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461506, 31.884886, 20.935392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511665, 32.239105, 21.114313>,  <36.541759, 32.451637, 21.221666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511665, 32.239105, 21.114313>,  <36.461506, 31.884886, 20.935392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511665, 32.239105, 21.114313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181919, -0.463740, 0.867093,
		0.975285, -0.027360, -0.219250,
		0.125399, 0.885549, 0.447301,
		36.549286, 32.504768, 21.248503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028709, 31.748144, 21.265471>,  <36.461506, 31.884886, 20.935392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028709, 31.748144, 21.265471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.861740, 32.061779, 21.449192>,  <36.761559, 32.249962, 21.559425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.861740, 32.061779, 21.449192>,  <37.028709, 31.748144, 21.265471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861740, 32.061779, 21.449192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074024, -0.474425, 0.877178,
		0.905691, 0.400157, 0.139996,
		-0.417426, 0.784089, 0.459304,
		36.736511, 32.297005, 21.586983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348278, 31.792612, 21.920397>,  <37.028709, 31.748144, 21.265471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348278, 31.792612, 21.920397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018757, 32.011768, 21.978590>,  <36.821045, 32.143261, 22.013506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018757, 32.011768, 21.978590>,  <37.348278, 31.792612, 21.920397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018757, 32.011768, 21.978590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125570, -0.426631, 0.895666,
		0.552796, 0.719583, 0.420258,
		-0.823802, 0.547892, 0.145482,
		36.771618, 32.176136, 22.022234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138645, 32.054974, 21.928532>,  <37.348278, 31.792612, 21.920397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138645, 32.054974, 21.928532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362755, 31.723692, 21.933859>,  <38.497219, 31.524923, 21.937056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362755, 31.723692, 21.933859>,  <38.138645, 32.054974, 21.928532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362755, 31.723692, 21.933859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026648, 0.001954, -0.999643,
		0.827879, 0.560428, 0.023164,
		0.560274, -0.828201, 0.013317,
		38.530838, 31.475231, 21.937855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657688, 32.267529, 21.596226>,  <38.138645, 32.054974, 21.928532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657688, 32.267529, 21.596226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654610, 31.868271, 21.572044>,  <38.652763, 31.628717, 21.557535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654610, 31.868271, 21.572044>,  <38.657688, 32.267529, 21.596226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654610, 31.868271, 21.572044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089017, 0.059533, -0.994250,
		0.996000, -0.013037, 0.088393,
		-0.007700, -0.998141, -0.060455,
		38.652298, 31.568829, 21.553907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143845, 32.088200, 20.986452>,  <38.657688, 32.267529, 21.596226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143845, 32.088200, 20.986452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905098, 31.768591, 21.015633>,  <38.761852, 31.576826, 21.033142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905098, 31.768591, 21.015633>,  <39.143845, 32.088200, 20.986452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905098, 31.768591, 21.015633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078733, -0.148812, -0.985726,
		0.798471, -0.582600, 0.151729,
		-0.596863, -0.799020, 0.072952,
		38.726040, 31.528885, 21.037518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523525, 31.564022, 20.764585>,  <39.143845, 32.088200, 20.986452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523525, 31.564022, 20.764585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.142246, 31.453121, 20.716341>,  <38.913479, 31.386580, 20.687393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.142246, 31.453121, 20.716341>,  <39.523525, 31.564022, 20.764585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142246, 31.453121, 20.716341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204105, -0.295738, -0.933210,
		0.223067, -0.914149, 0.338485,
		-0.953196, -0.277255, -0.120613,
		38.856289, 31.369946, 20.680157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579174, 31.057795, 20.261988>,  <39.523525, 31.564022, 20.764585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579174, 31.057795, 20.261988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181835, 31.100716, 20.278683>,  <38.943432, 31.126469, 20.288700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181835, 31.100716, 20.278683>,  <39.579174, 31.057795, 20.261988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181835, 31.100716, 20.278683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058901, -0.162127, -0.985010,
		-0.098924, -0.980919, 0.167369,
		-0.993350, 0.107299, 0.041739,
		38.883831, 31.132906, 20.291204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237843, 30.429640, 20.029493>,  <39.579174, 31.057795, 20.261988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237843, 30.429640, 20.029493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982986, 30.733828, 19.979307>,  <38.830074, 30.916340, 19.949196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982986, 30.733828, 19.979307>,  <39.237843, 30.429640, 20.029493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982986, 30.733828, 19.979307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057166, -0.115710, -0.991637,
		-0.768629, -0.638980, 0.030250,
		-0.637136, 0.760471, -0.125465,
		38.791847, 30.961969, 19.941668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764763, 30.148239, 19.616127>,  <39.237843, 30.429640, 20.029493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764763, 30.148239, 19.616127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726891, 30.545353, 19.586689>,  <38.704166, 30.783621, 19.569025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726891, 30.545353, 19.586689>,  <38.764763, 30.148239, 19.616127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726891, 30.545353, 19.586689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009485, -0.073026, -0.997285,
		-0.995462, -0.095123, -0.002503,
		-0.094682, 0.992783, -0.073597,
		38.698486, 30.843187, 19.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475304, 30.177725, 18.970861>,  <38.764763, 30.148239, 19.616127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475304, 30.177725, 18.970861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532913, 30.571087, 19.014996>,  <38.567478, 30.807104, 19.041475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532913, 30.571087, 19.014996>,  <38.475304, 30.177725, 18.970861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532913, 30.571087, 19.014996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137489, 0.090529, -0.986358,
		-0.979977, 0.157229, -0.122169,
		0.144024, 0.983404, 0.110333,
		38.576118, 30.866108, 19.048096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903568, 30.489418, 18.581234>,  <38.475304, 30.177725, 18.970861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903568, 30.489418, 18.581234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.221214, 30.724255, 18.644106>,  <38.411800, 30.865156, 18.681829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.221214, 30.724255, 18.644106>,  <37.903568, 30.489418, 18.581234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221214, 30.724255, 18.644106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093056, 0.138116, -0.986035,
		-0.600604, 0.797650, 0.055047,
		0.794113, 0.587094, 0.157179,
		38.459450, 30.900383, 18.691259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.409779, 33.324936, 34.673660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686718, 33.613014, 34.655895>,  <38.852882, 33.785862, 34.645237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686718, 33.613014, 34.655895>,  <38.409779, 33.324936, 34.673660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686718, 33.613014, 34.655895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143469, 0.077082, -0.986648,
		-0.707159, 0.689474, 0.156693,
		0.692346, 0.720197, -0.044408,
		38.894421, 33.829075, 34.642574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184460, 33.891029, 34.304096>,  <38.409779, 33.324936, 34.673660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184460, 33.891029, 34.304096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.581863, 33.908272, 34.261997>,  <38.820305, 33.918617, 34.236740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.581863, 33.908272, 34.261997>,  <38.184460, 33.891029, 34.304096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581863, 33.908272, 34.261997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103167, -0.047865, -0.993512,
		-0.047865, 0.997923, -0.043107,
		0.993512, 0.043107, -0.105244,
		38.879917, 33.921204, 34.230423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292404, 34.178024, 33.680058>,  <38.184460, 33.891029, 34.304096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292404, 34.178024, 33.680058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660595, 34.030647, 33.732159>,  <38.881512, 33.942219, 33.763420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660595, 34.030647, 33.732159>,  <38.292404, 34.178024, 33.680058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660595, 34.030647, 33.732159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054423, -0.209201, -0.976357,
		0.386985, 0.905805, -0.172513,
		0.920479, -0.368447, 0.130254,
		38.936737, 33.920113, 33.771236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718174, 34.540443, 33.163918>,  <38.292404, 34.178024, 33.680058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718174, 34.540443, 33.163918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902340, 34.203098, 33.274742>,  <39.012840, 34.000690, 33.341236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902340, 34.203098, 33.274742>,  <38.718174, 34.540443, 33.163918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902340, 34.203098, 33.274742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290694, -0.151656, -0.944721,
		0.838756, 0.515507, 0.175334,
		0.460419, -0.843359, 0.277057,
		39.040466, 33.950092, 33.357861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354340, 34.531673, 32.714397>,  <38.718174, 34.540443, 33.163918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354340, 34.531673, 32.714397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278164, 34.159454, 32.839497>,  <39.232460, 33.936123, 32.914558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278164, 34.159454, 32.839497>,  <39.354340, 34.531673, 32.714397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278164, 34.159454, 32.839497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280817, -0.356906, -0.890932,
		0.940679, -0.081839, 0.329281,
		-0.190436, -0.930548, 0.312752,
		39.221035, 33.880291, 32.933323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708572, 33.992992, 32.284031>,  <39.354340, 34.531673, 32.714397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708572, 33.992992, 32.284031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480434, 33.719715, 32.466438>,  <39.343552, 33.555748, 32.575882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480434, 33.719715, 32.466438>,  <39.708572, 33.992992, 32.284031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480434, 33.719715, 32.466438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080050, -0.598754, -0.796923,
		0.817494, -0.418018, 0.396187,
		-0.570347, -0.683194, 0.456015,
		39.309330, 33.514755, 32.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067177, 33.313583, 32.093960>,  <39.708572, 33.992992, 32.284031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067177, 33.313583, 32.093960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.696873, 33.235298, 32.223373>,  <39.474689, 33.188328, 32.301022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.696873, 33.235298, 32.223373>,  <40.067177, 33.313583, 32.093960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696873, 33.235298, 32.223373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179992, -0.524386, -0.832239,
		0.332533, -0.828684, 0.450228,
		-0.925756, -0.195710, 0.323532,
		39.419147, 33.176586, 32.320435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934967, 32.657635, 31.872923>,  <40.067177, 33.313583, 32.093960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934967, 32.657635, 31.872923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572048, 32.809910, 31.944345>,  <39.354298, 32.901276, 31.987198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572048, 32.809910, 31.944345>,  <39.934967, 32.657635, 31.872923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572048, 32.809910, 31.944345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332957, -0.391110, -0.858005,
		-0.256795, -0.837921, 0.481607,
		-0.907302, 0.380686, 0.178556,
		39.299858, 32.924118, 31.997911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435734, 32.118099, 31.760715>,  <39.934967, 32.657635, 31.872923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435734, 32.118099, 31.760715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215073, 32.448521, 31.714558>,  <39.082676, 32.646774, 31.686863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215073, 32.448521, 31.714558>,  <39.435734, 32.118099, 31.760715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215073, 32.448521, 31.714558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346898, -0.353047, -0.868919,
		-0.758514, -0.439308, 0.481315,
		-0.551650, 0.826055, -0.115396,
		39.049576, 32.696339, 31.679939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787342, 31.893642, 31.568792>,  <39.435734, 32.118099, 31.760715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787342, 31.893642, 31.568792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781715, 32.266033, 31.422871>,  <38.778339, 32.489468, 31.335318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781715, 32.266033, 31.422871>,  <38.787342, 31.893642, 31.568792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781715, 32.266033, 31.422871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526779, -0.317004, -0.788678,
		-0.849886, 0.181079, 0.494878,
		-0.014066, 0.930977, -0.364805,
		38.777496, 32.545326, 31.313429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063530, 32.103825, 31.360657>,  <38.787342, 31.893642, 31.568792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063530, 32.103825, 31.360657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326199, 32.341129, 31.174397>,  <38.483799, 32.483513, 31.062641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326199, 32.341129, 31.174397>,  <38.063530, 32.103825, 31.360657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326199, 32.341129, 31.174397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387084, -0.264775, -0.883210,
		-0.647265, 0.760222, 0.055772,
		0.656669, 0.593259, -0.465650,
		38.523201, 32.519108, 31.034702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730675, 32.374737, 30.761732>,  <38.063530, 32.103825, 31.360657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730675, 32.374737, 30.761732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103210, 32.478184, 30.659178>,  <38.326733, 32.540253, 30.597645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103210, 32.478184, 30.659178>,  <37.730675, 32.374737, 30.761732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103210, 32.478184, 30.659178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145557, -0.380984, -0.913052,
		-0.333809, 0.887676, -0.317180,
		0.931335, 0.258617, -0.256383,
		38.382610, 32.555767, 30.582262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456032, 33.035744, 30.649569>,  <37.730675, 32.374737, 30.761732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456032, 33.035744, 30.649569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059410, 33.087395, 30.644796>,  <36.821438, 33.118385, 30.641933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059410, 33.087395, 30.644796>,  <37.456032, 33.035744, 30.649569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059410, 33.087395, 30.644796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037398, 0.372837, 0.927143,
		0.124170, 0.918868, -0.374518,
		-0.991556, 0.129129, -0.011932,
		36.761944, 33.126133, 30.641216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310848, 33.733261, 30.768242>,  <37.456032, 33.035744, 30.649569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310848, 33.733261, 30.768242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969021, 33.555260, 30.875334>,  <36.763924, 33.448460, 30.939589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969021, 33.555260, 30.875334>,  <37.310848, 33.733261, 30.768242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969021, 33.555260, 30.875334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028257, 0.474923, 0.879573,
		-0.518564, 0.759224, -0.393282,
		-0.854572, -0.445002, 0.267731,
		36.712650, 33.421761, 30.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011318, 34.197987, 31.109573>,  <37.310848, 33.733261, 30.768242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011318, 34.197987, 31.109573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787937, 33.887196, 31.225801>,  <36.653908, 33.700722, 31.295538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787937, 33.887196, 31.225801>,  <37.011318, 34.197987, 31.109573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787937, 33.887196, 31.225801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147419, 0.437663, 0.886972,
		-0.816332, 0.452497, -0.358956,
		-0.558454, -0.776980, 0.290571,
		36.620399, 33.654102, 31.312973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371494, 34.404812, 31.326633>,  <37.011318, 34.197987, 31.109573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371494, 34.404812, 31.326633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415047, 34.056755, 31.518879>,  <36.441177, 33.847919, 31.634226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415047, 34.056755, 31.518879>,  <36.371494, 34.404812, 31.326633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415047, 34.056755, 31.518879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253050, 0.443300, 0.859913,
		-0.961307, -0.215247, -0.171924,
		0.108880, -0.870146, 0.480615,
		36.447712, 33.795712, 31.663063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853168, 34.446407, 31.822128>,  <36.371494, 34.404812, 31.326633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853168, 34.446407, 31.822128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118999, 34.178596, 31.954836>,  <36.278500, 34.017910, 32.034462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118999, 34.178596, 31.954836>,  <35.853168, 34.446407, 31.822128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118999, 34.178596, 31.954836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143087, 0.321758, 0.935948,
		-0.733392, -0.669481, 0.118032,
		0.664577, -0.669528, 0.331769,
		36.318371, 33.977737, 32.054367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558140, 34.108570, 32.376122>,  <35.853168, 34.446407, 31.822128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558140, 34.108570, 32.376122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945980, 34.023762, 32.424980>,  <36.178684, 33.972878, 32.454296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945980, 34.023762, 32.424980>,  <35.558140, 34.108570, 32.376122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945980, 34.023762, 32.424980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061878, 0.270507, 0.960727,
		-0.236734, -0.939081, 0.249165,
		0.969602, -0.212019, 0.122147,
		36.236862, 33.960155, 32.461624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624382, 33.682690, 32.967445>,  <35.558140, 34.108570, 32.376122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624382, 33.682690, 32.967445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960098, 33.893951, 32.915836>,  <36.161526, 34.020710, 32.884872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960098, 33.893951, 32.915836>,  <35.624382, 33.682690, 32.967445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960098, 33.893951, 32.915836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002191, 0.240587, 0.970625,
		0.543682, -0.814352, 0.203079,
		0.839289, 0.528156, -0.129019,
		36.211884, 34.052399, 32.877132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058838, 33.566540, 33.549690>,  <35.624382, 33.682690, 32.967445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058838, 33.566540, 33.549690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240318, 33.889114, 33.397999>,  <36.349205, 34.082661, 33.306984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240318, 33.889114, 33.397999>,  <36.058838, 33.566540, 33.549690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240318, 33.889114, 33.397999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019510, 0.416452, 0.908948,
		0.890941, -0.419789, 0.173210,
		0.453700, 0.806440, -0.379224,
		36.376427, 34.131046, 33.284233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638531, 33.643059, 34.034290>,  <36.058838, 33.566540, 33.549690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638531, 33.643059, 34.034290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574154, 33.987709, 33.841747>,  <36.535526, 34.194500, 33.726223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574154, 33.987709, 33.841747>,  <36.638531, 33.643059, 34.034290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574154, 33.987709, 33.841747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007742, 0.486596, 0.873593,
		0.986933, 0.144328, -0.071645,
		-0.160946, 0.861623, -0.481355,
		36.525871, 34.246197, 33.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979233, 34.153088, 34.463005>,  <36.638531, 33.643059, 34.034290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979233, 34.153088, 34.463005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739414, 34.377575, 34.234768>,  <36.595524, 34.512268, 34.097824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739414, 34.377575, 34.234768>,  <36.979233, 34.153088, 34.463005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739414, 34.377575, 34.234768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267919, 0.531069, 0.803856,
		0.754160, 0.634826, -0.168043,
		-0.599551, 0.561215, -0.570593,
		36.559547, 34.545940, 34.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214233, 34.863819, 34.622128>,  <36.979233, 34.153088, 34.463005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214233, 34.863819, 34.622128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851898, 34.886963, 34.454269>,  <36.634495, 34.900848, 34.353554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851898, 34.886963, 34.454269>,  <37.214233, 34.863819, 34.622128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851898, 34.886963, 34.454269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324375, 0.542397, 0.774975,
		0.272453, 0.838127, -0.472559,
		-0.905842, 0.057858, -0.419645,
		36.580147, 34.904320, 34.328377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092602, 35.495068, 34.533215>,  <37.214233, 34.863819, 34.622128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092602, 35.495068, 34.533215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716049, 35.362232, 34.509510>,  <36.490116, 35.282532, 34.495289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716049, 35.362232, 34.509510>,  <37.092602, 35.495068, 34.533215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716049, 35.362232, 34.509510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240987, 0.539133, 0.807008,
		-0.236049, 0.773986, -0.587560,
		-0.941385, -0.332088, -0.059259,
		36.433632, 35.262608, 34.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687744, 36.143356, 34.565071>,  <37.092602, 35.495068, 34.533215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687744, 36.143356, 34.565071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421360, 35.861980, 34.664406>,  <36.261532, 35.693153, 34.724007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421360, 35.861980, 34.664406>,  <36.687744, 36.143356, 34.565071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421360, 35.861980, 34.664406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345489, 0.585872, 0.733070,
		-0.661165, 0.402396, -0.633197,
		-0.665956, -0.703443, 0.248334,
		36.221573, 35.650948, 34.738907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078495, 36.469955, 34.727936>,  <36.687744, 36.143356, 34.565071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078495, 36.469955, 34.727936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048302, 36.125549, 34.929111>,  <36.030186, 35.918903, 35.049816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048302, 36.125549, 34.929111>,  <36.078495, 36.469955, 34.727936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048302, 36.125549, 34.929111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422352, 0.484508, 0.766075,
		-0.903284, -0.154593, -0.400225,
		-0.075482, -0.861019, 0.502940,
		36.025658, 35.867245, 35.079994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731571, 37.128315, 34.796745>,  <36.078495, 36.469955, 34.727936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731571, 37.128315, 34.796745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818066, 37.518398, 34.815552>,  <35.869965, 37.752449, 34.826836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818066, 37.518398, 34.815552>,  <35.731571, 37.128315, 34.796745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818066, 37.518398, 34.815552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393942, -0.043086, -0.918125,
		-0.893337, 0.217056, -0.393492,
		0.216239, 0.975208, 0.047017,
		35.882938, 37.810959, 34.829659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501110, 37.537083, 34.200771>,  <35.731571, 37.128315, 34.796745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501110, 37.537083, 34.200771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790047, 37.777664, 34.337292>,  <35.963409, 37.922012, 34.419205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790047, 37.777664, 34.337292>,  <35.501110, 37.537083, 34.200771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790047, 37.777664, 34.337292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298516, 0.174000, -0.938410,
		-0.623793, 0.779732, -0.053855,
		0.722337, 0.601450, 0.341302,
		36.006748, 37.958099, 34.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420395, 38.050636, 33.669365>,  <35.501110, 37.537083, 34.200771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420395, 38.050636, 33.669365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773365, 37.997993, 33.850033>,  <35.985149, 37.966408, 33.958431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773365, 37.997993, 33.850033>,  <35.420395, 38.050636, 33.669365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773365, 37.997993, 33.850033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453827, -0.014819, -0.890967,
		0.123949, 0.991192, 0.046649,
		0.882427, -0.131605, 0.451666,
		36.038094, 37.958511, 33.985531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839615, 38.327488, 33.245205>,  <35.420395, 38.050636, 33.669365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839615, 38.327488, 33.245205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083836, 38.092388, 33.457531>,  <36.230370, 37.951328, 33.584927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083836, 38.092388, 33.457531>,  <35.839615, 38.327488, 33.245205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083836, 38.092388, 33.457531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575998, -0.130458, -0.806974,
		0.543551, 0.798453, 0.258892,
		0.610556, -0.587753, 0.530818,
		36.267002, 37.916061, 33.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426613, 38.626049, 33.003235>,  <35.839615, 38.327488, 33.245205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426613, 38.626049, 33.003235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482197, 38.257431, 33.148254>,  <36.515545, 38.036259, 33.235268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482197, 38.257431, 33.148254>,  <36.426613, 38.626049, 33.003235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482197, 38.257431, 33.148254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533601, -0.238736, -0.811342,
		0.834243, 0.306199, 0.458564,
		0.138956, -0.921546, 0.362551,
		36.523884, 37.980968, 33.257019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131050, 38.421215, 32.738018>,  <36.426613, 38.626049, 33.003235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131050, 38.421215, 32.738018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988262, 38.072437, 32.872055>,  <36.902588, 37.863171, 32.952477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988262, 38.072437, 32.872055>,  <37.131050, 38.421215, 32.738018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988262, 38.072437, 32.872055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473735, -0.478160, -0.739553,
		0.805075, -0.105255, 0.583759,
		-0.356972, -0.871943, 0.335092,
		36.881172, 37.810856, 32.972584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735626, 37.957943, 32.780167>,  <37.131050, 38.421215, 32.738018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735626, 37.957943, 32.780167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399090, 37.743282, 32.754421>,  <37.197166, 37.614487, 32.738976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399090, 37.743282, 32.754421>,  <37.735626, 37.957943, 32.780167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399090, 37.743282, 32.754421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314917, -0.389938, -0.865318,
		0.439281, -0.748298, 0.497074,
		-0.841344, -0.536655, -0.064359,
		37.146687, 37.582287, 32.735115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887894, 37.164303, 32.788429>,  <37.735626, 37.957943, 32.780167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887894, 37.164303, 32.788429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527695, 37.213955, 32.621723>,  <37.311577, 37.243748, 32.521698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527695, 37.213955, 32.621723>,  <37.887894, 37.164303, 32.788429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527695, 37.213955, 32.621723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274012, -0.582223, -0.765463,
		-0.337670, -0.803497, 0.490277,
		-0.900498, 0.124133, -0.416767,
		37.257545, 37.251194, 32.496693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743935, 36.464611, 32.628258>,  <37.887894, 37.164303, 32.788429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743935, 36.464611, 32.628258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474930, 36.667873, 32.413033>,  <37.313526, 36.789829, 32.283897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474930, 36.667873, 32.413033>,  <37.743935, 36.464611, 32.628258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474930, 36.667873, 32.413033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079882, -0.672938, -0.735373,
		-0.735767, -0.537525, 0.411962,
		-0.672506, 0.508155, -0.538064,
		37.273178, 36.820320, 32.251614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396881, 35.912086, 32.183754>,  <37.743935, 36.464611, 32.628258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396881, 35.912086, 32.183754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318951, 36.270203, 32.023510>,  <37.272194, 36.485073, 31.927362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318951, 36.270203, 32.023510>,  <37.396881, 35.912086, 32.183754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318951, 36.270203, 32.023510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002248, -0.408845, -0.912601,
		-0.980836, -0.176896, 0.081665,
		-0.194823, 0.895295, -0.400613,
		37.260502, 36.538792, 31.903326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831306, 35.795612, 31.739325>,  <37.396881, 35.912086, 32.183754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831306, 35.795612, 31.739325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040894, 36.113884, 31.617769>,  <37.166645, 36.304848, 31.544836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040894, 36.113884, 31.617769>,  <36.831306, 35.795612, 31.739325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040894, 36.113884, 31.617769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014800, -0.365240, -0.930796,
		-0.851607, 0.483214, -0.203152,
		0.523972, 0.795678, -0.303890,
		37.198086, 36.352589, 31.526602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501873, 35.953194, 31.083504>,  <36.831306, 35.795612, 31.739325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501873, 35.953194, 31.083504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855591, 36.139782, 31.075171>,  <37.067822, 36.251736, 31.070169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855591, 36.139782, 31.075171>,  <36.501873, 35.953194, 31.083504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855591, 36.139782, 31.075171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076306, -0.188387, -0.979126,
		-0.460660, 0.864242, -0.202184,
		0.884290, 0.466472, -0.020835,
		37.120876, 36.279724, 31.068920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473198, 36.414661, 30.497873>,  <36.501873, 35.953194, 31.083504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473198, 36.414661, 30.497873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.862907, 36.359169, 30.568907>,  <37.096733, 36.325874, 30.611526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.862907, 36.359169, 30.568907>,  <36.473198, 36.414661, 30.497873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862907, 36.359169, 30.568907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141879, -0.234625, -0.961676,
		0.175080, 0.962136, -0.208907,
		0.974278, -0.138731, 0.177585,
		37.155190, 36.317551, 30.622183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705002, 36.546654, 29.864428>,  <36.473198, 36.414661, 30.497873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705002, 36.546654, 29.864428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018871, 36.372246, 30.040688>,  <37.207191, 36.267601, 30.146444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018871, 36.372246, 30.040688>,  <36.705002, 36.546654, 29.864428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018871, 36.372246, 30.040688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333164, -0.302829, -0.892915,
		0.522769, 0.847456, -0.092356,
		0.784674, -0.436019, 0.440652,
		37.254272, 36.241440, 30.172884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234360, 36.733177, 29.526747>,  <36.705002, 36.546654, 29.864428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234360, 36.733177, 29.526747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372871, 36.406338, 29.711115>,  <37.455978, 36.210236, 29.821735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372871, 36.406338, 29.711115>,  <37.234360, 36.733177, 29.526747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372871, 36.406338, 29.711115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455278, -0.283209, -0.844105,
		0.820250, 0.502144, 0.273935,
		0.346282, -0.817095, 0.460918,
		37.476757, 36.161209, 29.849390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962868, 36.690346, 29.428572>,  <37.234360, 36.733177, 29.526747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962868, 36.690346, 29.428572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835815, 36.316734, 29.493923>,  <37.759583, 36.092567, 29.533134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835815, 36.316734, 29.493923>,  <37.962868, 36.690346, 29.428572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835815, 36.316734, 29.493923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360399, -0.278294, -0.890318,
		0.877053, -0.223913, 0.425019,
		-0.317634, -0.934032, 0.163380,
		37.740524, 36.036526, 29.542938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504162, 36.362255, 29.177168>,  <37.962868, 36.690346, 29.428572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504162, 36.362255, 29.177168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227131, 36.074287, 29.195299>,  <38.060913, 35.901505, 29.206179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227131, 36.074287, 29.195299>,  <38.504162, 36.362255, 29.177168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227131, 36.074287, 29.195299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277163, -0.323596, -0.904691,
		0.665975, -0.614002, 0.423649,
		-0.692573, -0.719922, 0.045328,
		38.019360, 35.858311, 29.208897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770332, 35.677441, 29.027988>,  <38.504162, 36.362255, 29.177168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770332, 35.677441, 29.027988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.379086, 35.626472, 28.962210>,  <38.144337, 35.595890, 28.922743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.379086, 35.626472, 28.962210>,  <38.770332, 35.677441, 29.027988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379086, 35.626472, 28.962210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190522, -0.231190, -0.954072,
		0.083552, -0.964528, 0.250409,
		-0.978121, -0.127423, -0.164448,
		38.085648, 35.588245, 28.912876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730591, 35.076851, 28.687677>,  <38.770332, 35.677441, 29.027988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730591, 35.076851, 28.687677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382469, 35.255432, 28.604488>,  <38.173595, 35.362579, 28.554575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382469, 35.255432, 28.604488>,  <38.730591, 35.076851, 28.687677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382469, 35.255432, 28.604488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150348, -0.161285, -0.975389,
		-0.469005, -0.880153, 0.073244,
		-0.870305, 0.446450, -0.207973,
		38.121376, 35.389366, 28.542097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258736, 34.633030, 28.315750>,  <38.730591, 35.076851, 28.687677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258736, 34.633030, 28.315750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172424, 35.014008, 28.229689>,  <38.120636, 35.242596, 28.178051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172424, 35.014008, 28.229689>,  <38.258736, 34.633030, 28.315750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172424, 35.014008, 28.229689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232888, -0.163788, -0.958612,
		-0.948263, -0.256954, -0.186471,
		-0.215777, 0.952443, -0.215155,
		38.107693, 35.299740, 28.165142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943527, 34.528450, 27.742405>,  <38.258736, 34.633030, 28.315750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943527, 34.528450, 27.742405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955585, 34.927639, 27.719980>,  <37.962818, 35.167152, 27.706526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955585, 34.927639, 27.719980>,  <37.943527, 34.528450, 27.742405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955585, 34.927639, 27.719980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100777, -0.052767, -0.993509,
		-0.994452, 0.035597, 0.098982,
		0.030143, 0.997972, -0.056061,
		37.964630, 35.227032, 27.703161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404335, 34.795177, 27.373602>,  <37.943527, 34.528450, 27.742405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404335, 34.795177, 27.373602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625744, 35.128082, 27.361244>,  <37.758591, 35.327824, 27.353830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625744, 35.128082, 27.361244>,  <37.404335, 34.795177, 27.373602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625744, 35.128082, 27.361244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053339, -0.001594, -0.998575,
		-0.831123, 0.554384, 0.043510,
		0.553525, 0.832260, -0.030895,
		37.791801, 35.377762, 27.351976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995018, 35.323425, 27.073793>,  <37.404335, 34.795177, 27.373602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995018, 35.323425, 27.073793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371628, 35.450111, 27.027802>,  <37.597595, 35.526123, 27.000206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371628, 35.450111, 27.027802>,  <36.995018, 35.323425, 27.073793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371628, 35.450111, 27.027802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189427, 0.215343, -0.957990,
		-0.278650, 0.923752, 0.262746,
		0.941526, 0.316715, -0.114978,
		37.654087, 35.545128, 26.993309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005379, 36.078857, 26.786430>,  <36.995018, 35.323425, 27.073793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005379, 36.078857, 26.786430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345764, 35.889320, 26.695803>,  <37.549995, 35.775597, 26.641426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345764, 35.889320, 26.695803>,  <37.005379, 36.078857, 26.786430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345764, 35.889320, 26.695803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118150, 0.247618, -0.961627,
		0.511763, 0.845079, 0.154729,
		0.850964, -0.473844, -0.226567,
		37.601055, 35.747166, 26.627832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467625, 36.510326, 26.372108>,  <37.005379, 36.078857, 26.786430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467625, 36.510326, 26.372108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580551, 36.134598, 26.294168>,  <37.648308, 35.909161, 26.247404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580551, 36.134598, 26.294168>,  <37.467625, 36.510326, 26.372108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580551, 36.134598, 26.294168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069418, 0.182577, -0.980738,
		0.956806, 0.290405, -0.013661,
		0.282317, -0.939324, -0.194850,
		37.665245, 35.852802, 26.235714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549000, 36.495834, 25.708118>,  <37.467625, 36.510326, 26.372108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549000, 36.495834, 25.708118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664497, 36.113651, 25.732544>,  <37.733795, 35.884342, 25.747198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664497, 36.113651, 25.732544>,  <37.549000, 36.495834, 25.708118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664497, 36.113651, 25.732544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022581, -0.070558, -0.997252,
		0.957140, 0.286573, -0.041949,
		0.288745, -0.955457, 0.061063,
		37.751122, 35.827015, 25.750862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225464, 36.420868, 25.275949>,  <37.549000, 36.495834, 25.708118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225464, 36.420868, 25.275949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994781, 36.094952, 25.299719>,  <37.856373, 35.899403, 25.313980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994781, 36.094952, 25.299719>,  <38.225464, 36.420868, 25.275949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994781, 36.094952, 25.299719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083096, -0.130867, -0.987911,
		0.812714, -0.564798, 0.143177,
		-0.576708, -0.814786, 0.059425,
		37.821770, 35.850517, 25.317547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565254, 36.004467, 24.666973>,  <38.225464, 36.420868, 25.275949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565254, 36.004467, 24.666973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202175, 35.863922, 24.758739>,  <37.984329, 35.779594, 24.813799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202175, 35.863922, 24.758739>,  <38.565254, 36.004467, 24.666973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202175, 35.863922, 24.758739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192147, -0.138017, -0.971613,
		0.373047, -0.926012, 0.057765,
		-0.907698, -0.351358, 0.229417,
		37.929867, 35.758514, 24.827564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185768, 35.778046, 24.737398>,  <38.565254, 36.004467, 24.666973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185768, 35.778046, 24.737398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435757, 36.089348, 24.712976>,  <39.585751, 36.276131, 24.698324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435757, 36.089348, 24.712976>,  <39.185768, 35.778046, 24.737398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435757, 36.089348, 24.712976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015299, 0.090402, 0.995788,
		0.780501, -0.621401, 0.068405,
		0.624968, 0.778259, -0.061053,
		39.623245, 36.322826, 24.694660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743076, 35.717354, 25.122526>,  <39.185768, 35.778046, 24.737398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743076, 35.717354, 25.122526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746056, 36.116768, 25.101112>,  <39.747845, 36.356419, 25.088264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746056, 36.116768, 25.101112>,  <39.743076, 35.717354, 25.122526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746056, 36.116768, 25.101112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244503, 0.050091, 0.968354,
		0.969620, -0.020300, -0.243772,
		0.007447, 0.998538, -0.053532,
		39.748291, 36.416328, 25.085052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295486, 35.940273, 25.545185>,  <39.743076, 35.717354, 25.122526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295486, 35.940273, 25.545185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089737, 36.282085, 25.516356>,  <39.966290, 36.487175, 25.499058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.089737, 36.282085, 25.516356>,  <40.295486, 35.940273, 25.545185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089737, 36.282085, 25.516356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382820, 0.304010, 0.872369,
		0.767380, 0.421129, -0.483507,
		-0.514370, 0.854534, -0.072075,
		39.935425, 36.538445, 25.494734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751560, 36.458092, 25.727961>,  <40.295486, 35.940273, 25.545185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751560, 36.458092, 25.727961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.403530, 36.648758, 25.778175>,  <40.194714, 36.763157, 25.808304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.403530, 36.648758, 25.778175>,  <40.751560, 36.458092, 25.727961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403530, 36.648758, 25.778175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339101, 0.393988, 0.854274,
		0.357742, 0.785852, -0.504437,
		-0.870075, 0.476664, 0.125537,
		40.142506, 36.791756, 25.815836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937332, 37.137096, 26.001970>,  <40.751560, 36.458092, 25.727961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937332, 37.137096, 26.001970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.564178, 37.031300, 26.099754>,  <40.340286, 36.967819, 26.158424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.564178, 37.031300, 26.099754>,  <40.937332, 37.137096, 26.001970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564178, 37.031300, 26.099754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166814, 0.284253, 0.944126,
		-0.319207, 0.921543, -0.221054,
		-0.932888, -0.264497, 0.244462,
		40.284313, 36.951950, 26.173094>
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
