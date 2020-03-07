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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.848732, 53.173870, 50.053284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136936, 52.961700, 49.874615>,  <36.309860, 52.834400, 49.767414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136936, 52.961700, 49.874615>,  <35.848732, 53.173870, 50.053284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136936, 52.961700, 49.874615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692262, 0.512635, 0.507916,
		-0.040433, -0.675171, 0.736552,
		0.720513, -0.530423, -0.446668,
		36.353088, 52.802574, 49.740616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244301, 52.656815, 50.597286>,  <35.848732, 53.173870, 50.053284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244301, 52.656815, 50.597286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463490, 52.775036, 50.284267>,  <36.595001, 52.845966, 50.096455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463490, 52.775036, 50.284267>,  <36.244301, 52.656815, 50.597286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463490, 52.775036, 50.284267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615022, 0.491747, 0.616386,
		0.566989, -0.819044, 0.087692,
		0.547970, 0.295552, -0.782546,
		36.627880, 52.863701, 50.049503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862911, 52.786835, 50.929871>,  <36.244301, 52.656815, 50.597286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862911, 52.786835, 50.929871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924049, 52.956787, 50.572971>,  <36.960732, 53.058758, 50.358829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924049, 52.956787, 50.572971>,  <36.862911, 52.786835, 50.929871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924049, 52.956787, 50.572971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660966, 0.627254, 0.411917,
		0.734686, -0.652706, -0.184964,
		0.152841, 0.424884, -0.892251,
		36.969902, 53.084251, 50.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519974, 52.714394, 50.705597>,  <36.862911, 52.786835, 50.929871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519974, 52.714394, 50.705597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331970, 53.047157, 50.587601>,  <37.219170, 53.246815, 50.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331970, 53.047157, 50.587601>,  <37.519974, 52.714394, 50.705597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331970, 53.047157, 50.587601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630826, 0.550352, 0.546966,
		0.617373, 0.070993, -0.783460,
		-0.470010, 0.831909, -0.294988,
		37.190968, 53.296730, 50.499104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986897, 53.078106, 50.472359>,  <37.519974, 52.714394, 50.705597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986897, 53.078106, 50.472359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689697, 53.314178, 50.598618>,  <37.511379, 53.455822, 50.674374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689697, 53.314178, 50.598618>,  <37.986897, 53.078106, 50.472359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689697, 53.314178, 50.598618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647132, 0.513133, 0.563839,
		0.170796, 0.623200, -0.763184,
		-0.742999, 0.590183, 0.315652,
		37.466797, 53.491234, 50.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242729, 53.702469, 50.440605>,  <37.986897, 53.078106, 50.472359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242729, 53.702469, 50.440605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940895, 53.743607, 50.699844>,  <37.759796, 53.768288, 50.855389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940895, 53.743607, 50.699844>,  <38.242729, 53.702469, 50.440605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940895, 53.743607, 50.699844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582872, 0.558737, 0.589978,
		-0.301440, 0.822944, -0.481558,
		-0.754583, 0.102844, 0.648096,
		37.714520, 53.774460, 50.894272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900337, 54.460697, 50.626881>,  <38.242729, 53.702469, 50.440605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900337, 54.460697, 50.626881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924362, 54.172600, 50.903328>,  <37.938778, 53.999741, 51.069195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924362, 54.172600, 50.903328>,  <37.900337, 54.460697, 50.626881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924362, 54.172600, 50.903328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640667, 0.558758, 0.526626,
		-0.765466, 0.411147, 0.494995,
		0.060062, -0.720241, 0.691119,
		37.942383, 53.956528, 51.110664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922798, 54.816814, 51.268543>,  <37.900337, 54.460697, 50.626881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922798, 54.816814, 51.268543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108849, 54.462910, 51.280258>,  <38.220478, 54.250568, 51.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108849, 54.462910, 51.280258>,  <37.922798, 54.816814, 51.268543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108849, 54.462910, 51.280258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666593, 0.371821, 0.646067,
		-0.582502, -0.280982, 0.762719,
		0.465129, -0.884759, 0.029286,
		38.248386, 54.197483, 51.289043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021015, 54.581676, 51.916256>,  <37.922798, 54.816814, 51.268543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021015, 54.581676, 51.916256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326870, 54.435806, 51.703712>,  <38.510384, 54.348282, 51.576187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326870, 54.435806, 51.703712>,  <38.021015, 54.581676, 51.916256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326870, 54.435806, 51.703712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644461, 0.431393, 0.631325,
		-0.001006, -0.825173, 0.564879,
		0.764637, -0.364678, -0.531358,
		38.556259, 54.326405, 51.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385231, 54.219898, 52.378609>,  <38.021015, 54.581676, 51.916256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385231, 54.219898, 52.378609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621368, 54.362026, 52.088715>,  <38.763050, 54.447304, 51.914776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621368, 54.362026, 52.088715>,  <38.385231, 54.219898, 52.378609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621368, 54.362026, 52.088715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703056, 0.214714, 0.677945,
		0.396499, -0.909751, -0.123054,
		0.590340, 0.355319, -0.724740,
		38.798470, 54.468620, 51.871292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019550, 53.814678, 52.226498>,  <38.385231, 54.219898, 52.378609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019550, 53.814678, 52.226498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020859, 54.214592, 52.218346>,  <39.021645, 54.454540, 52.213455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020859, 54.214592, 52.218346>,  <39.019550, 53.814678, 52.226498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020859, 54.214592, 52.218346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617114, 0.014016, 0.786749,
		0.786867, -0.015148, -0.616937,
		0.003271, 0.999787, -0.020377,
		39.021839, 54.514526, 52.212234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723244, 54.061203, 52.153645>,  <39.019550, 53.814678, 52.226498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723244, 54.061203, 52.153645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527218, 54.358109, 52.336456>,  <39.409603, 54.536251, 52.446144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527218, 54.358109, 52.336456>,  <39.723244, 54.061203, 52.153645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527218, 54.358109, 52.336456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629019, -0.061847, 0.774925,
		0.603468, 0.667243, -0.436592,
		-0.490062, 0.742268, 0.457032,
		39.380199, 54.580788, 52.473564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036705, 54.749363, 52.255383>,  <39.723244, 54.061203, 52.153645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036705, 54.749363, 52.255383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788727, 54.668770, 52.558716>,  <39.639938, 54.620415, 52.740715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788727, 54.668770, 52.558716>,  <40.036705, 54.749363, 52.255383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788727, 54.668770, 52.558716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781421, -0.071039, 0.619947,
		-0.071039, 0.976912, 0.201485,
		-0.619947, -0.201485, 0.758333,
		39.602741, 54.608326, 52.786217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075123, 55.194904, 52.948524>,  <40.036705, 54.749363, 52.255383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075123, 55.194904, 52.948524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956711, 54.827881, 53.054703>,  <39.885662, 54.607666, 53.118408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956711, 54.827881, 53.054703>,  <40.075123, 55.194904, 52.948524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956711, 54.827881, 53.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775647, -0.068739, 0.627413,
		-0.557439, 0.391624, 0.732047,
		-0.296030, -0.917554, 0.265445,
		39.867901, 54.552616, 53.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323353, 55.134403, 53.634407>,  <40.075123, 55.194904, 52.948524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323353, 55.134403, 53.634407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245121, 54.758789, 53.521294>,  <40.198181, 54.533421, 53.453426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245121, 54.758789, 53.521294>,  <40.323353, 55.134403, 53.634407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245121, 54.758789, 53.521294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631297, -0.341213, 0.696447,
		-0.750477, -0.042313, 0.659541,
		-0.195575, -0.939033, -0.282785,
		40.186447, 54.477077, 53.436459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015331, 54.727909, 54.229126>,  <40.323353, 55.134403, 53.634407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015331, 54.727909, 54.229126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226982, 54.513039, 53.966385>,  <40.353973, 54.384117, 53.808739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226982, 54.513039, 53.966385>,  <40.015331, 54.727909, 54.229126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226982, 54.513039, 53.966385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455213, -0.473581, 0.753991,
		-0.716102, -0.697969, -0.006056,
		0.529131, -0.537178, -0.656856,
		40.385723, 54.351887, 53.769329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029266, 54.092369, 54.567635>,  <40.015331, 54.727909, 54.229126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029266, 54.092369, 54.567635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316235, 54.137428, 54.292648>,  <40.488415, 54.164463, 54.127655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316235, 54.137428, 54.292648>,  <40.029266, 54.092369, 54.567635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316235, 54.137428, 54.292648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658517, -0.431630, 0.616483,
		-0.227285, -0.894989, -0.383844,
		0.717424, 0.112651, -0.687468,
		40.531464, 54.171223, 54.086407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197533, 53.393841, 54.359829>,  <40.029266, 54.092369, 54.567635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197533, 53.393841, 54.359829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506588, 53.647705, 54.353691>,  <40.692020, 53.800022, 54.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506588, 53.647705, 54.353691>,  <40.197533, 53.393841, 54.359829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506588, 53.647705, 54.353691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431712, -0.507548, 0.745667,
		0.465457, -0.582757, -0.666142,
		0.772642, 0.634657, -0.015341,
		40.738380, 53.838100, 54.349091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879288, 52.960098, 54.343418>,  <40.197533, 53.393841, 54.359829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879288, 52.960098, 54.343418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959259, 53.327530, 54.479790>,  <41.007244, 53.547989, 54.561611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959259, 53.327530, 54.479790>,  <40.879288, 52.960098, 54.343418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959259, 53.327530, 54.479790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657046, -0.383817, 0.648826,
		0.726855, 0.094284, -0.680289,
		0.199932, 0.918583, 0.340928,
		41.019238, 53.603104, 54.582069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530243, 53.133324, 54.121334>,  <40.879288, 52.960098, 54.343418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530243, 53.133324, 54.121334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429966, 53.297752, 54.471916>,  <41.369801, 53.396408, 54.682266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429966, 53.297752, 54.471916>,  <41.530243, 53.133324, 54.121334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429966, 53.297752, 54.471916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785234, -0.443163, 0.432451,
		0.566180, 0.796637, -0.211685,
		-0.250695, 0.411067, 0.876456,
		41.354759, 53.421074, 54.734852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096977, 53.382835, 54.429283>,  <41.530243, 53.133324, 54.121334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096977, 53.382835, 54.429283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844345, 53.347828, 54.737423>,  <41.692764, 53.326824, 54.922306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844345, 53.347828, 54.737423>,  <42.096977, 53.382835, 54.429283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844345, 53.347828, 54.737423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740189, -0.363724, 0.565531,
		0.230703, 0.927387, 0.294500,
		-0.631583, -0.087516, 0.770353,
		41.654869, 53.321571, 54.968529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396610, 53.747105, 55.014446>,  <42.096977, 53.382835, 54.429283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396610, 53.747105, 55.014446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162518, 53.449120, 55.142532>,  <42.022060, 53.270329, 55.219383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162518, 53.449120, 55.142532>,  <42.396610, 53.747105, 55.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162518, 53.449120, 55.142532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744450, -0.337107, 0.576327,
		-0.321396, 0.575668, 0.751872,
		-0.585234, -0.744960, 0.320211,
		41.986946, 53.225632, 55.238594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112312, 53.943180, 54.976471>,  <42.396610, 53.747105, 55.014446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112312, 53.943180, 54.976471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921150, 54.290573, 55.029160>,  <42.806454, 54.499008, 55.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921150, 54.290573, 55.029160>,  <43.112312, 53.943180, 54.976471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921150, 54.290573, 55.029160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794403, 0.363312, 0.486753,
		0.374877, 0.337264, -0.863551,
		-0.477903, 0.868480, 0.131726,
		42.777779, 54.551117, 55.068676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910545, 54.017952, 54.963356>,  <43.112312, 53.943180, 54.976471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910545, 54.017952, 54.963356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108501, 53.673523, 54.916641>,  <44.227276, 53.466866, 54.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108501, 53.673523, 54.916641>,  <43.910545, 54.017952, 54.963356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108501, 53.673523, 54.916641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834680, 0.508427, -0.211685,
		0.241653, 0.007282, 0.970335,
		0.494886, -0.861074, -0.116785,
		44.256966, 53.415199, 54.881607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599907, 53.930817, 55.420834>,  <43.910545, 54.017952, 54.963356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599907, 53.930817, 55.420834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602592, 53.752728, 55.062675>,  <44.604206, 53.645874, 54.847782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602592, 53.752728, 55.062675>,  <44.599907, 53.930817, 55.420834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602592, 53.752728, 55.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931989, 0.327314, -0.155763,
		0.362424, -0.833450, 0.417144,
		0.006716, -0.445226, -0.895393,
		44.604607, 53.619160, 54.794056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280769, 53.535557, 55.258564>,  <44.599907, 53.930817, 55.420834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280769, 53.535557, 55.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066883, 53.711945, 54.970222>,  <44.938549, 53.817776, 54.797218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066883, 53.711945, 54.970222>,  <45.280769, 53.535557, 55.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066883, 53.711945, 54.970222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825634, 0.454350, -0.334506,
		0.180012, -0.774024, -0.607027,
		-0.534719, 0.440967, -0.720849,
		44.906467, 53.844234, 54.753967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974281, 53.488693, 55.661381>,  <45.280769, 53.535557, 55.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974281, 53.488693, 55.661381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301571, 53.298584, 55.790764>,  <46.497944, 53.184521, 55.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301571, 53.298584, 55.790764>,  <45.974281, 53.488693, 55.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.301571, 53.298584, 55.790764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572889, 0.627056, -0.527824,
		0.048031, 0.617186, 0.785350,
		0.818224, -0.475270, 0.323461,
		46.547039, 53.156002, 55.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488300, 53.977055, 55.979694>,  <45.974281, 53.488693, 55.661381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488300, 53.977055, 55.979694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657417, 53.654205, 55.814865>,  <46.758888, 53.460495, 55.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657417, 53.654205, 55.814865>,  <46.488300, 53.977055, 55.979694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657417, 53.654205, 55.814865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565758, 0.590299, -0.575729,
		0.707927, 0.010284, 0.706211,
		0.422796, -0.807119, -0.412070,
		46.784256, 53.412071, 55.691242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239155, 53.920815, 55.970985>,  <46.488300, 53.977055, 55.979694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239155, 53.920815, 55.970985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097424, 53.736687, 55.645393>,  <47.012386, 53.626209, 55.450039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097424, 53.736687, 55.645393>,  <47.239155, 53.920815, 55.970985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097424, 53.736687, 55.645393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683378, 0.466705, -0.561410,
		0.638316, -0.755175, 0.149208,
		-0.354327, -0.460322, -0.813976,
		46.991127, 53.598591, 55.401199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.787197, 53.695206, 55.526436>,  <47.239155, 53.920815, 55.970985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.787197, 53.695206, 55.526436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498619, 53.703316, 55.249565>,  <47.325474, 53.708183, 55.083443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498619, 53.703316, 55.249565>,  <47.787197, 53.695206, 55.526436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498619, 53.703316, 55.249565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581250, 0.561042, -0.589390,
		0.376391, -0.827539, -0.416544,
		-0.721442, 0.020275, -0.692178,
		47.282185, 53.709396, 55.041912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.863728, 53.161148, 55.061871>,  <47.787197, 53.695206, 55.526436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.863728, 53.161148, 55.061871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718292, 53.512402, 54.937492>,  <47.631031, 53.723152, 54.862865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718292, 53.512402, 54.937492>,  <47.863728, 53.161148, 55.061871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718292, 53.512402, 54.937492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863918, 0.192977, -0.465194,
		-0.348497, -0.437770, -0.828799,
		-0.363587, 0.878133, -0.310945,
		47.609215, 53.775841, 54.844208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.960941, 53.162182, 54.267887>,  <47.863728, 53.161148, 55.061871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.960941, 53.162182, 54.267887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961552, 53.512447, 54.461052>,  <47.961918, 53.722607, 54.576950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961552, 53.512447, 54.461052>,  <47.960941, 53.162182, 54.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.961552, 53.512447, 54.461052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859914, 0.245348, -0.447607,
		-0.510437, 0.415945, -0.752625,
		0.001525, 0.875668, 0.482911,
		47.962009, 53.775146, 54.605927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.988953, 53.714470, 53.843433>,  <47.960941, 53.162182, 54.267887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.988953, 53.714470, 53.843433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170624, 53.812206, 54.186134>,  <48.279625, 53.870846, 54.391754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170624, 53.812206, 54.186134>,  <47.988953, 53.714470, 53.843433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.170624, 53.812206, 54.186134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852683, 0.159467, -0.497496,
		-0.258182, 0.956488, -0.135918,
		0.454175, 0.244339, 0.856752,
		48.306877, 53.885509, 54.443161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.471375, 54.367001, 53.804146>,  <47.988953, 53.714470, 53.843433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.471375, 54.367001, 53.804146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.610901, 54.179661, 54.128853>,  <48.694618, 54.067257, 54.323677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.610901, 54.179661, 54.128853>,  <48.471375, 54.367001, 53.804146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.610901, 54.179661, 54.128853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922251, 0.017501, -0.386196,
		0.166668, 0.883370, 0.438040,
		0.348821, -0.468349, 0.811772,
		48.715546, 54.039158, 54.372383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.082813, 54.512970, 54.202885>,  <48.471375, 54.367001, 53.804146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.082813, 54.512970, 54.202885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.133228, 54.118649, 54.247246>,  <49.163479, 53.882053, 54.273861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.133228, 54.118649, 54.247246>,  <49.082813, 54.512970, 54.202885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.133228, 54.118649, 54.247246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809005, 0.037443, -0.586608,
		0.574130, 0.163654, 0.802242,
		0.126039, -0.985807, 0.110900,
		49.171040, 53.822906, 54.280518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.719234, 54.374077, 54.349163>,  <49.082813, 54.512970, 54.202885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.719234, 54.374077, 54.349163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.615074, 54.024734, 54.184517>,  <49.552578, 53.815128, 54.085728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.615074, 54.024734, 54.184517>,  <49.719234, 54.374077, 54.349163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.615074, 54.024734, 54.184517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674725, 0.140332, -0.724606,
		0.690605, -0.466421, 0.552735,
		-0.260405, -0.873361, -0.411620,
		49.536953, 53.762726, 54.061031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.276711, 54.043877, 54.291012>,  <49.719234, 54.374077, 54.349163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.276711, 54.043877, 54.291012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.010014, 53.942947, 54.010498>,  <49.849995, 53.882389, 53.842190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.010014, 53.942947, 54.010498>,  <50.276711, 54.043877, 54.291012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.010014, 53.942947, 54.010498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568741, 0.435847, -0.697546,
		0.481661, -0.863926, -0.147086,
		-0.666735, -0.252327, -0.701281,
		49.809994, 53.867249, 53.800114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.777706, 53.523750, 54.368755>,  <50.276711, 54.043877, 54.291012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.777706, 53.523750, 54.368755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.164669, 53.595661, 54.440086>,  <51.396847, 53.638809, 54.482883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.164669, 53.595661, 54.440086>,  <50.777706, 53.523750, 54.368755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.164669, 53.595661, 54.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181914, -0.003545, -0.983308,
		-0.176146, 0.983701, -0.036134,
		0.967409, 0.179779, 0.178325,
		51.454891, 53.649593, 54.493584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.104225, 53.685200, 53.756397>,  <50.777706, 53.523750, 54.368755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.104225, 53.685200, 53.756397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.418854, 53.616238, 53.993576>,  <51.607632, 53.574860, 54.135883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.418854, 53.616238, 53.993576>,  <51.104225, 53.685200, 53.756397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.418854, 53.616238, 53.993576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583760, -0.105448, -0.805050,
		0.201317, 0.979366, 0.017700,
		0.786572, -0.172403, 0.592943,
		51.654827, 53.564518, 54.171459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.622471, 54.171387, 53.578362>,  <51.104225, 53.685200, 53.756397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.622471, 54.171387, 53.578362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.786247, 53.823284, 53.687916>,  <51.884514, 53.614422, 53.753651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.786247, 53.823284, 53.687916>,  <51.622471, 54.171387, 53.578362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.786247, 53.823284, 53.687916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302175, -0.153904, -0.940746,
		0.860841, 0.467943, 0.199955,
		0.409442, -0.870254, 0.273888,
		51.909081, 53.562206, 53.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.284977, 54.075035, 53.403114>,  <51.622471, 54.171387, 53.578362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.284977, 54.075035, 53.403114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.157333, 53.696007, 53.409752>,  <52.080746, 53.468590, 53.413734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.157333, 53.696007, 53.409752>,  <52.284977, 54.075035, 53.403114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.157333, 53.696007, 53.409752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435726, -0.162246, -0.885336,
		0.841613, -0.275287, 0.464656,
		-0.319110, -0.947572, 0.016599,
		52.061600, 53.411736, 53.414730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.937336, 53.602123, 53.545742>,  <52.284977, 54.075035, 53.403114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.937336, 53.602123, 53.545742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.630970, 53.413834, 53.370567>,  <52.447151, 53.300858, 53.265461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.630970, 53.413834, 53.370567>,  <52.937336, 53.602123, 53.545742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.630970, 53.413834, 53.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626164, -0.391520, -0.674263,
		0.145932, -0.790649, 0.594624,
		-0.765913, -0.470729, -0.437941,
		52.401196, 53.272614, 53.239185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.130657, 52.927879, 53.495995>,  <52.937336, 53.602123, 53.545742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.130657, 52.927879, 53.495995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.874374, 53.019310, 53.202805>,  <52.720604, 53.074169, 53.026890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.874374, 53.019310, 53.202805>,  <53.130657, 52.927879, 53.495995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.874374, 53.019310, 53.202805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556623, -0.519267, -0.648484,
		-0.528830, -0.823479, 0.205474,
		-0.640709, 0.228566, -0.732973,
		52.682163, 53.087883, 52.982914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.809898, 52.555798, 53.216721>,  <53.130657, 52.927879, 53.495995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.809898, 52.555798, 53.216721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.859837, 52.643181, 53.603851>,  <53.889801, 52.695610, 53.836128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.859837, 52.643181, 53.603851>,  <53.809898, 52.555798, 53.216721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.859837, 52.643181, 53.603851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575259, -0.778828, 0.250008,
		0.808388, -0.587963, 0.028438,
		0.124848, 0.218463, 0.967826,
		53.897289, 52.708721, 53.894199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.039463, 52.034695, 53.537437>,  <53.809898, 52.555798, 53.216721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.039463, 52.034695, 53.537437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.821957, 52.245148, 53.798973>,  <53.691452, 52.371418, 53.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.821957, 52.245148, 53.798973>,  <54.039463, 52.034695, 53.537437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.821957, 52.245148, 53.798973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573437, -0.801780, 0.168279,
		0.612772, -0.283432, 0.737683,
		-0.543764, 0.526132, 0.653839,
		53.658829, 52.402988, 53.995125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.036278, 51.816956, 54.279846>,  <54.039463, 52.034695, 53.537437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.036278, 51.816956, 54.279846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.690170, 51.971035, 54.151512>,  <53.482506, 52.063484, 54.074512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.690170, 51.971035, 54.151512>,  <54.036278, 51.816956, 54.279846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.690170, 51.971035, 54.151512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483959, -0.808766, 0.334187,
		-0.130751, 0.444432, 0.886219,
		-0.865268, 0.385198, -0.320833,
		53.430592, 52.086594, 54.055264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.443882, 51.283997, 54.356815>,  <54.036278, 51.816956, 54.279846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.443882, 51.283997, 54.356815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.071724, 51.314320, 54.500271>,  <53.848431, 51.332512, 54.586346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.071724, 51.314320, 54.500271>,  <54.443882, 51.283997, 54.356815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.071724, 51.314320, 54.500271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277302, 0.494320, -0.823864,
		-0.239740, -0.865968, -0.438889,
		-0.930391, 0.075808, 0.358643,
		53.792606, 51.337063, 54.607864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.784161, 51.707554, 54.961811>,  <54.443882, 51.283997, 54.356815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.784161, 51.707554, 54.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.063072, 51.515572, 55.174767>,  <55.230419, 51.400383, 55.302540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.063072, 51.515572, 55.174767>,  <54.784161, 51.707554, 54.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.063072, 51.515572, 55.174767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065136, -0.782089, -0.619753,
		0.713832, 0.397464, -0.576599,
		0.697281, -0.479957, 0.532391,
		55.272255, 51.371586, 55.334484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.260548, 51.451714, 54.526867>,  <54.784161, 51.707554, 54.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.260548, 51.451714, 54.526867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.277977, 51.222046, 54.853897>,  <55.288433, 51.084244, 55.050114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.277977, 51.222046, 54.853897>,  <55.260548, 51.451714, 54.526867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.277977, 51.222046, 54.853897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034311, -0.818729, -0.573154,
		0.998461, -0.003079, -0.055373,
		0.043571, -0.574172, 0.817574,
		55.291050, 51.049793, 55.099171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.764687, 52.030575, 54.496655>,  <55.260548, 51.451714, 54.526867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.764687, 52.030575, 54.496655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.942444, 52.154930, 54.160591>,  <56.049099, 52.229542, 53.958954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.942444, 52.154930, 54.160591>,  <55.764687, 52.030575, 54.496655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.942444, 52.154930, 54.160591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425257, 0.752235, 0.503287,
		0.788462, -0.580940, 0.202080,
		0.444391, 0.310887, -0.840158,
		56.075760, 52.248196, 53.908543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.301876, 52.306999, 54.714016>,  <55.764687, 52.030575, 54.496655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.301876, 52.306999, 54.714016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.276123, 52.474785, 54.351822>,  <56.260674, 52.575455, 54.134506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.276123, 52.474785, 54.351822>,  <56.301876, 52.306999, 54.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.276123, 52.474785, 54.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366716, 0.853826, 0.369459,
		0.928103, -0.308271, -0.208792,
		-0.064379, 0.419463, -0.905487,
		56.256809, 52.600624, 54.080177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.078362, 52.427513, 54.498749>,  <56.301876, 52.306999, 54.714016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.078362, 52.427513, 54.498749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.861427, 52.709702, 54.316242>,  <56.731266, 52.879017, 54.206738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.861427, 52.709702, 54.316242>,  <57.078362, 52.427513, 54.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.861427, 52.709702, 54.316242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430495, 0.699700, 0.570171,
		0.721488, 0.112805, -0.683176,
		-0.542336, 0.705475, -0.456263,
		56.698727, 52.921345, 54.179363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.462654, 52.965748, 54.265903>,  <57.078362, 52.427513, 54.498749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.462654, 52.965748, 54.265903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095436, 53.095528, 54.357056>,  <56.875107, 53.173397, 54.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095436, 53.095528, 54.357056>,  <57.462654, 52.965748, 54.265903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.095436, 53.095528, 54.357056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396208, 0.729236, 0.557884,
		0.014828, 0.602449, -0.798020,
		-0.918041, 0.324454, 0.227882,
		56.820023, 53.192863, 54.425419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.769394, 53.583199, 54.622013>,  <57.462654, 52.965748, 54.265903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.769394, 53.583199, 54.622013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.004791, 53.435829, 54.909885>,  <58.146030, 53.347408, 55.082607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.004791, 53.435829, 54.909885>,  <57.769394, 53.583199, 54.622013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.004791, 53.435829, 54.909885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253244, 0.761347, 0.596841,
		-0.767815, -0.533492, 0.354747,
		0.588496, -0.368426, 0.719678,
		58.181339, 53.325302, 55.125790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.445549, 53.753788, 55.355095>,  <57.769394, 53.583199, 54.622013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.445549, 53.753788, 55.355095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.838951, 53.695183, 55.397530>,  <58.074993, 53.660019, 55.422993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.838951, 53.695183, 55.397530>,  <57.445549, 53.753788, 55.355095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.838951, 53.695183, 55.397530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048706, 0.779307, 0.624746,
		-0.174214, -0.609272, 0.773587,
		0.983503, -0.146518, 0.106091,
		58.134003, 53.651226, 55.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.574894, 53.558407, 55.960289>,  <57.445549, 53.753788, 55.355095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.574894, 53.558407, 55.960289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.927704, 53.703804, 55.840347>,  <58.139389, 53.791042, 55.768383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.927704, 53.703804, 55.840347>,  <57.574894, 53.558407, 55.960289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.927704, 53.703804, 55.840347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038210, 0.689421, 0.723353,
		0.469659, -0.626555, 0.621972,
		0.882021, 0.363494, -0.299852,
		58.192310, 53.812851, 55.750393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.967155, 53.671219, 56.564571>,  <57.574894, 53.558407, 55.960289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.967155, 53.671219, 56.564571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.085304, 53.897762, 56.256805>,  <58.156193, 54.033688, 56.072147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.085304, 53.897762, 56.256805>,  <57.967155, 53.671219, 56.564571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.085304, 53.897762, 56.256805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060662, 0.792600, 0.606718,
		0.953456, -0.225879, 0.199751,
		0.295367, 0.566361, -0.769411,
		58.173916, 54.067669, 56.025982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.212551, 54.299049, 56.735752>,  <57.967155, 53.671219, 56.564571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.212551, 54.299049, 56.735752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.966133, 54.554298, 56.551018>,  <57.818283, 54.707447, 56.440178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.966133, 54.554298, 56.551018>,  <58.212551, 54.299049, 56.735752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.966133, 54.554298, 56.551018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696406, -0.167218, 0.697895,
		0.368114, 0.751558, 0.547404,
		-0.616045, 0.638121, -0.461834,
		57.781319, 54.745735, 56.412468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.004852, 54.830681, 57.181988>,  <58.212551, 54.299049, 56.735752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.004852, 54.830681, 57.181988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.728180, 54.752693, 56.903831>,  <57.562176, 54.705902, 56.736938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.728180, 54.752693, 56.903831>,  <58.004852, 54.830681, 57.181988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.728180, 54.752693, 56.903831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622373, -0.327555, 0.710887,
		-0.366381, 0.924497, 0.105218,
		-0.691677, -0.194970, -0.695391,
		57.520676, 54.694202, 56.695213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.096909, 55.548374, 57.098000>,  <58.004852, 54.830681, 57.181988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.096909, 55.548374, 57.098000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.930824, 55.515266, 56.735619>,  <57.831173, 55.495403, 56.518188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.930824, 55.515266, 56.735619>,  <58.096909, 55.548374, 57.098000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.930824, 55.515266, 56.735619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699069, 0.666295, 0.259524,
		0.582151, 0.741080, -0.334514,
		-0.415213, -0.082766, -0.905951,
		57.806259, 55.490437, 56.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.075211, 56.240723, 56.790794>,  <58.096909, 55.548374, 57.098000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.075211, 56.240723, 56.790794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.780739, 56.011341, 56.647018>,  <57.604057, 55.873714, 56.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.780739, 56.011341, 56.647018>,  <58.075211, 56.240723, 56.790794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.780739, 56.011341, 56.647018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656711, 0.733669, 0.174531,
		0.163627, 0.364535, -0.916701,
		-0.736177, -0.573449, -0.359442,
		57.559887, 55.839306, 56.539185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.093193, 56.445160, 57.500641>,  <58.075211, 56.240723, 56.790794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.093193, 56.445160, 57.500641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.435600, 56.242744, 57.542900>,  <58.641045, 56.121296, 57.568256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.435600, 56.242744, 57.542900>,  <58.093193, 56.445160, 57.500641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.435600, 56.242744, 57.542900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402390, 0.523954, -0.750702,
		0.324533, 0.685123, 0.652138,
		0.856014, -0.506042, 0.105646,
		58.692406, 56.090931, 57.574593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.754066, 56.942860, 57.656872>,  <58.093193, 56.445160, 57.500641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.754066, 56.942860, 57.656872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.821213, 56.609829, 57.445732>,  <58.861500, 56.410011, 57.319046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.821213, 56.609829, 57.445732>,  <58.754066, 56.942860, 57.656872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.821213, 56.609829, 57.445732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632169, 0.501778, -0.590408,
		0.756427, -0.234581, 0.610565,
		0.167869, -0.832581, -0.527853,
		58.871574, 56.360054, 57.287376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.457817, 56.998562, 57.483212>,  <58.754066, 56.942860, 57.656872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.457817, 56.998562, 57.483212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.286903, 56.775463, 57.198578>,  <59.184357, 56.641605, 57.027798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.286903, 56.775463, 57.198578>,  <59.457817, 56.998562, 57.483212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.286903, 56.775463, 57.198578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464445, 0.539856, -0.702030,
		0.775706, -0.630457, 0.028371,
		-0.427283, -0.557745, -0.711582,
		59.158718, 56.608139, 56.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.156757, 56.717445, 57.435764>,  <59.457817, 56.998562, 57.483212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.156757, 56.717445, 57.435764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.111038, 56.356159, 57.270294>,  <60.083607, 56.139385, 57.171013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.111038, 56.356159, 57.270294>,  <60.156757, 56.717445, 57.435764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.111038, 56.356159, 57.270294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944200, -0.228243, 0.237467,
		-0.308904, -0.363454, 0.878908,
		-0.114297, -0.903220, -0.413679,
		60.076748, 56.085194, 57.146191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.192112, 56.204407, 57.958092>,  <60.156757, 56.717445, 57.435764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.192112, 56.204407, 57.958092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.305077, 56.063759, 57.601082>,  <60.372856, 55.979370, 57.386875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.305077, 56.063759, 57.601082>,  <60.192112, 56.204407, 57.958092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.305077, 56.063759, 57.601082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815263, -0.402360, 0.416476,
		-0.505560, -0.845262, 0.173034,
		0.282410, -0.351622, -0.892528,
		60.389801, 55.958271, 57.333324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.382591, 55.528347, 58.235493>,  <60.192112, 56.204407, 57.958092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.382591, 55.528347, 58.235493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.317093, 55.429779, 58.617584>,  <60.277794, 55.370640, 58.846840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.317093, 55.429779, 58.617584>,  <60.382591, 55.528347, 58.235493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.317093, 55.429779, 58.617584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852276, -0.522973, 0.011186,
		0.496804, 0.815953, 0.295647,
		-0.163743, -0.246416, 0.955232,
		60.267971, 55.355854, 58.904152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.571045, 56.044514, 58.652554>,  <60.382591, 55.528347, 58.235493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.571045, 56.044514, 58.652554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.721451, 56.312183, 58.908936>,  <60.811695, 56.472786, 59.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.721451, 56.312183, 58.908936>,  <60.571045, 56.044514, 58.652554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.721451, 56.312183, 58.908936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510437, -0.726887, 0.459444,
		0.773348, 0.154408, -0.614891,
		0.376014, 0.669173, 0.640953,
		60.834255, 56.512936, 59.101223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.258049, 55.935898, 58.766365>,  <60.571045, 56.044514, 58.652554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.258049, 55.935898, 58.766365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.180748, 56.157280, 59.090424>,  <61.134369, 56.290112, 59.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.180748, 56.157280, 59.090424>,  <61.258049, 55.935898, 58.766365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.180748, 56.157280, 59.090424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720095, -0.480837, 0.500259,
		0.666422, 0.680058, -0.305620,
		-0.193252, 0.553459, 0.810146,
		61.122772, 56.323318, 59.333466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.847855, 56.154675, 59.044392>,  <61.258049, 55.935898, 58.766365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.847855, 56.154675, 59.044392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.591621, 56.121380, 59.349739>,  <61.437881, 56.101402, 59.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.591621, 56.121380, 59.349739>,  <61.847855, 56.154675, 59.044392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.591621, 56.121380, 59.349739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684400, -0.512682, 0.518415,
		0.348210, 0.854534, 0.385384,
		-0.640583, -0.083240, 0.763364,
		61.399448, 56.096409, 59.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.273914, 56.623955, 59.366138>,  <61.847855, 56.154675, 59.044392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.273914, 56.623955, 59.366138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.351768, 56.796745, 59.718391>,  <62.398479, 56.900421, 59.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.351768, 56.796745, 59.718391>,  <62.273914, 56.623955, 59.366138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.351768, 56.796745, 59.718391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532620, -0.800455, 0.274932,
		0.823671, 0.415532, -0.385876,
		0.194633, 0.431979, 0.880632,
		62.410160, 56.926338, 59.982582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.964264, 56.764713, 59.454643>,  <62.273914, 56.623955, 59.366138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.964264, 56.764713, 59.454643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783775, 56.704956, 59.806572>,  <62.675480, 56.669102, 60.017727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783775, 56.704956, 59.806572>,  <62.964264, 56.764713, 59.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.783775, 56.704956, 59.806572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618216, -0.763330, 0.187449,
		0.643588, 0.628499, 0.436787,
		-0.451224, -0.149388, 0.879818,
		62.648407, 56.660141, 60.070518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.691124, 56.638840, 59.575420>,  <62.964264, 56.764713, 59.454643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.691124, 56.638840, 59.575420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.753899, 56.584198, 59.966667>,  <63.791565, 56.551414, 60.201416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.753899, 56.584198, 59.966667>,  <63.691124, 56.638840, 59.575420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.753899, 56.584198, 59.966667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189513, 0.976148, 0.105920,
		-0.969255, 0.168743, 0.179080,
		0.156936, -0.136602, 0.978116,
		63.800980, 56.543217, 60.260101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.430016, 57.332790, 59.779274>,  <63.691124, 56.638840, 59.575420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.430016, 57.332790, 59.779274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.677757, 57.244415, 60.080627>,  <63.826401, 57.191391, 60.261440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.677757, 57.244415, 60.080627>,  <63.430016, 57.332790, 59.779274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.677757, 57.244415, 60.080627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308808, 0.950797, 0.024959,
		-0.721833, 0.217193, 0.657103,
		0.619350, -0.220935, 0.753388,
		63.863564, 57.178135, 60.306644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.201378, 57.580997, 60.402607>,  <63.430016, 57.332790, 59.779274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.201378, 57.580997, 60.402607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.584297, 57.591972, 60.287483>,  <63.814049, 57.598557, 60.218407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.584297, 57.591972, 60.287483>,  <63.201378, 57.580997, 60.402607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.584297, 57.591972, 60.287483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133445, 0.925031, -0.355682,
		0.256476, 0.378900, 0.889188,
		0.957294, 0.027434, -0.287811,
		63.871487, 57.600201, 60.201141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.629326, 58.201626, 60.799416>,  <63.201378, 57.580997, 60.402607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.629326, 58.201626, 60.799416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.759880, 58.102699, 60.434494>,  <63.838215, 58.043343, 60.215542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.759880, 58.102699, 60.434494>,  <63.629326, 58.201626, 60.799416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.759880, 58.102699, 60.434494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081114, 0.968931, -0.233651,
		0.941749, 0.002260, 0.336308,
		0.326388, -0.247320, -0.912307,
		63.857796, 58.028503, 60.160801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.362793, 58.441818, 60.715050>,  <63.629326, 58.201626, 60.799416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.362793, 58.441818, 60.715050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.356636, 58.105064, 60.499275>,  <64.352943, 57.903011, 60.369808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.356636, 58.105064, 60.499275>,  <64.362793, 58.441818, 60.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.356636, 58.105064, 60.499275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186489, 0.532455, -0.825659,
		0.982336, 0.087886, -0.165200,
		-0.015398, -0.841883, -0.539440,
		64.352020, 57.852501, 60.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.650368, 58.124336, 61.303730>,  <64.362793, 58.441818, 60.715050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.650368, 58.124336, 61.303730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.705956, 58.512844, 61.380997>,  <64.739311, 58.745949, 61.427357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.705956, 58.512844, 61.380997>,  <64.650368, 58.124336, 61.303730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.705956, 58.512844, 61.380997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576249, -0.237948, 0.781868,
		0.805372, 0.002653, -0.592765,
		0.138973, 0.971274, 0.193165,
		64.747650, 58.804226, 61.438946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.347931, 58.152065, 61.598854>,  <64.650368, 58.124336, 61.303730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.347931, 58.152065, 61.598854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.128990, 58.460545, 61.728874>,  <64.997627, 58.645634, 61.806885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.128990, 58.460545, 61.728874>,  <65.347931, 58.152065, 61.598854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.128990, 58.460545, 61.728874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278345, -0.198530, 0.939739,
		0.789259, 0.604844, -0.105993,
		-0.547353, 0.771200, 0.325047,
		64.964783, 58.691906, 61.826389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.719025, 58.423855, 62.164196>,  <65.347931, 58.152065, 61.598854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.719025, 58.423855, 62.164196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.340302, 58.551445, 62.181206>,  <65.113068, 58.627998, 62.191410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.340302, 58.551445, 62.181206>,  <65.719025, 58.423855, 62.164196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.340302, 58.551445, 62.181206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042459, -0.254827, 0.966054,
		0.318983, 0.912863, 0.254815,
		-0.946809, 0.318974, 0.042526,
		65.056259, 58.647137, 62.193962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.463173, 58.587879, 62.235851>,  <65.719025, 58.423855, 62.164196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.463173, 58.587879, 62.235851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.247787, 58.785637, 61.962906>,  <66.118553, 58.904289, 61.799137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.247787, 58.785637, 61.962906>,  <66.463173, 58.587879, 62.235851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.247787, 58.785637, 61.962906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410165, 0.553602, 0.724769,
		0.736079, 0.670151, -0.095317,
		-0.538472, 0.494392, -0.682367,
		66.086243, 58.933956, 61.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.059113, 58.937363, 62.032158>,  <66.463173, 58.587879, 62.235851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.059113, 58.937363, 62.032158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162766, 59.134514, 62.364403>,  <67.224953, 59.252804, 62.563751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162766, 59.134514, 62.364403>,  <67.059113, 58.937363, 62.032158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.162766, 59.134514, 62.364403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938010, -0.333393, -0.094800,
		0.230196, 0.803691, -0.548717,
		0.259129, 0.492880, 0.830616,
		67.240501, 59.282379, 62.613586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.776222, 59.048542, 61.855301>,  <67.059113, 58.937363, 62.032158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.776222, 59.048542, 61.855301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.729378, 59.103027, 62.248795>,  <67.701271, 59.135719, 62.484890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.729378, 59.103027, 62.248795>,  <67.776222, 59.048542, 61.855301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.729378, 59.103027, 62.248795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891384, -0.422308, 0.164590,
		0.437858, 0.896159, -0.071966,
		-0.117107, 0.136216, 0.983733,
		67.694244, 59.143894, 62.543915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.798538, 59.712154, 61.383957>,  <67.776222, 59.048542, 61.855301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.798538, 59.712154, 61.383957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030777, 59.590271, 61.081947>,  <68.170120, 59.517139, 60.900742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030777, 59.590271, 61.081947>,  <67.798538, 59.712154, 61.383957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.030777, 59.590271, 61.081947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375111, -0.923156, 0.084114,
		-0.722639, 0.234383, -0.650275,
		0.580591, -0.304709, -0.755028,
		68.204956, 59.498859, 60.855438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.402435, 59.499050, 60.798828>,  <67.798538, 59.712154, 61.383957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.402435, 59.499050, 60.798828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.749870, 59.301926, 60.819557>,  <67.958328, 59.183651, 60.831997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.749870, 59.301926, 60.819557>,  <67.402435, 59.499050, 60.798828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.749870, 59.301926, 60.819557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494976, -0.867810, 0.043638,
		0.023469, -0.063556, -0.997702,
		0.868590, -0.492814, 0.051825,
		68.010445, 59.154079, 60.835106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.328148, 58.943069, 60.331905>,  <67.402435, 59.499050, 60.798828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.328148, 58.943069, 60.331905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.692253, 58.847534, 60.467194>,  <67.910713, 58.790215, 60.548367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.692253, 58.847534, 60.467194>,  <67.328148, 58.943069, 60.331905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.692253, 58.847534, 60.467194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194147, -0.967697, -0.160838,
		0.365705, 0.080740, -0.927222,
		0.910257, -0.238836, 0.338216,
		67.965332, 58.775883, 60.568657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.887077, 58.546844, 59.890144>,  <67.328148, 58.943069, 60.331905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.887077, 58.546844, 59.890144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.922493, 58.443344, 60.274895>,  <67.943741, 58.381245, 60.505745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.922493, 58.443344, 60.274895>,  <67.887077, 58.546844, 59.890144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.922493, 58.443344, 60.274895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162550, -0.956479, -0.242334,
		0.982720, -0.134900, -0.126738,
		0.088531, -0.258747, 0.961879,
		67.949051, 58.365719, 60.563457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.422386, 57.973145, 59.962395>,  <67.887077, 58.546844, 59.890144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.422386, 57.973145, 59.962395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.140411, 57.966232, 60.246017>,  <67.971222, 57.962086, 60.416191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.140411, 57.966232, 60.246017>,  <68.422386, 57.973145, 59.962395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.140411, 57.966232, 60.246017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023445, -0.998589, -0.047648,
		0.708879, -0.050213, 0.703541,
		-0.704940, -0.017282, 0.709056,
		67.928932, 57.961048, 60.458733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.212326, 57.252541, 60.013836>,  <68.422386, 57.973145, 59.962395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.212326, 57.252541, 60.013836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301262, 56.920361, 59.809517>,  <68.354622, 56.721054, 59.686924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301262, 56.920361, 59.809517>,  <68.212326, 57.252541, 60.013836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.301262, 56.920361, 59.809517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946542, 0.058276, 0.317274,
		-0.233712, -0.554040, 0.799011,
		0.222346, -0.830448, -0.510802,
		68.367966, 56.671227, 59.656277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.592903, 56.822826, 60.438164>,  <68.212326, 57.252541, 60.013836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.592903, 56.822826, 60.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.709015, 56.698067, 60.076286>,  <68.778679, 56.623211, 59.859161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.709015, 56.698067, 60.076286>,  <68.592903, 56.822826, 60.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.709015, 56.698067, 60.076286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949757, -0.021750, 0.312230,
		-0.117061, -0.949867, 0.289913,
		0.290271, -0.311897, -0.904689,
		68.796097, 56.604496, 59.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.180832, 56.446220, 60.679192>,  <68.592903, 56.822826, 60.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.180832, 56.446220, 60.679192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.207512, 56.538097, 60.290802>,  <69.223518, 56.593224, 60.057766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.207512, 56.538097, 60.290802>,  <69.180832, 56.446220, 60.679192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.207512, 56.538097, 60.290802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994978, 0.057474, 0.081946,
		0.074629, -0.971566, -0.224701,
		0.066701, 0.229688, -0.970976,
		69.227524, 56.607002, 59.999508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.762749, 56.098698, 60.467056>,  <69.180832, 56.446220, 60.679192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.762749, 56.098698, 60.467056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.694878, 56.419884, 60.238510>,  <69.654160, 56.612595, 60.101383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.694878, 56.419884, 60.238510>,  <69.762749, 56.098698, 60.467056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.694878, 56.419884, 60.238510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964116, 0.255367, 0.072577,
		0.204185, -0.538549, -0.817480,
		-0.169671, 0.802965, -0.571366,
		69.643974, 56.660774, 60.067101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.270546, 56.075401, 59.940186>,  <69.762749, 56.098698, 60.467056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.270546, 56.075401, 59.940186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.139969, 56.451591, 59.977997>,  <70.061623, 56.677307, 60.000683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.139969, 56.451591, 59.977997>,  <70.270546, 56.075401, 59.940186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.139969, 56.451591, 59.977997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942103, 0.331849, -0.048145,
		-0.076649, 0.073339, -0.994357,
		-0.326445, 0.940477, 0.094529,
		70.042038, 56.733734, 60.006355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.383018, 56.600002, 59.423115>,  <70.270546, 56.075401, 59.940186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.383018, 56.600002, 59.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.342392, 56.808609, 59.761986>,  <70.318016, 56.933773, 59.965309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.342392, 56.808609, 59.761986>,  <70.383018, 56.600002, 59.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.342392, 56.808609, 59.761986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880566, 0.443385, -0.167372,
		-0.462911, 0.728994, -0.504263,
		-0.101570, 0.521515, 0.847175,
		70.311920, 56.965065, 60.016140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.528839, 57.403797, 59.290833>,  <70.383018, 56.600002, 59.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.528839, 57.403797, 59.290833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.610779, 57.250000, 59.650879>,  <70.659943, 57.157722, 59.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.610779, 57.250000, 59.650879>,  <70.528839, 57.403797, 59.290833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.610779, 57.250000, 59.650879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894642, 0.446599, -0.012841,
		-0.397053, 0.807910, 0.435467,
		0.204853, -0.384488, 0.900113,
		70.672234, 57.134655, 59.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.870880, 57.856766, 59.723042>,  <70.528839, 57.403797, 59.290833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.870880, 57.856766, 59.723042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.004852, 57.538250, 59.924538>,  <71.085236, 57.347141, 60.045433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.004852, 57.538250, 59.924538>,  <70.870880, 57.856766, 59.723042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.004852, 57.538250, 59.924538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941204, 0.257621, -0.218555,
		0.044259, 0.547319, 0.835753,
		0.334927, -0.796287, 0.503737,
		71.105331, 57.299362, 60.075661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.450218, 58.030701, 60.123775>,  <70.870880, 57.856766, 59.723042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.450218, 58.030701, 60.123775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.457008, 57.634697, 60.067795>,  <71.461082, 57.397095, 60.034206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.457008, 57.634697, 60.067795>,  <71.450218, 58.030701, 60.123775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.457008, 57.634697, 60.067795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950578, 0.059389, -0.304753,
		0.310021, -0.127862, 0.942093,
		0.016983, -0.990012, -0.139955,
		71.462105, 57.337692, 60.025810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.995857, 57.660675, 60.448742>,  <71.450218, 58.030701, 60.123775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.995857, 57.660675, 60.448742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.921822, 57.450607, 60.116493>,  <71.877396, 57.324566, 59.917145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.921822, 57.450607, 60.116493>,  <71.995857, 57.660675, 60.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.921822, 57.450607, 60.116493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941495, 0.147479, -0.303046,
		0.281651, -0.838119, 0.467150,
		-0.185094, -0.525172, -0.830623,
		71.866295, 57.293056, 59.867306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.455811, 57.144680, 60.377022>,  <71.995857, 57.660675, 60.448742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.455811, 57.144680, 60.377022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.309547, 57.277100, 60.029068>,  <72.221794, 57.356552, 59.820293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.309547, 57.277100, 60.029068>,  <72.455811, 57.144680, 60.377022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.309547, 57.277100, 60.029068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920629, 0.266102, -0.285713,
		0.136894, -0.905316, -0.402074,
		-0.365653, 0.331048, -0.869888,
		72.199852, 57.376415, 59.768101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.193001, 57.527798, 60.476803>,  <72.455811, 57.144680, 60.377022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.193001, 57.527798, 60.476803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.263092, 57.789494, 60.182518>,  <73.305145, 57.946510, 60.005947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.263092, 57.789494, 60.182518>,  <73.193001, 57.527798, 60.476803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.263092, 57.789494, 60.182518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544492, -0.686984, -0.481230,
		-0.820260, -0.316266, -0.476602,
		0.175221, 0.654239, -0.735710,
		73.315659, 57.985764, 59.961803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
