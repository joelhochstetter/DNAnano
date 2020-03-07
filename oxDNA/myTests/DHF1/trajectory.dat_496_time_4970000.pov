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
	<4.134290, 2.637901, 0.909509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217570, 2.355833, 1.180622>,  <4.267539, 2.186592, 1.343290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217570, 2.355833, 1.180622>,  <4.134290, 2.637901, 0.909509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217570, 2.355833, 1.180622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484542, -0.527595, -0.697755,
		0.849630, 0.473688, 0.231839,
		0.208201, -0.705169, 0.677782,
		4.280031, 2.144282, 1.383957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.893588, 2.569125, 0.969614>,  <4.134290, 2.637901, 0.909509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.893588, 2.569125, 0.969614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703503, 2.232151, 1.071182>,  <4.589451, 2.029967, 1.132123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703503, 2.232151, 1.071182>,  <4.893588, 2.569125, 0.969614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.703503, 2.232151, 1.071182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490009, -0.493084, -0.718859,
		0.730796, -0.217189, 0.647121,
		-0.475214, -0.842435, 0.253920,
		4.560938, 1.979421, 1.147358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383587, 2.037002, 1.057631>,  <4.893588, 2.569125, 0.969614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383587, 2.037002, 1.057631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.037745, 1.872282, 0.942478>,  <4.830239, 1.773450, 0.873387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.037745, 1.872282, 0.942478>,  <5.383587, 2.037002, 1.057631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.037745, 1.872282, 0.942478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465472, -0.440739, -0.767519,
		0.189183, -0.797603, 0.572747,
		-0.864607, -0.411799, -0.287881,
		4.778362, 1.748742, 0.856114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.562629, 1.361267, 0.843283>,  <5.383587, 2.037002, 1.057631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.562629, 1.361267, 0.843283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.221266, 1.462252, 0.660873>,  <5.016448, 1.522843, 0.551428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.221266, 1.462252, 0.660873>,  <5.562629, 1.361267, 0.843283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.221266, 1.462252, 0.660873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217204, -0.623058, -0.751413,
		-0.473831, -0.740312, 0.476888,
		-0.853409, 0.252460, -0.456023,
		4.965243, 1.537990, 0.524066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.261430, 0.706508, 0.631913>,  <5.562629, 1.361267, 0.843283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.261430, 0.706508, 0.631913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.127608, 1.008974, 0.406956>,  <5.047316, 1.190454, 0.271981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.127608, 1.008974, 0.406956>,  <5.261430, 0.706508, 0.631913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.127608, 1.008974, 0.406956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256124, -0.501358, -0.826463,
		-0.906904, -0.420539, -0.025942,
		-0.334553, 0.756166, -0.562394,
		5.027242, 1.235824, 0.238238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927617, 0.363655, 0.006866>,  <5.261430, 0.706508, 0.631913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927617, 0.363655, 0.006866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.968894, 0.738333, -0.126972>,  <4.993660, 0.963140, -0.207275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.968894, 0.738333, -0.126972>,  <4.927617, 0.363655, 0.006866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.968894, 0.738333, -0.126972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459977, -0.343200, -0.818923,
		-0.881914, -0.069399, -0.466274,
		0.103193, 0.936695, -0.334594,
		4.999852, 1.019341, -0.227351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.558762, 0.430947, -0.599960>,  <4.927617, 0.363655, 0.006866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.558762, 0.430947, -0.599960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.866720, 0.685194, -0.622768>,  <5.051495, 0.837742, -0.636453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.866720, 0.685194, -0.622768>,  <4.558762, 0.430947, -0.599960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.866720, 0.685194, -0.622768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264030, -0.398599, -0.878298,
		-0.580989, 0.661143, -0.474701,
		0.769896, 0.635617, -0.057020,
		5.097689, 0.875879, -0.639875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.504652, 0.717344, -1.259324>,  <4.558762, 0.430947, -0.599960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.504652, 0.717344, -1.259324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880470, 0.734150, -1.123390>,  <5.105961, 0.744233, -1.041830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880470, 0.734150, -1.123390>,  <4.504652, 0.717344, -1.259324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880470, 0.734150, -1.123390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310930, -0.520407, -0.795298,
		0.143439, 0.852884, -0.502010,
		0.939547, 0.042014, 0.339834,
		5.162334, 0.746754, -1.021440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.601640, -0.430615, 3.297457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.830387, -0.108627, 3.234222>,  <0.967635, 0.084565, 3.196282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.830387, -0.108627, 3.234222>,  <0.601640, -0.430615, 3.297457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.830387, -0.108627, 3.234222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223007, 0.337996, 0.914345,
		0.789453, -0.487629, 0.372802,
		0.571867, 0.804970, -0.158087,
		1.001947, 0.132864, 3.186796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.066851, -0.279959, 3.872463>,  <0.601640, -0.430615, 3.297457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.066851, -0.279959, 3.872463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965046, 0.060650, 3.689102>,  <0.903963, 0.265015, 3.579086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965046, 0.060650, 3.689102>,  <1.066851, -0.279959, 3.872463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.965046, 0.060650, 3.689102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156957, 0.431353, 0.888425,
		0.954247, 0.298065, 0.023868,
		-0.254513, 0.851523, -0.458401,
		0.888692, 0.316107, 3.551582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399169, 0.316494, 4.272902>,  <1.066851, -0.279959, 3.872463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399169, 0.316494, 4.272902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.091248, 0.452099, 4.056580>,  <0.906495, 0.533462, 3.926786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.091248, 0.452099, 4.056580>,  <1.399169, 0.316494, 4.272902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.091248, 0.452099, 4.056580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216910, 0.657915, 0.721178,
		0.600294, 0.672472, -0.432930,
		-0.769804, 0.339012, -0.540808,
		0.860306, 0.553802, 3.894337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.344238, 1.050312, 4.482040>,  <1.399169, 0.316494, 4.272902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.344238, 1.050312, 4.482040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.994858, 1.002953, 4.293121>,  <0.785230, 0.974537, 4.179770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.994858, 1.002953, 4.293121>,  <1.344238, 1.050312, 4.482040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.994858, 1.002953, 4.293121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449817, 0.567558, 0.689596,
		0.186409, 0.814776, -0.548992,
		-0.873451, -0.118400, -0.472298,
		0.732823, 0.967433, 4.151432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018447, 1.742518, 4.405672>,  <1.344238, 1.050312, 4.482040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018447, 1.742518, 4.405672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.736164, 1.460472, 4.377983>,  <0.566794, 1.291245, 4.361370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.736164, 1.460472, 4.377983>,  <1.018447, 1.742518, 4.405672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.736164, 1.460472, 4.377983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582276, 0.521541, 0.623658,
		-0.403649, 0.480426, -0.778626,
		-0.705707, -0.705114, -0.069221,
		0.524452, 1.248938, 4.357217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.394542, 2.175276, 4.449656>,  <1.018447, 1.742518, 4.405672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.394542, 2.175276, 4.449656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264839, 1.805668, 4.530693>,  <0.187018, 1.583903, 4.579315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264839, 1.805668, 4.530693>,  <0.394542, 2.175276, 4.449656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264839, 1.805668, 4.530693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596646, 0.365963, 0.714202,
		-0.734079, 0.110709, -0.669979,
		-0.324256, -0.924021, 0.202592,
		0.167562, 1.528462, 4.591471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.327338, 2.275479, 4.536952>,  <0.394542, 2.175276, 4.449656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.327338, 2.275479, 4.536952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.243233, 1.940784, 4.739204>,  <-0.192769, 1.739968, 4.860556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.243233, 1.940784, 4.739204>,  <-0.327338, 2.275479, 4.536952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.243233, 1.940784, 4.739204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605498, 0.294601, 0.739312,
		-0.767568, -0.461608, -0.444698,
		0.210263, -0.836737, 0.505629,
		-0.180154, 1.689763, 4.890893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.952622, 2.096604, 4.793262>,  <-0.327338, 2.275479, 4.536952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.952622, 2.096604, 4.793262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.681652, 1.899750, 5.011948>,  <-0.519070, 1.781637, 5.143159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.681652, 1.899750, 5.011948>,  <-0.952622, 2.096604, 4.793262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.681652, 1.899750, 5.011948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410610, 0.363675, 0.836146,
		-0.610325, -0.790913, 0.044286,
		0.677424, -0.492136, 0.546716,
		-0.478425, 1.752109, 5.175962>
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
