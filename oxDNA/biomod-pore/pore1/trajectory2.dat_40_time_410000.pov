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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.433327, 42.120136, 41.001850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564682, 42.115089, 41.379635>,  <42.643494, 42.112061, 41.606304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564682, 42.115089, 41.379635>,  <42.433327, 42.120136, 41.001850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564682, 42.115089, 41.379635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930322, -0.177176, 0.321108,
		0.163285, -0.984098, -0.069917,
		0.328389, -0.012613, 0.944458,
		42.663200, 42.111305, 41.662971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101280, 41.588558, 41.297112>,  <42.433327, 42.120136, 41.001850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101280, 41.588558, 41.297112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221447, 41.785828, 41.623676>,  <42.293549, 41.904190, 41.819614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221447, 41.785828, 41.623676>,  <42.101280, 41.588558, 41.297112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221447, 41.785828, 41.623676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931618, -0.031837, 0.362043,
		0.204543, -0.869345, 0.449890,
		0.300417, 0.493179, 0.816410,
		42.311573, 41.933781, 41.868599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778297, 41.215626, 41.859642>,  <42.101280, 41.588558, 41.297112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778297, 41.215626, 41.859642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882584, 41.575478, 41.999748>,  <41.945156, 41.791389, 42.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882584, 41.575478, 41.999748>,  <41.778297, 41.215626, 41.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882584, 41.575478, 41.999748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863027, 0.054581, 0.502199,
		0.432678, -0.433221, 0.790639,
		0.260717, 0.899634, 0.350265,
		41.960800, 41.845367, 42.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727627, 41.095219, 42.609570>,  <41.778297, 41.215626, 41.859642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727627, 41.095219, 42.609570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672398, 41.474342, 42.494606>,  <41.639259, 41.701817, 42.425629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672398, 41.474342, 42.494606>,  <41.727627, 41.095219, 42.609570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672398, 41.474342, 42.494606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924982, -0.019669, 0.379501,
		0.354040, 0.318244, 0.879418,
		-0.138071, 0.947805, -0.287407,
		41.630978, 41.758682, 42.408382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488319, 41.471523, 43.198929>,  <41.727627, 41.095219, 42.609570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488319, 41.471523, 43.198929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369667, 41.690582, 42.885983>,  <41.298477, 41.822018, 42.698215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369667, 41.690582, 42.885983>,  <41.488319, 41.471523, 43.198929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369667, 41.690582, 42.885983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916652, 0.066523, 0.394111,
		0.267878, 0.834063, 0.482266,
		-0.296631, 0.547644, -0.782366,
		41.280678, 41.854874, 42.651272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147099, 42.045238, 43.458420>,  <41.488319, 41.471523, 43.198929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147099, 42.045238, 43.458420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017326, 42.046257, 43.080055>,  <40.939465, 42.046867, 42.853039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017326, 42.046257, 43.080055>,  <41.147099, 42.045238, 43.458420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017326, 42.046257, 43.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945246, 0.036616, 0.324298,
		0.035460, 0.999326, -0.009475,
		-0.324426, 0.002544, -0.945908,
		40.919998, 42.047020, 42.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585281, 42.442348, 43.464363>,  <41.147099, 42.045238, 43.458420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585281, 42.442348, 43.464363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522331, 42.247925, 43.120506>,  <40.484562, 42.131271, 42.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522331, 42.247925, 43.120506>,  <40.585281, 42.442348, 43.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522331, 42.247925, 43.120506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974881, -0.062460, 0.213789,
		-0.157606, 0.871693, -0.464016,
		-0.157376, -0.486055, -0.859641,
		40.475117, 42.102108, 42.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104725, 42.773987, 43.162304>,  <40.585281, 42.442348, 43.464363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104725, 42.773987, 43.162304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105827, 42.414680, 42.986526>,  <40.106487, 42.199097, 42.881062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105827, 42.414680, 42.986526>,  <40.104725, 42.773987, 43.162304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105827, 42.414680, 42.986526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984314, -0.079956, 0.157272,
		-0.176408, 0.432113, -0.884397,
		0.002754, -0.898268, -0.439440,
		40.106655, 42.145199, 42.854694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644672, 42.759583, 42.601269>,  <40.104725, 42.773987, 43.162304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644672, 42.759583, 42.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684284, 42.370132, 42.683491>,  <39.708050, 42.136463, 42.732822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684284, 42.370132, 42.683491>,  <39.644672, 42.759583, 42.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684284, 42.370132, 42.683491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981902, -0.062096, 0.178920,
		-0.161436, -0.219550, -0.962152,
		0.099027, -0.973623, 0.205552,
		39.713993, 42.078045, 42.745155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066914, 42.434967, 42.340469>,  <39.644672, 42.759583, 42.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066914, 42.434967, 42.340469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208862, 42.169128, 42.603493>,  <39.294033, 42.009624, 42.761307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208862, 42.169128, 42.603493>,  <39.066914, 42.434967, 42.340469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208862, 42.169128, 42.603493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934122, -0.281015, 0.220108,
		0.038502, -0.692350, -0.720534,
		0.354872, -0.664592, 0.657559,
		39.315323, 41.969749, 42.800762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670834, 41.967892, 42.220032>,  <39.066914, 42.434967, 42.340469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670834, 41.967892, 42.220032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812172, 41.901527, 42.588295>,  <38.896976, 41.861710, 42.809254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812172, 41.901527, 42.588295>,  <38.670834, 41.967892, 42.220032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812172, 41.901527, 42.588295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903004, -0.317594, 0.289340,
		0.244394, -0.933600, -0.262035,
		0.353349, -0.165906, 0.920663,
		38.918175, 41.851757, 42.864494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304386, 41.417931, 42.368114>,  <38.670834, 41.967892, 42.220032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304386, 41.417931, 42.368114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443909, 41.512154, 42.730957>,  <38.527622, 41.568687, 42.948662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443909, 41.512154, 42.730957>,  <38.304386, 41.417931, 42.368114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443909, 41.512154, 42.730957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658530, -0.627083, 0.416059,
		0.666839, -0.742482, -0.063609,
		0.348805, 0.235556, 0.907110,
		38.548550, 41.582821, 43.003090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559101, 40.809349, 42.702709>,  <38.304386, 41.417931, 42.368114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559101, 40.809349, 42.702709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462879, 41.060455, 42.998829>,  <38.405148, 41.211121, 43.176502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462879, 41.060455, 42.998829>,  <38.559101, 40.809349, 42.702709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462879, 41.060455, 42.998829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655003, -0.667846, 0.353485,
		0.716312, -0.399866, 0.571842,
		-0.240556, 0.627764, 0.740300,
		38.390713, 41.248783, 43.220921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187668, 40.420361, 43.116455>,  <38.559101, 40.809349, 42.702709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187668, 40.420361, 43.116455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139591, 40.760147, 43.321964>,  <38.110744, 40.964020, 43.445271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139591, 40.760147, 43.321964>,  <38.187668, 40.420361, 43.116455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139591, 40.760147, 43.321964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832809, -0.367964, 0.413560,
		0.540354, -0.378165, 0.751670,
		-0.120194, 0.849467, 0.513771,
		38.103535, 41.014988, 43.476097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342865, 40.409443, 43.831268>,  <38.187668, 40.420361, 43.116455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342865, 40.409443, 43.831268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065777, 40.696281, 43.800545>,  <37.899525, 40.868385, 43.782112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065777, 40.696281, 43.800545>,  <38.342865, 40.409443, 43.831268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065777, 40.696281, 43.800545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503109, -0.404187, 0.763881,
		0.516735, 0.567802, 0.640770,
		-0.692724, 0.717101, -0.076808,
		37.857960, 40.911411, 43.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215332, 40.602772, 44.526070>,  <38.342865, 40.409443, 43.831268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215332, 40.602772, 44.526070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885685, 40.734764, 44.341923>,  <37.687897, 40.813961, 44.231434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885685, 40.734764, 44.341923>,  <38.215332, 40.602772, 44.526070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885685, 40.734764, 44.341923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548260, -0.260594, 0.794671,
		0.142256, 0.907306, 0.395675,
		-0.824120, 0.329980, -0.460369,
		37.638451, 40.833759, 44.203812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906136, 40.933201, 44.981468>,  <38.215332, 40.602772, 44.526070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906136, 40.933201, 44.981468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607407, 40.882957, 44.720245>,  <37.428169, 40.852810, 44.563511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607407, 40.882957, 44.720245>,  <37.906136, 40.933201, 44.981468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607407, 40.882957, 44.720245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647188, -0.088620, 0.757162,
		-0.152981, 0.988114, -0.015110,
		-0.746823, -0.125610, -0.653053,
		37.383358, 40.845276, 44.524330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400787, 41.289417, 45.235298>,  <37.906136, 40.933201, 44.981468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400787, 41.289417, 45.235298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215832, 41.028603, 44.994949>,  <37.104858, 40.872112, 44.850739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215832, 41.028603, 44.994949>,  <37.400787, 41.289417, 45.235298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215832, 41.028603, 44.994949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675567, -0.179849, 0.715027,
		-0.574291, 0.736547, -0.357335,
		-0.462385, -0.652037, -0.600872,
		37.077118, 40.832993, 44.814686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682266, 41.375366, 45.362335>,  <37.400787, 41.289417, 45.235298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682266, 41.375366, 45.362335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711861, 41.021133, 45.178917>,  <36.729618, 40.808594, 45.068867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711861, 41.021133, 45.178917>,  <36.682266, 41.375366, 45.362335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711861, 41.021133, 45.178917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642276, -0.394066, 0.657415,
		-0.762894, 0.245876, -0.597944,
		0.073987, -0.885583, -0.458551,
		36.734058, 40.755459, 45.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013321, 41.095490, 45.436916>,  <36.682266, 41.375366, 45.362335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013321, 41.095490, 45.436916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244812, 40.783157, 45.342789>,  <36.383709, 40.595757, 45.286312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244812, 40.783157, 45.342789>,  <36.013321, 41.095490, 45.436916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244812, 40.783157, 45.342789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465425, -0.553184, 0.690917,
		-0.669665, -0.290330, -0.683562,
		0.578730, -0.780830, -0.235321,
		36.418430, 40.548908, 45.272194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622227, 40.548264, 45.482098>,  <36.013321, 41.095490, 45.436916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622227, 40.548264, 45.482098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976578, 40.367401, 45.523636>,  <36.189186, 40.258884, 45.548561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976578, 40.367401, 45.523636>,  <35.622227, 40.548264, 45.482098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976578, 40.367401, 45.523636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305471, -0.400024, 0.864100,
		-0.349163, -0.797206, -0.492491,
		0.885874, -0.452153, 0.103850,
		36.242340, 40.231754, 45.554790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423286, 39.916496, 45.549545>,  <35.622227, 40.548264, 45.482098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423286, 39.916496, 45.549545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795227, 39.922661, 45.696587>,  <36.018391, 39.926361, 45.784809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795227, 39.922661, 45.696587>,  <35.423286, 39.916496, 45.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795227, 39.922661, 45.696587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313327, -0.490551, 0.813133,
		0.192860, -0.871276, -0.451313,
		0.929856, 0.015412, 0.367602,
		36.074184, 39.927284, 45.806866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564960, 39.214443, 45.614094>,  <35.423286, 39.916496, 45.549545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564960, 39.214443, 45.614094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813351, 39.403870, 45.863934>,  <35.962383, 39.517525, 46.013840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813351, 39.403870, 45.863934>,  <35.564960, 39.214443, 45.614094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813351, 39.403870, 45.863934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331255, -0.563650, 0.756683,
		0.710396, -0.676782, -0.193141,
		0.620974, 0.473565, 0.624602,
		35.999641, 39.545940, 46.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859394, 38.741371, 46.037743>,  <35.564960, 39.214443, 45.614094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859394, 38.741371, 46.037743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952049, 39.059441, 46.261898>,  <36.007641, 39.250282, 46.396393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952049, 39.059441, 46.261898>,  <35.859394, 38.741371, 46.037743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952049, 39.059441, 46.261898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450912, -0.422675, 0.786145,
		0.861989, -0.434784, 0.260649,
		0.231634, 0.795178, 0.560390,
		36.021538, 39.297993, 46.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283794, 38.492008, 46.619347>,  <35.859394, 38.741371, 46.037743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283794, 38.492008, 46.619347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105663, 38.838654, 46.709381>,  <35.998783, 39.046642, 46.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105663, 38.838654, 46.709381>,  <36.283794, 38.492008, 46.619347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105663, 38.838654, 46.709381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277711, -0.372679, 0.885430,
		0.851208, 0.331803, 0.406634,
		-0.445332, 0.866612, 0.225082,
		35.972065, 39.098637, 46.776905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498394, 38.669380, 47.274723>,  <36.283794, 38.492008, 46.619347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498394, 38.669380, 47.274723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148590, 38.849045, 47.201519>,  <35.938709, 38.956844, 47.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148590, 38.849045, 47.201519>,  <36.498394, 38.669380, 47.274723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148590, 38.849045, 47.201519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345675, -0.312528, 0.884780,
		0.340215, 0.837006, 0.428572,
		-0.874507, 0.449162, -0.183006,
		35.886238, 38.983795, 47.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262798, 38.733212, 47.882591>,  <36.498394, 38.669380, 47.274723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262798, 38.733212, 47.882591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941769, 38.840721, 47.669563>,  <35.749149, 38.905228, 47.541748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941769, 38.840721, 47.669563>,  <36.262798, 38.733212, 47.882591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941769, 38.840721, 47.669563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595657, -0.312321, 0.740033,
		0.032569, 0.911162, 0.410759,
		-0.802578, 0.268773, -0.532569,
		35.700996, 38.921352, 47.509792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895393, 39.138855, 48.320847>,  <36.262798, 38.733212, 47.882591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895393, 39.138855, 48.320847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620720, 38.999023, 48.065891>,  <35.455917, 38.915123, 47.912918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620720, 38.999023, 48.065891>,  <35.895393, 39.138855, 48.320847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620720, 38.999023, 48.065891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566198, -0.292732, 0.770537,
		-0.455946, 0.890002, 0.003084,
		-0.686682, -0.349577, -0.637388,
		35.414715, 38.894150, 47.874676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294357, 39.461178, 48.464569>,  <35.895393, 39.138855, 48.320847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294357, 39.461178, 48.464569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202980, 39.115463, 48.285316>,  <35.148155, 38.908035, 48.177765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202980, 39.115463, 48.285316>,  <35.294357, 39.461178, 48.464569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202980, 39.115463, 48.285316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569187, -0.254873, 0.781707,
		-0.789837, 0.433643, -0.433719,
		-0.228438, -0.864288, -0.448131,
		35.134449, 38.856178, 48.150879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598763, 39.517513, 48.541794>,  <35.294357, 39.461178, 48.464569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598763, 39.517513, 48.541794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619854, 39.132591, 48.435074>,  <34.632507, 38.901638, 48.371040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619854, 39.132591, 48.435074>,  <34.598763, 39.517513, 48.541794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619854, 39.132591, 48.435074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639138, -0.237801, 0.731405,
		-0.767283, 0.131956, -0.627587,
		0.052728, -0.962309, -0.266799,
		34.635674, 38.843899, 48.355034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937870, 39.285774, 48.476372>,  <34.598763, 39.517513, 48.541794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937870, 39.285774, 48.476372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111061, 38.925522, 48.491333>,  <34.214977, 38.709370, 48.500309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111061, 38.925522, 48.491333>,  <33.937870, 39.285774, 48.476372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111061, 38.925522, 48.491333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659047, -0.287980, 0.694783,
		-0.614969, -0.325478, -0.718246,
		0.432977, -0.900628, 0.037406,
		34.240955, 38.655334, 48.502556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459023, 38.728119, 48.391479>,  <33.937870, 39.285774, 48.476372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459023, 38.728119, 48.391479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750816, 38.533272, 48.583549>,  <33.925892, 38.416363, 48.698792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750816, 38.533272, 48.583549>,  <33.459023, 38.728119, 48.391479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750816, 38.533272, 48.583549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661526, -0.323994, 0.676322,
		-0.173873, -0.811017, -0.558588,
		0.729488, -0.487114, 0.480175,
		33.969662, 38.387138, 48.727600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244728, 38.052765, 48.446537>,  <33.459023, 38.728119, 48.391479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244728, 38.052765, 48.446537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505630, 38.109787, 48.744328>,  <33.662170, 38.144001, 48.923000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505630, 38.109787, 48.744328>,  <33.244728, 38.052765, 48.446537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505630, 38.109787, 48.744328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649825, -0.400492, 0.646014,
		0.390251, -0.905143, -0.168584,
		0.652251, 0.142558, 0.744477,
		33.701305, 38.152554, 48.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097656, 37.508141, 48.928799>,  <33.244728, 38.052765, 48.446537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097656, 37.508141, 48.928799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317062, 37.758492, 49.150578>,  <33.448708, 37.908703, 49.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317062, 37.758492, 49.150578>,  <33.097656, 37.508141, 48.928799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317062, 37.758492, 49.150578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435467, -0.352238, 0.828430,
		0.713794, -0.695847, 0.079342,
		0.548514, 0.625879, 0.554444,
		33.481617, 37.946255, 49.316910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554585, 37.132408, 49.425156>,  <33.097656, 37.508141, 48.928799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554585, 37.132408, 49.425156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489304, 37.494553, 49.581970>,  <33.450134, 37.711838, 49.676060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489304, 37.494553, 49.581970>,  <33.554585, 37.132408, 49.425156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489304, 37.494553, 49.581970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431425, -0.422846, 0.796915,
		0.887264, -0.039077, 0.459603,
		-0.163200, 0.905359, 0.392035,
		33.440342, 37.766159, 49.699581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742306, 37.122208, 50.130024>,  <33.554585, 37.132408, 49.425156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742306, 37.122208, 50.130024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494270, 37.435669, 50.115162>,  <33.345448, 37.623745, 50.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494270, 37.435669, 50.115162>,  <33.742306, 37.122208, 50.130024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494270, 37.435669, 50.115162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454484, -0.320212, 0.831209,
		0.639479, 0.532312, 0.554717,
		-0.620089, 0.783651, -0.037158,
		33.308243, 37.670765, 50.104015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738838, 37.369911, 50.880817>,  <33.742306, 37.122208, 50.130024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738838, 37.369911, 50.880817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406601, 37.537010, 50.733521>,  <33.207260, 37.637268, 50.645142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406601, 37.537010, 50.733521>,  <33.738838, 37.369911, 50.880817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406601, 37.537010, 50.733521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517676, -0.335478, 0.787062,
		0.205255, 0.844359, 0.494903,
		-0.830591, 0.417748, -0.368246,
		33.157425, 37.662334, 50.623047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360035, 37.692261, 51.495663>,  <33.738838, 37.369911, 50.880817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360035, 37.692261, 51.495663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095428, 37.625443, 51.203228>,  <32.936665, 37.585350, 51.027767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095428, 37.625443, 51.203228>,  <33.360035, 37.692261, 51.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095428, 37.625443, 51.203228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664282, -0.321888, 0.674624,
		-0.348022, 0.931924, 0.101968,
		-0.661520, -0.167049, -0.731085,
		32.896973, 37.575329, 50.983902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753571, 38.006218, 51.743408>,  <33.360035, 37.692261, 51.495663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753571, 38.006218, 51.743408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649605, 37.760170, 51.445663>,  <32.587227, 37.612541, 51.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649605, 37.760170, 51.445663>,  <32.753571, 38.006218, 51.743408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649605, 37.760170, 51.445663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752382, -0.354189, 0.555403,
		-0.605283, 0.704401, -0.370745,
		-0.259913, -0.615117, -0.744363,
		32.571632, 37.575634, 51.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000008, 38.082123, 51.665585>,  <32.753571, 38.006218, 51.743408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000008, 38.082123, 51.665585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103439, 37.729111, 51.508476>,  <32.165501, 37.517303, 51.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103439, 37.729111, 51.508476>,  <32.000008, 38.082123, 51.665585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103439, 37.729111, 51.508476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723051, -0.446459, 0.527135,
		-0.640572, 0.147687, -0.753563,
		0.258584, -0.882532, -0.392774,
		32.181015, 37.464352, 51.390644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347319, 37.883831, 51.411045>,  <32.000008, 38.082123, 51.665585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347319, 37.883831, 51.411045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585043, 37.567055, 51.467072>,  <31.727678, 37.376987, 51.500687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585043, 37.567055, 51.467072>,  <31.347319, 37.883831, 51.411045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585043, 37.567055, 51.467072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711313, -0.436344, 0.551033,
		-0.375269, -0.427117, -0.822644,
		0.594312, -0.791943, 0.140068,
		31.763336, 37.329472, 51.509090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857685, 37.393051, 51.285706>,  <31.347319, 37.883831, 51.411045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857685, 37.393051, 51.285706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141375, 37.210220, 51.500397>,  <31.311588, 37.100521, 51.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141375, 37.210220, 51.500397>,  <30.857685, 37.393051, 51.285706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141375, 37.210220, 51.500397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684561, -0.264584, 0.679243,
		-0.168456, -0.849162, -0.500547,
		0.709224, -0.457077, 0.536732,
		31.354141, 37.073097, 51.661415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688448, 36.666462, 51.329964>,  <30.857685, 37.393051, 51.285706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688448, 36.666462, 51.329964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903032, 36.794640, 51.642250>,  <31.031782, 36.871548, 51.829624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903032, 36.794640, 51.642250>,  <30.688448, 36.666462, 51.329964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903032, 36.794640, 51.642250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665420, -0.408379, 0.624854,
		0.519062, -0.854717, -0.005848,
		0.536461, 0.320446, 0.780720,
		31.063971, 36.890774, 51.876465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557226, 36.210533, 51.973454>,  <30.688448, 36.666462, 51.329964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557226, 36.210533, 51.973454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681011, 36.570145, 52.097378>,  <30.755281, 36.785912, 52.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681011, 36.570145, 52.097378>,  <30.557226, 36.210533, 51.973454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681011, 36.570145, 52.097378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648060, -0.039029, 0.760588,
		0.695882, -0.436149, 0.570546,
		0.309462, 0.899028, 0.309810,
		30.773849, 36.839851, 52.190319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041897, 36.272678, 52.628975>,  <30.557226, 36.210533, 51.973454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041897, 36.272678, 52.628975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821339, 36.600372, 52.565956>,  <30.689003, 36.796989, 52.528145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821339, 36.600372, 52.565956>,  <31.041897, 36.272678, 52.628975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821339, 36.600372, 52.565956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438259, -0.123765, 0.890287,
		0.709852, 0.559949, 0.427279,
		-0.551398, 0.819231, -0.157548,
		30.655920, 36.846142, 52.518692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077824, 36.786682, 53.161938>,  <31.041897, 36.272678, 52.628975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077824, 36.786682, 53.161938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709162, 36.807358, 53.008118>,  <30.487965, 36.819763, 52.915825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709162, 36.807358, 53.008118>,  <31.077824, 36.786682, 53.161938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709162, 36.807358, 53.008118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386527, -0.208736, 0.898346,
		-0.033834, 0.976605, 0.212362,
		-0.921657, 0.051689, -0.384547,
		30.432665, 36.822865, 52.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729870, 37.191990, 53.575233>,  <31.077824, 36.786682, 53.161938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729870, 37.191990, 53.575233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515018, 36.904495, 53.398640>,  <30.386106, 36.731998, 53.292683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515018, 36.904495, 53.398640>,  <30.729870, 37.191990, 53.575233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515018, 36.904495, 53.398640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183076, -0.411578, 0.892797,
		-0.823392, 0.560372, 0.089487,
		-0.537130, -0.718740, -0.441481,
		30.353880, 36.688873, 53.266197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839113, 36.416008, 53.871250>,  <30.729870, 37.191990, 53.575233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839113, 36.416008, 53.871250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773630, 36.083321, 54.083458>,  <30.734341, 35.883709, 54.210781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773630, 36.083321, 54.083458>,  <30.839113, 36.416008, 53.871250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773630, 36.083321, 54.083458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357768, -0.551218, -0.753764,
		0.919348, 0.066405, 0.387800,
		-0.163709, -0.831714, 0.530519,
		30.724518, 35.833805, 54.242615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442591, 36.064255, 54.098179>,  <30.839113, 36.416008, 53.871250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442591, 36.064255, 54.098179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127260, 35.850227, 53.976692>,  <30.938061, 35.721813, 53.903801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127260, 35.850227, 53.976692>,  <31.442591, 36.064255, 54.098179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127260, 35.850227, 53.976692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585334, -0.500172, -0.638132,
		0.189533, -0.680832, 0.707492,
		-0.788329, -0.535066, -0.303715,
		30.890762, 35.689709, 53.885578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872274, 35.860889, 54.752605>,  <31.442591, 36.064255, 54.098179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872274, 35.860889, 54.752605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097404, 35.545097, 54.654667>,  <32.232483, 35.355621, 54.595905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097404, 35.545097, 54.654667>,  <31.872274, 35.860889, 54.752605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097404, 35.545097, 54.654667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442574, 0.538005, -0.717411,
		0.698109, 0.295416, 0.652206,
		0.562825, -0.789481, -0.244843,
		32.266251, 35.308254, 54.581215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514008, 36.257744, 54.665169>,  <31.872274, 35.860889, 54.752605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514008, 36.257744, 54.665169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502457, 35.904076, 54.478661>,  <32.495525, 35.691875, 54.366756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502457, 35.904076, 54.478661>,  <32.514008, 36.257744, 54.665169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502457, 35.904076, 54.478661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672521, 0.327917, -0.663465,
		0.739515, -0.332734, 0.585154,
		-0.028876, -0.884171, -0.466270,
		32.493793, 35.638824, 54.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109108, 35.893414, 54.739517>,  <32.514008, 36.257744, 54.665169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109108, 35.893414, 54.739517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914108, 35.836037, 54.395012>,  <32.797108, 35.801613, 54.188309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914108, 35.836037, 54.395012>,  <33.109108, 35.893414, 54.739517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914108, 35.836037, 54.395012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780183, 0.371291, -0.503445,
		0.391995, -0.917369, -0.069091,
		-0.487498, -0.143444, -0.861260,
		32.767857, 35.793003, 54.136635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548218, 35.532902, 54.331650>,  <33.109108, 35.893414, 54.739517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548218, 35.532902, 54.331650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294777, 35.740822, 54.102440>,  <33.142712, 35.865574, 53.964916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294777, 35.740822, 54.102440>,  <33.548218, 35.532902, 54.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294777, 35.740822, 54.102440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771922, 0.474323, -0.423266,
		0.051783, -0.710511, -0.701779,
		-0.633604, 0.519801, -0.573021,
		33.104694, 35.896763, 53.930534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824295, 35.460030, 53.775349>,  <33.548218, 35.532902, 54.331650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824295, 35.460030, 53.775349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594162, 35.786087, 53.748405>,  <33.456081, 35.981720, 53.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594162, 35.786087, 53.748405>,  <33.824295, 35.460030, 53.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594162, 35.786087, 53.748405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754267, 0.496904, -0.429148,
		-0.316343, -0.297712, -0.900719,
		-0.575333, 0.815140, -0.067362,
		33.421562, 36.030628, 53.728195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828819, 35.644985, 53.108223>,  <33.824295, 35.460030, 53.775349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828819, 35.644985, 53.108223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751350, 35.990128, 53.294968>,  <33.704868, 36.197212, 53.407017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751350, 35.990128, 53.294968>,  <33.828819, 35.644985, 53.108223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751350, 35.990128, 53.294968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711568, 0.451156, -0.538637,
		-0.675397, 0.227885, -0.701361,
		-0.193676, 0.862860, 0.466865,
		33.693249, 36.248985, 53.435028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008728, 36.122993, 52.594009>,  <33.828819, 35.644985, 53.108223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008728, 36.122993, 52.594009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967567, 36.346565, 52.923130>,  <33.942871, 36.480709, 53.120602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967567, 36.346565, 52.923130>,  <34.008728, 36.122993, 52.594009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967567, 36.346565, 52.923130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747480, 0.589209, -0.306766,
		-0.656265, 0.583463, -0.478421,
		-0.102903, 0.558930, 0.822805,
		33.936695, 36.514244, 53.169971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164833, 36.740059, 52.330101>,  <34.008728, 36.122993, 52.594009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164833, 36.740059, 52.330101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175919, 36.818481, 52.722183>,  <34.182571, 36.865536, 52.957432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175919, 36.818481, 52.722183>,  <34.164833, 36.740059, 52.330101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175919, 36.818481, 52.722183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687637, 0.707968, -0.161045,
		-0.725525, 0.678487, -0.115192,
		0.027715, 0.196053, 0.980202,
		34.184235, 36.877296, 53.016243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143078, 37.458427, 52.380447>,  <34.164833, 36.740059, 52.330101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143078, 37.458427, 52.380447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300743, 37.327522, 52.723965>,  <34.395344, 37.248978, 52.930077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300743, 37.327522, 52.723965>,  <34.143078, 37.458427, 52.380447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300743, 37.327522, 52.723965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757918, 0.644271, -0.102350,
		-0.519802, 0.691240, 0.501990,
		0.394166, -0.327265, 0.858796,
		34.418991, 37.229343, 52.981602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269348, 38.091843, 52.815495>,  <34.143078, 37.458427, 52.380447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269348, 38.091843, 52.815495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499580, 37.793945, 52.950588>,  <34.637722, 37.615208, 53.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499580, 37.793945, 52.950588>,  <34.269348, 38.091843, 52.815495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499580, 37.793945, 52.950588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817689, 0.519441, -0.248123,
		0.009354, 0.418978, 0.907948,
		0.575584, -0.744741, 0.337735,
		34.672256, 37.570522, 53.051910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829872, 38.420483, 53.160992>,  <34.269348, 38.091843, 52.815495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829872, 38.420483, 53.160992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995827, 38.064491, 53.085308>,  <35.095402, 37.850895, 53.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995827, 38.064491, 53.085308>,  <34.829872, 38.420483, 53.160992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995827, 38.064491, 53.085308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862740, 0.450860, -0.228921,
		0.289044, -0.068265, 0.954879,
		0.414890, -0.889980, -0.189214,
		35.120293, 37.797497, 53.028545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404392, 38.473049, 53.483620>,  <34.829872, 38.420483, 53.160992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404392, 38.473049, 53.483620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476990, 38.166306, 53.237373>,  <35.520546, 37.982258, 53.089626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476990, 38.166306, 53.237373>,  <35.404392, 38.473049, 53.483620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476990, 38.166306, 53.237373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872267, 0.414612, -0.259321,
		0.454105, -0.489916, 0.744158,
		0.181492, -0.766863, -0.615614,
		35.531437, 37.936245, 53.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150883, 38.381500, 53.496437>,  <35.404392, 38.473049, 53.483620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150883, 38.381500, 53.496437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037155, 38.193169, 53.162376>,  <35.968918, 38.080170, 52.961941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037155, 38.193169, 53.162376>,  <36.150883, 38.381500, 53.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037155, 38.193169, 53.162376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854363, 0.270811, -0.443537,
		0.435000, -0.839629, 0.325265,
		-0.284322, -0.470833, -0.835151,
		35.951859, 38.051918, 52.911831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726170, 38.093079, 53.156708>,  <36.150883, 38.381500, 53.496437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726170, 38.093079, 53.156708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468758, 38.101768, 52.850662>,  <36.314312, 38.106983, 52.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468758, 38.101768, 52.850662>,  <36.726170, 38.093079, 53.156708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468758, 38.101768, 52.850662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686736, 0.457840, -0.564603,
		0.338033, -0.888769, -0.309554,
		-0.643527, 0.021728, -0.765115,
		36.275700, 38.108288, 52.621128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098465, 37.943382, 52.564880>,  <36.726170, 38.093079, 53.156708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098465, 37.943382, 52.564880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772461, 38.108215, 52.401936>,  <36.576859, 38.207115, 52.304169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772461, 38.108215, 52.401936>,  <37.098465, 37.943382, 52.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772461, 38.108215, 52.401936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572299, 0.462391, -0.677251,
		-0.090720, -0.785102, -0.612687,
		-0.815011, 0.412080, -0.407365,
		36.527958, 38.231838, 52.279728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244038, 37.953346, 51.910694>,  <37.098465, 37.943382, 52.564880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244038, 37.953346, 51.910694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913616, 38.178108, 51.893272>,  <36.715363, 38.312965, 51.882820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913616, 38.178108, 51.893272>,  <37.244038, 37.953346, 51.910694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913616, 38.178108, 51.893272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310339, 0.388997, -0.867394,
		-0.470447, -0.730033, -0.495714,
		-0.826056, 0.561902, -0.043555,
		36.665798, 38.346680, 51.880207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953293, 37.829498, 51.243847>,  <37.244038, 37.953346, 51.910694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953293, 37.829498, 51.243847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832970, 38.195404, 51.351707>,  <36.760777, 38.414948, 51.416424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832970, 38.195404, 51.351707>,  <36.953293, 37.829498, 51.243847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832970, 38.195404, 51.351707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314497, 0.362084, -0.877489,
		-0.900335, -0.179155, -0.396611,
		-0.300812, 0.914767, 0.269653,
		36.742725, 38.469833, 51.432602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826324, 38.086174, 50.630108>,  <36.953293, 37.829498, 51.243847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826324, 38.086174, 50.630108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830200, 38.416069, 50.856277>,  <36.832527, 38.614006, 50.991982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830200, 38.416069, 50.856277>,  <36.826324, 38.086174, 50.630108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830200, 38.416069, 50.856277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282463, 0.540169, -0.792737,
		-0.959229, 0.167393, -0.227725,
		0.009688, 0.824740, 0.565429,
		36.833107, 38.663490, 51.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575687, 38.683765, 50.189114>,  <36.826324, 38.086174, 50.630108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575687, 38.683765, 50.189114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788395, 38.838654, 50.490387>,  <36.916019, 38.931587, 50.671150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788395, 38.838654, 50.490387>,  <36.575687, 38.683765, 50.189114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788395, 38.838654, 50.490387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415916, 0.655303, -0.630548,
		-0.737726, 0.648564, 0.187415,
		0.531765, 0.387223, 0.753183,
		36.947926, 38.954819, 50.716343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634109, 39.315605, 49.947914>,  <36.575687, 38.683765, 50.189114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634109, 39.315605, 49.947914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904976, 39.300987, 50.241882>,  <37.067493, 39.292217, 50.418262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904976, 39.300987, 50.241882>,  <36.634109, 39.315605, 49.947914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904976, 39.300987, 50.241882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639139, 0.524127, -0.562844,
		-0.364625, 0.850856, 0.378276,
		0.677164, -0.036544, 0.734924,
		37.108124, 39.290024, 50.462360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931625, 40.022697, 50.087261>,  <36.634109, 39.315605, 49.947914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931625, 40.022697, 50.087261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185295, 39.730568, 50.188808>,  <37.337498, 39.555290, 50.249737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185295, 39.730568, 50.188808>,  <36.931625, 40.022697, 50.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185295, 39.730568, 50.188808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752682, 0.508010, -0.418802,
		0.176894, 0.456675, 0.871869,
		0.634175, -0.730324, 0.253867,
		37.375549, 39.511471, 50.264969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530884, 40.393581, 50.405464>,  <36.931625, 40.022697, 50.087261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530884, 40.393581, 50.405464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667053, 40.031136, 50.305008>,  <37.748756, 39.813667, 50.244736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667053, 40.031136, 50.305008>,  <37.530884, 40.393581, 50.405464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667053, 40.031136, 50.305008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709493, 0.422816, -0.563779,
		0.617032, 0.013744, 0.786818,
		0.340428, -0.906111, -0.251140,
		37.769180, 39.759304, 50.229668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268684, 40.385471, 50.562962>,  <37.530884, 40.393581, 50.405464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268684, 40.385471, 50.562962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197021, 40.107613, 50.284286>,  <38.154026, 39.940899, 50.117081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197021, 40.107613, 50.284286>,  <38.268684, 40.385471, 50.562962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197021, 40.107613, 50.284286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821140, 0.284458, -0.494786,
		0.541879, -0.660718, 0.519440,
		-0.179155, -0.694647, -0.696684,
		38.143276, 39.899220, 50.075283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952259, 40.061779, 50.379555>,  <38.268684, 40.385471, 50.562962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952259, 40.061779, 50.379555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727295, 39.942719, 50.070984>,  <38.592316, 39.871281, 49.885841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727295, 39.942719, 50.070984>,  <38.952259, 40.061779, 50.379555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727295, 39.942719, 50.070984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772878, 0.142328, -0.618387,
		0.293859, -0.944005, 0.150002,
		-0.562411, -0.297652, -0.771425,
		38.558571, 39.853424, 49.839558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424633, 39.519711, 50.108727>,  <38.952259, 40.061779, 50.379555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424633, 39.519711, 50.108727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161972, 39.610725, 49.821106>,  <39.004375, 39.665333, 49.648533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161972, 39.610725, 49.821106>,  <39.424633, 39.519711, 50.108727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161972, 39.610725, 49.821106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747577, 0.070369, -0.660437,
		-0.099673, -0.971225, -0.216306,
		-0.656654, 0.227533, -0.719051,
		38.964977, 39.678986, 49.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769787, 39.394875, 49.515907>,  <39.424633, 39.519711, 50.108727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769787, 39.394875, 49.515907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467972, 39.590805, 49.341209>,  <39.286884, 39.708363, 49.236389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467972, 39.590805, 49.341209>,  <39.769787, 39.394875, 49.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467972, 39.590805, 49.341209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612140, 0.285411, -0.737445,
		-0.236566, -0.823779, -0.515194,
		-0.754534, 0.489825, -0.436749,
		39.241611, 39.737751, 49.210186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746975, 39.149746, 48.895977>,  <39.769787, 39.394875, 49.515907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746975, 39.149746, 48.895977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558624, 39.501183, 48.864113>,  <39.445614, 39.712044, 48.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558624, 39.501183, 48.864113>,  <39.746975, 39.149746, 48.895977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558624, 39.501183, 48.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541558, 0.216600, -0.812280,
		-0.696411, -0.425624, -0.577802,
		-0.470878, 0.878595, -0.079657,
		39.417362, 39.764763, 48.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710556, 39.196770, 48.229088>,  <39.746975, 39.149746, 48.895977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710556, 39.196770, 48.229088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685570, 39.571129, 48.367760>,  <39.670578, 39.795746, 48.450962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685570, 39.571129, 48.367760>,  <39.710556, 39.196770, 48.229088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685570, 39.571129, 48.367760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381234, 0.343397, -0.858335,
		-0.922366, 0.078551, -0.378247,
		-0.062466, 0.935900, 0.346684,
		39.666832, 39.851898, 48.471764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505268, 39.651775, 47.642941>,  <39.710556, 39.196770, 48.229088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505268, 39.651775, 47.642941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662868, 39.889557, 47.923336>,  <39.757431, 40.032227, 48.091576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662868, 39.889557, 47.923336>,  <39.505268, 39.651775, 47.642941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662868, 39.889557, 47.923336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512625, 0.490913, -0.704429,
		-0.762874, 0.636894, -0.111309,
		0.394004, 0.594450, 0.700992,
		39.781071, 40.067890, 48.133633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348335, 40.336346, 47.394794>,  <39.505268, 39.651775, 47.642941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348335, 40.336346, 47.394794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661469, 40.385689, 47.638744>,  <39.849350, 40.415295, 47.785114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661469, 40.385689, 47.638744>,  <39.348335, 40.336346, 47.394794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661469, 40.385689, 47.638744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517912, 0.414070, -0.748541,
		-0.344871, 0.901848, 0.260259,
		0.782835, 0.123359, 0.609878,
		39.896320, 40.422695, 47.821709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616566, 40.942276, 47.232269>,  <39.348335, 40.336346, 47.394794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616566, 40.942276, 47.232269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917633, 40.761238, 47.423538>,  <40.098274, 40.652615, 47.538300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917633, 40.761238, 47.423538>,  <39.616566, 40.942276, 47.232269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917633, 40.761238, 47.423538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648673, 0.385361, -0.656293,
		0.112769, 0.804146, 0.583637,
		0.752666, -0.452599, 0.478171,
		40.143433, 40.625458, 47.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186153, 41.430283, 47.241249>,  <39.616566, 40.942276, 47.232269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186153, 41.430283, 47.241249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374008, 41.085945, 47.319614>,  <40.486721, 40.879341, 47.366634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374008, 41.085945, 47.319614>,  <40.186153, 41.430283, 47.241249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374008, 41.085945, 47.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723735, 0.248300, -0.643860,
		0.505618, 0.444173, 0.739636,
		0.469637, -0.860847, 0.195918,
		40.514900, 40.827690, 47.378391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833191, 41.595062, 47.292000>,  <40.186153, 41.430283, 47.241249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833191, 41.595062, 47.292000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904869, 41.204178, 47.246479>,  <40.947876, 40.969646, 47.219166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904869, 41.204178, 47.246479>,  <40.833191, 41.595062, 47.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904869, 41.204178, 47.246479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770751, 0.211331, -0.601067,
		0.611418, 0.019997, 0.791055,
		0.179194, -0.977210, -0.113799,
		40.958626, 40.911015, 47.212337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561646, 41.392452, 47.389626>,  <40.833191, 41.595062, 47.292000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561646, 41.392452, 47.389626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434845, 41.106026, 47.140865>,  <41.358765, 40.934170, 46.991611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434845, 41.106026, 47.140865>,  <41.561646, 41.392452, 47.389626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434845, 41.106026, 47.140865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745081, 0.217691, -0.630447,
		0.586826, -0.663215, 0.464522,
		-0.317000, -0.716070, -0.621896,
		41.339745, 40.891205, 46.954296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237953, 41.196373, 47.069118>,  <41.561646, 41.392452, 47.389626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237953, 41.196373, 47.069118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945663, 41.051422, 46.837700>,  <41.770290, 40.964451, 46.698849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945663, 41.051422, 46.837700>,  <42.237953, 41.196373, 47.069118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945663, 41.051422, 46.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570040, 0.142402, -0.809182,
		0.375619, -0.921087, 0.102516,
		-0.730729, -0.362382, -0.578545,
		41.726444, 40.942707, 46.664135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610970, 40.754272, 46.697762>,  <42.237953, 41.196373, 47.069118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610970, 40.754272, 46.697762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286224, 40.814941, 46.472240>,  <42.091377, 40.851341, 46.336929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286224, 40.814941, 46.472240>,  <42.610970, 40.754272, 46.697762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286224, 40.814941, 46.472240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558453, -0.079949, -0.825675,
		-0.170307, -0.985192, -0.019793,
		-0.811866, 0.151671, -0.563799,
		42.042664, 40.860443, 46.303101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644291, 40.282604, 46.119095>,  <42.610970, 40.754272, 46.697762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644291, 40.282604, 46.119095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408577, 40.592682, 46.028042>,  <42.267147, 40.778728, 45.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408577, 40.592682, 46.028042>,  <42.644291, 40.282604, 46.119095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408577, 40.592682, 46.028042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593734, 0.224440, -0.772727,
		-0.547922, -0.590512, -0.592518,
		-0.589289, 0.775192, -0.227631,
		42.231789, 40.825241, 45.959751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508156, 40.220867, 45.442829>,  <42.644291, 40.282604, 46.119095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508156, 40.220867, 45.442829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421730, 40.605835, 45.508640>,  <42.369873, 40.836815, 45.548126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421730, 40.605835, 45.508640>,  <42.508156, 40.220867, 45.442829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421730, 40.605835, 45.508640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473915, 0.250705, -0.844128,
		-0.853652, -0.104411, -0.510272,
		-0.216064, 0.962417, 0.164532,
		42.356911, 40.894562, 45.557999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161613, 40.469555, 44.859310>,  <42.508156, 40.220867, 45.442829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161613, 40.469555, 44.859310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293858, 40.812019, 45.018150>,  <42.373203, 41.017498, 45.113453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293858, 40.812019, 45.018150>,  <42.161613, 40.469555, 44.859310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293858, 40.812019, 45.018150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199396, 0.347894, -0.916085,
		-0.922462, 0.382048, -0.055697,
		0.330612, 0.856159, 0.397098,
		42.393040, 41.068867, 45.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850067, 40.950108, 44.445621>,  <42.161613, 40.469555, 44.859310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850067, 40.950108, 44.445621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138203, 41.166206, 44.619629>,  <42.311085, 41.295864, 44.724033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138203, 41.166206, 44.619629>,  <41.850067, 40.950108, 44.445621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138203, 41.166206, 44.619629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310113, 0.310157, -0.898684,
		-0.620435, 0.782264, 0.055881,
		0.720340, 0.540246, 0.435023,
		42.354305, 41.328281, 44.750137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832317, 41.481030, 44.116276>,  <41.850067, 40.950108, 44.445621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832317, 41.481030, 44.116276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194729, 41.488739, 44.285385>,  <42.412174, 41.493362, 44.386852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194729, 41.488739, 44.285385>,  <41.832317, 41.481030, 44.116276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194729, 41.488739, 44.285385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385084, 0.376857, -0.842431,
		-0.175559, 0.926071, 0.334023,
		0.906030, 0.019270, 0.422776,
		42.466537, 41.494518, 44.412216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039875, 42.179142, 44.068203>,  <41.832317, 41.481030, 44.116276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039875, 42.179142, 44.068203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371994, 41.960892, 44.113613>,  <42.571266, 41.829941, 44.140858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371994, 41.960892, 44.113613>,  <42.039875, 42.179142, 44.068203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371994, 41.960892, 44.113613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303399, 0.271666, -0.913316,
		0.467492, 0.792771, 0.391108,
		0.830302, -0.545630, 0.113524,
		42.621086, 41.797203, 44.147671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477921, 42.580135, 43.693661>,  <42.039875, 42.179142, 44.068203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477921, 42.580135, 43.693661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654728, 42.224670, 43.742489>,  <42.760815, 42.011391, 43.771786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654728, 42.224670, 43.742489>,  <42.477921, 42.580135, 43.693661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654728, 42.224670, 43.742489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529194, 0.148471, -0.835410,
		0.724272, 0.433867, 0.535901,
		0.442022, -0.888660, 0.122066,
		42.787334, 41.958073, 43.779110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322372, 43.217518, 44.010490>,  <42.477921, 42.580135, 43.693661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322372, 43.217518, 44.010490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420616, 43.599174, 44.078957>,  <42.479565, 43.828167, 44.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420616, 43.599174, 44.078957>,  <42.322372, 43.217518, 44.010490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420616, 43.599174, 44.078957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263329, -0.104257, 0.959056,
		0.932916, -0.280627, 0.225646,
		0.245611, 0.954138, 0.171161,
		42.494301, 43.885414, 44.130306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718742, 43.310101, 44.763550>,  <42.322372, 43.217518, 44.010490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718742, 43.310101, 44.763550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537865, 43.655998, 44.676159>,  <42.429337, 43.863537, 44.623726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537865, 43.655998, 44.676159>,  <42.718742, 43.310101, 44.763550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537865, 43.655998, 44.676159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535907, -0.067619, 0.841565,
		0.712966, 0.497638, 0.494000,
		-0.452199, 0.864745, -0.218478,
		42.402206, 43.915421, 44.610615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786213, 43.741505, 45.262630>,  <42.718742, 43.310101, 44.763550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786213, 43.741505, 45.262630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464767, 43.896965, 45.082340>,  <42.271900, 43.990242, 44.974167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464767, 43.896965, 45.082340>,  <42.786213, 43.741505, 45.262630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464767, 43.896965, 45.082340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424329, 0.156878, 0.891815,
		0.417312, 0.907933, 0.038845,
		-0.803614, 0.388648, -0.450730,
		42.223682, 44.013561, 44.947121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570400, 44.268463, 45.712307>,  <42.786213, 43.741505, 45.262630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570400, 44.268463, 45.712307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255020, 44.232841, 45.468857>,  <42.065792, 44.211468, 45.322788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255020, 44.232841, 45.468857>,  <42.570400, 44.268463, 45.712307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255020, 44.232841, 45.468857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605821, -0.058825, 0.793424,
		-0.106458, 0.994288, -0.007569,
		-0.788447, -0.089052, -0.608623,
		42.018486, 44.206127, 45.286270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069775, 44.655388, 45.986164>,  <42.570400, 44.268463, 45.712307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069775, 44.655388, 45.986164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835457, 44.415314, 45.768314>,  <41.694866, 44.271271, 45.637604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835457, 44.415314, 45.768314>,  <42.069775, 44.655388, 45.986164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835457, 44.415314, 45.768314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581931, -0.156230, 0.798091,
		-0.564090, 0.784454, -0.257748,
		-0.585798, -0.600187, -0.544626,
		41.659718, 44.235256, 45.604927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406261, 44.865715, 46.091770>,  <42.069775, 44.655388, 45.986164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406261, 44.865715, 46.091770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358421, 44.491478, 45.958885>,  <41.329720, 44.266937, 45.879154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358421, 44.491478, 45.958885>,  <41.406261, 44.865715, 46.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358421, 44.491478, 45.958885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677647, -0.167623, 0.716029,
		-0.725598, 0.310754, -0.613954,
		-0.119596, -0.935593, -0.332208,
		41.322544, 44.210800, 45.859222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752781, 44.837215, 46.189713>,  <41.406261, 44.865715, 46.091770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752781, 44.837215, 46.189713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900455, 44.465744, 46.175541>,  <40.989059, 44.242863, 46.167038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900455, 44.465744, 46.175541>,  <40.752781, 44.837215, 46.189713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900455, 44.465744, 46.175541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598046, -0.266580, 0.755828,
		-0.711367, -0.257854, -0.653811,
		0.369186, -0.928680, -0.035427,
		41.011211, 44.187141, 46.164913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192242, 44.313766, 46.089752>,  <40.752781, 44.837215, 46.189713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192242, 44.313766, 46.089752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500023, 44.133934, 46.271221>,  <40.684692, 44.026035, 46.380104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500023, 44.133934, 46.271221>,  <40.192242, 44.313766, 46.089752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500023, 44.133934, 46.271221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608676, -0.300903, 0.734147,
		-0.193547, -0.841031, -0.505180,
		0.769450, -0.449583, 0.453676,
		40.730858, 43.999058, 46.407322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818752, 43.789738, 46.378365>,  <40.192242, 44.313766, 46.089752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818752, 43.789738, 46.378365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168987, 43.718468, 46.557961>,  <40.379128, 43.675705, 46.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168987, 43.718468, 46.557961>,  <39.818752, 43.789738, 46.378365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168987, 43.718468, 46.557961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482468, -0.368394, 0.794676,
		0.023816, -0.912436, -0.408526,
		0.875590, -0.178175, 0.448995,
		40.431664, 43.665016, 46.692657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873337, 43.093307, 46.601307>,  <39.818752, 43.789738, 46.378365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873337, 43.093307, 46.601307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151588, 43.251892, 46.840950>,  <40.318539, 43.347042, 46.984737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151588, 43.251892, 46.840950>,  <39.873337, 43.093307, 46.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151588, 43.251892, 46.840950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365533, -0.522595, 0.770247,
		0.618460, -0.754796, -0.218612,
		0.695625, 0.396457, 0.599106,
		40.360275, 43.370831, 47.020683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051003, 42.534836, 47.013142>,  <39.873337, 43.093307, 46.601307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051003, 42.534836, 47.013142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159760, 42.868073, 47.205818>,  <40.225014, 43.068016, 47.321423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159760, 42.868073, 47.205818>,  <40.051003, 42.534836, 47.013142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159760, 42.868073, 47.205818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293349, -0.404974, 0.865992,
		0.916527, -0.376758, 0.134280,
		0.271889, 0.833096, 0.481691,
		40.241325, 43.118000, 47.350327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433323, 42.359226, 47.685986>,  <40.051003, 42.534836, 47.013142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433323, 42.359226, 47.685986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284256, 42.728340, 47.725147>,  <40.194817, 42.949810, 47.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284256, 42.728340, 47.725147>,  <40.433323, 42.359226, 47.685986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284256, 42.728340, 47.725147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252374, -0.202318, 0.946242,
		0.892988, 0.327922, 0.308284,
		-0.372665, 0.922786, 0.097908,
		40.172455, 43.005177, 47.754520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762352, 42.700798, 48.291603>,  <40.433323, 42.359226, 47.685986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762352, 42.700798, 48.291603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424103, 42.910446, 48.251183>,  <40.221153, 43.036236, 48.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424103, 42.910446, 48.251183>,  <40.762352, 42.700798, 48.291603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424103, 42.910446, 48.251183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302215, -0.314069, 0.900015,
		0.439981, 0.791616, 0.423983,
		-0.845625, 0.524124, -0.101054,
		40.170414, 43.067684, 48.220867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602318, 42.979336, 49.011826>,  <40.762352, 42.700798, 48.291603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602318, 42.979336, 49.011826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257584, 43.015831, 48.812260>,  <40.050743, 43.037727, 48.692520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257584, 43.015831, 48.812260>,  <40.602318, 42.979336, 49.011826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257584, 43.015831, 48.812260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503393, -0.274051, 0.819446,
		-0.061964, 0.957377, 0.282115,
		-0.861833, 0.091239, -0.498918,
		39.999035, 43.043201, 48.662582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102127, 43.456841, 49.465641>,  <40.602318, 42.979336, 49.011826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102127, 43.456841, 49.465641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862553, 43.271835, 49.204147>,  <39.718807, 43.160831, 49.047253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862553, 43.271835, 49.204147>,  <40.102127, 43.456841, 49.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862553, 43.271835, 49.204147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667202, -0.163243, 0.726769,
		-0.442855, 0.871456, -0.210817,
		-0.598933, -0.462511, -0.653730,
		39.682873, 43.133083, 49.008030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406551, 43.673172, 49.607353>,  <40.102127, 43.456841, 49.465641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406551, 43.673172, 49.607353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371109, 43.317986, 49.426834>,  <39.349842, 43.104874, 49.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371109, 43.317986, 49.426834>,  <39.406551, 43.673172, 49.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371109, 43.317986, 49.426834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617438, -0.306564, 0.724423,
		-0.781613, 0.342837, -0.521099,
		-0.088609, -0.887965, -0.451295,
		39.344528, 43.051598, 49.291447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659603, 43.492710, 49.709347>,  <39.406551, 43.673172, 49.607353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659603, 43.492710, 49.709347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856796, 43.159050, 49.610424>,  <38.975113, 42.958855, 49.551071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856796, 43.159050, 49.610424>,  <38.659603, 43.492710, 49.709347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856796, 43.159050, 49.610424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542256, -0.516867, 0.662424,
		-0.680390, -0.192455, -0.707129,
		0.492978, -0.834152, -0.247311,
		39.004688, 42.908806, 49.536232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187374, 42.909363, 49.368462>,  <38.659603, 43.492710, 49.709347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187374, 42.909363, 49.368462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505814, 42.766296, 49.563728>,  <38.696877, 42.680458, 49.680889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505814, 42.766296, 49.563728>,  <38.187374, 42.909363, 49.368462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505814, 42.766296, 49.563728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604579, -0.505577, 0.615530,
		0.026652, -0.785156, -0.618724,
		0.796099, -0.357662, 0.488163,
		38.744644, 42.658997, 49.710178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975262, 42.108318, 49.486874>,  <38.187374, 42.909363, 49.368462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975262, 42.108318, 49.486874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312893, 42.142143, 49.698677>,  <38.515472, 42.162437, 49.825760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312893, 42.142143, 49.698677>,  <37.975262, 42.108318, 49.486874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312893, 42.142143, 49.698677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401731, -0.554332, 0.728923,
		0.355161, -0.827989, -0.433930,
		0.844081, 0.084562, 0.529505,
		38.566116, 42.167511, 49.857529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222420, 41.400383, 49.684845>,  <37.975262, 42.108318, 49.486874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222420, 41.400383, 49.684845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393970, 41.665192, 49.930702>,  <38.496902, 41.824078, 50.078217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393970, 41.665192, 49.930702>,  <38.222420, 41.400383, 49.684845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393970, 41.665192, 49.930702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408582, -0.464674, 0.785582,
		0.805683, -0.588052, 0.071203,
		0.428877, 0.662023, 0.614647,
		38.522633, 41.863800, 50.115097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521622, 40.999992, 50.202019>,  <38.222420, 41.400383, 49.684845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521622, 40.999992, 50.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432846, 41.360809, 50.350101>,  <38.379581, 41.577301, 50.438953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432846, 41.360809, 50.350101>,  <38.521622, 40.999992, 50.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432846, 41.360809, 50.350101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298436, -0.424300, 0.854930,
		0.928266, 0.079259, 0.363372,
		-0.221939, 0.902046, 0.370209,
		38.366264, 41.631424, 50.461163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662582, 40.917713, 50.865665>,  <38.521622, 40.999992, 50.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662582, 40.917713, 50.865665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439262, 41.249557, 50.868492>,  <38.305271, 41.448662, 50.870190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439262, 41.249557, 50.868492>,  <38.662582, 40.917713, 50.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439262, 41.249557, 50.868492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506295, -0.347450, 0.789268,
		0.657238, 0.437071, 0.614009,
		-0.558304, 0.829606, 0.007071,
		38.271770, 41.498440, 50.870613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457584, 40.998356, 51.642487>,  <38.662582, 40.917713, 50.865665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457584, 40.998356, 51.642487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201748, 41.223244, 51.432793>,  <38.048244, 41.358177, 51.306976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201748, 41.223244, 51.432793>,  <38.457584, 40.998356, 51.642487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201748, 41.223244, 51.432793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737074, -0.254892, 0.625901,
		0.218271, 0.786725, 0.577426,
		-0.639594, 0.562222, -0.524239,
		38.009869, 41.391911, 51.275520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093483, 41.337177, 52.146416>,  <38.457584, 40.998356, 51.642487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093483, 41.337177, 52.146416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852676, 41.386063, 51.830788>,  <37.708191, 41.415394, 51.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852676, 41.386063, 51.830788>,  <38.093483, 41.337177, 52.146416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852676, 41.386063, 51.830788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797902, -0.129682, 0.588672,
		-0.030383, 0.983995, 0.175589,
		-0.602021, 0.122217, -0.789071,
		37.672070, 41.422729, 51.594067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483841, 41.831131, 52.322704>,  <38.093483, 41.337177, 52.146416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483841, 41.831131, 52.322704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355785, 41.617378, 52.009796>,  <37.278950, 41.489128, 51.822052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355785, 41.617378, 52.009796>,  <37.483841, 41.831131, 52.322704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355785, 41.617378, 52.009796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822677, -0.252667, 0.509277,
		-0.469801, 0.806597, -0.358733,
		-0.320141, -0.534380, -0.782271,
		37.259743, 41.457066, 51.775116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883480, 42.197376, 52.058384>,  <37.483841, 41.831131, 52.322704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883480, 42.197376, 52.058384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 41.836731, 51.903187>,  <36.761112, 41.620342, 51.810070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 41.836731, 51.903187>,  <36.883480, 42.197376, 52.058384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806999, 41.836731, 51.903187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891397, -0.005984, 0.453184,
		-0.410917, 0.432504, -0.802551,
		-0.191201, -0.901612, -0.387991,
		36.749638, 41.566246, 51.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196674, 42.161800, 52.028191>,  <36.883480, 42.197376, 52.058384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196674, 42.161800, 52.028191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321503, 41.782478, 52.005104>,  <36.396400, 41.554886, 51.991253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321503, 41.782478, 52.005104>,  <36.196674, 42.161800, 52.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321503, 41.782478, 52.005104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837104, -0.303194, 0.455335,
		-0.449295, -0.093783, -0.888447,
		0.312075, -0.948303, -0.057718,
		36.415127, 41.497986, 51.987789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675137, 41.905220, 51.680717>,  <36.196674, 42.161800, 52.028191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675137, 41.905220, 51.680717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857296, 41.607353, 51.875896>,  <35.966591, 41.428635, 51.993004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857296, 41.607353, 51.875896>,  <35.675137, 41.905220, 51.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857296, 41.607353, 51.875896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798464, -0.099195, 0.593815,
		-0.393791, -0.660027, -0.639760,
		0.455395, -0.744664, 0.487946,
		35.993916, 41.383953, 52.022282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195000, 41.449726, 51.667965>,  <35.675137, 41.905220, 51.680717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195000, 41.449726, 51.667965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406708, 41.283005, 51.963570>,  <35.533733, 41.182972, 52.140934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406708, 41.283005, 51.963570>,  <35.195000, 41.449726, 51.667965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406708, 41.283005, 51.963570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840655, -0.139822, 0.523210,
		-0.114745, -0.898179, -0.424391,
		0.529276, -0.416802, 0.739015,
		35.565491, 41.157963, 52.185272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076530, 40.625641, 51.728855>,  <35.195000, 41.449726, 51.667965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076530, 40.625641, 51.728855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199547, 40.771011, 52.080612>,  <35.273357, 40.858234, 52.291668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199547, 40.771011, 52.080612>,  <35.076530, 40.625641, 51.728855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199547, 40.771011, 52.080612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782668, -0.428987, 0.451000,
		0.541156, -0.826976, 0.152513,
		0.307540, 0.363429, 0.879397,
		35.291809, 40.880039, 52.344433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861053, 40.115791, 52.165760>,  <35.076530, 40.625641, 51.728855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861053, 40.115791, 52.165760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952557, 40.427025, 52.399773>,  <35.007458, 40.613766, 52.540180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952557, 40.427025, 52.399773>,  <34.861053, 40.115791, 52.165760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952557, 40.427025, 52.399773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759294, -0.233483, 0.607420,
		0.609216, -0.583162, 0.537381,
		0.228755, 0.778079, 0.585033,
		35.021183, 40.660450, 52.575283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786190, 39.793179, 52.785877>,  <34.861053, 40.115791, 52.165760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786190, 39.793179, 52.785877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736702, 40.188408, 52.822544>,  <34.707008, 40.425545, 52.844543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736702, 40.188408, 52.822544>,  <34.786190, 39.793179, 52.785877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736702, 40.188408, 52.822544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826899, -0.153718, 0.540934,
		0.548573, -0.008875, 0.836055,
		-0.123716, 0.988075, 0.091664,
		34.699589, 40.484829, 52.850044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754608, 39.964474, 53.485210>,  <34.786190, 39.793179, 52.785877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754608, 39.964474, 53.485210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549812, 40.262604, 53.314396>,  <34.426933, 40.441483, 53.211906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549812, 40.262604, 53.314396>,  <34.754608, 39.964474, 53.485210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549812, 40.262604, 53.314396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768005, -0.174508, 0.616211,
		0.384752, 0.643463, 0.661756,
		-0.511990, 0.745320, -0.427041,
		34.396214, 40.486198, 53.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387955, 40.240528, 54.057392>,  <34.754608, 39.964474, 53.485210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387955, 40.240528, 54.057392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198357, 40.383545, 53.735523>,  <34.084599, 40.469357, 53.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198357, 40.383545, 53.735523>,  <34.387955, 40.240528, 54.057392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198357, 40.383545, 53.735523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875686, -0.095706, 0.473302,
		0.092216, 0.928979, 0.358462,
		-0.473994, 0.357546, -0.804668,
		34.056160, 40.490810, 53.494122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922455, 40.738064, 54.343647>,  <34.387955, 40.240528, 54.057392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922455, 40.738064, 54.343647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783882, 40.605698, 53.992538>,  <33.700741, 40.526279, 53.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783882, 40.605698, 53.992538>,  <33.922455, 40.738064, 54.343647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783882, 40.605698, 53.992538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912271, -0.099121, 0.397412,
		-0.218515, 0.938441, -0.267544,
		-0.346428, -0.330913, -0.877772,
		33.679955, 40.506424, 53.729206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290817, 41.134735, 54.130741>,  <33.922455, 40.738064, 54.343647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290817, 41.134735, 54.130741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241135, 40.810669, 53.901585>,  <33.211327, 40.616230, 53.764091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241135, 40.810669, 53.901585>,  <33.290817, 41.134735, 54.130741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241135, 40.810669, 53.901585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980148, 0.010251, 0.198005,
		-0.154544, 0.586108, -0.795357,
		-0.124205, -0.810168, -0.572888,
		33.203873, 40.567619, 53.729717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652695, 41.272144, 53.839745>,  <33.290817, 41.134735, 54.130741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652695, 41.272144, 53.839745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694633, 40.877975, 53.786156>,  <32.719795, 40.641476, 53.754002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694633, 40.877975, 53.786156>,  <32.652695, 41.272144, 53.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694633, 40.877975, 53.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980119, -0.125206, 0.153916,
		-0.168447, 0.115172, -0.978959,
		0.104845, -0.985423, -0.133973,
		32.726086, 40.582348, 53.745964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054825, 41.159359, 53.507637>,  <32.652695, 41.272144, 53.839745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054825, 41.159359, 53.507637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184929, 40.807800, 53.647209>,  <32.262993, 40.596867, 53.730953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184929, 40.807800, 53.647209>,  <32.054825, 41.159359, 53.507637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184929, 40.807800, 53.647209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912421, -0.194779, 0.359928,
		-0.248375, -0.435439, -0.865276,
		0.325264, -0.878893, 0.348926,
		32.282509, 40.544132, 53.751888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667503, 41.767067, 53.670517>,  <32.054825, 41.159359, 53.507637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667503, 41.767067, 53.670517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452044, 42.099998, 53.722797>,  <31.322767, 42.299759, 53.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452044, 42.099998, 53.722797>,  <31.667503, 41.767067, 53.670517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452044, 42.099998, 53.722797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462469, 0.421761, -0.779897,
		-0.704259, -0.359643, -0.612108,
		-0.538648, 0.832331, 0.130705,
		31.290449, 42.349697, 53.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457733, 41.920910, 53.028446>,  <31.667503, 41.767067, 53.670517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457733, 41.920910, 53.028446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461672, 42.239037, 53.270889>,  <31.464035, 42.429913, 53.416355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461672, 42.239037, 53.270889>,  <31.457733, 41.920910, 53.028446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461672, 42.239037, 53.270889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517627, 0.514552, -0.683592,
		-0.855550, 0.320471, -0.406612,
		0.009849, 0.795321, 0.606109,
		31.464626, 42.477634, 53.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368767, 42.441620, 52.654621>,  <31.457733, 41.920910, 53.028446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368767, 42.441620, 52.654621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526972, 42.618958, 52.976372>,  <31.621895, 42.725361, 53.169422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526972, 42.618958, 52.976372>,  <31.368767, 42.441620, 52.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526972, 42.618958, 52.976372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515844, 0.617382, -0.593922,
		-0.759916, 0.649837, 0.015488,
		0.395515, 0.443342, 0.804373,
		31.645626, 42.751961, 53.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342403, 43.086624, 52.438984>,  <31.368767, 42.441620, 52.654621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342403, 43.086624, 52.438984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612392, 43.085983, 52.734119>,  <31.774385, 43.085598, 52.911201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612392, 43.085983, 52.734119>,  <31.342403, 43.086624, 52.438984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612392, 43.085983, 52.734119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704573, 0.298301, -0.643890,
		-0.219067, 0.954471, 0.202474,
		0.674972, -0.001602, 0.737842,
		31.814884, 43.085503, 52.955471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729153, 43.643341, 52.229027>,  <31.342403, 43.086624, 52.438984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729153, 43.643341, 52.229027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959486, 43.472023, 52.507587>,  <32.097687, 43.369232, 52.674725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959486, 43.472023, 52.507587>,  <31.729153, 43.643341, 52.229027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959486, 43.472023, 52.507587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811954, 0.199943, -0.548411,
		0.095642, 0.881240, 0.462891,
		0.575833, -0.428297, 0.696403,
		32.132236, 43.343533, 52.716507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275719, 44.172337, 52.399918>,  <31.729153, 43.643341, 52.229027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275719, 44.172337, 52.399918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402004, 43.810272, 52.513763>,  <32.477776, 43.593033, 52.582069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402004, 43.810272, 52.513763>,  <32.275719, 44.172337, 52.399918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402004, 43.810272, 52.513763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904120, 0.195966, -0.379690,
		0.287906, 0.377200, 0.880244,
		0.315718, -0.905161, 0.284614,
		32.496719, 43.538723, 52.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949478, 44.227196, 52.396320>,  <32.275719, 44.172337, 52.399918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949478, 44.227196, 52.396320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919521, 43.828354, 52.401718>,  <32.901546, 43.589050, 52.404957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919521, 43.828354, 52.401718>,  <32.949478, 44.227196, 52.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919521, 43.828354, 52.401718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885974, -0.072747, -0.457993,
		0.457647, -0.022342, 0.888853,
		-0.074894, -0.997100, 0.013498,
		32.897053, 43.529224, 52.405769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587795, 44.028347, 52.549393>,  <32.949478, 44.227196, 52.396320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587795, 44.028347, 52.549393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420815, 43.704506, 52.384335>,  <33.320625, 43.510201, 52.285297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420815, 43.704506, 52.384335>,  <33.587795, 44.028347, 52.549393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420815, 43.704506, 52.384335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840891, -0.172040, -0.513133,
		0.344442, -0.561199, 0.752606,
		-0.417448, -0.809604, -0.412649,
		33.295582, 43.461624, 52.260540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088963, 43.507301, 52.704285>,  <33.587795, 44.028347, 52.549393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088963, 43.507301, 52.704285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854862, 43.412971, 52.393963>,  <33.714401, 43.356373, 52.207771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854862, 43.412971, 52.393963>,  <34.088963, 43.507301, 52.704285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854862, 43.412971, 52.393963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810760, -0.184735, -0.555465,
		-0.012328, -0.954076, 0.299310,
		-0.585249, -0.235821, -0.775804,
		33.679287, 43.342224, 52.161221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371426, 42.905807, 52.500904>,  <34.088963, 43.507301, 52.704285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371426, 42.905807, 52.500904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161373, 43.067581, 52.201393>,  <34.035343, 43.164646, 52.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161373, 43.067581, 52.201393>,  <34.371426, 42.905807, 52.500904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161373, 43.067581, 52.201393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796839, -0.075256, -0.599486,
		-0.298804, -0.911464, -0.282752,
		-0.525132, 0.404437, -0.748777,
		34.003834, 43.188911, 51.976761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493904, 42.476910, 51.826412>,  <34.371426, 42.905807, 52.500904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493904, 42.476910, 51.826412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369186, 42.837616, 51.706680>,  <34.294357, 43.054039, 51.634842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369186, 42.837616, 51.706680>,  <34.493904, 42.476910, 51.826412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369186, 42.837616, 51.706680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674018, -0.012128, -0.738616,
		-0.669691, -0.432049, -0.604027,
		-0.311792, 0.901769, -0.299330,
		34.275650, 43.108147, 51.616882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664062, 42.505116, 51.061749>,  <34.493904, 42.476910, 51.826412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664062, 42.505116, 51.061749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569176, 42.886520, 51.136093>,  <34.512245, 43.115364, 51.180698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569176, 42.886520, 51.136093>,  <34.664062, 42.505116, 51.061749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569176, 42.886520, 51.136093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562211, 0.290775, -0.774189,
		-0.792242, -0.079156, -0.605051,
		-0.237215, 0.953512, 0.185862,
		34.498013, 43.172573, 51.191853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552299, 42.852573, 50.440792>,  <34.664062, 42.505116, 51.061749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552299, 42.852573, 50.440792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609402, 43.144836, 50.707855>,  <34.643661, 43.320194, 50.868092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609402, 43.144836, 50.707855>,  <34.552299, 42.852573, 50.440792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609402, 43.144836, 50.707855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573713, 0.488597, -0.657363,
		-0.806521, 0.476883, -0.349438,
		0.142751, 0.730654, 0.667658,
		34.652225, 43.364033, 50.908154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479095, 43.470982, 50.060291>,  <34.552299, 42.852573, 50.440792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479095, 43.470982, 50.060291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678345, 43.585457, 50.387699>,  <34.797894, 43.654144, 50.584145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678345, 43.585457, 50.387699>,  <34.479095, 43.470982, 50.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678345, 43.585457, 50.387699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686615, 0.446315, -0.573901,
		-0.529563, 0.847878, 0.025814,
		0.498119, 0.286192, 0.818518,
		34.827782, 43.671314, 50.633255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728958, 44.125240, 49.885372>,  <34.479095, 43.470982, 50.060291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728958, 44.125240, 49.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966820, 44.019897, 50.189224>,  <35.109535, 43.956692, 50.371536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966820, 44.019897, 50.189224>,  <34.728958, 44.125240, 49.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966820, 44.019897, 50.189224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802208, 0.257117, -0.538844,
		-0.053406, 0.929804, 0.364160,
		0.594651, -0.263354, 0.759628,
		35.145214, 43.940891, 50.417114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228001, 44.638145, 49.880569>,  <34.728958, 44.125240, 49.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228001, 44.638145, 49.880569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395794, 44.333740, 50.078522>,  <35.496468, 44.151100, 50.197292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395794, 44.333740, 50.078522>,  <35.228001, 44.638145, 49.880569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395794, 44.333740, 50.078522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903942, 0.300201, -0.304580,
		0.083226, 0.575105, 0.813835,
		0.419479, -0.761008, 0.494877,
		35.521637, 44.105438, 50.226986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788097, 44.879749, 50.274109>,  <35.228001, 44.638145, 49.880569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788097, 44.879749, 50.274109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871124, 44.493362, 50.212364>,  <35.920940, 44.261532, 50.175320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871124, 44.493362, 50.212364>,  <35.788097, 44.879749, 50.274109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871124, 44.493362, 50.212364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900517, 0.250317, -0.355544,
		0.382081, -0.065203, 0.921826,
		0.207566, -0.965966, -0.154358,
		35.933395, 44.203571, 50.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459629, 44.801403, 50.588322>,  <35.788097, 44.879749, 50.274109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459629, 44.801403, 50.588322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405258, 44.512306, 50.317276>,  <36.372635, 44.338848, 50.154648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405258, 44.512306, 50.317276>,  <36.459629, 44.801403, 50.588322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405258, 44.512306, 50.317276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892546, 0.207517, -0.400372,
		0.429983, -0.659226, 0.616876,
		-0.135923, -0.722744, -0.677618,
		36.364483, 44.295483, 50.113991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084324, 44.549904, 50.490910>,  <36.459629, 44.801403, 50.588322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084324, 44.549904, 50.490910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888737, 44.425583, 50.164890>,  <36.771385, 44.350990, 49.969276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888737, 44.425583, 50.164890>,  <37.084324, 44.549904, 50.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888737, 44.425583, 50.164890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804937, 0.199282, -0.558894,
		0.336132, -0.929348, 0.152735,
		-0.488970, -0.310804, -0.815052,
		36.742046, 44.332340, 49.920376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442692, 44.060249, 50.200165>,  <37.084324, 44.549904, 50.490910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442692, 44.060249, 50.200165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235271, 44.232841, 49.904884>,  <37.110821, 44.336395, 49.727718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235271, 44.232841, 49.904884>,  <37.442692, 44.060249, 50.200165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235271, 44.232841, 49.904884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845240, 0.128275, -0.518763,
		-0.129142, -0.892957, -0.431219,
		-0.518548, 0.431477, -0.738198,
		37.079708, 44.362286, 49.683426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725140, 43.871250, 49.543900>,  <37.442692, 44.060249, 50.200165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725140, 43.871250, 49.543900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479969, 44.130753, 49.363487>,  <37.332867, 44.286453, 49.255238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479969, 44.130753, 49.363487>,  <37.725140, 43.871250, 49.543900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479969, 44.130753, 49.363487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733587, 0.255168, -0.629873,
		-0.293545, -0.716940, -0.632320,
		-0.612929, 0.648758, -0.451034,
		37.296089, 44.325378, 49.228176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780750, 43.786381, 48.750656>,  <37.725140, 43.871250, 49.543900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780750, 43.786381, 48.750656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619194, 44.146851, 48.813583>,  <37.522259, 44.363132, 48.851341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619194, 44.146851, 48.813583>,  <37.780750, 43.786381, 48.750656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619194, 44.146851, 48.813583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553003, 0.377511, -0.742747,
		-0.728737, -0.212992, -0.650828,
		-0.403894, 0.901177, 0.157322,
		37.498028, 44.417202, 48.860779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615284, 44.034184, 48.059204>,  <37.780750, 43.786381, 48.750656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615284, 44.034184, 48.059204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642769, 44.358398, 48.291859>,  <37.659260, 44.552929, 48.431450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642769, 44.358398, 48.291859>,  <37.615284, 44.034184, 48.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642769, 44.358398, 48.291859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557019, 0.452508, -0.696395,
		-0.827652, 0.371834, -0.420394,
		0.068712, 0.810541, 0.581638,
		37.663383, 44.601562, 48.466351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648087, 44.580059, 47.553299>,  <37.615284, 44.034184, 48.059204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648087, 44.580059, 47.553299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744263, 44.772820, 47.890335>,  <37.801968, 44.888477, 48.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744263, 44.772820, 47.890335>,  <37.648087, 44.580059, 47.553299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744263, 44.772820, 47.890335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635696, 0.577822, -0.511872,
		-0.733539, 0.658707, -0.167410,
		0.240440, 0.481900, 0.842592,
		37.816395, 44.917389, 48.143112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514397, 45.348240, 47.544739>,  <37.648087, 44.580059, 47.553299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514397, 45.348240, 47.544739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795937, 45.291183, 47.823090>,  <37.964859, 45.256950, 47.990101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795937, 45.291183, 47.823090>,  <37.514397, 45.348240, 47.544739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795937, 45.291183, 47.823090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646679, 0.534043, -0.544614,
		-0.293943, 0.833337, 0.468132,
		0.703850, -0.142645, 0.695879,
		38.007092, 45.248390, 48.031853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754601, 46.014130, 47.617752>,  <37.514397, 45.348240, 47.544739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754601, 46.014130, 47.617752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035065, 45.775841, 47.774464>,  <38.203342, 45.632870, 47.868492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035065, 45.775841, 47.774464>,  <37.754601, 46.014130, 47.617752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035065, 45.775841, 47.774464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708834, 0.523085, -0.473220,
		0.076973, 0.609510, 0.789033,
		0.701163, -0.595718, 0.391778,
		38.245415, 45.597126, 47.891998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228466, 46.453110, 47.911564>,  <37.754601, 46.014130, 47.617752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228466, 46.453110, 47.911564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429482, 46.111687, 47.856590>,  <38.550091, 45.906834, 47.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429482, 46.111687, 47.856590>,  <38.228466, 46.453110, 47.911564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429482, 46.111687, 47.856590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712565, 0.498947, -0.493257,
		0.489596, 0.149953, 0.858959,
		0.502540, -0.853561, -0.137431,
		38.580242, 45.855618, 47.815361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988651, 46.633053, 47.986656>,  <38.228466, 46.453110, 47.911564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988651, 46.633053, 47.986656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987591, 46.282494, 47.794022>,  <38.986954, 46.072159, 47.678440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987591, 46.282494, 47.794022>,  <38.988651, 46.633053, 47.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987591, 46.282494, 47.794022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703974, 0.340401, -0.623336,
		0.710221, -0.340673, 0.616059,
		-0.002647, -0.876396, -0.481584,
		38.986797, 46.019573, 47.649548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751221, 46.536957, 47.734043>,  <38.988651, 46.633053, 47.986656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751221, 46.536957, 47.734043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519737, 46.302177, 47.507561>,  <39.380848, 46.161312, 47.371670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519737, 46.302177, 47.507561>,  <39.751221, 46.536957, 47.734043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519737, 46.302177, 47.507561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555819, 0.224195, -0.800501,
		0.596792, -0.777966, 0.196493,
		-0.578709, -0.586947, -0.566206,
		39.346123, 46.126095, 47.337700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212154, 46.016891, 47.409611>,  <39.751221, 46.536957, 47.734043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212154, 46.016891, 47.409611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874550, 46.048439, 47.197414>,  <39.671986, 46.067368, 47.070095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874550, 46.048439, 47.197414>,  <40.212154, 46.016891, 47.409611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874550, 46.048439, 47.197414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527959, 0.296220, -0.795935,
		0.094365, -0.951858, -0.291655,
		-0.844011, 0.078873, -0.530495,
		39.621346, 46.072102, 47.038265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450237, 45.971508, 46.664951>,  <40.212154, 46.016891, 47.409611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450237, 45.971508, 46.664951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069263, 46.078804, 46.607105>,  <39.840679, 46.143181, 46.572399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069263, 46.078804, 46.607105>,  <40.450237, 45.971508, 46.664951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069263, 46.078804, 46.607105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251302, 0.422914, -0.870627,
		-0.172380, -0.865557, -0.470208,
		-0.952435, 0.268243, -0.144615,
		39.783531, 46.159279, 46.563721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248203, 45.810673, 45.954556>,  <40.450237, 45.971508, 46.664951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248203, 45.810673, 45.954556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003368, 46.108284, 46.061726>,  <39.856468, 46.286850, 46.126026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003368, 46.108284, 46.061726>,  <40.248203, 45.810673, 45.954556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003368, 46.108284, 46.061726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073886, 0.391127, -0.917366,
		-0.787335, -0.541708, -0.294375,
		-0.612082, 0.744024, 0.267923,
		39.819744, 46.331490, 46.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839497, 45.855717, 45.385704>,  <40.248203, 45.810673, 45.954556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839497, 45.855717, 45.385704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814388, 46.207329, 45.574749>,  <39.799324, 46.418297, 45.688175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814388, 46.207329, 45.574749>,  <39.839497, 45.855717, 45.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814388, 46.207329, 45.574749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025169, 0.474793, -0.879738,
		-0.997711, -0.043322, -0.051925,
		-0.062766, 0.879031, 0.472615,
		39.795559, 46.471039, 45.716534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469761, 46.235359, 44.962513>,  <39.839497, 45.855717, 45.385704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469761, 46.235359, 44.962513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663784, 46.504173, 45.186333>,  <39.780197, 46.665462, 45.320625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663784, 46.504173, 45.186333>,  <39.469761, 46.235359, 44.962513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663784, 46.504173, 45.186333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303757, 0.470538, -0.828448,
		-0.820032, 0.571809, 0.024103,
		0.485056, 0.672032, 0.559548,
		39.809299, 46.705784, 45.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291553, 46.869675, 44.642906>,  <39.469761, 46.235359, 44.962513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291553, 46.869675, 44.642906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616302, 46.958946, 44.858704>,  <39.811153, 47.012508, 44.988182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616302, 46.958946, 44.858704>,  <39.291553, 46.869675, 44.642906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616302, 46.958946, 44.858704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319191, 0.604059, -0.730226,
		-0.488857, 0.765052, 0.419182,
		0.811872, 0.223177, 0.539497,
		39.859863, 47.025898, 45.020554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452930, 47.610298, 44.454205>,  <39.291553, 46.869675, 44.642906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452930, 47.610298, 44.454205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795975, 47.460510, 44.595219>,  <40.001801, 47.370636, 44.679825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795975, 47.460510, 44.595219>,  <39.452930, 47.610298, 44.454205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795975, 47.460510, 44.595219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511414, 0.548345, -0.661644,
		0.054459, 0.747721, 0.661776,
		0.857607, -0.374474, 0.352533,
		40.053257, 47.348167, 44.700977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793316, 48.217491, 44.414734>,  <39.452930, 47.610298, 44.454205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793316, 48.217491, 44.414734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064529, 47.925056, 44.445148>,  <40.227257, 47.749596, 44.463398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064529, 47.925056, 44.445148>,  <39.793316, 48.217491, 44.414734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064529, 47.925056, 44.445148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579524, 0.468092, -0.667114,
		0.452126, 0.496391, 0.741065,
		0.678036, -0.731085, 0.076034,
		40.267941, 47.705730, 44.467960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286861, 48.564320, 44.652370>,  <39.793316, 48.217491, 44.414734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286861, 48.564320, 44.652370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447159, 48.235367, 44.490829>,  <40.543339, 48.037994, 44.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447159, 48.235367, 44.490829>,  <40.286861, 48.564320, 44.652370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447159, 48.235367, 44.490829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707668, 0.557807, -0.433655,
		0.581899, -0.112005, 0.805511,
		0.400748, -0.822378, -0.403850,
		40.567383, 47.988655, 44.369675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033955, 48.606464, 44.721233>,  <40.286861, 48.564320, 44.652370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033955, 48.606464, 44.721233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936314, 48.363228, 44.419071>,  <40.877728, 48.217285, 44.237774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936314, 48.363228, 44.419071>,  <41.033955, 48.606464, 44.721233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936314, 48.363228, 44.419071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531125, 0.567911, -0.628795,
		0.811369, -0.554704, 0.184346,
		-0.244103, -0.608096, -0.755403,
		40.863083, 48.180798, 44.192451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658752, 48.419827, 44.358192>,  <41.033955, 48.606464, 44.721233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658752, 48.419827, 44.358192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374809, 48.334885, 44.089561>,  <41.204445, 48.283920, 43.928383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374809, 48.334885, 44.089561>,  <41.658752, 48.419827, 44.358192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374809, 48.334885, 44.089561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416585, 0.642249, -0.643408,
		0.567948, -0.736494, -0.367440,
		-0.709853, -0.212352, -0.671576,
		41.161854, 48.271179, 43.888088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.588356, 43.199097, 46.228657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653595, 42.804451, 46.228802>,  <33.692738, 42.567665, 46.228889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653595, 42.804451, 46.228802>,  <33.588356, 43.199097, 46.228657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653595, 42.804451, 46.228802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884216, 0.146011, -0.443670,
		0.437677, 0.072681, 0.896190,
		0.163100, -0.986610, 0.000361,
		33.702526, 42.508469, 46.228909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280136, 43.196396, 46.269268>,  <33.588356, 43.199097, 46.228657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280136, 43.196396, 46.269268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180309, 42.839508, 46.118717>,  <34.120415, 42.625374, 46.028389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180309, 42.839508, 46.118717>,  <34.280136, 43.196396, 46.269268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180309, 42.839508, 46.118717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746314, 0.070440, -0.661856,
		0.617034, -0.446071, 0.648298,
		-0.249568, -0.892221, -0.376373,
		34.105438, 42.571842, 46.005806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855103, 42.830849, 46.195957>,  <34.280136, 43.196396, 46.269268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855103, 42.830849, 46.195957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625927, 42.618507, 45.946178>,  <34.488422, 42.491104, 45.796310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625927, 42.618507, 45.946178>,  <34.855103, 42.830849, 46.195957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625927, 42.618507, 45.946178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748343, -0.028117, -0.662716,
		0.334248, -0.846997, 0.413369,
		-0.572941, -0.530853, -0.624446,
		34.454044, 42.459251, 45.758846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343010, 42.393887, 45.934551>,  <34.855103, 42.830849, 46.195957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343010, 42.393887, 45.934551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042782, 42.400673, 45.670322>,  <34.862644, 42.404743, 45.511787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042782, 42.400673, 45.670322>,  <35.343010, 42.393887, 45.934551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042782, 42.400673, 45.670322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659339, 0.085369, -0.746983,
		0.043718, -0.996205, -0.075263,
		-0.750574, 0.016967, -0.660569,
		34.817612, 42.405762, 45.472153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453667, 41.833385, 45.468697>,  <35.343010, 42.393887, 45.934551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453667, 41.833385, 45.468697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220589, 42.092903, 45.272930>,  <35.080742, 42.248615, 45.155472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220589, 42.092903, 45.272930>,  <35.453667, 41.833385, 45.468697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220589, 42.092903, 45.272930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620346, -0.033949, -0.783593,
		-0.525008, -0.760204, -0.382697,
		-0.582698, 0.648797, -0.489413,
		35.045780, 42.287540, 45.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330681, 41.582935, 44.709831>,  <35.453667, 41.833385, 45.468697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330681, 41.582935, 44.709831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287560, 41.980469, 44.720139>,  <35.261688, 42.218990, 44.726322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287560, 41.980469, 44.720139>,  <35.330681, 41.582935, 44.709831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287560, 41.980469, 44.720139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674060, 0.092117, -0.732911,
		-0.730768, -0.061644, -0.679837,
		-0.107804, 0.993838, 0.025765,
		35.255219, 42.278622, 44.727867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293789, 41.793831, 44.065071>,  <35.330681, 41.582935, 44.709831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293789, 41.793831, 44.065071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411346, 42.118301, 44.267307>,  <35.481880, 42.312984, 44.388649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411346, 42.118301, 44.267307>,  <35.293789, 41.793831, 44.065071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411346, 42.118301, 44.267307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622689, 0.238823, -0.745132,
		-0.725179, 0.533817, -0.434920,
		0.293895, 0.811174, 0.505591,
		35.499516, 42.361652, 44.418983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295654, 42.364738, 43.552830>,  <35.293789, 41.793831, 44.065071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295654, 42.364738, 43.552830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511028, 42.529427, 43.846924>,  <35.640255, 42.628239, 44.023380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511028, 42.529427, 43.846924>,  <35.295654, 42.364738, 43.552830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511028, 42.529427, 43.846924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632484, 0.379085, -0.675469,
		-0.556821, 0.828723, -0.056293,
		0.538437, 0.411720, 0.735237,
		35.672558, 42.652943, 44.067493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461735, 42.984699, 43.345371>,  <35.295654, 42.364738, 43.552830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461735, 42.984699, 43.345371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726601, 42.978119, 43.645042>,  <35.885521, 42.974171, 43.824844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726601, 42.978119, 43.645042>,  <35.461735, 42.984699, 43.345371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726601, 42.978119, 43.645042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666666, 0.469462, -0.578932,
		-0.342186, 0.882800, 0.321828,
		0.662167, -0.016449, 0.749176,
		35.925251, 42.973183, 43.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604263, 43.669952, 43.397739>,  <35.461735, 42.984699, 43.345371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604263, 43.669952, 43.397739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899158, 43.458275, 43.565754>,  <36.076096, 43.331268, 43.666561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899158, 43.458275, 43.565754>,  <35.604263, 43.669952, 43.397739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899158, 43.458275, 43.565754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671410, 0.643218, -0.368075,
		-0.075390, 0.553375, 0.829514,
		0.737241, -0.529195, 0.420034,
		36.120331, 43.299515, 43.691765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022881, 44.088207, 43.865410>,  <35.604263, 43.669952, 43.397739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022881, 44.088207, 43.865410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251900, 43.781036, 43.750538>,  <36.389313, 43.596733, 43.681614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251900, 43.781036, 43.750538>,  <36.022881, 44.088207, 43.865410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251900, 43.781036, 43.750538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651252, 0.638769, -0.409690,
		0.498056, 0.047540, 0.865841,
		0.572549, -0.767929, -0.287182,
		36.423664, 43.550659, 43.664383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614807, 44.440048, 43.832951>,  <36.022881, 44.088207, 43.865410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614807, 44.440048, 43.832951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722610, 44.094391, 43.662952>,  <36.787292, 43.886997, 43.560951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722610, 44.094391, 43.662952>,  <36.614807, 44.440048, 43.832951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722610, 44.094391, 43.662952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728713, 0.471522, -0.496634,
		0.629558, -0.175855, 0.756790,
		0.269508, -0.864142, -0.424998,
		36.803463, 43.835148, 43.535454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309708, 44.259342, 44.012161>,  <36.614807, 44.440048, 43.832951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309708, 44.259342, 44.012161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220318, 44.083618, 43.664124>,  <37.166683, 43.978184, 43.455303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220318, 44.083618, 43.664124>,  <37.309708, 44.259342, 44.012161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220318, 44.083618, 43.664124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775896, 0.460118, -0.431599,
		0.589953, -0.771553, 0.238036,
		-0.223477, -0.439314, -0.870093,
		37.153275, 43.951824, 43.403095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907467, 44.119652, 43.674889>,  <37.309708, 44.259342, 44.012161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907467, 44.119652, 43.674889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631695, 44.105385, 43.385498>,  <37.466232, 44.096825, 43.211864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631695, 44.105385, 43.385498>,  <37.907467, 44.119652, 43.674889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631695, 44.105385, 43.385498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611426, 0.506885, -0.607640,
		0.388393, -0.861275, -0.327651,
		-0.689427, -0.035668, -0.723477,
		37.424866, 44.094685, 43.168453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309143, 43.868507, 43.057980>,  <37.907467, 44.119652, 43.674889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309143, 43.868507, 43.057980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961716, 44.022125, 42.932701>,  <37.753258, 44.114296, 42.857533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961716, 44.022125, 42.932701>,  <38.309143, 43.868507, 43.057980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961716, 44.022125, 42.932701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463332, 0.405129, -0.788158,
		-0.175804, -0.829686, -0.529825,
		-0.868571, 0.384046, -0.313196,
		37.701145, 44.137341, 42.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347084, 43.814579, 42.358067>,  <38.309143, 43.868507, 43.057980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347084, 43.814579, 42.358067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065022, 44.096954, 42.384579>,  <37.895782, 44.266380, 42.400486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065022, 44.096954, 42.384579>,  <38.347084, 43.814579, 42.358067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065022, 44.096954, 42.384579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579808, 0.627911, -0.519183,
		-0.408131, -0.327678, -0.852090,
		-0.705161, 0.705943, 0.066280,
		37.853474, 44.308739, 42.404461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288280, 44.065395, 41.654072>,  <38.347084, 43.814579, 42.358067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288280, 44.065395, 41.654072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177711, 44.342659, 41.920341>,  <38.111370, 44.509018, 42.080101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177711, 44.342659, 41.920341>,  <38.288280, 44.065395, 41.654072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177711, 44.342659, 41.920341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644344, 0.647583, -0.406764,
		-0.713031, 0.316483, -0.625640,
		-0.276420, 0.693163, 0.665671,
		38.094784, 44.550610, 42.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000999, 44.655632, 41.296566>,  <38.288280, 44.065395, 41.654072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000999, 44.655632, 41.296566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143082, 44.786591, 41.646797>,  <38.228333, 44.865166, 41.856937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143082, 44.786591, 41.646797>,  <38.000999, 44.655632, 41.296566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143082, 44.786591, 41.646797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463204, 0.751937, -0.469077,
		-0.811954, 0.572192, 0.115444,
		0.355208, 0.327395, 0.875580,
		38.249645, 44.884808, 41.909470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902161, 45.374020, 41.213329>,  <38.000999, 44.655632, 41.296566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902161, 45.374020, 41.213329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179611, 45.341331, 41.499603>,  <38.346081, 45.321720, 41.671368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179611, 45.341331, 41.499603>,  <37.902161, 45.374020, 41.213329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179611, 45.341331, 41.499603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520866, 0.743197, -0.419950,
		-0.497576, 0.664064, 0.558066,
		0.693626, -0.081721, 0.715685,
		38.387699, 45.316814, 41.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960266, 46.006615, 41.474663>,  <37.902161, 45.374020, 41.213329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960266, 46.006615, 41.474663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307373, 45.852776, 41.600563>,  <38.515636, 45.760471, 41.676102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307373, 45.852776, 41.600563>,  <37.960266, 46.006615, 41.474663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307373, 45.852776, 41.600563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463040, 0.855705, -0.231003,
		-0.180490, 0.346199, 0.920636,
		0.867766, -0.384597, 0.314750,
		38.567703, 45.737396, 41.694988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313885, 46.559147, 41.730740>,  <37.960266, 46.006615, 41.474663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313885, 46.559147, 41.730740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621346, 46.309700, 41.673782>,  <38.805824, 46.160034, 41.639606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621346, 46.309700, 41.673782>,  <38.313885, 46.559147, 41.730740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621346, 46.309700, 41.673782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506409, 0.729257, -0.460146,
		0.390794, 0.281585, 0.876351,
		0.768655, -0.623614, -0.142392,
		38.851940, 46.122616, 41.631065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959995, 46.919365, 41.990959>,  <38.313885, 46.559147, 41.730740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959995, 46.919365, 41.990959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070129, 46.637352, 41.729542>,  <39.136211, 46.468143, 41.572693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070129, 46.637352, 41.729542>,  <38.959995, 46.919365, 41.990959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070129, 46.637352, 41.729542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598991, 0.657543, -0.456997,
		0.751930, -0.265637, 0.603355,
		0.275336, -0.705034, -0.653541,
		39.152729, 46.425842, 41.533478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705315, 47.504238, 42.479034>,  <38.959995, 46.919365, 41.990959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705315, 47.504238, 42.479034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693081, 47.886063, 42.597610>,  <38.685741, 48.115158, 42.668755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693081, 47.886063, 42.597610>,  <38.705315, 47.504238, 42.479034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693081, 47.886063, 42.597610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923103, -0.140717, 0.357882,
		0.383335, -0.262696, 0.885463,
		-0.030586, 0.954563, 0.296437,
		38.683907, 48.172432, 42.686543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493351, 47.516266, 43.071602>,  <38.705315, 47.504238, 42.479034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493351, 47.516266, 43.071602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416355, 47.897774, 42.979275>,  <38.370155, 48.126678, 42.923878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416355, 47.897774, 42.979275>,  <38.493351, 47.516266, 43.071602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416355, 47.897774, 42.979275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918426, -0.092268, 0.384681,
		0.345600, 0.286034, 0.893726,
		-0.192494, 0.953767, -0.230813,
		38.358608, 48.183903, 42.910030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372807, 47.754135, 43.673195>,  <38.493351, 47.516266, 43.071602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372807, 47.754135, 43.673195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207199, 48.037628, 43.444710>,  <38.107834, 48.207726, 43.307617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207199, 48.037628, 43.444710>,  <38.372807, 47.754135, 43.673195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207199, 48.037628, 43.444710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806269, 0.005748, 0.591520,
		0.422514, 0.705453, 0.569050,
		-0.414019, 0.708733, -0.571214,
		38.082993, 48.250248, 43.273346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280357, 48.347137, 44.099140>,  <38.372807, 47.754135, 43.673195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280357, 48.347137, 44.099140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037048, 48.386116, 43.784050>,  <37.891064, 48.409504, 43.594997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037048, 48.386116, 43.784050>,  <38.280357, 48.347137, 44.099140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037048, 48.386116, 43.784050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790590, 0.013830, 0.612190,
		0.070552, 0.995144, 0.068631,
		-0.608268, 0.097451, -0.787727,
		37.854568, 48.415352, 43.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806164, 48.810669, 44.298882>,  <38.280357, 48.347137, 44.099140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806164, 48.810669, 44.298882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631168, 48.603165, 44.005077>,  <37.526173, 48.478664, 43.828796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631168, 48.603165, 44.005077>,  <37.806164, 48.810669, 44.298882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631168, 48.603165, 44.005077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830252, -0.080708, 0.551514,
		-0.345382, 0.851104, -0.395390,
		-0.437485, -0.518756, -0.734506,
		37.499924, 48.447536, 43.784725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097008, 48.908371, 44.339146>,  <37.806164, 48.810669, 44.298882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097008, 48.908371, 44.339146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092827, 48.577385, 44.114578>,  <37.090317, 48.378792, 43.979839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092827, 48.577385, 44.114578>,  <37.097008, 48.908371, 44.339146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092827, 48.577385, 44.114578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664110, -0.413995, 0.622548,
		-0.747562, 0.379352, -0.545200,
		-0.010455, -0.827466, -0.561418,
		37.089691, 48.329144, 43.946152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357155, 48.832283, 44.075718>,  <37.097008, 48.908371, 44.339146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357155, 48.832283, 44.075718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537498, 48.475266, 44.071728>,  <36.645706, 48.261055, 44.069332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537498, 48.475266, 44.071728>,  <36.357155, 48.832283, 44.075718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537498, 48.475266, 44.071728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779290, -0.399053, 0.483181,
		-0.435238, -0.210074, -0.875464,
		0.450860, -0.892539, -0.009975,
		36.672756, 48.207504, 44.068733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801094, 48.408218, 44.064373>,  <36.357155, 48.832283, 44.075718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801094, 48.408218, 44.064373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095482, 48.145538, 44.130211>,  <36.272114, 47.987930, 44.169712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095482, 48.145538, 44.130211>,  <35.801094, 48.408218, 44.064373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095482, 48.145538, 44.130211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607712, -0.533663, 0.588125,
		-0.298381, -0.532871, -0.791844,
		0.735972, -0.656698, 0.164597,
		36.316273, 47.948528, 44.179588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580349, 47.654385, 43.837517>,  <35.801094, 48.408218, 44.064373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580349, 47.654385, 43.837517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869377, 47.623512, 44.112309>,  <36.042793, 47.604988, 44.277184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869377, 47.623512, 44.112309>,  <35.580349, 47.654385, 43.837517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869377, 47.623512, 44.112309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604367, -0.552975, 0.573549,
		0.335617, -0.829615, -0.446206,
		0.722566, -0.077179, 0.686980,
		36.086147, 47.600357, 44.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597996, 46.909504, 43.987797>,  <35.580349, 47.654385, 43.837517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597996, 46.909504, 43.987797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784065, 47.083939, 44.295937>,  <35.895706, 47.188599, 44.480820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784065, 47.083939, 44.295937>,  <35.597996, 46.909504, 43.987797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784065, 47.083939, 44.295937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356329, -0.704381, 0.613904,
		0.810336, -0.560071, -0.172270,
		0.465173, 0.436083, 0.770354,
		35.923618, 47.214764, 44.527042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027363, 46.424747, 44.401524>,  <35.597996, 46.909504, 43.987797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027363, 46.424747, 44.401524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916824, 46.735596, 44.627697>,  <35.850502, 46.922104, 44.763401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916824, 46.735596, 44.627697>,  <36.027363, 46.424747, 44.401524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916824, 46.735596, 44.627697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447924, -0.624688, 0.639632,
		0.850290, -0.076511, 0.520723,
		-0.276351, 0.777117, 0.565437,
		35.833920, 46.968731, 44.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850338, 46.085239, 44.939739>,  <36.027363, 46.424747, 44.401524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850338, 46.085239, 44.939739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719513, 46.444160, 45.058311>,  <35.641018, 46.659515, 45.129456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719513, 46.444160, 45.058311>,  <35.850338, 46.085239, 44.939739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719513, 46.444160, 45.058311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647089, -0.441261, 0.621743,
		0.688698, 0.011530, 0.724956,
		-0.327064, 0.897305, 0.296435,
		35.621395, 46.713352, 45.147243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960110, 46.234196, 45.732285>,  <35.850338, 46.085239, 44.939739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960110, 46.234196, 45.732285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651810, 46.417137, 45.554852>,  <35.466827, 46.526901, 45.448391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651810, 46.417137, 45.554852>,  <35.960110, 46.234196, 45.732285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651810, 46.417137, 45.554852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637120, -0.548939, 0.541059,
		0.003952, 0.699641, 0.714484,
		-0.770755, 0.457350, -0.443586,
		35.420582, 46.554340, 45.421776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580246, 46.638218, 46.277832>,  <35.960110, 46.234196, 45.732285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580246, 46.638218, 46.277832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337738, 46.568741, 45.967407>,  <35.192234, 46.527054, 45.781151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337738, 46.568741, 45.967407>,  <35.580246, 46.638218, 46.277832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337738, 46.568741, 45.967407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627528, -0.494967, 0.601012,
		-0.488516, 0.851374, 0.191085,
		-0.606267, -0.173693, -0.776061,
		35.155857, 46.516632, 45.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895008, 46.924149, 46.503090>,  <35.580246, 46.638218, 46.277832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895008, 46.924149, 46.503090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816483, 46.668098, 46.205986>,  <34.769367, 46.514469, 46.027721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816483, 46.668098, 46.205986>,  <34.895008, 46.924149, 46.503090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816483, 46.668098, 46.205986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590725, -0.527399, 0.610652,
		-0.782627, 0.558648, -0.274604,
		-0.196313, -0.640128, -0.742764,
		34.757587, 46.476059, 45.983158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253906, 46.670475, 46.720253>,  <34.895008, 46.924149, 46.503090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253906, 46.670475, 46.720253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.321560, 46.423515, 46.412952>,  <34.362152, 46.275341, 46.228573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.321560, 46.423515, 46.412952>,  <34.253906, 46.670475, 46.720253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321560, 46.423515, 46.412952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632879, -0.665584, 0.395553,
		-0.755551, 0.419310, -0.503311,
		0.169137, -0.617395, -0.768255,
		34.372303, 46.238297, 46.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586136, 46.568672, 46.379589>,  <34.253906, 46.670475, 46.720253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586136, 46.568672, 46.379589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835312, 46.258469, 46.338547>,  <33.984818, 46.072346, 46.313923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835312, 46.258469, 46.338547>,  <33.586136, 46.568672, 46.379589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835312, 46.258469, 46.338547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700108, -0.611212, 0.369147,
		-0.348990, -0.158124, -0.923690,
		0.622941, -0.775511, -0.102603,
		34.022194, 46.025814, 46.307766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208553, 45.959400, 46.087460>,  <33.586136, 46.568672, 46.379589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208553, 45.959400, 46.087460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528595, 45.771904, 46.237186>,  <33.720619, 45.659405, 46.327023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528595, 45.771904, 46.237186>,  <33.208553, 45.959400, 46.087460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528595, 45.771904, 46.237186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588946, -0.732325, 0.341822,
		0.113894, -0.493945, -0.862002,
		0.800107, -0.468742, 0.374314,
		33.768627, 45.631283, 46.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.084717, 45.248375, 45.956436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363392, 45.254959, 46.243313>,  <33.530598, 45.258911, 46.415440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363392, 45.254959, 46.243313>,  <33.084717, 45.248375, 45.956436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363392, 45.254959, 46.243313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501679, -0.703435, 0.503485,
		0.512784, -0.710569, -0.481813,
		0.696685, 0.016463, 0.717188,
		33.572399, 45.259899, 46.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342152, 44.541439, 46.121162>,  <33.084717, 45.248375, 45.956436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342152, 44.541439, 46.121162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470375, 44.753311, 46.435280>,  <33.547310, 44.880432, 46.623749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470375, 44.753311, 46.435280>,  <33.342152, 44.541439, 46.121162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470375, 44.753311, 46.435280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356702, -0.700511, 0.618101,
		0.877499, -0.478253, -0.035619,
		0.320560, 0.529678, 0.785291,
		33.566544, 44.912216, 46.670868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673447, 44.004128, 46.508419>,  <33.342152, 44.541439, 46.121162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673447, 44.004128, 46.508419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569794, 44.315979, 46.736462>,  <33.507603, 44.503090, 46.873287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569794, 44.315979, 46.736462>,  <33.673447, 44.004128, 46.508419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569794, 44.315979, 46.736462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442652, -0.620496, 0.647336,
		0.858435, -0.084617, 0.505894,
		-0.259130, 0.779631, 0.570111,
		33.492054, 44.549870, 46.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917286, 43.920006, 47.214260>,  <33.673447, 44.004128, 46.508419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917286, 43.920006, 47.214260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621742, 44.188576, 47.237186>,  <33.444416, 44.349716, 47.250942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621742, 44.188576, 47.237186>,  <33.917286, 43.920006, 47.214260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621742, 44.188576, 47.237186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473904, -0.578193, 0.664160,
		0.479071, 0.463556, 0.745391,
		-0.738855, 0.671423, 0.057314,
		33.400085, 44.390003, 47.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758076, 43.961063, 47.914070>,  <33.917286, 43.920006, 47.214260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758076, 43.961063, 47.914070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427105, 44.095161, 47.733860>,  <33.228523, 44.175621, 47.625732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427105, 44.095161, 47.733860>,  <33.758076, 43.961063, 47.914070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427105, 44.095161, 47.733860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560444, -0.442059, 0.700347,
		0.035629, 0.831981, 0.553659,
		-0.827426, 0.335248, -0.450528,
		33.178879, 44.195736, 47.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302044, 44.132427, 48.446224>,  <33.758076, 43.961063, 47.914070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302044, 44.132427, 48.446224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037491, 44.127518, 48.146248>,  <32.878757, 44.124573, 47.966263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037491, 44.127518, 48.146248>,  <33.302044, 44.132427, 48.446224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037491, 44.127518, 48.146248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738073, -0.167287, 0.653654,
		-0.133479, 0.985832, 0.101582,
		-0.661386, -0.012274, -0.749945,
		32.839073, 44.123837, 47.921265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760563, 44.438797, 48.722946>,  <33.302044, 44.132427, 48.446224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760563, 44.438797, 48.722946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602493, 44.249657, 48.407921>,  <32.507652, 44.136173, 48.218906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602493, 44.249657, 48.407921>,  <32.760563, 44.438797, 48.722946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602493, 44.249657, 48.407921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727902, -0.361801, 0.582459,
		-0.560357, 0.803438, -0.201216,
		-0.395169, -0.472850, -0.787562,
		32.483944, 44.107803, 48.171654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957954, 44.467930, 48.681030>,  <32.760563, 44.438797, 48.722946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957954, 44.467930, 48.681030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015564, 44.135941, 48.465473>,  <32.050129, 43.936749, 48.336140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015564, 44.135941, 48.465473>,  <31.957954, 44.467930, 48.681030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015564, 44.135941, 48.465473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746164, -0.448777, 0.491770,
		-0.649997, 0.331275, -0.683930,
		0.144021, -0.829973, -0.538890,
		32.058769, 43.886948, 48.303806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362394, 44.296249, 48.448921>,  <31.957954, 44.467930, 48.681030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362394, 44.296249, 48.448921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550751, 43.946411, 48.402702>,  <31.663765, 43.736507, 48.374973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550751, 43.946411, 48.402702>,  <31.362394, 44.296249, 48.448921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550751, 43.946411, 48.402702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758304, -0.468209, 0.453603,
		-0.450812, -0.125989, -0.883683,
		0.470897, -0.874589, -0.115536,
		31.692019, 43.684032, 48.368038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777857, 43.859924, 48.276634>,  <31.362394, 44.296249, 48.448921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777857, 43.859924, 48.276634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090952, 43.651703, 48.413071>,  <31.278809, 43.526772, 48.494930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090952, 43.651703, 48.413071>,  <30.777857, 43.859924, 48.276634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090952, 43.651703, 48.413071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606879, -0.516997, 0.603666,
		-0.137900, -0.679512, -0.720588,
		0.782740, -0.520555, 0.341088,
		31.325773, 43.495537, 48.515396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535624, 43.262600, 48.363449>,  <30.777857, 43.859924, 48.276634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535624, 43.262600, 48.363449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859818, 43.208504, 48.591423>,  <31.054335, 43.176044, 48.728207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859818, 43.208504, 48.591423>,  <30.535624, 43.262600, 48.363449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859818, 43.208504, 48.591423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533403, -0.572481, 0.622692,
		0.242063, -0.808687, -0.536126,
		0.810485, -0.135241, 0.569933,
		31.102962, 43.167931, 48.762402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456751, 42.514606, 48.547707>,  <30.535624, 43.262600, 48.363449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456751, 42.514606, 48.547707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703497, 42.685997, 48.811790>,  <30.851545, 42.788834, 48.970242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703497, 42.685997, 48.811790>,  <30.456751, 42.514606, 48.547707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703497, 42.685997, 48.811790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441159, -0.506441, 0.740875,
		0.651809, -0.748280, -0.123378,
		0.616866, 0.428480, 0.660213,
		30.888557, 42.814541, 49.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699234, 41.949741, 48.902813>,  <30.456751, 42.514606, 48.547707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699234, 41.949741, 48.902813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768471, 42.273911, 49.126686>,  <30.810013, 42.468414, 49.261009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768471, 42.273911, 49.126686>,  <30.699234, 41.949741, 48.902813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768471, 42.273911, 49.126686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499588, -0.417484, 0.759025,
		0.848794, -0.410992, 0.332617,
		0.173091, 0.810427, 0.559685,
		30.820398, 42.517040, 49.294590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920580, 41.733391, 49.634411>,  <30.699234, 41.949741, 48.902813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920580, 41.733391, 49.634411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780739, 42.105843, 49.675949>,  <30.696835, 42.329311, 49.700871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780739, 42.105843, 49.675949>,  <30.920580, 41.733391, 49.634411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780739, 42.105843, 49.675949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603191, -0.308505, 0.735517,
		0.716895, 0.194501, 0.669500,
		-0.349603, 0.931125, 0.103844,
		30.675858, 42.385181, 49.707104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738394, 41.727184, 50.385052>,  <30.920580, 41.733391, 49.634411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738394, 41.727184, 50.385052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568254, 42.063347, 50.250710>,  <30.466171, 42.265045, 50.170105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568254, 42.063347, 50.250710>,  <30.738394, 41.727184, 50.385052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568254, 42.063347, 50.250710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506346, 0.086605, 0.857971,
		0.750129, 0.534995, 0.388698,
		-0.425347, 0.840405, -0.335857,
		30.440651, 42.315468, 50.149952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816978, 42.269737, 50.924026>,  <30.738394, 41.727184, 50.385052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816978, 42.269737, 50.924026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501982, 42.416168, 50.725697>,  <30.312983, 42.504028, 50.606701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501982, 42.416168, 50.725697>,  <30.816978, 42.269737, 50.924026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501982, 42.416168, 50.725697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529118, 0.010974, 0.848477,
		0.316052, 0.930518, 0.185058,
		-0.787493, 0.366080, -0.495822,
		30.265734, 42.525993, 50.576950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658323, 42.846874, 51.229416>,  <30.816978, 42.269737, 50.924026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658323, 42.846874, 51.229416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324186, 42.714256, 51.054016>,  <30.123705, 42.634686, 50.948776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324186, 42.714256, 51.054016>,  <30.658323, 42.846874, 51.229416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324186, 42.714256, 51.054016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486048, 0.072776, 0.870897,
		-0.256829, 0.940628, -0.221939,
		-0.835342, -0.331544, -0.438499,
		30.073584, 42.614792, 50.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088123, 43.335823, 51.479774>,  <30.658323, 42.846874, 51.229416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088123, 43.335823, 51.479774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924358, 43.003548, 51.328861>,  <29.826099, 42.804184, 51.238312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924358, 43.003548, 51.328861>,  <30.088123, 43.335823, 51.479774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924358, 43.003548, 51.328861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562146, -0.096031, 0.821444,
		-0.718592, 0.548398, -0.427651,
		-0.409410, -0.830685, -0.377286,
		29.801535, 42.754341, 51.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294390, 43.379654, 51.772781>,  <30.088123, 43.335823, 51.479774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294390, 43.379654, 51.772781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401917, 43.005898, 51.679264>,  <29.466433, 42.781643, 51.623154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401917, 43.005898, 51.679264>,  <29.294390, 43.379654, 51.772781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401917, 43.005898, 51.679264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434051, -0.334199, 0.836607,
		-0.859847, -0.123418, -0.495410,
		0.268818, -0.934387, -0.233790,
		29.482561, 42.725582, 51.609127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803806, 42.861969, 52.064617>,  <29.294390, 43.379654, 51.772781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803806, 42.861969, 52.064617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.081211, 42.593185, 51.960678>,  <29.247654, 42.431915, 51.898315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.081211, 42.593185, 51.960678>,  <28.803806, 42.861969, 52.064617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081211, 42.593185, 51.960678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246115, -0.559940, 0.791135,
		-0.677105, -0.484709, -0.553703,
		0.693511, -0.671956, -0.259844,
		29.289265, 42.391598, 51.882725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486059, 42.235016, 52.168480>,  <28.803806, 42.861969, 52.064617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486059, 42.235016, 52.168480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878170, 42.159615, 52.192219>,  <29.113438, 42.114376, 52.206463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878170, 42.159615, 52.192219>,  <28.486059, 42.235016, 52.168480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878170, 42.159615, 52.192219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170763, -0.656803, 0.734472,
		-0.099467, -0.730122, -0.676039,
		0.980279, -0.188498, 0.059348,
		29.172253, 42.103065, 52.210022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470343, 41.483723, 52.161079>,  <28.486059, 42.235016, 52.168480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470343, 41.483723, 52.161079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818523, 41.599792, 52.320133>,  <29.027431, 41.669434, 52.415565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818523, 41.599792, 52.320133>,  <28.470343, 41.483723, 52.161079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818523, 41.599792, 52.320133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107408, -0.676361, 0.728697,
		0.480391, -0.677005, -0.557574,
		0.870453, 0.290172, 0.397633,
		29.079659, 41.686844, 52.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853731, 40.817509, 52.251034>,  <28.470343, 41.483723, 52.161079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853731, 40.817509, 52.251034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011246, 41.083473, 52.504906>,  <29.105755, 41.243053, 52.657230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011246, 41.083473, 52.504906>,  <28.853731, 40.817509, 52.251034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011246, 41.083473, 52.504906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054508, -0.672366, 0.738209,
		0.917585, -0.325292, -0.228525,
		0.393785, 0.664913, 0.634683,
		29.129381, 41.282948, 52.695312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425407, 40.424675, 52.636002>,  <28.853731, 40.817509, 52.251034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425407, 40.424675, 52.636002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702089, 40.147179, 52.716263>,  <29.868099, 39.980679, 52.764420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702089, 40.147179, 52.716263>,  <29.425407, 40.424675, 52.636002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702089, 40.147179, 52.716263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524049, 0.290994, -0.800435,
		0.496906, 0.658819, 0.564837,
		0.691706, -0.693743, 0.200657,
		29.909601, 39.939056, 52.776459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129675, 40.695515, 52.506153>,  <29.425407, 40.424675, 52.636002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129675, 40.695515, 52.506153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131601, 40.297325, 52.468170>,  <30.132757, 40.058411, 52.445381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131601, 40.297325, 52.468170>,  <30.129675, 40.695515, 52.506153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131601, 40.297325, 52.468170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578768, 0.080212, -0.811538,
		0.815478, -0.051048, 0.576533,
		0.004817, -0.995470, -0.094956,
		30.133047, 39.998684, 52.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829180, 40.513454, 52.365456>,  <30.129675, 40.695515, 52.506153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829180, 40.513454, 52.365456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614737, 40.198997, 52.242451>,  <30.486071, 40.010323, 52.168648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614737, 40.198997, 52.242451>,  <30.829180, 40.513454, 52.365456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614737, 40.198997, 52.242451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577457, -0.075817, -0.812893,
		0.615737, -0.613374, 0.494611,
		-0.536108, -0.786145, -0.307514,
		30.453905, 39.963154, 52.150196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375792, 40.043564, 52.203106>,  <30.829180, 40.513454, 52.365456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375792, 40.043564, 52.203106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045464, 39.907600, 52.023113>,  <30.847267, 39.826023, 51.915119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045464, 39.907600, 52.023113>,  <31.375792, 40.043564, 52.203106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045464, 39.907600, 52.023113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556232, -0.359530, -0.749229,
		0.092891, -0.869021, 0.485977,
		-0.825819, -0.339913, -0.449981,
		30.797718, 39.805626, 51.888119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638172, 39.429146, 51.891602>,  <31.375792, 40.043564, 52.203106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638172, 39.429146, 51.891602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.300413, 39.540085, 51.708267>,  <31.097757, 39.606647, 51.598267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.300413, 39.540085, 51.708267>,  <31.638172, 39.429146, 51.891602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300413, 39.540085, 51.708267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388476, -0.272132, -0.880358,
		-0.368895, -0.921424, 0.122043,
		-0.844395, 0.277349, -0.458339,
		31.047094, 39.623287, 51.570766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424738, 38.885628, 51.494701>,  <31.638172, 39.429146, 51.891602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424738, 38.885628, 51.494701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255972, 39.205536, 51.323887>,  <31.154713, 39.397480, 51.221397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255972, 39.205536, 51.323887>,  <31.424738, 38.885628, 51.494701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255972, 39.205536, 51.323887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282277, -0.331725, -0.900154,
		-0.861573, -0.500330, -0.085797,
		-0.421914, 0.799767, -0.427037,
		31.129398, 39.445465, 51.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097382, 38.633339, 50.897072>,  <31.424738, 38.885628, 51.494701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097382, 38.633339, 50.897072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133871, 39.025932, 50.829700>,  <31.155764, 39.261490, 50.789280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133871, 39.025932, 50.829700>,  <31.097382, 38.633339, 50.897072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133871, 39.025932, 50.829700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381524, -0.190672, -0.904479,
		-0.919847, 0.018250, -0.391854,
		0.091222, 0.981484, -0.168427,
		31.161238, 39.320377, 50.779171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772017, 38.835011, 50.127853>,  <31.097382, 38.633339, 50.897072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772017, 38.835011, 50.127853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993328, 39.146896, 50.245106>,  <31.126114, 39.334030, 50.315456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993328, 39.146896, 50.245106>,  <30.772017, 38.835011, 50.127853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993328, 39.146896, 50.245106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356830, 0.096131, -0.929210,
		-0.752699, 0.618709, -0.225039,
		0.553277, 0.779716, 0.293132,
		31.159311, 39.380810, 50.333046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776394, 39.315525, 49.592537>,  <30.772017, 38.835011, 50.127853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776394, 39.315525, 49.592537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088902, 39.447441, 49.804520>,  <31.276405, 39.526592, 49.931709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088902, 39.447441, 49.804520>,  <30.776394, 39.315525, 49.592537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088902, 39.447441, 49.804520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432614, 0.325949, -0.840597,
		-0.449964, 0.885999, 0.111979,
		0.781267, 0.329794, 0.529960,
		31.323282, 39.546379, 49.963509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894520, 39.944519, 49.222057>,  <30.776394, 39.315525, 49.592537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894520, 39.944519, 49.222057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227726, 39.902313, 49.439297>,  <31.427649, 39.876991, 49.569641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227726, 39.902313, 49.439297>,  <30.894520, 39.944519, 49.222057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227726, 39.902313, 49.439297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488842, 0.600058, -0.633217,
		-0.259078, 0.792968, 0.551435,
		0.833014, -0.105512, 0.543098,
		31.477631, 39.870659, 49.602226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142603, 40.578114, 49.631821>,  <30.894520, 39.944519, 49.222057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142603, 40.578114, 49.631821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487398, 40.379463, 49.591156>,  <31.694275, 40.260273, 49.566757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487398, 40.379463, 49.591156>,  <31.142603, 40.578114, 49.631821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487398, 40.379463, 49.591156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370942, 0.754629, -0.541236,
		0.345511, 0.428829, 0.834702,
		0.861989, -0.496629, -0.101662,
		31.745995, 40.230476, 49.560658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561174, 41.059475, 49.354847>,  <31.142603, 40.578114, 49.631821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561174, 41.059475, 49.354847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801788, 40.747093, 49.287590>,  <31.946156, 40.559666, 49.247234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801788, 40.747093, 49.287590>,  <31.561174, 41.059475, 49.354847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801788, 40.747093, 49.287590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474246, 0.518486, -0.711521,
		0.642844, 0.348262, 0.682250,
		0.601533, -0.780952, -0.168144,
		31.982248, 40.512806, 49.237148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313385, 41.317520, 49.286064>,  <31.561174, 41.059475, 49.354847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313385, 41.317520, 49.286064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320927, 40.953323, 49.120827>,  <32.325451, 40.734806, 49.021683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320927, 40.953323, 49.120827>,  <32.313385, 41.317520, 49.286064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320927, 40.953323, 49.120827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418924, 0.382348, -0.823598,
		0.907826, -0.157527, 0.388636,
		0.018855, -0.910492, -0.413097,
		32.326584, 40.680176, 48.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996811, 41.300777, 49.148117>,  <32.313385, 41.317520, 49.286064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996811, 41.300777, 49.148117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797142, 41.029320, 48.932613>,  <32.677341, 40.866444, 48.803310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797142, 41.029320, 48.932613>,  <32.996811, 41.300777, 49.148117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797142, 41.029320, 48.932613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248738, 0.483364, -0.839338,
		0.830032, -0.552987, -0.072478,
		-0.499176, -0.678649, -0.538756,
		32.647388, 40.825726, 48.770985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383633, 41.121864, 48.578964>,  <32.996811, 41.300777, 49.148117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383633, 41.121864, 48.578964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020870, 41.016541, 48.447392>,  <32.803215, 40.953346, 48.368450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020870, 41.016541, 48.447392>,  <33.383633, 41.121864, 48.578964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020870, 41.016541, 48.447392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150481, 0.526769, -0.836582,
		0.393552, -0.808196, -0.438104,
		-0.906903, -0.263312, -0.328929,
		32.748798, 40.937546, 48.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518066, 40.712547, 48.039158>,  <33.383633, 41.121864, 48.578964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518066, 40.712547, 48.039158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141842, 40.837936, 47.986893>,  <32.916107, 40.913170, 47.955536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141842, 40.837936, 47.986893>,  <33.518066, 40.712547, 48.039158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141842, 40.837936, 47.986893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273782, 0.472235, -0.837877,
		-0.200950, -0.823850, -0.529992,
		-0.940565, 0.313474, -0.130660,
		32.859673, 40.931980, 47.947697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419132, 40.554333, 47.402168>,  <33.518066, 40.712547, 48.039158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419132, 40.554333, 47.402168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139114, 40.825775, 47.491100>,  <32.971104, 40.988640, 47.544460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139114, 40.825775, 47.491100>,  <33.419132, 40.554333, 47.402168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139114, 40.825775, 47.491100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217681, 0.499313, -0.838631,
		-0.680114, -0.538680, -0.497261,
		-0.700043, 0.678609, 0.222330,
		32.929100, 41.029358, 47.557800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048904, 40.623722, 46.777855>,  <33.419132, 40.554333, 47.402168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048904, 40.623722, 46.777855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990688, 40.958206, 46.989349>,  <32.955761, 41.158897, 47.116245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990688, 40.958206, 46.989349>,  <33.048904, 40.623722, 46.777855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990688, 40.958206, 46.989349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147980, 0.546818, -0.824071,
		-0.978224, -0.041689, -0.203324,
		-0.145536, 0.836213, 0.528741,
		32.947029, 41.209068, 47.147972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615986, 41.027821, 46.322365>,  <33.048904, 40.623722, 46.777855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615986, 41.027821, 46.322365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774574, 41.274841, 46.594086>,  <32.869728, 41.423054, 46.757118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774574, 41.274841, 46.594086>,  <32.615986, 41.027821, 46.322365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774574, 41.274841, 46.594086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501039, 0.474472, -0.723766,
		-0.769269, 0.627305, -0.121304,
		0.396466, 0.617548, 0.679300,
		32.893513, 41.460106, 46.797874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476341, 41.796387, 46.116329>,  <32.615986, 41.027821, 46.322365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476341, 41.796387, 46.116329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793007, 41.804443, 46.360580>,  <32.983006, 41.809277, 46.507130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793007, 41.804443, 46.360580>,  <32.476341, 41.796387, 46.116329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793007, 41.804443, 46.360580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521197, 0.499231, -0.692187,
		-0.318782, 0.866235, 0.384727,
		0.791664, 0.020138, 0.610625,
		33.030506, 41.810486, 46.543766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644371, 42.563686, 46.132607>,  <32.476341, 41.796387, 46.116329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644371, 42.563686, 46.132607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957642, 42.344772, 46.250668>,  <33.145603, 42.213425, 46.321503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957642, 42.344772, 46.250668>,  <32.644371, 42.563686, 46.132607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957642, 42.344772, 46.250668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588311, 0.498531, -0.636676,
		0.201299, 0.672272, 0.712411,
		0.783178, -0.547282, 0.295151,
		33.192596, 42.180588, 46.339214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.248402, 47.923958, 45.251328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.348976, 47.537155, 45.234921>,  <35.409321, 47.305073, 45.225075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.348976, 47.537155, 45.234921>,  <35.248402, 47.923958, 45.251328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348976, 47.537155, 45.234921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942578, 0.254271, -0.216546,
		0.219830, 0.015786, 0.975410,
		0.251437, -0.967004, -0.041016,
		35.424408, 47.247055, 45.222614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840534, 47.894180, 45.717873>,  <35.248402, 47.923958, 45.251328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840534, 47.894180, 45.717873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.826057, 47.608360, 45.438416>,  <35.817371, 47.436867, 45.270741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.826057, 47.608360, 45.438416>,  <35.840534, 47.894180, 45.717873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826057, 47.608360, 45.438416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916411, 0.255112, -0.308395,
		0.398598, -0.651411, 0.645588,
		-0.036195, -0.714550, -0.698647,
		35.815201, 47.393993, 45.228821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556721, 47.714127, 45.519928>,  <35.840534, 47.894180, 45.717873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556721, 47.714127, 45.519928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357979, 47.553574, 45.212154>,  <36.238735, 47.457241, 45.027489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357979, 47.553574, 45.212154>,  <36.556721, 47.714127, 45.519928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357979, 47.553574, 45.212154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774457, 0.195006, -0.601822,
		0.391604, -0.894911, 0.213962,
		-0.496854, -0.401380, -0.769435,
		36.208923, 47.433159, 44.981323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041496, 47.359982, 45.133350>,  <36.556721, 47.714127, 45.519928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041496, 47.359982, 45.133350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749260, 47.425438, 44.868183>,  <36.573917, 47.464710, 44.709084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749260, 47.425438, 44.868183>,  <37.041496, 47.359982, 45.133350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749260, 47.425438, 44.868183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681806, 0.227712, -0.695189,
		0.037197, -0.959880, -0.277932,
		-0.730587, 0.163637, -0.662922,
		36.530083, 47.474529, 44.669308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226654, 47.124825, 44.504787>,  <37.041496, 47.359982, 45.133350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226654, 47.124825, 44.504787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950180, 47.393379, 44.397820>,  <36.784298, 47.554512, 44.333641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950180, 47.393379, 44.397820>,  <37.226654, 47.124825, 44.504787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950180, 47.393379, 44.397820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615509, 0.352985, -0.704664,
		-0.378706, -0.651648, -0.657219,
		-0.691181, 0.671384, -0.267418,
		36.742825, 47.594795, 44.317593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231655, 47.090771, 43.790417>,  <37.226654, 47.124825, 44.504787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231655, 47.090771, 43.790417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064278, 47.441902, 43.883652>,  <36.963852, 47.652580, 43.939594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064278, 47.441902, 43.883652>,  <37.231655, 47.090771, 43.790417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064278, 47.441902, 43.883652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408465, 0.411101, -0.814956,
		-0.811211, -0.245802, -0.530582,
		-0.418440, 0.877825, 0.233088,
		36.938744, 47.705250, 43.953579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035019, 47.309948, 43.153248>,  <37.231655, 47.090771, 43.790417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035019, 47.309948, 43.153248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057030, 47.626961, 43.396183>,  <37.070236, 47.817169, 43.541943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057030, 47.626961, 43.396183>,  <37.035019, 47.309948, 43.153248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057030, 47.626961, 43.396183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466321, 0.517448, -0.717490,
		-0.882902, 0.322697, -0.341102,
		0.055030, 0.792537, 0.607336,
		37.073540, 47.864723, 43.578384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952942, 47.884003, 42.701771>,  <37.035019, 47.309948, 43.153248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952942, 47.884003, 42.701771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.115685, 48.058586, 43.022762>,  <37.213329, 48.163338, 43.215359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.115685, 48.058586, 43.022762>,  <36.952942, 47.884003, 42.701771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115685, 48.058586, 43.022762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636701, 0.494442, -0.591725,
		-0.655043, 0.751686, -0.076726,
		0.406855, 0.436457, 0.802480,
		37.237740, 48.189522, 43.263508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998127, 48.677937, 42.535271>,  <36.952942, 47.884003, 42.701771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998127, 48.677937, 42.535271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250061, 48.574417, 42.828209>,  <37.401222, 48.512306, 43.003971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250061, 48.574417, 42.828209>,  <36.998127, 48.677937, 42.535271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250061, 48.574417, 42.828209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776626, 0.225175, -0.588344,
		-0.012642, 0.939318, 0.342814,
		0.629835, -0.258800, 0.732345,
		37.439011, 48.496777, 43.047913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591618, 49.054577, 42.393215>,  <36.998127, 48.677937, 42.535271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591618, 49.054577, 42.393215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759598, 48.841209, 42.686913>,  <37.860386, 48.713188, 42.863129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759598, 48.841209, 42.686913>,  <37.591618, 49.054577, 42.393215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759598, 48.841209, 42.686913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907483, 0.237177, -0.346729,
		0.010807, 0.811919, 0.583670,
		0.419949, -0.533418, 0.734239,
		37.885582, 48.681183, 42.907185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109035, 49.382771, 42.653217>,  <37.591618, 49.054577, 42.393215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109035, 49.382771, 42.653217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190388, 49.002510, 42.746944>,  <38.239201, 48.774353, 42.803181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190388, 49.002510, 42.746944>,  <38.109035, 49.382771, 42.653217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190388, 49.002510, 42.746944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946451, 0.129602, -0.295692,
		0.250731, 0.281907, 0.926100,
		0.203382, -0.950648, 0.234316,
		38.251404, 48.717316, 42.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651073, 49.381218, 43.184933>,  <38.109035, 49.382771, 42.653217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651073, 49.381218, 43.184933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667183, 49.027153, 42.999516>,  <38.676849, 48.814716, 42.888268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667183, 49.027153, 42.999516>,  <38.651073, 49.381218, 43.184933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667183, 49.027153, 42.999516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946877, 0.181949, -0.265178,
		0.319066, -0.428236, 0.845465,
		0.040273, -0.885160, -0.463540,
		38.679264, 48.761604, 42.860455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245811, 48.901859, 43.473648>,  <38.651073, 49.381218, 43.184933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245811, 48.901859, 43.473648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130600, 48.783821, 43.109241>,  <39.061474, 48.712997, 42.890598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130600, 48.783821, 43.109241>,  <39.245811, 48.901859, 43.473648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130600, 48.783821, 43.109241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955387, -0.023607, -0.294412,
		0.065373, -0.955176, 0.288729,
		-0.288031, -0.295095, -0.911020,
		39.044189, 48.695293, 42.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709026, 48.248825, 43.211430>,  <39.245811, 48.901859, 43.473648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709026, 48.248825, 43.211430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577087, 48.476494, 42.910164>,  <39.497925, 48.613094, 42.729404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577087, 48.476494, 42.910164>,  <39.709026, 48.248825, 43.211430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577087, 48.476494, 42.910164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943900, 0.185319, -0.273331,
		-0.015997, -0.801064, -0.598364,
		-0.329844, 0.569169, -0.753160,
		39.478134, 48.647243, 42.684216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296112, 47.936764, 42.997654>,  <39.709026, 48.248825, 43.211430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296112, 47.936764, 42.997654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584503, 48.010780, 43.264771>,  <40.757538, 48.055191, 43.425041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584503, 48.010780, 43.264771>,  <40.296112, 47.936764, 42.997654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584503, 48.010780, 43.264771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393436, -0.683989, 0.614302,
		0.570433, -0.705634, -0.420342,
		0.720982, 0.185041, 0.667792,
		40.800797, 48.066292, 43.465107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673817, 47.314213, 43.226646>,  <40.296112, 47.936764, 42.997654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673817, 47.314213, 43.226646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732437, 47.576187, 43.523182>,  <40.767609, 47.733372, 43.701103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732437, 47.576187, 43.523182>,  <40.673817, 47.314213, 43.226646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732437, 47.576187, 43.523182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347298, -0.667656, 0.658498,
		0.926233, -0.353969, 0.129613,
		0.146551, 0.654937, 0.741337,
		40.776402, 47.772667, 43.745583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907341, 46.864872, 43.757675>,  <40.673817, 47.314213, 43.226646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907341, 46.864872, 43.757675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821922, 47.206566, 43.947277>,  <40.770672, 47.411583, 44.061039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821922, 47.206566, 43.947277>,  <40.907341, 46.864872, 43.757675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821922, 47.206566, 43.947277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268039, -0.517803, 0.812425,
		0.939444, 0.046437, 0.339542,
		-0.213543, 0.854239, 0.474000,
		40.757858, 47.462837, 44.089478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114841, 46.733067, 44.417240>,  <40.907341, 46.864872, 43.757675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114841, 46.733067, 44.417240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878933, 47.053703, 44.456455>,  <40.737389, 47.246086, 44.479984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878933, 47.053703, 44.456455>,  <41.114841, 46.733067, 44.417240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878933, 47.053703, 44.456455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279777, -0.316699, 0.906326,
		0.757555, 0.507098, 0.411049,
		-0.589775, 0.801594, 0.098042,
		40.702000, 47.294182, 44.485867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144726, 46.872677, 45.207161>,  <41.114841, 46.733067, 44.417240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144726, 46.872677, 45.207161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.817471, 47.049934, 45.060589>,  <40.621117, 47.156288, 44.972645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.817471, 47.049934, 45.060589>,  <41.144726, 46.872677, 45.207161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817471, 47.049934, 45.060589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521527, -0.303443, 0.797454,
		0.242194, 0.843533, 0.479369,
		-0.818139, 0.443142, -0.366433,
		40.572029, 47.182877, 44.950661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931595, 47.246151, 45.696514>,  <41.144726, 46.872677, 45.207161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931595, 47.246151, 45.696514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596146, 47.179764, 45.488991>,  <40.394875, 47.139931, 45.364475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596146, 47.179764, 45.488991>,  <40.931595, 47.246151, 45.696514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596146, 47.179764, 45.488991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516201, -0.061942, 0.854225,
		-0.173908, 0.984184, -0.033726,
		-0.838625, -0.165965, -0.518809,
		40.344559, 47.129974, 45.333347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402557, 47.551746, 46.116386>,  <40.931595, 47.246151, 45.696514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402557, 47.551746, 46.116386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221611, 47.295868, 45.867825>,  <40.113041, 47.142342, 45.718685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221611, 47.295868, 45.867825>,  <40.402557, 47.551746, 46.116386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221611, 47.295868, 45.867825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596178, -0.301301, 0.744170,
		-0.663276, 0.707109, -0.245076,
		-0.452368, -0.639699, -0.621408,
		40.085899, 47.103958, 45.681400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585938, 47.587868, 46.273205>,  <40.402557, 47.551746, 46.116386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585938, 47.587868, 46.273205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701714, 47.240593, 46.111969>,  <39.771179, 47.032230, 46.015228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701714, 47.240593, 46.111969>,  <39.585938, 47.587868, 46.273205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701714, 47.240593, 46.111969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428380, -0.494080, 0.756555,
		-0.855988, -0.046300, -0.514918,
		0.289439, -0.868182, -0.403093,
		39.788544, 46.980137, 45.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039715, 47.251823, 46.571693>,  <39.585938, 47.587868, 46.273205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039715, 47.251823, 46.571693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.260063, 46.961143, 46.407524>,  <39.392273, 46.786736, 46.309021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.260063, 46.961143, 46.407524>,  <39.039715, 47.251823, 46.571693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260063, 46.961143, 46.407524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516052, -0.683073, 0.516819,
		-0.655921, -0.072902, -0.751301,
		0.550871, -0.726702, -0.410420,
		39.425323, 46.743134, 46.284397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598389, 46.724464, 46.452572>,  <39.039715, 47.251823, 46.571693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598389, 46.724464, 46.452572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957085, 46.552231, 46.493465>,  <39.172302, 46.448891, 46.518002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957085, 46.552231, 46.493465>,  <38.598389, 46.724464, 46.452572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957085, 46.552231, 46.493465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400507, -0.691304, 0.601408,
		-0.188284, -0.580252, -0.792374,
		0.896740, -0.430587, 0.102234,
		39.226109, 46.423054, 46.524136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460087, 46.071083, 46.441917>,  <38.598389, 46.724464, 46.452572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460087, 46.071083, 46.441917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820690, 46.066170, 46.614952>,  <39.037052, 46.063221, 46.718773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820690, 46.066170, 46.614952>,  <38.460087, 46.071083, 46.441917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820690, 46.066170, 46.614952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331398, -0.662453, 0.671812,
		0.278320, -0.749003, -0.601276,
		0.901506, -0.012283, 0.432591,
		39.091141, 46.062485, 46.744728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588711, 45.417007, 46.516632>,  <38.460087, 46.071083, 46.441917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588711, 45.417007, 46.516632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806129, 45.612892, 46.789318>,  <38.936581, 45.730423, 46.952930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806129, 45.612892, 46.789318>,  <38.588711, 45.417007, 46.516632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806129, 45.612892, 46.789318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476277, -0.488828, 0.730895,
		0.691171, -0.721962, -0.032462,
		0.543547, 0.489712, 0.681718,
		38.969193, 45.759808, 46.993832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895470, 44.904785, 47.018879>,  <38.588711, 45.417007, 46.516632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895470, 44.904785, 47.018879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947929, 45.251480, 47.211369>,  <38.979404, 45.459496, 47.326862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947929, 45.251480, 47.211369>,  <38.895470, 44.904785, 47.018879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947929, 45.251480, 47.211369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362355, -0.409915, 0.837059,
		0.922767, -0.284152, 0.260306,
		0.131149, 0.866734, 0.481220,
		38.987274, 45.511501, 47.355736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257294, 44.779560, 47.594120>,  <38.895470, 44.904785, 47.018879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257294, 44.779560, 47.594120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043472, 45.109177, 47.669178>,  <38.915180, 45.306946, 47.714211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043472, 45.109177, 47.669178>,  <39.257294, 44.779560, 47.594120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043472, 45.109177, 47.669178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469663, -0.474239, 0.744657,
		0.702613, 0.309932, 0.640529,
		-0.534557, 0.824038, 0.187643,
		38.883106, 45.356388, 47.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757893, 44.227524, 47.776993>,  <39.257294, 44.779560, 47.594120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757893, 44.227524, 47.776993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895180, 43.852318, 47.796307>,  <39.977551, 43.627193, 47.807896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895180, 43.852318, 47.796307>,  <39.757893, 44.227524, 47.776993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895180, 43.852318, 47.796307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774869, 0.253718, -0.578968,
		0.530831, 0.236124, 0.813919,
		0.343214, -0.938015, 0.048284,
		39.998142, 43.570911, 47.810791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532780, 44.253765, 47.867435>,  <39.757893, 44.227524, 47.776993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532780, 44.253765, 47.867435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454857, 43.898872, 47.700165>,  <40.408104, 43.685936, 47.599800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454857, 43.898872, 47.700165>,  <40.532780, 44.253765, 47.867435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454857, 43.898872, 47.700165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716597, 0.162376, -0.678323,
		0.669731, -0.431807, 0.604155,
		-0.194805, -0.887230, -0.418180,
		40.396416, 43.632702, 47.574711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217720, 43.947384, 47.800850>,  <40.532780, 44.253765, 47.867435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217720, 43.947384, 47.800850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951828, 43.777748, 47.554832>,  <40.792294, 43.675968, 47.407223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951828, 43.777748, 47.554832>,  <41.217720, 43.947384, 47.800850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951828, 43.777748, 47.554832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647018, 0.084783, -0.757747,
		0.373498, -0.901643, 0.218036,
		-0.664731, -0.424090, -0.615045,
		40.752407, 43.650520, 47.370319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625183, 43.691006, 47.250511>,  <41.217720, 43.947384, 47.800850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625183, 43.691006, 47.250511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258354, 43.674850, 47.091846>,  <41.038258, 43.665157, 46.996647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258354, 43.674850, 47.091846>,  <41.625183, 43.691006, 47.250511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258354, 43.674850, 47.091846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382799, 0.189104, -0.904270,
		0.111535, -0.981126, -0.157961,
		-0.917074, -0.040391, -0.396666,
		40.983231, 43.662731, 46.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642155, 43.144962, 46.741096>,  <41.625183, 43.691006, 47.250511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642155, 43.144962, 46.741096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355358, 43.405945, 46.642933>,  <41.183281, 43.562534, 46.584034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355358, 43.405945, 46.642933>,  <41.642155, 43.144962, 46.741096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355358, 43.405945, 46.642933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359865, 0.044943, -0.931921,
		-0.597006, -0.756495, -0.267019,
		-0.716995, 0.652453, -0.245405,
		41.140259, 43.601681, 46.569313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426048, 42.942272, 46.209866>,  <41.642155, 43.144962, 46.741096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426048, 42.942272, 46.209866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334549, 43.331017, 46.187393>,  <41.279648, 43.564262, 46.173908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334549, 43.331017, 46.187393>,  <41.426048, 42.942272, 46.209866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334549, 43.331017, 46.187393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355588, 0.029691, -0.934171,
		-0.906218, -0.233670, -0.352374,
		-0.228750, 0.971863, -0.056184,
		41.265923, 43.622574, 46.170540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222839, 42.975578, 45.502571>,  <41.426048, 42.942272, 46.209866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222839, 42.975578, 45.502571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258480, 43.359604, 45.608658>,  <41.279865, 43.590019, 45.672310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258480, 43.359604, 45.608658>,  <41.222839, 42.975578, 45.502571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258480, 43.359604, 45.608658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220755, 0.240618, -0.945183,
		-0.971251, 0.142761, -0.190500,
		0.089098, 0.960064, 0.265215,
		41.285210, 43.647621, 45.688221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945278, 43.418613, 44.911121>,  <41.222839, 42.975578, 45.502571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945278, 43.418613, 44.911121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.180771, 43.668701, 45.116062>,  <41.322067, 43.818752, 45.239025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.180771, 43.668701, 45.116062>,  <40.945278, 43.418613, 44.911121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180771, 43.668701, 45.116062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433746, 0.290514, -0.852916,
		-0.682102, 0.724366, -0.100152,
		0.588728, 0.625217, 0.512351,
		41.357388, 43.856266, 45.269768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980721, 44.068096, 44.548985>,  <40.945278, 43.418613, 44.911121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980721, 44.068096, 44.548985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312141, 44.094162, 44.771427>,  <41.510994, 44.109802, 44.904892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312141, 44.094162, 44.771427>,  <40.980721, 44.068096, 44.548985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312141, 44.094162, 44.771427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497394, 0.370390, -0.784481,
		-0.257094, 0.926588, 0.274476,
		0.828554, 0.065163, 0.556104,
		41.560707, 44.113712, 44.938259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286205, 44.625099, 44.290909>,  <40.980721, 44.068096, 44.548985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286205, 44.625099, 44.290909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577190, 44.439331, 44.492943>,  <41.751781, 44.327869, 44.614162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577190, 44.439331, 44.492943>,  <41.286205, 44.625099, 44.290909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577190, 44.439331, 44.492943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668988, 0.316497, -0.672521,
		0.152473, 0.827131, 0.540931,
		0.727466, -0.464418, 0.505083,
		41.795429, 44.300007, 44.644466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896461, 45.040604, 44.338741>,  <41.286205, 44.625099, 44.290909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896461, 45.040604, 44.338741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071617, 44.686935, 44.403862>,  <42.176712, 44.474735, 44.442936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071617, 44.686935, 44.403862>,  <41.896461, 45.040604, 44.338741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071617, 44.686935, 44.403862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684105, 0.210201, -0.698438,
		0.583314, 0.417212, 0.696907,
		0.437888, -0.884166, 0.162803,
		42.202984, 44.421684, 44.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665813, 45.157372, 44.395687>,  <41.896461, 45.040604, 44.338741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665813, 45.157372, 44.395687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583290, 44.782883, 44.281895>,  <42.533775, 44.558189, 44.213619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583290, 44.782883, 44.281895>,  <42.665813, 45.157372, 44.395687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583290, 44.782883, 44.281895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585165, 0.114968, -0.802723,
		0.784232, -0.332073, 0.524126,
		-0.206304, -0.936221, -0.284479,
		42.521400, 44.502018, 44.196552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.311653, 42.798504, 51.064209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319923, 42.443619, 50.879848>,  <38.324886, 42.230690, 50.769230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319923, 42.443619, 50.879848>,  <38.311653, 42.798504, 51.064209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319923, 42.443619, 50.879848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855220, 0.254475, -0.451488,
		0.517853, -0.384840, 0.764020,
		0.020673, -0.887209, -0.460904,
		38.326126, 42.177456, 50.741577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001915, 42.712093, 51.018276>,  <38.311653, 42.798504, 51.064209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001915, 42.712093, 51.018276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843933, 42.472015, 50.740063>,  <38.749142, 42.327969, 50.573135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843933, 42.472015, 50.740063>,  <39.001915, 42.712093, 51.018276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843933, 42.472015, 50.740063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800265, 0.147066, -0.581333,
		0.451204, -0.786216, 0.422231,
		-0.394957, -0.600197, -0.695538,
		38.725445, 42.291958, 50.531403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541431, 42.356174, 50.720013>,  <39.001915, 42.712093, 51.018276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541431, 42.356174, 50.720013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258984, 42.285919, 50.445625>,  <39.089516, 42.243767, 50.280994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258984, 42.285919, 50.445625>,  <39.541431, 42.356174, 50.720013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258984, 42.285919, 50.445625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639402, 0.258075, -0.724266,
		0.304241, -0.950025, -0.069927,
		-0.706117, -0.175640, -0.685965,
		39.047150, 42.233227, 50.239834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851273, 42.080517, 50.107159>,  <39.541431, 42.356174, 50.720013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851273, 42.080517, 50.107159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511486, 42.254982, 49.988388>,  <39.307613, 42.359661, 49.917126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511486, 42.254982, 49.988388>,  <39.851273, 42.080517, 50.107159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511486, 42.254982, 49.988388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420563, 0.219863, -0.880220,
		-0.318637, -0.872595, -0.370201,
		-0.849469, 0.436163, -0.296924,
		39.256645, 42.385830, 49.899311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711575, 41.805511, 49.387234>,  <39.851273, 42.080517, 50.107159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711575, 41.805511, 49.387234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506748, 42.146820, 49.426659>,  <39.383850, 42.351604, 49.450314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506748, 42.146820, 49.426659>,  <39.711575, 41.805511, 49.387234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506748, 42.146820, 49.426659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239431, 0.251995, -0.937642,
		-0.824900, -0.456537, -0.333338,
		-0.512067, 0.853272, 0.098562,
		39.353127, 42.402802, 49.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372837, 41.915409, 48.668564>,  <39.711575, 41.805511, 49.387234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372837, 41.915409, 48.668564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380272, 42.260025, 48.871502>,  <39.384731, 42.466797, 48.993263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380272, 42.260025, 48.871502>,  <39.372837, 41.915409, 48.668564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380272, 42.260025, 48.871502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290979, 0.480807, -0.827137,
		-0.956549, 0.162999, -0.241755,
		0.018585, 0.861542, 0.507345,
		39.385849, 42.518486, 49.023705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951584, 42.428661, 48.226196>,  <39.372837, 41.915409, 48.668564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951584, 42.428661, 48.226196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193077, 42.635910, 48.468536>,  <39.337975, 42.760258, 48.613941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193077, 42.635910, 48.468536>,  <38.951584, 42.428661, 48.226196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193077, 42.635910, 48.468536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345093, 0.515227, -0.784508,
		-0.718619, 0.682711, 0.132262,
		0.603737, 0.518119, 0.605850,
		39.374199, 42.791348, 48.650291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861862, 43.205269, 48.055195>,  <38.951584, 42.428661, 48.226196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861862, 43.205269, 48.055195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208961, 43.154396, 48.247379>,  <39.417221, 43.123871, 48.362690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208961, 43.154396, 48.247379>,  <38.861862, 43.205269, 48.055195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208961, 43.154396, 48.247379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476622, 0.486975, -0.731907,
		-0.140885, 0.864107, 0.483189,
		0.867746, -0.127183, 0.480459,
		39.469284, 43.116241, 48.391518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157806, 43.875031, 48.084892>,  <38.861862, 43.205269, 48.055195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157806, 43.875031, 48.084892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470345, 43.629982, 48.132557>,  <39.657867, 43.482952, 48.161156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470345, 43.629982, 48.132557>,  <39.157806, 43.875031, 48.084892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470345, 43.629982, 48.132557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477618, 0.464055, -0.746012,
		0.401728, 0.639802, 0.655185,
		0.781342, -0.612622, 0.119157,
		39.704746, 43.446194, 48.168304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087383, 44.643562, 48.315765>,  <39.157806, 43.875031, 48.084892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087383, 44.643562, 48.315765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852531, 44.949203, 48.208862>,  <38.711620, 45.132587, 48.144722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852531, 44.949203, 48.208862>,  <39.087383, 44.643562, 48.315765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852531, 44.949203, 48.208862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692778, -0.303524, 0.654165,
		0.418728, 0.569232, 0.707560,
		-0.587134, 0.764099, -0.267257,
		38.676392, 45.178432, 48.128685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893852, 45.101044, 48.966354>,  <39.087383, 44.643562, 48.315765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893852, 45.101044, 48.966354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618866, 45.153671, 48.680676>,  <38.453873, 45.185246, 48.509270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618866, 45.153671, 48.680676>,  <38.893852, 45.101044, 48.966354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618866, 45.153671, 48.680676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712528, -0.312241, 0.628339,
		-0.140334, 0.940849, 0.308400,
		-0.687467, 0.131566, -0.714199,
		38.412624, 45.193142, 48.466415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257614, 45.496613, 49.236668>,  <38.893852, 45.101044, 48.966354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257614, 45.496613, 49.236668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144707, 45.308075, 48.902443>,  <38.076962, 45.194950, 48.701908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144707, 45.308075, 48.902443>,  <38.257614, 45.496613, 49.236668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144707, 45.308075, 48.902443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881977, -0.215151, 0.419317,
		-0.377415, 0.855302, -0.354988,
		-0.282267, -0.471348, -0.835558,
		38.060028, 45.166672, 48.651775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635189, 45.682072, 49.268028>,  <38.257614, 45.496613, 49.236668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635189, 45.682072, 49.268028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637573, 45.381523, 49.004089>,  <37.639004, 45.201195, 48.845726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637573, 45.381523, 49.004089>,  <37.635189, 45.682072, 49.268028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637573, 45.381523, 49.004089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873151, -0.325544, 0.362807,
		-0.487414, 0.573983, -0.658005,
		0.005965, -0.751375, -0.659849,
		37.639362, 45.156109, 48.806133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905685, 45.588150, 48.955780>,  <37.635189, 45.682072, 49.268028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905685, 45.588150, 48.955780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074890, 45.226944, 48.925766>,  <37.176414, 45.010220, 48.907757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074890, 45.226944, 48.925766>,  <36.905685, 45.588150, 48.955780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074890, 45.226944, 48.925766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845373, -0.423108, 0.326073,
		-0.326194, -0.074504, -0.942362,
		0.423015, -0.903011, -0.075032,
		37.201794, 44.956039, 48.903255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384113, 45.143745, 48.826805>,  <36.905685, 45.588150, 48.955780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384113, 45.143745, 48.826805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677956, 44.896606, 48.938957>,  <36.854259, 44.748322, 49.006248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677956, 44.896606, 48.938957>,  <36.384113, 45.143745, 48.826805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677956, 44.896606, 48.938957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658159, -0.548485, 0.515743,
		-0.164867, -0.563404, -0.809565,
		0.734606, -0.617851, 0.280382,
		36.898338, 44.711250, 49.023071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208569, 44.460823, 48.685665>,  <36.384113, 45.143745, 48.826805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208569, 44.460823, 48.685665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461136, 44.445953, 48.995487>,  <36.612675, 44.437031, 49.181381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461136, 44.445953, 48.995487>,  <36.208569, 44.460823, 48.685665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461136, 44.445953, 48.995487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652472, -0.565233, 0.504770,
		0.419038, -0.824094, -0.381151,
		0.631416, -0.037173, 0.774552,
		36.650562, 44.434803, 49.227852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124706, 43.773869, 48.855217>,  <36.208569, 44.460823, 48.685665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124706, 43.773869, 48.855217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289917, 43.969276, 49.162663>,  <36.389042, 44.086521, 49.347130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289917, 43.969276, 49.162663>,  <36.124706, 43.773869, 48.855217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289917, 43.969276, 49.162663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639810, -0.444960, 0.626621,
		0.648116, -0.750574, 0.128780,
		0.413023, 0.488517, 0.768611,
		36.413822, 44.115833, 49.393246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109928, 43.294380, 49.363754>,  <36.124706, 43.773869, 48.855217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109928, 43.294380, 49.363754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209141, 43.588356, 49.616211>,  <36.268669, 43.764740, 49.767685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209141, 43.588356, 49.616211>,  <36.109928, 43.294380, 49.363754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209141, 43.588356, 49.616211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511312, -0.454048, 0.729657,
		0.822824, -0.503692, 0.263165,
		0.248033, 0.734939, 0.631145,
		36.283550, 43.808838, 49.805553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286285, 43.008362, 50.085602>,  <36.109928, 43.294380, 49.363754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286285, 43.008362, 50.085602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176468, 43.390770, 50.126892>,  <36.110577, 43.620213, 50.151665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176468, 43.390770, 50.126892>,  <36.286285, 43.008362, 50.085602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176468, 43.390770, 50.126892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632861, -0.260471, 0.729137,
		0.723955, 0.134856, 0.676538,
		-0.274547, 0.956017, 0.103225,
		36.094105, 43.677574, 50.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121243, 43.085155, 50.814610>,  <36.286285, 43.008362, 50.085602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121243, 43.085155, 50.814610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950363, 43.413567, 50.663128>,  <35.847836, 43.610615, 50.572239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950363, 43.413567, 50.663128>,  <36.121243, 43.085155, 50.814610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950363, 43.413567, 50.663128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795411, -0.142116, 0.589172,
		0.429906, 0.552918, 0.713766,
		-0.427202, 0.821026, -0.378701,
		35.822201, 43.659874, 50.549519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901573, 43.492569, 51.382385>,  <36.121243, 43.085155, 50.814610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901573, 43.492569, 51.382385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676193, 43.642113, 51.087696>,  <35.540966, 43.731838, 50.910885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676193, 43.642113, 51.087696>,  <35.901573, 43.492569, 51.382385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676193, 43.642113, 51.087696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800792, -0.027903, 0.598292,
		0.203119, 0.927067, 0.315104,
		-0.563449, 0.373857, -0.736720,
		35.507160, 43.754269, 50.866680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588665, 44.086754, 51.582561>,  <35.901573, 43.492569, 51.382385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588665, 44.086754, 51.582561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342140, 43.936455, 51.305733>,  <35.194225, 43.846275, 51.139633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342140, 43.936455, 51.305733>,  <35.588665, 44.086754, 51.582561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342140, 43.936455, 51.305733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752344, 0.021285, 0.658427,
		-0.232673, 0.926476, -0.295812,
		-0.616313, -0.375751, -0.692076,
		35.157246, 43.823730, 51.098110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899570, 44.362206, 51.739250>,  <35.588665, 44.086754, 51.582561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899570, 44.362206, 51.739250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834522, 44.052498, 51.494606>,  <34.795494, 43.866673, 51.347820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834522, 44.052498, 51.494606>,  <34.899570, 44.362206, 51.739250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834522, 44.052498, 51.494606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783074, -0.275840, 0.557411,
		-0.600291, 0.569583, -0.561450,
		-0.162622, -0.774266, -0.611609,
		34.785736, 43.820217, 51.311123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.605064, 38.349945, 47.008617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834724, 38.537636, 47.277000>,  <34.972519, 38.650249, 47.438030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834724, 38.537636, 47.277000>,  <34.605064, 38.349945, 47.008617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834724, 38.537636, 47.277000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412957, 0.541656, -0.732172,
		-0.706981, 0.697450, 0.117220,
		0.574147, 0.469225, 0.670957,
		35.006969, 38.678402, 47.478287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511173, 39.076172, 46.949928>,  <34.605064, 38.349945, 47.008617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511173, 39.076172, 46.949928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874969, 39.019569, 47.106293>,  <35.093246, 38.985607, 47.200111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874969, 39.019569, 47.106293>,  <34.511173, 39.076172, 46.949928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874969, 39.019569, 47.106293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386950, 0.631904, -0.671541,
		-0.151992, 0.762020, 0.629463,
		0.909488, -0.141501, 0.390908,
		35.147816, 38.977119, 47.223564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796822, 39.725307, 46.998196>,  <34.511173, 39.076172, 46.949928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796822, 39.725307, 46.998196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117523, 39.491936, 47.050049>,  <35.309944, 39.351913, 47.081161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117523, 39.491936, 47.050049>,  <34.796822, 39.725307, 46.998196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117523, 39.491936, 47.050049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539532, 0.613235, -0.576930,
		0.257103, 0.532496, 0.806441,
		0.801750, -0.583431, 0.129634,
		35.358047, 39.316906, 47.088940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322300, 40.202194, 47.074165>,  <34.796822, 39.725307, 46.998196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322300, 40.202194, 47.074165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512398, 39.863022, 46.980225>,  <35.626457, 39.659519, 46.923859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512398, 39.863022, 46.980225>,  <35.322300, 40.202194, 47.074165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512398, 39.863022, 46.980225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580244, 0.502693, -0.640793,
		0.661407, 0.168261, 0.730909,
		0.475243, -0.847931, -0.234853,
		35.654972, 39.608643, 46.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074131, 40.427525, 46.984100>,  <35.322300, 40.202194, 47.074165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074131, 40.427525, 46.984100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048523, 40.064392, 46.818333>,  <36.033157, 39.846512, 46.718872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048523, 40.064392, 46.818333>,  <36.074131, 40.427525, 46.984100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048523, 40.064392, 46.818333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637821, 0.282164, -0.716636,
		0.767519, -0.310208, 0.560968,
		-0.064021, -0.907829, -0.414424,
		36.029316, 39.792042, 46.694004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774323, 40.251923, 46.912613>,  <36.074131, 40.427525, 46.984100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774323, 40.251923, 46.912613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552910, 40.052521, 46.645752>,  <36.420063, 39.932880, 46.485634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552910, 40.052521, 46.645752>,  <36.774323, 40.251923, 46.912613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552910, 40.052521, 46.645752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650569, 0.241316, -0.720088,
		0.519962, -0.832622, 0.190734,
		-0.553534, -0.498504, -0.667154,
		36.386848, 39.902969, 46.445606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217663, 40.070107, 46.284317>,  <36.774323, 40.251923, 46.912613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217663, 40.070107, 46.284317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853241, 39.992569, 46.138763>,  <36.634590, 39.946045, 46.051430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853241, 39.992569, 46.138763>,  <37.217663, 40.070107, 46.284317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853241, 39.992569, 46.138763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332033, 0.178262, -0.926270,
		0.244418, -0.964701, -0.098043,
		-0.911051, -0.193843, -0.363883,
		36.579926, 39.934418, 46.029598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372131, 39.673370, 45.606163>,  <37.217663, 40.070107, 46.284317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372131, 39.673370, 45.606163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002075, 39.824036, 45.587215>,  <36.780041, 39.914433, 45.575848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002075, 39.824036, 45.587215>,  <37.372131, 39.673370, 45.606163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002075, 39.824036, 45.587215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181877, 0.330235, -0.926210,
		-0.333224, -0.865489, -0.374020,
		-0.925139, 0.376661, -0.047370,
		36.724533, 39.937035, 45.573006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109432, 39.446663, 45.010197>,  <37.372131, 39.673370, 45.606163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109432, 39.446663, 45.010197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906307, 39.782486, 45.087421>,  <36.784431, 39.983978, 45.133755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906307, 39.782486, 45.087421>,  <37.109432, 39.446663, 45.010197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906307, 39.782486, 45.087421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158401, 0.311287, -0.937022,
		-0.846777, -0.445254, -0.291063,
		-0.507817, 0.839553, 0.193062,
		36.753963, 40.034351, 45.145340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721371, 39.565071, 44.493259>,  <37.109432, 39.446663, 45.010197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721371, 39.565071, 44.493259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762177, 39.928558, 44.655159>,  <36.786659, 40.146652, 44.752300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762177, 39.928558, 44.655159>,  <36.721371, 39.565071, 44.493259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762177, 39.928558, 44.655159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200832, 0.379679, -0.903056,
		-0.974300, 0.173410, -0.143768,
		0.102013, 0.908720, 0.404748,
		36.792782, 40.201176, 44.776585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466549, 39.986969, 43.994705>,  <36.721371, 39.565071, 44.493259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466549, 39.986969, 43.994705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.653214, 40.234749, 44.247219>,  <36.765213, 40.383415, 44.398727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.653214, 40.234749, 44.247219>,  <36.466549, 39.986969, 43.994705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653214, 40.234749, 44.247219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420445, 0.472585, -0.774525,
		-0.778111, 0.626858, -0.039907,
		0.466658, 0.619445, 0.631283,
		36.793209, 40.420582, 44.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388550, 40.720470, 43.709023>,  <36.466549, 39.986969, 43.994705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388550, 40.720470, 43.709023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693565, 40.762749, 43.964321>,  <36.876575, 40.788116, 44.117500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693565, 40.762749, 43.964321>,  <36.388550, 40.720470, 43.709023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693565, 40.762749, 43.964321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518756, 0.489591, -0.700852,
		-0.386560, 0.865522, 0.318501,
		0.762538, 0.105697, 0.638251,
		36.922325, 40.794456, 44.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645321, 41.417530, 43.635963>,  <36.388550, 40.720470, 43.709023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645321, 41.417530, 43.635963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946236, 41.220184, 43.810623>,  <37.126785, 41.101776, 43.915421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946236, 41.220184, 43.810623>,  <36.645321, 41.417530, 43.635963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946236, 41.220184, 43.810623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656899, 0.510879, -0.554514,
		0.050501, 0.703986, 0.708416,
		0.752285, -0.493361, 0.436648,
		37.171921, 41.072174, 43.941616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049080, 41.925217, 43.894859>,  <36.645321, 41.417530, 43.635963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049080, 41.925217, 43.894859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299942, 41.618629, 43.839420>,  <37.450459, 41.434677, 43.806156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299942, 41.618629, 43.839420>,  <37.049080, 41.925217, 43.894859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299942, 41.618629, 43.839420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676266, 0.624110, -0.391344,
		0.386450, 0.151706, 0.909748,
		0.627152, -0.766467, -0.138594,
		37.488087, 41.388691, 43.797844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983009, 42.567192, 44.254292>,  <37.049080, 41.925217, 43.894859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983009, 42.567192, 44.254292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.727650, 42.793663, 44.045719>,  <36.574432, 42.929546, 43.920578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.727650, 42.793663, 44.045719>,  <36.983009, 42.567192, 44.254292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727650, 42.793663, 44.045719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703539, -0.154442, 0.693672,
		0.312210, 0.809687, 0.496923,
		-0.638403, 0.566176, -0.521428,
		36.536129, 42.963516, 43.889290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707184, 42.766159, 44.850292>,  <36.983009, 42.567192, 44.254292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707184, 42.766159, 44.850292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478680, 42.858109, 44.535126>,  <36.341576, 42.913277, 44.346024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478680, 42.858109, 44.535126>,  <36.707184, 42.766159, 44.850292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478680, 42.858109, 44.535126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818768, -0.092618, 0.566605,
		0.057272, 0.968803, 0.241123,
		-0.571261, 0.229875, -0.787921,
		36.307301, 42.927071, 44.298748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290188, 43.222775, 45.024338>,  <36.707184, 42.766159, 44.850292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290188, 43.222775, 45.024338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109642, 43.026535, 44.726189>,  <36.001312, 42.908791, 44.547298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109642, 43.026535, 44.726189>,  <36.290188, 43.222775, 45.024338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109642, 43.026535, 44.726189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856551, 0.004021, 0.516046,
		-0.250176, 0.871374, -0.422040,
		-0.451366, -0.490602, -0.745371,
		35.974232, 42.879353, 44.502579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698593, 43.507236, 44.952145>,  <36.290188, 43.222775, 45.024338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698593, 43.507236, 44.952145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627052, 43.155106, 44.776405>,  <35.584126, 42.943825, 44.670959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627052, 43.155106, 44.776405>,  <35.698593, 43.507236, 44.952145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627052, 43.155106, 44.776405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927495, 0.001867, 0.373831,
		-0.328274, 0.474358, -0.816836,
		-0.178855, -0.880330, -0.439352,
		35.573395, 42.891006, 44.644600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996929, 43.519661, 44.566078>,  <35.698593, 43.507236, 44.952145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996929, 43.519661, 44.566078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079182, 43.133820, 44.632126>,  <35.128532, 42.902317, 44.671753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079182, 43.133820, 44.632126>,  <34.996929, 43.519661, 44.566078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079182, 43.133820, 44.632126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832313, -0.083631, 0.547960,
		-0.514753, -0.250108, -0.820046,
		0.205630, -0.964599, 0.165119,
		35.140869, 42.844440, 44.681664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355701, 43.187714, 44.517475>,  <34.996929, 43.519661, 44.566078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355701, 43.187714, 44.517475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568565, 42.901390, 44.698326>,  <34.696285, 42.729595, 44.806839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568565, 42.901390, 44.698326>,  <34.355701, 43.187714, 44.517475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568565, 42.901390, 44.698326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816234, -0.291928, 0.498538,
		-0.224868, -0.634349, -0.739619,
		0.532162, -0.715807, 0.452132,
		34.728214, 42.686646, 44.833965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889149, 42.620083, 44.547096>,  <34.355701, 43.187714, 44.517475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889149, 42.620083, 44.547096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.160358, 42.548164, 44.832184>,  <34.323082, 42.505013, 45.003235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.160358, 42.548164, 44.832184>,  <33.889149, 42.620083, 44.547096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160358, 42.548164, 44.832184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734269, -0.210159, 0.645509,
		0.033726, -0.960993, -0.274508,
		0.678020, -0.179792, 0.712716,
		34.363766, 42.494228, 45.045998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650742, 41.988010, 44.896534>,  <33.889149, 42.620083, 44.547096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650742, 41.988010, 44.896534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908154, 42.135719, 45.164715>,  <34.062599, 42.224346, 45.325623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908154, 42.135719, 45.164715>,  <33.650742, 41.988010, 44.896534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908154, 42.135719, 45.164715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557012, -0.374843, 0.741100,
		0.524983, -0.850371, -0.035534,
		0.643530, 0.369273, 0.670453,
		34.101212, 42.246502, 45.365852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795628, 41.470661, 45.384270>,  <33.650742, 41.988010, 44.896534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795628, 41.470661, 45.384270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910255, 41.789719, 45.596550>,  <33.979034, 41.981155, 45.723919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910255, 41.789719, 45.596550>,  <33.795628, 41.470661, 45.384270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910255, 41.789719, 45.596550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489389, -0.354333, 0.796835,
		0.823635, -0.488067, 0.288818,
		0.286571, 0.797646, 0.530696,
		33.996227, 42.029011, 45.755760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103458, 41.273972, 46.097252>,  <33.795628, 41.470661, 45.384270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103458, 41.273972, 46.097252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.973961, 41.648651, 46.150589>,  <33.896263, 41.873459, 46.182590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.973961, 41.648651, 46.150589>,  <34.103458, 41.273972, 46.097252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973961, 41.648651, 46.150589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475557, -0.282935, 0.832942,
		0.817944, 0.206251, 0.537054,
		-0.323747, 0.936701, 0.133341,
		33.876839, 41.929661, 46.190590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275723, 41.561741, 46.752884>,  <34.103458, 41.273972, 46.097252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275723, 41.561741, 46.752884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953438, 41.770157, 46.640209>,  <33.760067, 41.895206, 46.572605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953438, 41.770157, 46.640209>,  <34.275723, 41.561741, 46.752884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953438, 41.770157, 46.640209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460244, -0.251380, 0.851460,
		0.372834, 0.815675, 0.442345,
		-0.805711, 0.521040, -0.281687,
		33.711723, 41.926468, 46.555702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946785, 41.865032, 47.415211>,  <34.275723, 41.561741, 46.752884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946785, 41.865032, 47.415211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655571, 41.853767, 47.141228>,  <33.480843, 41.847008, 46.976837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655571, 41.853767, 47.141228>,  <33.946785, 41.865032, 47.415211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655571, 41.853767, 47.141228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671665, -0.170701, 0.720921,
		-0.137229, 0.984920, 0.105359,
		-0.728035, -0.028165, -0.684961,
		33.437160, 41.845318, 46.935738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509014, 42.197521, 47.720196>,  <33.946785, 41.865032, 47.415211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509014, 42.197521, 47.720196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319485, 41.987411, 47.437473>,  <33.205765, 41.861343, 47.267841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319485, 41.987411, 47.437473>,  <33.509014, 42.197521, 47.720196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319485, 41.987411, 47.437473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705267, -0.254279, 0.661770,
		-0.527337, 0.812051, -0.249976,
		-0.473828, -0.525276, -0.706804,
		33.177338, 41.829830, 47.225433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734383, 42.276695, 47.853714>,  <33.509014, 42.197521, 47.720196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734383, 42.276695, 47.853714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796165, 41.938370, 47.649464>,  <32.833237, 41.735374, 47.526913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796165, 41.938370, 47.649464>,  <32.734383, 42.276695, 47.853714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796165, 41.938370, 47.649464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516959, -0.509624, 0.687777,
		-0.841960, 0.157738, -0.515968,
		0.154461, -0.845815, -0.510627,
		32.842503, 41.684624, 47.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319637, 42.859959, 47.553764>,  <32.734383, 42.276695, 47.853714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319637, 42.859959, 47.553764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244305, 43.168770, 47.796585>,  <32.199104, 43.354057, 47.942276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244305, 43.168770, 47.796585>,  <32.319637, 42.859959, 47.553764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244305, 43.168770, 47.796585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503256, 0.606652, -0.615391,
		-0.843366, 0.189606, -0.502776,
		-0.188328, 0.772025, 0.607050,
		32.187805, 43.400379, 47.978699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119881, 43.442459, 47.132259>,  <32.319637, 42.859959, 47.553764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119881, 43.442459, 47.132259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.232513, 43.631424, 47.466335>,  <32.300095, 43.744804, 47.666782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.232513, 43.631424, 47.466335>,  <32.119881, 43.442459, 47.132259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232513, 43.631424, 47.466335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562997, 0.623496, -0.542483,
		-0.777012, 0.622961, -0.090402,
		0.281581, 0.472411, 0.835189,
		32.316986, 43.773148, 47.716892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055161, 44.100121, 46.893013>,  <32.119881, 43.442459, 47.132259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055161, 44.100121, 46.893013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288063, 44.122955, 47.217415>,  <32.427803, 44.136654, 47.412056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288063, 44.122955, 47.217415>,  <32.055161, 44.100121, 46.893013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288063, 44.122955, 47.217415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597528, 0.646391, -0.474489,
		-0.551309, 0.760868, 0.342254,
		0.582253, 0.057084, 0.811001,
		32.462738, 44.140079, 47.460716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132767, 44.794437, 47.130779>,  <32.055161, 44.100121, 46.893013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132767, 44.794437, 47.130779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.455769, 44.602829, 47.268463>,  <32.649570, 44.487865, 47.351074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.455769, 44.602829, 47.268463>,  <32.132767, 44.794437, 47.130779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455769, 44.602829, 47.268463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589766, 0.666350, -0.456238,
		-0.010820, 0.571418, 0.820588,
		0.807502, -0.479018, 0.344213,
		32.698021, 44.459122, 47.371727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545609, 45.291225, 47.481331>,  <32.132767, 44.794437, 47.130779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545609, 45.291225, 47.481331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813194, 45.004723, 47.401871>,  <32.973743, 44.832821, 47.354195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813194, 45.004723, 47.401871>,  <32.545609, 45.291225, 47.481331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813194, 45.004723, 47.401871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576855, 0.668820, -0.468954,
		0.468752, 0.199122, 0.860594,
		0.668962, -0.716261, -0.198646,
		33.013882, 44.789845, 47.342278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233395, 45.602421, 47.611382>,  <32.545609, 45.291225, 47.481331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233395, 45.602421, 47.611382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333527, 45.260887, 47.428822>,  <33.393604, 45.055965, 47.319286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333527, 45.260887, 47.428822>,  <33.233395, 45.602421, 47.611382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333527, 45.260887, 47.428822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718622, 0.479768, -0.503392,
		0.648781, -0.201967, 0.733685,
		0.250330, -0.853834, -0.456402,
		33.408627, 45.004738, 47.291901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928425, 45.486954, 47.716591>,  <33.233395, 45.602421, 47.611382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928425, 45.486954, 47.716591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812744, 45.289185, 47.388710>,  <33.743336, 45.170525, 47.191982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812744, 45.289185, 47.388710>,  <33.928425, 45.486954, 47.716591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812744, 45.289185, 47.388710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730681, 0.439192, -0.522701,
		0.618441, -0.750105, 0.234251,
		-0.289199, -0.494422, -0.819701,
		33.725983, 45.140858, 47.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496235, 45.094975, 47.393532>,  <33.928425, 45.486954, 47.716591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496235, 45.094975, 47.393532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217937, 45.177193, 47.118233>,  <34.050957, 45.226524, 46.953053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217937, 45.177193, 47.118233>,  <34.496235, 45.094975, 47.393532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217937, 45.177193, 47.118233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693899, 0.439895, -0.570085,
		0.185581, -0.874211, -0.448682,
		-0.695747, 0.205543, -0.688250,
		34.009212, 45.238857, 46.911758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855171, 45.081520, 46.745956>,  <34.496235, 45.094975, 47.393532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855171, 45.081520, 46.745956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516445, 45.260727, 46.631287>,  <34.313210, 45.368252, 46.562485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516445, 45.260727, 46.631287>,  <34.855171, 45.081520, 46.745956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516445, 45.260727, 46.631287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507262, 0.518184, -0.688600,
		-0.159954, -0.728537, -0.666069,
		-0.846817, 0.448016, -0.286674,
		34.262402, 45.395130, 46.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777985, 45.012413, 46.064671>,  <34.855171, 45.081520, 46.745956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777985, 45.012413, 46.064671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548409, 45.329758, 46.145828>,  <34.410664, 45.520164, 46.194523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548409, 45.329758, 46.145828>,  <34.777985, 45.012413, 46.064671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548409, 45.329758, 46.145828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490094, 0.531274, -0.691054,
		-0.656050, -0.297187, -0.693742,
		-0.573939, 0.793365, 0.202892,
		34.376228, 45.567768, 46.206696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701191, 45.228855, 45.474174>,  <34.777985, 45.012413, 46.064671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701191, 45.228855, 45.474174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609493, 45.553848, 45.688583>,  <34.554474, 45.748844, 45.817226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609493, 45.553848, 45.688583>,  <34.701191, 45.228855, 45.474174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609493, 45.553848, 45.688583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434843, 0.578164, -0.690390,
		-0.870837, 0.074813, -0.485846,
		-0.229249, 0.812483, 0.536018,
		34.540718, 45.797592, 45.849388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574532, 45.649830, 44.940022>,  <34.701191, 45.228855, 45.474174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574532, 45.649830, 44.940022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643456, 45.891106, 45.251526>,  <34.684811, 46.035873, 45.438427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643456, 45.891106, 45.251526>,  <34.574532, 45.649830, 44.940022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643456, 45.891106, 45.251526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612678, 0.553428, -0.564219,
		-0.771321, 0.574349, -0.274204,
		0.172306, 0.603193, 0.778761,
		34.695148, 46.072063, 45.485153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310947, 46.386456, 44.802643>,  <34.574532, 45.649830, 44.940022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310947, 46.386456, 44.802643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590622, 46.404976, 45.088017>,  <34.758427, 46.416088, 45.259243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590622, 46.404976, 45.088017>,  <34.310947, 46.386456, 44.802643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590622, 46.404976, 45.088017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560941, 0.583176, -0.587580,
		-0.443264, 0.811026, 0.381779,
		0.699187, 0.046298, 0.713439,
		34.800377, 46.418865, 45.302048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485401, 47.100758, 44.731716>,  <34.310947, 46.386456, 44.802643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485401, 47.100758, 44.731716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772919, 46.906471, 44.930676>,  <34.945431, 46.789898, 45.050053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772919, 46.906471, 44.930676>,  <34.485401, 47.100758, 44.731716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772919, 46.906471, 44.930676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681338, 0.634424, -0.365082,
		-0.138235, 0.601317, 0.786962,
		0.718797, -0.485720, 0.497400,
		34.988560, 46.760754, 45.079895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.209263, 44.454311, 51.363163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.297508, 44.069893, 51.296558>,  <34.350456, 43.839241, 51.256596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.297508, 44.069893, 51.296558>,  <34.209263, 44.454311, 51.363163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297508, 44.069893, 51.296558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872506, -0.270763, 0.406720,
		-0.435961, 0.055554, -0.898249,
		0.220618, -0.961042, -0.166514,
		34.363693, 43.781582, 51.246605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729267, 44.156178, 51.141449>,  <34.209263, 44.454311, 51.363163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729267, 44.156178, 51.141449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898449, 43.822792, 51.283684>,  <33.999958, 43.622761, 51.369026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898449, 43.822792, 51.283684>,  <33.729267, 44.156178, 51.141449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898449, 43.822792, 51.283684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869604, -0.263025, 0.417859,
		-0.254734, -0.485976, -0.836025,
		0.422965, -0.833454, 0.355606,
		34.025337, 43.572754, 51.390362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286369, 43.557903, 50.950127>,  <33.729267, 44.156178, 51.141449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286369, 43.557903, 50.950127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.519619, 43.445274, 51.254936>,  <33.659569, 43.377697, 51.437820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.519619, 43.445274, 51.254936>,  <33.286369, 43.557903, 50.950127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519619, 43.445274, 51.254936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777364, -0.465830, 0.422738,
		0.235941, -0.838879, -0.490524,
		0.583127, -0.281575, 0.762022,
		33.694557, 43.360802, 51.483543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994907, 42.914959, 51.160992>,  <33.286369, 43.557903, 50.950127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994907, 42.914959, 51.160992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217178, 43.058998, 51.460739>,  <33.350540, 43.145420, 51.640587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217178, 43.058998, 51.460739>,  <32.994907, 42.914959, 51.160992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217178, 43.058998, 51.460739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633123, -0.400916, 0.662134,
		0.538867, -0.842375, 0.005207,
		0.555678, 0.360099, 0.749367,
		33.383881, 43.167027, 51.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823372, 42.458015, 51.667458>,  <32.994907, 42.914959, 51.160992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823372, 42.458015, 51.667458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981842, 42.767525, 51.865173>,  <33.076923, 42.953232, 51.983803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981842, 42.767525, 51.865173>,  <32.823372, 42.458015, 51.667458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981842, 42.767525, 51.865173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655502, -0.138602, 0.742366,
		0.642933, -0.618112, 0.452300,
		0.396176, 0.773774, 0.494285,
		33.100697, 42.999657, 52.013458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839825, 42.230949, 52.384083>,  <32.823372, 42.458015, 51.667458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839825, 42.230949, 52.384083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856659, 42.630447, 52.394894>,  <32.866760, 42.870148, 52.401379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856659, 42.630447, 52.394894>,  <32.839825, 42.230949, 52.384083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856659, 42.630447, 52.394894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600969, 0.003697, 0.799264,
		0.798163, -0.049880, 0.600373,
		0.042086, 0.998749, 0.027026,
		32.869286, 42.930073, 52.403000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013046, 42.441471, 53.065071>,  <32.839825, 42.230949, 52.384083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013046, 42.441471, 53.065071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.859753, 42.780975, 52.919334>,  <32.767776, 42.984676, 52.831890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.859753, 42.780975, 52.919334>,  <33.013046, 42.441471, 53.065071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859753, 42.780975, 52.919334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626088, 0.051308, 0.778062,
		0.679079, 0.526290, 0.511733,
		-0.383230, 0.848756, -0.364346,
		32.744785, 43.035603, 52.810032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921238, 42.823284, 53.641743>,  <33.013046, 42.441471, 53.065071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921238, 42.823284, 53.641743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675789, 42.977180, 53.365932>,  <32.528519, 43.069519, 53.200447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675789, 42.977180, 53.365932>,  <32.921238, 42.823284, 53.641743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675789, 42.977180, 53.365932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715299, 0.098965, 0.691775,
		0.334392, 0.917705, 0.214476,
		-0.613620, 0.384738, -0.689527,
		32.491703, 43.092602, 53.159073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576599, 43.334557, 54.042767>,  <32.921238, 42.823284, 53.641743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576599, 43.334557, 54.042767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368805, 43.239883, 53.714348>,  <32.244129, 43.183079, 53.517296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368805, 43.239883, 53.714348>,  <32.576599, 43.334557, 54.042767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368805, 43.239883, 53.714348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844303, -0.005673, 0.535837,
		-0.131483, 0.971570, -0.196888,
		-0.519486, -0.236686, -0.821045,
		32.212959, 43.168877, 53.468033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956882, 43.473591, 54.222107>,  <32.576599, 43.334557, 54.042767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956882, 43.473591, 54.222107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856823, 43.251823, 53.904606>,  <31.796787, 43.118763, 53.714104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856823, 43.251823, 53.904606>,  <31.956882, 43.473591, 54.222107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856823, 43.251823, 53.904606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818554, -0.316750, 0.479206,
		-0.517103, 0.769602, -0.374589,
		-0.250147, -0.554420, -0.793753,
		31.781778, 43.085499, 53.666481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266703, 43.607189, 54.041325>,  <31.956882, 43.473591, 54.222107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266703, 43.607189, 54.041325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333364, 43.237953, 53.902683>,  <31.373362, 43.016411, 53.819500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333364, 43.237953, 53.902683>,  <31.266703, 43.607189, 54.041325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333364, 43.237953, 53.902683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853513, -0.311059, 0.418042,
		-0.493703, 0.226160, -0.839708,
		0.166654, -0.923089, -0.346601,
		31.383360, 42.961025, 53.798702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628519, 43.388119, 53.927792>,  <31.266703, 43.607189, 54.041325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628519, 43.388119, 53.927792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850933, 43.055679, 53.931648>,  <30.984383, 42.856216, 53.933964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850933, 43.055679, 53.931648>,  <30.628519, 43.388119, 53.927792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850933, 43.055679, 53.931648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748358, -0.495562, 0.440884,
		-0.361641, -0.252364, -0.897512,
		0.556036, -0.831102, 0.009643,
		31.017744, 42.806347, 53.934540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197159, 42.899052, 53.639965>,  <30.628519, 43.388119, 53.927792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197159, 42.899052, 53.639965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464314, 42.764771, 53.905666>,  <30.624605, 42.684200, 54.065086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464314, 42.764771, 53.905666>,  <30.197159, 42.899052, 53.639965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464314, 42.764771, 53.905666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743928, -0.327970, 0.582243,
		0.022392, -0.883027, -0.468787,
		0.667885, -0.335706, 0.664252,
		30.664679, 42.664059, 54.104942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030750, 42.184044, 53.684116>,  <30.197159, 42.899052, 53.639965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030750, 42.184044, 53.684116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209629, 42.376717, 53.985577>,  <30.316956, 42.492321, 54.166454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209629, 42.376717, 53.985577>,  <30.030750, 42.184044, 53.684116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209629, 42.376717, 53.985577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811878, -0.134972, 0.568011,
		0.375325, -0.865888, 0.330710,
		0.447197, 0.481685, 0.753654,
		30.343788, 42.521221, 54.211674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303349, 41.789455, 53.023220>,  <30.030750, 42.184044, 53.684116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303349, 41.789455, 53.023220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950733, 41.776550, 52.834816>,  <29.739164, 41.768806, 52.721771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950733, 41.776550, 52.834816>,  <30.303349, 41.789455, 53.023220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950733, 41.776550, 52.834816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402487, 0.470121, -0.785487,
		0.246776, -0.882012, -0.401443,
		-0.881536, -0.032264, -0.471013,
		29.686272, 41.766872, 52.693512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451698, 41.916111, 52.308479>,  <30.303349, 41.789455, 53.023220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451698, 41.916111, 52.308479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055241, 41.945496, 52.264225>,  <29.817366, 41.963127, 52.237675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055241, 41.945496, 52.264225>,  <30.451698, 41.916111, 52.308479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055241, 41.945496, 52.264225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130769, 0.394697, -0.909458,
		-0.023142, -0.915870, -0.400807,
		-0.991143, 0.073460, -0.110633,
		29.757898, 41.967533, 52.231033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219763, 41.592712, 51.714901>,  <30.451698, 41.916111, 52.308479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219763, 41.592712, 51.714901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930157, 41.861435, 51.777493>,  <29.756393, 42.022667, 51.815048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930157, 41.861435, 51.777493>,  <30.219763, 41.592712, 51.714901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930157, 41.861435, 51.777493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059771, 0.287099, -0.956034,
		-0.687191, -0.682829, -0.248018,
		-0.724014, 0.671802, 0.156478,
		29.712952, 42.062977, 51.824436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606632, 41.504845, 51.193340>,  <30.219763, 41.592712, 51.714901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606632, 41.504845, 51.193340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604488, 41.882584, 51.324905>,  <29.603203, 42.109226, 51.403847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604488, 41.882584, 51.324905>,  <29.606632, 41.504845, 51.193340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604488, 41.882584, 51.324905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097737, 0.327840, -0.939664,
		-0.995198, 0.027112, -0.094055,
		-0.005359, 0.944344, 0.328916,
		29.602880, 42.165886, 51.423580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148886, 41.763954, 50.687187>,  <29.606632, 41.504845, 51.193340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148886, 41.763954, 50.687187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373199, 42.051743, 50.851086>,  <29.507788, 42.224415, 50.949425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373199, 42.051743, 50.851086>,  <29.148886, 41.763954, 50.687187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373199, 42.051743, 50.851086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010262, 0.488801, -0.872335,
		-0.827900, 0.493395, 0.266728,
		0.560783, 0.719468, 0.409742,
		29.541433, 42.267582, 50.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964083, 42.274509, 50.325619>,  <29.148886, 41.763954, 50.687187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964083, 42.274509, 50.325619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.300520, 42.391777, 50.507439>,  <29.502382, 42.462135, 50.616531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.300520, 42.391777, 50.507439>,  <28.964083, 42.274509, 50.325619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300520, 42.391777, 50.507439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334095, 0.379306, -0.862848,
		-0.425370, 0.877599, 0.221087,
		0.841095, 0.293166, 0.454547,
		29.552849, 42.479729, 50.643803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191584, 42.906719, 49.967026>,  <28.964083, 42.274509, 50.325619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191584, 42.906719, 49.967026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532814, 42.787048, 50.138027>,  <29.737553, 42.715244, 50.240627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532814, 42.787048, 50.138027>,  <29.191584, 42.906719, 49.967026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532814, 42.787048, 50.138027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509807, 0.303322, -0.805042,
		0.111182, 0.904703, 0.411280,
		0.853074, -0.299180, 0.427500,
		29.788736, 42.697296, 50.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762115, 43.379356, 49.769615>,  <29.191584, 42.906719, 49.967026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762115, 43.379356, 49.769615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992243, 43.075180, 49.890102>,  <30.130320, 42.892673, 49.962395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992243, 43.075180, 49.890102>,  <29.762115, 43.379356, 49.769615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992243, 43.075180, 49.890102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659370, 0.213287, -0.720930,
		0.483981, 0.613380, 0.624121,
		0.575321, -0.760444, 0.301217,
		30.164839, 42.847046, 49.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359646, 43.627804, 49.921791>,  <29.762115, 43.379356, 49.769615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359646, 43.627804, 49.921791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.457354, 43.245842, 49.854271>,  <30.515978, 43.016666, 49.813759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.457354, 43.245842, 49.854271>,  <30.359646, 43.627804, 49.921791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457354, 43.245842, 49.854271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710147, 0.294688, -0.639414,
		0.660321, 0.036319, 0.750105,
		0.244270, -0.954903, -0.168797,
		30.530634, 42.959370, 49.803631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025011, 43.653500, 49.908768>,  <30.359646, 43.627804, 49.921791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025011, 43.653500, 49.908768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.945414, 43.305351, 49.728615>,  <30.897655, 43.096462, 49.620522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.945414, 43.305351, 49.728615>,  <31.025011, 43.653500, 49.908768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945414, 43.305351, 49.728615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731741, 0.173743, -0.659066,
		0.651886, -0.460718, 0.602315,
		-0.198995, -0.870375, -0.450387,
		30.885715, 43.044239, 49.593498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647030, 43.414963, 49.821590>,  <31.025011, 43.653500, 49.908768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647030, 43.414963, 49.821590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401831, 43.226723, 49.567734>,  <31.254711, 43.113777, 49.415421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401831, 43.226723, 49.567734>,  <31.647030, 43.414963, 49.821590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401831, 43.226723, 49.567734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672739, 0.110329, -0.731607,
		0.414315, -0.875421, 0.248961,
		-0.612997, -0.470602, -0.634641,
		31.217932, 43.085541, 49.377342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119881, 43.068668, 49.486828>,  <31.647030, 43.414963, 49.821590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119881, 43.068668, 49.486828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793526, 43.099991, 49.257675>,  <31.597712, 43.118786, 49.120186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793526, 43.099991, 49.257675>,  <32.119881, 43.068668, 49.486828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793526, 43.099991, 49.257675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569560, 0.279557, -0.772949,
		0.099623, -0.956930, -0.272690,
		-0.815891, 0.078309, -0.572879,
		31.548759, 43.123482, 49.085812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281693, 42.696030, 48.940723>,  <32.119881, 43.068668, 49.486828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281693, 42.696030, 48.940723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997871, 42.945839, 48.810184>,  <31.827579, 43.095726, 48.731861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997871, 42.945839, 48.810184>,  <32.281693, 42.696030, 48.940723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997871, 42.945839, 48.810184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584882, 0.263685, -0.767062,
		-0.392999, -0.735144, -0.552373,
		-0.709553, 0.624527, -0.326345,
		31.785006, 43.133198, 48.712280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219543, 42.514782, 48.267536>,  <32.281693, 42.696030, 48.940723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219543, 42.514782, 48.267536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080063, 42.887733, 48.305641>,  <31.996374, 43.111504, 48.328503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080063, 42.887733, 48.305641>,  <32.219543, 42.514782, 48.267536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080063, 42.887733, 48.305641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572316, 0.292325, -0.766159,
		-0.742198, -0.212643, -0.635550,
		-0.348705, 0.932378, 0.095264,
		31.975451, 43.167446, 48.334221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052948, 41.980808, 47.701366>,  <32.219543, 42.514782, 48.267536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052948, 41.980808, 47.701366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307243, 41.675629, 47.654472>,  <32.459820, 41.492519, 47.626335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307243, 41.675629, 47.654472>,  <32.052948, 41.980808, 47.701366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307243, 41.675629, 47.654472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497349, -0.521011, 0.693680,
		-0.590326, -0.382689, -0.710679,
		0.635736, -0.762952, -0.117236,
		32.497963, 41.446743, 47.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661329, 41.411095, 47.815083>,  <32.052948, 41.980808, 47.701366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661329, 41.411095, 47.815083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033798, 41.272057, 47.859070>,  <32.257278, 41.188633, 47.885464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033798, 41.272057, 47.859070>,  <31.661329, 41.411095, 47.815083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033798, 41.272057, 47.859070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325680, -0.657525, 0.679407,
		-0.163849, -0.668461, -0.725475,
		0.931174, -0.347593, 0.109970,
		32.313152, 41.167778, 47.892059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561270, 40.699299, 47.891701>,  <31.661329, 41.411095, 47.815083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561270, 40.699299, 47.891701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924068, 40.778870, 48.040180>,  <32.141747, 40.826611, 48.129269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924068, 40.778870, 48.040180>,  <31.561270, 40.699299, 47.891701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924068, 40.778870, 48.040180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169762, -0.633934, 0.754525,
		0.385408, -0.747366, -0.541206,
		0.906996, 0.198924, 0.371198,
		32.196167, 40.838547, 48.151539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891943, 40.024685, 48.051991>,  <31.561270, 40.699299, 47.891701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891943, 40.024685, 48.051991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137703, 40.255936, 48.266758>,  <32.285160, 40.394684, 48.395618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137703, 40.255936, 48.266758>,  <31.891943, 40.024685, 48.051991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137703, 40.255936, 48.266758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027560, -0.664372, 0.746894,
		0.788512, -0.473691, -0.392258,
		0.614402, 0.578124, 0.536920,
		32.322025, 40.429375, 48.427834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391830, 39.601864, 48.363724>,  <31.891943, 40.024685, 48.051991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391830, 39.601864, 48.363724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409149, 39.949074, 48.561573>,  <32.419540, 40.157402, 48.680283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409149, 39.949074, 48.561573>,  <32.391830, 39.601864, 48.363724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409149, 39.949074, 48.561573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321901, -0.456561, 0.829416,
		0.945782, -0.195134, 0.259650,
		0.043301, 0.868029, 0.494621,
		32.422138, 40.209484, 48.709961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524429, 39.328793, 49.052910>,  <32.391830, 39.601864, 48.363724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524429, 39.328793, 49.052910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386192, 39.702599, 49.086983>,  <32.303249, 39.926880, 49.107426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386192, 39.702599, 49.086983>,  <32.524429, 39.328793, 49.052910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386192, 39.702599, 49.086983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365434, -0.217633, 0.905038,
		0.864306, 0.281645, 0.416714,
		-0.345590, 0.934512, 0.085179,
		32.282516, 39.982952, 49.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850414, 39.532753, 49.742989>,  <32.524429, 39.328793, 49.052910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850414, 39.532753, 49.742989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515400, 39.738869, 49.670311>,  <32.314392, 39.862537, 49.626705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515400, 39.738869, 49.670311>,  <32.850414, 39.532753, 49.742989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515400, 39.738869, 49.670311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341819, -0.234706, 0.909985,
		0.426264, 0.824248, 0.372711,
		-0.837531, 0.515293, -0.181697,
		32.264141, 39.893456, 49.615803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299885, 38.982403, 50.117393>,  <32.850414, 39.532753, 49.742989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299885, 38.982403, 50.117393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326279, 38.608009, 49.979076>,  <33.342113, 38.383373, 49.896084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326279, 38.608009, 49.979076>,  <33.299885, 38.982403, 50.117393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326279, 38.608009, 49.979076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667510, 0.298993, -0.681933,
		0.741671, -0.185824, 0.644510,
		0.065985, -0.935987, -0.345794,
		33.346073, 38.327213, 49.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047031, 38.892853, 50.038025>,  <33.299885, 38.982403, 50.117393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047031, 38.892853, 50.038025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878632, 38.602776, 49.820084>,  <33.777592, 38.428730, 49.689320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878632, 38.602776, 49.820084>,  <34.047031, 38.892853, 50.038025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878632, 38.602776, 49.820084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710931, 0.109244, -0.694725,
		0.563329, -0.679827, 0.469569,
		-0.420996, -0.725190, -0.544850,
		33.752335, 38.385220, 49.656628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569466, 38.334492, 49.947678>,  <34.047031, 38.892853, 50.038025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569466, 38.334492, 49.947678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313126, 38.270210, 49.647415>,  <34.159321, 38.231640, 49.467258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313126, 38.270210, 49.647415>,  <34.569466, 38.334492, 49.947678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313126, 38.270210, 49.647415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715477, 0.229350, -0.659918,
		0.278218, -0.959985, -0.031995,
		-0.640849, -0.160709, -0.750656,
		34.120872, 38.221996, 49.422218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875732, 37.827797, 49.489475>,  <34.569466, 38.334492, 49.947678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875732, 37.827797, 49.489475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617661, 38.040863, 49.270382>,  <34.462818, 38.168701, 49.138924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617661, 38.040863, 49.270382>,  <34.875732, 37.827797, 49.489475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617661, 38.040863, 49.270382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680450, 0.074559, -0.728992,
		-0.347469, -0.843036, -0.410555,
		-0.645177, 0.532664, -0.547737,
		34.424107, 38.200661, 49.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943123, 37.567600, 48.783985>,  <34.875732, 37.827797, 49.489475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943123, 37.567600, 48.783985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718361, 37.886993, 48.697556>,  <34.583504, 38.078629, 48.645699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718361, 37.886993, 48.697556>,  <34.943123, 37.567600, 48.783985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718361, 37.886993, 48.697556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551313, 0.166757, -0.817464,
		-0.616699, -0.578460, -0.533915,
		-0.561904, 0.798483, -0.216074,
		34.549789, 38.126537, 48.632732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738949, 37.590149, 48.107269>,  <34.943123, 37.567600, 48.783985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738949, 37.590149, 48.107269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731033, 37.983047, 48.181892>,  <34.726284, 38.218788, 48.226665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731033, 37.983047, 48.181892>,  <34.738949, 37.590149, 48.107269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731033, 37.983047, 48.181892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363959, 0.180863, -0.913686,
		-0.931205, 0.049821, -0.361075,
		-0.019784, 0.982246, 0.186553,
		34.725098, 38.277721, 48.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713425, 37.816914, 47.493706>,  <34.738949, 37.590149, 48.107269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713425, 37.816914, 47.493706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834633, 38.135681, 47.702740>,  <34.907356, 38.326942, 47.828159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834633, 38.135681, 47.702740>,  <34.713425, 37.816914, 47.493706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834633, 38.135681, 47.702740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385006, 0.399254, -0.832086,
		-0.871750, 0.453340, -0.185836,
		0.303022, 0.796919, 0.522588,
		34.925541, 38.374756, 47.859516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.699638, 39.385227, 54.157295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565716, 39.741379, 54.033920>,  <32.485363, 39.955070, 53.959896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565716, 39.741379, 54.033920>,  <32.699638, 39.385227, 54.157295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565716, 39.741379, 54.033920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903670, 0.210656, -0.372833,
		-0.266987, -0.403553, -0.875136,
		-0.334811, 0.890376, -0.308437,
		32.465271, 40.008492, 53.941391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939705, 39.382366, 53.455101>,  <32.699638, 39.385227, 54.157295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939705, 39.382366, 53.455101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.873787, 39.756599, 53.580021>,  <32.834236, 39.981140, 53.654972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.873787, 39.756599, 53.580021>,  <32.939705, 39.382366, 53.455101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873787, 39.756599, 53.580021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824114, 0.304578, -0.477565,
		-0.541921, 0.178672, -0.821217,
		-0.164797, 0.935579, 0.312303,
		32.824348, 40.037273, 53.673714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153114, 39.602371, 52.875957>,  <32.939705, 39.382366, 53.455101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153114, 39.602371, 52.875957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.161339, 39.909973, 53.131523>,  <33.166275, 40.094532, 53.284863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.161339, 39.909973, 53.131523>,  <33.153114, 39.602371, 52.875957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161339, 39.909973, 53.131523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784481, 0.383763, -0.487150,
		-0.619812, 0.511234, -0.595377,
		0.020564, 0.769003, 0.638914,
		33.167507, 40.140675, 53.323196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269611, 40.130527, 52.481762>,  <33.153114, 39.602371, 52.875957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269611, 40.130527, 52.481762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.385777, 40.258072, 52.842648>,  <33.455475, 40.334599, 53.059177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.385777, 40.258072, 52.842648>,  <33.269611, 40.130527, 52.481762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385777, 40.258072, 52.842648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800336, 0.435879, -0.411669,
		-0.524522, 0.841626, -0.128615,
		0.290410, 0.318865, 0.902212,
		33.472900, 40.353733, 53.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348663, 40.896320, 52.459721>,  <33.269611, 40.130527, 52.481762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348663, 40.896320, 52.459721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570511, 40.776436, 52.770222>,  <33.703621, 40.704506, 52.956524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570511, 40.776436, 52.770222>,  <33.348663, 40.896320, 52.459721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570511, 40.776436, 52.770222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761990, 0.557737, -0.329090,
		-0.334312, 0.774017, 0.537711,
		0.554623, -0.299712, 0.776251,
		33.736897, 40.686523, 53.003098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833443, 41.540131, 52.579781>,  <33.348663, 40.896320, 52.459721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833443, 41.540131, 52.579781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.010292, 41.237999, 52.773277>,  <34.116402, 41.056721, 52.889374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.010292, 41.237999, 52.773277>,  <33.833443, 41.540131, 52.579781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010292, 41.237999, 52.773277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896843, 0.380683, -0.225286,
		-0.013989, 0.533447, 0.845718,
		0.442128, -0.755324, 0.483743,
		34.142929, 41.011402, 52.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439404, 41.725208, 52.973057>,  <33.833443, 41.540131, 52.579781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439404, 41.725208, 52.973057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530811, 41.338638, 52.926052>,  <34.585655, 41.106697, 52.897850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530811, 41.338638, 52.926052>,  <34.439404, 41.725208, 52.973057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530811, 41.338638, 52.926052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925365, 0.253124, -0.282185,
		0.302454, -0.044253, 0.952136,
		0.228521, -0.966421, -0.117509,
		34.599369, 41.048714, 52.890800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048397, 41.711342, 53.301682>,  <34.439404, 41.725208, 52.973057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048397, 41.711342, 53.301682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.045296, 41.389641, 53.063984>,  <35.043434, 41.196621, 52.921364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.045296, 41.389641, 53.063984>,  <35.048397, 41.711342, 53.301682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045296, 41.389641, 53.063984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965006, 0.149748, -0.215265,
		0.262113, -0.575118, 0.774943,
		-0.007756, -0.804248, -0.594243,
		35.042969, 41.148365, 52.885712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731365, 41.323055, 53.433788>,  <35.048397, 41.711342, 53.301682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731365, 41.323055, 53.433788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614529, 41.163109, 53.086273>,  <35.544426, 41.067142, 52.877766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614529, 41.163109, 53.086273>,  <35.731365, 41.323055, 53.433788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614529, 41.163109, 53.086273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946027, 0.012571, -0.323843,
		0.140415, -0.916488, 0.374609,
		-0.292089, -0.399863, -0.868788,
		35.526901, 41.043148, 52.825638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357227, 40.854378, 53.203514>,  <35.731365, 41.323055, 53.433788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357227, 40.854378, 53.203514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128925, 40.935577, 52.885262>,  <35.991943, 40.984299, 52.694309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128925, 40.935577, 52.885262>,  <36.357227, 40.854378, 53.203514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128925, 40.935577, 52.885262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817111, 0.044743, -0.574742,
		-0.081073, -0.978156, -0.191409,
		-0.570751, 0.202998, -0.795635,
		35.957699, 40.996475, 52.646572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669258, 40.476028, 52.658211>,  <36.357227, 40.854378, 53.203514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669258, 40.476028, 52.658211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.460503, 40.772263, 52.488899>,  <36.335251, 40.950005, 52.387314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.460503, 40.772263, 52.488899>,  <36.669258, 40.476028, 52.658211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460503, 40.772263, 52.488899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630587, 0.000788, -0.776118,
		-0.574450, -0.671960, -0.467415,
		-0.521889, 0.740587, -0.423277,
		36.303936, 40.994438, 52.361916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520329, 40.257179, 51.990520>,  <36.669258, 40.476028, 52.658211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520329, 40.257179, 51.990520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500267, 40.656464, 51.977501>,  <36.488232, 40.896034, 51.969688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.500267, 40.656464, 51.977501>,  <36.520329, 40.257179, 51.990520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500267, 40.656464, 51.977501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660602, 0.008711, -0.750686,
		-0.749059, -0.059148, -0.659857,
		-0.050149, 0.998211, -0.032548,
		36.485222, 40.955929, 51.967735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327991, 39.591763, 51.811996>,  <36.520329, 40.257179, 51.990520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327991, 39.591763, 51.811996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.453995, 39.232681, 51.688770>,  <36.529594, 39.017231, 51.614834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.453995, 39.232681, 51.688770>,  <36.327991, 39.591763, 51.811996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453995, 39.232681, 51.688770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521096, -0.434875, 0.734400,
		-0.793241, -0.070810, -0.604776,
		0.315005, -0.897703, -0.308062,
		36.548496, 38.963371, 51.596352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713684, 39.261288, 51.767635>,  <36.327991, 39.591763, 51.811996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713684, 39.261288, 51.767635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002926, 38.990295, 51.821507>,  <36.176472, 38.827702, 51.853828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002926, 38.990295, 51.821507>,  <35.713684, 39.261288, 51.767635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002926, 38.990295, 51.821507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588185, -0.501706, 0.634295,
		-0.362149, -0.537882, -0.761270,
		0.723109, -0.677476, 0.134682,
		36.219860, 38.787052, 51.861912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369499, 38.779949, 52.065186>,  <35.713684, 39.261288, 51.767635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369499, 38.779949, 52.065186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733253, 38.613586, 52.067917>,  <35.951504, 38.513771, 52.069557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733253, 38.613586, 52.067917>,  <35.369499, 38.779949, 52.065186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733253, 38.613586, 52.067917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375098, -0.812841, 0.445636,
		-0.179793, -0.407815, -0.895188,
		0.909382, -0.415905, 0.006828,
		36.006069, 38.488815, 52.069965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368557, 38.147823, 51.680721>,  <35.369499, 38.779949, 52.065186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368557, 38.147823, 51.680721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.648163, 38.149155, 51.966763>,  <35.815926, 38.149952, 52.138386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.648163, 38.149155, 51.966763>,  <35.368557, 38.147823, 51.680721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648163, 38.149155, 51.966763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384844, -0.841085, 0.380094,
		0.602727, -0.540893, -0.586648,
		0.699010, 0.003325, 0.715103,
		35.857864, 38.150150, 52.181293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556671, 37.399235, 51.821304>,  <35.368557, 38.147823, 51.680721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556671, 37.399235, 51.821304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653198, 37.603958, 52.151108>,  <35.711117, 37.726791, 52.348991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653198, 37.603958, 52.151108>,  <35.556671, 37.399235, 51.821304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653198, 37.603958, 52.151108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347955, -0.747495, 0.565843,
		0.905920, -0.423442, -0.002299,
		0.241320, 0.511808, 0.824510,
		35.725594, 37.757500, 52.398460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794037, 36.893436, 52.214588>,  <35.556671, 37.399235, 51.821304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794037, 36.893436, 52.214588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714127, 37.192917, 52.467422>,  <35.666180, 37.372604, 52.619125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714127, 37.192917, 52.467422>,  <35.794037, 36.893436, 52.214588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714127, 37.192917, 52.467422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401759, -0.650964, 0.644078,
		0.893688, -0.125273, 0.430847,
		-0.199780, 0.748701, 0.632088,
		35.654194, 37.417526, 52.657047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556950, 36.620186, 52.780594>,  <35.794037, 36.893436, 52.214588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556950, 36.620186, 52.780594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.423092, 36.983681, 52.880363>,  <35.342777, 37.201778, 52.940224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.423092, 36.983681, 52.880363>,  <35.556950, 36.620186, 52.780594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423092, 36.983681, 52.880363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846251, -0.406245, 0.344709,
		0.414578, -0.095723, 0.904965,
		-0.334641, 0.908736, 0.249425,
		35.322701, 37.256302, 52.955193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422173, 36.582565, 53.472233>,  <35.556950, 36.620186, 52.780594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422173, 36.582565, 53.472233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194710, 36.878899, 53.329239>,  <35.058231, 37.056698, 53.243443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194710, 36.878899, 53.329239>,  <35.422173, 36.582565, 53.472233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194710, 36.878899, 53.329239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821068, -0.484897, 0.301203,
		0.049796, 0.464802, 0.884013,
		-0.568655, 0.740833, -0.357488,
		35.024113, 37.101147, 53.221992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971901, 36.646912, 54.021873>,  <35.422173, 36.582565, 53.472233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971901, 36.646912, 54.021873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.813385, 36.850441, 53.716179>,  <34.718277, 36.972561, 53.532764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.813385, 36.850441, 53.716179>,  <34.971901, 36.646912, 54.021873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813385, 36.850441, 53.716179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904064, -0.361390, 0.228180,
		-0.160082, 0.781341, 0.603225,
		-0.396285, 0.508827, -0.764234,
		34.694500, 37.003090, 53.486908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402714, 36.922329, 54.290215>,  <34.971901, 36.646912, 54.021873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402714, 36.922329, 54.290215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.351379, 36.902855, 53.894001>,  <34.320580, 36.891171, 53.656273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.351379, 36.902855, 53.894001>,  <34.402714, 36.922329, 54.290215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351379, 36.902855, 53.894001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910602, -0.389865, 0.137145,
		-0.392852, 0.919584, 0.005704,
		-0.128340, -0.048684, -0.990535,
		34.312878, 36.888248, 53.596840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805569, 37.355019, 54.138538>,  <34.402714, 36.922329, 54.290215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805569, 37.355019, 54.138538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.844101, 37.074280, 53.856224>,  <33.867222, 36.905838, 53.686836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.844101, 37.074280, 53.856224>,  <33.805569, 37.355019, 54.138538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844101, 37.074280, 53.856224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893657, -0.373221, 0.249163,
		-0.438288, 0.606731, -0.663159,
		0.096330, -0.701843, -0.705788,
		33.873001, 36.863728, 53.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157227, 37.348816, 53.897938>,  <33.805569, 37.355019, 54.138538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157227, 37.348816, 53.897938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.318184, 37.018074, 53.740768>,  <33.414757, 36.819630, 53.646465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.318184, 37.018074, 53.740768>,  <33.157227, 37.348816, 53.897938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318184, 37.018074, 53.740768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854308, -0.493409, 0.163416,
		-0.328995, 0.269924, -0.904933,
		0.402393, -0.826855, -0.392927,
		33.438900, 36.770020, 53.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644886, 37.014954, 53.561878>,  <33.157227, 37.348816, 53.897938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644886, 37.014954, 53.561878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.895065, 36.704597, 53.594898>,  <33.045174, 36.518383, 53.614708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.895065, 36.704597, 53.594898>,  <32.644886, 37.014954, 53.561878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895065, 36.704597, 53.594898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770719, -0.597827, 0.220445,
		-0.121692, -0.201498, -0.971900,
		0.625447, -0.775888, 0.082548,
		33.082699, 36.471832, 53.619663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444130, 36.416084, 52.989063>,  <32.644886, 37.014954, 53.561878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444130, 36.416084, 52.989063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.639069, 36.255508, 53.299248>,  <32.756031, 36.159164, 53.485359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.639069, 36.255508, 53.299248>,  <32.444130, 36.416084, 52.989063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639069, 36.255508, 53.299248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766680, -0.621789, 0.159938,
		0.417970, -0.672478, -0.610798,
		0.487342, -0.401437, 0.775465,
		32.785271, 36.135078, 53.531887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342983, 36.487312, 52.316574>,  <32.444130, 36.416084, 52.989063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342983, 36.487312, 52.316574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043072, 36.654099, 52.111061>,  <31.863125, 36.754169, 51.987755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043072, 36.654099, 52.111061>,  <32.342983, 36.487312, 52.316574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043072, 36.654099, 52.111061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622287, 0.180407, -0.761717,
		-0.224917, -0.890840, -0.394736,
		-0.749781, 0.416962, -0.513781,
		31.818138, 36.779186, 51.956928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273071, 36.177719, 51.582565>,  <32.342983, 36.487312, 52.316574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273071, 36.177719, 51.582565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117195, 36.545509, 51.561779>,  <32.023670, 36.766186, 51.549305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117195, 36.545509, 51.561779>,  <32.273071, 36.177719, 51.582565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117195, 36.545509, 51.561779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701201, 0.259652, -0.664001,
		-0.597041, -0.295195, -0.745923,
		-0.389690, 0.919478, -0.051968,
		32.000286, 36.821354, 51.546188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449245, 36.277584, 50.914654>,  <32.273071, 36.177719, 51.582565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449245, 36.277584, 50.914654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330330, 36.641335, 51.031040>,  <32.258980, 36.859585, 51.100872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330330, 36.641335, 51.031040>,  <32.449245, 36.277584, 50.914654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330330, 36.641335, 51.031040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598825, 0.414942, -0.685004,
		-0.743659, -0.029404, -0.667912,
		-0.297287, 0.909373, 0.290967,
		32.241142, 36.914146, 51.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347786, 36.705379, 50.259048>,  <32.449245, 36.277584, 50.914654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347786, 36.705379, 50.259048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.374744, 36.970406, 50.557434>,  <32.390919, 37.129421, 50.736465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.374744, 36.970406, 50.557434>,  <32.347786, 36.705379, 50.259048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374744, 36.970406, 50.557434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483680, 0.632237, -0.605253,
		-0.872646, 0.401601, -0.277858,
		0.067398, 0.662565, 0.745965,
		32.394962, 37.169174, 50.781223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015522, 37.371937, 50.078674>,  <32.347786, 36.705379, 50.259048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015522, 37.371937, 50.078674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283539, 37.442070, 50.367199>,  <32.444351, 37.484150, 50.540314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283539, 37.442070, 50.367199>,  <32.015522, 37.371937, 50.078674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283539, 37.442070, 50.367199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455311, 0.670383, -0.585900,
		-0.586285, 0.721003, 0.369357,
		0.670047, 0.175331, 0.721316,
		32.484554, 37.494671, 50.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044659, 38.126465, 50.131187>,  <32.015522, 37.371937, 50.078674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044659, 38.126465, 50.131187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390671, 37.986519, 50.275024>,  <32.598278, 37.902550, 50.361328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390671, 37.986519, 50.275024>,  <32.044659, 38.126465, 50.131187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390671, 37.986519, 50.275024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501248, 0.571816, -0.649444,
		0.021595, 0.742038, 0.670010,
		0.865034, -0.349866, 0.359597,
		32.650181, 37.881557, 50.382904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541409, 38.679050, 50.206367>,  <32.044659, 38.126465, 50.131187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541409, 38.679050, 50.206367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796478, 38.374756, 50.157940>,  <32.949520, 38.192181, 50.128883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796478, 38.374756, 50.157940>,  <32.541409, 38.679050, 50.206367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796478, 38.374756, 50.157940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457640, 0.500560, -0.734851,
		0.619627, 0.413189, 0.667336,
		0.637673, -0.760733, -0.121069,
		32.987782, 38.146538, 50.121620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477192, 39.327671, 50.328594>,  <32.541409, 38.679050, 50.206367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477192, 39.327671, 50.328594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217754, 39.556465, 50.127731>,  <32.062092, 39.693741, 50.007214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217754, 39.556465, 50.127731>,  <32.477192, 39.327671, 50.328594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217754, 39.556465, 50.127731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696059, -0.178811, 0.695362,
		0.307944, 0.800538, 0.514109,
		-0.648592, 0.571983, -0.502158,
		32.023178, 39.728062, 49.977085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321468, 39.914642, 50.711514>,  <32.477192, 39.327671, 50.328594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321468, 39.914642, 50.711514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019417, 39.825569, 50.464874>,  <31.838186, 39.772125, 50.316891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019417, 39.825569, 50.464874>,  <32.321468, 39.914642, 50.711514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019417, 39.825569, 50.464874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654053, 0.191773, 0.731737,
		-0.044699, 0.955843, -0.290460,
		-0.755127, -0.222684, -0.616599,
		31.792879, 39.758762, 50.279896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828409, 40.490463, 50.647278>,  <32.321468, 39.914642, 50.711514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828409, 40.490463, 50.647278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641527, 40.149117, 50.554768>,  <31.529398, 39.944309, 50.499260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641527, 40.149117, 50.554768>,  <31.828409, 40.490463, 50.647278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641527, 40.149117, 50.554768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707858, 0.204291, 0.676167,
		-0.529768, 0.479621, -0.699506,
		-0.467207, -0.853364, -0.231277,
		31.501366, 39.893108, 50.485386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172009, 40.705280, 50.723919>,  <31.828409, 40.490463, 50.647278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172009, 40.705280, 50.723919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177048, 40.305321, 50.726513>,  <31.180071, 40.065346, 50.728069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177048, 40.305321, 50.726513>,  <31.172009, 40.705280, 50.723919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177048, 40.305321, 50.726513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748050, -0.005120, 0.663623,
		-0.663523, -0.013209, -0.748039,
		0.012596, -0.999900, 0.006483,
		31.180826, 40.005352, 50.728458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485926, 40.447353, 50.716938>,  <31.172009, 40.705280, 50.723919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485926, 40.447353, 50.716938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.699881, 40.139854, 50.857182>,  <30.828253, 39.955357, 50.941326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.699881, 40.139854, 50.857182>,  <30.485926, 40.447353, 50.716938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699881, 40.139854, 50.857182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621531, -0.076897, 0.779606,
		-0.572359, -0.634914, -0.518931,
		0.534887, -0.768746, 0.350607,
		30.860346, 39.909229, 50.962364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007448, 39.957874, 50.796459>,  <30.485926, 40.447353, 50.716938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007448, 39.957874, 50.796459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301096, 39.867332, 51.052532>,  <30.477285, 39.813007, 51.206177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301096, 39.867332, 51.052532>,  <30.007448, 39.957874, 50.796459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301096, 39.867332, 51.052532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665740, -0.054383, 0.744199,
		-0.133636, -0.972526, -0.190615,
		0.734120, -0.226352, 0.640182,
		30.521332, 39.799427, 51.244587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734541, 39.468334, 51.259144>,  <30.007448, 39.957874, 50.796459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734541, 39.468334, 51.259144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075968, 39.553131, 51.449505>,  <30.280823, 39.604012, 51.563721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075968, 39.553131, 51.449505>,  <29.734541, 39.468334, 51.259144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075968, 39.553131, 51.449505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417901, -0.266866, 0.868413,
		0.311102, -0.940128, -0.139194,
		0.853566, 0.211996, 0.475902,
		30.332037, 39.616730, 51.592274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944349, 38.894539, 51.689995>,  <29.734541, 39.468334, 51.259144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944349, 38.894539, 51.689995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098549, 39.237297, 51.826881>,  <30.191069, 39.442951, 51.909016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098549, 39.237297, 51.826881>,  <29.944349, 38.894539, 51.689995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098549, 39.237297, 51.826881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337912, -0.214013, 0.916523,
		0.858607, -0.468960, 0.207054,
		0.385500, 0.856898, 0.342220,
		30.214199, 39.494366, 51.929546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220854, 38.721573, 52.327236>,  <29.944349, 38.894539, 51.689995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220854, 38.721573, 52.327236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189543, 39.119644, 52.350857>,  <30.170757, 39.358486, 52.365028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189543, 39.119644, 52.350857>,  <30.220854, 38.721573, 52.327236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189543, 39.119644, 52.350857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417522, -0.086510, 0.904539,
		0.905289, 0.046151, 0.422282,
		-0.078277, 0.995181, 0.059047,
		30.166059, 39.418198, 52.368572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.641987, 45.431889, 40.817627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524086, 45.736740, 41.048203>,  <39.453346, 45.919651, 41.186546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524086, 45.736740, 41.048203>,  <39.641987, 45.431889, 40.817627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524086, 45.736740, 41.048203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505904, -0.636219, 0.582483,
		0.810668, -0.119935, 0.573091,
		-0.294751, 0.762129, 0.576438,
		39.435661, 45.965378, 41.221134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813820, 45.274242, 41.454800>,  <39.641987, 45.431889, 40.817627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813820, 45.274242, 41.454800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508812, 45.531487, 41.482975>,  <39.325806, 45.685833, 41.499882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508812, 45.531487, 41.482975>,  <39.813820, 45.274242, 41.454800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508812, 45.531487, 41.482975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473745, -0.629197, 0.616179,
		0.440594, 0.436481, 0.784450,
		-0.762524, 0.643114, 0.070440,
		39.280056, 45.724422, 41.504108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630325, 45.154125, 42.107857>,  <39.813820, 45.274242, 41.454800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630325, 45.154125, 42.107857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.300774, 45.359612, 42.012085>,  <39.103043, 45.482903, 41.954620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.300774, 45.359612, 42.012085>,  <39.630325, 45.154125, 42.107857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300774, 45.359612, 42.012085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554955, -0.645382, 0.524888,
		0.115118, 0.565316, 0.816803,
		-0.823877, 0.513713, -0.239429,
		39.053612, 45.513725, 41.940258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236511, 45.306580, 42.719002>,  <39.630325, 45.154125, 42.107857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236511, 45.306580, 42.719002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983410, 45.303810, 42.409275>,  <38.831547, 45.302151, 42.223438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983410, 45.303810, 42.409275>,  <39.236511, 45.306580, 42.719002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983410, 45.303810, 42.409275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628910, -0.578796, 0.519103,
		-0.451765, 0.815443, 0.361886,
		-0.632757, -0.006919, -0.774320,
		38.793583, 45.301735, 42.176979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645092, 45.464172, 42.959694>,  <39.236511, 45.306580, 42.719002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645092, 45.464172, 42.959694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524170, 45.270065, 42.631516>,  <38.451614, 45.153603, 42.434608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524170, 45.270065, 42.631516>,  <38.645092, 45.464172, 42.959694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524170, 45.270065, 42.631516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683439, -0.489649, 0.541439,
		-0.664471, 0.724403, -0.183626,
		-0.302308, -0.485267, -0.820442,
		38.433479, 45.124485, 42.385384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791428, 45.504787, 42.944893>,  <38.645092, 45.464172, 42.959694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791428, 45.504787, 42.944893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877193, 45.202095, 42.697868>,  <37.928654, 45.020481, 42.549652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877193, 45.202095, 42.697868>,  <37.791428, 45.504787, 42.944893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877193, 45.202095, 42.697868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842187, -0.463475, 0.275520,
		-0.494720, 0.461031, -0.736683,
		0.214411, -0.756730, -0.617565,
		37.941517, 44.975075, 42.512600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093163, 45.311314, 42.518967>,  <37.791428, 45.504787, 42.944893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093163, 45.311314, 42.518967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332188, 44.990707, 42.510048>,  <37.475601, 44.798344, 42.504696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332188, 44.990707, 42.510048>,  <37.093163, 45.311314, 42.518967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332188, 44.990707, 42.510048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798445, -0.597363, 0.075117,
		-0.073527, -0.027084, -0.996925,
		0.597561, -0.801513, -0.022297,
		37.511456, 44.750252, 42.503357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746494, 44.713009, 42.148125>,  <37.093163, 45.311314, 42.518967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746494, 44.713009, 42.148125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013336, 44.522026, 42.376862>,  <37.173443, 44.407436, 42.514103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013336, 44.522026, 42.376862>,  <36.746494, 44.713009, 42.148125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013336, 44.522026, 42.376862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705301, -0.651922, 0.278475,
		0.239839, -0.589095, -0.771650,
		0.667104, -0.477457, 0.571846,
		37.213467, 44.378788, 42.548416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533127, 44.009365, 42.205242>,  <36.746494, 44.713009, 42.148125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533127, 44.009365, 42.205242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804249, 44.046204, 42.497021>,  <36.966923, 44.068306, 42.672089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804249, 44.046204, 42.497021>,  <36.533127, 44.009365, 42.205242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804249, 44.046204, 42.497021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436244, -0.748241, 0.499827,
		0.591835, -0.657004, -0.466987,
		0.677807, 0.092095, 0.729449,
		37.007591, 44.073833, 42.715855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860874, 43.416935, 42.300659>,  <36.533127, 44.009365, 42.205242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860874, 43.416935, 42.300659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932137, 43.581284, 42.658306>,  <36.974895, 43.679893, 42.872894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932137, 43.581284, 42.658306>,  <36.860874, 43.416935, 42.300659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932137, 43.581284, 42.658306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427525, -0.786090, 0.446412,
		0.886275, -0.461789, 0.035610,
		0.178156, 0.410868, 0.894118,
		36.985584, 43.704544, 42.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030804, 42.902466, 42.721764>,  <36.860874, 43.416935, 42.300659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030804, 42.902466, 42.721764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938019, 43.196327, 42.976784>,  <36.882347, 43.372646, 43.129795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938019, 43.196327, 42.976784>,  <37.030804, 42.902466, 42.721764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938019, 43.196327, 42.976784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528902, -0.645331, 0.551190,
		0.816367, -0.209345, 0.538257,
		-0.231965, 0.734658, 0.637550,
		36.868431, 43.416725, 43.168049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101414, 42.501461, 43.287376>,  <37.030804, 42.902466, 42.721764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101414, 42.501461, 43.287376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895794, 42.830498, 43.384621>,  <36.772423, 43.027920, 43.442966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895794, 42.830498, 43.384621>,  <37.101414, 42.501461, 43.287376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895794, 42.830498, 43.384621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488033, -0.513556, 0.705751,
		0.705392, 0.244147, 0.665443,
		-0.514049, 0.822589, 0.243106,
		36.741581, 43.077274, 43.457554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685284, 42.202103, 43.599937>,  <37.101414, 42.501461, 43.287376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685284, 42.202103, 43.599937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808529, 41.821808, 43.586288>,  <37.882477, 41.593632, 43.578098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808529, 41.821808, 43.586288>,  <37.685284, 42.202103, 43.599937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808529, 41.821808, 43.586288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922587, 0.307357, -0.233164,
		0.232165, 0.040361, 0.971839,
		0.308113, -0.950738, -0.034121,
		37.900963, 41.536587, 43.576054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157825, 42.112282, 44.183083>,  <37.685284, 42.202103, 43.599937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157825, 42.112282, 44.183083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235573, 41.850502, 43.890808>,  <38.282223, 41.693432, 43.715443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235573, 41.850502, 43.890808>,  <38.157825, 42.112282, 44.183083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235573, 41.850502, 43.890808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935580, 0.347554, -0.062417,
		0.294804, -0.671488, 0.679849,
		0.194372, -0.654454, -0.730691,
		38.293884, 41.654167, 43.671600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890274, 42.055885, 44.112644>,  <38.157825, 42.112282, 44.183083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890274, 42.055885, 44.112644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788170, 41.885361, 43.765518>,  <38.726910, 41.783047, 43.557243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788170, 41.885361, 43.765518>,  <38.890274, 42.055885, 44.112644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788170, 41.885361, 43.765518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904938, 0.210736, -0.369699,
		0.340487, -0.879688, 0.331991,
		-0.255258, -0.426309, -0.867816,
		38.711594, 41.757469, 43.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389839, 41.570656, 44.018188>,  <38.890274, 42.055885, 44.112644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389839, 41.570656, 44.018188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260857, 41.631233, 43.644432>,  <39.183468, 41.667580, 43.420177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260857, 41.631233, 43.644432>,  <39.389839, 41.570656, 44.018188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260857, 41.631233, 43.644432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943395, -0.029545, -0.330352,
		-0.077637, -0.988024, -0.133347,
		-0.322456, 0.151447, -0.934391,
		39.164120, 41.676666, 43.364117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723217, 41.051369, 43.627258>,  <39.389839, 41.570656, 44.018188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723217, 41.051369, 43.627258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603607, 41.340355, 43.377899>,  <39.531841, 41.513748, 43.228283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603607, 41.340355, 43.377899>,  <39.723217, 41.051369, 43.627258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603607, 41.340355, 43.377899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884400, -0.035512, -0.465377,
		-0.358357, -0.690493, -0.628331,
		-0.299026, 0.722467, -0.623398,
		39.513901, 41.557095, 43.190880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055706, 40.830593, 42.920868>,  <39.723217, 41.051369, 43.627258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055706, 40.830593, 42.920868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.934822, 41.207230, 42.861427>,  <39.862293, 41.433212, 42.825764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.934822, 41.207230, 42.861427>,  <40.055706, 40.830593, 42.920868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934822, 41.207230, 42.861427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831916, 0.184417, -0.523360,
		-0.465386, -0.281786, -0.839055,
		-0.302211, 0.941588, -0.148598,
		39.844158, 41.489704, 42.816849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128857, 40.986694, 42.216389>,  <40.055706, 40.830593, 42.920868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128857, 40.986694, 42.216389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122810, 41.331039, 42.419834>,  <40.119183, 41.537647, 42.541901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122810, 41.331039, 42.419834>,  <40.128857, 40.986694, 42.216389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122810, 41.331039, 42.419834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846378, 0.281851, -0.451889,
		-0.532368, 0.423649, -0.732875,
		-0.015120, 0.860861, 0.508616,
		40.118275, 41.589298, 42.572418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387108, 41.431988, 41.750023>,  <40.128857, 40.986694, 42.216389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387108, 41.431988, 41.750023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391727, 41.648636, 42.086243>,  <40.394497, 41.778625, 42.287975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391727, 41.648636, 42.086243>,  <40.387108, 41.431988, 41.750023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391727, 41.648636, 42.086243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836012, 0.455948, -0.305280,
		-0.548590, 0.706231, -0.447534,
		0.011546, 0.541617, 0.840546,
		40.395191, 41.811119, 42.338406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457527, 42.167583, 41.571995>,  <40.387108, 41.431988, 41.750023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457527, 42.167583, 41.571995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605820, 42.089417, 41.935173>,  <40.694794, 42.042519, 42.153080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605820, 42.089417, 41.935173>,  <40.457527, 42.167583, 41.571995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605820, 42.089417, 41.935173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830355, 0.507651, -0.229785,
		-0.416018, 0.839109, 0.350465,
		0.370729, -0.195415, 0.907950,
		40.717037, 42.030792, 42.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074425, 42.522770, 41.561592>,  <40.457527, 42.167583, 41.571995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074425, 42.522770, 41.561592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.123714, 42.386307, 41.934349>,  <41.153286, 42.304428, 42.158005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.123714, 42.386307, 41.934349>,  <41.074425, 42.522770, 41.561592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123714, 42.386307, 41.934349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964460, 0.262345, -0.031485,
		-0.233737, 0.902656, 0.361357,
		0.123220, -0.341155, 0.931896,
		41.160679, 42.283958, 42.213917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473774, 42.976452, 42.047119>,  <41.074425, 42.522770, 41.561592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473774, 42.976452, 42.047119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.517681, 42.597160, 42.166332>,  <41.544025, 42.369587, 42.237858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.517681, 42.597160, 42.166332>,  <41.473774, 42.976452, 42.047119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517681, 42.597160, 42.166332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993655, 0.097302, -0.056399,
		0.024480, 0.302328, 0.952889,
		0.109769, -0.948225, 0.298028,
		41.550613, 42.312695, 42.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067127, 43.081509, 42.449223>,  <41.473774, 42.976452, 42.047119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067127, 43.081509, 42.449223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031826, 42.693298, 42.359528>,  <42.010647, 42.460373, 42.305710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031826, 42.693298, 42.359528>,  <42.067127, 43.081509, 42.449223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031826, 42.693298, 42.359528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989649, -0.059855, -0.130430,
		0.113164, -0.233432, 0.965766,
		-0.088253, -0.970529, -0.224242,
		42.005352, 42.402138, 42.292255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482906, 42.719852, 42.843140>,  <42.067127, 43.081509, 42.449223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482906, 42.719852, 42.843140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.444847, 42.475334, 42.528873>,  <42.422012, 42.328625, 42.340313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.444847, 42.475334, 42.528873>,  <42.482906, 42.719852, 42.843140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444847, 42.475334, 42.528873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995334, -0.071123, -0.065208,
		-0.016017, -0.788200, 0.615211,
		-0.095152, -0.611296, -0.785661,
		42.416302, 42.291946, 42.293175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042362, 42.187984, 42.920830>,  <42.482906, 42.719852, 42.843140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042362, 42.187984, 42.920830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.934456, 42.169395, 42.536110>,  <42.869713, 42.158241, 42.305279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.934456, 42.169395, 42.536110>,  <43.042362, 42.187984, 42.920830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934456, 42.169395, 42.536110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962920, -0.016336, -0.269292,
		-0.003198, -0.998786, 0.049155,
		-0.269768, -0.046471, -0.961803,
		42.853527, 42.155453, 42.247570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686611, 41.567463, 43.047928>,  <43.042362, 42.187984, 42.920830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686611, 41.567463, 43.047928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.880894, 41.840714, 43.266075>,  <42.997463, 42.004662, 43.396965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.880894, 41.840714, 43.266075>,  <42.686611, 41.567463, 43.047928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880894, 41.840714, 43.266075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248629, 0.490171, -0.835414,
		-0.838015, 0.541364, 0.068237,
		0.485711, 0.683123, 0.545369,
		43.026608, 42.045650, 43.429688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811104, 40.939350, 43.240932>,  <42.686611, 41.567463, 43.047928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811104, 40.939350, 43.240932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.008427, 41.274246, 43.335316>,  <43.126820, 41.475182, 43.391945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.008427, 41.274246, 43.335316>,  <42.811104, 40.939350, 43.240932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008427, 41.274246, 43.335316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247838, -0.124734, 0.960738,
		0.833799, -0.532422, 0.145966,
		0.493311, 0.837238, 0.235958,
		43.156422, 41.525417, 43.406101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330143, 40.740097, 43.746235>,  <42.811104, 40.939350, 43.240932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330143, 40.740097, 43.746235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.166370, 41.104050, 43.773033>,  <43.068108, 41.322422, 43.789112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.166370, 41.104050, 43.773033>,  <43.330143, 40.740097, 43.746235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166370, 41.104050, 43.773033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088542, -0.112712, 0.989675,
		0.908035, 0.399271, 0.126711,
		-0.409430, 0.909878, 0.066994,
		43.043541, 41.377014, 43.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641136, 40.990524, 44.348309>,  <43.330143, 40.740097, 43.746235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641136, 40.990524, 44.348309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.312996, 41.206955, 44.274273>,  <43.116112, 41.336811, 44.229851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.312996, 41.206955, 44.274273>,  <43.641136, 40.990524, 44.348309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312996, 41.206955, 44.274273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214670, 0.008613, 0.976649,
		0.530032, 0.840932, 0.109086,
		-0.820355, 0.541073, -0.185088,
		43.066891, 41.369278, 44.218746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621918, 41.362736, 44.900280>,  <43.641136, 40.990524, 44.348309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621918, 41.362736, 44.900280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261765, 41.465248, 44.759632>,  <43.045673, 41.526756, 44.675243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261765, 41.465248, 44.759632>,  <43.621918, 41.362736, 44.900280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261765, 41.465248, 44.759632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391231, -0.123196, 0.912009,
		0.190413, 0.958719, 0.211189,
		-0.900378, 0.256282, -0.351622,
		42.991650, 41.542133, 44.654144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414177, 41.860336, 45.372440>,  <43.621918, 41.362736, 44.900280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414177, 41.860336, 45.372440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.089005, 41.719353, 45.187004>,  <42.893902, 41.634762, 45.075741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.089005, 41.719353, 45.187004>,  <43.414177, 41.860336, 45.372440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089005, 41.719353, 45.187004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492743, -0.008008, 0.870138,
		-0.310398, 0.935794, -0.167161,
		-0.812931, -0.352456, -0.463592,
		42.845123, 41.613617, 45.047928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827202, 42.223549, 45.585400>,  <43.414177, 41.860336, 45.372440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827202, 42.223549, 45.585400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.685715, 41.873657, 45.452896>,  <42.600822, 41.663723, 45.373394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.685715, 41.873657, 45.452896>,  <42.827202, 42.223549, 45.585400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685715, 41.873657, 45.452896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522067, -0.109226, 0.845882,
		-0.776097, 0.472148, -0.418030,
		-0.353721, -0.874726, -0.331263,
		42.579597, 41.611240, 45.353516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091763, 42.142303, 45.665356>,  <42.827202, 42.223549, 45.585400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091763, 42.142303, 45.665356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.144821, 41.747383, 45.630402>,  <42.176655, 41.510429, 45.609428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.144821, 41.747383, 45.630402>,  <42.091763, 42.142303, 45.665356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144821, 41.747383, 45.630402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609780, -0.150791, 0.778094,
		-0.781392, -0.049922, -0.622040,
		0.132642, -0.987304, -0.087385,
		42.184612, 41.451191, 45.604187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412987, 41.793167, 45.629223>,  <42.091763, 42.142303, 45.665356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412987, 41.793167, 45.629223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659542, 41.500198, 45.744896>,  <41.807476, 41.324417, 45.814301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659542, 41.500198, 45.744896>,  <41.412987, 41.793167, 45.629223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659542, 41.500198, 45.744896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742961, -0.419246, 0.521768,
		-0.260913, -0.536465, -0.802577,
		0.616388, -0.732420, 0.289185,
		41.844460, 41.280472, 45.831650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017109, 41.151611, 45.577618>,  <41.412987, 41.793167, 45.629223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017109, 41.151611, 45.577618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.323181, 41.038559, 45.809006>,  <41.506824, 40.970726, 45.947838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.323181, 41.038559, 45.809006>,  <41.017109, 41.151611, 45.577618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323181, 41.038559, 45.809006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643733, -0.350700, 0.680159,
		0.010632, -0.892820, -0.450289,
		0.765176, -0.282635, 0.578467,
		41.552734, 40.953770, 45.982544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794991, 40.502125, 45.922573>,  <41.017109, 41.151611, 45.577618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794991, 40.502125, 45.922573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.103207, 40.601097, 46.157539>,  <41.288136, 40.660480, 46.298519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.103207, 40.601097, 46.157539>,  <40.794991, 40.502125, 45.922573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103207, 40.601097, 46.157539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459768, -0.422533, 0.781076,
		0.441460, -0.871921, -0.211818,
		0.770537, 0.247427, 0.587413,
		41.334366, 40.675323, 46.333763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864475, 39.915512, 46.290390>,  <40.794991, 40.502125, 45.922573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864475, 39.915512, 46.290390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.018028, 40.223511, 46.494247>,  <41.110161, 40.408310, 46.616562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.018028, 40.223511, 46.494247>,  <40.864475, 39.915512, 46.290390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018028, 40.223511, 46.494247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438333, -0.333821, 0.834523,
		0.812712, -0.543750, 0.209369,
		0.383880, 0.770000, 0.509644,
		41.133194, 40.454510, 46.647141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030998, 39.679230, 46.923706>,  <40.864475, 39.915512, 46.290390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030998, 39.679230, 46.923706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002327, 40.067818, 47.014130>,  <40.985123, 40.300972, 47.068382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002327, 40.067818, 47.014130>,  <41.030998, 39.679230, 46.923706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002327, 40.067818, 47.014130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443168, -0.234060, 0.865343,
		0.893568, -0.038156, 0.447303,
		-0.071678, 0.971473, 0.226058,
		40.980824, 40.359261, 47.081947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100674, 39.686047, 47.575241>,  <41.030998, 39.679230, 46.923706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100674, 39.686047, 47.575241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.909710, 40.032593, 47.516605>,  <40.795132, 40.240520, 47.481426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.909710, 40.032593, 47.516605>,  <41.100674, 39.686047, 47.575241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909710, 40.032593, 47.516605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554617, -0.167716, 0.815029,
		0.681531, 0.470398, 0.560572,
		-0.477405, 0.866370, -0.146586,
		40.766487, 40.292503, 47.472630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166367, 40.121441, 48.258034>,  <41.100674, 39.686047, 47.575241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166367, 40.121441, 48.258034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.861557, 40.272125, 48.047356>,  <40.678673, 40.362537, 47.920948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.861557, 40.272125, 48.047356>,  <41.166367, 40.121441, 48.258034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861557, 40.272125, 48.047356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590433, -0.070200, 0.804028,
		0.265914, 0.923666, 0.275918,
		-0.762023, 0.376714, -0.526695,
		40.632950, 40.385139, 47.889347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824512, 40.598782, 48.664436>,  <41.166367, 40.121441, 48.258034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824512, 40.598782, 48.664436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534740, 40.523720, 48.399109>,  <40.360878, 40.478683, 48.239914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534740, 40.523720, 48.399109>,  <40.824512, 40.598782, 48.664436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534740, 40.523720, 48.399109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662207, -0.077926, 0.745258,
		-0.191540, 0.979139, -0.067814,
		-0.724427, -0.187653, -0.663319,
		40.317413, 40.467422, 48.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288315, 40.970058, 48.912617>,  <40.824512, 40.598782, 48.664436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288315, 40.970058, 48.912617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.130066, 40.678589, 48.689003>,  <40.035114, 40.503708, 48.554832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.130066, 40.678589, 48.689003>,  <40.288315, 40.970058, 48.912617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130066, 40.678589, 48.689003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667337, -0.190121, 0.720080,
		-0.630985, 0.657947, -0.411051,
		-0.395625, -0.728670, -0.559036,
		40.011379, 40.459988, 48.521294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626392, 41.004478, 49.065651>,  <40.288315, 40.970058, 48.912617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626392, 41.004478, 49.065651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632248, 40.652229, 48.876213>,  <39.635761, 40.440880, 48.762550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632248, 40.652229, 48.876213>,  <39.626392, 41.004478, 49.065651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632248, 40.652229, 48.876213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804653, -0.291547, 0.517237,
		-0.593565, 0.373508, -0.712863,
		0.014641, -0.880620, -0.473596,
		39.636639, 40.388042, 48.734135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960217, 40.938774, 49.000622>,  <39.626392, 41.004478, 49.065651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960217, 40.938774, 49.000622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085476, 40.567635, 48.919594>,  <39.160633, 40.344952, 48.870975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085476, 40.567635, 48.919594>,  <38.960217, 40.938774, 49.000622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085476, 40.567635, 48.919594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782327, -0.372953, 0.498869,
		-0.538426, 0.002258, -0.842670,
		0.313150, -0.927847, -0.202574,
		39.179420, 40.289280, 48.858822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429054, 40.598839, 48.674744>,  <38.960217, 40.938774, 49.000622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429054, 40.598839, 48.674744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650520, 40.301811, 48.825500>,  <38.783401, 40.123596, 48.915955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650520, 40.301811, 48.825500>,  <38.429054, 40.598839, 48.674744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650520, 40.301811, 48.825500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819165, -0.404276, 0.406854,
		-0.149750, -0.533995, -0.832120,
		0.553664, -0.742570, 0.376890,
		38.816620, 40.079041, 48.938568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105869, 39.970421, 48.634792>,  <38.429054, 40.598839, 48.674744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105869, 39.970421, 48.634792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366028, 39.869492, 48.921379>,  <38.522121, 39.808933, 49.093330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366028, 39.869492, 48.921379>,  <38.105869, 39.970421, 48.634792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366028, 39.869492, 48.921379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749134, -0.369070, 0.550078,
		0.125630, -0.894496, -0.429063,
		0.650396, -0.252319, 0.716463,
		38.561146, 39.793797, 49.136318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890656, 39.333942, 48.823845>,  <38.105869, 39.970421, 48.634792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890656, 39.333942, 48.823845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103703, 39.479691, 49.129410>,  <38.231529, 39.567139, 49.312748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103703, 39.479691, 49.129410>,  <37.890656, 39.333942, 48.823845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103703, 39.479691, 49.129410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613850, -0.455076, 0.645053,
		0.582672, -0.812492, -0.018715,
		0.532617, 0.364366, 0.763909,
		38.263489, 39.589001, 49.358582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823231, 38.829926, 49.351906>,  <37.890656, 39.333942, 48.823845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823231, 38.829926, 49.351906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.922600, 39.146759, 49.574936>,  <37.982220, 39.336861, 49.708755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.922600, 39.146759, 49.574936>,  <37.823231, 38.829926, 49.351906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922600, 39.146759, 49.574936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479837, -0.399403, 0.781174,
		0.841453, -0.461607, 0.280849,
		0.248424, 0.792083, 0.557575,
		37.997128, 39.384384, 49.742207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183517, 38.577736, 49.926388>,  <37.823231, 38.829926, 49.351906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183517, 38.577736, 49.926388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032471, 38.939339, 50.006569>,  <37.941841, 39.156300, 50.054676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032471, 38.939339, 50.006569>,  <38.183517, 38.577736, 49.926388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032471, 38.939339, 50.006569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448202, -0.367876, 0.814728,
		0.810259, 0.217814, 0.544093,
		-0.377618, 0.904005, 0.200451,
		37.919186, 39.210541, 50.066704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284225, 38.685005, 50.657997>,  <38.183517, 38.577736, 49.926388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284225, 38.685005, 50.657997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982262, 38.923561, 50.548874>,  <37.801083, 39.066696, 50.483398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982262, 38.923561, 50.548874>,  <38.284225, 38.685005, 50.657997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982262, 38.923561, 50.548874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510451, -0.273152, 0.815370,
		0.411759, 0.754791, 0.510633,
		-0.754914, 0.596389, -0.272811,
		37.755787, 39.102478, 50.467030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079311, 39.055145, 51.300827>,  <38.284225, 38.685005, 50.657997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079311, 39.055145, 51.300827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777504, 39.153549, 51.057457>,  <37.596420, 39.212593, 50.911434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777504, 39.153549, 51.057457>,  <38.079311, 39.055145, 51.300827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777504, 39.153549, 51.057457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654849, -0.220988, 0.722729,
		0.043345, 0.943738, 0.327839,
		-0.754516, 0.246012, -0.608428,
		37.551147, 39.227352, 50.874928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655521, 39.553539, 51.615070>,  <38.079311, 39.055145, 51.300827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655521, 39.553539, 51.615070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438709, 39.365616, 51.336365>,  <37.308620, 39.252861, 51.169140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438709, 39.365616, 51.336365>,  <37.655521, 39.553539, 51.615070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438709, 39.365616, 51.336365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724523, -0.158815, 0.670704,
		-0.425759, 0.868365, -0.254304,
		-0.542029, -0.469808, -0.696767,
		37.276100, 39.224674, 51.127335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024708, 39.765472, 51.686142>,  <37.655521, 39.553539, 51.615070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024708, 39.765472, 51.686142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952259, 39.415970, 51.505589>,  <36.908791, 39.206268, 51.397259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952259, 39.415970, 51.505589>,  <37.024708, 39.765472, 51.686142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952259, 39.415970, 51.505589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574516, -0.278508, 0.769652,
		-0.798202, 0.398726, -0.451543,
		-0.181122, -0.873757, -0.451380,
		36.897923, 39.153843, 51.370174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880260, 40.348026, 51.319061>,  <37.024708, 39.765472, 51.686142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880260, 40.348026, 51.319061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828037, 40.715591, 51.467953>,  <36.796703, 40.936131, 51.557289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828037, 40.715591, 51.467953>,  <36.880260, 40.348026, 51.319061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828037, 40.715591, 51.467953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695724, 0.352398, -0.625926,
		-0.706344, 0.177249, -0.685318,
		-0.130560, 0.918912, 0.372231,
		36.788868, 40.991264, 51.579620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980316, 40.757259, 50.739941>,  <36.880260, 40.348026, 51.319061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980316, 40.757259, 50.739941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022148, 41.000465, 51.054745>,  <37.047249, 41.146389, 51.243626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022148, 41.000465, 51.054745>,  <36.980316, 40.757259, 50.739941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022148, 41.000465, 51.054745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802170, 0.416201, -0.428136,
		-0.587866, 0.676089, -0.444203,
		0.104581, 0.608013, 0.787009,
		37.053524, 41.182869, 51.290848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962475, 41.429745, 50.514488>,  <36.980316, 40.757259, 50.739941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962475, 41.429745, 50.514488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176704, 41.436691, 50.852211>,  <37.305241, 41.440861, 51.054848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176704, 41.436691, 50.852211>,  <36.962475, 41.429745, 50.514488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176704, 41.436691, 50.852211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717145, 0.518601, -0.465572,
		-0.445946, 0.854840, 0.265294,
		0.535571, 0.017366, 0.844312,
		37.337376, 41.441902, 51.105503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100483, 42.048073, 50.642807>,  <36.962475, 41.429745, 50.514488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100483, 42.048073, 50.642807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393539, 41.867180, 50.846268>,  <37.569374, 41.758644, 50.968346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393539, 41.867180, 50.846268>,  <37.100483, 42.048073, 50.642807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393539, 41.867180, 50.846268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676049, 0.569961, -0.467014,
		-0.078714, 0.686027, 0.723306,
		0.732641, -0.452229, 0.508651,
		37.613331, 41.731510, 50.998863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570889, 42.577171, 50.849472>,  <37.100483, 42.048073, 50.642807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570889, 42.577171, 50.849472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781345, 42.237366, 50.864952>,  <37.907619, 42.033482, 50.874241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781345, 42.237366, 50.864952>,  <37.570889, 42.577171, 50.849472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781345, 42.237366, 50.864952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781672, 0.465202, -0.415422,
		0.334901, 0.248827, 0.908805,
		0.526147, -0.849513, 0.038705,
		37.939190, 41.982513, 50.876564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
