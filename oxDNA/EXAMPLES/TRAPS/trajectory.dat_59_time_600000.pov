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
	<35.809799, 52.377922, 49.228725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898373, 52.514957, 49.593933>,  <35.951515, 52.597179, 49.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898373, 52.514957, 49.593933>,  <35.809799, 52.377922, 49.228725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898373, 52.514957, 49.593933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730903, -0.678103, 0.077181,
		0.645560, 0.650236, -0.400555,
		0.221431, 0.342592, 0.913016,
		35.964802, 52.617737, 49.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540596, 52.752331, 49.297337>,  <35.809799, 52.377922, 49.228725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540596, 52.752331, 49.297337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774529, 53.075111, 49.330318>,  <36.914886, 53.268780, 49.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774529, 53.075111, 49.330318>,  <36.540596, 52.752331, 49.297337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774529, 53.075111, 49.330318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811040, -0.580018, -0.076113,
		-0.013594, 0.111389, -0.993684,
		0.584832, 0.806952, 0.082456,
		36.949978, 53.317196, 49.355057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967190, 52.561676, 48.820412>,  <36.540596, 52.752331, 49.297337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967190, 52.561676, 48.820412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150711, 52.796661, 49.087063>,  <37.260822, 52.937653, 49.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150711, 52.796661, 49.087063>,  <36.967190, 52.561676, 48.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150711, 52.796661, 49.087063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796578, -0.604333, -0.015674,
		0.393655, 0.538210, -0.745229,
		0.458802, 0.587462, 0.666625,
		37.288353, 52.972900, 49.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470978, 52.897514, 48.545757>,  <36.967190, 52.561676, 48.820412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470978, 52.897514, 48.545757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535652, 52.795792, 48.927162>,  <37.574459, 52.734760, 49.156006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535652, 52.795792, 48.927162>,  <37.470978, 52.897514, 48.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535652, 52.795792, 48.927162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694822, -0.656794, -0.292991,
		0.700770, 0.709895, 0.070501,
		0.161688, -0.254305, 0.953512,
		37.584160, 52.719501, 49.213215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162445, 52.994072, 48.828033>,  <37.470978, 52.897514, 48.545757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162445, 52.994072, 48.828033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017403, 52.699787, 49.056854>,  <37.930378, 52.523216, 49.194149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017403, 52.699787, 49.056854>,  <38.162445, 52.994072, 48.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017403, 52.699787, 49.056854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781759, -0.574274, -0.243028,
		0.507314, 0.359085, 0.783384,
		-0.362609, -0.735709, 0.572055,
		37.908619, 52.479073, 49.228470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966286, 53.285679, 48.670811>,  <38.162445, 52.994072, 48.828033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966286, 53.285679, 48.670811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959923, 53.156876, 49.049454>,  <38.956104, 53.079594, 49.276638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959923, 53.156876, 49.049454>,  <38.966286, 53.285679, 48.670811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959923, 53.156876, 49.049454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996597, 0.071469, 0.041062,
		-0.080875, 0.944037, 0.319771,
		-0.015910, -0.322004, 0.946605,
		38.955151, 53.060276, 49.333435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421833, 53.750797, 49.049133>,  <38.966286, 53.285679, 48.670811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421833, 53.750797, 49.049133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399406, 53.416771, 49.268044>,  <39.385948, 53.216354, 49.399391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399406, 53.416771, 49.268044>,  <39.421833, 53.750797, 49.049133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399406, 53.416771, 49.268044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996314, -0.011157, 0.085048,
		-0.064915, 0.550030, 0.832618,
		-0.056069, -0.835070, 0.547279,
		39.382587, 53.166248, 49.432228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579166, 53.961212, 49.783905>,  <39.421833, 53.750797, 49.049133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579166, 53.961212, 49.783905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670555, 53.588783, 49.670128>,  <39.725388, 53.365326, 49.601860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670555, 53.588783, 49.670128>,  <39.579166, 53.961212, 49.783905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670555, 53.588783, 49.670128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889319, 0.080720, 0.450108,
		-0.396122, -0.355796, 0.846461,
		0.228473, -0.931071, -0.284442,
		39.739098, 53.309464, 49.584797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747147, 53.732086, 50.409718>,  <39.579166, 53.961212, 49.783905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747147, 53.732086, 50.409718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952286, 53.546535, 50.120773>,  <40.075367, 53.435204, 49.947407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952286, 53.546535, 50.120773>,  <39.747147, 53.732086, 50.409718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952286, 53.546535, 50.120773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854739, 0.197409, 0.480054,
		-0.080085, -0.863624, 0.497735,
		0.512843, -0.463878, -0.722363,
		40.106140, 53.407372, 49.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105225, 53.288925, 50.746281>,  <39.747147, 53.732086, 50.409718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105225, 53.288925, 50.746281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323486, 53.338303, 50.414734>,  <40.454441, 53.367928, 50.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323486, 53.338303, 50.414734>,  <40.105225, 53.288925, 50.746281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323486, 53.338303, 50.414734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832329, 0.035155, 0.553165,
		0.097423, -0.991729, -0.083562,
		0.545652, 0.123442, -0.828870,
		40.487183, 53.375336, 50.166073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528572, 52.688698, 50.609158>,  <40.105225, 53.288925, 50.746281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528572, 52.688698, 50.609158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655827, 53.055527, 50.513023>,  <40.732178, 53.275623, 50.455345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655827, 53.055527, 50.513023>,  <40.528572, 52.688698, 50.609158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655827, 53.055527, 50.513023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805107, -0.127488, 0.579267,
		0.500593, -0.377779, -0.778903,
		0.318136, 0.917077, -0.240333,
		40.751266, 53.330650, 50.440922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237274, 52.545143, 50.548550>,  <40.528572, 52.688698, 50.609158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237274, 52.545143, 50.548550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123886, 52.921341, 50.623497>,  <41.055855, 53.147060, 50.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123886, 52.921341, 50.623497>,  <41.237274, 52.545143, 50.548550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123886, 52.921341, 50.623497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719507, 0.079416, 0.689930,
		0.633998, 0.330386, -0.699208,
		-0.283471, 0.940499, 0.187365,
		41.038845, 53.203491, 50.679707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859444, 53.127014, 50.553638>,  <41.237274, 52.545143, 50.548550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859444, 53.127014, 50.553638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531334, 53.176174, 50.777084>,  <41.334469, 53.205669, 50.911152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531334, 53.176174, 50.777084>,  <41.859444, 53.127014, 50.553638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531334, 53.176174, 50.777084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567998, 0.060095, 0.820833,
		0.067314, 0.990597, -0.119103,
		-0.820273, 0.122904, 0.558612,
		41.285252, 53.213047, 50.944668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362671, 53.152824, 49.982639>,  <41.859444, 53.127014, 50.553638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362671, 53.152824, 49.982639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758892, 53.139381, 49.929459>,  <42.996624, 53.131313, 49.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758892, 53.139381, 49.929459>,  <42.362671, 53.152824, 49.982639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758892, 53.139381, 49.929459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066606, 0.965384, 0.252185,
		0.119872, -0.258657, 0.958502,
		0.990553, -0.033612, -0.132950,
		43.056057, 53.129299, 49.889572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776314, 53.434280, 50.522804>,  <42.362671, 53.152824, 49.982639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776314, 53.434280, 50.522804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990437, 53.474560, 50.187351>,  <43.118912, 53.498726, 49.986080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990437, 53.474560, 50.187351>,  <42.776314, 53.434280, 50.522804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990437, 53.474560, 50.187351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217879, 0.942806, 0.252279,
		0.816073, -0.317767, 0.482752,
		0.535308, 0.100697, -0.838633,
		43.151028, 53.504768, 49.935760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492237, 53.719330, 50.609604>,  <42.776314, 53.434280, 50.522804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492237, 53.719330, 50.609604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344780, 53.815067, 50.250313>,  <43.256306, 53.872509, 50.034737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344780, 53.815067, 50.250313>,  <43.492237, 53.719330, 50.609604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344780, 53.815067, 50.250313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360202, 0.927571, 0.099330,
		0.856945, -0.286925, -0.428158,
		-0.368646, 0.239344, -0.898228,
		43.234184, 53.886871, 49.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993332, 54.034145, 50.104073>,  <43.492237, 53.719330, 50.609604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993332, 54.034145, 50.104073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633221, 54.172623, 49.998505>,  <43.417152, 54.255707, 49.935165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633221, 54.172623, 49.998505>,  <43.993332, 54.034145, 50.104073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633221, 54.172623, 49.998505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337294, 0.938008, 0.079838,
		0.275198, -0.017142, -0.961235,
		-0.900277, 0.346190, -0.263919,
		43.363136, 54.276478, 49.919331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957966, 54.551632, 49.473763>,  <43.993332, 54.034145, 50.104073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957966, 54.551632, 49.473763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658337, 54.627861, 49.727558>,  <43.478561, 54.673599, 49.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658337, 54.627861, 49.727558>,  <43.957966, 54.551632, 49.473763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658337, 54.627861, 49.727558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335181, 0.935128, 0.114842,
		-0.571442, 0.298693, -0.764354,
		-0.749071, 0.190571, 0.634488,
		43.433617, 54.685032, 49.917904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766800, 55.183960, 49.347561>,  <43.957966, 54.551632, 49.473763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766800, 55.183960, 49.347561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681847, 55.081844, 49.724861>,  <43.630875, 55.020576, 49.951241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681847, 55.081844, 49.724861>,  <43.766800, 55.183960, 49.347561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681847, 55.081844, 49.724861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367380, 0.873597, 0.319155,
		-0.905498, 0.414313, -0.091747,
		-0.212380, -0.255288, 0.943251,
		43.618134, 55.005257, 50.007835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216339, 55.555626, 49.551098>,  <43.766800, 55.183960, 49.347561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216339, 55.555626, 49.551098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504906, 55.466309, 49.813305>,  <43.678043, 55.412716, 49.970627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504906, 55.466309, 49.813305>,  <43.216339, 55.555626, 49.551098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504906, 55.466309, 49.813305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275057, 0.961111, 0.024688,
		-0.635535, 0.162494, 0.754779,
		0.721415, -0.223297, 0.655515,
		43.721329, 55.399319, 50.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178902, 55.861794, 50.248917>,  <43.216339, 55.555626, 49.551098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178902, 55.861794, 50.248917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562481, 55.831463, 50.139622>,  <43.792629, 55.813263, 50.074043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562481, 55.831463, 50.139622>,  <43.178902, 55.861794, 50.248917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562481, 55.831463, 50.139622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149846, 0.953565, 0.261267,
		0.240742, -0.291486, 0.925785,
		0.958952, -0.075827, -0.273242,
		43.850166, 55.808716, 50.057648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729992, 56.150555, 50.790134>,  <43.178902, 55.861794, 50.248917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729992, 56.150555, 50.790134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859093, 56.169979, 50.412041>,  <43.936554, 56.181633, 50.185184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859093, 56.169979, 50.412041>,  <43.729992, 56.150555, 50.790134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859093, 56.169979, 50.412041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234405, 0.963471, 0.129534,
		0.916999, -0.263375, 0.299578,
		0.322751, 0.048560, -0.945238,
		43.955917, 56.184547, 50.128468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277962, 56.684418, 51.021835>,  <43.729992, 56.150555, 50.790134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277962, 56.684418, 51.021835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502861, 57.003468, 50.934494>,  <44.637802, 57.194897, 50.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502861, 57.003468, 50.934494>,  <44.277962, 56.684418, 51.021835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502861, 57.003468, 50.934494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725897, 0.602506, 0.331753,
		0.396170, -0.028028, 0.917749,
		0.562248, 0.797622, -0.218350,
		44.671535, 57.242756, 50.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061192, 56.357239, 51.720711>,  <44.277962, 56.684418, 51.021835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061192, 56.357239, 51.720711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147057, 56.259548, 52.098976>,  <44.198574, 56.200935, 52.325935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147057, 56.259548, 52.098976>,  <44.061192, 56.357239, 51.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147057, 56.259548, 52.098976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706909, 0.706958, 0.022111,
		-0.673943, 0.663750, 0.324402,
		0.214662, -0.244225, 0.945661,
		44.211456, 56.186279, 52.382675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237564, 56.957504, 52.129200>,  <44.061192, 56.357239, 51.720711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237564, 56.957504, 52.129200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404671, 56.638481, 52.303268>,  <44.504936, 56.447067, 52.407711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404671, 56.638481, 52.303268>,  <44.237564, 56.957504, 52.129200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404671, 56.638481, 52.303268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823100, 0.535030, 0.190391,
		-0.384677, 0.278651, 0.879987,
		0.417767, -0.797557, 0.435172,
		44.530003, 56.399216, 52.433819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399338, 57.036980, 52.870384>,  <44.237564, 56.957504, 52.129200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399338, 57.036980, 52.870384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639679, 56.799984, 52.655746>,  <44.783882, 56.657787, 52.526962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639679, 56.799984, 52.655746>,  <44.399338, 57.036980, 52.870384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639679, 56.799984, 52.655746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798699, 0.472302, 0.372840,
		0.032531, -0.652600, 0.757004,
		0.600850, -0.592490, -0.536596,
		44.819935, 56.622238, 52.494766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840809, 56.801041, 53.352234>,  <44.399338, 57.036980, 52.870384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840809, 56.801041, 53.352234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983780, 56.792030, 52.978767>,  <45.069561, 56.786625, 52.754688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983780, 56.792030, 52.978767>,  <44.840809, 56.801041, 53.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983780, 56.792030, 52.978767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893851, 0.298010, 0.334994,
		0.270698, -0.954297, 0.126649,
		0.357427, -0.022523, -0.933670,
		45.091007, 56.785275, 52.698666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420769, 56.404785, 53.362373>,  <44.840809, 56.801041, 53.352234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420769, 56.404785, 53.362373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419228, 56.696758, 53.088970>,  <45.418304, 56.871941, 52.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419228, 56.696758, 53.088970>,  <45.420769, 56.404785, 53.362373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419228, 56.696758, 53.088970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727152, 0.471257, 0.499166,
		0.686466, -0.495090, -0.532589,
		-0.003854, 0.729934, -0.683507,
		45.418072, 56.915737, 52.883919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105591, 56.577988, 52.988159>,  <45.420769, 56.404785, 53.362373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105591, 56.577988, 52.988159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848061, 56.876614, 53.055248>,  <45.693542, 57.055790, 53.095501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848061, 56.876614, 53.055248>,  <46.105591, 56.577988, 52.988159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848061, 56.876614, 53.055248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707234, 0.496925, 0.502878,
		0.292085, 0.442385, -0.847928,
		-0.643822, 0.746566, 0.167725,
		45.654915, 57.100582, 53.105564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426609, 57.067951, 52.809330>,  <46.105591, 56.577988, 52.988159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426609, 57.067951, 52.809330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138603, 57.231438, 53.033661>,  <45.965797, 57.329529, 53.168259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138603, 57.231438, 53.033661>,  <46.426609, 57.067951, 52.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138603, 57.231438, 53.033661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684552, 0.550914, 0.477371,
		-0.113861, 0.727632, -0.676452,
		-0.720017, 0.408712, 0.560830,
		45.922600, 57.354050, 53.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548767, 57.819378, 52.871006>,  <46.426609, 57.067951, 52.809330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548767, 57.819378, 52.871006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358067, 57.661720, 53.185295>,  <46.243645, 57.567127, 53.373867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358067, 57.661720, 53.185295>,  <46.548767, 57.819378, 52.871006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358067, 57.661720, 53.185295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652681, 0.440021, 0.616757,
		-0.588824, 0.806866, 0.047467,
		-0.476754, -0.394142, 0.785721,
		46.215042, 57.543476, 53.421013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182831, 58.302353, 53.331211>,  <46.548767, 57.819378, 52.871006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182831, 58.302353, 53.331211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334084, 58.030334, 53.582462>,  <46.424835, 57.867123, 53.733215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334084, 58.030334, 53.582462>,  <46.182831, 58.302353, 53.331211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334084, 58.030334, 53.582462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541663, 0.712770, 0.445602,
		-0.750743, 0.171737, 0.637880,
		0.378135, -0.680048, 0.628130,
		46.447525, 57.826321, 53.770901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937565, 58.441345, 53.951824>,  <46.182831, 58.302353, 53.331211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937565, 58.441345, 53.951824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308491, 58.294342, 53.980179>,  <46.531048, 58.206139, 53.997192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308491, 58.294342, 53.980179>,  <45.937565, 58.441345, 53.951824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308491, 58.294342, 53.980179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306538, 0.854393, 0.419579,
		-0.214763, -0.367353, 0.904947,
		0.927314, -0.367510, 0.070884,
		46.586685, 58.184090, 54.001446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309807, 58.484039, 54.678215>,  <45.937565, 58.441345, 53.951824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309807, 58.484039, 54.678215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597057, 58.558586, 54.410015>,  <46.769405, 58.603313, 54.249096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597057, 58.558586, 54.410015>,  <46.309807, 58.484039, 54.678215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597057, 58.558586, 54.410015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406022, 0.670293, 0.621171,
		0.565193, -0.718315, 0.405686,
		0.718125, 0.186364, -0.670496,
		46.812496, 58.614494, 54.208866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907970, 58.195591, 54.992699>,  <46.309807, 58.484039, 54.678215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907970, 58.195591, 54.992699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879776, 58.525730, 54.768616>,  <46.862858, 58.723812, 54.634167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879776, 58.525730, 54.768616>,  <46.907970, 58.195591, 54.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879776, 58.525730, 54.768616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001641, 0.561508, 0.827470,
		0.997511, 0.059243, -0.038223,
		-0.070485, 0.825348, -0.560208,
		46.858631, 58.773335, 54.600552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446049, 58.767986, 54.973289>,  <46.907970, 58.195591, 54.992699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446049, 58.767986, 54.973289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079269, 58.925270, 55.000389>,  <46.859203, 59.019642, 55.016647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079269, 58.925270, 55.000389>,  <47.446049, 58.767986, 54.973289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079269, 58.925270, 55.000389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229684, 0.381340, 0.895447,
		0.326266, 0.836639, -0.439984,
		-0.916949, 0.393212, 0.067744,
		46.804184, 59.043232, 55.020714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598766, 59.175709, 55.537056>,  <47.446049, 58.767986, 54.973289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.598766, 59.175709, 55.537056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220451, 59.238518, 55.423332>,  <46.993462, 59.276203, 55.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220451, 59.238518, 55.423332>,  <47.598766, 59.175709, 55.537056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220451, 59.238518, 55.423332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142600, 0.585712, 0.797877,
		0.291809, 0.795163, -0.531567,
		-0.945787, 0.157026, -0.284306,
		46.936714, 59.285625, 55.338039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.592327, 59.566246, 56.099937>,  <47.598766, 59.175709, 55.537056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.592327, 59.566246, 56.099937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315346, 59.617325, 55.815910>,  <47.149155, 59.647972, 55.645493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315346, 59.617325, 55.815910>,  <47.592327, 59.566246, 56.099937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315346, 59.617325, 55.815910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337164, 0.812843, 0.474980,
		0.637827, 0.568314, -0.519804,
		-0.692457, 0.127696, -0.710069,
		47.107609, 59.655632, 55.602890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.346706, 59.450607, 55.934654>,  <47.592327, 59.566246, 56.099937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.346706, 59.450607, 55.934654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.357872, 59.643593, 55.584465>,  <48.364571, 59.759384, 55.374352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.357872, 59.643593, 55.584465>,  <48.346706, 59.450607, 55.934654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.357872, 59.643593, 55.584465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998957, 0.018201, 0.041887,
		0.036143, -0.875728, -0.481451,
		0.027919, 0.482462, -0.875472,
		48.366249, 59.788330, 55.321823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.785221, 59.074074, 55.443863>,  <48.346706, 59.450607, 55.934654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.785221, 59.074074, 55.443863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.761230, 59.463509, 55.355736>,  <48.746834, 59.697170, 55.302860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.761230, 59.463509, 55.355736>,  <48.785221, 59.074074, 55.443863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.761230, 59.463509, 55.355736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994803, 0.076492, 0.067194,
		0.082272, -0.215143, -0.973111,
		-0.059979, 0.973582, -0.220318,
		48.743237, 59.755585, 55.289639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.223019, 59.243866, 54.926575>,  <48.785221, 59.074074, 55.443863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.223019, 59.243866, 54.926575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.174313, 59.592506, 55.116516>,  <49.145088, 59.801689, 55.230480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.174313, 59.592506, 55.116516>,  <49.223019, 59.243866, 54.926575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.174313, 59.592506, 55.116516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992244, 0.094850, 0.080343,
		0.024987, 0.480955, -0.876389,
		-0.121767, 0.871600, 0.474855,
		49.137783, 59.853985, 55.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.800182, 59.541088, 54.703678>,  <49.223019, 59.243866, 54.926575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.800182, 59.541088, 54.703678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.662346, 59.726902, 55.029984>,  <49.579643, 59.838390, 55.225765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.662346, 59.726902, 55.029984>,  <49.800182, 59.541088, 54.703678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.662346, 59.726902, 55.029984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935498, 0.097623, 0.339577,
		0.078108, 0.880158, -0.468210,
		-0.344590, 0.464534, 0.815761,
		49.558968, 59.866261, 55.274712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.338509, 59.438560, 54.179188>,  <49.800182, 59.541088, 54.703678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.338509, 59.438560, 54.179188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.610336, 59.279434, 54.425743>,  <50.773434, 59.183960, 54.573677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.610336, 59.279434, 54.425743>,  <50.338509, 59.438560, 54.179188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.610336, 59.279434, 54.425743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733510, 0.354359, -0.579993,
		0.012309, 0.846269, 0.532613,
		0.679567, -0.397817, 0.616385,
		50.814205, 59.160088, 54.610661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.778713, 59.960114, 54.549728>,  <50.338509, 59.438560, 54.179188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.778713, 59.960114, 54.549728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961048, 59.608376, 54.494648>,  <51.070450, 59.397331, 54.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961048, 59.608376, 54.494648>,  <50.778713, 59.960114, 54.549728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.961048, 59.608376, 54.494648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657197, 0.436862, -0.614202,
		0.600252, 0.189480, 0.777042,
		0.455840, -0.879346, -0.137701,
		51.097801, 59.344570, 54.453339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.481052, 60.086044, 54.679817>,  <50.778713, 59.960114, 54.549728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.481052, 60.086044, 54.679817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.492687, 59.733532, 54.491135>,  <51.499668, 59.522026, 54.377926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.492687, 59.733532, 54.491135>,  <51.481052, 60.086044, 54.679817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.492687, 59.733532, 54.491135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787183, 0.311026, -0.532546,
		0.616033, -0.355829, 0.702773,
		0.029086, -0.881277, -0.471705,
		51.501411, 59.469151, 54.349625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.109169, 60.557400, 54.826099>,  <51.481052, 60.086044, 54.679817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.109169, 60.557400, 54.826099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883930, 60.624840, 55.149704>,  <51.748787, 60.665306, 55.343864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883930, 60.624840, 55.149704>,  <52.109169, 60.557400, 54.826099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.883930, 60.624840, 55.149704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222561, -0.911854, 0.344947,
		0.795857, 0.374293, 0.475938,
		-0.563097, 0.168603, 0.809008,
		51.715000, 60.675419, 55.392406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.515953, 60.553555, 55.461159>,  <52.109169, 60.557400, 54.826099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.515953, 60.553555, 55.461159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.142113, 60.479187, 55.582451>,  <51.917809, 60.434566, 55.655228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.142113, 60.479187, 55.582451>,  <52.515953, 60.553555, 55.461159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.142113, 60.479187, 55.582451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281754, -0.907304, 0.312112,
		0.217095, 0.377138, 0.900353,
		-0.934604, -0.185920, 0.303232,
		51.861732, 60.423412, 55.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.966518, 60.578873, 56.054108>,  <52.515953, 60.553555, 55.461159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.966518, 60.578873, 56.054108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.026756, 60.831848, 55.750175>,  <53.062901, 60.983635, 55.567818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.026756, 60.831848, 55.750175>,  <52.966518, 60.578873, 56.054108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.026756, 60.831848, 55.750175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988455, -0.083382, 0.126504,
		0.016651, -0.770107, -0.637697,
		0.150594, 0.632442, -0.759828,
		53.071934, 61.021580, 55.522228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.608974, 60.277328, 55.817719>,  <52.966518, 60.578873, 56.054108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.608974, 60.277328, 55.817719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.576641, 60.641747, 55.655998>,  <53.557243, 60.860397, 55.558964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.576641, 60.641747, 55.655998>,  <53.608974, 60.277328, 55.817719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.576641, 60.641747, 55.655998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979979, 0.146688, 0.134623,
		0.181955, -0.385328, -0.904663,
		-0.080829, 0.911046, -0.404304,
		53.552391, 60.915062, 55.534706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.726566, 60.422485, 55.089901>,  <53.608974, 60.277328, 55.817719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.726566, 60.422485, 55.089901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.813816, 60.705353, 55.358925>,  <53.866165, 60.875072, 55.520340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.813816, 60.705353, 55.358925>,  <53.726566, 60.422485, 55.089901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.813816, 60.705353, 55.358925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960890, -0.276107, -0.021319,
		0.170623, 0.650908, -0.739734,
		0.218123, 0.707166, 0.672562,
		53.879253, 60.917503, 55.560692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.375767, 60.808300, 54.892582>,  <53.726566, 60.422485, 55.089901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.375767, 60.808300, 54.892582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.312004, 60.790150, 55.287048>,  <54.273746, 60.779259, 55.523727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.312004, 60.790150, 55.287048>,  <54.375767, 60.808300, 54.892582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.312004, 60.790150, 55.287048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790552, -0.604178, 0.099984,
		0.591285, 0.795556, 0.132183,
		-0.159405, -0.045379, 0.986170,
		54.264183, 60.776535, 55.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.987473, 60.996384, 55.344036>,  <54.375767, 60.808300, 54.892582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.987473, 60.996384, 55.344036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784698, 60.730339, 55.563362>,  <54.663036, 60.570713, 55.694958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784698, 60.730339, 55.563362>,  <54.987473, 60.996384, 55.344036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.784698, 60.730339, 55.563362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824384, -0.559915, 0.082984,
		0.251814, 0.494087, 0.832147,
		-0.506932, -0.665112, 0.548312,
		54.632618, 60.530804, 55.727856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.135704, 61.060070, 56.111664>,  <54.987473, 60.996384, 55.344036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.135704, 61.060070, 56.111664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.046234, 60.714943, 55.930328>,  <54.992554, 60.507866, 55.821526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.046234, 60.714943, 55.930328>,  <55.135704, 61.060070, 56.111664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.046234, 60.714943, 55.930328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895971, -0.365114, 0.252839,
		-0.383674, -0.349625, 0.854726,
		-0.223673, -0.862818, -0.453338,
		54.979134, 60.456097, 55.794327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.030277, 60.422104, 56.425026>,  <55.135704, 61.060070, 56.111664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.030277, 60.422104, 56.425026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.160072, 60.321487, 56.060295>,  <55.237949, 60.261120, 55.841457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.160072, 60.321487, 56.060295>,  <55.030277, 60.422104, 56.425026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.160072, 60.321487, 56.060295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810887, -0.422344, 0.405076,
		-0.486998, -0.870835, 0.066921,
		0.324491, -0.251537, -0.911830,
		55.257420, 60.246025, 55.786747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.366940, 59.787144, 56.663784>,  <55.030277, 60.422104, 56.425026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.366940, 59.787144, 56.663784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.505478, 59.893684, 56.303986>,  <55.588600, 59.957607, 56.088104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.505478, 59.893684, 56.303986>,  <55.366940, 59.787144, 56.663784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.505478, 59.893684, 56.303986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920306, -0.282367, 0.270750,
		-0.181875, -0.921589, -0.342922,
		0.346350, 0.266350, -0.899500,
		55.609383, 59.973591, 56.034134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.689796, 59.267563, 56.119114>,  <55.366940, 59.787144, 56.663784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.689796, 59.267563, 56.119114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.839821, 59.631927, 56.187897>,  <55.929836, 59.850548, 56.229168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.839821, 59.631927, 56.187897>,  <55.689796, 59.267563, 56.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.839821, 59.631927, 56.187897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868826, -0.410102, 0.277414,
		0.323219, 0.045353, -0.945237,
		0.375062, 0.910911, 0.171957,
		55.952339, 59.905201, 56.239483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.321133, 59.322922, 55.760582>,  <55.689796, 59.267563, 56.119114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.321133, 59.322922, 55.760582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.333672, 59.574505, 56.071304>,  <56.341194, 59.725456, 56.257740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.333672, 59.574505, 56.071304>,  <56.321133, 59.322922, 55.760582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.333672, 59.574505, 56.071304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825707, -0.454247, 0.334467,
		0.563227, 0.630931, -0.533573,
		0.031348, 0.628956, 0.776808,
		56.343075, 59.763191, 56.304348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.014061, 59.649807, 55.837246>,  <56.321133, 59.322922, 55.760582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.014061, 59.649807, 55.837246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.822319, 59.655045, 56.188255>,  <56.707275, 59.658188, 56.398861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.822319, 59.655045, 56.188255>,  <57.014061, 59.649807, 55.837246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.822319, 59.655045, 56.188255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738664, -0.533921, 0.411466,
		0.473918, 0.845433, 0.246262,
		-0.479351, 0.013097, 0.877526,
		56.678513, 59.658974, 56.451511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.261566, 59.947289, 56.532909>,  <57.014061, 59.649807, 55.837246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.261566, 59.947289, 56.532909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.033195, 59.632439, 56.626266>,  <56.896172, 59.443527, 56.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.033195, 59.632439, 56.626266>,  <57.261566, 59.947289, 56.532909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.033195, 59.632439, 56.626266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820864, -0.552451, 0.144843,
		0.014928, 0.274279, 0.961534,
		-0.570928, -0.787127, 0.233393,
		56.861916, 59.396301, 56.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.482059, 59.569447, 57.151917>,  <57.261566, 59.947289, 56.532909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.482059, 59.569447, 57.151917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.312767, 59.256844, 56.968559>,  <57.211193, 59.069283, 56.858543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.312767, 59.256844, 56.968559>,  <57.482059, 59.569447, 57.151917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.312767, 59.256844, 56.968559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750864, -0.585684, 0.305250,
		-0.507029, -0.215001, 0.834683,
		-0.423232, -0.781504, -0.458395,
		57.185799, 59.022392, 56.831039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.269535, 59.016140, 57.596775>,  <57.482059, 59.569447, 57.151917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.269535, 59.016140, 57.596775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.339989, 58.864868, 57.233246>,  <57.382263, 58.774105, 57.015129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.339989, 58.864868, 57.233246>,  <57.269535, 59.016140, 57.596775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.339989, 58.864868, 57.233246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837957, -0.426858, 0.340030,
		-0.516530, -0.821444, 0.241713,
		0.176139, -0.378181, -0.908820,
		57.392830, 58.751415, 56.960598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.393871, 58.285469, 57.624931>,  <57.269535, 59.016140, 57.596775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.393871, 58.285469, 57.624931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.577812, 58.465698, 57.318855>,  <57.688179, 58.573833, 57.135208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.577812, 58.465698, 57.318855>,  <57.393871, 58.285469, 57.624931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.577812, 58.465698, 57.318855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883366, -0.319980, 0.342457,
		-0.090545, -0.833426, -0.545164,
		0.459854, 0.450571, -0.765193,
		57.715767, 58.600868, 57.089298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.097424, 57.974285, 57.565426>,  <57.393871, 58.285469, 57.624931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.097424, 57.974285, 57.565426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.123932, 58.341438, 57.408913>,  <58.139839, 58.561729, 57.315002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.123932, 58.341438, 57.408913>,  <58.097424, 57.974285, 57.565426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.123932, 58.341438, 57.408913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941152, 0.072748, 0.330062,
		0.331423, -0.390134, -0.859043,
		0.066274, 0.917880, -0.391285,
		58.143814, 58.616802, 57.291527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.636860, 57.976730, 57.144241>,  <58.097424, 57.974285, 57.565426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.636860, 57.976730, 57.144241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579834, 58.357780, 57.251709>,  <58.545620, 58.586411, 57.316189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579834, 58.357780, 57.251709>,  <58.636860, 57.976730, 57.144241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.579834, 58.357780, 57.251709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927271, 0.033604, 0.372879,
		0.346185, 0.302287, -0.888132,
		-0.142561, 0.952624, 0.268669,
		58.537067, 58.643566, 57.332310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.272209, 58.367302, 57.096439>,  <58.636860, 57.976730, 57.144241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.272209, 58.367302, 57.096439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.104897, 58.676582, 57.287102>,  <59.004509, 58.862152, 57.401501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.104897, 58.676582, 57.287102>,  <59.272209, 58.367302, 57.096439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.104897, 58.676582, 57.287102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907032, 0.327645, 0.264465,
		0.048310, 0.542965, -0.838365,
		-0.418281, 0.773200, 0.476658,
		58.979412, 58.908543, 57.430099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.429508, 58.939507, 56.677940>,  <59.272209, 58.367302, 57.096439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.429508, 58.939507, 56.677940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.391373, 59.089302, 57.046867>,  <59.368492, 59.179180, 57.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.391373, 59.089302, 57.046867>,  <59.429508, 58.939507, 56.677940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.391373, 59.089302, 57.046867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952246, 0.304298, -0.025117,
		-0.290066, 0.875879, -0.385615,
		-0.095343, 0.374485, 0.922318,
		59.362770, 59.201649, 57.323563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.582817, 59.660511, 56.782642>,  <59.429508, 58.939507, 56.677940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.582817, 59.660511, 56.782642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.699623, 59.452415, 57.103661>,  <59.769707, 59.327560, 57.296272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.699623, 59.452415, 57.103661>,  <59.582817, 59.660511, 56.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.699623, 59.452415, 57.103661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956287, 0.145132, -0.253876,
		0.015600, 0.841601, 0.539875,
		0.292015, -0.520236, 0.802547,
		59.787228, 59.296345, 57.344425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.978111, 60.131287, 57.093784>,  <59.582817, 59.660511, 56.782642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.978111, 60.131287, 57.093784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.088768, 59.752872, 57.161285>,  <60.155163, 59.525822, 57.201786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.088768, 59.752872, 57.161285>,  <59.978111, 60.131287, 57.093784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.088768, 59.752872, 57.161285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960654, 0.276779, -0.023194,
		-0.024765, 0.168531, 0.985385,
		0.276643, -0.946039, 0.168754,
		60.171761, 59.469059, 57.211910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.504486, 60.174809, 57.593414>,  <59.978111, 60.131287, 57.093784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.504486, 60.174809, 57.593414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.540962, 59.829033, 57.395653>,  <60.562847, 59.621567, 57.276997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.540962, 59.829033, 57.395653>,  <60.504486, 60.174809, 57.593414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.540962, 59.829033, 57.395653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973132, 0.182756, -0.140049,
		0.211419, -0.468347, 0.857877,
		0.091191, -0.864437, -0.494402,
		60.568321, 59.569702, 57.247334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.051682, 59.871513, 57.910484>,  <60.504486, 60.174809, 57.593414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.051682, 59.871513, 57.910484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.007217, 59.709892, 57.547302>,  <60.980537, 59.612919, 57.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.007217, 59.709892, 57.547302>,  <61.051682, 59.871513, 57.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.007217, 59.709892, 57.547302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989730, 0.037610, -0.137911,
		0.089871, -0.913963, 0.395720,
		-0.111162, -0.404051, -0.907957,
		60.973869, 59.588676, 57.274914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.537060, 59.228203, 57.894032>,  <61.051682, 59.871513, 57.910484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.537060, 59.228203, 57.894032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.460991, 59.445930, 57.567215>,  <61.415348, 59.576565, 57.371124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.460991, 59.445930, 57.567215>,  <61.537060, 59.228203, 57.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.460991, 59.445930, 57.567215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969873, -0.024895, -0.242335,
		-0.152246, -0.838512, -0.523182,
		-0.190176, 0.544314, -0.817040,
		61.403938, 59.609226, 57.322102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.855873, 58.953846, 57.345982>,  <61.537060, 59.228203, 57.894032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.855873, 58.953846, 57.345982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799561, 59.314808, 57.183090>,  <61.765774, 59.531387, 57.085354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799561, 59.314808, 57.183090>,  <61.855873, 58.953846, 57.345982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.799561, 59.314808, 57.183090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890772, -0.064063, -0.449912,
		-0.432093, -0.426092, -0.794822,
		-0.140786, 0.902409, -0.407232,
		61.757324, 59.585529, 57.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.831467, 59.090782, 56.591480>,  <61.855873, 58.953846, 57.345982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.831467, 59.090782, 56.591480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.994568, 59.406883, 56.774452>,  <62.092426, 59.596542, 56.884235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.994568, 59.406883, 56.774452>,  <61.831467, 59.090782, 56.591480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.994568, 59.406883, 56.774452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834928, -0.119877, -0.537145,
		-0.369644, 0.600944, -0.708682,
		0.407749, 0.790250, 0.457433,
		62.116894, 59.643959, 56.911682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.379227, 59.519749, 56.266850>,  <61.831467, 59.090782, 56.591480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.379227, 59.519749, 56.266850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627228, 59.584717, 56.573891>,  <62.776028, 59.623699, 56.758114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627228, 59.584717, 56.573891>,  <62.379227, 59.519749, 56.266850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.627228, 59.584717, 56.573891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636451, 0.468013, -0.613102,
		-0.458830, 0.868667, 0.186795,
		0.620004, 0.162424, 0.767603,
		62.813229, 59.633446, 56.804173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.724850, 60.256836, 56.368534>,  <62.379227, 59.519749, 56.266850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.724850, 60.256836, 56.368534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.964569, 59.960941, 56.490929>,  <63.108402, 59.783405, 56.564365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.964569, 59.960941, 56.490929>,  <62.724850, 60.256836, 56.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.964569, 59.960941, 56.490929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636419, 0.208403, -0.742657,
		0.485604, 0.639809, 0.595679,
		0.599299, -0.739739, 0.305985,
		63.144360, 59.739021, 56.582726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.312607, 60.480762, 56.463104>,  <62.724850, 60.256836, 56.368534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.312607, 60.480762, 56.463104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.385406, 60.095917, 56.381905>,  <63.429085, 59.865009, 56.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.385406, 60.095917, 56.381905>,  <63.312607, 60.480762, 56.463104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.385406, 60.095917, 56.381905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682185, 0.272229, -0.678613,
		0.708167, -0.014978, 0.705886,
		0.181998, -0.962116, -0.203002,
		63.440006, 59.807281, 56.321003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.017410, 60.507420, 56.345032>,  <63.312607, 60.480762, 56.463104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.017410, 60.507420, 56.345032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.869049, 60.183365, 56.163437>,  <63.780029, 59.988934, 56.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.869049, 60.183365, 56.163437>,  <64.017410, 60.507420, 56.345032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.869049, 60.183365, 56.163437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708144, 0.069531, -0.702636,
		0.600798, -0.582101, 0.547904,
		-0.370909, -0.810138, -0.453985,
		63.757774, 59.940323, 56.027241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.803162, 60.652290, 56.330406>,  <64.017410, 60.507420, 56.345032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.803162, 60.652290, 56.330406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.832413, 61.016708, 56.492714>,  <64.849968, 61.235359, 56.590099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.832413, 61.016708, 56.492714>,  <64.803162, 60.652290, 56.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.832413, 61.016708, 56.492714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710432, -0.237962, 0.662315,
		0.699956, -0.336710, 0.629831,
		0.073132, 0.911044, 0.405773,
		64.854355, 61.290020, 56.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.466072, 60.887966, 55.989891>,  <64.803162, 60.652290, 56.330406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.466072, 60.887966, 55.989891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.326462, 60.528633, 56.096619>,  <65.242699, 60.313034, 56.160656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.326462, 60.528633, 56.096619>,  <65.466072, 60.887966, 55.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.326462, 60.528633, 56.096619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807967, -0.144223, 0.571305,
		-0.474738, 0.414977, 0.776156,
		-0.349018, -0.898328, 0.266820,
		65.221756, 60.259136, 56.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.418625, 60.913208, 56.772419>,  <65.466072, 60.887966, 55.989891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.418625, 60.913208, 56.772419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.468658, 60.538933, 56.640457>,  <65.498680, 60.314365, 56.561279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.468658, 60.538933, 56.640457>,  <65.418625, 60.913208, 56.772419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.468658, 60.538933, 56.640457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681969, -0.160427, 0.713570,
		-0.720607, -0.314236, 0.618046,
		0.125078, -0.935691, -0.329904,
		65.506180, 60.258224, 56.541485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.515823, 60.442848, 57.391987>,  <65.418625, 60.913208, 56.772419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.515823, 60.442848, 57.391987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.667107, 60.242630, 57.080498>,  <65.757874, 60.122498, 56.893604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.667107, 60.242630, 57.080498>,  <65.515823, 60.442848, 57.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.667107, 60.242630, 57.080498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835209, -0.178286, 0.520231,
		-0.399237, -0.847151, 0.350635,
		0.378201, -0.500549, -0.778726,
		65.780563, 60.092464, 56.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.819336, 59.805115, 57.639828>,  <65.515823, 60.442848, 57.391987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.819336, 59.805115, 57.639828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973328, 59.902119, 57.283630>,  <66.065727, 59.960320, 57.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973328, 59.902119, 57.283630>,  <65.819336, 59.805115, 57.639828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.973328, 59.902119, 57.283630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915248, -0.224490, 0.334551,
		-0.118775, -0.943819, -0.308381,
		0.384984, 0.242509, -0.890492,
		66.088821, 59.974873, 57.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.183907, 59.164803, 57.436726>,  <65.819336, 59.805115, 57.639828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.183907, 59.164803, 57.436726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337494, 59.503101, 57.288513>,  <66.429642, 59.706081, 57.199585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337494, 59.503101, 57.288513>,  <66.183907, 59.164803, 57.436726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.337494, 59.503101, 57.288513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894080, -0.240306, 0.377987,
		0.230640, -0.476413, -0.848431,
		0.383961, 0.845744, -0.370527,
		66.452682, 59.756824, 57.177357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.796989, 59.013229, 57.104088>,  <66.183907, 59.164803, 57.436726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.796989, 59.013229, 57.104088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796158, 59.390289, 57.237602>,  <66.795662, 59.616524, 57.317711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796158, 59.390289, 57.237602>,  <66.796989, 59.013229, 57.104088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.796158, 59.390289, 57.237602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961224, -0.090165, 0.260613,
		0.275762, 0.321386, -0.905906,
		-0.002076, 0.942646, 0.333788,
		66.795532, 59.673084, 57.337738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.267342, 59.343864, 56.751934>,  <66.796989, 59.013229, 57.104088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.267342, 59.343864, 56.751934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242638, 59.550789, 57.093361>,  <67.227814, 59.674942, 57.298218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242638, 59.550789, 57.093361>,  <67.267342, 59.343864, 56.751934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.242638, 59.550789, 57.093361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984056, -0.111361, 0.138682,
		0.166795, 0.848524, -0.502182,
		-0.061751, 0.517307, 0.853569,
		67.224113, 59.705982, 57.349430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.764656, 59.875862, 56.641495>,  <67.267342, 59.343864, 56.751934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.764656, 59.875862, 56.641495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702736, 59.769650, 57.022133>,  <67.665588, 59.705921, 57.250515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702736, 59.769650, 57.022133>,  <67.764656, 59.875862, 56.641495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.702736, 59.769650, 57.022133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974018, -0.202188, 0.102025,
		0.165310, 0.942663, 0.289930,
		-0.154796, -0.265531, 0.951594,
		67.656296, 59.689991, 57.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.294708, 60.243271, 57.133850>,  <67.764656, 59.875862, 56.641495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.294708, 60.243271, 57.133850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.193085, 59.921158, 57.348129>,  <68.132111, 59.727890, 57.476696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.193085, 59.921158, 57.348129>,  <68.294708, 60.243271, 57.133850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.193085, 59.921158, 57.348129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965685, -0.242085, 0.094057,
		0.053942, 0.541214, 0.839153,
		-0.254051, -0.805284, 0.535701,
		68.116867, 59.679573, 57.508839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.636368, 60.060627, 57.795940>,  <68.294708, 60.243271, 57.133850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.636368, 60.060627, 57.795940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.536011, 59.692131, 57.677032>,  <68.475800, 59.471035, 57.605686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.536011, 59.692131, 57.677032>,  <68.636368, 60.060627, 57.795940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.536011, 59.692131, 57.677032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933748, -0.311301, 0.176656,
		-0.255284, -0.233258, 0.938307,
		-0.250889, -0.921240, -0.297274,
		68.460747, 59.415760, 57.587849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.781067, 59.641205, 58.306522>,  <68.636368, 60.060627, 57.795940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.781067, 59.641205, 58.306522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.775902, 59.423317, 57.971115>,  <68.772804, 59.292583, 57.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.775902, 59.423317, 57.971115>,  <68.781067, 59.641205, 58.306522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.775902, 59.423317, 57.971115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869598, -0.420074, 0.259493,
		-0.493591, -0.725823, 0.479113,
		-0.012917, -0.544719, -0.838519,
		68.772026, 59.259903, 57.719559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.749123, 58.924854, 58.418251>,  <68.781067, 59.641205, 58.306522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.749123, 58.924854, 58.418251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.918640, 58.964592, 58.058136>,  <69.020355, 58.988434, 57.842068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.918640, 58.964592, 58.058136>,  <68.749123, 58.924854, 58.418251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.918640, 58.964592, 58.058136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751037, -0.594149, 0.287976,
		-0.506297, -0.798196, -0.326416,
		0.423801, 0.099349, -0.900290,
		69.045784, 58.994396, 57.788048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.983330, 58.227985, 58.236763>,  <68.749123, 58.924854, 58.418251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.983330, 58.227985, 58.236763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.211372, 58.479542, 58.025299>,  <69.348198, 58.630478, 57.898422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.211372, 58.479542, 58.025299>,  <68.983330, 58.227985, 58.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.211372, 58.479542, 58.025299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815691, -0.356389, 0.455671,
		0.098162, -0.690999, -0.716160,
		0.570100, 0.628894, -0.528657,
		69.382401, 58.668209, 57.866703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.572121, 57.896935, 57.838840>,  <68.983330, 58.227985, 58.236763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.572121, 57.896935, 57.838840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.679497, 58.257427, 57.974907>,  <69.743927, 58.473724, 58.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.679497, 58.257427, 57.974907>,  <69.572121, 57.896935, 57.838840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.679497, 58.257427, 57.974907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735390, -0.419825, 0.531930,
		0.622204, 0.107363, -0.775458,
		0.268447, 0.901233, 0.340170,
		69.760033, 58.527798, 58.076958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.250572, 58.171448, 57.643932>,  <69.572121, 57.896935, 57.838840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.250572, 58.171448, 57.643932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.121277, 58.267353, 58.010109>,  <70.043701, 58.324898, 58.229816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.121277, 58.267353, 58.010109>,  <70.250572, 58.171448, 57.643932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.121277, 58.267353, 58.010109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707710, -0.580952, 0.402047,
		0.628222, 0.777823, 0.018104,
		-0.323239, 0.239762, 0.915440,
		70.024307, 58.339283, 58.284740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.686775, 58.635605, 58.110756>,  <70.250572, 58.171448, 57.643932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.686775, 58.635605, 58.110756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.485985, 58.366268, 58.327881>,  <70.365509, 58.204666, 58.458157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.485985, 58.366268, 58.327881>,  <70.686775, 58.635605, 58.110756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.485985, 58.366268, 58.327881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848494, -0.261774, 0.459926,
		-0.167592, 0.691440, 0.702725,
		-0.501967, -0.673338, 0.542812,
		70.335396, 58.164268, 58.490723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.750870, 58.783092, 58.816154>,  <70.686775, 58.635605, 58.110756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.750870, 58.783092, 58.816154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.708687, 58.396713, 58.721649>,  <70.683372, 58.164886, 58.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.708687, 58.396713, 58.721649>,  <70.750870, 58.783092, 58.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.708687, 58.396713, 58.721649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813143, -0.220534, 0.538668,
		-0.572431, -0.135308, 0.808712,
		-0.105462, -0.965948, -0.236266,
		70.677048, 58.106930, 58.650768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.989807, 58.372452, 59.436836>,  <70.750870, 58.783092, 58.816154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.989807, 58.372452, 59.436836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.056839, 58.124317, 59.130348>,  <71.097061, 57.975437, 58.946453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.056839, 58.124317, 59.130348>,  <70.989807, 58.372452, 59.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.056839, 58.124317, 59.130348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896937, -0.226635, 0.379659,
		-0.409169, -0.750880, 0.518421,
		0.167586, -0.620335, -0.766224,
		71.107117, 57.938217, 58.900482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.263596, 57.648151, 59.703590>,  <70.989807, 58.372452, 59.436836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.263596, 57.648151, 59.703590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.410530, 57.777115, 59.354622>,  <71.498695, 57.854492, 59.145241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.410530, 57.777115, 59.354622>,  <71.263596, 57.648151, 59.703590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.410530, 57.777115, 59.354622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927927, -0.190896, 0.320171,
		-0.063317, -0.927154, -0.369293,
		0.367344, 0.322405, -0.872418,
		71.520737, 57.873837, 59.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.798279, 57.153404, 59.409233>,  <71.263596, 57.648151, 59.703590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.798279, 57.153404, 59.409233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.879662, 57.531433, 59.306908>,  <71.928490, 57.758251, 59.245514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.879662, 57.531433, 59.306908>,  <71.798279, 57.153404, 59.409233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.879662, 57.531433, 59.306908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771826, 0.005941, 0.635807,
		0.602404, -0.326805, -0.728223,
		0.203458, 0.945073, -0.255815,
		71.940697, 57.814957, 59.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.484955, 57.175156, 59.514225>,  <71.798279, 57.153404, 59.409233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.484955, 57.175156, 59.514225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.391380, 57.563374, 59.491211>,  <72.335236, 57.796303, 59.477402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.391380, 57.563374, 59.491211>,  <72.484955, 57.175156, 59.514225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.391380, 57.563374, 59.491211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778254, 0.222407, 0.587244,
		0.582744, 0.092601, -0.807362,
		-0.233942, 0.970546, -0.057539,
		72.321198, 57.854538, 59.473949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.038284, 57.469662, 59.511612>,  <72.484955, 57.175156, 59.514225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.038284, 57.469662, 59.511612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.827370, 57.791931, 59.619568>,  <72.700821, 57.985294, 59.684341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.827370, 57.791931, 59.619568>,  <73.038284, 57.469662, 59.511612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.827370, 57.791931, 59.619568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758559, 0.303258, 0.576735,
		0.382815, 0.508839, -0.771061,
		-0.527296, 0.805678, 0.269893,
		72.669182, 58.033634, 59.700535>
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
