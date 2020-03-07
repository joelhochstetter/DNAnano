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
	<1.473200, 3.226856, 2.610481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495644, 3.620678, 2.544142>,  <1.509109, 3.856971, 2.504338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495644, 3.620678, 2.544142>,  <1.473200, 3.226856, 2.610481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.495644, 3.620678, 2.544142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430200, 0.173739, 0.885857,
		0.900988, 0.021645, 0.433304,
		0.056108, 0.984554, -0.165848,
		1.512476, 3.916044, 2.494387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811129, 3.561855, 3.185199>,  <1.473200, 3.226856, 2.610481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811129, 3.561855, 3.185199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545670, 3.806152, 3.012428>,  <1.386394, 3.952731, 2.908766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545670, 3.806152, 3.012428>,  <1.811129, 3.561855, 3.185199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545670, 3.806152, 3.012428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365223, 0.239365, 0.899620,
		0.652826, 0.754782, 0.064203,
		-0.663649, 0.610744, -0.431928,
		1.346575, 3.989376, 2.882850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859018, 4.226615, 3.491491>,  <1.811129, 3.561855, 3.185199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859018, 4.226615, 3.491491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495087, 4.129490, 3.356878>,  <1.276728, 4.071215, 3.276111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.495087, 4.129490, 3.356878>,  <1.859018, 4.226615, 3.491491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.495087, 4.129490, 3.356878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380183, 0.162636, 0.910500,
		-0.166349, 0.956343, -0.240284,
		-0.909829, -0.242813, -0.336531,
		1.222138, 4.056646, 3.255919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420525, 4.804392, 3.460518>,  <1.859018, 4.226615, 3.491491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420525, 4.804392, 3.460518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242355, 4.451347, 3.520644>,  <1.135454, 4.239521, 3.556720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242355, 4.451347, 3.520644>,  <1.420525, 4.804392, 3.460518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.242355, 4.451347, 3.520644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356162, 0.328710, 0.874699,
		-0.821429, 0.336076, -0.460768,
		-0.445424, -0.882612, 0.150315,
		1.108728, 4.186564, 3.565738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.828203, 5.008794, 3.739921>,  <1.420525, 4.804392, 3.460518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.828203, 5.008794, 3.739921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814087, 4.620415, 3.834589>,  <0.805617, 4.387387, 3.891390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814087, 4.620415, 3.834589>,  <0.828203, 5.008794, 3.739921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.814087, 4.620415, 3.834589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433915, 0.228218, 0.871570,
		-0.900262, -0.071937, -0.429364,
		-0.035291, -0.970949, 0.236671,
		0.803500, 4.329130, 3.905590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.148917, 4.939931, 3.959857>,  <0.828203, 5.008794, 3.739921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.148917, 4.939931, 3.959857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.372467, 4.645576, 4.112763>,  <0.506597, 4.468964, 4.204507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.372467, 4.645576, 4.112763>,  <0.148917, 4.939931, 3.959857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.372467, 4.645576, 4.112763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394710, 0.169344, 0.903065,
		-0.729289, -0.655585, -0.195820,
		0.558875, -0.735888, 0.382266,
		0.540130, 4.424810, 4.227443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.276776, 4.586527, 4.429605>,  <0.148917, 4.939931, 3.959857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.276776, 4.586527, 4.429605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.104446, 4.517124, 4.528867>,  <0.333180, 4.475482, 4.588424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.104446, 4.517124, 4.528867>,  <-0.276776, 4.586527, 4.429605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.104446, 4.517124, 4.528867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207940, 0.220705, 0.952917,
		-0.220108, -0.959783, 0.174264,
		0.953055, -0.173508, 0.248156,
		0.390363, 4.465072, 4.603313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.440054, 4.004932, 4.880229>,  <-0.276776, 4.586527, 4.429605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.440054, 4.004932, 4.880229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.086838, 4.173027, 4.963790>,  <0.125092, 4.273884, 5.013926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.086838, 4.173027, 4.963790>,  <-0.440054, 4.004932, 4.880229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.086838, 4.173027, 4.963790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155532, -0.157919, 0.975126,
		0.442775, -0.893567, -0.074089,
		0.883040, 0.420238, 0.208901,
		0.178074, 4.299098, 5.026460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.264942, 5.151975, 5.918391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.077782, 4.987446, 6.042772>,  <0.283416, 4.888728, 6.117401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.077782, 4.987446, 6.042772>,  <-0.264942, 5.151975, 5.918391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.077782, 4.987446, 6.042772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299855, -0.093140, -0.949427,
		0.419483, 0.906719, 0.043534,
		0.856809, -0.411323, 0.310954,
		0.334824, 4.864049, 6.136059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.235266, 5.461343, 5.523628>,  <-0.264942, 5.151975, 5.918391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.235266, 5.461343, 5.523628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.355568, 5.098156, 5.640343>,  <0.427749, 4.880244, 5.710372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.355568, 5.098156, 5.640343>,  <0.235266, 5.461343, 5.523628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.355568, 5.098156, 5.640343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267002, -0.213555, -0.939736,
		0.915563, 0.360538, 0.178202,
		0.300755, -0.907968, 0.291788,
		0.445794, 4.825766, 5.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.967519, 5.286324, 5.296020>,  <0.235266, 5.461343, 5.523628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.967519, 5.286324, 5.296020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774002, 4.944912, 5.373409>,  <0.657892, 4.740065, 5.419843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774002, 4.944912, 5.373409>,  <0.967519, 5.286324, 5.296020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.774002, 4.944912, 5.373409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276972, -0.359022, -0.891285,
		0.830200, -0.377609, 0.410096,
		-0.483791, -0.853530, 0.193473,
		0.628865, 4.688853, 5.431451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.387002, 4.695827, 5.339533>,  <0.967519, 5.286324, 5.296020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.387002, 4.695827, 5.339533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.029541, 4.557434, 5.225214>,  <0.815064, 4.474398, 5.156623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.029541, 4.557434, 5.225214>,  <1.387002, 4.695827, 5.339533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.029541, 4.557434, 5.225214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418172, -0.410931, -0.810104,
		0.162839, -0.843464, 0.511910,
		-0.893653, -0.345983, -0.285797,
		0.761445, 4.453639, 5.139475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.542484, 4.053973, 4.999760>,  <1.387002, 4.695827, 5.339533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.542484, 4.053973, 4.999760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.179008, 4.168808, 4.878523>,  <0.960923, 4.237709, 4.805781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.179008, 4.168808, 4.878523>,  <1.542484, 4.053973, 4.999760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.179008, 4.168808, 4.878523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130005, -0.495318, -0.858929,
		-0.396715, -0.819903, 0.412767,
		-0.908689, 0.287088, -0.303092,
		0.906402, 4.254935, 4.787595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380713, 3.500270, 4.667175>,  <1.542484, 4.053973, 4.999760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380713, 3.500270, 4.667175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120155, 3.770908, 4.529825>,  <0.963821, 3.933291, 4.447415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120155, 3.770908, 4.529825>,  <1.380713, 3.500270, 4.667175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120155, 3.770908, 4.529825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024924, -0.433234, -0.900937,
		-0.758331, -0.595422, 0.265342,
		-0.651393, 0.676595, -0.343375,
		0.924737, 3.973887, 4.426813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.881735, 3.085525, 4.262470>,  <1.380713, 3.500270, 4.667175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.881735, 3.085525, 4.262470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.870552, 3.469368, 4.150490>,  <0.863842, 3.699674, 4.083302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.870552, 3.469368, 4.150490>,  <0.881735, 3.085525, 4.262470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.870552, 3.469368, 4.150490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007029, -0.279865, -0.960014,
		-0.999584, -0.028806, 0.001079,
		-0.027956, 0.959607, -0.279951,
		0.862165, 3.757250, 4.066504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.393274, 3.096916, 3.728743>,  <0.881735, 3.085525, 4.262470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.393274, 3.096916, 3.728743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.606293, 3.432621, 3.684870>,  <0.734104, 3.634044, 3.658546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.606293, 3.432621, 3.684870>,  <0.393274, 3.096916, 3.728743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.606293, 3.432621, 3.684870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003119, -0.131532, -0.991307,
		-0.846394, 0.527577, -0.072665,
		0.532548, 0.839263, -0.109682,
		0.766057, 3.684400, 3.651965>
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
