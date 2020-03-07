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
	<3.554246, 3.614238, 2.585876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.792908, 3.407249, 2.340527>,  <3.936105, 3.283056, 2.193317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.792908, 3.407249, 2.340527>,  <3.554246, 3.614238, 2.585876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.792908, 3.407249, 2.340527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604478, -0.212928, 0.767638,
		-0.527835, -0.828786, 0.185755,
		0.596655, -0.517471, -0.613373,
		3.971904, 3.252008, 2.156515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.661088, 3.025799, 2.910800>,  <3.554246, 3.614238, 2.585876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.661088, 3.025799, 2.910800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.954506, 3.081406, 2.644691>,  <4.130557, 3.114770, 2.485026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.954506, 3.081406, 2.644691>,  <3.661088, 3.025799, 2.910800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.954506, 3.081406, 2.644691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651714, -0.421592, 0.630499,
		-0.192822, -0.896066, -0.399856,
		0.733545, 0.139018, -0.665271,
		4.174570, 3.123111, 2.445110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.067533, 2.443077, 2.574860>,  <3.661088, 3.025799, 2.910800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.067533, 2.443077, 2.574860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326920, 2.744217, 2.619949>,  <4.482552, 2.924901, 2.647003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326920, 2.744217, 2.619949>,  <4.067533, 2.443077, 2.574860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.326920, 2.744217, 2.619949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536686, -0.557154, 0.633678,
		0.539869, -0.350422, -0.765340,
		0.648467, 0.752850, 0.112724,
		4.521460, 2.970072, 2.653767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.820404, 2.320395, 2.217341>,  <4.067533, 2.443077, 2.574860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.820404, 2.320395, 2.217341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.863651, 2.567177, 2.529156>,  <4.889600, 2.715246, 2.716244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.863651, 2.567177, 2.529156>,  <4.820404, 2.320395, 2.217341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.863651, 2.567177, 2.529156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574069, -0.678930, 0.457709,
		0.811637, 0.398021, -0.427580,
		0.108119, 0.616954, 0.779537,
		4.896087, 2.752263, 2.763017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.519205, 2.424487, 2.449981>,  <4.820404, 2.320395, 2.217341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.519205, 2.424487, 2.449981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293724, 2.517136, 2.767117>,  <5.158436, 2.572725, 2.957398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293724, 2.517136, 2.767117>,  <5.519205, 2.424487, 2.449981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.293724, 2.517136, 2.767117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589982, -0.558869, 0.582741,
		0.578068, 0.796252, 0.178382,
		-0.563701, 0.231622, 0.792838,
		5.124614, 2.586622, 3.004968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.999809, 2.496493, 2.901707>,  <5.519205, 2.424487, 2.449981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.999809, 2.496493, 2.901707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.703041, 2.487915, 3.169765>,  <5.524981, 2.482768, 3.330601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.703041, 2.487915, 3.169765>,  <5.999809, 2.496493, 2.901707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.703041, 2.487915, 3.169765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603324, -0.457376, 0.653304,
		0.292498, 0.889015, 0.352275,
		-0.741920, -0.021446, 0.670146,
		5.480465, 2.481481, 3.370809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.288342, 2.731288, 3.578057>,  <5.999809, 2.496493, 2.901707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.288342, 2.731288, 3.578057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.970264, 2.499260, 3.648693>,  <5.779418, 2.360043, 3.691075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.970264, 2.499260, 3.648693>,  <6.288342, 2.731288, 3.578057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.970264, 2.499260, 3.648693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514787, -0.491957, 0.702120,
		-0.320404, 0.649228, 0.689815,
		-0.795195, -0.580070, 0.176590,
		5.731706, 2.325239, 3.701670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.163445, 2.742697, 4.309387>,  <6.288342, 2.731288, 3.578057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.163445, 2.742697, 4.309387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007679, 2.403603, 4.165333>,  <5.914219, 2.200146, 4.078900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007679, 2.403603, 4.165333>,  <6.163445, 2.742697, 4.309387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.007679, 2.403603, 4.165333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344468, -0.496669, 0.796657,
		-0.854223, 0.186176, 0.485429,
		-0.389416, -0.847737, -0.360134,
		5.890854, 2.149282, 4.057292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.715758, 1.248251, 4.386698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378889, 1.067253, 4.503998>,  <1.176768, 0.958654, 4.574378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378889, 1.067253, 4.503998>,  <1.715758, 1.248251, 4.386698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.378889, 1.067253, 4.503998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539099, 0.695598, -0.474886,
		0.010899, -0.558026, -0.829752,
		-0.842172, -0.452494, 0.293249,
		1.126237, 0.931505, 4.591972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.288769, 1.209317, 3.716651>,  <1.715758, 1.248251, 4.386698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.288769, 1.209317, 3.716651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.088591, 1.227425, 4.062485>,  <0.968484, 1.238289, 4.269985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.088591, 1.227425, 4.062485>,  <1.288769, 1.209317, 3.716651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.088591, 1.227425, 4.062485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646540, 0.644619, -0.407986,
		-0.575796, -0.763163, -0.293328,
		-0.500444, 0.045269, 0.864584,
		0.938457, 1.241005, 4.321860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.687537, 1.025663, 3.560203>,  <1.288769, 1.209317, 3.716651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.687537, 1.025663, 3.560203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.677647, 1.280182, 3.868622>,  <0.671712, 1.432893, 4.053673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.677647, 1.280182, 3.868622>,  <0.687537, 1.025663, 3.560203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.677647, 1.280182, 3.868622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497063, 0.661361, -0.561720,
		-0.867362, -0.397149, 0.299927,
		-0.024726, 0.636298, 0.771047,
		0.670229, 1.471071, 4.099936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.009562, 1.197832, 3.573870>,  <0.687537, 1.025663, 3.560203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.009562, 1.197832, 3.573870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.224279, 1.481941, 3.756020>,  <0.353110, 1.652406, 3.865309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.224279, 1.481941, 3.756020>,  <0.009562, 1.197832, 3.573870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.224279, 1.481941, 3.756020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563409, 0.703517, -0.433168,
		-0.628031, -0.024040, 0.777817,
		0.536794, 0.710272, 0.455375,
		0.385318, 1.695023, 3.892632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.443562, 1.718035, 3.947432>,  <0.009562, 1.197832, 3.573870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.443562, 1.718035, 3.947432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.092253, 1.902809, 3.898033>,  <0.118533, 2.013674, 3.868394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.092253, 1.902809, 3.898033>,  <-0.443562, 1.718035, 3.947432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.092253, 1.902809, 3.898033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461464, 0.751194, -0.471974,
		-0.125253, 0.471511, 0.872920,
		0.878273, 0.461937, -0.123496,
		0.171229, 2.041390, 3.860984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.488328, 2.342684, 4.125997>,  <-0.443562, 1.718035, 3.947432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.488328, 2.342684, 4.125997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175705, 2.401550, 3.883507>,  <0.011869, 2.436870, 3.738013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175705, 2.401550, 3.883507>,  <-0.488328, 2.342684, 4.125997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.175705, 2.401550, 3.883507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499536, 0.729727, -0.466865,
		0.373671, 0.667713, 0.643839,
		0.781559, 0.147167, -0.606224,
		0.058763, 2.445700, 3.701639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.322454, 3.066825, 4.087361>,  <-0.488328, 2.342684, 4.125997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.322454, 3.066825, 4.087361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.172005, 2.910652, 3.751244>,  <-0.081735, 2.816948, 3.549573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.172005, 2.910652, 3.751244>,  <-0.322454, 3.066825, 4.087361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.172005, 2.910652, 3.751244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531503, 0.651935, -0.540819,
		0.758971, 0.650033, 0.037691,
		0.376123, -0.390433, -0.840294,
		-0.059168, 2.793522, 3.499155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.112795, 3.615565, 3.766537>,  <-0.322454, 3.066825, 4.087361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.112795, 3.615565, 3.766537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.133213, 3.344978, 3.472656>,  <-0.145464, 3.182626, 3.296328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.133213, 3.344978, 3.472656>,  <-0.112795, 3.615565, 3.766537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.133213, 3.344978, 3.472656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477897, 0.662511, -0.576796,
		0.876932, 0.321669, -0.357100,
		-0.051046, -0.676467, -0.734701,
		-0.148527, 3.142038, 3.252246>
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
