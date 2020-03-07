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
	<36.337467, 53.042099, 49.633873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692867, 53.181244, 49.753574>,  <36.906109, 53.264729, 49.825397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692867, 53.181244, 49.753574>,  <36.337467, 53.042099, 49.633873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692867, 53.181244, 49.753574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346883, -0.082255, -0.934295,
		-0.300388, 0.933932, -0.193750,
		0.888504, 0.347859, 0.299256,
		36.959419, 53.285603, 49.843349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690918, 53.650833, 49.236412>,  <36.337467, 53.042099, 49.633873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690918, 53.650833, 49.236412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955460, 53.391361, 49.387054>,  <37.114185, 53.235680, 49.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955460, 53.391361, 49.387054>,  <36.690918, 53.650833, 49.236412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955460, 53.391361, 49.387054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377570, -0.145943, -0.914408,
		0.648118, 0.746941, 0.148401,
		0.661350, -0.648676, 0.376611,
		37.153866, 53.196758, 49.500038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442204, 53.913239, 49.073280>,  <36.690918, 53.650833, 49.236412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442204, 53.913239, 49.073280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456642, 53.521069, 49.150696>,  <37.465305, 53.285767, 49.197144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456642, 53.521069, 49.150696>,  <37.442204, 53.913239, 49.073280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456642, 53.521069, 49.150696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603465, -0.132985, -0.786222,
		0.796572, 0.145175, 0.586854,
		0.036097, -0.980428, 0.193540,
		37.467472, 53.226940, 49.208759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135464, 53.598442, 48.787746>,  <37.442204, 53.913239, 49.073280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135464, 53.598442, 48.787746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257088, 53.974598, 48.726791>,  <38.330063, 54.200291, 48.690216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257088, 53.974598, 48.726791>,  <38.135464, 53.598442, 48.787746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257088, 53.974598, 48.726791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550698, -0.304033, -0.777364,
		-0.777354, 0.152444, -0.610313,
		0.304060, 0.940385, -0.152390,
		38.348305, 54.256714, 48.681076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040920, 53.627392, 48.069843>,  <38.135464, 53.598442, 48.787746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040920, 53.627392, 48.069843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286674, 53.924240, 48.177010>,  <38.434128, 54.102348, 48.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286674, 53.924240, 48.177010>,  <38.040920, 53.627392, 48.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286674, 53.924240, 48.177010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697728, -0.352489, -0.623641,
		-0.368382, 0.570089, -0.734366,
		0.614387, 0.742125, 0.267916,
		38.470989, 54.146877, 48.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235519, 53.681232, 47.394253>,  <38.040920, 53.627392, 48.069843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235519, 53.681232, 47.394253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477833, 53.856499, 47.659893>,  <38.623222, 53.961658, 47.819279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477833, 53.856499, 47.659893>,  <38.235519, 53.681232, 47.394253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477833, 53.856499, 47.659893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724810, 0.040323, -0.687768,
		-0.328137, 0.897988, -0.293162,
		0.605787, 0.438169, 0.664102,
		38.659569, 53.987949, 47.859123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669147, 54.115932, 46.974617>,  <38.235519, 53.681232, 47.394253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669147, 54.115932, 46.974617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883991, 54.098164, 47.311554>,  <39.012897, 54.087502, 47.513718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883991, 54.098164, 47.311554>,  <38.669147, 54.115932, 46.974617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883991, 54.098164, 47.311554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830804, -0.144826, -0.537391,
		0.145864, 0.988460, -0.040883,
		0.537111, -0.044421, 0.842341,
		39.045124, 54.084839, 47.564255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089268, 54.671940, 47.032425>,  <38.669147, 54.115932, 46.974617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089268, 54.671940, 47.032425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240967, 54.341534, 47.199219>,  <39.331985, 54.143291, 47.299294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240967, 54.341534, 47.199219>,  <39.089268, 54.671940, 47.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240967, 54.341534, 47.199219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626191, -0.102662, -0.772881,
		0.681219, 0.554221, 0.478309,
		0.379243, -0.826014, 0.416983,
		39.354740, 54.093731, 47.324314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758766, 54.731266, 47.391842>,  <39.089268, 54.671940, 47.032425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758766, 54.731266, 47.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699589, 54.377472, 47.214844>,  <39.664082, 54.165195, 47.108643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699589, 54.377472, 47.214844>,  <39.758766, 54.731266, 47.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699589, 54.377472, 47.214844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802637, 0.154031, -0.576236,
		0.577828, -0.440417, 0.687130,
		-0.147945, -0.884482, -0.442498,
		39.655205, 54.112129, 47.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450417, 54.450817, 47.430847>,  <39.758766, 54.731266, 47.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450417, 54.450817, 47.430847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216793, 54.300667, 47.142967>,  <40.076618, 54.210575, 46.970238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216793, 54.300667, 47.142967>,  <40.450417, 54.450817, 47.430847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216793, 54.300667, 47.142967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645109, 0.323478, -0.692240,
		0.492662, -0.868591, 0.053233,
		-0.584054, -0.375381, -0.719701,
		40.041576, 54.188053, 46.927055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773396, 54.788021, 46.873272>,  <40.450417, 54.450817, 47.430847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773396, 54.788021, 46.873272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761333, 55.137924, 46.679825>,  <40.754097, 55.347866, 46.563755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761333, 55.137924, 46.679825>,  <40.773396, 54.788021, 46.873272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761333, 55.137924, 46.679825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862431, 0.267352, 0.429808,
		0.505275, -0.404131, -0.762479,
		-0.030151, 0.874757, -0.483622,
		40.752289, 55.400352, 46.534737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316673, 54.839493, 46.463242>,  <40.773396, 54.788021, 46.873272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316673, 54.839493, 46.463242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218506, 55.206535, 46.588318>,  <41.159607, 55.426762, 46.663364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218506, 55.206535, 46.588318>,  <41.316673, 54.839493, 46.463242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218506, 55.206535, 46.588318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930880, 0.133021, 0.340247,
		0.270619, 0.374575, -0.886825,
		-0.245414, 0.917605, 0.312686,
		41.144882, 55.481815, 46.682125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753330, 54.301712, 46.196171>,  <41.316673, 54.839493, 46.463242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753330, 54.301712, 46.196171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805023, 54.190331, 46.576859>,  <41.836040, 54.123501, 46.805271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805023, 54.190331, 46.576859>,  <41.753330, 54.301712, 46.196171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805023, 54.190331, 46.576859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987101, -0.055341, -0.150230,
		0.094501, 0.958854, 0.267712,
		0.129234, -0.278455, 0.951715,
		41.843792, 54.106792, 46.862373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142021, 54.815514, 46.615738>,  <41.753330, 54.301712, 46.196171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142021, 54.815514, 46.615738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201359, 54.439175, 46.737595>,  <42.236961, 54.213371, 46.810707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201359, 54.439175, 46.737595>,  <42.142021, 54.815514, 46.615738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201359, 54.439175, 46.737595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961727, 0.065485, -0.266069,
		0.230380, 0.332449, 0.914551,
		0.148343, -0.940845, 0.304639,
		42.245861, 54.156921, 46.828987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406605, 54.879139, 47.254025>,  <42.142021, 54.815514, 46.615738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406605, 54.879139, 47.254025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552177, 54.554573, 47.071091>,  <42.639523, 54.359833, 46.961330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552177, 54.554573, 47.071091>,  <42.406605, 54.879139, 47.254025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552177, 54.554573, 47.071091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907927, 0.418639, -0.020256,
		0.207894, -0.407855, 0.889064,
		0.363935, -0.811416, -0.457335,
		42.661358, 54.311150, 46.933891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004700, 54.549515, 47.664986>,  <42.406605, 54.879139, 47.254025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004700, 54.549515, 47.664986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051037, 54.476906, 47.274368>,  <43.078838, 54.433338, 47.039997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051037, 54.476906, 47.274368>,  <43.004700, 54.549515, 47.664986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051037, 54.476906, 47.274368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898321, 0.438627, 0.025026,
		0.423794, -0.880144, 0.213880,
		0.115840, -0.181527, -0.976539,
		43.085789, 54.422447, 46.981407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105450, 54.380150, 48.277519>,  <43.004700, 54.549515, 47.664986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105450, 54.380150, 48.277519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381546, 54.328102, 47.992805>,  <43.547203, 54.296871, 47.821980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381546, 54.328102, 47.992805>,  <43.105450, 54.380150, 48.277519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381546, 54.328102, 47.992805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627416, -0.597638, -0.499177,
		-0.360432, 0.791136, -0.494158,
		0.690244, -0.130123, -0.711780,
		43.588619, 54.289066, 47.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134239, 54.517239, 49.009335>,  <43.105450, 54.380150, 48.277519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134239, 54.517239, 49.009335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260674, 54.685539, 48.669205>,  <43.336536, 54.786518, 48.465126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260674, 54.685539, 48.669205>,  <43.134239, 54.517239, 49.009335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260674, 54.685539, 48.669205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714669, -0.483874, -0.505087,
		-0.623967, 0.767356, 0.147750,
		0.316090, 0.420750, -0.850327,
		43.355499, 54.811764, 48.414108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254753, 55.330299, 49.064686>,  <43.134239, 54.517239, 49.009335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254753, 55.330299, 49.064686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605362, 55.286724, 49.252235>,  <43.815727, 55.260578, 49.364765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605362, 55.286724, 49.252235>,  <43.254753, 55.330299, 49.064686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605362, 55.286724, 49.252235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461425, 0.467568, -0.753968,
		-0.137094, 0.877219, 0.460100,
		0.876523, -0.108937, 0.468872,
		43.868320, 55.254044, 49.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576309, 56.042511, 48.886234>,  <43.254753, 55.330299, 49.064686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576309, 56.042511, 48.886234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861805, 55.764729, 48.922714>,  <44.033100, 55.598061, 48.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861805, 55.764729, 48.922714>,  <43.576309, 56.042511, 48.886234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861805, 55.764729, 48.922714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514287, 0.431206, -0.741331,
		0.475491, 0.576019, 0.664914,
		0.713735, -0.694452, 0.091205,
		44.075924, 55.556393, 48.950077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261108, 56.231892, 49.367645>,  <43.576309, 56.042511, 48.886234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261108, 56.231892, 49.367645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284843, 56.052357, 49.010986>,  <44.299084, 55.944637, 48.796993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284843, 56.052357, 49.010986>,  <44.261108, 56.231892, 49.367645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284843, 56.052357, 49.010986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761844, 0.597536, -0.250090,
		0.645038, -0.664453, 0.377397,
		0.059335, -0.448835, -0.891643,
		44.302643, 55.917706, 48.743492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993172, 56.065018, 49.241550>,  <44.261108, 56.231892, 49.367645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993172, 56.065018, 49.241550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804005, 56.107327, 48.891655>,  <44.690502, 56.132710, 48.681717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804005, 56.107327, 48.891655>,  <44.993172, 56.065018, 49.241550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804005, 56.107327, 48.891655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772342, 0.527573, -0.353772,
		0.424069, -0.842899, -0.331189,
		-0.472920, 0.105767, -0.874734,
		44.662128, 56.139057, 48.629234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364933, 55.684994, 48.816231>,  <44.993172, 56.065018, 49.241550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364933, 55.684994, 48.816231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181458, 55.998158, 48.648109>,  <45.071373, 56.186054, 48.547237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181458, 55.998158, 48.648109>,  <45.364933, 55.684994, 48.816231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181458, 55.998158, 48.648109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868619, 0.494782, -0.026314,
		0.187356, -0.377152, -0.907003,
		-0.458693, 0.782909, -0.420302,
		45.043850, 56.233028, 48.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713524, 55.910591, 48.056656>,  <45.364933, 55.684994, 48.816231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713524, 55.910591, 48.056656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532394, 56.100666, 48.358421>,  <45.423717, 56.214710, 48.539482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532394, 56.100666, 48.358421>,  <45.713524, 55.910591, 48.056656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532394, 56.100666, 48.358421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883851, 0.350545, 0.309717,
		-0.117284, 0.807042, -0.578730,
		-0.452826, 0.475186, 0.754418,
		45.396545, 56.243221, 48.584747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049110, 56.712818, 48.214108>,  <45.713524, 55.910591, 48.056656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049110, 56.712818, 48.214108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870129, 56.605659, 48.555405>,  <45.762741, 56.541367, 48.760181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870129, 56.605659, 48.555405>,  <46.049110, 56.712818, 48.214108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870129, 56.605659, 48.555405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865976, 0.108446, 0.488185,
		-0.223312, 0.957326, 0.183464,
		-0.447456, -0.267893, 0.853239,
		45.735893, 56.525291, 48.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111965, 57.219910, 48.742466>,  <46.049110, 56.712818, 48.214108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111965, 57.219910, 48.742466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115440, 56.858166, 48.913143>,  <46.117523, 56.641121, 49.015549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115440, 56.858166, 48.913143>,  <46.111965, 57.219910, 48.742466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115440, 56.858166, 48.913143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886263, 0.204577, 0.415555,
		-0.463101, 0.374553, 0.803273,
		0.008684, -0.904355, 0.426692,
		46.118046, 56.586861, 49.041149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324116, 57.179710, 49.520008>,  <46.111965, 57.219910, 48.742466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324116, 57.179710, 49.520008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446453, 56.843163, 49.341770>,  <46.519855, 56.641235, 49.234825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446453, 56.843163, 49.341770>,  <46.324116, 57.179710, 49.520008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446453, 56.843163, 49.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877006, 0.066803, 0.475813,
		-0.370566, -0.536318, 0.758316,
		0.305845, -0.841368, -0.445599,
		46.538208, 56.590752, 49.208092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672314, 56.756367, 50.004875>,  <46.324116, 57.179710, 49.520008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672314, 56.756367, 50.004875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801064, 56.665092, 49.637325>,  <46.878315, 56.610329, 49.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801064, 56.665092, 49.637325>,  <46.672314, 56.756367, 50.004875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801064, 56.665092, 49.637325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946782, 0.077041, 0.312520,
		-0.000524, -0.970564, 0.240843,
		0.321876, -0.228190, -0.918872,
		46.897625, 56.596634, 49.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856842, 55.956684, 50.022968>,  <46.672314, 56.756367, 50.004875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856842, 55.956684, 50.022968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031113, 56.247414, 49.810585>,  <47.135677, 56.421852, 49.683155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031113, 56.247414, 49.810585>,  <46.856842, 55.956684, 50.022968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.031113, 56.247414, 49.810585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825047, -0.086653, 0.558381,
		0.359833, -0.681339, -0.637415,
		0.435680, 0.726821, -0.530956,
		47.161816, 56.465462, 49.651299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554024, 55.698772, 49.857975>,  <46.856842, 55.956684, 50.022968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554024, 55.698772, 49.857975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557922, 56.098122, 49.835499>,  <47.560261, 56.337730, 49.822014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557922, 56.098122, 49.835499>,  <47.554024, 55.698772, 49.857975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557922, 56.098122, 49.835499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808304, 0.025216, 0.588225,
		0.588685, -0.051157, -0.806742,
		0.009749, 0.998372, -0.056195,
		47.560848, 56.397633, 49.818642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.135483, 56.053787, 49.517056>,  <47.554024, 55.698772, 49.857975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.135483, 56.053787, 49.517056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.009434, 56.346909, 49.758286>,  <47.933804, 56.522781, 49.903023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.009434, 56.346909, 49.758286>,  <48.135483, 56.053787, 49.517056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.009434, 56.346909, 49.758286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938057, 0.144048, 0.315119,
		0.144048, 0.665020, -0.732802,
		-0.315119, 0.732802, 0.603076,
		47.914898, 56.566750, 49.939209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.764965, 56.419571, 49.612968>,  <48.135483, 56.053787, 49.517056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.764965, 56.419571, 49.612968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510323, 56.588997, 49.870750>,  <48.357536, 56.690651, 50.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510323, 56.588997, 49.870750>,  <48.764965, 56.419571, 49.612968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.510323, 56.588997, 49.870750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769543, 0.294354, 0.566709,
		0.050340, 0.856708, -0.513339,
		-0.636607, 0.423565, 0.644456,
		48.319340, 56.716064, 50.064087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.879677, 57.195522, 49.754501>,  <48.764965, 56.419571, 49.612968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.879677, 57.195522, 49.754501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.734966, 56.956196, 50.040474>,  <48.648140, 56.812599, 50.212059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.734966, 56.956196, 50.040474>,  <48.879677, 57.195522, 49.754501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.734966, 56.956196, 50.040474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854937, 0.092879, 0.510349,
		-0.371753, 0.795857, 0.477923,
		-0.361776, -0.598318, 0.714936,
		48.626434, 56.776699, 50.254955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.742897, 57.572151, 50.396320>,  <48.879677, 57.195522, 49.754501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.742897, 57.572151, 50.396320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.838089, 57.184875, 50.427223>,  <48.895203, 56.952511, 50.445766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.838089, 57.184875, 50.427223>,  <48.742897, 57.572151, 50.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.838089, 57.184875, 50.427223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799070, 0.240383, 0.551093,
		-0.552135, -0.069415, 0.830860,
		0.237979, -0.968193, 0.077256,
		48.909481, 56.894417, 50.450401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.992897, 57.384892, 51.175541>,  <48.742897, 57.572151, 50.396320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.992897, 57.384892, 51.175541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.152622, 57.155228, 50.889633>,  <49.248459, 57.017429, 50.718090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.152622, 57.155228, 50.889633>,  <48.992897, 57.384892, 51.175541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.152622, 57.155228, 50.889633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895973, 0.409671, 0.171469,
		0.194368, -0.708881, 0.678018,
		0.399316, -0.574158, -0.714766,
		49.272415, 56.982979, 50.675205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.709618, 57.068947, 51.406612>,  <48.992897, 57.384892, 51.175541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.709618, 57.068947, 51.406612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.701828, 57.147583, 51.014496>,  <49.697155, 57.194767, 50.779224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.701828, 57.147583, 51.014496>,  <49.709618, 57.068947, 51.406612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.701828, 57.147583, 51.014496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887823, 0.454283, 0.073467,
		0.459773, -0.868895, -0.183386,
		-0.019474, 0.196592, -0.980292,
		49.695984, 57.206562, 50.720409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.348972, 56.682175, 51.127575>,  <49.709618, 57.068947, 51.406612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.348972, 56.682175, 51.127575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.264446, 57.019379, 50.929710>,  <50.213730, 57.221699, 50.810993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.264446, 57.019379, 50.929710>,  <50.348972, 56.682175, 51.127575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.264446, 57.019379, 50.929710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911634, 0.352517, 0.211318,
		0.352517, -0.406291, -0.843006,
		-0.211318, 0.843006, -0.494657,
		50.201050, 57.272282, 50.781315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.880093, 56.886646, 50.612614>,  <50.348972, 56.682175, 51.127575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.880093, 56.886646, 50.612614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.707691, 57.207729, 50.777489>,  <50.604248, 57.400379, 50.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.707691, 57.207729, 50.777489>,  <50.880093, 56.886646, 50.612614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.707691, 57.207729, 50.777489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875786, 0.262109, 0.405336,
		0.217326, 0.535691, -0.815968,
		-0.431008, 0.802704, 0.412187,
		50.578388, 57.448540, 50.901146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.440300, 57.333797, 50.599789>,  <50.880093, 56.886646, 50.612614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.440300, 57.333797, 50.599789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.289555, 57.553764, 50.897934>,  <51.199108, 57.685745, 51.076820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.289555, 57.553764, 50.897934>,  <51.440300, 57.333797, 50.599789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.289555, 57.553764, 50.897934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827693, 0.561163, 0.004469,
		-0.415810, 0.618613, -0.666648,
		-0.376863, 0.549922, 0.745359,
		51.176495, 57.718742, 51.121540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.687595, 57.027283, 51.262207>,  <51.440300, 57.333797, 50.599789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.687595, 57.027283, 51.262207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.818634, 57.370392, 51.103760>,  <51.897259, 57.576256, 51.008690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.818634, 57.370392, 51.103760>,  <51.687595, 57.027283, 51.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.818634, 57.370392, 51.103760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933048, -0.359680, -0.007217,
		-0.148668, -0.367236, -0.918169,
		0.327597, 0.857769, -0.396122,
		51.916912, 57.627724, 50.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.932629, 56.950565, 51.989166>,  <51.687595, 57.027283, 51.262207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.932629, 56.950565, 51.989166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.758698, 56.900276, 52.345844>,  <51.654339, 56.870102, 52.559849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.758698, 56.900276, 52.345844>,  <51.932629, 56.950565, 51.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.758698, 56.900276, 52.345844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710336, 0.560725, 0.425452,
		-0.553485, 0.818401, -0.154513,
		-0.434830, -0.125725, 0.891693,
		51.628250, 56.862560, 52.613354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.741562, 57.601555, 52.361214>,  <51.932629, 56.950565, 51.989166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.741562, 57.601555, 52.361214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884041, 57.304344, 52.587852>,  <51.969528, 57.126019, 52.723835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884041, 57.304344, 52.587852>,  <51.741562, 57.601555, 52.361214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.884041, 57.304344, 52.587852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676362, 0.623397, 0.392315,
		-0.644717, 0.243483, 0.724608,
		0.356196, -0.743029, 0.566597,
		51.990898, 57.081436, 52.757832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.870880, 57.918671, 53.035915>,  <51.741562, 57.601555, 52.361214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.870880, 57.918671, 53.035915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.083988, 57.586678, 52.969841>,  <52.211853, 57.387482, 52.930195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.083988, 57.586678, 52.969841>,  <51.870880, 57.918671, 53.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.083988, 57.586678, 52.969841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825068, 0.466033, 0.319493,
		-0.188189, -0.306509, 0.933079,
		0.532773, -0.829979, -0.165189,
		52.243820, 57.337685, 52.920284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.319973, 57.659988, 53.644745>,  <51.870880, 57.918671, 53.035915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.319973, 57.659988, 53.644745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.495529, 57.513584, 53.316498>,  <52.600864, 57.425743, 53.119549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.495529, 57.513584, 53.316498>,  <52.319973, 57.659988, 53.644745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.495529, 57.513584, 53.316498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839083, 0.493645, 0.228593,
		0.321426, -0.788892, 0.523770,
		0.438892, -0.366011, -0.820616,
		52.627197, 57.403782, 53.070312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.964741, 57.319530, 53.676693>,  <52.319973, 57.659988, 53.644745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.964741, 57.319530, 53.676693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.928684, 57.542000, 53.346230>,  <52.907051, 57.675484, 53.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.928684, 57.542000, 53.346230>,  <52.964741, 57.319530, 53.676693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.928684, 57.542000, 53.346230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831041, 0.499163, 0.245369,
		0.548858, -0.664457, -0.507200,
		-0.090138, 0.556177, -0.826161,
		52.901642, 57.708855, 53.098381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.473316, 57.182690, 53.178101>,  <52.964741, 57.319530, 53.676693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.473316, 57.182690, 53.178101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.353588, 57.564297, 53.184620>,  <53.281750, 57.793259, 53.188534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.353588, 57.564297, 53.184620>,  <53.473316, 57.182690, 53.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.353588, 57.564297, 53.184620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928045, 0.287120, 0.237265,
		0.221673, 0.086148, -0.971308,
		-0.299322, 0.954013, 0.016302,
		53.263790, 57.850502, 53.189510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.988155, 57.521839, 52.658180>,  <53.473316, 57.182690, 53.178101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.988155, 57.521839, 52.658180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.823105, 57.761642, 52.932507>,  <53.724075, 57.905525, 53.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.823105, 57.761642, 52.932507>,  <53.988155, 57.521839, 52.658180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.823105, 57.761642, 52.932507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899885, 0.385022, 0.204853,
		-0.141242, 0.701679, -0.698354,
		-0.412622, 0.599504, 0.685812,
		53.699318, 57.941494, 53.138248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.226025, 58.215355, 52.559113>,  <53.988155, 57.521839, 52.658180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.226025, 58.215355, 52.559113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.143402, 58.129436, 52.940941>,  <54.093830, 58.077885, 53.170036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.143402, 58.129436, 52.940941>,  <54.226025, 58.215355, 52.559113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.143402, 58.129436, 52.940941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843262, 0.455716, 0.285013,
		-0.496231, 0.863820, 0.087002,
		-0.206552, -0.214798, 0.954567,
		54.081436, 58.064999, 53.227310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.131824, 58.733067, 53.058453>,  <54.226025, 58.215355, 52.559113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.131824, 58.733067, 53.058453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.303383, 58.402378, 53.204098>,  <54.406319, 58.203964, 53.291485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.303383, 58.402378, 53.204098>,  <54.131824, 58.733067, 53.058453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.303383, 58.402378, 53.204098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879023, 0.474859, 0.042745,
		-0.208243, 0.301735, 0.930372,
		0.428897, -0.826720, 0.364118,
		54.432053, 58.154362, 53.313332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.690666, 58.905518, 53.545956>,  <54.131824, 58.733067, 53.058453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.690666, 58.905518, 53.545956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.774513, 58.538773, 53.410065>,  <54.824821, 58.318726, 53.328529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.774513, 58.538773, 53.410065>,  <54.690666, 58.905518, 53.545956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.774513, 58.538773, 53.410065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959968, 0.126960, 0.249686,
		-0.185797, -0.378466, 0.906776,
		0.209622, -0.916867, -0.339727,
		54.837399, 58.263714, 53.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.240955, 58.607361, 53.966312>,  <54.690666, 58.905518, 53.545956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.240955, 58.607361, 53.966312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.238121, 58.351875, 53.658546>,  <55.236420, 58.198586, 53.473888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.238121, 58.351875, 53.658546>,  <55.240955, 58.607361, 53.966312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.238121, 58.351875, 53.658546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999285, -0.033107, 0.018282,
		-0.037150, -0.768731, 0.638492,
		-0.007084, -0.638715, -0.769411,
		55.235996, 58.160259, 53.427723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.966591, 57.935436, 53.950462>,  <55.240955, 58.607361, 53.966312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.966591, 57.935436, 53.950462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.916855, 57.718555, 54.282860>,  <54.887012, 57.588428, 54.482300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.916855, 57.718555, 54.282860>,  <54.966591, 57.935436, 53.950462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.916855, 57.718555, 54.282860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989718, -0.008098, 0.142805,
		-0.070700, 0.840208, 0.537635,
		-0.124339, -0.542203, 0.830997,
		54.879555, 57.555893, 54.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.307961, 58.251568, 54.570911>,  <54.966591, 57.935436, 53.950462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.307961, 58.251568, 54.570911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.273468, 57.857208, 54.628269>,  <55.252773, 57.620590, 54.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.273468, 57.857208, 54.628269>,  <55.307961, 58.251568, 54.570911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.273468, 57.857208, 54.628269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994383, -0.076303, 0.073350,
		-0.061375, 0.148912, 0.986944,
		-0.086230, -0.985902, 0.143393,
		55.247601, 57.561440, 54.671288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.512375, 57.930695, 55.156521>,  <55.307961, 58.251568, 54.570911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.512375, 57.930695, 55.156521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.556374, 57.706886, 54.827927>,  <55.582771, 57.572601, 54.630768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.556374, 57.706886, 54.827927>,  <55.512375, 57.930695, 55.156521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.556374, 57.706886, 54.827927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992885, 0.023920, 0.116653,
		-0.045619, -0.828474, 0.558166,
		0.109996, -0.559516, -0.821488,
		55.589371, 57.539032, 54.581482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.848137, 57.310265, 55.348801>,  <55.512375, 57.930695, 55.156521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.848137, 57.310265, 55.348801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.926361, 57.380875, 54.962933>,  <55.973293, 57.423241, 54.731411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.926361, 57.380875, 54.962933>,  <55.848137, 57.310265, 55.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.926361, 57.380875, 54.962933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980465, -0.013998, 0.196197,
		0.021131, -0.984196, -0.175816,
		0.195557, 0.176527, -0.964674,
		55.985027, 57.433834, 54.673531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.381680, 56.854580, 55.226460>,  <55.848137, 57.310265, 55.348801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.381680, 56.854580, 55.226460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.369133, 57.146381, 54.953156>,  <56.361607, 57.321461, 54.789173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.369133, 57.146381, 54.953156>,  <56.381680, 56.854580, 55.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.369133, 57.146381, 54.953156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999184, 0.005457, -0.040038,
		-0.025479, -0.683958, -0.729076,
		-0.031363, 0.729501, -0.683261,
		56.359726, 57.365231, 54.748177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.709587, 56.690540, 54.636120>,  <56.381680, 56.854580, 55.226460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.709587, 56.690540, 54.636120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.751961, 57.088287, 54.634422>,  <56.777386, 57.326935, 54.633404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.751961, 57.088287, 54.634422>,  <56.709587, 56.690540, 54.636120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.751961, 57.088287, 54.634422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925625, -0.100168, -0.364945,
		-0.363313, 0.034732, -0.931020,
		0.105933, 0.994364, -0.004243,
		56.783741, 57.386597, 54.633148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.064171, 55.987423, 54.675571>,  <56.709587, 56.690540, 54.636120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.064171, 55.987423, 54.675571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.702560, 55.816433, 54.676826>,  <56.485596, 55.713840, 54.677582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.702560, 55.816433, 54.676826>,  <57.064171, 55.987423, 54.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.702560, 55.816433, 54.676826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197249, -0.423637, -0.884095,
		0.379261, -0.798621, 0.467296,
		-0.904021, -0.427476, 0.003142,
		56.431355, 55.688190, 54.677769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.476009, 55.567741, 54.216026>,  <57.064171, 55.987423, 54.675571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.476009, 55.567741, 54.216026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.675880, 55.827671, 53.986923>,  <57.795803, 55.983627, 53.849461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.675880, 55.827671, 53.986923>,  <57.476009, 55.567741, 54.216026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.675880, 55.827671, 53.986923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103322, -0.611792, -0.784241,
		-0.860027, 0.451048, -0.238559,
		0.499679, 0.649820, -0.572761,
		57.825783, 56.022617, 53.815094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.680550, 54.849979, 54.417435>,  <57.476009, 55.567741, 54.216026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.680550, 54.849979, 54.417435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.878479, 55.197510, 54.410667>,  <57.997238, 55.406029, 54.406609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.878479, 55.197510, 54.410667>,  <57.680550, 54.849979, 54.417435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.878479, 55.197510, 54.410667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452846, 0.274422, 0.848306,
		0.741675, -0.412100, 0.529237,
		0.494822, 0.868830, -0.016914,
		58.026924, 55.458160, 54.405594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.850189, 55.051628, 55.117939>,  <57.680550, 54.849979, 54.417435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.850189, 55.051628, 55.117939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.892830, 55.414970, 54.956184>,  <57.918415, 55.632977, 54.859131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.892830, 55.414970, 54.956184>,  <57.850189, 55.051628, 55.117939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.892830, 55.414970, 54.956184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214052, 0.418135, 0.882805,
		0.970988, -0.007552, 0.239010,
		0.106606, 0.908354, -0.404387,
		57.924812, 55.687477, 54.834869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.284756, 55.364563, 55.491207>,  <57.850189, 55.051628, 55.117939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.284756, 55.364563, 55.491207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.033188, 55.636093, 55.339600>,  <57.882248, 55.799011, 55.248634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.033188, 55.636093, 55.339600>,  <58.284756, 55.364563, 55.491207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.033188, 55.636093, 55.339600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052717, 0.449148, 0.891901,
		0.775678, 0.580918, -0.246694,
		-0.628923, 0.678823, -0.379018,
		57.844509, 55.839741, 55.225895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.559513, 56.142384, 55.601387>,  <58.284756, 55.364563, 55.491207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.559513, 56.142384, 55.601387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.160507, 56.116695, 55.589851>,  <57.921104, 56.101284, 55.582928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.160507, 56.116695, 55.589851>,  <58.559513, 56.142384, 55.601387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.160507, 56.116695, 55.589851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061854, 0.603852, 0.794693,
		-0.033620, 0.794505, -0.606326,
		-0.997519, -0.064222, -0.028842,
		57.861252, 56.097427, 55.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.216438, 56.477364, 55.534912>,  <58.559513, 56.142384, 55.601387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.216438, 56.477364, 55.534912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.311470, 56.864697, 55.565613>,  <59.368488, 57.097095, 55.584034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.311470, 56.864697, 55.565613>,  <59.216438, 56.477364, 55.534912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.311470, 56.864697, 55.565613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933641, -0.249442, 0.257087,
		0.268090, 0.010582, -0.963336,
		0.237576, 0.968332, 0.076753,
		59.382744, 57.155197, 55.588638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.750202, 56.869884, 55.077583>,  <59.216438, 56.477364, 55.534912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.750202, 56.869884, 55.077583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.726669, 56.995888, 55.456490>,  <59.712551, 57.071491, 55.683834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.726669, 56.995888, 55.456490>,  <59.750202, 56.869884, 55.077583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.726669, 56.995888, 55.456490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987100, -0.123183, 0.102271,
		0.148903, 0.941061, -0.303696,
		-0.058833, 0.315007, 0.947264,
		59.709019, 57.090389, 55.740669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.159313, 57.563934, 55.242023>,  <59.750202, 56.869884, 55.077583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.159313, 57.563934, 55.242023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.113449, 57.313709, 55.550705>,  <60.085930, 57.163574, 55.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.113449, 57.313709, 55.550705>,  <60.159313, 57.563934, 55.242023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.113449, 57.313709, 55.550705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982176, -0.187854, -0.006347,
		0.148937, 0.757219, 0.635954,
		-0.114660, -0.625564, 0.771701,
		60.079052, 57.126041, 55.782215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.492287, 57.802662, 55.815392>,  <60.159313, 57.563934, 55.242023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.492287, 57.802662, 55.815392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.464661, 57.406273, 55.769424>,  <60.448086, 57.168442, 55.741844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.464661, 57.406273, 55.769424>,  <60.492287, 57.802662, 55.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.464661, 57.406273, 55.769424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996779, -0.073253, 0.032641,
		-0.040764, -0.112297, 0.992838,
		-0.069063, -0.990971, -0.114922,
		60.443943, 57.108982, 55.734947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.144630, 58.171986, 55.957859>,  <60.492287, 57.802662, 55.815392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.144630, 58.171986, 55.957859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.529991, 58.067352, 55.934448>,  <61.761208, 58.004574, 55.920403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.529991, 58.067352, 55.934448>,  <61.144630, 58.171986, 55.957859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.529991, 58.067352, 55.934448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260288, 0.965100, -0.028847,
		0.064029, 0.012558, 0.997869,
		0.963406, -0.261580, -0.058526,
		61.819012, 57.988876, 55.916889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.491970, 58.598068, 56.503559>,  <61.144630, 58.171986, 55.957859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.491970, 58.598068, 56.503559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.679474, 58.480347, 56.170418>,  <61.791977, 58.409714, 55.970531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.679474, 58.480347, 56.170418>,  <61.491970, 58.598068, 56.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.679474, 58.480347, 56.170418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365776, 0.922901, -0.120254,
		0.804033, -0.248267, 0.540272,
		0.468763, -0.294307, -0.832853,
		61.820103, 58.392056, 55.920563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.192341, 58.652424, 56.477169>,  <61.491970, 58.598068, 56.503559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.192341, 58.652424, 56.477169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062202, 58.729572, 56.106880>,  <61.984119, 58.775860, 55.884708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062202, 58.729572, 56.106880>,  <62.192341, 58.652424, 56.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.062202, 58.729572, 56.106880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464619, 0.885258, 0.021148,
		0.823579, -0.423226, -0.377622,
		-0.325342, 0.192867, -0.925719,
		61.964600, 58.787434, 55.829166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.725815, 58.946602, 56.042747>,  <62.192341, 58.652424, 56.477169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.725815, 58.946602, 56.042747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.374161, 59.121666, 55.967308>,  <62.163166, 59.226704, 55.922043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.374161, 59.121666, 55.967308>,  <62.725815, 58.946602, 56.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.374161, 59.121666, 55.967308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426508, 0.899120, 0.098359,
		0.212624, 0.006030, -0.977115,
		-0.879137, 0.437661, -0.188602,
		62.110420, 59.252964, 55.910728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.795460, 59.388897, 55.418324>,  <62.725815, 58.946602, 56.042747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.795460, 59.388897, 55.418324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.534676, 59.505974, 55.698120>,  <62.378204, 59.576218, 55.865997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.534676, 59.505974, 55.698120>,  <62.795460, 59.388897, 55.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.534676, 59.505974, 55.698120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511014, 0.851135, 0.120143,
		-0.560195, 0.435777, -0.704471,
		-0.651956, 0.292691, 0.699490,
		62.339088, 59.593781, 55.907967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.465427, 59.824223, 55.435078>,  <62.795460, 59.388897, 55.418324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.465427, 59.824223, 55.435078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.557144, 60.010422, 55.093147>,  <63.612175, 60.122143, 54.887989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.557144, 60.010422, 55.093147>,  <63.465427, 59.824223, 55.435078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.557144, 60.010422, 55.093147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968925, -0.025440, 0.246043,
		0.092786, -0.884682, -0.456868,
		0.229292, 0.465501, -0.854830,
		63.625931, 60.150070, 54.836697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.056419, 59.597313, 55.172932>,  <63.465427, 59.824223, 55.435078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.056419, 59.597313, 55.172932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.030907, 59.964821, 55.017090>,  <64.015602, 60.185326, 54.923584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.030907, 59.964821, 55.017090>,  <64.056419, 59.597313, 55.172932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.030907, 59.964821, 55.017090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971220, 0.146912, 0.187478,
		0.229486, -0.366433, -0.901700,
		-0.063773, 0.918773, -0.389601,
		64.011772, 60.240452, 54.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.647118, 59.895397, 54.678051>,  <64.056419, 59.597313, 55.172932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.647118, 59.895397, 54.678051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467484, 60.168282, 54.908844>,  <64.359703, 60.332012, 55.047321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467484, 60.168282, 54.908844>,  <64.647118, 59.895397, 54.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.467484, 60.168282, 54.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893111, 0.323956, 0.312098,
		0.026001, 0.655468, -0.754776,
		-0.449085, 0.682213, 0.576982,
		64.332756, 60.372944, 55.081940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.946671, 60.529858, 54.517509>,  <64.647118, 59.895397, 54.678051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.946671, 60.529858, 54.517509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.801956, 60.547462, 54.889999>,  <64.715126, 60.558025, 55.113491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.801956, 60.547462, 54.889999>,  <64.946671, 60.529858, 54.517509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.801956, 60.547462, 54.889999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821183, 0.487912, 0.295972,
		-0.441329, 0.871782, -0.212659,
		-0.361783, 0.044011, 0.931223,
		64.693420, 60.560665, 55.169365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.939117, 61.255920, 54.748325>,  <64.946671, 60.529858, 54.517509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.939117, 61.255920, 54.748325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899002, 61.058319, 55.093788>,  <64.874931, 60.939758, 55.301064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899002, 61.058319, 55.093788>,  <64.939117, 61.255920, 54.748325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.899002, 61.058319, 55.093788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809496, 0.464187, 0.359509,
		-0.578498, 0.735178, 0.353346,
		-0.100284, -0.494008, 0.863655,
		64.868919, 60.910118, 55.352886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.027832, 61.705746, 55.419502>,  <64.939117, 61.255920, 54.748325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.027832, 61.705746, 55.419502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.135605, 61.329529, 55.502243>,  <65.200264, 61.103798, 55.551888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.135605, 61.329529, 55.502243>,  <65.027832, 61.705746, 55.419502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.135605, 61.329529, 55.502243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850616, 0.333128, 0.406790,
		-0.451511, 0.066349, 0.889795,
		0.269426, -0.940544, 0.206848,
		65.216431, 61.047367, 55.564297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.252983, 61.671524, 56.172291>,  <65.027832, 61.705746, 55.419502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.252983, 61.671524, 56.172291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417374, 61.390900, 55.939423>,  <65.516006, 61.222527, 55.799702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417374, 61.390900, 55.939423>,  <65.252983, 61.671524, 56.172291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.417374, 61.390900, 55.939423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859137, 0.084438, 0.504731,
		-0.304941, -0.707592, 0.637436,
		0.410968, -0.701558, -0.582170,
		65.540665, 61.180431, 55.764771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.606697, 61.164841, 56.563034>,  <65.252983, 61.671524, 56.172291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.606697, 61.164841, 56.563034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.770470, 61.232281, 56.204384>,  <65.868736, 61.272743, 55.989193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.770470, 61.232281, 56.204384>,  <65.606697, 61.164841, 56.563034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.770470, 61.232281, 56.204384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859035, 0.259767, 0.441113,
		0.307286, -0.950839, -0.038476,
		0.409432, 0.168600, -0.896627,
		65.893303, 61.282860, 55.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.170204, 61.374474, 56.966991>,  <65.606697, 61.164841, 56.563034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.170204, 61.374474, 56.966991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176224, 61.689781, 57.213051>,  <66.179832, 61.878963, 57.360687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176224, 61.689781, 57.213051>,  <66.170204, 61.374474, 56.966991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.176224, 61.689781, 57.213051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113317, -0.609911, 0.784326,
		0.993445, -0.081512, 0.080144,
		0.015051, 0.788266, 0.615150,
		66.180740, 61.926262, 57.397594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.555161, 61.141930, 57.576759>,  <66.170204, 61.374474, 56.966991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.555161, 61.141930, 57.576759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.323288, 61.445381, 57.695709>,  <66.184166, 61.627453, 57.767078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.323288, 61.445381, 57.695709>,  <66.555161, 61.141930, 57.576759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.323288, 61.445381, 57.695709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194120, -0.483022, 0.853819,
		0.791376, 0.437224, 0.427269,
		-0.579691, 0.758634, 0.297379,
		66.149384, 61.672970, 57.784924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.850693, 61.278477, 58.148518>,  <66.555161, 61.141930, 57.576759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.850693, 61.278477, 58.148518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.463425, 61.360062, 58.090492>,  <66.231064, 61.409012, 58.055676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.463425, 61.360062, 58.090492>,  <66.850693, 61.278477, 58.148518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.463425, 61.360062, 58.090492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249437, -0.738453, 0.626473,
		0.020652, 0.642718, 0.765824,
		-0.968171, 0.203963, -0.145067,
		66.172974, 61.421249, 58.046970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.449265, 60.755100, 58.053696>,  <66.850693, 61.278477, 58.148518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.449265, 60.755100, 58.053696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.496040, 60.372921, 58.162102>,  <67.524109, 60.143616, 58.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.496040, 60.372921, 58.162102>,  <67.449265, 60.755100, 58.053696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.496040, 60.372921, 58.162102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578186, 0.156375, 0.800779,
		-0.807480, -0.250342, -0.534139,
		0.116943, -0.955445, 0.271014,
		67.531120, 60.086288, 58.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.153450, 60.942448, 58.181335>,  <67.449265, 60.755100, 58.053696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.153450, 60.942448, 58.181335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.482071, 61.068909, 57.991554>,  <68.679245, 61.144787, 57.877686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.482071, 61.068909, 57.991554>,  <68.153450, 60.942448, 58.181335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.482071, 61.068909, 57.991554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230862, -0.945363, -0.230198,
		-0.521308, 0.079586, -0.849650,
		0.821548, 0.316155, -0.474452,
		68.728539, 61.163754, 57.849220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.982750, 60.643276, 57.603161>,  <68.153450, 60.942448, 58.181335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.982750, 60.643276, 57.603161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.373970, 60.719917, 57.635872>,  <68.608704, 60.765903, 57.655499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.373970, 60.719917, 57.635872>,  <67.982750, 60.643276, 57.603161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.373970, 60.719917, 57.635872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192926, -0.981176, -0.008518,
		0.078604, 0.024108, -0.996614,
		0.978060, 0.191604, 0.081776,
		68.667389, 60.777397, 57.660404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.396889, 60.392689, 56.943081>,  <67.982750, 60.643276, 57.603161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.396889, 60.392689, 56.943081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.592499, 60.412956, 57.291397>,  <68.709862, 60.425117, 57.500389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.592499, 60.412956, 57.291397>,  <68.396889, 60.392689, 56.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.592499, 60.412956, 57.291397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070845, -0.997321, 0.018245,
		0.869386, 0.052769, -0.491307,
		0.489028, 0.050669, 0.870795,
		68.739204, 60.428158, 57.552635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.933258, 60.036205, 56.772846>,  <68.396889, 60.392689, 56.943081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.933258, 60.036205, 56.772846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.855583, 60.042889, 57.165176>,  <68.808975, 60.046898, 57.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.855583, 60.042889, 57.165176>,  <68.933258, 60.036205, 56.772846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.855583, 60.042889, 57.165176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069081, -0.997139, 0.030667,
		0.978528, 0.073711, 0.192484,
		-0.194194, 0.016712, 0.980821,
		68.797325, 60.047901, 57.459423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.380615, 59.469200, 56.898277>,  <68.933258, 60.036205, 56.772846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.380615, 59.469200, 56.898277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.165588, 59.534233, 57.229233>,  <69.036568, 59.573254, 57.427807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.165588, 59.534233, 57.229233>,  <69.380615, 59.469200, 56.898277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.165588, 59.534233, 57.229233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098343, -0.962450, 0.253019,
		0.837462, 0.217385, 0.501400,
		-0.537574, 0.162584, 0.827393,
		69.004318, 59.583008, 57.477451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.629219, 58.944599, 57.300404>,  <69.380615, 59.469200, 56.898277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.629219, 58.944599, 57.300404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414101, 58.852615, 57.624847>,  <69.285034, 58.797424, 57.819515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414101, 58.852615, 57.624847>,  <69.629219, 58.944599, 57.300404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.414101, 58.852615, 57.624847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795448, 0.180391, 0.578551,
		-0.279362, 0.956335, 0.085910,
		-0.537791, -0.229962, 0.811109,
		69.252762, 58.783627, 57.868179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.745934, 59.466854, 57.826588>,  <69.629219, 58.944599, 57.300404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.745934, 59.466854, 57.826588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.626068, 59.156502, 58.048653>,  <69.554146, 58.970291, 58.181892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.626068, 59.156502, 58.048653>,  <69.745934, 59.466854, 57.826588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.626068, 59.156502, 58.048653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832991, 0.070906, 0.548724,
		-0.465112, 0.626876, 0.625058,
		-0.299662, -0.775885, 0.555162,
		69.536171, 58.923737, 58.215202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.720718, 59.600365, 58.572483>,  <69.745934, 59.466854, 57.826588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.720718, 59.600365, 58.572483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.823288, 59.245747, 58.418449>,  <69.884827, 59.032978, 58.326027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.823288, 59.245747, 58.418449>,  <69.720718, 59.600365, 58.572483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.823288, 59.245747, 58.418449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945403, 0.147128, 0.290802,
		-0.201151, -0.438631, 0.875866,
		0.256419, -0.886542, -0.385088,
		69.900215, 58.979786, 58.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.066566, 59.166168, 59.034370>,  <69.720718, 59.600365, 58.572483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.066566, 59.166168, 59.034370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.214294, 59.015907, 58.694374>,  <70.302933, 58.925751, 58.490376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.214294, 59.015907, 58.694374>,  <70.066566, 59.166168, 59.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.214294, 59.015907, 58.694374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925878, 0.070254, 0.371234,
		-0.079740, -0.924092, 0.373758,
		0.369312, -0.375657, -0.849995,
		70.325089, 58.903210, 58.439377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.457710, 58.624943, 59.239376>,  <70.066566, 59.166168, 59.034370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.457710, 58.624943, 59.239376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616364, 58.753944, 58.895592>,  <70.711555, 58.831345, 58.689320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616364, 58.753944, 58.895592>,  <70.457710, 58.624943, 59.239376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.616364, 58.753944, 58.895592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916612, -0.088032, 0.389966,
		0.050105, -0.942466, -0.330525,
		0.396627, 0.322503, -0.859464,
		70.735352, 58.850697, 58.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.763390, 58.122219, 58.754101>,  <70.457710, 58.624943, 59.239376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.763390, 58.122219, 58.754101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.944183, 58.478687, 58.769722>,  <71.052658, 58.692566, 58.779095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.944183, 58.478687, 58.769722>,  <70.763390, 58.122219, 58.754101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.944183, 58.478687, 58.769722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736410, -0.397488, 0.547452,
		0.503395, -0.218684, -0.835925,
		0.451989, 0.891168, 0.039052,
		71.079781, 58.746037, 58.781437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.482857, 57.966663, 58.637936>,  <70.763390, 58.122219, 58.754101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.482857, 57.966663, 58.637936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494217, 58.292931, 58.869064>,  <71.501030, 58.488689, 59.007744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494217, 58.292931, 58.869064>,  <71.482857, 57.966663, 58.637936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.494217, 58.292931, 58.869064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385404, -0.542297, 0.746577,
		0.922311, 0.201497, -0.329760,
		0.028394, 0.815667, 0.577824,
		71.502739, 58.537632, 59.042412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.135597, 58.048298, 58.914295>,  <71.482857, 57.966663, 58.637936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.135597, 58.048298, 58.914295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.891457, 58.245258, 59.162491>,  <71.744972, 58.363434, 59.311409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.891457, 58.245258, 59.162491>,  <72.135597, 58.048298, 58.914295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.891457, 58.245258, 59.162491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527726, -0.331397, 0.782100,
		0.590738, 0.804806, -0.057585,
		-0.610356, 0.492405, 0.620486,
		71.708351, 58.392979, 59.348637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.785698, 57.681149, 58.588280>,  <72.135597, 58.048298, 58.914295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.785698, 57.681149, 58.588280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.911240, 57.403786, 58.847717>,  <72.986565, 57.237370, 59.003380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.911240, 57.403786, 58.847717>,  <72.785698, 57.681149, 58.588280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.911240, 57.403786, 58.847717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386352, -0.530731, -0.754358,
		0.867308, 0.487351, 0.101323,
		0.313861, -0.693407, 0.648597,
		73.005402, 57.195763, 59.042297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.465546, 57.504303, 59.037151>,  <72.785698, 57.681149, 58.588280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.465546, 57.504303, 59.037151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.313515, 57.310322, 58.722099>,  <73.222298, 57.193935, 58.533070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.313515, 57.310322, 58.722099>,  <73.465546, 57.504303, 59.037151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.313515, 57.310322, 58.722099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688510, 0.420292, -0.591024,
		0.617652, -0.766927, 0.174150,
		-0.380078, -0.484951, -0.787631,
		73.199493, 57.164837, 58.485809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.334236, 57.398010, 59.767422>,  <73.465546, 57.504303, 59.037151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.334236, 57.398010, 59.767422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.368393, 57.716858, 60.006523>,  <73.388885, 57.908165, 60.149982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.368393, 57.716858, 60.006523>,  <73.334236, 57.398010, 59.767422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.368393, 57.716858, 60.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607663, 0.517110, -0.602779,
		-0.789591, -0.311764, 0.528535,
		0.085385, 0.797120, 0.597753,
		73.394005, 57.955994, 60.185848>
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
