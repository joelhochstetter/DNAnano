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
	<0.666265, -0.896368, 2.557246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950050, -0.792915, 2.819473>,  <1.120322, -0.730843, 2.976810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950050, -0.792915, 2.819473>,  <0.666265, -0.896368, 2.557246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.950050, -0.792915, 2.819473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580632, 0.741714, 0.335748,
		-0.399409, -0.618845, 0.676390,
		0.709464, 0.258633, 0.655569,
		1.162889, -0.715326, 3.016144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.378261, -0.911167, 3.264407>,  <0.666265, -0.896368, 2.557246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.378261, -0.911167, 3.264407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.707451, -0.685959, 3.294662>,  <0.904965, -0.550834, 3.312816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.707451, -0.685959, 3.294662>,  <0.378261, -0.911167, 3.264407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.707451, -0.685959, 3.294662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557911, 0.775966, 0.294301,
		0.107005, -0.284402, 0.952715,
		0.822974, 0.563021, 0.075639,
		0.954343, -0.517052, 3.317354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.366308, -0.690588, 3.895465>,  <0.378261, -0.911167, 3.264407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.366308, -0.690588, 3.895465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.580311, -0.421028, 3.691650>,  <0.708713, -0.259292, 3.569361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.580311, -0.421028, 3.691650>,  <0.366308, -0.690588, 3.895465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.580311, -0.421028, 3.691650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627148, 0.720899, 0.294942,
		0.566086, 0.161760, 0.808320,
		0.535007, 0.673898, -0.509537,
		0.740813, -0.218859, 3.538789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420947, -0.142102, 4.355043>,  <0.366308, -0.690588, 3.895465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420947, -0.142102, 4.355043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.463917, -0.034286, 3.972252>,  <0.489699, 0.030403, 3.742577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.463917, -0.034286, 3.972252>,  <0.420947, -0.142102, 4.355043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.463917, -0.034286, 3.972252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585823, 0.794865, 0.158117,
		0.803288, 0.543634, 0.243292,
		0.107426, 0.269539, -0.956979,
		0.496144, 0.046575, 3.685158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.552242, 0.591716, 4.325738>,  <0.420947, -0.142102, 4.355043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.552242, 0.591716, 4.325738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.421612, 0.485992, 3.962753>,  <0.343234, 0.422558, 3.744962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.421612, 0.485992, 3.962753>,  <0.552242, 0.591716, 4.325738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.421612, 0.485992, 3.962753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587029, 0.809197, -0.024430,
		0.740774, 0.524729, -0.419421,
		-0.326575, -0.264309, -0.907463,
		0.323639, 0.406700, 3.690514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759109, 1.074056, 3.812531>,  <0.552242, 0.591716, 4.325738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759109, 1.074056, 3.812531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.409004, 0.902153, 3.723785>,  <0.198941, 0.799011, 3.670538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.409004, 0.902153, 3.723785>,  <0.759109, 1.074056, 3.812531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.409004, 0.902153, 3.723785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430471, 0.901342, -0.047706,
		0.220477, 0.053751, -0.973910,
		-0.875262, -0.429758, -0.221864,
		0.146426, 0.773225, 3.657226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.404802, 1.658286, 3.622598>,  <0.759109, 1.074056, 3.812531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.404802, 1.658286, 3.622598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.116772, 1.380745, 3.619453>,  <-0.056046, 1.214221, 3.617566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.116772, 1.380745, 3.619453>,  <0.404802, 1.658286, 3.622598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.116772, 1.380745, 3.619453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690315, 0.715162, 0.109582,
		-0.070410, 0.084335, -0.993947,
		-0.720075, -0.693852, -0.007863,
		-0.099251, 1.172589, 3.617095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.028040, 2.007743, 3.245028>,  <0.404802, 1.658286, 3.622598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.028040, 2.007743, 3.245028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.229248, 1.718018, 3.433640>,  <-0.349973, 1.544182, 3.546806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.229248, 1.718018, 3.433640>,  <-0.028040, 2.007743, 3.245028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.229248, 1.718018, 3.433640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801470, 0.595104, 0.059140,
		-0.323444, -0.348167, -0.879865,
		-0.503021, -0.724314, 0.471529,
		-0.380154, 1.500723, 3.575098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.133185, 2.322605, 4.097077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.914428, 2.082657, 4.330681>,  <3.783174, 1.938688, 4.470843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.914428, 2.082657, 4.330681>,  <4.133185, 2.322605, 4.097077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.914428, 2.082657, 4.330681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116506, -0.745315, -0.656454,
		0.829058, -0.290968, 0.477495,
		-0.546891, -0.599869, 0.584009,
		3.750361, 1.902696, 4.505884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.594242, 1.735296, 4.465153>,  <4.133185, 2.322605, 4.097077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.594242, 1.735296, 4.465153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.213254, 1.652634, 4.375626>,  <3.984662, 1.603036, 4.321909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.213254, 1.652634, 4.375626>,  <4.594242, 1.735296, 4.465153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.213254, 1.652634, 4.375626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302617, -0.726273, -0.617213,
		-0.035003, -0.655608, 0.754290,
		-0.952469, -0.206657, -0.223819,
		3.927514, 1.590637, 4.308480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.397820, 1.049772, 4.673962>,  <4.594242, 1.735296, 4.465153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.397820, 1.049772, 4.673962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237394, 1.196991, 4.338417>,  <4.141139, 1.285322, 4.137090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237394, 1.196991, 4.338417>,  <4.397820, 1.049772, 4.673962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.237394, 1.196991, 4.338417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479865, -0.695629, -0.534630,
		-0.780306, -0.616961, 0.102378,
		-0.401063, 0.368047, -0.838862,
		4.117074, 1.307405, 4.086759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939458, 0.593840, 4.319787>,  <4.397820, 1.049772, 4.673962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939458, 0.593840, 4.319787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.137871, 0.832001, 4.066978>,  <4.256918, 0.974897, 3.915293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.137871, 0.832001, 4.066978>,  <3.939458, 0.593840, 4.319787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.137871, 0.832001, 4.066978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506984, -0.789518, -0.345874,
		-0.704925, -0.148860, -0.693485,
		0.496032, 0.595401, -0.632021,
		4.286680, 1.010621, 3.877372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.942410, 0.287631, 3.627766>,  <3.939458, 0.593840, 4.319787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.942410, 0.287631, 3.627766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232985, 0.561386, 3.602776>,  <4.407330, 0.725639, 3.587781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232985, 0.561386, 3.602776>,  <3.942410, 0.287631, 3.627766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232985, 0.561386, 3.602776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576442, -0.656301, -0.486810,
		-0.374170, 0.317622, -0.871271,
		0.726438, 0.684387, -0.062477,
		4.450916, 0.766702, 3.584033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.234745, 0.204695, 3.013273>,  <3.942410, 0.287631, 3.627766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.234745, 0.204695, 3.013273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521161, 0.378601, 3.231728>,  <4.693011, 0.482945, 3.362800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521161, 0.378601, 3.231728>,  <4.234745, 0.204695, 3.013273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.521161, 0.378601, 3.231728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668777, -0.651474, -0.358215,
		0.200054, 0.621740, -0.757244,
		0.716042, 0.434765, 0.546135,
		4.735973, 0.509031, 3.395568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.709319, 0.098711, 2.614812>,  <4.234745, 0.204695, 3.013273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.709319, 0.098711, 2.614812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.919855, 0.202881, 2.938576>,  <5.046177, 0.265383, 3.132834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.919855, 0.202881, 2.938576>,  <4.709319, 0.098711, 2.614812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.919855, 0.202881, 2.938576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655104, -0.731054, -0.190785,
		0.542037, 0.630666, -0.555389,
		0.526341, 0.260425, 0.809410,
		5.077757, 0.281008, 3.181399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383884, 0.206470, 2.387710>,  <4.709319, 0.098711, 2.614812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383884, 0.206470, 2.387710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.413776, 0.125366, 2.778259>,  <5.431712, 0.076704, 3.012589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.413776, 0.125366, 2.778259>,  <5.383884, 0.206470, 2.387710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.413776, 0.125366, 2.778259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740022, -0.645014, -0.190588,
		0.668418, 0.736780, 0.101845,
		0.074730, -0.202761, 0.976373,
		5.436195, 0.064538, 3.071171>
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
