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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<36.602547, 46.468990, 55.849888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982353, 46.492271, 55.973198>,  <37.210236, 46.506241, 56.047184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982353, 46.492271, 55.973198>,  <36.602547, 46.468990, 55.849888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982353, 46.492271, 55.973198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312480, -0.088244, -0.945817,
		-0.027848, 0.994397, -0.101977,
		0.949516, 0.058205, 0.308272,
		37.267208, 46.509731, 56.065678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010452, 47.078850, 55.456715>,  <36.602547, 46.468990, 55.849888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010452, 47.078850, 55.456715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270767, 46.800179, 55.577461>,  <37.426956, 46.632977, 55.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270767, 46.800179, 55.577461>,  <37.010452, 47.078850, 55.456715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270767, 46.800179, 55.577461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407862, -0.014567, -0.912927,
		0.640414, 0.717235, 0.274669,
		0.650783, -0.696679, 0.301862,
		37.466003, 46.591175, 55.668018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714577, 47.268028, 55.186329>,  <37.010452, 47.078850, 55.456715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714577, 47.268028, 55.186329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713150, 46.875473, 55.263126>,  <37.712296, 46.639938, 55.309204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713150, 46.875473, 55.263126>,  <37.714577, 47.268028, 55.186329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713150, 46.875473, 55.263126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400122, -0.177358, -0.899136,
		0.916455, 0.073614, 0.393308,
		-0.003567, -0.981389, 0.191995,
		37.712078, 46.581055, 55.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407692, 47.053444, 54.886555>,  <37.714577, 47.268028, 55.186329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407692, 47.053444, 54.886555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191589, 46.719109, 54.925529>,  <38.061928, 46.518509, 54.948914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191589, 46.719109, 54.925529>,  <38.407692, 47.053444, 54.886555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191589, 46.719109, 54.925529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273509, -0.283922, -0.919011,
		0.795810, -0.469854, 0.382000,
		-0.540259, -0.835838, 0.097438,
		38.029510, 46.468357, 54.954762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822289, 46.505756, 54.732502>,  <38.407692, 47.053444, 54.886555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822289, 46.505756, 54.732502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448334, 46.378357, 54.669838>,  <38.223961, 46.301918, 54.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448334, 46.378357, 54.669838>,  <38.822289, 46.505756, 54.732502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448334, 46.378357, 54.669838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276539, -0.376901, -0.884009,
		0.222511, -0.869772, 0.440437,
		-0.934888, -0.318500, -0.156661,
		38.167866, 46.282806, 54.622841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897591, 45.791935, 54.541428>,  <38.822289, 46.505756, 54.732502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897591, 45.791935, 54.541428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530220, 45.892136, 54.418953>,  <38.309799, 45.952255, 54.345470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530220, 45.892136, 54.418953>,  <38.897591, 45.791935, 54.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530220, 45.892136, 54.418953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201118, -0.370829, -0.906663,
		-0.340657, -0.894281, 0.290199,
		-0.918425, 0.250496, -0.306181,
		38.254692, 45.967285, 54.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653809, 45.240929, 54.214268>,  <38.897591, 45.791935, 54.541428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653809, 45.240929, 54.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394310, 45.515816, 54.083511>,  <38.238613, 45.680748, 54.005058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394310, 45.515816, 54.083511>,  <38.653809, 45.240929, 54.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394310, 45.515816, 54.083511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163033, -0.294072, -0.941776,
		-0.743338, -0.664266, 0.078738,
		-0.648744, 0.687221, -0.326892,
		38.199688, 45.721981, 53.985443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364784, 44.871391, 53.710457>,  <38.653809, 45.240929, 54.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364784, 44.871391, 53.710457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253723, 45.243233, 53.613506>,  <38.187088, 45.466339, 53.555336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253723, 45.243233, 53.613506>,  <38.364784, 44.871391, 53.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253723, 45.243233, 53.613506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043496, -0.239870, -0.969830,
		-0.959697, -0.279816, 0.026165,
		-0.277650, 0.929605, -0.242373,
		38.170429, 45.522114, 53.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037014, 44.843124, 53.076012>,  <38.364784, 44.871391, 53.710457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037014, 44.843124, 53.076012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151245, 45.225929, 53.096321>,  <38.219784, 45.455612, 53.108505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151245, 45.225929, 53.096321>,  <38.037014, 44.843124, 53.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151245, 45.225929, 53.096321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422176, -0.078065, -0.903146,
		-0.860355, 0.279356, -0.426320,
		0.285580, 0.957009, 0.050774,
		38.236919, 45.513031, 53.111553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796352, 45.203770, 52.503887>,  <38.037014, 44.843124, 53.076012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796352, 45.203770, 52.503887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083153, 45.455662, 52.623459>,  <38.255234, 45.606796, 52.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083153, 45.455662, 52.623459>,  <37.796352, 45.203770, 52.503887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083153, 45.455662, 52.623459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385760, -0.001263, -0.922598,
		-0.580607, 0.776815, -0.243830,
		0.716996, 0.629727, 0.298931,
		38.298252, 45.644581, 52.713139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798595, 45.582207, 51.967388>,  <37.796352, 45.203770, 52.503887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798595, 45.582207, 51.967388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140594, 45.648418, 52.163994>,  <38.345795, 45.688145, 52.281956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140594, 45.648418, 52.163994>,  <37.798595, 45.582207, 51.967388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140594, 45.648418, 52.163994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490680, 0.048776, -0.869973,
		-0.167976, 0.984999, -0.039517,
		0.854995, 0.165525, 0.491513,
		38.397095, 45.698074, 52.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125637, 46.237099, 51.651295>,  <37.798595, 45.582207, 51.967388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125637, 46.237099, 51.651295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422844, 46.036888, 51.829010>,  <38.601170, 45.916759, 51.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422844, 46.036888, 51.829010>,  <38.125637, 46.237099, 51.651295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422844, 46.036888, 51.829010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494125, -0.037470, -0.868583,
		0.451397, 0.864909, 0.219483,
		0.743021, -0.500528, 0.444287,
		38.645752, 45.886730, 51.962296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747692, 46.475174, 51.348610>,  <38.125637, 46.237099, 51.651295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747692, 46.475174, 51.348610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891144, 46.147934, 51.528427>,  <38.977215, 45.951588, 51.636318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891144, 46.147934, 51.528427>,  <38.747692, 46.475174, 51.348610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891144, 46.147934, 51.528427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673241, -0.106912, -0.731654,
		0.646630, 0.565045, 0.512439,
		0.358632, -0.818104, 0.449544,
		38.998734, 45.902504, 51.663292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497639, 46.578190, 51.416748>,  <38.747692, 46.475174, 51.348610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497639, 46.578190, 51.416748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424576, 46.185013, 51.425369>,  <39.380737, 45.949108, 51.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424576, 46.185013, 51.425369>,  <39.497639, 46.578190, 51.416748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424576, 46.185013, 51.425369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676872, -0.141617, -0.722349,
		0.713078, -0.117355, 0.691193,
		-0.182656, -0.982941, 0.021549,
		39.369778, 45.890129, 51.431835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153435, 46.315952, 51.350086>,  <39.497639, 46.578190, 51.416748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153435, 46.315952, 51.350086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907806, 46.011883, 51.265190>,  <39.760429, 45.829441, 51.214252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907806, 46.011883, 51.265190>,  <40.153435, 46.315952, 51.350086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907806, 46.011883, 51.265190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521851, -0.189324, -0.831762,
		0.592104, -0.621521, 0.512957,
		-0.614073, -0.760176, -0.212242,
		39.723583, 45.783829, 51.201519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610767, 45.813438, 51.150478>,  <40.153435, 46.315952, 51.350086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610767, 45.813438, 51.150478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249977, 45.703503, 51.017273>,  <40.033501, 45.637543, 50.937347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249977, 45.703503, 51.017273>,  <40.610767, 45.813438, 51.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249977, 45.703503, 51.017273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418418, -0.365962, -0.831263,
		0.106592, -0.889121, 0.445087,
		-0.901978, -0.274838, -0.333015,
		39.979385, 45.621052, 50.917370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664139, 45.165638, 51.032352>,  <40.610767, 45.813438, 51.150478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664139, 45.165638, 51.032352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378960, 45.296238, 50.784126>,  <40.207851, 45.374596, 50.635189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378960, 45.296238, 50.784126>,  <40.664139, 45.165638, 51.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378960, 45.296238, 50.784126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502012, -0.380224, -0.776797,
		-0.489576, -0.865349, 0.107175,
		-0.712951, 0.326498, -0.620564,
		40.165073, 45.394188, 50.597958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597725, 44.708134, 50.528988>,  <40.664139, 45.165638, 51.032352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597725, 44.708134, 50.528988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431648, 45.022572, 50.345829>,  <40.332005, 45.211235, 50.235931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431648, 45.022572, 50.345829>,  <40.597725, 44.708134, 50.528988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431648, 45.022572, 50.345829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315295, -0.347798, -0.882964,
		-0.853351, -0.510970, -0.103450,
		-0.415189, 0.786095, -0.457900,
		40.307091, 45.258400, 50.208458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406864, 44.485325, 49.923496>,  <40.597725, 44.708134, 50.528988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406864, 44.485325, 49.923496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376244, 44.876179, 49.844154>,  <40.357872, 45.110691, 49.796551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376244, 44.876179, 49.844154>,  <40.406864, 44.485325, 49.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376244, 44.876179, 49.844154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386565, -0.154289, -0.909265,
		-0.919080, -0.146279, -0.365916,
		-0.076550, 0.977137, -0.198350,
		40.353279, 45.169319, 49.784649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057606, 44.528076, 49.246204>,  <40.406864, 44.485325, 49.923496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057606, 44.528076, 49.246204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265976, 44.865070, 49.301125>,  <40.390999, 45.067268, 49.334076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265976, 44.865070, 49.301125>,  <40.057606, 44.528076, 49.246204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265976, 44.865070, 49.301125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325033, -0.047039, -0.944532,
		-0.789298, 0.536658, -0.298340,
		0.520924, 0.842488, 0.137304,
		40.422253, 45.117817, 49.342316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922626, 44.837383, 48.616741>,  <40.057606, 44.528076, 49.246204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922626, 44.837383, 48.616741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230049, 45.024445, 48.791382>,  <40.414501, 45.136681, 48.896168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230049, 45.024445, 48.791382>,  <39.922626, 44.837383, 48.616741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230049, 45.024445, 48.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444057, 0.101360, -0.890247,
		-0.460579, 0.878082, -0.129763,
		0.768557, 0.467651, 0.436603,
		40.460617, 45.164742, 48.922363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998913, 45.434227, 48.254303>,  <39.922626, 44.837383, 48.616741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998913, 45.434227, 48.254303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348984, 45.365276, 48.435120>,  <40.559029, 45.323906, 48.543610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348984, 45.365276, 48.435120>,  <39.998913, 45.434227, 48.254303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348984, 45.365276, 48.435120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434698, -0.129959, -0.891150,
		0.212357, 0.976421, -0.038807,
		0.875181, -0.172373, 0.452046,
		40.611538, 45.313564, 48.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466057, 45.850891, 47.918152>,  <39.998913, 45.434227, 48.254303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466057, 45.850891, 47.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706604, 45.584850, 48.095242>,  <40.850933, 45.425228, 48.201496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706604, 45.584850, 48.095242>,  <40.466057, 45.850891, 47.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706604, 45.584850, 48.095242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545256, -0.063386, -0.835869,
		0.583997, 0.744062, 0.324530,
		0.601368, -0.665097, 0.442721,
		40.887012, 45.385323, 48.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046574, 46.084755, 47.768036>,  <40.466057, 45.850891, 47.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046574, 46.084755, 47.768036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131035, 45.709171, 47.876678>,  <41.181713, 45.483822, 47.941864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131035, 45.709171, 47.876678>,  <41.046574, 46.084755, 47.768036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131035, 45.709171, 47.876678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639527, -0.077428, -0.764859,
		0.739201, 0.335204, 0.584140,
		0.211156, -0.938958, 0.271607,
		41.194382, 45.427483, 47.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760456, 46.024067, 47.736160>,  <41.046574, 46.084755, 47.768036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760456, 46.024067, 47.736160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625648, 45.649174, 47.700359>,  <41.544765, 45.424236, 47.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625648, 45.649174, 47.700359>,  <41.760456, 46.024067, 47.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625648, 45.649174, 47.700359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634459, -0.155841, -0.757084,
		0.695617, -0.311936, 0.647158,
		-0.337015, -0.937235, -0.089505,
		41.524544, 45.368004, 47.673508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325230, 45.609100, 47.781097>,  <41.760456, 46.024067, 47.736160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325230, 45.609100, 47.781097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 45.416317, 47.588181>,  <41.857059, 45.300648, 47.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 45.416317, 47.588181>,  <42.325230, 45.609100, 47.781097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032623, 45.416317, 47.588181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602076, -0.124645, -0.788649,
		0.319979, -0.867285, 0.381354,
		-0.731518, -0.481956, -0.482288,
		41.813168, 45.271729, 47.443493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670254, 45.165619, 47.288548>,  <42.325230, 45.609100, 47.781097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670254, 45.165619, 47.288548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295990, 45.190102, 47.149525>,  <42.071430, 45.204792, 47.066113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295990, 45.190102, 47.149525>,  <42.670254, 45.165619, 47.288548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295990, 45.190102, 47.149525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337858, -0.129148, -0.932295,
		-0.101944, -0.989735, 0.100161,
		-0.935660, 0.061201, -0.347555,
		42.015293, 45.208462, 47.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672543, 44.756344, 46.681984>,  <42.670254, 45.165619, 47.288548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672543, 44.756344, 46.681984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329437, 44.955963, 46.632671>,  <42.123573, 45.075733, 46.603085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329437, 44.955963, 46.632671>,  <42.672543, 44.756344, 46.681984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329437, 44.955963, 46.632671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004533, -0.247165, -0.968963,
		-0.514032, -0.830578, 0.214270,
		-0.857759, 0.499049, -0.123285,
		42.072109, 45.105679, 46.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385914, 44.337063, 46.241436>,  <42.672543, 44.756344, 46.681984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385914, 44.337063, 46.241436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184776, 44.682259, 46.221863>,  <42.064095, 44.889378, 46.210121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184776, 44.682259, 46.221863>,  <42.385914, 44.337063, 46.241436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184776, 44.682259, 46.221863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131905, -0.132557, -0.982359,
		-0.854254, -0.487518, 0.180488,
		-0.502843, 0.862992, -0.048931,
		42.033924, 44.941154, 46.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904781, 44.166988, 45.719555>,  <42.385914, 44.337063, 46.241436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904781, 44.166988, 45.719555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885796, 44.566528, 45.716949>,  <41.874405, 44.806252, 45.715385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885796, 44.566528, 45.716949>,  <41.904781, 44.166988, 45.719555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885796, 44.566528, 45.716949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267564, -0.018998, -0.963353,
		-0.962370, -0.043983, 0.268158,
		-0.047466, 0.998852, -0.006514,
		41.871555, 44.866184, 45.714996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279247, 44.266888, 45.500195>,  <41.904781, 44.166988, 45.719555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279247, 44.266888, 45.500195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505112, 44.587082, 45.419815>,  <41.640633, 44.779198, 45.371586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505112, 44.587082, 45.419815>,  <41.279247, 44.266888, 45.500195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505112, 44.587082, 45.419815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195028, -0.107169, -0.974925,
		-0.801946, 0.589698, 0.095601,
		0.564665, 0.800482, -0.200951,
		41.674511, 44.827225, 45.359531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954342, 44.649895, 44.933971>,  <41.279247, 44.266888, 45.500195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954342, 44.649895, 44.933971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340546, 44.753925, 44.938831>,  <41.572269, 44.816341, 44.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340546, 44.753925, 44.938831>,  <40.954342, 44.649895, 44.933971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340546, 44.753925, 44.938831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075695, -0.235748, -0.968862,
		-0.249110, 0.936368, -0.247304,
		0.965513, 0.260072, 0.012152,
		41.630199, 44.831947, 44.942478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939705, 44.966919, 44.399101>,  <40.954342, 44.649895, 44.933971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939705, 44.966919, 44.399101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315819, 44.854851, 44.476425>,  <41.541489, 44.787609, 44.522820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315819, 44.854851, 44.476425>,  <40.939705, 44.966919, 44.399101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315819, 44.854851, 44.476425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107322, -0.294919, -0.949476,
		0.323023, 0.913525, -0.247240,
		0.940286, -0.280169, 0.193307,
		41.597904, 44.770802, 44.534416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270077, 45.254192, 43.928352>,  <40.939705, 44.966919, 44.399101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270077, 45.254192, 43.928352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538925, 44.986496, 44.055077>,  <41.700233, 44.825878, 44.131111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538925, 44.986496, 44.055077>,  <41.270077, 45.254192, 43.928352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538925, 44.986496, 44.055077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066651, -0.371451, -0.926057,
		0.737432, 0.643541, -0.205056,
		0.672124, -0.669237, 0.316813,
		41.740562, 44.785725, 44.150120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826099, 45.439186, 43.592178>,  <41.270077, 45.254192, 43.928352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826099, 45.439186, 43.592178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813972, 45.054523, 43.701210>,  <41.806698, 44.823727, 43.766628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813972, 45.054523, 43.701210>,  <41.826099, 45.439186, 43.592178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813972, 45.054523, 43.701210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145351, -0.265565, -0.953073,
		0.988916, -0.068512, -0.131727,
		-0.030315, -0.961655, 0.272580,
		41.804878, 44.766026, 43.782986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089954, 45.143646, 43.080563>,  <41.826099, 45.439186, 43.592178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089954, 45.143646, 43.080563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896248, 44.846893, 43.266075>,  <41.780022, 44.668842, 43.377384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896248, 44.846893, 43.266075>,  <42.089954, 45.143646, 43.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896248, 44.846893, 43.266075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305507, -0.353335, -0.884206,
		0.819847, -0.569883, -0.055541,
		-0.484269, -0.741881, 0.463784,
		41.750969, 44.624329, 43.405209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204102, 44.582035, 42.739864>,  <42.089954, 45.143646, 43.080563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204102, 44.582035, 42.739864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877029, 44.462574, 42.936722>,  <41.680786, 44.390896, 43.054836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877029, 44.462574, 42.936722>,  <42.204102, 44.582035, 42.739864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877029, 44.462574, 42.936722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349523, -0.421725, -0.836649,
		0.457419, -0.856126, 0.240449,
		-0.817680, -0.298657, 0.492141,
		41.631725, 44.372978, 43.084366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070282, 43.852131, 42.666267>,  <42.204102, 44.582035, 42.739864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070282, 43.852131, 42.666267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721680, 44.035622, 42.735607>,  <41.512520, 44.145718, 42.777210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721680, 44.035622, 42.735607>,  <42.070282, 43.852131, 42.666267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721680, 44.035622, 42.735607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385844, -0.423270, -0.819736,
		-0.302662, -0.781289, 0.545879,
		-0.871505, 0.458727, 0.173348,
		41.460228, 44.173241, 42.787609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628582, 43.371029, 42.352703>,  <42.070282, 43.852131, 42.666267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628582, 43.371029, 42.352703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385223, 43.685734, 42.394375>,  <41.239208, 43.874557, 42.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385223, 43.685734, 42.394375>,  <41.628582, 43.371029, 42.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385223, 43.685734, 42.394375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552361, -0.325521, -0.767420,
		-0.569864, -0.524443, 0.632624,
		-0.608401, 0.786762, 0.104180,
		41.202702, 43.921761, 42.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890751, 43.116310, 42.231415>,  <41.628582, 43.371029, 42.352703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890751, 43.116310, 42.231415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906075, 43.512592, 42.179195>,  <40.915268, 43.750362, 42.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906075, 43.512592, 42.179195>,  <40.890751, 43.116310, 42.231415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906075, 43.512592, 42.179195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572393, -0.085331, -0.815528,
		-0.819084, 0.105971, 0.563801,
		0.038312, 0.990701, -0.130550,
		40.917568, 43.809803, 42.140030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194382, 43.331314, 42.129120>,  <40.890751, 43.116310, 42.231415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194382, 43.331314, 42.129120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423042, 43.611938, 41.958931>,  <40.560238, 43.780315, 41.856819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423042, 43.611938, 41.958931>,  <40.194382, 43.331314, 42.129120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423042, 43.611938, 41.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539720, -0.069055, -0.839008,
		-0.617999, 0.709252, 0.339173,
		0.571647, 0.701564, -0.425473,
		40.594536, 43.822407, 41.831287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838936, 43.481937, 41.558949>,  <40.194382, 43.331314, 42.129120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838936, 43.481937, 41.558949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171783, 43.678730, 41.456562>,  <40.371494, 43.796806, 41.395130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171783, 43.678730, 41.456562>,  <39.838936, 43.481937, 41.558949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171783, 43.678730, 41.456562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320387, 0.049715, -0.945981,
		-0.452684, 0.869183, 0.198994,
		0.832123, 0.491986, -0.255970,
		40.421421, 43.826324, 41.379772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676537, 44.170204, 41.229038>,  <39.838936, 43.481937, 41.558949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676537, 44.170204, 41.229038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043274, 44.056442, 41.116955>,  <40.263317, 43.988186, 41.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043274, 44.056442, 41.116955>,  <39.676537, 44.170204, 41.229038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043274, 44.056442, 41.116955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235690, 0.180952, -0.954833,
		0.322263, 0.941472, 0.098873,
		0.916841, -0.284404, -0.280210,
		40.318325, 43.971123, 41.032890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954422, 44.554886, 40.586502>,  <39.676537, 44.170204, 41.229038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954422, 44.554886, 40.586502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181198, 44.225529, 40.596264>,  <40.317265, 44.027912, 40.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181198, 44.225529, 40.596264>,  <39.954422, 44.554886, 40.586502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181198, 44.225529, 40.596264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098603, 0.038416, -0.994385,
		0.817834, 0.566167, 0.102969,
		0.566944, -0.823395, 0.024408,
		40.351280, 43.978512, 40.603588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551262, 44.748863, 40.189072>,  <39.954422, 44.554886, 40.586502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551262, 44.748863, 40.189072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527893, 44.350040, 40.208958>,  <40.513874, 44.110748, 40.220890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527893, 44.350040, 40.208958>,  <40.551262, 44.748863, 40.189072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527893, 44.350040, 40.208958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164362, -0.058723, -0.984651,
		0.984669, -0.049352, 0.167308,
		-0.058419, -0.997054, 0.049712,
		40.510368, 44.050926, 40.223869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194412, 44.590275, 39.850456>,  <40.551262, 44.748863, 40.189072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194412, 44.590275, 39.850456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936134, 44.285019, 39.839916>,  <40.781166, 44.101868, 39.833591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936134, 44.285019, 39.839916>,  <41.194412, 44.590275, 39.850456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936134, 44.285019, 39.839916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029299, 0.009727, -0.999523,
		0.763031, -0.646162, 0.016078,
		-0.645698, -0.763138, -0.026354,
		40.742424, 44.056076, 39.832008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526531, 44.188595, 39.510391>,  <41.194412, 44.590275, 39.850456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526531, 44.188595, 39.510391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155884, 44.044224, 39.468216>,  <40.933495, 43.957600, 39.442913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155884, 44.044224, 39.468216>,  <41.526531, 44.188595, 39.510391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155884, 44.044224, 39.468216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182851, -0.187513, -0.965093,
		0.328558, -0.913548, 0.239749,
		-0.926615, -0.360928, -0.105434,
		40.877899, 43.935947, 39.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594261, 43.636108, 39.052231>,  <41.526531, 44.188595, 39.510391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594261, 43.636108, 39.052231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213417, 43.758095, 39.043411>,  <40.984913, 43.831287, 39.038120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213417, 43.758095, 39.043411>,  <41.594261, 43.636108, 39.052231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213417, 43.758095, 39.043411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022391, -0.002365, -0.999746,
		-0.304946, -0.952359, -0.004577,
		-0.952107, 0.304971, -0.022045,
		40.927784, 43.849586, 39.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364437, 43.272884, 38.376503>,  <41.594261, 43.636108, 39.052231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364437, 43.272884, 38.376503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091278, 43.556793, 38.445637>,  <40.927383, 43.727139, 38.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091278, 43.556793, 38.445637>,  <41.364437, 43.272884, 38.376503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091278, 43.556793, 38.445637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072525, 0.169553, -0.982849,
		-0.726901, -0.683724, -0.064312,
		-0.682902, 0.709769, 0.172835,
		40.886406, 43.769726, 38.497486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751591, 43.193115, 37.922523>,  <41.364437, 43.272884, 38.376503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751591, 43.193115, 37.922523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754402, 43.586426, 37.995323>,  <40.756088, 43.822411, 38.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754402, 43.586426, 37.995323>,  <40.751591, 43.193115, 37.922523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754402, 43.586426, 37.995323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022176, 0.182108, -0.983028,
		-0.999729, 0.002870, 0.023084,
		0.007025, 0.983274, 0.181995,
		40.756508, 43.881409, 38.049923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512962, 43.404396, 37.279560>,  <40.751591, 43.193115, 37.922523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512962, 43.404396, 37.279560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645294, 43.748997, 37.433628>,  <40.724693, 43.955757, 37.526070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645294, 43.748997, 37.433628>,  <40.512962, 43.404396, 37.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645294, 43.748997, 37.433628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092479, 0.435790, -0.895285,
		-0.939148, 0.260568, 0.223844,
		0.330832, 0.861506, 0.385174,
		40.744545, 44.007450, 37.549179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191891, 43.803352, 36.941051>,  <40.512962, 43.404396, 37.279560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191891, 43.803352, 36.941051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471085, 44.033867, 37.111092>,  <40.638603, 44.172176, 37.213116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471085, 44.033867, 37.111092>,  <40.191891, 43.803352, 36.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471085, 44.033867, 37.111092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031761, 0.568133, -0.822324,
		-0.715406, 0.587473, 0.378246,
		0.697987, 0.576282, 0.425104,
		40.680481, 44.206753, 37.238625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057617, 44.563381, 36.784092>,  <40.191891, 43.803352, 36.941051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057617, 44.563381, 36.784092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452148, 44.545849, 36.847633>,  <40.688866, 44.535328, 36.885757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452148, 44.545849, 36.847633>,  <40.057617, 44.563381, 36.784092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452148, 44.545849, 36.847633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159772, 0.490507, -0.856666,
		-0.040372, 0.870334, 0.490804,
		0.986328, -0.043831, 0.158858,
		40.748047, 44.532700, 36.895290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266163, 45.161335, 36.492146>,  <40.057617, 44.563381, 36.784092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266163, 45.161335, 36.492146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605614, 44.952175, 36.524162>,  <40.809284, 44.826679, 36.543373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605614, 44.952175, 36.524162>,  <40.266163, 45.161335, 36.492146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605614, 44.952175, 36.524162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364892, 0.469090, -0.804244,
		0.382988, 0.711712, 0.588885,
		0.848630, -0.522896, 0.080042,
		40.860203, 44.795307, 36.548176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874447, 45.658340, 36.406277>,  <40.266163, 45.161335, 36.492146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874447, 45.658340, 36.406277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035370, 45.298290, 36.339432>,  <41.131924, 45.082260, 36.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035370, 45.298290, 36.339432>,  <40.874447, 45.658340, 36.406277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035370, 45.298290, 36.339432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472343, 0.360438, -0.804348,
		0.784247, 0.244659, 0.570174,
		0.402304, -0.900126, -0.167110,
		41.156059, 45.028252, 36.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579014, 45.764542, 36.265503>,  <40.874447, 45.658340, 36.406277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579014, 45.764542, 36.265503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456367, 45.410103, 36.126465>,  <41.382782, 45.197441, 36.043041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456367, 45.410103, 36.126465>,  <41.579014, 45.764542, 36.265503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456367, 45.410103, 36.126465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471453, 0.175861, -0.864179,
		0.826874, -0.428842, 0.363832,
		-0.306612, -0.886097, -0.347593,
		41.364384, 45.144272, 36.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072308, 45.545498, 35.853035>,  <41.579014, 45.764542, 36.265503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072308, 45.545498, 35.853035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761093, 45.327225, 35.728527>,  <41.574364, 45.196259, 35.653824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761093, 45.327225, 35.728527>,  <42.072308, 45.545498, 35.853035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761093, 45.327225, 35.728527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335800, 0.057509, -0.940176,
		0.530941, -0.836014, 0.138497,
		-0.778035, -0.545686, -0.311267,
		41.527683, 45.163521, 35.635147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317326, 44.960468, 35.491238>,  <42.072308, 45.545498, 35.853035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317326, 44.960468, 35.491238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949730, 45.028744, 35.349072>,  <41.729172, 45.069710, 35.263771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949730, 45.028744, 35.349072>,  <42.317326, 44.960468, 35.491238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949730, 45.028744, 35.349072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351338, -0.054584, -0.934656,
		-0.178941, -0.983811, -0.009810,
		-0.918989, 0.170695, -0.355417,
		41.674034, 45.079952, 35.242447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321827, 44.644287, 34.883446>,  <42.317326, 44.960468, 35.491238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321827, 44.644287, 34.883446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979713, 44.849556, 34.854748>,  <41.774445, 44.972717, 34.837528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979713, 44.849556, 34.854748>,  <42.321827, 44.644287, 34.883446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979713, 44.849556, 34.854748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131388, 0.080843, -0.988029,
		-0.501226, -0.854472, -0.136568,
		-0.855283, 0.513169, -0.071746,
		41.723129, 45.003506, 34.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037308, 44.386063, 34.285683>,  <42.321827, 44.644287, 34.883446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037308, 44.386063, 34.285683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824692, 44.722103, 34.328938>,  <41.697121, 44.923729, 34.354889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824692, 44.722103, 34.328938>,  <42.037308, 44.386063, 34.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824692, 44.722103, 34.328938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001834, 0.128804, -0.991668,
		-0.847030, -0.526915, -0.070005,
		-0.531542, 0.840101, 0.108135,
		41.665230, 44.974133, 34.361378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529114, 44.378178, 33.762150>,  <42.037308, 44.386063, 34.285683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529114, 44.378178, 33.762150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590645, 44.755436, 33.880009>,  <41.627563, 44.981789, 33.950726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590645, 44.755436, 33.880009>,  <41.529114, 44.378178, 33.762150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590645, 44.755436, 33.880009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203665, 0.261529, -0.943464,
		-0.966880, 0.205143, -0.151854,
		0.153831, 0.943143, 0.294647,
		41.636795, 45.038380, 33.968403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173714, 44.732807, 33.231216>,  <41.529114, 44.378178, 33.762150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173714, 44.732807, 33.231216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440758, 44.993607, 33.374992>,  <41.600983, 45.150085, 33.461258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440758, 44.993607, 33.374992>,  <41.173714, 44.732807, 33.231216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440758, 44.993607, 33.374992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190073, 0.317533, -0.929002,
		-0.719840, 0.688532, 0.088062,
		0.667610, 0.651995, 0.359444,
		41.641041, 45.189205, 33.482826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029747, 45.275978, 32.820618>,  <41.173714, 44.732807, 33.231216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029747, 45.275978, 32.820618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404770, 45.317696, 32.953342>,  <41.629784, 45.342728, 33.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404770, 45.317696, 32.953342>,  <41.029747, 45.275978, 32.820618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404770, 45.317696, 32.953342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302811, 0.224605, -0.926206,
		-0.171126, 0.968853, 0.178999,
		0.937561, 0.104295, 0.331815,
		41.686039, 45.348984, 33.052887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166000, 45.940536, 32.745499>,  <41.029747, 45.275978, 32.820618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166000, 45.940536, 32.745499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521629, 45.757568, 32.738396>,  <41.735008, 45.647785, 32.734135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521629, 45.757568, 32.738396>,  <41.166000, 45.940536, 32.745499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521629, 45.757568, 32.738396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237028, 0.493191, -0.837007,
		0.391624, 0.739950, 0.546905,
		0.889072, -0.457424, -0.017756,
		41.788349, 45.620342, 32.733070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.410984, 44.064621, 32.513348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073128, 44.278046, 32.530697>,  <44.870415, 44.406101, 32.541107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073128, 44.278046, 32.530697>,  <45.410984, 44.064621, 32.513348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073128, 44.278046, 32.530697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047430, -0.006119, 0.998856,
		0.533221, 0.845736, -0.020139,
		-0.844645, 0.533566, 0.043376,
		44.819733, 44.438114, 32.543709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556805, 44.678436, 32.860516>,  <45.410984, 44.064621, 32.513348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556805, 44.678436, 32.860516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.168747, 44.590199, 32.900829>,  <44.935913, 44.537254, 32.925018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.168747, 44.590199, 32.900829>,  <45.556805, 44.678436, 32.860516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168747, 44.590199, 32.900829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083027, 0.088377, 0.992621,
		-0.227874, 0.971353, -0.067423,
		-0.970144, -0.220595, 0.100787,
		44.877705, 44.524021, 32.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244495, 45.121407, 33.398594>,  <45.556805, 44.678436, 32.860516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244495, 45.121407, 33.398594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 44.819664, 33.380962>,  <44.825302, 44.638618, 33.370384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 44.819664, 33.380962>,  <45.244495, 45.121407, 33.398594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982498, 44.819664, 33.380962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059968, -0.006253, 0.998181,
		-0.753255, 0.656441, -0.041141,
		-0.654989, -0.754352, -0.044075,
		44.786003, 44.593357, 33.367741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697735, 45.354748, 33.921032>,  <45.244495, 45.121407, 33.398594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697735, 45.354748, 33.921032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697380, 44.962521, 33.842567>,  <44.697166, 44.727184, 33.795490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697380, 44.962521, 33.842567>,  <44.697735, 45.354748, 33.921032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697380, 44.962521, 33.842567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072962, -0.195571, 0.977972,
		-0.997334, 0.015178, -0.071371,
		-0.000886, -0.980572, -0.196157,
		44.697113, 44.668350, 33.783722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187134, 45.030323, 34.393848>,  <44.697735, 45.354748, 33.921032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187134, 45.030323, 34.393848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.422226, 44.724350, 34.288429>,  <44.563282, 44.540768, 34.225178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.422226, 44.724350, 34.288429>,  <44.187134, 45.030323, 34.393848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422226, 44.724350, 34.288429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081506, -0.380067, 0.921361,
		-0.804941, -0.520031, -0.285724,
		0.587730, -0.764929, -0.263546,
		44.598545, 44.494873, 34.209366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901562, 44.438374, 34.720711>,  <44.187134, 45.030323, 34.393848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901562, 44.438374, 34.720711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.272758, 44.320827, 34.629086>,  <44.495476, 44.250301, 34.574112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.272758, 44.320827, 34.629086>,  <43.901562, 44.438374, 34.720711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272758, 44.320827, 34.629086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023372, -0.567649, 0.822939,
		-0.371857, -0.769037, -0.519908,
		0.927996, -0.293864, -0.229058,
		44.551159, 44.232670, 34.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927776, 43.684261, 34.959480>,  <43.901562, 44.438374, 34.720711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927776, 43.684261, 34.959480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.302864, 43.816597, 34.917099>,  <44.527916, 43.896000, 34.891670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.302864, 43.816597, 34.917099>,  <43.927776, 43.684261, 34.959480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302864, 43.816597, 34.917099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252571, -0.439875, 0.861811,
		0.238516, -0.834898, -0.496040,
		0.937719, 0.330841, -0.105954,
		44.584179, 43.915848, 34.885311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427719, 43.134304, 35.069195>,  <43.927776, 43.684261, 34.959480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427719, 43.134304, 35.069195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.622932, 43.467541, 35.173336>,  <44.740063, 43.667480, 35.235821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.622932, 43.467541, 35.173336>,  <44.427719, 43.134304, 35.069195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622932, 43.467541, 35.173336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275948, -0.430257, 0.859495,
		0.828053, -0.347622, -0.439871,
		0.488037, 0.833089, 0.260350,
		44.769344, 43.717468, 35.251442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930084, 42.849453, 35.485146>,  <44.427719, 43.134304, 35.069195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930084, 42.849453, 35.485146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.930214, 43.242416, 35.559849>,  <44.930290, 43.478195, 35.604671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.930214, 43.242416, 35.559849>,  <44.930084, 42.849453, 35.485146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930214, 43.242416, 35.559849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138526, -0.185004, 0.972925,
		0.990359, 0.025560, -0.136148,
		0.000320, 0.982405, 0.186762,
		44.930309, 43.537136, 35.615879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461727, 42.782673, 35.914631>,  <44.930084, 42.849453, 35.485146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461727, 42.782673, 35.914631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287338, 43.138477, 35.969326>,  <45.182705, 43.351959, 36.002144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287338, 43.138477, 35.969326>,  <45.461727, 42.782673, 35.914631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287338, 43.138477, 35.969326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072598, -0.116680, 0.990513,
		0.897027, 0.441762, -0.013708,
		-0.435972, 0.889512, 0.136736,
		45.156548, 43.405331, 36.010345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852440, 43.102989, 36.461967>,  <45.461727, 42.782673, 35.914631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852440, 43.102989, 36.461967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.502663, 43.296322, 36.445255>,  <45.292797, 43.412319, 36.435226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.502663, 43.296322, 36.445255>,  <45.852440, 43.102989, 36.461967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502663, 43.296322, 36.445255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130200, -0.150852, 0.979945,
		0.467331, 0.862345, 0.194841,
		-0.874442, 0.483327, -0.041780,
		45.240330, 43.441319, 36.432720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767681, 43.486053, 37.125584>,  <45.852440, 43.102989, 36.461967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767681, 43.486053, 37.125584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.384842, 43.481037, 37.009789>,  <45.155136, 43.478027, 36.940311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.384842, 43.481037, 37.009789>,  <45.767681, 43.486053, 37.125584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384842, 43.481037, 37.009789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289706, 0.022990, 0.956840,
		-0.005348, 0.999657, -0.025638,
		-0.957101, -0.012545, -0.289484,
		45.097713, 43.477272, 36.922943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422634, 44.061054, 37.529541>,  <45.767681, 43.486053, 37.125584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422634, 44.061054, 37.529541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.169724, 43.772312, 37.417011>,  <45.017975, 43.599068, 37.349495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.169724, 43.772312, 37.417011>,  <45.422634, 44.061054, 37.529541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169724, 43.772312, 37.417011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362916, -0.044850, 0.930742,
		-0.684481, 0.690587, -0.233616,
		-0.632281, -0.721858, -0.281324,
		44.980038, 43.555756, 37.332615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811260, 44.376263, 37.671806>,  <45.422634, 44.061054, 37.529541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811260, 44.376263, 37.671806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.743034, 43.982143, 37.667873>,  <44.702099, 43.745670, 37.665512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.743034, 43.982143, 37.667873>,  <44.811260, 44.376263, 37.671806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743034, 43.982143, 37.667873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529627, 0.083258, 0.844135,
		-0.830905, 0.149184, -0.536041,
		-0.170561, -0.985298, -0.009832,
		44.691868, 43.686554, 37.664925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114899, 44.357601, 37.882721>,  <44.811260, 44.376263, 37.671806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114899, 44.357601, 37.882721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.271469, 43.996101, 37.952038>,  <44.365410, 43.779202, 37.993626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.271469, 43.996101, 37.952038>,  <44.114899, 44.357601, 37.882721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271469, 43.996101, 37.952038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499739, -0.050641, 0.864694,
		-0.772689, -0.425061, -0.471460,
		0.391423, -0.903747, 0.173290,
		44.388897, 43.724976, 38.004025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639553, 44.126198, 38.355919>,  <44.114899, 44.357601, 37.882721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639553, 44.126198, 38.355919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.947487, 43.874260, 38.397213>,  <44.132248, 43.723099, 38.421989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.947487, 43.874260, 38.397213>,  <43.639553, 44.126198, 38.355919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947487, 43.874260, 38.397213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264052, -0.167045, 0.949933,
		-0.581063, -0.758548, -0.294908,
		0.769832, -0.629842, 0.103233,
		44.178436, 43.685307, 38.428185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376827, 43.395298, 38.579014>,  <43.639553, 44.126198, 38.355919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376827, 43.395298, 38.579014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.763481, 43.402657, 38.681210>,  <43.995472, 43.407074, 38.742527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.763481, 43.402657, 38.681210>,  <43.376827, 43.395298, 38.579014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763481, 43.402657, 38.681210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235695, -0.326712, 0.915263,
		0.100314, -0.944945, -0.311475,
		0.966636, 0.018400, 0.255493,
		44.053471, 43.408176, 38.757858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521717, 42.794003, 39.013206>,  <43.376827, 43.395298, 38.579014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521717, 42.794003, 39.013206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.828804, 43.028149, 39.117477>,  <44.013058, 43.168636, 39.180038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.828804, 43.028149, 39.117477>,  <43.521717, 42.794003, 39.013206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828804, 43.028149, 39.117477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210181, -0.154264, 0.965415,
		0.605335, -0.795957, 0.004602,
		0.767719, 0.585368, 0.260677,
		44.059120, 43.203758, 39.195679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963985, 42.436344, 39.558426>,  <43.521717, 42.794003, 39.013206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963985, 42.436344, 39.558426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016235, 42.831966, 39.585865>,  <44.047585, 43.069340, 39.602329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016235, 42.831966, 39.585865>,  <43.963985, 42.436344, 39.558426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016235, 42.831966, 39.585865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073513, -0.059337, 0.995527,
		0.988702, -0.135086, 0.064957,
		0.130627, 0.989056, 0.068598,
		44.055424, 43.128681, 39.606445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191261, 42.514793, 40.244015>,  <43.963985, 42.436344, 39.558426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191261, 42.514793, 40.244015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.081200, 42.887020, 40.147404>,  <44.015163, 43.110355, 40.089436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.081200, 42.887020, 40.147404>,  <44.191261, 42.514793, 40.244015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081200, 42.887020, 40.147404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113407, 0.218056, 0.969325,
		0.954687, 0.294107, 0.045533,
		-0.275156, 0.930566, -0.241529,
		43.998653, 43.166191, 40.074944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594997, 42.902992, 40.671814>,  <44.191261, 42.514793, 40.244015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594997, 42.902992, 40.671814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.310738, 43.151230, 40.539238>,  <44.140182, 43.300171, 40.459694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.310738, 43.151230, 40.539238>,  <44.594997, 42.902992, 40.671814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310738, 43.151230, 40.539238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134977, 0.342079, 0.929927,
		0.690482, 0.705584, -0.159331,
		-0.710645, 0.620591, -0.331437,
		44.097546, 43.337406, 40.439808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846931, 43.667221, 40.668964>,  <44.594997, 42.902992, 40.671814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846931, 43.667221, 40.668964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.447594, 43.644852, 40.674435>,  <44.207993, 43.631432, 40.677715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.447594, 43.644852, 40.674435>,  <44.846931, 43.667221, 40.668964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447594, 43.644852, 40.674435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013149, 0.452727, 0.891553,
		-0.056047, 0.889894, -0.452711,
		-0.998342, -0.055922, 0.013672,
		44.148090, 43.628075, 40.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650238, 44.352745, 40.820606>,  <44.846931, 43.667221, 40.668964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650238, 44.352745, 40.820606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.337326, 44.116280, 40.899155>,  <44.149578, 43.974400, 40.946285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.337326, 44.116280, 40.899155>,  <44.650238, 44.352745, 40.820606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337326, 44.116280, 40.899155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131648, 0.465025, 0.875455,
		-0.608853, 0.659001, -0.441606,
		-0.782284, -0.591159, 0.196376,
		44.102642, 43.938931, 40.958069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273876, 44.789097, 41.191208>,  <44.650238, 44.352745, 40.820606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273876, 44.789097, 41.191208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.112167, 44.439304, 41.298428>,  <44.015141, 44.229427, 41.362759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.112167, 44.439304, 41.298428>,  <44.273876, 44.789097, 41.191208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112167, 44.439304, 41.298428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055673, 0.268991, 0.961532,
		-0.912943, 0.403643, -0.060061,
		-0.404272, -0.874480, 0.268045,
		43.990887, 44.176960, 41.378841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601112, 44.882591, 41.639980>,  <44.273876, 44.789097, 41.191208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601112, 44.882591, 41.639980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.739197, 44.514702, 41.714741>,  <43.822048, 44.293968, 41.759598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.739197, 44.514702, 41.714741>,  <43.601112, 44.882591, 41.639980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739197, 44.514702, 41.714741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027535, 0.208982, 0.977532,
		-0.938122, -0.332306, 0.097467,
		0.345208, -0.919728, 0.186901,
		43.842758, 44.238785, 41.770809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152637, 44.565540, 42.125450>,  <43.601112, 44.882591, 41.639980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152637, 44.565540, 42.125450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.470535, 44.327450, 42.172905>,  <43.661274, 44.184593, 42.201378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.470535, 44.327450, 42.172905>,  <43.152637, 44.565540, 42.125450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470535, 44.327450, 42.172905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086511, 0.082380, 0.992839,
		-0.600742, -0.799321, 0.013977,
		0.794748, -0.595231, 0.118640,
		43.708961, 44.148880, 42.208496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026207, 44.199078, 42.634636>,  <43.152637, 44.565540, 42.125450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026207, 44.199078, 42.634636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.425995, 44.192310, 42.623547>,  <43.665867, 44.188248, 42.616894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.425995, 44.192310, 42.623547>,  <43.026207, 44.199078, 42.634636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425995, 44.192310, 42.623547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029646, 0.126819, 0.991483,
		-0.013265, -0.991782, 0.127254,
		0.999472, -0.016924, -0.027721,
		43.725838, 44.187233, 42.615231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196182, 43.775715, 43.202126>,  <43.026207, 44.199078, 42.634636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196182, 43.775715, 43.202126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.536278, 43.956909, 43.094872>,  <43.740334, 44.065624, 43.030518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.536278, 43.956909, 43.094872>,  <43.196182, 43.775715, 43.202126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536278, 43.956909, 43.094872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166068, 0.252544, 0.953228,
		0.499517, -0.854999, 0.139495,
		0.850237, 0.452988, -0.268138,
		43.791348, 44.092804, 43.014431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605354, 43.575966, 43.698277>,  <43.196182, 43.775715, 43.202126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605354, 43.575966, 43.698277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.769859, 43.906292, 43.543930>,  <43.868561, 44.104488, 43.451321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.769859, 43.906292, 43.543930>,  <43.605354, 43.575966, 43.698277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769859, 43.906292, 43.543930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209098, 0.326567, 0.921755,
		0.887210, -0.459768, -0.038371,
		0.411263, 0.825813, -0.385870,
		43.893238, 44.154037, 43.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189526, 43.530933, 44.020966>,  <43.605354, 43.575966, 43.698277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189526, 43.530933, 44.020966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.131775, 43.903687, 43.887844>,  <44.097126, 44.127338, 43.807972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.131775, 43.903687, 43.887844>,  <44.189526, 43.530933, 44.020966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131775, 43.903687, 43.887844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371131, 0.362771, 0.854786,
		0.917288, -0.000102, -0.398225,
		-0.144377, 0.931878, -0.332804,
		44.088463, 44.183250, 43.788002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779926, 43.955818, 44.404072>,  <44.189526, 43.530933, 44.020966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779926, 43.955818, 44.404072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.524994, 44.227165, 44.257851>,  <44.372032, 44.389973, 44.170116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.524994, 44.227165, 44.257851>,  <44.779926, 43.955818, 44.404072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524994, 44.227165, 44.257851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327689, 0.667939, 0.668189,
		0.697443, 0.306072, -0.647992,
		-0.637333, 0.678363, -0.365553,
		44.333794, 44.430676, 44.148186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141373, 44.652504, 44.326881>,  <44.779926, 43.955818, 44.404072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141373, 44.652504, 44.326881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.748123, 44.708168, 44.374390>,  <44.512173, 44.741566, 44.402897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.748123, 44.708168, 44.374390>,  <45.141373, 44.652504, 44.326881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748123, 44.708168, 44.374390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181528, 0.661002, 0.728096,
		0.022814, 0.737367, -0.675107,
		-0.983121, 0.139162, 0.118773,
		44.453186, 44.749916, 44.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118320, 45.404934, 44.392178>,  <45.141373, 44.652504, 44.326881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118320, 45.404934, 44.392178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.772820, 45.258976, 44.531200>,  <44.565521, 45.171402, 44.614613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.772820, 45.258976, 44.531200>,  <45.118320, 45.404934, 44.392178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772820, 45.258976, 44.531200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045551, 0.630338, 0.774984,
		-0.501862, 0.685222, -0.527832,
		-0.863748, -0.364891, 0.347555,
		44.513695, 45.149509, 44.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617527, 46.003620, 44.529671>,  <45.118320, 45.404934, 44.392178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617527, 46.003620, 44.529671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.502831, 45.678394, 44.732338>,  <44.434013, 45.483257, 44.853939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.502831, 45.678394, 44.732338>,  <44.617527, 46.003620, 44.529671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502831, 45.678394, 44.732338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027650, 0.535675, 0.843971,
		-0.957610, 0.227989, -0.176080,
		-0.286737, -0.813064, 0.506664,
		44.416809, 45.434475, 44.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145218, 46.265999, 45.108955>,  <44.617527, 46.003620, 44.529671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145218, 46.265999, 45.108955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.276154, 45.911846, 45.240986>,  <44.354717, 45.699356, 45.320206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.276154, 45.911846, 45.240986>,  <44.145218, 46.265999, 45.108955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276154, 45.911846, 45.240986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182668, 0.402031, 0.897220,
		-0.927080, -0.233404, 0.293333,
		0.327344, -0.885378, 0.330079,
		44.374355, 45.646233, 45.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773674, 46.063957, 45.758705>,  <44.145218, 46.265999, 45.108955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773674, 46.063957, 45.758705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.114441, 45.854744, 45.769142>,  <44.318901, 45.729218, 45.775406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.114441, 45.854744, 45.769142>,  <43.773674, 46.063957, 45.758705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114441, 45.854744, 45.769142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215108, 0.394930, 0.893174,
		-0.477462, -0.755295, 0.448955,
		0.851915, -0.523030, 0.026093,
		44.370014, 45.697834, 45.776970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790844, 45.839684, 46.396389>,  <43.773674, 46.063957, 45.758705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790844, 45.839684, 46.396389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.169533, 45.762424, 46.293304>,  <44.396748, 45.716068, 46.231453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.169533, 45.762424, 46.293304>,  <43.790844, 45.839684, 46.396389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169533, 45.762424, 46.293304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274499, 0.065438, 0.959358,
		-0.168434, -0.978985, 0.114970,
		0.946721, -0.193147, -0.257709,
		44.453548, 45.704479, 46.215992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035072, 45.204479, 46.826920>,  <43.790844, 45.839684, 46.396389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035072, 45.204479, 46.826920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.332916, 45.436794, 46.695320>,  <44.511623, 45.576183, 46.616360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.332916, 45.436794, 46.695320>,  <44.035072, 45.204479, 46.826920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332916, 45.436794, 46.695320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421568, -0.027029, 0.906394,
		0.517529, -0.813607, -0.264967,
		0.744610, 0.580786, -0.329002,
		44.556301, 45.611031, 46.596619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486431, 44.972904, 47.282612>,  <44.035072, 45.204479, 46.826920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486431, 44.972904, 47.282612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.672600, 45.288288, 47.121758>,  <44.784302, 45.477516, 47.025246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.672600, 45.288288, 47.121758>,  <44.486431, 44.972904, 47.282612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672600, 45.288288, 47.121758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477611, 0.158788, 0.864103,
		0.745163, -0.594241, -0.302672,
		0.465425, 0.788457, -0.402139,
		44.812229, 45.524826, 47.001118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191677, 44.926243, 47.292866>,  <44.486431, 44.972904, 47.282612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191677, 44.926243, 47.292866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.132034, 45.321594, 47.280979>,  <45.096249, 45.558804, 47.273846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.132034, 45.321594, 47.280979>,  <45.191677, 44.926243, 47.292866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132034, 45.321594, 47.280979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461774, 0.096175, 0.881768,
		0.874375, 0.117759, -0.470746,
		-0.149111, 0.988374, -0.029715,
		45.087299, 45.618107, 47.272064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849113, 45.200169, 47.422527>,  <45.191677, 44.926243, 47.292866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849113, 45.200169, 47.422527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.596146, 45.503906, 47.483761>,  <45.444363, 45.686150, 47.520500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.596146, 45.503906, 47.483761>,  <45.849113, 45.200169, 47.422527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596146, 45.503906, 47.483761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419071, 0.169186, 0.892051,
		0.651475, 0.628309, -0.425217,
		-0.632424, 0.759345, 0.153086,
		45.406418, 45.731709, 47.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297924, 45.733608, 47.740875>,  <45.849113, 45.200169, 47.422527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297924, 45.733608, 47.740875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.917740, 45.827003, 47.822956>,  <45.689629, 45.883041, 47.872204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.917740, 45.827003, 47.822956>,  <46.297924, 45.733608, 47.740875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917740, 45.827003, 47.822956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264879, 0.262848, 0.927766,
		0.162687, 0.936159, -0.311673,
		-0.950459, 0.233491, 0.205207,
		45.632603, 45.897049, 47.884518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237724, 46.419537, 47.982792>,  <46.297924, 45.733608, 47.740875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237724, 46.419537, 47.982792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.942085, 46.206749, 48.148079>,  <45.764702, 46.079079, 48.247253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.942085, 46.206749, 48.148079>,  <46.237724, 46.419537, 47.982792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942085, 46.206749, 48.148079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320340, 0.262061, 0.910333,
		-0.592555, 0.805194, -0.023278,
		-0.739095, -0.531965, 0.413222,
		45.720356, 46.047161, 48.272045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129856, 46.798313, 48.519146>,  <46.237724, 46.419537, 47.982792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129856, 46.798313, 48.519146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.896736, 46.485298, 48.606762>,  <45.756866, 46.297489, 48.659332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.896736, 46.485298, 48.606762>,  <46.129856, 46.798313, 48.519146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896736, 46.485298, 48.606762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226491, 0.102443, 0.968611,
		-0.780415, 0.614115, 0.117534,
		-0.582798, -0.782539, 0.219040,
		45.721897, 46.250538, 48.672474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693958, 47.045338, 49.043461>,  <46.129856, 46.798313, 48.519146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693958, 47.045338, 49.043461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.716782, 46.646164, 49.055271>,  <45.730476, 46.406658, 49.062355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.716782, 46.646164, 49.055271>,  <45.693958, 47.045338, 49.043461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716782, 46.646164, 49.055271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348223, 0.047608, 0.936202,
		-0.935673, -0.043142, 0.350220,
		0.057063, -0.997934, 0.029523,
		45.733902, 46.346783, 49.064129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472652, 46.921143, 49.673065>,  <45.693958, 47.045338, 49.043461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472652, 46.921143, 49.673065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.631882, 46.566071, 49.580486>,  <45.727421, 46.353027, 49.524940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.631882, 46.566071, 49.580486>,  <45.472652, 46.921143, 49.673065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631882, 46.566071, 49.580486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342067, -0.090468, 0.935310,
		-0.851190, -0.451495, 0.267632,
		0.398076, -0.887675, -0.231447,
		45.751305, 46.299767, 49.511051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286674, 46.465214, 50.189022>,  <45.472652, 46.921143, 49.673065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286674, 46.465214, 50.189022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606796, 46.276543, 50.040951>,  <45.798870, 46.163342, 49.952106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606796, 46.276543, 50.040951>,  <45.286674, 46.465214, 50.189022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606796, 46.276543, 50.040951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327357, -0.173523, 0.928831,
		-0.502342, -0.864529, 0.015535,
		0.800306, -0.471677, -0.370177,
		45.846889, 46.135040, 49.929897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388542, 45.808411, 50.628880>,  <45.286674, 46.465214, 50.189022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388542, 45.808411, 50.628880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.747002, 45.901268, 50.477604>,  <45.962078, 45.956982, 50.386841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.747002, 45.901268, 50.477604>,  <45.388542, 45.808411, 50.628880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747002, 45.901268, 50.477604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427993, -0.227061, 0.874795,
		0.117209, -0.945807, -0.302837,
		0.896150, 0.232146, -0.378185,
		46.015846, 45.970913, 50.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865978, 45.285732, 50.890678>,  <45.388542, 45.808411, 50.628880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865978, 45.285732, 50.890678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.066666, 45.610630, 50.771660>,  <46.187077, 45.805569, 50.700249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.066666, 45.610630, 50.771660>,  <45.865978, 45.285732, 50.890678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066666, 45.610630, 50.771660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557754, -0.040836, 0.829001,
		0.661203, -0.581883, -0.473522,
		0.501718, 0.812247, -0.297547,
		46.217182, 45.854305, 50.682396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615223, 45.105541, 51.057270>,  <45.865978, 45.285732, 50.890678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615223, 45.105541, 51.057270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.583366, 45.502312, 51.017776>,  <46.564251, 45.740372, 50.994080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.583366, 45.502312, 51.017776>,  <46.615223, 45.105541, 51.057270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583366, 45.502312, 51.017776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423836, 0.123347, 0.897301,
		0.902231, 0.029615, -0.430235,
		-0.079642, 0.991922, -0.098736,
		46.559475, 45.799889, 50.988155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291225, 45.350697, 51.274822>,  <46.615223, 45.105541, 51.057270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291225, 45.350697, 51.274822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.048302, 45.668106, 51.290283>,  <46.902550, 45.858551, 51.299561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.048302, 45.668106, 51.290283>,  <47.291225, 45.350697, 51.274822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048302, 45.668106, 51.290283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505213, 0.348187, 0.789636,
		0.613138, 0.499080, -0.612357,
		-0.607306, 0.793527, 0.038655,
		46.866112, 45.906166, 51.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768135, 45.822323, 51.384064>,  <47.291225, 45.350697, 51.274822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768135, 45.822323, 51.384064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.420685, 45.978428, 51.506172>,  <47.212215, 46.072090, 51.579437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.420685, 45.978428, 51.506172>,  <47.768135, 45.822323, 51.384064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420685, 45.978428, 51.506172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454053, 0.380365, 0.805704,
		0.198322, 0.838461, -0.507594,
		-0.868622, 0.390263, 0.305270,
		47.160099, 46.095509, 51.597752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.970592, 46.597168, 51.534576>,  <47.768135, 45.822323, 51.384064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.970592, 46.597168, 51.534576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.635475, 46.500916, 51.730618>,  <47.434406, 46.443165, 51.848244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.635475, 46.500916, 51.730618>,  <47.970592, 46.597168, 51.534576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635475, 46.500916, 51.730618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318041, 0.514549, 0.796297,
		-0.443797, 0.823004, -0.354554,
		-0.837791, -0.240631, 0.490104,
		47.384136, 46.428726, 51.877647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750267, 47.183640, 52.027340>,  <47.970592, 46.597168, 51.534576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750267, 47.183640, 52.027340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.525505, 46.893982, 52.187275>,  <47.390648, 46.720188, 52.283237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.525505, 46.893982, 52.187275>,  <47.750267, 47.183640, 52.027340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525505, 46.893982, 52.187275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001418, 0.484209, 0.874951,
		-0.827198, 0.491075, -0.273108,
		-0.561908, -0.724145, 0.399841,
		47.356934, 46.676739, 52.307228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276413, 47.516563, 52.502773>,  <47.750267, 47.183640, 52.027340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276413, 47.516563, 52.502773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.282738, 47.134872, 52.622238>,  <47.286533, 46.905857, 52.693916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.282738, 47.134872, 52.622238>,  <47.276413, 47.516563, 52.502773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.282738, 47.134872, 52.622238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112385, 0.298503, 0.947769,
		-0.993539, 0.018576, 0.111962,
		0.015815, -0.954228, 0.298662,
		47.287483, 46.848602, 52.711838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970100, 47.512062, 53.108212>,  <47.276413, 47.516563, 52.502773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970100, 47.512062, 53.108212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.210640, 47.192474, 53.110737>,  <47.354961, 47.000721, 53.112251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.210640, 47.192474, 53.110737>,  <46.970100, 47.512062, 53.108212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.210640, 47.192474, 53.110737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288076, 0.224176, 0.930998,
		-0.745250, -0.558032, 0.364970,
		0.601344, -0.798965, 0.006311,
		47.391045, 46.952785, 53.112629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.927143, 47.302086, 53.767170>,  <46.970100, 47.512062, 53.108212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.927143, 47.302086, 53.767170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.254936, 47.099510, 53.659859>,  <47.451611, 46.977966, 53.595474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.254936, 47.099510, 53.659859>,  <46.927143, 47.302086, 53.767170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254936, 47.099510, 53.659859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436349, 0.247874, 0.864961,
		-0.371551, -0.825881, 0.424112,
		0.819481, -0.506438, -0.268274,
		47.500782, 46.947578, 53.579376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146549, 46.884586, 54.417091>,  <46.927143, 47.302086, 53.767170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146549, 46.884586, 54.417091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.466782, 46.927803, 54.181328>,  <47.658920, 46.953735, 54.039871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.466782, 46.927803, 54.181328>,  <47.146549, 46.884586, 54.417091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466782, 46.927803, 54.181328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552750, 0.246673, 0.796003,
		0.231395, -0.963057, 0.137759,
		0.800577, 0.108044, -0.589408,
		47.706955, 46.960217, 54.004505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690903, 46.550732, 54.724010>,  <47.146549, 46.884586, 54.417091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690903, 46.550732, 54.724010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.888245, 46.793304, 54.474579>,  <48.006649, 46.938847, 54.324921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.888245, 46.793304, 54.474579>,  <47.690903, 46.550732, 54.724010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.888245, 46.793304, 54.474579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760447, 0.047335, 0.647673,
		0.422284, -0.793728, -0.437804,
		0.493353, 0.606429, -0.623577,
		48.036251, 46.975231, 54.287506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.403507, 46.306747, 54.748947>,  <47.690903, 46.550732, 54.724010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.403507, 46.306747, 54.748947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.403183, 46.682510, 54.611824>,  <48.402988, 46.907967, 54.529552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.403183, 46.682510, 54.611824>,  <48.403507, 46.306747, 54.748947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.403183, 46.682510, 54.611824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845913, 0.183470, 0.500770,
		0.533321, -0.289577, -0.794804,
		-0.000812, 0.939406, -0.342806,
		48.402939, 46.964333, 54.508984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.139027, 46.513290, 54.739521>,  <48.403507, 46.306747, 54.748947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.139027, 46.513290, 54.739521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.913498, 46.843620, 54.744057>,  <48.778183, 47.041817, 54.746777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.913498, 46.843620, 54.744057>,  <49.139027, 46.513290, 54.739521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.913498, 46.843620, 54.744057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628032, 0.419785, 0.655253,
		0.536362, 0.376565, -0.755324,
		-0.563819, 0.825820, 0.011338,
		48.744350, 47.091366, 54.747459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.647739, 46.951466, 54.805317>,  <49.139027, 46.513290, 54.739521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.647739, 46.951466, 54.805317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.310158, 47.148308, 54.890709>,  <49.107609, 47.266415, 54.941944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.310158, 47.148308, 54.890709>,  <49.647739, 46.951466, 54.805317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.310158, 47.148308, 54.890709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482713, 0.523151, 0.702354,
		0.233953, 0.695803, -0.679062,
		-0.843952, 0.492109, 0.213480,
		49.056973, 47.295940, 54.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.791267, 47.669662, 54.715469>,  <49.647739, 46.951466, 54.805317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.791267, 47.669662, 54.715469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.476646, 47.654900, 54.962036>,  <49.287872, 47.646042, 55.109974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.476646, 47.654900, 54.962036>,  <49.791267, 47.669662, 54.715469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.476646, 47.654900, 54.962036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435836, 0.673980, 0.596488,
		-0.437465, 0.737827, -0.514039,
		-0.786557, -0.036906, 0.616414,
		49.240681, 47.643829, 55.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.810928, 48.255932, 54.970123>,  <49.791267, 47.669662, 54.715469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.810928, 48.255932, 54.970123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.552536, 48.078903, 55.218910>,  <49.397499, 47.972687, 55.368183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.552536, 48.078903, 55.218910>,  <49.810928, 48.255932, 54.970123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.552536, 48.078903, 55.218910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338583, 0.564131, 0.753072,
		-0.684155, 0.697058, -0.214573,
		-0.645982, -0.442567, 0.621966,
		49.358742, 47.946133, 55.405499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<48.741562, 47.450470, 56.402756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.908936, 47.615204, 56.078953>,  <49.009361, 47.714046, 55.884670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.908936, 47.615204, 56.078953>,  <48.741562, 47.450470, 56.402756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.908936, 47.615204, 56.078953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517033, -0.624763, -0.585105,
		-0.746718, 0.663371, -0.048490,
		0.418437, 0.411838, -0.809506,
		49.034466, 47.738754, 55.836102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.184708, 47.661285, 55.884014>,  <48.741562, 47.450470, 56.402756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.184708, 47.661285, 55.884014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.515305, 47.660172, 55.658836>,  <48.713661, 47.659504, 55.523731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.515305, 47.660172, 55.658836>,  <48.184708, 47.661285, 55.884014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.515305, 47.660172, 55.658836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510676, -0.424521, -0.747658,
		-0.236897, 0.905414, -0.352286,
		0.826492, -0.002786, -0.562941,
		48.763252, 47.659336, 55.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.074825, 48.045372, 55.323406>,  <48.184708, 47.661285, 55.884014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.074825, 48.045372, 55.323406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.361732, 47.792000, 55.207275>,  <48.533878, 47.639977, 55.137596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.361732, 47.792000, 55.207275>,  <48.074825, 48.045372, 55.323406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.361732, 47.792000, 55.207275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527266, -0.221008, -0.820455,
		0.455534, 0.741569, -0.492508,
		0.717272, -0.633428, -0.290327,
		48.576916, 47.601971, 55.120178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.148014, 48.243069, 54.662457>,  <48.074825, 48.045372, 55.323406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.148014, 48.243069, 54.662457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.322342, 47.884186, 54.690941>,  <48.426941, 47.668854, 54.708031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.322342, 47.884186, 54.690941>,  <48.148014, 48.243069, 54.662457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.322342, 47.884186, 54.690941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477949, -0.297757, -0.826381,
		0.762642, 0.326121, -0.558590,
		0.435824, -0.897210, 0.071213,
		48.453091, 47.615025, 54.712303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.550159, 48.199139, 54.031498>,  <48.148014, 48.243069, 54.662457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.550159, 48.199139, 54.031498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.496613, 47.823936, 54.159386>,  <48.464485, 47.598816, 54.236118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.496613, 47.823936, 54.159386>,  <48.550159, 48.199139, 54.031498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.496613, 47.823936, 54.159386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456336, -0.228039, -0.860090,
		0.879681, -0.261036, -0.397520,
		-0.133864, -0.938008, 0.319722,
		48.456451, 47.542534, 54.255302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.626751, 47.731438, 53.414478>,  <48.550159, 48.199139, 54.031498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.626751, 47.731438, 53.414478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.449821, 47.491165, 53.680870>,  <48.343666, 47.347000, 53.840706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.449821, 47.491165, 53.680870>,  <48.626751, 47.731438, 53.414478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.449821, 47.491165, 53.680870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509709, -0.442625, -0.737754,
		0.737936, -0.665781, -0.110391,
		-0.442321, -0.600682, 0.665983,
		48.317123, 47.310959, 53.880665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.676819, 47.100506, 53.076324>,  <48.626751, 47.731438, 53.414478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.676819, 47.100506, 53.076324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.412689, 47.057228, 53.373585>,  <48.254211, 47.031261, 53.551941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.412689, 47.057228, 53.373585>,  <48.676819, 47.100506, 53.076324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.412689, 47.057228, 53.373585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643284, -0.429122, -0.634067,
		0.387503, -0.896743, 0.213760,
		-0.660324, -0.108194, 0.743146,
		48.214592, 47.024769, 53.596527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.568108, 46.356045, 53.093227>,  <48.676819, 47.100506, 53.076324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.568108, 46.356045, 53.093227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.244583, 46.528625, 53.253067>,  <48.050468, 46.632175, 53.348972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.244583, 46.528625, 53.253067>,  <48.568108, 46.356045, 53.093227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.244583, 46.528625, 53.253067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568117, -0.397745, -0.720446,
		-0.151902, -0.809720, 0.566815,
		-0.808807, 0.431455, 0.399598,
		48.001942, 46.658062, 53.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980259, 45.807976, 53.263058>,  <48.568108, 46.356045, 53.093227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980259, 45.807976, 53.263058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.807037, 46.165222, 53.214378>,  <47.703106, 46.379570, 53.185173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.807037, 46.165222, 53.214378>,  <47.980259, 45.807976, 53.263058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.807037, 46.165222, 53.214378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618041, -0.392486, -0.681161,
		-0.656120, -0.219764, 0.721949,
		-0.433049, 0.893118, -0.121695,
		47.677124, 46.433159, 53.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261585, 45.584538, 53.023022>,  <47.980259, 45.807976, 53.263058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261585, 45.584538, 53.023022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287758, 45.976723, 52.948818>,  <47.303459, 46.212032, 52.904297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287758, 45.976723, 52.948818>,  <47.261585, 45.584538, 53.023022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287758, 45.976723, 52.948818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455460, -0.136067, -0.879796,
		-0.887848, 0.142055, 0.437659,
		0.065428, 0.980462, -0.185507,
		47.307384, 46.270863, 52.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615177, 45.717670, 52.818020>,  <47.261585, 45.584538, 53.023022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615177, 45.717670, 52.818020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.837631, 46.007317, 52.654873>,  <46.971104, 46.181107, 52.556984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.837631, 46.007317, 52.654873>,  <46.615177, 45.717670, 52.818020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837631, 46.007317, 52.654873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335237, -0.253614, -0.907357,
		-0.760477, 0.641351, 0.101707,
		0.556139, 0.724120, -0.407872,
		47.004475, 46.224552, 52.532513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160999, 46.105888, 52.336544>,  <46.615177, 45.717670, 52.818020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160999, 46.105888, 52.336544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532463, 46.197624, 52.219929>,  <46.755341, 46.252666, 52.149960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532463, 46.197624, 52.219929>,  <46.160999, 46.105888, 52.336544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532463, 46.197624, 52.219929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264077, -0.143192, -0.953813,
		-0.260497, 0.962756, -0.072412,
		0.928658, 0.229343, -0.291542,
		46.811062, 46.266426, 52.132465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108940, 46.709011, 52.034374>,  <46.160999, 46.105888, 52.336544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108940, 46.709011, 52.034374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.415894, 46.498894, 51.887306>,  <46.600067, 46.372822, 51.799065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.415894, 46.498894, 51.887306>,  <46.108940, 46.709011, 52.034374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415894, 46.498894, 51.887306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421782, 0.018328, -0.906512,
		0.482927, 0.850721, -0.207497,
		0.767386, -0.525297, -0.367670,
		46.646111, 46.341305, 51.777004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120152, 46.981937, 51.295891>,  <46.108940, 46.709011, 52.034374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120152, 46.981937, 51.295891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.358795, 46.661018, 51.303581>,  <46.501980, 46.468468, 51.308193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.358795, 46.661018, 51.303581>,  <46.120152, 46.981937, 51.295891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358795, 46.661018, 51.303581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064044, -0.071473, -0.995384,
		0.799973, 0.592624, -0.094024,
		0.596608, -0.802302, 0.019223,
		46.537777, 46.420326, 51.309349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590931, 47.092136, 50.808949>,  <46.120152, 46.981937, 51.295891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590931, 47.092136, 50.808949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.585365, 46.695213, 50.858162>,  <46.582027, 46.457062, 50.887691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.585365, 46.695213, 50.858162>,  <46.590931, 47.092136, 50.808949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585365, 46.695213, 50.858162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313843, -0.112496, -0.942787,
		0.949373, -0.051729, -0.309863,
		-0.013911, -0.992304, 0.123036,
		46.581192, 46.397522, 50.895073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075699, 46.763763, 50.271870>,  <46.590931, 47.092136, 50.808949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075699, 46.763763, 50.271870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.810104, 46.499275, 50.411533>,  <46.650749, 46.340584, 50.495331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.810104, 46.499275, 50.411533>,  <47.075699, 46.763763, 50.271870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810104, 46.499275, 50.411533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327101, -0.163048, -0.930817,
		0.672406, -0.732257, -0.108025,
		-0.663984, -0.661222, 0.349156,
		46.610909, 46.300907, 50.516281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178173, 46.225426, 49.920212>,  <47.075699, 46.763763, 50.271870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178173, 46.225426, 49.920212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.798805, 46.171448, 50.034958>,  <46.571186, 46.139061, 50.103806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.798805, 46.171448, 50.034958>,  <47.178173, 46.225426, 49.920212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798805, 46.171448, 50.034958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255404, -0.210832, -0.943567,
		0.187815, -0.968162, 0.165490,
		-0.948417, -0.134949, 0.286870,
		46.514278, 46.130962, 50.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973675, 45.772202, 49.428413>,  <47.178173, 46.225426, 49.920212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973675, 45.772202, 49.428413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.628983, 45.890678, 49.593193>,  <46.422169, 45.961765, 49.692059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.628983, 45.890678, 49.593193>,  <46.973675, 45.772202, 49.428413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628983, 45.890678, 49.593193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496651, -0.326387, -0.804245,
		-0.103756, -0.897632, 0.428360,
		-0.861727, 0.296191, 0.411945,
		46.370464, 45.979534, 49.716778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483208, 45.261208, 49.237564>,  <46.973675, 45.772202, 49.428413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483208, 45.261208, 49.237564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.268509, 45.588070, 49.321625>,  <46.139690, 45.784187, 49.372063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.268509, 45.588070, 49.321625>,  <46.483208, 45.261208, 49.237564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268509, 45.588070, 49.321625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577364, -0.174084, -0.797713,
		-0.615269, -0.549505, 0.565233,
		-0.536745, 0.817153, 0.210156,
		46.107487, 45.833218, 49.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740849, 45.030083, 49.195450>,  <46.483208, 45.261208, 49.237564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740849, 45.030083, 49.195450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.732697, 45.425362, 49.134712>,  <45.727806, 45.662529, 49.098270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.732697, 45.425362, 49.134712>,  <45.740849, 45.030083, 49.195450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732697, 45.425362, 49.134712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639654, -0.129613, -0.757657,
		-0.768393, 0.081686, 0.634744,
		-0.020381, 0.988194, -0.151845,
		45.726582, 45.721821, 49.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024826, 45.166470, 48.925404>,  <45.740849, 45.030083, 49.195450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024826, 45.166470, 48.925404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.235031, 45.500221, 48.858887>,  <45.361156, 45.700470, 48.818977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.235031, 45.500221, 48.858887>,  <45.024826, 45.166470, 48.925404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235031, 45.500221, 48.858887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550201, 0.184215, -0.814459,
		-0.648931, 0.519503, 0.555882,
		0.525516, 0.834375, -0.166288,
		45.392685, 45.750534, 48.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561848, 45.694221, 48.707195>,  <45.024826, 45.166470, 48.925404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561848, 45.694221, 48.707195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.928688, 45.766563, 48.565083>,  <45.148792, 45.809971, 48.479816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.928688, 45.766563, 48.565083>,  <44.561848, 45.694221, 48.707195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928688, 45.766563, 48.565083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392859, 0.258476, -0.882526,
		-0.067781, 0.948937, 0.308100,
		0.917097, 0.180859, -0.355278,
		45.203815, 45.820820, 48.458500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413258, 46.138081, 48.147713>,  <44.561848, 45.694221, 48.707195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413258, 46.138081, 48.147713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.799660, 46.071449, 48.068634>,  <45.031502, 46.031471, 48.021187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.799660, 46.071449, 48.068634>,  <44.413258, 46.138081, 48.147713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799660, 46.071449, 48.068634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189638, 0.063119, -0.979823,
		0.175692, 0.984006, 0.029384,
		0.966007, -0.166575, -0.197695,
		45.089462, 46.021477, 48.009327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488918, 46.698959, 47.662762>,  <44.413258, 46.138081, 48.147713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488918, 46.698959, 47.662762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.767944, 46.415474, 47.620567>,  <44.935360, 46.245384, 47.595249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.767944, 46.415474, 47.620567>,  <44.488918, 46.698959, 47.662762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767944, 46.415474, 47.620567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091934, 0.057477, -0.994105,
		0.710595, 0.703154, -0.025061,
		0.697569, -0.708710, -0.105486,
		44.977215, 46.202862, 47.588921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978928, 46.926266, 47.118973>,  <44.488918, 46.698959, 47.662762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978928, 46.926266, 47.118973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.008934, 46.529144, 47.156330>,  <45.026939, 46.290871, 47.178745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.008934, 46.529144, 47.156330>,  <44.978928, 46.926266, 47.118973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008934, 46.529144, 47.156330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190366, -0.106189, -0.975953,
		0.978843, 0.055435, -0.196961,
		0.075017, -0.992800, 0.093389,
		45.031441, 46.231304, 47.184345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503979, 46.546421, 46.643230>,  <44.978928, 46.926266, 47.118973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503979, 46.546421, 46.643230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.241676, 46.260414, 46.740166>,  <45.084293, 46.088810, 46.798325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.241676, 46.260414, 46.740166>,  <45.503979, 46.546421, 46.643230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241676, 46.260414, 46.740166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079517, -0.253787, -0.963986,
		0.750770, -0.651414, 0.109567,
		-0.655760, -0.715019, 0.242334,
		45.044949, 46.045910, 46.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631382, 46.104328, 46.084656>,  <45.503979, 46.546421, 46.643230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631382, 46.104328, 46.084656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.328659, 45.924732, 46.274666>,  <45.147026, 45.816975, 46.388672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.328659, 45.924732, 46.274666>,  <45.631382, 46.104328, 46.084656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328659, 45.924732, 46.274666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353205, -0.330580, -0.875193,
		0.549990, -0.830133, 0.091599,
		-0.756808, -0.448994, 0.475023,
		45.101616, 45.790035, 46.417171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651337, 45.454845, 45.825581>,  <45.631382, 46.104328, 46.084656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651337, 45.454845, 45.825581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.281609, 45.532375, 45.957077>,  <45.059772, 45.578892, 46.035973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.281609, 45.532375, 45.957077>,  <45.651337, 45.454845, 45.825581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281609, 45.532375, 45.957077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381615, -0.475099, -0.792875,
		0.002504, -0.858320, 0.513109,
		-0.924318, 0.193825, 0.328738,
		45.004314, 45.590523, 46.055698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352863, 44.898849, 45.821594>,  <45.651337, 45.454845, 45.825581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352863, 44.898849, 45.821594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.053848, 45.163658, 45.799999>,  <44.874439, 45.322544, 45.787041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.053848, 45.163658, 45.799999>,  <45.352863, 44.898849, 45.821594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053848, 45.163658, 45.799999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307628, -0.417109, -0.855210,
		-0.588688, -0.622693, 0.515461,
		-0.747537, 0.662022, -0.053990,
		44.829586, 45.362267, 45.783802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.037350, 43.567108, 33.350361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270386, 43.892189, 33.354458>,  <44.410210, 44.087238, 33.356915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270386, 43.892189, 33.354458>,  <44.037350, 43.567108, 33.350361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270386, 43.892189, 33.354458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160974, 0.127728, -0.978659,
		-0.796663, 0.568512, 0.205238,
		0.582594, 0.812699, 0.010240,
		44.445164, 44.135998, 33.357529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679550, 44.164337, 33.115597>,  <44.037350, 43.567108, 33.350361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679550, 44.164337, 33.115597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064209, 44.247982, 33.044601>,  <44.295006, 44.298168, 33.002003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064209, 44.247982, 33.044601>,  <43.679550, 44.164337, 33.115597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064209, 44.247982, 33.044601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230749, 0.266974, -0.935671,
		-0.148275, 0.940743, 0.304987,
		0.961649, 0.209113, -0.177490,
		44.352703, 44.310715, 32.991356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622192, 44.885574, 32.875240>,  <43.679550, 44.164337, 33.115597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622192, 44.885574, 32.875240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979652, 44.755760, 32.751263>,  <44.194130, 44.677872, 32.676876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979652, 44.755760, 32.751263>,  <43.622192, 44.885574, 32.875240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979652, 44.755760, 32.751263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176438, 0.380945, -0.907607,
		0.412622, 0.865770, 0.283171,
		0.893651, -0.324536, -0.309941,
		44.247749, 44.658398, 32.658279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950298, 45.024353, 32.820469>,  <43.622192, 44.885574, 32.875240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950298, 45.024353, 32.820469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600891, 45.217323, 32.794453>,  <42.391247, 45.333107, 32.778843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600891, 45.217323, 32.794453>,  <42.950298, 45.024353, 32.820469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600891, 45.217323, 32.794453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139375, -0.119832, 0.982962,
		0.466417, 0.867699, 0.171914,
		-0.873516, 0.482430, -0.065044,
		42.338837, 45.362053, 32.774940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971096, 45.431553, 33.379520>,  <42.950298, 45.024353, 32.820469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971096, 45.431553, 33.379520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580040, 45.416584, 33.296757>,  <42.345406, 45.407600, 33.247097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580040, 45.416584, 33.296757>,  <42.971096, 45.431553, 33.379520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580040, 45.416584, 33.296757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203600, -0.077338, 0.975995,
		-0.052529, 0.996302, 0.067989,
		-0.977644, -0.037426, -0.206910,
		42.286747, 45.405357, 33.234684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613445, 45.867245, 33.992836>,  <42.971096, 45.431553, 33.379520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613445, 45.867245, 33.992836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308586, 45.653477, 33.846668>,  <42.125671, 45.525215, 33.758968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308586, 45.653477, 33.846668>,  <42.613445, 45.867245, 33.992836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308586, 45.653477, 33.846668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455265, 0.041110, 0.889406,
		-0.460290, 0.844221, -0.274632,
		-0.762146, -0.534415, -0.365422,
		42.079941, 45.493153, 33.737041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024994, 46.193493, 34.308418>,  <42.613445, 45.867245, 33.992836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024994, 46.193493, 34.308418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899734, 45.831841, 34.192150>,  <41.824577, 45.614849, 34.122391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899734, 45.831841, 34.192150>,  <42.024994, 46.193493, 34.308418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899734, 45.831841, 34.192150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551342, -0.076132, 0.830799,
		-0.773279, 0.420420, -0.474644,
		-0.313148, -0.904130, -0.290666,
		41.805790, 45.560600, 34.104950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284878, 46.188057, 34.410084>,  <42.024994, 46.193493, 34.308418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284878, 46.188057, 34.410084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412880, 45.809147, 34.416569>,  <41.489681, 45.581799, 34.420460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412880, 45.809147, 34.416569>,  <41.284878, 46.188057, 34.410084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412880, 45.809147, 34.416569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537329, -0.167371, 0.826598,
		-0.780305, -0.273223, -0.562559,
		0.320002, -0.947278, 0.016210,
		41.508881, 45.524963, 34.421432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652298, 45.713486, 34.587246>,  <41.284878, 46.188057, 34.410084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652298, 45.713486, 34.587246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981651, 45.509308, 34.686432>,  <41.179264, 45.386799, 34.745945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981651, 45.509308, 34.686432>,  <40.652298, 45.713486, 34.587246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981651, 45.509308, 34.686432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381094, -0.173589, 0.908094,
		-0.420491, -0.842205, -0.337459,
		0.823380, -0.510449, 0.247967,
		41.228664, 45.356174, 34.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413273, 45.138832, 34.822060>,  <40.652298, 45.713486, 34.587246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413273, 45.138832, 34.822060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792740, 45.141655, 34.948540>,  <41.020420, 45.143349, 35.024429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792740, 45.141655, 34.948540>,  <40.413273, 45.138832, 34.822060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792740, 45.141655, 34.948540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292572, -0.360186, 0.885815,
		0.120139, -0.932854, -0.339632,
		0.948667, 0.007054, 0.316199,
		41.077339, 45.143772, 35.043400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536518, 44.509102, 35.242424>,  <40.413273, 45.138832, 34.822060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536518, 44.509102, 35.242424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853401, 44.729279, 35.347813>,  <41.043533, 44.861385, 35.411045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853401, 44.729279, 35.347813>,  <40.536518, 44.509102, 35.242424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853401, 44.729279, 35.347813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032731, -0.392792, 0.919045,
		0.609370, -0.736700, -0.293157,
		0.792210, 0.550443, 0.263468,
		41.091064, 44.894413, 35.426853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018204, 43.982323, 35.558640>,  <40.536518, 44.509102, 35.242424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018204, 43.982323, 35.558640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106606, 44.344555, 35.703461>,  <41.159645, 44.561893, 35.790352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106606, 44.344555, 35.703461>,  <41.018204, 43.982323, 35.558640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106606, 44.344555, 35.703461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020104, -0.366921, 0.930035,
		0.975066, -0.212819, -0.062884,
		0.221002, 0.905581, 0.362050,
		41.172905, 44.616230, 35.812077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542171, 43.792976, 36.011555>,  <41.018204, 43.982323, 35.558640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542171, 43.792976, 36.011555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.446754, 44.173130, 36.091423>,  <41.389503, 44.401222, 36.139343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.446754, 44.173130, 36.091423>,  <41.542171, 43.792976, 36.011555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446754, 44.173130, 36.091423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131131, -0.235242, 0.963050,
		0.962237, 0.203549, 0.180741,
		-0.238546, 0.950383, 0.199667,
		41.375191, 44.458244, 36.151321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955208, 44.018490, 36.688683>,  <41.542171, 43.792976, 36.011555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955208, 44.018490, 36.688683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633568, 44.251114, 36.639359>,  <41.440582, 44.390690, 36.609764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633568, 44.251114, 36.639359>,  <41.955208, 44.018490, 36.688683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633568, 44.251114, 36.639359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227821, -0.109867, 0.967485,
		0.549103, 0.806051, 0.220836,
		-0.804105, 0.581560, -0.123307,
		41.392338, 44.425583, 36.602367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979530, 44.517246, 37.126373>,  <41.955208, 44.018490, 36.688683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979530, 44.517246, 37.126373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587105, 44.486874, 37.055096>,  <41.351650, 44.468651, 37.012329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587105, 44.486874, 37.055096>,  <41.979530, 44.517246, 37.126373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587105, 44.486874, 37.055096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166048, -0.144002, 0.975547,
		-0.099734, 0.986660, 0.128666,
		-0.981061, -0.075930, -0.178195,
		41.292786, 44.464096, 37.001637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731632, 44.697674, 37.724792>,  <41.979530, 44.517246, 37.126373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731632, 44.697674, 37.724792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376343, 44.594036, 37.573036>,  <41.163170, 44.531853, 37.481983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376343, 44.594036, 37.573036>,  <41.731632, 44.697674, 37.724792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376343, 44.594036, 37.573036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377425, -0.059320, 0.924138,
		-0.261940, 0.964030, -0.045098,
		-0.888222, -0.259090, -0.379387,
		41.109875, 44.516308, 37.459221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245480, 45.127182, 38.058929>,  <41.731632, 44.697674, 37.724792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245480, 45.127182, 38.058929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.084290, 44.788658, 37.919579>,  <40.987576, 44.585545, 37.835968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.084290, 44.788658, 37.919579>,  <41.245480, 45.127182, 38.058929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084290, 44.788658, 37.919579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413218, -0.171400, 0.894356,
		-0.816617, 0.504357, -0.280643,
		-0.402972, -0.846313, -0.348378,
		40.963398, 44.534763, 37.815063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629032, 45.161457, 38.331936>,  <41.245480, 45.127182, 38.058929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629032, 45.161457, 38.331936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694084, 44.780411, 38.229115>,  <40.733116, 44.551785, 38.167423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694084, 44.780411, 38.229115>,  <40.629032, 45.161457, 38.331936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694084, 44.780411, 38.229115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361419, -0.299928, 0.882847,
		-0.918112, -0.050669, -0.393070,
		0.162625, -0.952615, -0.257055,
		40.742870, 44.494625, 38.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055805, 44.733536, 38.603668>,  <40.629032, 45.161457, 38.331936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055805, 44.733536, 38.603668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323723, 44.438709, 38.567619>,  <40.484474, 44.261814, 38.545990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323723, 44.438709, 38.567619>,  <40.055805, 44.733536, 38.603668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323723, 44.438709, 38.567619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277714, -0.361206, 0.890171,
		-0.688663, -0.571200, -0.446625,
		0.669789, -0.737062, -0.090119,
		40.524658, 44.217590, 38.540585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674004, 44.184910, 38.867558>,  <40.055805, 44.733536, 38.603668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674004, 44.184910, 38.867558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055595, 44.083950, 38.932331>,  <40.284550, 44.023373, 38.971195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055595, 44.083950, 38.932331>,  <39.674004, 44.184910, 38.867558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055595, 44.083950, 38.932331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251672, -0.380246, 0.889985,
		-0.163057, -0.889780, -0.426268,
		0.953978, -0.252398, 0.161931,
		40.341789, 44.008232, 38.980911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635033, 43.590157, 39.307762>,  <39.674004, 44.184910, 38.867558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635033, 43.590157, 39.307762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022186, 43.677898, 39.356895>,  <40.254478, 43.730541, 39.386375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022186, 43.677898, 39.356895>,  <39.635033, 43.590157, 39.307762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022186, 43.677898, 39.356895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059733, -0.273937, 0.959891,
		0.244203, -0.936399, -0.252036,
		0.967883, 0.219354, 0.122831,
		40.312550, 43.743706, 39.393745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924984, 43.049908, 39.721046>,  <39.635033, 43.590157, 39.307762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924984, 43.049908, 39.721046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179695, 43.356461, 39.754940>,  <40.332520, 43.540390, 39.775276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179695, 43.356461, 39.754940>,  <39.924984, 43.049908, 39.721046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179695, 43.356461, 39.754940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120174, -0.207194, 0.970891,
		0.761626, -0.608057, -0.224035,
		0.636776, 0.766380, 0.084731,
		40.370728, 43.586376, 39.780361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516140, 42.778084, 40.097248>,  <39.924984, 43.049908, 39.721046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516140, 42.778084, 40.097248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.537712, 43.173710, 40.152157>,  <40.550655, 43.411087, 40.185101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.537712, 43.173710, 40.152157>,  <40.516140, 42.778084, 40.097248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537712, 43.173710, 40.152157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159463, -0.144234, 0.976610,
		0.985730, -0.030776, -0.165498,
		0.053926, 0.989065, 0.137269,
		40.553890, 43.470428, 40.193336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124912, 42.949211, 40.603687>,  <40.516140, 42.778084, 40.097248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124912, 42.949211, 40.603687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876144, 43.262398, 40.609005>,  <40.726883, 43.450310, 40.612198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876144, 43.262398, 40.609005>,  <41.124912, 42.949211, 40.603687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876144, 43.262398, 40.609005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206590, 0.147669, 0.967220,
		0.755336, 0.604284, -0.253591,
		-0.621923, 0.782965, 0.013299,
		40.689568, 43.497288, 40.612995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527946, 43.527760, 40.843899>,  <41.124912, 42.949211, 40.603687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527946, 43.527760, 40.843899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148750, 43.642735, 40.898598>,  <40.921234, 43.711720, 40.931416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148750, 43.642735, 40.898598>,  <41.527946, 43.527760, 40.843899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148750, 43.642735, 40.898598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224320, 0.298489, 0.927677,
		0.225831, 0.910101, -0.347442,
		-0.947988, 0.287437, 0.136746,
		40.864353, 43.728966, 40.939621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627411, 44.231419, 41.092457>,  <41.527946, 43.527760, 40.843899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627411, 44.231419, 41.092457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.247696, 44.128941, 41.165352>,  <41.019867, 44.067451, 41.209091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.247696, 44.128941, 41.165352>,  <41.627411, 44.231419, 41.092457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247696, 44.128941, 41.165352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121971, 0.234155, 0.964518,
		-0.289782, 0.937834, -0.191032,
		-0.949289, -0.256199, 0.182242,
		40.962910, 44.052082, 41.220024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223122, 44.887650, 41.356808>,  <41.627411, 44.231419, 41.092457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223122, 44.887650, 41.356808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044395, 44.558804, 41.497936>,  <40.937160, 44.361496, 41.582615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044395, 44.558804, 41.497936>,  <41.223122, 44.887650, 41.356808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044395, 44.558804, 41.497936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162602, 0.313186, 0.935668,
		-0.879724, 0.475443, -0.006260,
		-0.446818, -0.822112, 0.352826,
		40.910351, 44.312168, 41.603783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931561, 45.104256, 41.952980>,  <41.223122, 44.887650, 41.356808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931561, 45.104256, 41.952980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886673, 44.708744, 41.992424>,  <40.859741, 44.471436, 42.016090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886673, 44.708744, 41.992424>,  <40.931561, 45.104256, 41.952980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886673, 44.708744, 41.992424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112328, 0.085976, 0.989945,
		-0.987315, 0.122163, 0.101419,
		-0.112215, -0.988779, 0.098608,
		40.853008, 44.412109, 42.022007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552971, 45.067921, 42.613510>,  <40.931561, 45.104256, 41.952980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552971, 45.067921, 42.613510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739807, 44.719337, 42.553673>,  <40.851910, 44.510185, 42.517769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739807, 44.719337, 42.553673>,  <40.552971, 45.067921, 42.613510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739807, 44.719337, 42.553673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256561, -0.028330, 0.966113,
		-0.846168, -0.489644, 0.210350,
		0.467093, -0.871462, -0.149595,
		40.879936, 44.457897, 42.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321442, 44.675777, 43.117493>,  <40.552971, 45.067921, 42.613510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321442, 44.675777, 43.117493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670235, 44.513149, 43.008427>,  <40.879509, 44.415573, 42.942986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670235, 44.513149, 43.008427>,  <40.321442, 44.675777, 43.117493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670235, 44.513149, 43.008427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341816, 0.106938, 0.933663,
		-0.350441, -0.907339, 0.232220,
		0.871982, -0.406570, -0.272668,
		40.931828, 44.391178, 42.926628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465996, 44.341007, 43.682198>,  <40.321442, 44.675777, 43.117493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465996, 44.341007, 43.682198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824577, 44.324726, 43.505695>,  <41.039726, 44.314957, 43.399796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824577, 44.324726, 43.505695>,  <40.465996, 44.341007, 43.682198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824577, 44.324726, 43.505695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435971, -0.097246, 0.894691,
		-0.079315, -0.994428, -0.069438,
		0.896459, -0.040690, -0.441255,
		41.093513, 44.312515, 43.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938572, 43.876102, 44.015369>,  <40.465996, 44.341007, 43.682198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938572, 43.876102, 44.015369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.201759, 44.105179, 43.819775>,  <41.359673, 44.242622, 43.702419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.201759, 44.105179, 43.819775>,  <40.938572, 43.876102, 44.015369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201759, 44.105179, 43.819775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623913, -0.050968, 0.779830,
		0.421677, -0.818187, -0.390843,
		0.657967, 0.572689, -0.488985,
		41.399151, 44.276985, 43.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.746639, 43.510674, 44.156956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768013, 43.890202, 44.032448>,  <41.780838, 44.117916, 43.957745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768013, 43.890202, 44.032448>,  <41.746639, 43.510674, 44.156956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768013, 43.890202, 44.032448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595353, 0.219985, 0.772762,
		0.801686, -0.226609, -0.553126,
		0.053436, 0.948818, -0.311271,
		41.784042, 44.174847, 43.939068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449600, 43.729343, 44.414787>,  <41.746639, 43.510674, 44.156956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449600, 43.729343, 44.414787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227135, 44.055843, 44.352283>,  <42.093655, 44.251743, 44.314781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227135, 44.055843, 44.352283>,  <42.449600, 43.729343, 44.414787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227135, 44.055843, 44.352283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390672, 0.422731, 0.817725,
		0.733523, 0.393744, -0.553994,
		-0.556165, 0.816250, -0.156258,
		42.060284, 44.300716, 44.305405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796261, 44.284088, 44.819675>,  <42.449600, 43.729343, 44.414787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796261, 44.284088, 44.819675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438286, 44.448685, 44.750671>,  <42.223499, 44.547443, 44.709270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438286, 44.448685, 44.750671>,  <42.796261, 44.284088, 44.819675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438286, 44.448685, 44.750671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062134, 0.497798, 0.865064,
		0.441843, 0.763460, -0.471067,
		-0.894938, 0.411492, -0.172511,
		42.169804, 44.572132, 44.698917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180717, 44.871773, 44.424988>,  <42.796261, 44.284088, 44.819675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180717, 44.871773, 44.424988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580498, 44.859352, 44.420479>,  <43.820366, 44.851898, 44.417774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580498, 44.859352, 44.420479>,  <43.180717, 44.871773, 44.424988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580498, 44.859352, 44.420479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021129, -0.338493, -0.940732,
		0.025397, 0.940457, -0.338964,
		0.999454, -0.031053, -0.011274,
		43.880333, 44.850037, 44.417095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380764, 45.290565, 43.914478>,  <43.180717, 44.871773, 44.424988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380764, 45.290565, 43.914478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675545, 45.025280, 43.966717>,  <43.852413, 44.866108, 43.998058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675545, 45.025280, 43.966717>,  <43.380764, 45.290565, 43.914478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675545, 45.025280, 43.966717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000641, -0.192517, -0.981293,
		0.675948, 0.723247, -0.141450,
		0.736949, -0.663212, 0.130595,
		43.896629, 44.826317, 44.005894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955727, 45.446266, 43.443947>,  <43.380764, 45.290565, 43.914478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955727, 45.446266, 43.443947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003281, 45.061348, 43.541801>,  <44.031815, 44.830395, 43.600513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003281, 45.061348, 43.541801>,  <43.955727, 45.446266, 43.443947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003281, 45.061348, 43.541801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029734, -0.242827, -0.969614,
		0.992463, 0.122547, -0.000256,
		0.118886, -0.962298, 0.244641,
		44.038948, 44.772659, 43.615192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484577, 45.225643, 42.979904>,  <43.955727, 45.446266, 43.443947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484577, 45.225643, 42.979904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306961, 44.891911, 43.110573>,  <44.200390, 44.691669, 43.188972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306961, 44.891911, 43.110573>,  <44.484577, 45.225643, 42.979904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306961, 44.891911, 43.110573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096891, -0.407159, -0.908203,
		0.890752, -0.371629, 0.261635,
		-0.444042, -0.834334, 0.326671,
		44.173748, 44.641609, 43.208572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980064, 44.690754, 42.709259>,  <44.484577, 45.225643, 42.979904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980064, 44.690754, 42.709259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614113, 44.550632, 42.789536>,  <44.394543, 44.466560, 42.837700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614113, 44.550632, 42.789536>,  <44.980064, 44.690754, 42.709259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614113, 44.550632, 42.789536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070755, -0.628524, -0.774565,
		0.397473, -0.694436, 0.599812,
		-0.914882, -0.350308, 0.200687,
		44.339649, 44.445541, 42.849743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014835, 44.075001, 42.481865>,  <44.980064, 44.690754, 42.709259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014835, 44.075001, 42.481865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621185, 44.124981, 42.532272>,  <44.384995, 44.154968, 42.562515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621185, 44.124981, 42.532272>,  <45.014835, 44.075001, 42.481865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621185, 44.124981, 42.532272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172480, -0.506467, -0.844833,
		-0.041737, -0.853159, 0.519979,
		-0.984128, 0.124947, 0.126015,
		44.325947, 44.162464, 42.570076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759377, 43.453545, 42.278965>,  <45.014835, 44.075001, 42.481865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759377, 43.453545, 42.278965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432259, 43.683624, 42.271439>,  <44.235989, 43.821674, 42.266922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432259, 43.683624, 42.271439>,  <44.759377, 43.453545, 42.278965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432259, 43.683624, 42.271439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239238, -0.369514, -0.897900,
		-0.523427, -0.729796, 0.439797,
		-0.817795, 0.575202, -0.018819,
		44.186920, 43.856186, 42.265793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282978, 43.038044, 42.063087>,  <44.759377, 43.453545, 42.278965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282978, 43.038044, 42.063087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169289, 43.410839, 41.973091>,  <44.101074, 43.634514, 41.919094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169289, 43.410839, 41.973091>,  <44.282978, 43.038044, 42.063087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169289, 43.410839, 41.973091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244268, -0.297319, -0.923003,
		-0.927120, -0.207379, 0.312159,
		-0.284222, 0.931985, -0.224994,
		44.084023, 43.690434, 41.905594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739063, 42.888672, 41.599781>,  <44.282978, 43.038044, 42.063087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739063, 42.888672, 41.599781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821297, 43.277538, 41.554821>,  <43.870636, 43.510857, 41.527847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821297, 43.277538, 41.554821>,  <43.739063, 42.888672, 41.599781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821297, 43.277538, 41.554821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122547, -0.088373, -0.988520,
		-0.970936, 0.217000, 0.100968,
		0.205587, 0.972163, -0.112397,
		43.882973, 43.569187, 41.521103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098934, 43.183861, 41.351974>,  <43.739063, 42.888672, 41.599781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098934, 43.183861, 41.351974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400238, 43.409889, 41.217339>,  <43.581020, 43.545506, 41.136559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400238, 43.409889, 41.217339>,  <43.098934, 43.183861, 41.351974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400238, 43.409889, 41.217339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326974, -0.122306, -0.937086,
		-0.570686, 0.815927, 0.092634,
		0.753264, 0.565070, -0.336585,
		43.626217, 43.579411, 41.116364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803986, 43.644760, 40.728233>,  <43.098934, 43.183861, 41.351974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803986, 43.644760, 40.728233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202156, 43.606556, 40.729347>,  <43.441059, 43.583633, 40.730015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202156, 43.606556, 40.729347>,  <42.803986, 43.644760, 40.728233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202156, 43.606556, 40.729347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023443, -0.272357, -0.961911,
		0.092626, 0.957445, -0.273349,
		0.995425, -0.095506, 0.002782,
		43.500782, 43.577904, 40.730183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098545, 44.113457, 40.193771>,  <42.803986, 43.644760, 40.728233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098545, 44.113457, 40.193771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401939, 43.863190, 40.266701>,  <43.583977, 43.713028, 40.310459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401939, 43.863190, 40.266701>,  <43.098545, 44.113457, 40.193771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401939, 43.863190, 40.266701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225025, -0.011117, -0.974290,
		0.611610, 0.780009, 0.132359,
		0.758483, -0.625669, 0.182321,
		43.629486, 43.675488, 40.321396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743465, 44.398529, 39.926609>,  <43.098545, 44.113457, 40.193771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743465, 44.398529, 39.926609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810112, 44.005085, 39.954201>,  <43.850101, 43.769020, 39.970757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810112, 44.005085, 39.954201>,  <43.743465, 44.398529, 39.926609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810112, 44.005085, 39.954201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266736, -0.022389, -0.963510,
		0.949258, 0.178937, 0.258633,
		0.166617, -0.983606, 0.068982,
		43.860096, 43.710003, 39.974895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438198, 44.332893, 39.716393>,  <43.743465, 44.398529, 39.926609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438198, 44.332893, 39.716393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282562, 43.967403, 39.669537>,  <44.189182, 43.748112, 39.641422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282562, 43.967403, 39.669537>,  <44.438198, 44.332893, 39.716393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282562, 43.967403, 39.669537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308887, -0.009605, -0.951050,
		0.867870, -0.406228, 0.285974,
		-0.389090, -0.913721, -0.117142,
		44.165836, 43.693287, 39.634396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010681, 43.966770, 39.513233>,  <44.438198, 44.332893, 39.716393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010681, 43.966770, 39.513233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700027, 43.743786, 39.395870>,  <44.513638, 43.609997, 39.325455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700027, 43.743786, 39.395870>,  <45.010681, 43.966770, 39.513233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700027, 43.743786, 39.395870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424998, -0.119861, -0.897224,
		0.464995, -0.821508, 0.330006,
		-0.776632, -0.557456, -0.293404,
		44.467037, 43.576550, 39.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364868, 43.493011, 39.051765>,  <45.010681, 43.966770, 39.513233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364868, 43.493011, 39.051765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972946, 43.459618, 38.979099>,  <44.737793, 43.439583, 38.935497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972946, 43.459618, 38.979099>,  <45.364868, 43.493011, 39.051765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972946, 43.459618, 38.979099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186841, -0.058942, -0.980620,
		0.071161, -0.994764, 0.073351,
		-0.979809, -0.083487, -0.181668,
		44.679005, 43.434570, 38.924599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220226, 42.926331, 38.606636>,  <45.364868, 43.493011, 39.051765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220226, 42.926331, 38.606636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904236, 43.166702, 38.557938>,  <44.714642, 43.310925, 38.528717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904236, 43.166702, 38.557938>,  <45.220226, 42.926331, 38.606636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904236, 43.166702, 38.557938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153093, 0.001044, -0.988211,
		-0.593717, -0.799302, -0.092823,
		-0.789976, 0.600929, -0.121748,
		44.667244, 43.346981, 38.521412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862183, 42.538986, 38.209080>,  <45.220226, 42.926331, 38.606636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862183, 42.538986, 38.209080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725189, 42.907028, 38.133060>,  <44.642994, 43.127853, 38.087448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725189, 42.907028, 38.133060>,  <44.862183, 42.538986, 38.209080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725189, 42.907028, 38.133060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073644, -0.175373, -0.981744,
		-0.936634, -0.350224, -0.007698,
		-0.342480, 0.920102, -0.190053,
		44.622444, 43.183060, 38.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355915, 42.419636, 37.675251>,  <44.862183, 42.538986, 38.209080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355915, 42.419636, 37.675251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482002, 42.798981, 37.661125>,  <44.557655, 43.026588, 37.652649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482002, 42.798981, 37.661125>,  <44.355915, 42.419636, 37.675251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482002, 42.798981, 37.661125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108640, -0.073032, -0.991395,
		-0.942780, 0.308670, -0.126051,
		0.315220, 0.948361, -0.035319,
		44.576569, 43.083488, 37.650528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163231, 42.633854, 37.014938>,  <44.355915, 42.419636, 37.675251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163231, 42.633854, 37.014938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429405, 42.913265, 37.120209>,  <44.589108, 43.080910, 37.183372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429405, 42.913265, 37.120209>,  <44.163231, 42.633854, 37.014938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429405, 42.913265, 37.120209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083754, 0.280476, -0.956200,
		-0.741744, 0.658329, 0.128134,
		0.665433, 0.698524, 0.263179,
		44.629036, 43.122822, 37.199162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906113, 43.322449, 36.577343>,  <44.163231, 42.633854, 37.014938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906113, 43.322449, 36.577343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268967, 43.437302, 36.700413>,  <44.486679, 43.506214, 36.774254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268967, 43.437302, 36.700413>,  <43.906113, 43.322449, 36.577343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268967, 43.437302, 36.700413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200768, 0.347264, -0.916024,
		-0.369864, 0.892727, 0.257368,
		0.907134, 0.287133, 0.307672,
		44.541107, 43.523441, 36.792713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024029, 43.989613, 36.340004>,  <43.906113, 43.322449, 36.577343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024029, 43.989613, 36.340004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383949, 43.818928, 36.376377>,  <44.599903, 43.716518, 36.398201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383949, 43.818928, 36.376377>,  <44.024029, 43.989613, 36.340004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383949, 43.818928, 36.376377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261061, 0.359586, -0.895849,
		0.349571, 0.829828, 0.434955,
		0.899804, -0.426712, 0.090935,
		44.653889, 43.690914, 36.403656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468056, 44.521824, 36.156548>,  <44.024029, 43.989613, 36.340004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468056, 44.521824, 36.156548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692047, 44.194572, 36.104240>,  <44.826443, 43.998222, 36.072857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692047, 44.194572, 36.104240>,  <44.468056, 44.521824, 36.156548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692047, 44.194572, 36.104240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076658, 0.208318, -0.975052,
		0.824954, 0.535982, 0.179369,
		0.559976, -0.818124, -0.130766,
		44.860039, 43.949135, 36.065010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998314, 44.756256, 35.931599>,  <44.468056, 44.521824, 36.156548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998314, 44.756256, 35.931599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997810, 44.374332, 35.812706>,  <44.997509, 44.145180, 35.741371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997810, 44.374332, 35.812706>,  <44.998314, 44.756256, 35.931599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997810, 44.374332, 35.812706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072964, 0.296350, -0.952288,
		0.997334, -0.022882, 0.069295,
		-0.001255, -0.954805, -0.297230,
		44.997433, 44.087891, 35.723537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545330, 44.695709, 35.515812>,  <44.998314, 44.756256, 35.931599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545330, 44.695709, 35.515812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312798, 44.387226, 35.412048>,  <45.173279, 44.202137, 35.349789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312798, 44.387226, 35.412048>,  <45.545330, 44.695709, 35.515812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312798, 44.387226, 35.412048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125254, 0.230201, -0.965049,
		0.803971, -0.593503, -0.037226,
		-0.581329, -0.771208, -0.259413,
		45.138397, 44.155865, 35.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814972, 44.302364, 34.884697>,  <45.545330, 44.695709, 35.515812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814972, 44.302364, 34.884697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425858, 44.209778, 34.880562>,  <45.192390, 44.154224, 34.878082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425858, 44.209778, 34.880562>,  <45.814972, 44.302364, 34.884697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425858, 44.209778, 34.880562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014865, 0.106859, -0.994163,
		0.231224, -0.966955, -0.107392,
		-0.972787, -0.231471, -0.010335,
		45.134022, 44.140335, 34.877460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788296, 43.873459, 34.302231>,  <45.814972, 44.302364, 34.884697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788296, 43.873459, 34.302231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425354, 44.008156, 34.402878>,  <45.207588, 44.088974, 34.463264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425354, 44.008156, 34.402878>,  <45.788296, 43.873459, 34.302231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425354, 44.008156, 34.402878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257415, 0.028106, -0.965892,
		-0.332332, -0.941176, 0.061182,
		-0.907355, 0.336746, 0.251613,
		45.153149, 44.109180, 34.478363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438938, 43.547806, 33.876606>,  <45.788296, 43.873459, 34.302231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438938, 43.547806, 33.876606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169556, 43.830379, 33.963696>,  <45.007927, 43.999924, 34.015949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169556, 43.830379, 33.963696>,  <45.438938, 43.547806, 33.876606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169556, 43.830379, 33.963696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308547, -0.000974, -0.951209,
		-0.671759, -0.707774, 0.218625,
		-0.673453, 0.706439, 0.217727,
		44.967518, 44.042313, 34.029015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780941, 43.287994, 33.517155>,  <45.438938, 43.547806, 33.876606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780941, 43.287994, 33.517155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755470, 43.680359, 33.590649>,  <44.740189, 43.915779, 33.634747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755470, 43.680359, 33.590649>,  <44.780941, 43.287994, 33.517155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755470, 43.680359, 33.590649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406783, 0.142608, -0.902325,
		-0.911303, -0.132198, 0.389937,
		-0.063678, 0.980911, 0.183735,
		44.736366, 43.974632, 33.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.680710, 44.479725, 45.780323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549675, 44.834454, 45.649948>,  <44.471054, 45.047291, 45.571724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549675, 44.834454, 45.649948>,  <44.680710, 44.479725, 45.780323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549675, 44.834454, 45.649948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529715, -0.458043, -0.713862,
		-0.782362, -0.061195, 0.619810,
		-0.327585, 0.886821, -0.325940,
		44.451401, 45.100498, 45.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017319, 44.398815, 45.562698>,  <44.680710, 44.479725, 45.780323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017319, 44.398815, 45.562698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.150444, 44.719971, 45.364872>,  <44.230320, 44.912666, 45.246178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.150444, 44.719971, 45.364872>,  <44.017319, 44.398815, 45.562698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150444, 44.719971, 45.364872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495423, -0.297377, -0.816164,
		-0.802365, 0.516652, 0.298799,
		0.332817, 0.802893, -0.494566,
		44.250290, 44.960838, 45.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417976, 44.677303, 45.130459>,  <44.017319, 44.398815, 45.562698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417976, 44.677303, 45.130459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.764107, 44.812721, 44.982628>,  <43.971786, 44.893970, 44.893929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.764107, 44.812721, 44.982628>,  <43.417976, 44.677303, 45.130459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764107, 44.812721, 44.982628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342762, -0.138264, -0.929192,
		-0.365674, 0.930736, -0.003603,
		0.865330, 0.338546, -0.369581,
		44.023705, 44.914284, 44.871754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867523, 45.194481, 45.067097>,  <43.417976, 44.677303, 45.130459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867523, 45.194481, 45.067097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.481796, 45.095699, 45.028915>,  <42.250362, 45.036430, 45.006004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.481796, 45.095699, 45.028915>,  <42.867523, 45.194481, 45.067097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481796, 45.095699, 45.028915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198211, 0.434347, 0.878667,
		-0.175527, 0.866232, -0.467796,
		-0.964315, -0.246952, -0.095457,
		42.192501, 45.021614, 45.000278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482208, 45.833206, 45.283504>,  <42.867523, 45.194481, 45.067097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482208, 45.833206, 45.283504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.216011, 45.534657, 45.286011>,  <42.056293, 45.355526, 45.287514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.216011, 45.534657, 45.286011>,  <42.482208, 45.833206, 45.283504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216011, 45.534657, 45.286011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191825, 0.179144, 0.964941,
		-0.721330, 0.640963, -0.262393,
		-0.665497, -0.746374, 0.006269,
		42.016361, 45.310745, 45.287891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935322, 46.150627, 45.637592>,  <42.482208, 45.833206, 45.283504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935322, 46.150627, 45.637592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.917847, 45.751713, 45.661293>,  <41.907364, 45.512363, 45.675514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.917847, 45.751713, 45.661293>,  <41.935322, 46.150627, 45.637592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917847, 45.751713, 45.661293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270000, 0.068886, 0.960393,
		-0.961869, 0.025956, -0.272276,
		-0.043684, -0.997287, 0.059251,
		41.904743, 45.452526, 45.679070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522285, 46.178547, 46.191051>,  <41.935322, 46.150627, 45.637592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522285, 46.178547, 46.191051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655251, 45.802116, 46.166153>,  <41.735027, 45.576256, 46.151215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655251, 45.802116, 46.166153>,  <41.522285, 46.178547, 46.191051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655251, 45.802116, 46.166153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244312, -0.149667, 0.958077,
		-0.910942, -0.303266, -0.279667,
		0.332409, -0.941079, -0.062246,
		41.754974, 45.519794, 46.147480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032776, 45.747326, 46.439182>,  <41.522285, 46.178547, 46.191051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032776, 45.747326, 46.439182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375793, 45.544548, 46.474098>,  <41.581604, 45.422882, 46.495049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375793, 45.544548, 46.474098>,  <41.032776, 45.747326, 46.439182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375793, 45.544548, 46.474098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277002, -0.312092, 0.908773,
		-0.433461, -0.803492, -0.408060,
		0.857543, -0.506951, 0.087289,
		41.633057, 45.392464, 46.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892040, 45.063885, 46.539520>,  <41.032776, 45.747326, 46.439182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892040, 45.063885, 46.539520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255150, 45.109764, 46.700909>,  <41.473015, 45.137291, 46.797741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255150, 45.109764, 46.700909>,  <40.892040, 45.063885, 46.539520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255150, 45.109764, 46.700909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304772, -0.480536, 0.822313,
		0.288201, -0.869442, -0.401262,
		0.907774, 0.114698, 0.403472,
		41.527481, 45.144173, 46.821949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968914, 44.443604, 46.911007>,  <40.892040, 45.063885, 46.539520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968914, 44.443604, 46.911007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229195, 44.706757, 47.062679>,  <41.385365, 44.864647, 47.153683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229195, 44.706757, 47.062679>,  <40.968914, 44.443604, 46.911007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229195, 44.706757, 47.062679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404008, -0.122861, 0.906467,
		0.642934, -0.743033, 0.185843,
		0.650702, 0.657881, 0.379183,
		41.424404, 44.904121, 47.176434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147175, 44.121517, 47.524635>,  <40.968914, 44.443604, 46.911007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147175, 44.121517, 47.524635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258553, 44.503593, 47.564785>,  <41.325378, 44.732841, 47.588875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258553, 44.503593, 47.564785>,  <41.147175, 44.121517, 47.524635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258553, 44.503593, 47.564785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381691, 0.014155, 0.924181,
		0.881351, -0.295646, 0.368530,
		0.278447, 0.955192, 0.100370,
		41.342087, 44.790150, 47.594894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424240, 44.105938, 48.171452>,  <41.147175, 44.121517, 47.524635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424240, 44.105938, 48.171452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338722, 44.492142, 48.112003>,  <41.287411, 44.723862, 48.076336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338722, 44.492142, 48.112003>,  <41.424240, 44.105938, 48.171452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338722, 44.492142, 48.112003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411760, 0.048895, 0.909980,
		0.885858, 0.255748, 0.387103,
		-0.213798, 0.965506, -0.148621,
		41.274582, 44.781796, 48.067417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570717, 44.448032, 48.788738>,  <41.424240, 44.105938, 48.171452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570717, 44.448032, 48.788738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346779, 44.725163, 48.606941>,  <41.212414, 44.891441, 48.497864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346779, 44.725163, 48.606941>,  <41.570717, 44.448032, 48.788738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346779, 44.725163, 48.606941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364713, 0.286475, 0.885955,
		0.744012, 0.661760, 0.092300,
		-0.559848, 0.692824, -0.454493,
		41.178825, 44.933010, 48.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797359, 44.993317, 49.060337>,  <41.570717, 44.448032, 48.788738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797359, 44.993317, 49.060337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440178, 45.103607, 48.918007>,  <41.225868, 45.169781, 48.832607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440178, 45.103607, 48.918007>,  <41.797359, 44.993317, 49.060337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440178, 45.103607, 48.918007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265100, 0.316752, 0.910708,
		0.363812, 0.907549, -0.209751,
		-0.892952, 0.275721, -0.355829,
		41.172291, 45.186325, 48.811256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594349, 45.603798, 49.451679>,  <41.797359, 44.993317, 49.060337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594349, 45.603798, 49.451679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.252914, 45.482700, 49.282101>,  <41.048054, 45.410042, 49.180351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.252914, 45.482700, 49.282101>,  <41.594349, 45.603798, 49.451679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252914, 45.482700, 49.282101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500028, 0.247827, 0.829791,
		-0.146148, 0.920287, -0.362923,
		-0.853588, -0.302744, -0.423950,
		40.996838, 45.391876, 49.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106152, 46.216049, 49.489151>,  <41.594349, 45.603798, 49.451679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106152, 46.216049, 49.489151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870224, 45.896664, 49.440857>,  <40.728668, 45.705032, 49.411880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870224, 45.896664, 49.440857>,  <41.106152, 46.216049, 49.489151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870224, 45.896664, 49.440857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501350, 0.244860, 0.829874,
		-0.633058, 0.550005, -0.544731,
		-0.589818, -0.798460, -0.120734,
		40.693279, 45.657127, 49.404636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418419, 46.405735, 49.530910>,  <41.106152, 46.216049, 49.489151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418419, 46.405735, 49.530910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404648, 46.014877, 49.614822>,  <40.396385, 45.780361, 49.665169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404648, 46.014877, 49.614822>,  <40.418419, 46.405735, 49.530910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404648, 46.014877, 49.614822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567054, 0.191941, 0.801004,
		-0.822961, -0.091377, -0.560701,
		-0.034429, -0.977143, 0.209776,
		40.394318, 45.721733, 49.677753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720959, 46.325275, 49.724884>,  <40.418419, 46.405735, 49.530910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720959, 46.325275, 49.724884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.901260, 45.998524, 49.868843>,  <40.009441, 45.802471, 49.955219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.901260, 45.998524, 49.868843>,  <39.720959, 46.325275, 49.724884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901260, 45.998524, 49.868843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585148, 0.034072, 0.810211,
		-0.674109, -0.575798, -0.462638,
		0.450755, -0.816882, 0.359895,
		40.036488, 45.753460, 49.976810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128944, 45.734550, 49.829754>,  <39.720959, 46.325275, 49.724884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128944, 45.734550, 49.829754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440742, 45.656528, 50.067856>,  <39.627823, 45.609715, 50.210716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440742, 45.656528, 50.067856>,  <39.128944, 45.734550, 49.829754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440742, 45.656528, 50.067856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625972, -0.277842, 0.728672,
		0.023255, -0.940615, -0.338679,
		0.779499, -0.195058, 0.595259,
		39.674591, 45.598011, 50.246433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872143, 45.194218, 50.365990>,  <39.128944, 45.734550, 49.829754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872143, 45.194218, 50.365990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198090, 45.358715, 50.529388>,  <39.393658, 45.457413, 50.627426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198090, 45.358715, 50.529388>,  <38.872143, 45.194218, 50.365990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198090, 45.358715, 50.529388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425668, -0.053790, 0.903279,
		0.393437, -0.909939, 0.131220,
		0.814870, 0.411240, 0.408494,
		39.442551, 45.482086, 50.651936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945740, 44.805531, 50.884064>,  <38.872143, 45.194218, 50.365990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945740, 44.805531, 50.884064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163612, 45.127823, 50.977112>,  <39.294334, 45.321198, 51.032940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163612, 45.127823, 50.977112>,  <38.945740, 44.805531, 50.884064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163612, 45.127823, 50.977112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278809, -0.087629, 0.956340,
		0.790940, -0.585759, 0.176916,
		0.544682, 0.805734, 0.232625,
		39.327019, 45.369541, 51.046898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282410, 44.622402, 51.392776>,  <38.945740, 44.805531, 50.884064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282410, 44.622402, 51.392776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280594, 45.022263, 51.403236>,  <39.279503, 45.262177, 51.409512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280594, 45.022263, 51.403236>,  <39.282410, 44.622402, 51.392776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280594, 45.022263, 51.403236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321704, -0.026222, 0.946477,
		0.946829, -0.004113, 0.321710,
		-0.004543, 0.999648, 0.026151,
		39.279232, 45.322155, 51.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548386, 44.755741, 52.048748>,  <39.282410, 44.622402, 51.392776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548386, 44.755741, 52.048748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365822, 45.093037, 51.935154>,  <39.256283, 45.295414, 51.866997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365822, 45.093037, 51.935154>,  <39.548386, 44.755741, 52.048748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365822, 45.093037, 51.935154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334162, 0.133357, 0.933034,
		0.824638, 0.520740, 0.220912,
		-0.456408, 0.843235, -0.283983,
		39.228901, 45.346008, 51.849960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644386, 45.297241, 52.526936>,  <39.548386, 44.755741, 52.048748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644386, 45.297241, 52.526936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346298, 45.493473, 52.346275>,  <39.167446, 45.611210, 52.237881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346298, 45.493473, 52.346275>,  <39.644386, 45.297241, 52.526936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346298, 45.493473, 52.346275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363094, 0.269567, 0.891906,
		0.559297, 0.828655, -0.022761,
		-0.745218, 0.490576, -0.451648,
		39.122734, 45.640644, 52.210781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529240, 45.962959, 52.826290>,  <39.644386, 45.297241, 52.526936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529240, 45.962959, 52.826290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187965, 45.855465, 52.647465>,  <38.983200, 45.790970, 52.540169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187965, 45.855465, 52.647465>,  <39.529240, 45.962959, 52.826290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187965, 45.855465, 52.647465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501242, 0.185201, 0.845256,
		-0.144351, 0.945243, -0.292710,
		-0.853182, -0.268732, -0.447061,
		38.932011, 45.774845, 52.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230217, 46.547314, 52.964539>,  <39.529240, 45.962959, 52.826290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230217, 46.547314, 52.964539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951767, 46.267754, 52.898884>,  <38.784695, 46.100018, 52.859489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951767, 46.267754, 52.898884>,  <39.230217, 46.547314, 52.964539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951767, 46.267754, 52.898884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477642, 0.280188, 0.832678,
		-0.535971, 0.658050, -0.528872,
		-0.696127, -0.698903, -0.164140,
		38.742928, 46.058083, 52.849644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684246, 46.702812, 53.282848>,  <39.230217, 46.547314, 52.964539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684246, 46.702812, 53.282848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531731, 46.338295, 53.220680>,  <38.440220, 46.119583, 53.183380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531731, 46.338295, 53.220680>,  <38.684246, 46.702812, 53.282848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531731, 46.338295, 53.220680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564106, 0.096158, 0.820084,
		-0.732395, 0.400364, -0.550732,
		-0.381289, -0.911297, -0.155422,
		38.417343, 46.064907, 53.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923042, 46.786221, 53.347958>,  <38.684246, 46.702812, 53.282848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923042, 46.786221, 53.347958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012230, 46.402420, 53.416824>,  <38.065742, 46.172138, 53.458145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012230, 46.402420, 53.416824>,  <37.923042, 46.786221, 53.347958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012230, 46.402420, 53.416824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510577, 0.035506, 0.859098,
		-0.830420, -0.279455, -0.481983,
		0.222966, -0.959502, 0.172168,
		38.079121, 46.114571, 53.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311825, 46.620369, 53.588531>,  <37.923042, 46.786221, 53.347958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311825, 46.620369, 53.588531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580322, 46.348953, 53.707870>,  <37.741421, 46.186104, 53.779476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580322, 46.348953, 53.707870>,  <37.311825, 46.620369, 53.588531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580322, 46.348953, 53.707870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426419, -0.024263, 0.904200,
		-0.606300, -0.734160, -0.305630,
		0.671243, -0.678543, 0.298349,
		37.781696, 46.145390, 53.797375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002838, 46.342644, 54.068779>,  <37.311825, 46.620369, 53.588531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002838, 46.342644, 54.068779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383812, 46.231430, 54.118675>,  <37.612396, 46.164703, 54.148613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383812, 46.231430, 54.118675>,  <37.002838, 46.342644, 54.068779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383812, 46.231430, 54.118675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146665, -0.059407, 0.987401,
		-0.267117, -0.958733, -0.097359,
		0.952438, -0.278031, 0.124744,
		37.669544, 46.148022, 54.156097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037727, 45.677055, 54.433250>,  <37.002838, 46.342644, 54.068779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037727, 45.677055, 54.433250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383339, 45.869122, 54.493767>,  <37.590706, 45.984364, 54.530075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383339, 45.869122, 54.493767>,  <37.037727, 45.677055, 54.433250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383339, 45.869122, 54.493767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153078, -0.035711, 0.987569,
		0.479603, -0.876449, 0.042648,
		0.864030, 0.480169, 0.151292,
		37.642548, 46.013172, 54.539154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364120, 45.355801, 54.974895>,  <37.037727, 45.677055, 54.433250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364120, 45.355801, 54.974895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539955, 45.715073, 54.977226>,  <37.645458, 45.930637, 54.978622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539955, 45.715073, 54.977226>,  <37.364120, 45.355801, 54.974895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539955, 45.715073, 54.977226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154436, 0.069194, 0.985577,
		0.884823, -0.434148, 0.169128,
		0.439588, 0.898181, 0.005824,
		37.671833, 45.984528, 54.978973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789268, 45.303665, 55.579292>,  <37.364120, 45.355801, 54.974895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789268, 45.303665, 55.579292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761024, 45.694969, 55.501289>,  <37.744080, 45.929752, 55.454487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761024, 45.694969, 55.501289>,  <37.789268, 45.303665, 55.579292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761024, 45.694969, 55.501289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106412, 0.186993, 0.976581,
		0.991812, 0.089707, 0.090894,
		-0.070610, 0.978257, -0.195008,
		37.739841, 45.988445, 55.442787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093315, 45.582661, 56.156063>,  <37.789268, 45.303665, 55.579292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093315, 45.582661, 56.156063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900948, 45.897209, 56.000969>,  <37.785526, 46.085938, 55.907913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900948, 45.897209, 56.000969>,  <38.093315, 45.582661, 56.156063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900948, 45.897209, 56.000969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185914, 0.340715, 0.921601,
		0.856828, 0.515299, -0.017659,
		-0.480917, 0.786371, -0.387736,
		37.756672, 46.133121, 55.884647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355762, 46.096596, 56.523167>,  <38.093315, 45.582661, 56.156063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355762, 46.096596, 56.523167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989815, 46.197876, 56.397369>,  <37.770248, 46.258644, 56.321892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989815, 46.197876, 56.397369>,  <38.355762, 46.096596, 56.523167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989815, 46.197876, 56.397369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267289, 0.203980, 0.941779,
		0.302612, 0.945664, -0.118936,
		-0.914867, 0.253204, -0.314493,
		37.715355, 46.273838, 56.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
