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
	<35.932358, 52.515297, 50.410168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089432, 52.876801, 50.342018>,  <36.183678, 53.093700, 50.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089432, 52.876801, 50.342018>,  <35.932358, 52.515297, 50.410168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089432, 52.876801, 50.342018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121029, 0.132859, 0.983718,
		0.911675, -0.406909, -0.057209,
		0.392683, 0.903755, -0.170372,
		36.207237, 53.147926, 50.290905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436665, 52.695034, 50.919899>,  <35.932358, 52.515297, 50.410168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436665, 52.695034, 50.919899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314030, 53.052013, 50.787514>,  <36.240448, 53.266201, 50.708084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314030, 53.052013, 50.787514>,  <36.436665, 52.695034, 50.919899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314030, 53.052013, 50.787514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040325, 0.335216, 0.941278,
		0.950987, 0.301932, -0.066786,
		-0.306589, 0.892450, -0.330962,
		36.222054, 53.319748, 50.688225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933945, 53.233173, 51.027637>,  <36.436665, 52.695034, 50.919899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933945, 53.233173, 51.027637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567303, 53.393074, 51.030029>,  <36.347317, 53.489014, 51.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567303, 53.393074, 51.030029>,  <36.933945, 53.233173, 51.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567303, 53.393074, 51.030029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147000, 0.323074, 0.934887,
		0.371790, 0.857801, -0.354894,
		-0.916604, 0.399751, 0.005981,
		36.292320, 53.513000, 51.031822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542255, 53.525063, 50.829037>,  <36.933945, 53.233173, 51.027637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542255, 53.525063, 50.829037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866821, 53.752865, 50.881599>,  <38.061562, 53.889545, 50.913136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866821, 53.752865, 50.881599>,  <37.542255, 53.525063, 50.829037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866821, 53.752865, 50.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578369, 0.814789, 0.040099,
		-0.084233, -0.108539, 0.990517,
		0.811415, 0.569507, 0.131407,
		38.110245, 53.923717, 50.921021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305229, 54.128025, 51.251160>,  <37.542255, 53.525063, 50.829037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305229, 54.128025, 51.251160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606518, 54.219162, 51.004345>,  <37.787292, 54.273846, 50.856255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606518, 54.219162, 51.004345>,  <37.305229, 54.128025, 51.251160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606518, 54.219162, 51.004345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339630, 0.938083, -0.068196,
		0.563295, 0.260932, 0.783973,
		0.753226, 0.227847, -0.617038,
		37.832485, 54.287518, 50.819233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532936, 54.644150, 51.816147>,  <37.305229, 54.128025, 51.251160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532936, 54.644150, 51.816147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766541, 54.913322, 51.634560>,  <37.906704, 55.074825, 51.525608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766541, 54.913322, 51.634560>,  <37.532936, 54.644150, 51.816147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766541, 54.913322, 51.634560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670504, 0.715136, 0.197499,
		0.457554, 0.189047, 0.868853,
		0.584011, 0.672936, -0.453970,
		37.941742, 55.115204, 51.498367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789413, 55.156857, 52.317619>,  <37.532936, 54.644150, 51.816147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789413, 55.156857, 52.317619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756935, 55.309959, 51.949509>,  <37.737450, 55.401821, 51.728642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756935, 55.309959, 51.949509>,  <37.789413, 55.156857, 52.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756935, 55.309959, 51.949509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589349, 0.726178, 0.354025,
		0.803788, 0.571108, 0.166616,
		-0.081193, 0.382756, -0.920275,
		37.732578, 55.424786, 51.673428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284031, 55.473202, 52.911949>,  <37.789413, 55.156857, 52.317619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284031, 55.473202, 52.911949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614468, 55.558788, 53.120483>,  <38.812729, 55.610142, 53.245605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614468, 55.558788, 53.120483>,  <38.284031, 55.473202, 52.911949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614468, 55.558788, 53.120483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219338, -0.730084, 0.647200,
		0.519099, -0.648995, -0.556185,
		0.826091, 0.213969, 0.521335,
		38.862293, 55.622978, 53.276882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249748, 56.291370, 52.970165>,  <38.284031, 55.473202, 52.911949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249748, 56.291370, 52.970165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383743, 56.442642, 53.315361>,  <38.464142, 56.533405, 53.522480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383743, 56.442642, 53.315361>,  <38.249748, 56.291370, 52.970165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383743, 56.442642, 53.315361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940762, -0.185194, -0.284023,
		0.052408, 0.907017, -0.417820,
		0.334992, 0.378184, 0.862993,
		38.484241, 56.556099, 53.574261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821873, 56.797310, 52.855381>,  <38.249748, 56.291370, 52.970165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821873, 56.797310, 52.855381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890419, 56.674278, 53.229767>,  <38.931545, 56.600460, 53.454399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890419, 56.674278, 53.229767>,  <38.821873, 56.797310, 52.855381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890419, 56.674278, 53.229767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982988, -0.010351, -0.183376,
		0.066092, 0.951465, 0.300576,
		0.171364, -0.307582, 0.935963,
		38.941830, 56.582005, 53.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058449, 57.276726, 53.313843>,  <38.821873, 56.797310, 52.855381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058449, 57.276726, 53.313843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195179, 56.903694, 53.360226>,  <39.277218, 56.679874, 53.388054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195179, 56.903694, 53.360226>,  <39.058449, 57.276726, 53.313843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195179, 56.903694, 53.360226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930790, 0.318960, -0.178590,
		0.129565, 0.168978, 0.977067,
		0.341823, -0.932583, 0.115957,
		39.297726, 56.623920, 53.395012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761803, 57.286480, 53.144760>,  <39.058449, 57.276726, 53.313843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761803, 57.286480, 53.144760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785072, 56.924660, 53.313713>,  <39.799034, 56.707569, 53.415085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785072, 56.924660, 53.313713>,  <39.761803, 57.286480, 53.144760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785072, 56.924660, 53.313713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983666, 0.124134, 0.130353,
		-0.170343, 0.407901, 0.896995,
		0.058176, -0.904548, 0.422384,
		39.802525, 56.653294, 53.440430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209961, 57.317913, 53.792034>,  <39.761803, 57.286480, 53.144760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209961, 57.317913, 53.792034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239563, 56.956928, 53.622292>,  <40.257324, 56.740337, 53.520447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239563, 56.956928, 53.622292>,  <40.209961, 57.317913, 53.792034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239563, 56.956928, 53.622292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990722, 0.017897, 0.134720,
		-0.113985, -0.430393, 0.895416,
		0.074007, -0.902464, -0.424360,
		40.261765, 56.686188, 53.494984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598320, 56.739414, 54.238277>,  <40.209961, 57.317913, 53.792034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598320, 56.739414, 54.238277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634506, 56.699001, 53.841972>,  <40.656216, 56.674751, 53.604191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634506, 56.699001, 53.841972>,  <40.598320, 56.739414, 54.238277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634506, 56.699001, 53.841972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994599, -0.041668, 0.095063,
		-0.050888, -0.994010, 0.096720,
		0.090463, -0.101035, -0.990761,
		40.661644, 56.668690, 53.544743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989883, 56.219933, 54.271858>,  <40.598320, 56.739414, 54.238277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989883, 56.219933, 54.271858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022587, 56.404575, 53.918533>,  <41.042210, 56.515362, 53.706539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022587, 56.404575, 53.918533>,  <40.989883, 56.219933, 54.271858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022587, 56.404575, 53.918533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989199, -0.145774, 0.015376,
		-0.121666, -0.875027, -0.468536,
		0.081755, 0.461604, -0.883311,
		41.047112, 56.543056, 53.653542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261673, 55.730804, 53.694542>,  <40.989883, 56.219933, 54.271858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261673, 55.730804, 53.694542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347740, 56.117283, 53.637733>,  <41.399380, 56.349171, 53.603649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347740, 56.117283, 53.637733>,  <41.261673, 55.730804, 53.694542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347740, 56.117283, 53.637733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976064, -0.217483, -0.000768,
		-0.031629, -0.138454, -0.989864,
		0.215172, 0.966194, -0.142019,
		41.412292, 56.407143, 53.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658897, 55.872360, 53.052074>,  <41.261673, 55.730804, 53.694542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658897, 55.872360, 53.052074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719753, 56.132599, 53.349686>,  <41.756268, 56.288742, 53.528252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719753, 56.132599, 53.349686>,  <41.658897, 55.872360, 53.052074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719753, 56.132599, 53.349686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970140, -0.242175, 0.013390,
		0.188896, 0.719774, -0.668014,
		0.152139, 0.650597, 0.744028,
		41.765396, 56.327778, 53.572895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193428, 56.365612, 52.856026>,  <41.658897, 55.872360, 53.052074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193428, 56.365612, 52.856026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171745, 56.371735, 53.255390>,  <42.158737, 56.375408, 53.495010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171745, 56.371735, 53.255390>,  <42.193428, 56.365612, 52.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171745, 56.371735, 53.255390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996172, 0.069509, 0.053015,
		-0.068587, 0.997464, -0.019013,
		-0.054202, 0.015304, 0.998413,
		42.155483, 56.376328, 53.554913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492004, 56.892178, 53.104591>,  <42.193428, 56.365612, 52.856026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492004, 56.892178, 53.104591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522396, 56.590351, 53.365314>,  <42.540630, 56.409256, 53.521748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522396, 56.590351, 53.365314>,  <42.492004, 56.892178, 53.104591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522396, 56.590351, 53.365314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997079, 0.062634, -0.043719,
		-0.007837, 0.653228, 0.757121,
		0.075980, -0.754567, 0.651810,
		42.545189, 56.363979, 53.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901043, 57.106323, 53.682816>,  <42.492004, 56.892178, 53.104591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901043, 57.106323, 53.682816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921329, 56.713943, 53.607803>,  <42.933502, 56.478516, 53.562798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921329, 56.713943, 53.607803>,  <42.901043, 57.106323, 53.682816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921329, 56.713943, 53.607803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997451, 0.059184, -0.039850,
		0.050190, -0.185029, 0.981450,
		0.050712, -0.980949, -0.187528,
		42.936543, 56.419659, 53.551544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376022, 56.608456, 54.155212>,  <42.901043, 57.106323, 53.682816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376022, 56.608456, 54.155212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343807, 56.485630, 53.775902>,  <43.324478, 56.411934, 53.548317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343807, 56.485630, 53.775902>,  <43.376022, 56.608456, 54.155212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343807, 56.485630, 53.775902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996300, 0.003825, -0.085855,
		0.029990, -0.951681, 0.305620,
		-0.080537, -0.307064, -0.948275,
		43.319645, 56.393509, 53.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663544, 55.870121, 54.115631>,  <43.376022, 56.608456, 54.155212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663544, 55.870121, 54.115631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687534, 56.074482, 53.772614>,  <43.701927, 56.197098, 53.566803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687534, 56.074482, 53.772614>,  <43.663544, 55.870121, 54.115631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687534, 56.074482, 53.772614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995313, -0.095890, 0.012484,
		-0.075852, -0.854276, -0.514255,
		0.059977, 0.510898, -0.857546,
		43.705528, 56.227753, 53.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066868, 55.647900, 53.537449>,  <43.663544, 55.870121, 54.115631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066868, 55.647900, 53.537449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075043, 56.047691, 53.527534>,  <44.079948, 56.287567, 53.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075043, 56.047691, 53.527534>,  <44.066868, 55.647900, 53.537449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075043, 56.047691, 53.527534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973938, -0.014306, 0.226364,
		0.225892, -0.028765, -0.973728,
		0.020441, 0.999484, -0.024783,
		44.081177, 56.347538, 53.520100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596752, 55.743999, 53.137909>,  <44.066868, 55.647900, 53.537449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596752, 55.743999, 53.137909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528008, 56.068878, 53.360909>,  <44.486759, 56.263805, 53.494709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528008, 56.068878, 53.360909>,  <44.596752, 55.743999, 53.137909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528008, 56.068878, 53.360909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984239, 0.165500, 0.062312,
		-0.041657, 0.559422, -0.827835,
		-0.171866, 0.812192, 0.557500,
		44.476448, 56.312534, 53.528160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919010, 56.380512, 52.918121>,  <44.596752, 55.743999, 53.137909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919010, 56.380512, 52.918121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876625, 56.424133, 53.313469>,  <44.851192, 56.450306, 53.550678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876625, 56.424133, 53.313469>,  <44.919010, 56.380512, 52.918121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876625, 56.424133, 53.313469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974606, 0.208576, 0.081477,
		-0.197265, 0.971907, -0.128388,
		-0.105967, 0.109055, 0.988371,
		44.844833, 56.456848, 53.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059711, 57.022755, 53.075420>,  <44.919010, 56.380512, 52.918121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059711, 57.022755, 53.075420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158028, 56.746731, 53.347717>,  <45.217018, 56.581116, 53.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158028, 56.746731, 53.347717>,  <45.059711, 57.022755, 53.075420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158028, 56.746731, 53.347717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928772, 0.368662, 0.038364,
		-0.277437, 0.622824, 0.731518,
		0.245788, -0.690057, 0.680742,
		45.231766, 56.539715, 53.551941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447723, 57.342941, 53.705444>,  <45.059711, 57.022755, 53.075420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447723, 57.342941, 53.705444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557625, 56.960751, 53.662399>,  <45.623566, 56.731438, 53.636570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557625, 56.960751, 53.662399>,  <45.447723, 57.342941, 53.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557625, 56.960751, 53.662399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959794, 0.279231, -0.028753,
		0.057523, -0.095390, 0.993777,
		0.274750, -0.955474, -0.107617,
		45.640049, 56.674107, 53.630116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065872, 57.112358, 54.264233>,  <45.447723, 57.342941, 53.705444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065872, 57.112358, 54.264233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074673, 56.894943, 53.928596>,  <46.079952, 56.764492, 53.727215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074673, 56.894943, 53.928596>,  <46.065872, 57.112358, 54.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074673, 56.894943, 53.928596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858919, 0.439800, -0.262364,
		0.511639, -0.714940, 0.476536,
		0.022006, -0.543541, -0.839094,
		46.081276, 56.731880, 53.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693459, 56.866657, 54.225410>,  <46.065872, 57.112358, 54.264233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693459, 56.866657, 54.225410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544289, 56.899460, 53.855721>,  <46.454784, 56.919144, 53.633907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544289, 56.899460, 53.855721>,  <46.693459, 56.866657, 54.225410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544289, 56.899460, 53.855721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884832, 0.331249, -0.327637,
		0.279281, -0.939973, -0.196096,
		-0.372927, 0.082009, -0.924229,
		46.432411, 56.924065, 53.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211082, 57.274559, 54.096519>,  <46.693459, 56.866657, 54.225410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211082, 57.274559, 54.096519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995827, 57.269512, 53.759415>,  <46.866673, 57.266483, 53.557152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995827, 57.269512, 53.759415>,  <47.211082, 57.274559, 54.096519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995827, 57.269512, 53.759415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743421, 0.464046, -0.481650,
		0.397161, -0.885721, -0.240336,
		-0.538135, -0.012622, -0.842764,
		46.834385, 57.265724, 53.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589458, 56.854507, 53.683773>,  <47.211082, 57.274559, 54.096519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589458, 56.854507, 53.683773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340435, 57.060661, 53.448215>,  <47.191021, 57.184353, 53.306881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340435, 57.060661, 53.448215>,  <47.589458, 56.854507, 53.683773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340435, 57.060661, 53.448215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768681, 0.261550, -0.583714,
		-0.146813, -0.816068, -0.558998,
		-0.622556, 0.515388, -0.588897,
		47.153667, 57.215279, 53.271545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248913, 57.074940, 53.978889>,  <47.589458, 56.854507, 53.683773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248913, 57.074940, 53.978889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570625, 57.312340, 53.990822>,  <48.763653, 57.454781, 53.997982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570625, 57.312340, 53.990822>,  <48.248913, 57.074940, 53.978889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.570625, 57.312340, 53.990822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498111, -0.700686, 0.510808,
		0.324066, -0.395973, -0.859178,
		0.804280, 0.593501, 0.029830,
		48.811909, 57.490391, 53.999771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.315777, 56.327801, 53.765652>,  <48.248913, 57.074940, 53.978889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.315777, 56.327801, 53.765652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.639278, 56.473660, 53.950233>,  <48.833382, 56.561176, 54.060982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.639278, 56.473660, 53.950233>,  <48.315777, 56.327801, 53.765652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.639278, 56.473660, 53.950233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237858, -0.514788, 0.823661,
		0.537898, -0.775904, -0.329604,
		0.808758, 0.364647, 0.461458,
		48.881905, 56.583054, 54.088673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.608818, 55.723701, 54.170898>,  <48.315777, 56.327801, 53.765652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.608818, 55.723701, 54.170898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.713463, 56.089333, 54.294846>,  <48.776249, 56.308712, 54.369213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.713463, 56.089333, 54.294846>,  <48.608818, 55.723701, 54.170898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.713463, 56.089333, 54.294846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043522, -0.309547, 0.949887,
		0.964190, -0.261992, -0.041199,
		0.261616, 0.914079, 0.309865,
		48.791946, 56.363556, 54.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.224197, 55.680077, 54.453224>,  <48.608818, 55.723701, 54.170898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.224197, 55.680077, 54.453224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.970997, 55.954285, 54.597099>,  <48.819077, 56.118809, 54.683426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.970997, 55.954285, 54.597099>,  <49.224197, 55.680077, 54.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.970997, 55.954285, 54.597099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088470, -0.397520, 0.913319,
		0.769078, 0.609955, 0.190983,
		-0.633003, 0.685517, 0.359687,
		48.781097, 56.159939, 54.705006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.393009, 56.162968, 55.050278>,  <49.224197, 55.680077, 54.453224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.393009, 56.162968, 55.050278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.994633, 56.180344, 55.081825>,  <48.755608, 56.190769, 55.100754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.994633, 56.180344, 55.081825>,  <49.393009, 56.162968, 55.050278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.994633, 56.180344, 55.081825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069611, -0.184172, 0.980426,
		0.057113, 0.981934, 0.180400,
		-0.995938, 0.043438, 0.078872,
		48.695850, 56.193375, 55.105488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.178879, 56.703167, 55.582890>,  <49.393009, 56.162968, 55.050278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.178879, 56.703167, 55.582890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.916805, 56.405750, 55.529411>,  <48.759560, 56.227299, 55.497322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.916805, 56.405750, 55.529411>,  <49.178879, 56.703167, 55.582890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.916805, 56.405750, 55.529411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094040, -0.255865, 0.962128,
		-0.749595, 0.617796, 0.237561,
		-0.655182, -0.743546, -0.133697,
		48.720249, 56.182686, 55.489304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.670074, 56.728828, 56.155979>,  <49.178879, 56.703167, 55.582890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.670074, 56.728828, 56.155979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.741272, 56.359947, 56.018661>,  <48.783989, 56.138618, 55.936272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.741272, 56.359947, 56.018661>,  <48.670074, 56.728828, 56.155979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.741272, 56.359947, 56.018661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061970, -0.337672, 0.939222,
		-0.982078, -0.188451, -0.002955,
		0.177995, -0.922206, -0.343299,
		48.794670, 56.083286, 55.915672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.340855, 56.640354, 56.270962>,  <48.670074, 56.728828, 56.155979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.340855, 56.640354, 56.270962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.732727, 56.573479, 56.226654>,  <49.967850, 56.533356, 56.200069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.732727, 56.573479, 56.226654>,  <49.340855, 56.640354, 56.270962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.732727, 56.573479, 56.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140667, -0.179158, -0.973712,
		0.142944, 0.969511, -0.199036,
		0.979684, -0.167184, -0.110769,
		50.026630, 56.523323, 56.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.856762, 57.148151, 56.180367>,  <49.340855, 56.640354, 56.270962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.856762, 57.148151, 56.180367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.086021, 57.138752, 56.508011>,  <50.223579, 57.133114, 56.704597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.086021, 57.138752, 56.508011>,  <49.856762, 57.148151, 56.180367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.086021, 57.138752, 56.508011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531877, 0.771086, -0.350047,
		-0.623381, 0.636297, 0.454447,
		0.573151, -0.023497, 0.819113,
		50.257965, 57.131702, 56.753746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.004402, 57.802528, 56.551117>,  <49.856762, 57.148151, 56.180367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.004402, 57.802528, 56.551117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.310036, 57.551704, 56.611740>,  <50.493416, 57.401211, 56.648113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.310036, 57.551704, 56.611740>,  <50.004402, 57.802528, 56.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.310036, 57.551704, 56.611740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623335, 0.657094, -0.423887,
		0.166211, 0.418360, 0.892944,
		0.764086, -0.627058, 0.151562,
		50.539261, 57.363586, 56.657207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.561951, 58.089550, 56.908352>,  <50.004402, 57.802528, 56.551117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.561951, 58.089550, 56.908352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.739613, 57.811176, 56.682640>,  <50.846210, 57.644154, 56.547215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.739613, 57.811176, 56.682640>,  <50.561951, 58.089550, 56.908352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.739613, 57.811176, 56.682640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617077, 0.694230, -0.370487,
		0.649570, -0.183648, 0.737789,
		0.444156, -0.695930, -0.564276,
		50.872860, 57.602398, 56.513359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.244347, 58.041752, 57.023964>,  <50.561951, 58.089550, 56.908352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.244347, 58.041752, 57.023964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.210484, 57.919533, 56.644600>,  <51.190166, 57.846203, 56.416981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.210484, 57.919533, 56.644600>,  <51.244347, 58.041752, 57.023964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.210484, 57.919533, 56.644600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749855, 0.607266, -0.262576,
		0.656164, -0.733397, 0.177703,
		-0.084660, -0.305544, -0.948407,
		51.185085, 57.827869, 56.360077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.910309, 58.135773, 56.676216>,  <51.244347, 58.041752, 57.023964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.910309, 58.135773, 56.676216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.707462, 58.047684, 56.342911>,  <51.585754, 57.994831, 56.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.707462, 58.047684, 56.342911>,  <51.910309, 58.135773, 56.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.707462, 58.047684, 56.342911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707507, 0.445755, -0.548394,
		0.492202, -0.867643, -0.070242,
		-0.507121, -0.220224, -0.833264,
		51.555325, 57.981617, 56.092930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.487762, 57.975891, 56.196613>,  <51.910309, 58.135773, 56.676216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.487762, 57.975891, 56.196613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.173313, 58.098373, 55.981857>,  <51.984642, 58.171864, 55.853004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.173313, 58.098373, 55.981857>,  <52.487762, 57.975891, 56.196613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.173313, 58.098373, 55.981857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617344, 0.346884, -0.706086,
		-0.029969, -0.886516, -0.461727,
		-0.786122, 0.306205, -0.536890,
		51.937477, 58.190235, 55.820789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.786457, 58.012787, 55.485569>,  <52.487762, 57.975891, 56.196613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.786457, 58.012787, 55.485569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.445465, 58.220566, 55.509041>,  <52.240868, 58.345234, 55.523125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.445465, 58.220566, 55.509041>,  <52.786457, 58.012787, 55.485569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.445465, 58.220566, 55.509041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378758, 0.691128, -0.615536,
		-0.360297, -0.502508, -0.785921,
		-0.852484, 0.519449, 0.058682,
		52.189720, 58.376400, 55.526646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.516235, 58.342812, 54.807949>,  <52.786457, 58.012787, 55.485569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.516235, 58.342812, 54.807949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.424553, 58.550125, 55.137520>,  <52.369545, 58.674511, 55.335262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.424553, 58.550125, 55.137520>,  <52.516235, 58.342812, 54.807949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.424553, 58.550125, 55.137520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378154, 0.827381, -0.415260,
		-0.896921, 0.216392, -0.385627,
		-0.229201, 0.518281, 0.823924,
		52.355793, 58.705608, 55.384697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.826565, 58.888996, 54.427498>,  <52.516235, 58.342812, 54.807949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.826565, 58.888996, 54.427498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.222042, 58.941185, 54.457054>,  <53.459328, 58.972500, 54.474789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.222042, 58.941185, 54.457054>,  <52.826565, 58.888996, 54.427498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.222042, 58.941185, 54.457054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148080, 0.772175, 0.617915,
		0.023568, -0.621870, 0.782766,
		0.988695, 0.130475, 0.073888,
		53.518650, 58.980328, 54.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.969276, 58.921349, 55.150219>,  <52.826565, 58.888996, 54.427498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.969276, 58.921349, 55.150219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.243835, 59.137131, 54.955139>,  <53.408573, 59.266598, 54.838093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.243835, 59.137131, 54.955139>,  <52.969276, 58.921349, 55.150219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.243835, 59.137131, 54.955139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123965, 0.747606, 0.652471,
		0.716573, -0.387404, 0.580035,
		0.686408, 0.539447, -0.487690,
		53.449757, 59.298965, 54.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.641544, 59.134655, 55.619606>,  <52.969276, 58.921349, 55.150219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.641544, 59.134655, 55.619606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.553722, 59.436367, 55.372101>,  <53.501030, 59.617393, 55.223598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.553722, 59.436367, 55.372101>,  <53.641544, 59.134655, 55.619606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.553722, 59.436367, 55.372101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019709, 0.630676, 0.775796,
		0.975400, 0.182527, -0.123604,
		-0.219558, 0.754276, -0.618758,
		53.487854, 59.662651, 55.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.177895, 59.663422, 55.592358>,  <53.641544, 59.134655, 55.619606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.177895, 59.663422, 55.592358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.834389, 59.834915, 55.480141>,  <53.628284, 59.937813, 55.412811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.834389, 59.834915, 55.480141>,  <54.177895, 59.663422, 55.592358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.834389, 59.834915, 55.480141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010788, 0.562559, 0.826687,
		0.512254, 0.706905, -0.487732,
		-0.858766, 0.428735, -0.280547,
		53.576759, 59.963535, 55.395977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.481354, 59.446678, 56.194374>,  <54.177895, 59.663422, 55.592358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.481354, 59.446678, 56.194374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.660439, 59.143921, 56.384811>,  <54.767891, 58.962265, 56.499073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.660439, 59.143921, 56.384811>,  <54.481354, 59.446678, 56.194374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.660439, 59.143921, 56.384811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846814, 0.529889, 0.046083,
		-0.287158, 0.382533, 0.878185,
		0.447713, -0.756892, 0.476097,
		54.794754, 58.916855, 56.527641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.702473, 59.451866, 56.947720>,  <54.481354, 59.446678, 56.194374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.702473, 59.451866, 56.947720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.953735, 59.220940, 56.739059>,  <55.104492, 59.082382, 56.613861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.953735, 59.220940, 56.739059>,  <54.702473, 59.451866, 56.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.953735, 59.220940, 56.739059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747700, 0.633404, 0.199357,
		0.215325, -0.515267, 0.829539,
		0.628156, -0.577320, -0.521653,
		55.142181, 59.047745, 56.582565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.274170, 59.318489, 57.324211>,  <54.702473, 59.451866, 56.947720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.274170, 59.318489, 57.324211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.385162, 59.292107, 56.940826>,  <55.451756, 59.276276, 56.710796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.385162, 59.292107, 56.940826>,  <55.274170, 59.318489, 57.324211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.385162, 59.292107, 56.940826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824127, 0.529092, 0.202177,
		0.493781, -0.845997, 0.201169,
		0.277479, -0.065958, -0.958465,
		55.468407, 59.272320, 56.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.931999, 58.938122, 57.281151>,  <55.274170, 59.318489, 57.324211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.931999, 58.938122, 57.281151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.874138, 59.230579, 57.014465>,  <55.839420, 59.406052, 56.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.874138, 59.230579, 57.014465>,  <55.931999, 58.938122, 57.281151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.874138, 59.230579, 57.014465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860949, 0.425102, 0.279383,
		0.487690, -0.533594, -0.690967,
		-0.144654, 0.731140, -0.666715,
		55.830742, 59.449921, 56.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.459381, 58.948807, 56.730946>,  <55.931999, 58.938122, 57.281151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.459381, 58.948807, 56.730946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.313843, 59.306870, 56.833946>,  <56.226521, 59.521709, 56.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.313843, 59.306870, 56.833946>,  <56.459381, 58.948807, 56.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.313843, 59.306870, 56.833946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891591, 0.254684, 0.374435,
		0.269598, 0.365820, -0.890782,
		-0.363844, 0.895160, 0.257499,
		56.204689, 59.575417, 56.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.893154, 59.553417, 56.531883>,  <56.459381, 58.948807, 56.730946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.893154, 59.553417, 56.531883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.690117, 59.616188, 56.870758>,  <56.568295, 59.653851, 57.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.690117, 59.616188, 56.870758>,  <56.893154, 59.553417, 56.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.690117, 59.616188, 56.870758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861523, 0.079484, 0.501458,
		0.011356, 0.984406, -0.175544,
		-0.507591, 0.156930, 0.847186,
		56.537838, 59.663265, 57.124912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.298824, 59.865494, 56.032669>,  <56.893154, 59.553417, 56.531883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.298824, 59.865494, 56.032669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.581245, 60.123554, 55.915863>,  <57.750698, 60.278389, 55.845779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.581245, 60.123554, 55.915863>,  <57.298824, 59.865494, 56.032669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.581245, 60.123554, 55.915863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327375, 0.068291, 0.942424,
		0.627944, -0.761000, -0.162988,
		0.706054, 0.645147, -0.292015,
		57.793060, 60.317097, 55.828259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.841042, 59.721718, 56.478405>,  <57.298824, 59.865494, 56.032669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.841042, 59.721718, 56.478405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.917526, 60.081623, 56.321503>,  <57.963417, 60.297565, 56.227360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.917526, 60.081623, 56.321503>,  <57.841042, 59.721718, 56.478405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.917526, 60.081623, 56.321503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563651, 0.226516, 0.794348,
		0.803576, -0.372988, -0.463838,
		0.191215, 0.899761, -0.392258,
		57.974892, 60.351551, 56.203827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.538296, 59.902588, 56.429161>,  <57.841042, 59.721718, 56.478405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.538296, 59.902588, 56.429161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.338974, 60.243034, 56.495239>,  <58.219383, 60.447304, 56.534885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.338974, 60.243034, 56.495239>,  <58.538296, 59.902588, 56.429161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.338974, 60.243034, 56.495239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666356, 0.254063, 0.701015,
		0.554678, 0.459397, -0.693749,
		-0.498300, 0.851121, 0.165199,
		58.189484, 60.498371, 56.544800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.106129, 60.393856, 56.376472>,  <58.538296, 59.902588, 56.429161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.106129, 60.393856, 56.376472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.797394, 60.514305, 56.600471>,  <58.612152, 60.586575, 56.734871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.797394, 60.514305, 56.600471>,  <59.106129, 60.393856, 56.376472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.797394, 60.514305, 56.600471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635134, 0.406179, 0.656981,
		-0.029627, 0.862753, -0.504756,
		-0.771834, 0.301124, 0.559998,
		58.565845, 60.604641, 56.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.329594, 60.900822, 55.826172>,  <59.106129, 60.393856, 56.376472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.329594, 60.900822, 55.826172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.619949, 60.754570, 56.059204>,  <59.794163, 60.666821, 56.199024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.619949, 60.754570, 56.059204>,  <59.329594, 60.900822, 55.826172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.619949, 60.754570, 56.059204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226715, -0.672479, -0.704537,
		0.649368, 0.643498, -0.405254,
		0.725893, -0.365627, 0.582577,
		59.837719, 60.644882, 56.233978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.043549, 60.810230, 55.400356>,  <59.329594, 60.900822, 55.826172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.043549, 60.810230, 55.400356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.036804, 60.549202, 55.703369>,  <60.032757, 60.392586, 55.885178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.036804, 60.549202, 55.703369>,  <60.043549, 60.810230, 55.400356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.036804, 60.549202, 55.703369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072425, -0.756451, -0.650028,
		0.997231, 0.043905, 0.060016,
		-0.016859, -0.652575, 0.757537,
		60.031746, 60.353428, 55.930630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.697605, 60.415333, 55.522205>,  <60.043549, 60.810230, 55.400356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.697605, 60.415333, 55.522205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.348801, 60.242409, 55.614029>,  <60.139519, 60.138653, 55.669125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.348801, 60.242409, 55.614029>,  <60.697605, 60.415333, 55.522205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.348801, 60.242409, 55.614029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163638, -0.699476, -0.695670,
		0.461320, -0.569068, 0.680695,
		-0.872013, -0.432314, 0.229561,
		60.087196, 60.112713, 55.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.323135, 60.895042, 55.259644>,  <60.697605, 60.415333, 55.522205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.323135, 60.895042, 55.259644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.376892, 60.561508, 55.473808>,  <61.409145, 60.361389, 55.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.376892, 60.561508, 55.473808>,  <61.323135, 60.895042, 55.259644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.376892, 60.561508, 55.473808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989505, 0.083976, -0.117595,
		0.053093, 0.545594, 0.836366,
		0.134394, -0.833832, 0.535409,
		61.417210, 60.311359, 55.634430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.865879, 61.098740, 55.700462>,  <61.323135, 60.895042, 55.259644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.865879, 61.098740, 55.700462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.834221, 60.700531, 55.679779>,  <61.815224, 60.461605, 55.667370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.834221, 60.700531, 55.679779>,  <61.865879, 61.098740, 55.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.834221, 60.700531, 55.679779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996503, -0.077620, -0.030949,
		0.026797, -0.053978, 0.998183,
		-0.079149, -0.995521, -0.051709,
		61.810474, 60.401875, 55.664265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.294544, 60.822300, 56.211689>,  <61.865879, 61.098740, 55.700462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.294544, 60.822300, 56.211689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.264137, 60.542240, 55.927711>,  <62.245892, 60.374207, 55.757324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.264137, 60.542240, 55.927711>,  <62.294544, 60.822300, 56.211689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.264137, 60.542240, 55.927711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997106, -0.053840, -0.053670,
		-0.000647, -0.711967, 0.702213,
		-0.076018, -0.700146, -0.709942,
		62.241333, 60.332195, 55.714729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.892002, 60.551876, 56.253578>,  <62.294544, 60.822300, 56.211689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.892002, 60.551876, 56.253578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.813095, 60.284874, 55.966377>,  <62.765751, 60.124672, 55.794056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.813095, 60.284874, 55.966377>,  <62.892002, 60.551876, 56.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.813095, 60.284874, 55.966377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955568, -0.294553, 0.011295,
		-0.219029, -0.683870, 0.695952,
		-0.197270, -0.667503, -0.718000,
		62.753914, 60.084621, 55.750977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.078239, 59.813889, 56.503166>,  <62.892002, 60.551876, 56.253578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.078239, 59.813889, 56.503166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.116264, 59.849506, 56.106575>,  <63.139080, 59.870876, 55.868618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.116264, 59.849506, 56.106575>,  <63.078239, 59.813889, 56.503166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.116264, 59.849506, 56.106575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924398, -0.377481, 0.054730,
		-0.369392, -0.921727, -0.118193,
		0.095062, 0.089040, -0.991481,
		63.144783, 59.876217, 55.809132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.161621, 59.666126, 57.239731>,  <63.078239, 59.813889, 56.503166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.161621, 59.666126, 57.239731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.503685, 59.788223, 57.072144>,  <63.708923, 59.861481, 56.971592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.503685, 59.788223, 57.072144>,  <63.161621, 59.666126, 57.239731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.503685, 59.788223, 57.072144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515836, -0.580887, 0.629669,
		-0.051170, -0.754584, -0.654205,
		0.855158, 0.305242, -0.418966,
		63.760231, 59.879795, 56.946453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.657207, 59.121315, 57.071159>,  <63.161621, 59.666126, 57.239731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.657207, 59.121315, 57.071159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.860344, 59.461868, 57.123688>,  <63.982227, 59.666199, 57.155205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.860344, 59.461868, 57.123688>,  <63.657207, 59.121315, 57.071159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.860344, 59.461868, 57.123688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610320, -0.463175, 0.642634,
		0.607953, -0.246205, -0.754835,
		0.507840, 0.851382, 0.131325,
		64.012695, 59.717281, 57.163086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.095184, 58.537636, 57.027035>,  <63.657207, 59.121315, 57.071159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.095184, 58.537636, 57.027035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.426933, 58.349003, 57.146858>,  <64.625984, 58.235821, 57.218754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.426933, 58.349003, 57.146858>,  <64.095184, 58.537636, 57.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.426933, 58.349003, 57.146858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208543, 0.758755, 0.617090,
		-0.518303, -0.449331, 0.727643,
		0.829381, -0.471584, 0.299560,
		64.675751, 58.207527, 57.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.077431, 58.333832, 57.736458>,  <64.095184, 58.537636, 57.027035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.077431, 58.333832, 57.736458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.436081, 58.438255, 57.593399>,  <64.651268, 58.500908, 57.507565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.436081, 58.438255, 57.593399>,  <64.077431, 58.333832, 57.736458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.436081, 58.438255, 57.593399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056933, 0.733039, 0.677799,
		0.439114, -0.628094, 0.642399,
		0.896625, 0.261057, -0.357648,
		64.705070, 58.516571, 57.486103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.418068, 59.002934, 57.873402>,  <64.077431, 58.333832, 57.736458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.418068, 59.002934, 57.873402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.553520, 59.173767, 58.208763>,  <64.634789, 59.276268, 58.409981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.553520, 59.173767, 58.208763>,  <64.418068, 59.002934, 57.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.553520, 59.173767, 58.208763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929361, -0.291054, -0.227104,
		0.147028, 0.856086, -0.495479,
		0.338632, 0.427088, 0.838406,
		64.655113, 59.301895, 58.460285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.057335, 59.497677, 57.746433>,  <64.418068, 59.002934, 57.873402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.057335, 59.497677, 57.746433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.071373, 59.260620, 58.068314>,  <65.079796, 59.118385, 58.261440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.071373, 59.260620, 58.068314>,  <65.057335, 59.497677, 57.746433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.071373, 59.260620, 58.068314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975675, -0.154028, -0.155991,
		0.216394, 0.790601, 0.572821,
		0.035096, -0.592643, 0.804700,
		65.081902, 59.082829, 58.309723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.452942, 59.818844, 58.336979>,  <65.057335, 59.497677, 57.746433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.452942, 59.818844, 58.336979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.461365, 59.418945, 58.333786>,  <65.466423, 59.179005, 58.331871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.461365, 59.418945, 58.333786>,  <65.452942, 59.818844, 58.336979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.461365, 59.418945, 58.333786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996262, 0.021659, -0.083625,
		0.083776, -0.006187, 0.996465,
		0.021065, -0.999746, -0.007979,
		65.467682, 59.119022, 58.331394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.952232, 59.511719, 58.952579>,  <65.452942, 59.818844, 58.336979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.952232, 59.511719, 58.952579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.875465, 59.231010, 58.678154>,  <65.829407, 59.062584, 58.513500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.875465, 59.231010, 58.678154>,  <65.952232, 59.511719, 58.952579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.875465, 59.231010, 58.678154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980526, -0.166778, -0.103704,
		-0.041644, -0.692607, 0.720112,
		-0.191925, -0.701770, -0.686064,
		65.817886, 59.020481, 58.472336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.039185, 58.712330, 59.063858>,  <65.952232, 59.511719, 58.952579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.039185, 58.712330, 59.063858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135292, 58.878204, 58.712791>,  <66.192955, 58.977730, 58.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135292, 58.878204, 58.712791>,  <66.039185, 58.712330, 59.063858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.135292, 58.878204, 58.712791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955801, -0.258901, 0.139341,
		-0.169447, -0.872358, -0.458563,
		0.240277, 0.414684, -0.877670,
		66.207375, 59.002609, 58.449490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.583336, 58.224903, 58.836555>,  <66.039185, 58.712330, 59.063858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.583336, 58.224903, 58.836555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.623322, 58.578053, 58.653015>,  <66.647308, 58.789944, 58.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.623322, 58.578053, 58.653015>,  <66.583336, 58.224903, 58.836555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.623322, 58.578053, 58.653015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993328, -0.115207, -0.005278,
		-0.057522, -0.455258, -0.888500,
		0.099958, 0.882875, -0.458847,
		66.653313, 58.842915, 58.515362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.680206, 58.177685, 58.111862>,  <66.583336, 58.224903, 58.836555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.680206, 58.177685, 58.111862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.838776, 58.523727, 58.234787>,  <66.933914, 58.731354, 58.308540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.838776, 58.523727, 58.234787>,  <66.680206, 58.177685, 58.111862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.838776, 58.523727, 58.234787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917463, -0.361132, -0.166871,
		-0.033381, 0.348099, -0.936863,
		0.396419, 0.865107, 0.307313,
		66.957703, 58.783260, 58.326981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.169640, 58.526482, 57.580036>,  <66.680206, 58.177685, 58.111862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.169640, 58.526482, 57.580036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275528, 58.680847, 57.933533>,  <67.339058, 58.773464, 58.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275528, 58.680847, 57.933533>,  <67.169640, 58.526482, 57.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.275528, 58.680847, 57.933533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964319, -0.102830, -0.243955,
		-0.003270, 0.916787, -0.399362,
		0.264721, 0.385911, 0.883740,
		67.354942, 58.796619, 58.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.727890, 59.091160, 57.516727>,  <67.169640, 58.526482, 57.580036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.727890, 59.091160, 57.516727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.755943, 58.951576, 57.890533>,  <67.772774, 58.867828, 58.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.755943, 58.951576, 57.890533>,  <67.727890, 59.091160, 57.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.755943, 58.951576, 57.890533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997458, 0.012650, -0.070130,
		0.012650, 0.937054, 0.348956,
		0.070130, -0.348956, 0.934511,
		67.776985, 58.846889, 58.170887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.945145, 59.561203, 58.127201>,  <67.727890, 59.091160, 57.516727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.945145, 59.561203, 58.127201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.063469, 59.179218, 58.136497>,  <68.134460, 58.950027, 58.142075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.063469, 59.179218, 58.136497>,  <67.945145, 59.561203, 58.127201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.063469, 59.179218, 58.136497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952492, 0.296709, 0.068717,
		-0.072516, 0.001806, 0.997366,
		0.295803, -0.954966, 0.023236,
		68.152206, 58.892727, 58.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.374603, 59.361423, 58.737595>,  <67.945145, 59.561203, 58.127201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.374603, 59.361423, 58.737595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.481094, 59.120209, 58.436806>,  <68.544991, 58.975479, 58.256332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.481094, 59.120209, 58.436806>,  <68.374603, 59.361423, 58.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.481094, 59.120209, 58.436806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959125, 0.243370, 0.144398,
		0.095930, -0.759680, 0.643182,
		0.266227, -0.603040, -0.751975,
		68.560959, 58.939297, 58.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.869095, 58.671459, 58.888210>,  <68.374603, 59.361423, 58.737595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.869095, 58.671459, 58.888210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.881058, 58.917042, 58.572701>,  <68.888237, 59.064392, 58.383396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.881058, 58.917042, 58.572701>,  <68.869095, 58.671459, 58.888210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.881058, 58.917042, 58.572701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804440, 0.453598, 0.383568,
		0.593280, -0.645994, -0.480323,
		0.029909, 0.613954, -0.788775,
		68.890030, 59.101227, 58.336067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.119331, 59.313404, 59.247715>,  <68.869095, 58.671459, 58.888210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.119331, 59.313404, 59.247715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510071, 59.392380, 59.214729>,  <69.744514, 59.439766, 59.194939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510071, 59.392380, 59.214729>,  <69.119331, 59.313404, 59.247715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.510071, 59.392380, 59.214729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053662, -0.147029, -0.987675,
		-0.207130, 0.969227, -0.133029,
		0.976840, 0.197439, -0.082465,
		69.803123, 59.451611, 59.189991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.259911, 60.040188, 58.939861>,  <69.119331, 59.313404, 59.247715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.259911, 60.040188, 58.939861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.540405, 59.781197, 58.820496>,  <69.708702, 59.625801, 58.748878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.540405, 59.781197, 58.820496>,  <69.259911, 60.040188, 58.939861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.540405, 59.781197, 58.820496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200017, 0.223084, -0.954058,
		0.684298, 0.728705, 0.026928,
		0.701234, -0.647474, -0.298410,
		69.750778, 59.586956, 58.730972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.863197, 60.296303, 58.566360>,  <69.259911, 60.040188, 58.939861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.863197, 60.296303, 58.566360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.800896, 59.919952, 58.446030>,  <69.763512, 59.694141, 58.373829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.800896, 59.919952, 58.446030>,  <69.863197, 60.296303, 58.566360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.800896, 59.919952, 58.446030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066190, 0.313803, -0.947178,
		0.985576, -0.127615, -0.111153,
		-0.155754, -0.940873, -0.300830,
		69.754166, 59.637691, 58.355782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.588364, 60.370464, 57.952305>,  <69.863197, 60.296303, 58.566360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.588364, 60.370464, 57.952305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.721893, 59.993423, 57.955421>,  <69.802010, 59.767200, 57.957291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.721893, 59.993423, 57.955421>,  <69.588364, 60.370464, 57.952305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.721893, 59.993423, 57.955421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103165, -0.044749, -0.993657,
		0.936972, 0.330905, -0.112182,
		0.333827, -0.942602, 0.007791,
		69.822044, 59.710644, 57.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.138481, 60.354717, 57.436802>,  <69.588364, 60.370464, 57.952305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.138481, 60.354717, 57.436802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.918251, 60.024055, 57.483292>,  <69.786110, 59.825661, 57.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.918251, 60.024055, 57.483292>,  <70.138481, 60.354717, 57.436802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.918251, 60.024055, 57.483292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268660, 0.043645, -0.962246,
		0.790369, -0.561018, -0.246119,
		-0.550580, -0.826652, 0.116227,
		69.753075, 59.776058, 57.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.608902, 59.911190, 57.077080>,  <70.138481, 60.354717, 57.436802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.608902, 59.911190, 57.077080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797218, 60.254093, 57.160461>,  <70.910210, 60.459835, 57.210491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797218, 60.254093, 57.160461>,  <70.608902, 59.911190, 57.077080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.797218, 60.254093, 57.160461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046779, -0.211690, 0.976217,
		0.881001, -0.469351, -0.059561,
		0.470797, 0.857262, 0.208454,
		70.938454, 60.511272, 57.223000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.156532, 59.794743, 57.576969>,  <70.608902, 59.911190, 57.077080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.156532, 59.794743, 57.576969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.082047, 60.183167, 57.636803>,  <71.037354, 60.416222, 57.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.082047, 60.183167, 57.636803>,  <71.156532, 59.794743, 57.576969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.082047, 60.183167, 57.636803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077450, -0.137268, 0.987501,
		0.979453, 0.195465, -0.049648,
		-0.186207, 0.971057, 0.149586,
		71.026184, 60.474483, 57.681679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.649727, 59.942066, 58.194263>,  <71.156532, 59.794743, 57.576969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.649727, 59.942066, 58.194263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413498, 60.001930, 58.511459>,  <71.271759, 60.037849, 58.701775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413498, 60.001930, 58.511459>,  <71.649727, 59.942066, 58.194263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.413498, 60.001930, 58.511459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799878, -0.021574, 0.599775,
		0.106872, 0.988502, -0.106971,
		-0.590571, 0.149663, 0.792986,
		71.236328, 60.046829, 58.749355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.801071, 60.566025, 58.604282>,  <71.649727, 59.942066, 58.194263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.801071, 60.566025, 58.604282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.677406, 60.243683, 58.806282>,  <71.603203, 60.050278, 58.927483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.677406, 60.243683, 58.806282>,  <71.801071, 60.566025, 58.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.677406, 60.243683, 58.806282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827505, 0.033734, 0.560445,
		-0.468670, 0.591157, 0.656416,
		-0.309168, -0.805851, 0.504995,
		71.584656, 60.001926, 58.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.634079, 60.624870, 59.386456>,  <71.801071, 60.566025, 58.604282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.634079, 60.624870, 59.386456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.783676, 60.263809, 59.301285>,  <71.873436, 60.047173, 59.250183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.783676, 60.263809, 59.301285>,  <71.634079, 60.624870, 59.386456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.783676, 60.263809, 59.301285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854271, 0.245911, 0.457984,
		-0.361040, -0.353184, 0.863082,
		0.373994, -0.902656, -0.212931,
		71.895874, 59.993011, 59.237404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.855408, 60.096558, 59.983204>,  <71.634079, 60.624870, 59.386456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.855408, 60.096558, 59.983204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.080475, 60.084862, 59.652740>,  <72.215515, 60.077843, 59.454464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.080475, 60.084862, 59.652740>,  <71.855408, 60.096558, 59.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.080475, 60.084862, 59.652740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824425, 0.093568, 0.558183,
		0.060981, -0.995183, 0.076754,
		0.562677, -0.029239, -0.826160,
		72.249275, 60.076088, 59.404892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.373611, 59.605366, 60.124653>,  <71.855408, 60.096558, 59.983204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.373611, 59.605366, 60.124653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496002, 59.879978, 59.860817>,  <72.569435, 60.044746, 59.702515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496002, 59.879978, 59.860817>,  <72.373611, 59.605366, 60.124653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.496002, 59.879978, 59.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849380, 0.116086, 0.514857,
		0.430032, -0.717778, -0.547602,
		0.305984, 0.686527, -0.659586,
		72.587799, 60.085938, 59.662941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.065598, 58.885952, 60.222847>,  <72.373611, 59.605366, 60.124653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.065598, 58.885952, 60.222847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.304062, 58.817677, 59.909042>,  <72.447144, 58.776711, 59.720760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.304062, 58.817677, 59.909042>,  <72.065598, 58.885952, 60.222847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.304062, 58.817677, 59.909042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374655, -0.805081, 0.459867,
		-0.710089, -0.568076, -0.416008,
		0.596160, -0.170687, -0.784512,
		72.482910, 58.766472, 59.673687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.109505, 58.187695, 60.105206>,  <72.065598, 58.885952, 60.222847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.109505, 58.187695, 60.105206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.427391, 58.305885, 59.893120>,  <72.618118, 58.376801, 59.765869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.427391, 58.305885, 59.893120>,  <72.109505, 58.187695, 60.105206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.427391, 58.305885, 59.893120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553132, -0.712246, 0.432147,
		-0.249957, -0.636712, -0.729465,
		0.794711, 0.295473, -0.530217,
		72.665802, 58.394527, 59.734055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.460327, 57.580589, 59.955742>,  <72.109505, 58.187695, 60.105206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.460327, 57.580589, 59.955742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.699455, 57.899948, 59.926971>,  <72.842934, 58.091564, 59.909710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.699455, 57.899948, 59.926971>,  <72.460327, 57.580589, 59.955742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.699455, 57.899948, 59.926971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635208, -0.417062, 0.650053,
		0.489001, -0.434305, -0.756477,
		0.597819, 0.798397, -0.071930,
		72.878799, 58.139469, 59.905392>
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
