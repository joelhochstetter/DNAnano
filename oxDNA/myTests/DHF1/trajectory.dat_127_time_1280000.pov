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
	<0.201521, 2.956568, 1.382292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.180740, 2.962818, 1.264660>,  <-0.410097, 2.966568, 1.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.180740, 2.962818, 1.264660>,  <0.201521, 2.956568, 1.382292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.180740, 2.962818, 1.264660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162616, 0.860547, -0.482716,
		0.245528, -0.509131, -0.824925,
		-0.955653, 0.015625, -0.294081,
		-0.467436, 2.967506, 1.176435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261225, 2.941650, 0.732919>,  <0.201521, 2.956568, 1.382292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261225, 2.941650, 0.732919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081860, 3.111046, 0.849529>,  <-0.287710, 3.212683, 0.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081860, 3.111046, 0.849529>,  <0.261225, 2.941650, 0.732919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.081860, 3.111046, 0.849529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221148, 0.815781, -0.534410,
		-0.464139, -0.393899, -0.793359,
		-0.857711, 0.423490, 0.291525,
		-0.339173, 3.238093, 0.936987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.256597, 3.137853, 0.146810>,  <0.261225, 2.941650, 0.732919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.256597, 3.137853, 0.146810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.278038, 3.371792, 0.470558>,  <-0.290903, 3.512155, 0.664807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.278038, 3.371792, 0.470558>,  <-0.256597, 3.137853, 0.146810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.278038, 3.371792, 0.470558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361983, 0.766786, -0.530102,
		-0.930642, 0.264563, -0.252807,
		-0.053603, 0.584847, 0.809371,
		-0.294119, 3.547246, 0.713369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.716786, 3.741660, 0.021022>,  <-0.256597, 3.137853, 0.146810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.716786, 3.741660, 0.021022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.372421, 3.758945, 0.223789>,  <-0.165803, 3.769317, 0.345449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.372421, 3.758945, 0.223789>,  <-0.716786, 3.741660, 0.021022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.372421, 3.758945, 0.223789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334002, 0.703584, -0.627225,
		-0.383764, 0.709297, 0.591290,
		0.860911, 0.043214, 0.506917,
		-0.114148, 3.771910, 0.375864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.596274, 4.387322, 0.097426>,  <-0.716786, 3.741660, 0.021022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.596274, 4.387322, 0.097426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.250885, 4.185608, 0.101616>,  <-0.043652, 4.064579, 0.104130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.250885, 4.185608, 0.101616>,  <-0.596274, 4.387322, 0.097426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.250885, 4.185608, 0.101616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377706, 0.632692, -0.676046,
		0.334295, 0.587704, 0.736785,
		0.863473, -0.504287, 0.010474,
		0.008157, 4.034322, 0.104758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.095201, 4.941845, 0.220183>,  <-0.596274, 4.387322, 0.097426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.095201, 4.941845, 0.220183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069134, 4.623882, 0.041595>,  <0.167735, 4.433105, -0.065557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069134, 4.623882, 0.041595>,  <-0.095201, 4.941845, 0.220183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.069134, 4.623882, 0.041595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463834, 0.603831, -0.648265,
		0.784902, 0.059244, 0.616781,
		0.410837, -0.794908, -0.446469,
		0.192385, 4.385410, -0.092345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.526527, 5.219495, 0.004031>,  <-0.095201, 4.941845, 0.220183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.526527, 5.219495, 0.004031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457569, 4.883240, -0.201340>,  <0.416195, 4.681487, -0.324562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457569, 4.883240, -0.201340>,  <0.526527, 5.219495, 0.004031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.457569, 4.883240, -0.201340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340117, 0.438375, -0.831955,
		0.924446, -0.318049, 0.210342,
		-0.172394, -0.840638, -0.513428,
		0.405851, 4.631048, -0.355368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.043149, 5.199273, -0.460249>,  <0.526527, 5.219495, 0.004031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.043149, 5.199273, -0.460249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.785797, 4.929077, -0.604347>,  <0.631386, 4.766960, -0.690806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.785797, 4.929077, -0.604347>,  <1.043149, 5.199273, -0.460249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.785797, 4.929077, -0.604347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064939, 0.420722, -0.904862,
		0.762788, -0.605564, -0.226819,
		-0.643380, -0.675489, -0.360246,
		0.592783, 4.726430, -0.712421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.346815, 5.900984, 2.755224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.098779, 5.587708, 2.736900>,  <-0.050043, 5.399741, 2.725906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.098779, 5.587708, 2.736900>,  <0.346815, 5.900984, 2.755224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.098779, 5.587708, 2.736900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552524, -0.477421, 0.683218,
		-0.556962, 0.398346, 0.728776,
		-0.620090, -0.783192, -0.045810,
		-0.087248, 5.352750, 2.723157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.124439, 5.788139, 3.434129>,  <0.346815, 5.900984, 2.755224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.124439, 5.788139, 3.434129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.102527, 5.421921, 3.274742>,  <0.089381, 5.202190, 3.179110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.102527, 5.421921, 3.274742>,  <0.124439, 5.788139, 3.434129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.102527, 5.421921, 3.274742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622235, -0.343406, 0.703489,
		-0.780912, -0.209405, 0.588495,
		-0.054779, -0.915545, -0.398468,
		0.086094, 5.147257, 3.155202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.248774, 5.214658, 3.848341>,  <0.124439, 5.788139, 3.434129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.248774, 5.214658, 3.848341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.001431, 5.013641, 3.606651>,  <0.146974, 4.893031, 3.461637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.001431, 5.013641, 3.606651>,  <-0.248774, 5.214658, 3.848341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.001431, 5.013641, 3.606651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283241, -0.574659, 0.767816,
		-0.733084, -0.645924, -0.213002,
		0.618355, -0.502543, -0.604225,
		0.184076, 4.862879, 3.425384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.456968, 4.556491, 3.902397>,  <-0.248774, 5.214658, 3.848341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.456968, 4.556491, 3.902397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.071197, 4.564346, 3.796951>,  <0.160266, 4.569059, 3.733684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.071197, 4.564346, 3.796951>,  <-0.456968, 4.556491, 3.902397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.071197, 4.564346, 3.796951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216763, -0.629531, 0.746126,
		-0.151300, -0.776727, -0.611394,
		0.964428, 0.019639, -0.263614,
		0.218132, 4.570238, 3.717867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.150255, 3.874673, 3.720176>,  <-0.456968, 4.556491, 3.902397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.150255, 3.874673, 3.720176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.118335, 4.126228, 3.876953>,  <0.279489, 4.277162, 3.971020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.118335, 4.126228, 3.876953>,  <-0.150255, 3.874673, 3.720176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.118335, 4.126228, 3.876953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014934, -0.517327, 0.855657,
		0.740877, -0.580406, -0.337981,
		0.671475, 0.628890, 0.391943,
		0.319777, 4.314895, 3.994536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.407286, 3.479612, 3.978127>,  <-0.150255, 3.874673, 3.720176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.407286, 3.479612, 3.978127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.422359, 3.826324, 4.177032>,  <0.431403, 4.034352, 4.296376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.422359, 3.826324, 4.177032>,  <0.407286, 3.479612, 3.978127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.422359, 3.826324, 4.177032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191259, -0.482163, 0.854950,
		0.980816, -0.127322, 0.147610,
		0.037682, 0.866780, 0.497264,
		0.433664, 4.086359, 4.326212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.937852, 3.398726, 4.439588>,  <0.407286, 3.479612, 3.978127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.937852, 3.398726, 4.439588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.699698, 3.689301, 4.576881>,  <0.556806, 3.863645, 4.659257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.699698, 3.689301, 4.576881>,  <0.937852, 3.398726, 4.439588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.699698, 3.689301, 4.576881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064652, -0.469138, 0.880755,
		0.800836, 0.502197, 0.326283,
		-0.595384, 0.726435, 0.343234,
		0.521083, 3.907231, 4.679852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.155015, 3.487852, 5.132620>,  <0.937852, 3.398726, 4.439588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.155015, 3.487852, 5.132620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.788625, 3.647224, 5.113678>,  <0.568791, 3.742848, 5.102313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.788625, 3.647224, 5.113678>,  <1.155015, 3.487852, 5.132620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.788625, 3.647224, 5.113678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206843, -0.367765, 0.906623,
		0.343811, 0.840239, 0.419276,
		-0.915975, 0.398431, -0.047356,
		0.513832, 3.766754, 5.099471>
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
