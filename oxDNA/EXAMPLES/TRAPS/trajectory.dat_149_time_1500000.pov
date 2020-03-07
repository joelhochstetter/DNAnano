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
	<35.970310, 52.905304, 50.213692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326710, 52.898781, 50.395172>,  <36.540550, 52.894867, 50.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326710, 52.898781, 50.395172>,  <35.970310, 52.905304, 50.213692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326710, 52.898781, 50.395172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285199, -0.797661, 0.531411,
		0.353235, -0.602885, -0.715371,
		0.891003, -0.016310, 0.453704,
		36.594009, 52.893887, 50.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306995, 52.200787, 50.246376>,  <35.970310, 52.905304, 50.213692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306995, 52.200787, 50.246376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406601, 52.403252, 50.576656>,  <36.466366, 52.524731, 50.774826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406601, 52.403252, 50.576656>,  <36.306995, 52.200787, 50.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406601, 52.403252, 50.576656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219821, -0.800771, 0.557176,
		0.943224, -0.320251, -0.088137,
		0.249014, 0.506167, 0.825704,
		36.481304, 52.555103, 50.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869549, 52.533474, 49.776428>,  <36.306995, 52.200787, 50.246376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869549, 52.533474, 49.776428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550732, 52.523670, 49.535057>,  <36.359444, 52.517788, 49.390236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550732, 52.523670, 49.535057>,  <36.869549, 52.533474, 49.776428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550732, 52.523670, 49.535057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502613, 0.527030, -0.685288,
		0.334822, -0.849493, -0.407744,
		-0.797041, -0.024513, -0.603428,
		36.311619, 52.516315, 49.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168648, 52.267448, 49.116039>,  <36.869549, 52.533474, 49.776428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168648, 52.267448, 49.116039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873711, 52.537464, 49.126259>,  <36.696751, 52.699474, 49.132393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873711, 52.537464, 49.126259>,  <37.168648, 52.267448, 49.116039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873711, 52.537464, 49.126259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621446, 0.692660, -0.366098,
		-0.264829, -0.254059, -0.930225,
		-0.737340, 0.675038, 0.025553,
		36.652508, 52.739975, 49.133926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173542, 52.618336, 48.635941>,  <37.168648, 52.267448, 49.116039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173542, 52.618336, 48.635941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960987, 52.884472, 48.845680>,  <36.833454, 53.044155, 48.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960987, 52.884472, 48.845680>,  <37.173542, 52.618336, 48.635941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960987, 52.884472, 48.845680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592919, 0.734204, -0.330744,
		-0.605040, 0.135146, -0.784641,
		-0.531388, 0.665342, 0.524354,
		36.801571, 53.084076, 49.002987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512192, 53.214554, 48.395515>,  <37.173542, 52.618336, 48.635941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512192, 53.214554, 48.395515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397320, 53.318039, 48.764427>,  <37.328396, 53.380131, 48.985775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397320, 53.318039, 48.764427>,  <37.512192, 53.214554, 48.395515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397320, 53.318039, 48.764427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953047, -0.019390, 0.302201,
		0.096065, 0.965761, -0.240993,
		-0.287181, 0.258709, 0.922278,
		37.311165, 53.395653, 49.041111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918072, 53.750076, 48.577332>,  <37.512192, 53.214554, 48.395515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918072, 53.750076, 48.577332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788849, 53.547981, 48.897423>,  <37.711315, 53.426723, 49.089478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788849, 53.547981, 48.897423>,  <37.918072, 53.750076, 48.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788849, 53.547981, 48.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917533, 0.039971, 0.395645,
		-0.231881, 0.862054, 0.450660,
		-0.323054, -0.505238, 0.800232,
		37.691933, 53.396408, 49.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236126, 54.343521, 48.848007>,  <37.918072, 53.750076, 48.577332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236126, 54.343521, 48.848007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167923, 54.332737, 48.454010>,  <38.127003, 54.326267, 48.217613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167923, 54.332737, 48.454010>,  <38.236126, 54.343521, 48.848007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167923, 54.332737, 48.454010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807146, 0.569557, -0.155306,
		0.565194, -0.821509, -0.075354,
		-0.170504, -0.026957, -0.984988,
		38.116772, 54.324650, 48.158512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603294, 54.876987, 48.467712>,  <38.236126, 54.343521, 48.848007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603294, 54.876987, 48.467712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987083, 54.988548, 48.451591>,  <39.217358, 55.055485, 48.441921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987083, 54.988548, 48.451591>,  <38.603294, 54.876987, 48.467712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987083, 54.988548, 48.451591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079944, 0.406534, 0.910132,
		0.270216, -0.870027, 0.412355,
		0.959475, 0.278898, -0.040299,
		39.274925, 55.072216, 48.439503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062096, 54.489761, 48.962116>,  <38.603294, 54.876987, 48.467712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062096, 54.489761, 48.962116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201584, 54.858257, 48.893162>,  <39.285275, 55.079353, 48.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201584, 54.858257, 48.893162>,  <39.062096, 54.489761, 48.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201584, 54.858257, 48.893162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231350, 0.262846, 0.936690,
		0.908225, -0.286760, 0.304788,
		0.348718, 0.921239, -0.172382,
		39.306198, 55.134628, 48.841446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502445, 54.549088, 49.534954>,  <39.062096, 54.489761, 48.962116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502445, 54.549088, 49.534954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429996, 54.925156, 49.419525>,  <39.386528, 55.150795, 49.350266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429996, 54.925156, 49.419525>,  <39.502445, 54.549088, 49.534954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429996, 54.925156, 49.419525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346344, 0.213651, 0.913455,
		0.920456, 0.265395, 0.286925,
		-0.181125, 0.940170, -0.288574,
		39.375660, 55.207207, 49.332954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876335, 55.118282, 49.223576>,  <39.502445, 54.549088, 49.534954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876335, 55.118282, 49.223576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187225, 55.079559, 49.472271>,  <40.373760, 55.056324, 49.621487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187225, 55.079559, 49.472271>,  <39.876335, 55.118282, 49.223576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187225, 55.079559, 49.472271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440131, -0.789784, 0.427230,
		0.449677, -0.605698, -0.656446,
		0.777223, -0.096807, 0.621734,
		40.420391, 55.050518, 49.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151718, 54.781704, 48.636459>,  <39.876335, 55.118282, 49.223576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151718, 54.781704, 48.636459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198978, 54.798653, 49.033295>,  <40.227337, 54.808823, 49.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198978, 54.798653, 49.033295>,  <40.151718, 54.781704, 48.636459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198978, 54.798653, 49.033295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892435, -0.442633, -0.087381,
		0.435430, 0.895701, -0.090111,
		0.118153, 0.042370, 0.992091,
		40.234425, 54.811363, 49.330921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721004, 55.277287, 48.848774>,  <40.151718, 54.781704, 48.636459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721004, 55.277287, 48.848774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655392, 54.969254, 49.095371>,  <40.616024, 54.784435, 49.243328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655392, 54.969254, 49.095371>,  <40.721004, 55.277287, 48.848774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655392, 54.969254, 49.095371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918581, -0.347057, -0.189106,
		0.359586, 0.535280, 0.764313,
		-0.164035, -0.770083, 0.616494,
		40.606182, 54.738228, 49.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426567, 55.013168, 49.171284>,  <40.721004, 55.277287, 48.848774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426567, 55.013168, 49.171284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142162, 54.735374, 49.215385>,  <40.971519, 54.568699, 49.241844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142162, 54.735374, 49.215385>,  <41.426567, 55.013168, 49.171284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142162, 54.735374, 49.215385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685923, -0.719505, -0.108735,
		0.154842, -0.001687, 0.987938,
		-0.711009, -0.694486, 0.110253,
		40.928860, 54.527027, 49.248463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974277, 55.429043, 49.139393>,  <41.426567, 55.013168, 49.171284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974277, 55.429043, 49.139393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344383, 55.496655, 49.003555>,  <42.566444, 55.537220, 48.922054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344383, 55.496655, 49.003555>,  <41.974277, 55.429043, 49.139393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344383, 55.496655, 49.003555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100684, 0.753695, 0.649466,
		0.365725, -0.635117, 0.680347,
		0.925261, 0.169026, -0.339591,
		42.621960, 55.547363, 48.901676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403301, 55.667381, 49.583946>,  <41.974277, 55.429043, 49.139393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403301, 55.667381, 49.583946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592163, 55.891384, 49.311634>,  <42.705479, 56.025787, 49.148247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592163, 55.891384, 49.311634>,  <42.403301, 55.667381, 49.583946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592163, 55.891384, 49.311634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117910, 0.805464, 0.580797,
		0.873596, -0.193953, 0.446332,
		0.472152, 0.560009, -0.680781,
		42.733810, 56.059387, 49.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938869, 56.106621, 49.841171>,  <42.403301, 55.667381, 49.583946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938869, 56.106621, 49.841171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806080, 56.284966, 49.508667>,  <42.726406, 56.391972, 49.309166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806080, 56.284966, 49.508667>,  <42.938869, 56.106621, 49.841171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806080, 56.284966, 49.508667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143838, 0.847006, 0.511754,
		0.932257, 0.289457, -0.217053,
		-0.331976, 0.445865, -0.831262,
		42.706486, 56.418724, 49.259289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289146, 55.588791, 50.276443>,  <42.938869, 56.106621, 49.841171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289146, 55.588791, 50.276443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627136, 55.786884, 50.357201>,  <43.829929, 55.905739, 50.405655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627136, 55.786884, 50.357201>,  <43.289146, 55.588791, 50.276443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627136, 55.786884, 50.357201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496586, -0.866682, 0.047593,
		0.198550, 0.060044, -0.978250,
		0.844974, 0.495234, 0.201897,
		43.880627, 55.935455, 50.417770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757648, 55.047726, 50.135944>,  <43.289146, 55.588791, 50.276443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757648, 55.047726, 50.135944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958241, 55.330372, 50.335632>,  <44.078598, 55.499958, 50.455444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958241, 55.330372, 50.335632>,  <43.757648, 55.047726, 50.135944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958241, 55.330372, 50.335632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689262, -0.675051, 0.263105,
		0.522909, 0.212148, -0.825566,
		0.501482, 0.706611, 0.499216,
		44.108685, 55.542355, 50.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380001, 54.935013, 49.966545>,  <43.757648, 55.047726, 50.135944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380001, 54.935013, 49.966545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372559, 55.076954, 50.340439>,  <44.368092, 55.162117, 50.564777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372559, 55.076954, 50.340439>,  <44.380001, 54.935013, 49.966545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372559, 55.076954, 50.340439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491299, -0.810999, 0.317656,
		0.870792, 0.465148, -0.159244,
		-0.018611, 0.354849, 0.934738,
		44.366974, 55.183407, 50.620861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007526, 54.787983, 50.250801>,  <44.380001, 54.935013, 49.966545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007526, 54.787983, 50.250801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777382, 54.840401, 50.573734>,  <44.639294, 54.871853, 50.767494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777382, 54.840401, 50.573734>,  <45.007526, 54.787983, 50.250801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777382, 54.840401, 50.573734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431143, -0.790206, 0.435534,
		0.695033, 0.598665, 0.398156,
		-0.575365, 0.131049, 0.807330,
		44.604771, 54.879715, 50.815933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415592, 54.530373, 50.804111>,  <45.007526, 54.787983, 50.250801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415592, 54.530373, 50.804111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053905, 54.517654, 50.974468>,  <44.836895, 54.510021, 51.076683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053905, 54.517654, 50.974468>,  <45.415592, 54.530373, 50.804111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053905, 54.517654, 50.974468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261157, -0.830222, 0.492472,
		0.337928, 0.556526, 0.759002,
		-0.904213, -0.031799, 0.425896,
		44.782642, 54.508114, 51.102238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931835, 54.598026, 51.339947>,  <45.415592, 54.530373, 50.804111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931835, 54.598026, 51.339947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822323, 54.306984, 51.591545>,  <45.756615, 54.132359, 51.742504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822323, 54.306984, 51.591545>,  <45.931835, 54.598026, 51.339947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822323, 54.306984, 51.591545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903221, 0.030231, 0.428109,
		-0.330511, 0.685326, 0.648915,
		-0.273777, -0.727609, 0.628993,
		45.740189, 54.088703, 51.780243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886593, 54.725811, 52.071091>,  <45.931835, 54.598026, 51.339947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886593, 54.725811, 52.071091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987831, 54.342285, 52.019531>,  <46.048576, 54.112171, 51.988594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987831, 54.342285, 52.019531>,  <45.886593, 54.725811, 52.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987831, 54.342285, 52.019531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887362, 0.176999, 0.425746,
		-0.385395, -0.222139, 0.895614,
		0.253098, -0.958815, -0.128903,
		46.063759, 54.054642, 51.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497608, 54.725037, 52.310555>,  <45.886593, 54.725811, 52.071091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497608, 54.725037, 52.310555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543995, 54.344269, 52.197140>,  <46.571827, 54.115807, 52.129093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543995, 54.344269, 52.197140>,  <46.497608, 54.725037, 52.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543995, 54.344269, 52.197140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922312, -0.002743, 0.386435,
		-0.368635, -0.306321, 0.877653,
		0.115966, -0.951924, -0.283535,
		46.578785, 54.058693, 52.112080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032310, 54.498650, 52.717037>,  <46.497608, 54.725037, 52.310555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032310, 54.498650, 52.717037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014008, 54.212330, 52.438316>,  <47.003025, 54.040539, 52.271084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014008, 54.212330, 52.438316>,  <47.032310, 54.498650, 52.717037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014008, 54.212330, 52.438316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942150, -0.262782, 0.208084,
		-0.332054, -0.646972, 0.686416,
		-0.045754, -0.715802, -0.696802,
		47.000282, 53.997589, 52.229275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340744, 53.855747, 53.007896>,  <47.032310, 54.498650, 52.717037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340744, 53.855747, 53.007896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368511, 53.939274, 52.617702>,  <47.385170, 53.989391, 52.383587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368511, 53.939274, 52.617702>,  <47.340744, 53.855747, 53.007896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368511, 53.939274, 52.617702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991027, -0.126397, 0.043462,
		-0.114223, -0.969752, -0.215720,
		0.069414, 0.208820, -0.975488,
		47.389336, 54.001919, 52.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.976517, 53.588287, 52.755054>,  <47.340744, 53.855747, 53.007896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.976517, 53.588287, 52.755054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936550, 53.870476, 52.474388>,  <47.912571, 54.039787, 52.305988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936550, 53.870476, 52.474388>,  <47.976517, 53.588287, 52.755054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.936550, 53.870476, 52.474388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994776, 0.055994, -0.085353,
		-0.020925, -0.706528, -0.707376,
		-0.099914, 0.705467, -0.701665,
		47.906574, 54.082115, 52.263889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.334007, 53.451382, 52.133537>,  <47.976517, 53.588287, 52.755054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.334007, 53.451382, 52.133537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.306293, 53.843933, 52.205200>,  <48.289665, 54.079464, 52.248199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.306293, 53.843933, 52.205200>,  <48.334007, 53.451382, 52.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.306293, 53.843933, 52.205200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997590, 0.067470, 0.016187,
		0.003798, 0.179848, -0.983687,
		-0.069280, 0.981378, 0.179158,
		48.285511, 54.138348, 52.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.815075, 53.906792, 51.739857>,  <48.334007, 53.451382, 52.133537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.815075, 53.906792, 51.739857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.705921, 54.142094, 52.044353>,  <48.640427, 54.283276, 52.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.705921, 54.142094, 52.044353>,  <48.815075, 53.906792, 51.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.705921, 54.142094, 52.044353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933795, 0.352310, 0.062494,
		-0.231431, 0.727898, -0.645448,
		-0.272887, 0.588253, 0.761243,
		48.624054, 54.318569, 52.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.091877, 54.629440, 51.606037>,  <48.815075, 53.906792, 51.739857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.091877, 54.629440, 51.606037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058033, 54.564129, 51.999214>,  <49.037727, 54.524940, 52.235123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058033, 54.564129, 51.999214>,  <49.091877, 54.629440, 51.606037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.058033, 54.564129, 51.999214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919550, 0.367134, 0.140140,
		-0.383755, 0.915724, 0.119082,
		-0.084610, -0.163282, 0.982945,
		49.032650, 54.515144, 52.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.273205, 55.222710, 51.916027>,  <49.091877, 54.629440, 51.606037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.273205, 55.222710, 51.916027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.336094, 54.899792, 52.143555>,  <49.373825, 54.706039, 52.280071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.336094, 54.899792, 52.143555>,  <49.273205, 55.222710, 51.916027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.336094, 54.899792, 52.143555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916495, 0.333820, 0.220456,
		-0.367857, 0.486662, 0.792364,
		0.157219, -0.807294, 0.568821,
		49.383259, 54.657604, 52.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.481716, 55.376698, 52.481255>,  <49.273205, 55.222710, 51.916027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.481716, 55.376698, 52.481255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.630226, 55.006599, 52.450054>,  <49.719330, 54.784542, 52.431332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.630226, 55.006599, 52.450054>,  <49.481716, 55.376698, 52.481255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.630226, 55.006599, 52.450054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925871, 0.375249, -0.044173,
		0.070142, -0.055822, 0.995974,
		0.371272, -0.925242, -0.078004,
		49.741608, 54.729027, 52.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.133240, 55.236252, 52.926453>,  <49.481716, 55.376698, 52.481255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.133240, 55.236252, 52.926453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.136654, 55.004921, 52.600151>,  <50.138702, 54.866123, 52.404369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.136654, 55.004921, 52.600151>,  <50.133240, 55.236252, 52.926453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.136654, 55.004921, 52.600151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961042, 0.230129, -0.153094,
		0.276268, -0.782671, 0.557765,
		0.008536, -0.578331, -0.815758,
		50.139214, 54.831421, 52.355423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.528309, 54.565407, 52.894901>,  <50.133240, 55.236252, 52.926453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.528309, 54.565407, 52.894901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.508518, 54.708694, 52.521973>,  <50.496643, 54.794666, 52.298214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.508518, 54.708694, 52.521973>,  <50.528309, 54.565407, 52.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.508518, 54.708694, 52.521973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997689, 0.061246, -0.029418,
		0.046563, -0.931625, -0.360426,
		-0.049481, 0.358223, -0.932324,
		50.493675, 54.816162, 52.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.016228, 54.217571, 52.446224>,  <50.528309, 54.565407, 52.894901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.016228, 54.217571, 52.446224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.928894, 54.580364, 52.302158>,  <50.876495, 54.798038, 52.215721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.928894, 54.580364, 52.302158>,  <51.016228, 54.217571, 52.446224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.928894, 54.580364, 52.302158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967812, 0.153902, -0.199135,
		-0.125183, -0.392045, -0.911389,
		-0.218334, 0.906981, -0.360160,
		50.863392, 54.852459, 52.194111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.574871, 54.384361, 51.842453>,  <51.016228, 54.217571, 52.446224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.574871, 54.384361, 51.842453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.469391, 54.766098, 51.898590>,  <51.406101, 54.995140, 51.932274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.469391, 54.766098, 51.898590>,  <51.574871, 54.384361, 51.842453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.469391, 54.766098, 51.898590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914622, 0.293602, -0.277965,
		-0.306479, 0.055065, -0.950283,
		-0.263700, 0.954340, 0.140346,
		51.390282, 55.052399, 51.940693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.739590, 54.850903, 51.196239>,  <51.574871, 54.384361, 51.842453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.739590, 54.850903, 51.196239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.776005, 55.088615, 51.515873>,  <51.797855, 55.231243, 51.707653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.776005, 55.088615, 51.515873>,  <51.739590, 54.850903, 51.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.776005, 55.088615, 51.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915823, 0.265194, -0.301564,
		-0.391128, 0.759274, -0.520117,
		0.091037, 0.594285, 0.799085,
		51.803314, 55.266899, 51.755600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.016399, 55.530174, 50.993652>,  <51.739590, 54.850903, 51.196239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.016399, 55.530174, 50.993652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.070580, 55.485676, 51.387459>,  <52.103088, 55.458977, 51.623745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.070580, 55.485676, 51.387459>,  <52.016399, 55.530174, 50.993652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.070580, 55.485676, 51.387459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971022, 0.212379, -0.109595,
		-0.196899, 0.970834, 0.136791,
		0.135450, -0.111248, 0.984519,
		52.111214, 55.452301, 51.682816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.326630, 56.107903, 51.338879>,  <52.016399, 55.530174, 50.993652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.326630, 56.107903, 51.338879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.416721, 55.780716, 51.550613>,  <52.470776, 55.584404, 51.677654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.416721, 55.780716, 51.550613>,  <52.326630, 56.107903, 51.338879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.416721, 55.780716, 51.550613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964928, 0.262468, -0.004991,
		-0.134852, 0.511896, 0.848397,
		0.225232, -0.817969, 0.529337,
		52.484291, 55.535324, 51.709415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.669277, 56.236877, 51.938694>,  <52.326630, 56.107903, 51.338879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.669277, 56.236877, 51.938694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.769798, 55.860100, 51.849617>,  <52.830112, 55.634033, 51.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.769798, 55.860100, 51.849617>,  <52.669277, 56.236877, 51.938694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.769798, 55.860100, 51.849617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963002, 0.266459, -0.040336,
		0.097332, -0.204314, 0.974055,
		0.251305, -0.941942, -0.222690,
		52.845188, 55.577518, 51.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.156925, 55.846653, 52.412056>,  <52.669277, 56.236877, 51.938694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.156925, 55.846653, 52.412056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.210361, 55.689735, 52.048019>,  <53.242424, 55.595585, 51.829597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.210361, 55.689735, 52.048019>,  <53.156925, 55.846653, 52.412056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.210361, 55.689735, 52.048019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958122, 0.285827, 0.017435,
		0.253288, -0.874305, 0.414048,
		0.133589, -0.392292, -0.910088,
		53.250439, 55.572048, 51.774994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.793247, 55.814415, 52.273792>,  <53.156925, 55.846653, 52.412056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.793247, 55.814415, 52.273792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.715172, 55.834732, 51.882011>,  <53.668327, 55.846920, 51.646942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.715172, 55.834732, 51.882011>,  <53.793247, 55.814415, 52.273792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.715172, 55.834732, 51.882011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912627, 0.375144, -0.162415,
		0.359186, -0.925574, -0.119573,
		-0.195185, 0.050789, -0.979451,
		53.656616, 55.849968, 51.588177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.257889, 55.383572, 51.897007>,  <53.793247, 55.814415, 52.273792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.257889, 55.383572, 51.897007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.144417, 55.686470, 51.661686>,  <54.076332, 55.868210, 51.520493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.144417, 55.686470, 51.661686>,  <54.257889, 55.383572, 51.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.144417, 55.686470, 51.661686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958697, 0.237164, -0.157016,
		0.020624, -0.608546, -0.793250,
		-0.283682, 0.757248, -0.588303,
		54.059311, 55.913643, 51.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.558327, 55.427711, 51.287647>,  <54.257889, 55.383572, 51.897007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.558327, 55.427711, 51.287647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.451065, 55.805683, 51.362694>,  <54.386707, 56.032467, 51.407722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.451065, 55.805683, 51.362694>,  <54.558327, 55.427711, 51.287647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.451065, 55.805683, 51.362694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963263, 0.260006, 0.067247,
		0.014762, 0.198756, -0.979938,
		-0.268155, 0.944930, 0.187616,
		54.370617, 56.089161, 51.418980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.948311, 55.852100, 50.818684>,  <54.558327, 55.427711, 51.287647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.948311, 55.852100, 50.818684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845299, 56.056492, 51.146729>,  <54.783493, 56.179127, 51.343555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845299, 56.056492, 51.146729>,  <54.948311, 55.852100, 50.818684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.845299, 56.056492, 51.146729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950519, 0.286589, 0.119918,
		-0.173759, 0.810411, -0.559501,
		-0.257530, 0.510979, 0.820109,
		54.768040, 56.209785, 51.392761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.483822, 56.359356, 50.845383>,  <54.948311, 55.852100, 50.818684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.483822, 56.359356, 50.845383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.319382, 56.347252, 51.209816>,  <55.220718, 56.339989, 51.428478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.319382, 56.347252, 51.209816>,  <55.483822, 56.359356, 50.845383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.319382, 56.347252, 51.209816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876980, 0.259649, 0.404337,
		-0.248800, 0.965229, -0.080201,
		-0.411102, -0.030264, 0.911087,
		55.196053, 56.338173, 51.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.595127, 57.043480, 51.123947>,  <55.483822, 56.359356, 50.845383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.595127, 57.043480, 51.123947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.552322, 56.741920, 51.383232>,  <55.526642, 56.560986, 51.538803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.552322, 56.741920, 51.383232>,  <55.595127, 57.043480, 51.123947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.552322, 56.741920, 51.383232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939706, 0.136300, 0.313648,
		-0.324812, 0.642696, 0.693858,
		-0.107007, -0.753899, 0.648217,
		55.520222, 56.515751, 51.577698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.960072, 57.253460, 51.750668>,  <55.595127, 57.043480, 51.123947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.960072, 57.253460, 51.750668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.948013, 56.854092, 51.731689>,  <55.940777, 56.614471, 51.720303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.948013, 56.854092, 51.731689>,  <55.960072, 57.253460, 51.750668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.948013, 56.854092, 51.731689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968104, -0.040979, 0.247176,
		-0.248729, -0.038476, 0.967809,
		-0.030150, -0.998419, -0.047441,
		55.938969, 56.554565, 51.717457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.228741, 56.955845, 52.331326>,  <55.960072, 57.253460, 51.750668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.228741, 56.955845, 52.331326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.329308, 56.686543, 52.053185>,  <56.389648, 56.524960, 51.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.329308, 56.686543, 52.053185>,  <56.228741, 56.955845, 52.331326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.329308, 56.686543, 52.053185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939815, -0.001935, 0.341679,
		-0.231384, -0.739403, 0.632254,
		0.251415, -0.673260, -0.695350,
		56.404732, 56.484566, 51.844578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.533661, 56.262451, 52.652138>,  <56.228741, 56.955845, 52.331326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.533661, 56.262451, 52.652138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.689690, 56.393944, 52.308098>,  <56.783306, 56.472839, 52.101673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.689690, 56.393944, 52.308098>,  <56.533661, 56.262451, 52.652138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.689690, 56.393944, 52.308098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917115, -0.055415, 0.394751,
		0.082105, -0.942796, -0.323101,
		0.390074, 0.328732, -0.860103,
		56.806713, 56.492561, 52.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.065609, 55.925083, 52.442326>,  <56.533661, 56.262451, 52.652138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.065609, 55.925083, 52.442326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.169426, 56.297337, 52.339127>,  <57.231716, 56.520687, 52.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.169426, 56.297337, 52.339127>,  <57.065609, 55.925083, 52.442326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.169426, 56.297337, 52.339127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860944, -0.101941, 0.498381,
		0.437507, -0.351475, -0.827679,
		0.259543, 0.930630, -0.258001,
		57.247288, 56.576527, 52.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.712265, 55.925987, 51.991425>,  <57.065609, 55.925083, 52.442326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.712265, 55.925987, 51.991425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670105, 56.251923, 52.219437>,  <57.644810, 56.447483, 52.356243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670105, 56.251923, 52.219437>,  <57.712265, 55.925987, 51.991425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.670105, 56.251923, 52.219437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930268, -0.121770, 0.346083,
		0.351413, 0.566759, -0.745180,
		-0.105405, 0.814835, 0.570029,
		57.638485, 56.496372, 52.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.251354, 56.420158, 51.920120>,  <57.712265, 55.925987, 51.991425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.251354, 56.420158, 51.920120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.115257, 56.508659, 52.285694>,  <58.033600, 56.561760, 52.505039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.115257, 56.508659, 52.285694>,  <58.251354, 56.420158, 51.920120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.115257, 56.508659, 52.285694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931236, -0.055612, 0.360148,
		0.130509, 0.973630, -0.187114,
		-0.340245, 0.221250, 0.913937,
		58.013184, 56.575035, 52.559875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.664967, 56.926285, 52.215656>,  <58.251354, 56.420158, 51.920120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.664967, 56.926285, 52.215656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521248, 56.704971, 52.516266>,  <58.435017, 56.572182, 52.696632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521248, 56.704971, 52.516266>,  <58.664967, 56.926285, 52.215656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.521248, 56.704971, 52.516266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920948, -0.080032, 0.381380,
		-0.150865, 0.829139, 0.538301,
		-0.359298, -0.553284, 0.751520,
		58.413460, 56.538986, 52.741722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.941551, 56.149895, 52.071239>,  <58.664967, 56.926285, 52.215656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.941551, 56.149895, 52.071239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.997513, 56.488762, 51.866211>,  <59.031090, 56.692081, 51.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.997513, 56.488762, 51.866211>,  <58.941551, 56.149895, 52.071239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.997513, 56.488762, 51.866211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635368, 0.320230, 0.702680,
		0.759431, -0.423979, -0.493464,
		0.139900, 0.847168, -0.512575,
		59.039482, 56.742912, 51.712437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.189213, 55.595860, 51.547176>,  <58.941551, 56.149895, 52.071239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.189213, 55.595860, 51.547176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.286713, 55.343292, 51.252720>,  <59.345211, 55.191753, 51.076046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.286713, 55.343292, 51.252720>,  <59.189213, 55.595860, 51.547176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.286713, 55.343292, 51.252720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660536, 0.663854, -0.350701,
		0.710128, -0.400765, 0.578883,
		0.243745, -0.631416, -0.736140,
		59.359837, 55.153866, 51.031879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.903152, 55.489162, 51.444542>,  <59.189213, 55.595860, 51.547176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.903152, 55.489162, 51.444542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.728401, 55.499313, 51.084877>,  <59.623550, 55.505405, 50.869080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.728401, 55.499313, 51.084877>,  <59.903152, 55.489162, 51.444542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.728401, 55.499313, 51.084877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663802, 0.683680, -0.303231,
		0.607043, -0.729341, -0.315533,
		-0.436882, 0.025377, -0.899161,
		59.597336, 55.506927, 50.815128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.399704, 55.363255, 50.932186>,  <59.903152, 55.489162, 51.444542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.399704, 55.363255, 50.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.102783, 55.578079, 50.771915>,  <59.924629, 55.706974, 50.675751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.102783, 55.578079, 50.771915>,  <60.399704, 55.363255, 50.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.102783, 55.578079, 50.771915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665193, 0.662599, -0.344211,
		0.080626, -0.522038, -0.849103,
		-0.742306, 0.537065, -0.400679,
		59.880093, 55.739197, 50.651711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.992191, 55.326935, 51.154560>,  <60.399704, 55.363255, 50.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.992191, 55.326935, 51.154560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.023140, 54.986084, 51.361591>,  <61.041710, 54.781574, 51.485809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.023140, 54.986084, 51.361591>,  <60.992191, 55.326935, 51.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.023140, 54.986084, 51.361591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818583, -0.350649, -0.454937,
		0.569155, -0.388485, -0.724667,
		0.077367, -0.852130, 0.517580,
		61.046349, 54.730446, 51.516865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.896469, 55.995502, 50.716331>,  <60.992191, 55.326935, 51.154560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.896469, 55.995502, 50.716331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.600471, 55.931282, 50.977600>,  <60.422874, 55.892750, 51.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.600471, 55.931282, 50.977600>,  <60.896469, 55.995502, 50.716331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.600471, 55.931282, 50.977600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518191, 0.483043, 0.705796,
		-0.428827, 0.860752, -0.274253,
		-0.739991, -0.160549, 0.653175,
		60.378475, 55.883118, 51.173553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.751305, 56.633904, 50.960323>,  <60.896469, 55.995502, 50.716331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.751305, 56.633904, 50.960323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.630280, 56.391178, 51.254326>,  <60.557663, 56.245544, 51.430729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.630280, 56.391178, 51.254326>,  <60.751305, 56.633904, 50.960323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.630280, 56.391178, 51.254326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589016, 0.487237, 0.644717,
		-0.749344, 0.627999, 0.210001,
		-0.302562, -0.606809, 0.735010,
		60.539513, 56.209137, 51.474831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.604160, 57.230324, 51.523594>,  <60.751305, 56.633904, 50.960323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.604160, 57.230324, 51.523594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.669373, 56.864632, 51.671978>,  <60.708500, 56.645218, 51.761009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.669373, 56.864632, 51.671978>,  <60.604160, 57.230324, 51.523594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.669373, 56.864632, 51.671978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604641, 0.389690, 0.694659,
		-0.779634, 0.111043, 0.616312,
		0.163034, -0.914227, 0.370957,
		60.718285, 56.590363, 51.783264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.795109, 57.366241, 52.265484>,  <60.604160, 57.230324, 51.523594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.795109, 57.366241, 52.265484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947708, 57.018192, 52.140678>,  <61.039268, 56.809364, 52.065796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947708, 57.018192, 52.140678>,  <60.795109, 57.366241, 52.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.947708, 57.018192, 52.140678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784683, 0.126418, 0.606870,
		-0.488604, -0.476351, 0.730996,
		0.381495, -0.870119, -0.312016,
		61.062157, 56.757156, 52.047073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.210754, 57.313614, 52.858177>,  <60.795109, 57.366241, 52.265484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.210754, 57.313614, 52.858177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.536057, 57.100666, 52.952156>,  <61.731236, 56.972897, 53.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.536057, 57.100666, 52.952156>,  <61.210754, 57.313614, 52.858177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.536057, 57.100666, 52.952156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570082, 0.809888, -0.138161,
		-0.116730, 0.246300, 0.962139,
		0.813253, -0.532370, 0.234949,
		61.780033, 56.940956, 53.022640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.610893, 57.614994, 53.407589>,  <61.210754, 57.313614, 52.858177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.610893, 57.614994, 53.407589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861290, 57.428482, 53.157562>,  <62.011528, 57.316574, 53.007545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861290, 57.428482, 53.157562>,  <61.610893, 57.614994, 53.407589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.861290, 57.428482, 53.157562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500004, 0.855097, -0.137135,
		0.598439, -0.226691, 0.768428,
		0.625993, -0.466284, -0.625070,
		62.049088, 57.288597, 52.970043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.400867, 57.518013, 53.584759>,  <61.610893, 57.614994, 53.407589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.400867, 57.518013, 53.584759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.333344, 57.559113, 53.192646>,  <62.292828, 57.583771, 52.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.333344, 57.559113, 53.192646>,  <62.400867, 57.518013, 53.584759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.333344, 57.559113, 53.192646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510793, 0.859701, 0.002143,
		0.842967, -0.500357, -0.197611,
		-0.168814, 0.102745, -0.980278,
		62.282700, 57.589935, 52.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.825768, 57.062546, 53.283718>,  <62.400867, 57.518013, 53.584759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.825768, 57.062546, 53.283718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.017036, 57.214909, 53.600266>,  <63.131798, 57.306328, 53.790192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.017036, 57.214909, 53.600266>,  <62.825768, 57.062546, 53.283718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.017036, 57.214909, 53.600266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381626, -0.901659, 0.203404,
		0.791020, 0.204743, -0.576514,
		0.478173, 0.380909, 0.791365,
		63.160488, 57.329182, 53.837673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.620529, 57.079868, 53.236614>,  <62.825768, 57.062546, 53.283718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.620529, 57.079868, 53.236614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.457924, 56.996090, 53.592339>,  <63.360359, 56.945824, 53.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.457924, 56.996090, 53.592339>,  <63.620529, 57.079868, 53.236614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.457924, 56.996090, 53.592339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365998, -0.929188, -0.051534,
		0.837133, 0.304538, 0.454384,
		-0.406514, -0.209444, 0.889314,
		63.335968, 56.933258, 53.859131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.147568, 56.853081, 53.879669>,  <63.620529, 57.079868, 53.236614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.147568, 56.853081, 53.879669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772842, 56.713837, 53.865803>,  <63.548008, 56.630291, 53.857483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772842, 56.713837, 53.865803>,  <64.147568, 56.853081, 53.879669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.772842, 56.713837, 53.865803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349721, -0.929392, -0.118006,
		0.008858, -0.122675, 0.992407,
		-0.936812, -0.348111, -0.034670,
		63.491798, 56.609402, 53.855400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.036057, 56.387020, 54.375549>,  <64.147568, 56.853081, 53.879669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.036057, 56.387020, 54.375549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.828880, 56.324860, 54.039078>,  <63.704575, 56.287563, 53.837193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.828880, 56.324860, 54.039078>,  <64.036057, 56.387020, 54.375549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.828880, 56.324860, 54.039078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392769, -0.916777, -0.072474,
		-0.759915, -0.367928, 0.535872,
		-0.517940, -0.155400, -0.841183,
		63.673500, 56.278240, 53.786724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.520241, 56.130398, 54.877831>,  <64.036057, 56.387020, 54.375549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.520241, 56.130398, 54.877831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.683243, 56.456707, 54.713654>,  <64.781044, 56.652493, 54.615147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.683243, 56.456707, 54.713654>,  <64.520241, 56.130398, 54.877831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.683243, 56.456707, 54.713654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308943, 0.546099, 0.778672,
		0.859360, -0.190503, 0.474561,
		0.407497, 0.815772, -0.410441,
		64.805489, 56.701439, 54.590523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.060921, 56.283470, 55.231216>,  <64.520241, 56.130398, 54.877831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.060921, 56.283470, 55.231216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.926003, 56.618301, 55.058922>,  <64.845055, 56.819199, 54.955544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.926003, 56.618301, 55.058922>,  <65.060921, 56.283470, 55.231216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.926003, 56.618301, 55.058922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093553, 0.425484, 0.900118,
		0.936739, 0.343903, -0.065203,
		-0.337296, 0.837075, -0.430741,
		64.824814, 56.869423, 54.929699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.365990, 56.992165, 55.460426>,  <65.060921, 56.283470, 55.231216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.365990, 56.992165, 55.460426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.990318, 57.054081, 55.337807>,  <64.764915, 57.091228, 55.264236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.990318, 57.054081, 55.337807>,  <65.365990, 56.992165, 55.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.990318, 57.054081, 55.337807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203406, 0.468481, 0.859739,
		0.276690, 0.869808, -0.408505,
		-0.939185, 0.154788, -0.306548,
		64.708565, 57.100517, 55.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.168861, 57.738045, 55.201351>,  <65.365990, 56.992165, 55.460426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.168861, 57.738045, 55.201351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.896721, 57.504574, 55.378639>,  <64.733437, 57.364491, 55.485012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.896721, 57.504574, 55.378639>,  <65.168861, 57.738045, 55.201351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.896721, 57.504574, 55.378639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237586, 0.396446, 0.886782,
		-0.693307, 0.708627, -0.131050,
		-0.680352, -0.583677, 0.443219,
		64.692612, 57.329472, 55.511604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.650139, 58.183231, 55.501919>,  <65.168861, 57.738045, 55.201351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.650139, 58.183231, 55.501919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.690819, 57.847656, 55.715775>,  <64.715225, 57.646309, 55.844086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.690819, 57.847656, 55.715775>,  <64.650139, 58.183231, 55.501919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.690819, 57.847656, 55.715775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396300, 0.527104, 0.751736,
		-0.912472, 0.135427, 0.386077,
		0.101697, -0.838940, 0.534637,
		64.721329, 57.595974, 55.876167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.283524, 58.198135, 56.163322>,  <64.650139, 58.183231, 55.501919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.283524, 58.198135, 56.163322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.624268, 57.990311, 56.189842>,  <64.828712, 57.865616, 56.205753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.624268, 57.990311, 56.189842>,  <64.283524, 58.198135, 56.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.624268, 57.990311, 56.189842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209876, 0.454574, 0.865630,
		-0.479885, -0.723478, 0.496275,
		0.851858, -0.519559, 0.066303,
		64.879822, 57.834442, 56.209732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.517876, 58.108051, 56.891472>,  <64.283524, 58.198135, 56.163322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.517876, 58.108051, 56.891472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.843887, 58.026928, 56.674362>,  <65.039497, 57.978252, 56.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.843887, 58.026928, 56.674362>,  <64.517876, 58.108051, 56.891472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.843887, 58.026928, 56.674362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567540, 0.468170, 0.677286,
		0.116750, -0.860050, 0.496672,
		0.815027, -0.202808, -0.542771,
		65.088394, 57.966087, 56.511532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.148361, 57.937382, 57.185776>,  <64.517876, 58.108051, 56.891472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.148361, 57.937382, 57.185776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269180, 58.147301, 56.867439>,  <65.341675, 58.273251, 56.676437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269180, 58.147301, 56.867439>,  <65.148361, 57.937382, 57.185776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.269180, 58.147301, 56.867439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373977, 0.702677, 0.605299,
		0.876874, -0.480454, 0.015981,
		0.302048, 0.524794, -0.795838,
		65.359795, 58.304741, 56.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.795341, 58.263233, 57.333912>,  <65.148361, 57.937382, 57.185776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.795341, 58.263233, 57.333912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.589546, 58.499413, 57.085182>,  <65.466072, 58.641121, 56.935944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.589546, 58.499413, 57.085182>,  <65.795341, 58.263233, 57.333912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.589546, 58.499413, 57.085182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219256, 0.791641, 0.570290,
		0.828995, 0.157066, -0.536748,
		-0.514485, 0.590453, -0.621829,
		65.435204, 58.676548, 56.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.297134, 58.871929, 57.138729>,  <65.795341, 58.263233, 57.333912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.297134, 58.871929, 57.138729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.899544, 58.911110, 57.158363>,  <65.660988, 58.934616, 57.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.899544, 58.911110, 57.158363>,  <66.297134, 58.871929, 57.138729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.899544, 58.911110, 57.158363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106814, 0.766706, 0.633051,
		0.024374, 0.634483, -0.772552,
		-0.993980, 0.097949, 0.049084,
		65.601349, 58.940495, 57.173088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.532852, 58.087872, 57.066166>,  <66.297134, 58.871929, 57.138729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.532852, 58.087872, 57.066166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.464516, 57.795513, 57.330467>,  <66.423515, 57.620098, 57.489048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.464516, 57.795513, 57.330467>,  <66.532852, 58.087872, 57.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.464516, 57.795513, 57.330467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951129, 0.052737, 0.304256,
		-0.257227, 0.680444, 0.686171,
		-0.170843, -0.730900, 0.660756,
		66.413261, 57.576244, 57.528694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.841705, 58.363888, 57.666325>,  <66.532852, 58.087872, 57.066166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.841705, 58.363888, 57.666325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.846512, 57.965416, 57.700920>,  <66.849396, 57.726334, 57.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.846512, 57.965416, 57.700920>,  <66.841705, 58.363888, 57.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.846512, 57.965416, 57.700920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965350, 0.034113, 0.258718,
		-0.260680, 0.080377, 0.962074,
		0.012024, -0.996181, 0.086484,
		66.850121, 57.666561, 57.726864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.319946, 58.621723, 57.067917>,  <66.841705, 58.363888, 57.666325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.319946, 58.621723, 57.067917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.355042, 59.001228, 56.946495>,  <67.376099, 59.228931, 56.873642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.355042, 59.001228, 56.946495>,  <67.319946, 58.621723, 57.067917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.355042, 59.001228, 56.946495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973564, -0.017148, 0.227771,
		0.210896, -0.315514, -0.925189,
		0.087730, 0.948766, -0.303557,
		67.381363, 59.285858, 56.855427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.826431, 58.598892, 56.695980>,  <67.319946, 58.621723, 57.067917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.826431, 58.598892, 56.695980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.794144, 58.986324, 56.790077>,  <67.774773, 59.218784, 56.846535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.794144, 58.986324, 56.790077>,  <67.826431, 58.598892, 56.695980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.794144, 58.986324, 56.790077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992783, 0.099127, -0.067501,
		-0.088699, 0.228095, -0.969590,
		-0.080716, 0.968580, 0.235241,
		67.769928, 59.276897, 56.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.324471, 58.918129, 56.423351>,  <67.826431, 58.598892, 56.695980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.324471, 58.918129, 56.423351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254005, 59.154278, 56.738419>,  <68.211731, 59.295967, 56.927460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254005, 59.154278, 56.738419>,  <68.324471, 58.918129, 56.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.254005, 59.154278, 56.738419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980778, 0.173489, 0.089314,
		-0.083924, 0.788264, -0.609588,
		-0.176160, 0.590374, 0.787671,
		68.201157, 59.331390, 56.974720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.562935, 59.618038, 56.408432>,  <68.324471, 58.918129, 56.423351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.562935, 59.618038, 56.408432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.562744, 59.447956, 56.770470>,  <68.562630, 59.345909, 56.987694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.562744, 59.447956, 56.770470>,  <68.562935, 59.618038, 56.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.562744, 59.447956, 56.770470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990261, 0.125809, 0.059622,
		-0.139221, 0.896311, 0.421003,
		-0.000474, -0.425203, 0.905098,
		68.562599, 59.320396, 57.042000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.965263, 60.003807, 56.951340>,  <68.562935, 59.618038, 56.408432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.965263, 60.003807, 56.951340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.995552, 59.608273, 57.002686>,  <69.013725, 59.370953, 57.033493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.995552, 59.608273, 57.002686>,  <68.965263, 60.003807, 56.951340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.995552, 59.608273, 57.002686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987595, 0.056623, -0.146458,
		0.137554, 0.137860, 0.980854,
		0.075730, -0.988832, 0.128361,
		69.018272, 59.311623, 57.041195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.409355, 59.749046, 57.565357>,  <68.965263, 60.003807, 56.951340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.409355, 59.749046, 57.565357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.412750, 59.487808, 57.262466>,  <69.414787, 59.331066, 57.080734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.412750, 59.487808, 57.262466>,  <69.409355, 59.749046, 57.565357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.412750, 59.487808, 57.262466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985941, 0.131837, -0.102668,
		0.166882, -0.745708, 0.645035,
		0.008479, -0.653099, -0.757225,
		69.415291, 59.291878, 57.035297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.131111, 59.689125, 57.526623>,  <69.409355, 59.749046, 57.565357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.131111, 59.689125, 57.526623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.972954, 59.448124, 57.249306>,  <69.878059, 59.303524, 57.082916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.972954, 59.448124, 57.249306>,  <70.131111, 59.689125, 57.526623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.972954, 59.448124, 57.249306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918430, -0.249402, -0.307059,
		0.012094, -0.758151, 0.651967,
		-0.395399, -0.602500, -0.693292,
		69.854332, 59.267372, 57.041317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.187508, 58.995174, 57.652462>,  <70.131111, 59.689125, 57.526623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.187508, 58.995174, 57.652462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.190460, 59.039848, 57.254974>,  <70.192230, 59.066650, 57.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.190460, 59.039848, 57.254974>,  <70.187508, 58.995174, 57.652462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.190460, 59.039848, 57.254974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874141, -0.483313, -0.047822,
		-0.485617, -0.868295, -0.101193,
		0.007385, 0.111680, -0.993717,
		70.192673, 59.073353, 56.956860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.699516, 58.449459, 57.433537>,  <70.187508, 58.995174, 57.652462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.699516, 58.449459, 57.433537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658745, 58.399887, 57.038719>,  <69.634277, 58.370144, 56.801830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658745, 58.399887, 57.038719>,  <69.699516, 58.449459, 57.433537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.658745, 58.399887, 57.038719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429430, -0.889519, 0.156033,
		-0.897329, 0.439771, 0.037452,
		-0.101933, -0.123930, -0.987042,
		69.628166, 58.362709, 56.742607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.682983, 58.361660, 58.182159>,  <69.699516, 58.449459, 57.433537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.682983, 58.361660, 58.182159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797295, 58.121975, 57.883018>,  <69.865883, 57.978165, 57.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797295, 58.121975, 57.883018>,  <69.682983, 58.361660, 58.182159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797295, 58.121975, 57.883018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919347, -0.391659, -0.037488,
		-0.270438, 0.698245, -0.662810,
		0.285771, -0.599214, -0.747849,
		69.883026, 57.942211, 57.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.916122, 57.906334, 58.795399>,  <69.682983, 58.361660, 58.182159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.916122, 57.906334, 58.795399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.530396, 57.805313, 58.827202>,  <69.298958, 57.744701, 58.846283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.530396, 57.805313, 58.827202>,  <69.916122, 57.906334, 58.795399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.530396, 57.805313, 58.827202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218680, -0.590371, 0.776943,
		-0.149279, 0.766602, 0.624529,
		-0.964311, -0.252553, 0.079511,
		69.241104, 57.729546, 58.851055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.445770, 57.687305, 58.188583>,  <69.916122, 57.906334, 58.795399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.445770, 57.687305, 58.188583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.554245, 58.069229, 58.237244>,  <70.619331, 58.298382, 58.266438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.554245, 58.069229, 58.237244>,  <70.445770, 57.687305, 58.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.554245, 58.069229, 58.237244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052736, -0.140932, 0.988614,
		0.961080, -0.261686, -0.088572,
		0.271190, 0.954808, 0.121647,
		70.635605, 58.355671, 58.273739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.822090, 57.653618, 58.769699>,  <70.445770, 57.687305, 58.188583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.822090, 57.653618, 58.769699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.758720, 58.046173, 58.726303>,  <70.720695, 58.281708, 58.700264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.758720, 58.046173, 58.726303>,  <70.822090, 57.653618, 58.769699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.758720, 58.046173, 58.726303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103156, 0.125728, 0.986687,
		0.981967, 0.145127, -0.121155,
		-0.158428, 0.981392, -0.108490,
		70.711189, 58.340591, 58.693756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.239189, 57.697655, 59.404308>,  <70.822090, 57.653618, 58.769699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.239189, 57.697655, 59.404308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.138870, 57.876747, 59.747620>,  <71.078682, 57.984203, 59.953606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.138870, 57.876747, 59.747620>,  <71.239189, 57.697655, 59.404308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.138870, 57.876747, 59.747620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182426, -0.892588, 0.412320,
		0.950695, -0.053164, 0.305536,
		-0.250797, 0.447728, 0.858278,
		71.063629, 58.011066, 60.005104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.540565, 57.489166, 59.914845>,  <71.239189, 57.697655, 59.404308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.540565, 57.489166, 59.914845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.194977, 57.623394, 60.065010>,  <70.987625, 57.703930, 60.155109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.194977, 57.623394, 60.065010>,  <71.540565, 57.489166, 59.914845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.194977, 57.623394, 60.065010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154765, -0.886447, 0.436186,
		0.479158, 0.318754, 0.817804,
		-0.863977, 0.335569, 0.375416,
		70.935783, 57.724064, 60.177635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.338371, 57.514271, 60.131149>,  <71.540565, 57.489166, 59.914845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.338371, 57.514271, 60.131149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.716164, 57.585411, 60.241646>,  <72.942841, 57.628094, 60.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.716164, 57.585411, 60.241646>,  <72.338371, 57.514271, 60.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.716164, 57.585411, 60.241646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238066, 0.949930, 0.202379,
		-0.226420, -0.256909, 0.939538,
		0.944489, 0.177849, 0.276245,
		72.999512, 57.638767, 60.324520>
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
