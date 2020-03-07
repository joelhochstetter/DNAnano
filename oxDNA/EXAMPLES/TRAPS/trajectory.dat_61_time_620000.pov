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
	<35.988335, 52.786060, 50.047398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376770, 52.769974, 49.953270>,  <36.609829, 52.760323, 49.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376770, 52.769974, 49.953270>,  <35.988335, 52.786060, 50.047398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376770, 52.769974, 49.953270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106633, 0.954986, 0.276823,
		0.213595, -0.293911, 0.931662,
		0.971085, -0.040218, -0.235321,
		36.668095, 52.757908, 49.882675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423512, 53.067608, 50.572681>,  <35.988335, 52.786060, 50.047398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423512, 53.067608, 50.572681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640919, 53.126534, 50.242134>,  <36.771362, 53.161888, 50.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640919, 53.126534, 50.242134>,  <36.423512, 53.067608, 50.572681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640919, 53.126534, 50.242134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253129, 0.909886, 0.328684,
		0.800323, -0.387824, 0.457248,
		0.543515, 0.147311, -0.826373,
		36.803974, 53.170727, 49.994221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920727, 53.503799, 50.795826>,  <36.423512, 53.067608, 50.572681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920727, 53.503799, 50.795826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948132, 53.525238, 50.397343>,  <36.964573, 53.538101, 50.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948132, 53.525238, 50.397343>,  <36.920727, 53.503799, 50.795826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948132, 53.525238, 50.397343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263199, 0.962208, 0.069867,
		0.962307, -0.266987, 0.051801,
		0.068497, 0.053600, -0.996210,
		36.968685, 53.541317, 50.098480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528713, 53.727783, 50.619617>,  <36.920727, 53.503799, 50.795826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528713, 53.727783, 50.619617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305264, 53.828606, 50.303539>,  <37.171192, 53.889099, 50.113892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305264, 53.828606, 50.303539>,  <37.528713, 53.727783, 50.619617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305264, 53.828606, 50.303539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629454, 0.749233, -0.206005,
		0.540115, -0.612470, -0.577197,
		-0.558627, 0.252052, -0.790194,
		37.137676, 53.904221, 50.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907749, 53.750759, 49.805054>,  <37.528713, 53.727783, 50.619617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907749, 53.750759, 49.805054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601902, 54.005062, 49.847321>,  <37.418392, 54.157646, 49.872681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601902, 54.005062, 49.847321>,  <37.907749, 53.750759, 49.805054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601902, 54.005062, 49.847321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601916, 0.763054, -0.235467,
		-0.230331, -0.116440, -0.966121,
		-0.764621, 0.635759, 0.105668,
		37.372517, 54.195789, 49.879021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817074, 54.073761, 49.184032>,  <37.907749, 53.750759, 49.805054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817074, 54.073761, 49.184032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702194, 54.322697, 49.475296>,  <37.633266, 54.472057, 49.650055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702194, 54.322697, 49.475296>,  <37.817074, 54.073761, 49.184032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702194, 54.322697, 49.475296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693081, 0.659736, -0.290495,
		-0.661178, 0.421242, -0.620805,
		-0.287199, 0.622337, 0.728158,
		37.616035, 54.509399, 49.693745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488087, 54.758625, 48.955307>,  <37.817074, 54.073761, 49.184032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488087, 54.758625, 48.955307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732304, 54.714149, 49.268963>,  <37.878834, 54.687466, 49.457157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732304, 54.714149, 49.268963>,  <37.488087, 54.758625, 48.955307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732304, 54.714149, 49.268963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694480, 0.551099, -0.462588,
		-0.380705, 0.826999, 0.413686,
		0.610542, -0.111187, 0.784140,
		37.915466, 54.680794, 49.504204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888817, 55.372070, 49.174107>,  <37.488087, 54.758625, 48.955307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888817, 55.372070, 49.174107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099728, 55.036140, 49.225761>,  <38.226276, 54.834583, 49.256752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099728, 55.036140, 49.225761>,  <37.888817, 55.372070, 49.174107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099728, 55.036140, 49.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716256, 0.357550, -0.599279,
		0.457115, 0.408481, 0.790056,
		0.527279, -0.839822, 0.129135,
		38.257912, 54.784195, 49.264503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475338, 55.304798, 49.560654>,  <37.888817, 55.372070, 49.174107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475338, 55.304798, 49.560654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477501, 55.046059, 49.255615>,  <38.478798, 54.890816, 49.072590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477501, 55.046059, 49.255615>,  <38.475338, 55.304798, 49.560654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477501, 55.046059, 49.255615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630815, 0.593934, -0.499314,
		0.775914, -0.478360, 0.411253,
		0.005405, -0.646849, -0.762599,
		38.479122, 54.852005, 49.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146328, 54.931679, 49.338810>,  <38.475338, 55.304798, 49.560654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146328, 54.931679, 49.338810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 54.999046, 49.020592>,  <38.773842, 55.039467, 48.829659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 54.999046, 49.020592>,  <39.146328, 54.931679, 49.338810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913525, 54.999046, 49.020592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713279, 0.575538, -0.399985,
		0.390506, -0.800245, -0.455096,
		-0.582012, 0.168414, -0.795550,
		38.738922, 55.049572, 48.781925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521008, 54.900070, 48.777199>,  <39.146328, 54.931679, 49.338810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521008, 54.900070, 48.777199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225418, 55.147247, 48.669815>,  <39.048065, 55.295551, 48.605385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225418, 55.147247, 48.669815>,  <39.521008, 54.900070, 48.777199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225418, 55.147247, 48.669815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661739, 0.590830, -0.461543,
		-0.126590, -0.518720, -0.845521,
		-0.738970, 0.617940, -0.268464,
		39.003727, 55.332630, 48.589275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506153, 54.965153, 48.113003>,  <39.521008, 54.900070, 48.777199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506153, 54.965153, 48.113003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383236, 55.301727, 48.290794>,  <39.309486, 55.503674, 48.397469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383236, 55.301727, 48.290794>,  <39.506153, 54.965153, 48.113003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383236, 55.301727, 48.290794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875920, 0.432654, -0.213480,
		-0.371934, 0.323724, -0.869982,
		-0.307293, 0.841435, 0.444475,
		39.291050, 55.554157, 48.424137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515957, 55.575871, 47.639847>,  <39.506153, 54.965153, 48.113003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515957, 55.575871, 47.639847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571465, 55.633926, 48.031700>,  <39.604771, 55.668758, 48.266811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571465, 55.633926, 48.031700>,  <39.515957, 55.575871, 47.639847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571465, 55.633926, 48.031700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825539, 0.529445, -0.195382,
		-0.547019, 0.835836, -0.046348,
		0.138768, 0.145140, 0.979631,
		39.613094, 55.677467, 48.325588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807667, 56.189789, 47.595249>,  <39.515957, 55.575871, 47.639847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807667, 56.189789, 47.595249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921150, 56.067787, 47.958893>,  <39.989239, 55.994587, 48.177078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921150, 56.067787, 47.958893>,  <39.807667, 56.189789, 47.595249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921150, 56.067787, 47.958893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829431, 0.553814, -0.073041,
		-0.481200, 0.774766, 0.410102,
		0.283710, -0.305004, 0.909110,
		40.006264, 55.976284, 48.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014626, 56.791149, 47.955284>,  <39.807667, 56.189789, 47.595249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014626, 56.791149, 47.955284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199120, 56.487328, 48.138733>,  <40.309818, 56.305035, 48.248802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199120, 56.487328, 48.138733>,  <40.014626, 56.791149, 47.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199120, 56.487328, 48.138733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838155, 0.542583, 0.055673,
		-0.291127, 0.358717, 0.886886,
		0.461239, -0.759556, 0.458621,
		40.337490, 56.259460, 48.276318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618954, 57.016491, 48.284698>,  <40.014626, 56.791149, 47.955284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618954, 57.016491, 48.284698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762173, 56.646225, 48.235802>,  <40.848106, 56.424065, 48.206463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762173, 56.646225, 48.235802>,  <40.618954, 57.016491, 48.284698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762173, 56.646225, 48.235802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931983, 0.362256, -0.013334,
		0.056624, -0.109150, 0.992411,
		0.358052, -0.925666, -0.122239,
		40.869587, 56.368526, 48.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976128, 57.005840, 48.898430>,  <40.618954, 57.016491, 48.284698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976128, 57.005840, 48.898430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113285, 56.803421, 48.581863>,  <41.195580, 56.681969, 48.391922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113285, 56.803421, 48.581863>,  <40.976128, 57.005840, 48.898430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113285, 56.803421, 48.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912403, 0.379852, 0.152422,
		0.223488, -0.774354, 0.591971,
		0.342890, -0.506052, -0.791415,
		41.216152, 56.651604, 48.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642902, 56.763680, 49.269421>,  <40.976128, 57.005840, 48.898430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642902, 56.763680, 49.269421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471241, 57.119915, 49.329666>,  <41.368244, 57.333656, 49.365814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471241, 57.119915, 49.329666>,  <41.642902, 56.763680, 49.269421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471241, 57.119915, 49.329666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903066, 0.419890, 0.090357,
		0.017230, 0.174790, -0.984455,
		-0.429157, 0.890584, 0.150612,
		41.342495, 57.387089, 49.374851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856281, 57.337784, 48.742580>,  <41.642902, 56.763680, 49.269421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856281, 57.337784, 48.742580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805882, 57.486984, 49.110275>,  <41.775642, 57.576504, 49.330891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805882, 57.486984, 49.110275>,  <41.856281, 57.337784, 48.742580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805882, 57.486984, 49.110275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965333, 0.259623, 0.026972,
		-0.228594, 0.890768, -0.392782,
		-0.126001, 0.373000, 0.919236,
		41.768082, 57.598885, 49.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206989, 57.859406, 48.748550>,  <41.856281, 57.337784, 48.742580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206989, 57.859406, 48.748550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185669, 57.730392, 49.126572>,  <42.172874, 57.652985, 49.353386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185669, 57.730392, 49.126572>,  <42.206989, 57.859406, 48.748550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185669, 57.730392, 49.126572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975659, 0.184778, 0.118092,
		-0.212715, 0.928348, 0.304832,
		-0.053304, -0.322532, 0.945056,
		42.169678, 57.633633, 49.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414196, 58.393192, 49.210915>,  <42.206989, 57.859406, 48.748550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414196, 58.393192, 49.210915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491352, 58.028061, 49.354881>,  <42.537647, 57.808983, 49.441261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491352, 58.028061, 49.354881>,  <42.414196, 58.393192, 49.210915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491352, 58.028061, 49.354881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955238, 0.258547, 0.143787,
		-0.224307, 0.316068, 0.921839,
		0.192892, -0.912828, 0.359914,
		42.549221, 57.754211, 49.462856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509903, 58.656078, 49.853210>,  <42.414196, 58.393192, 49.210915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509903, 58.656078, 49.853210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223106, 58.899132, 49.989853>,  <42.051029, 59.044964, 50.071838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223106, 58.899132, 49.989853>,  <42.509903, 58.656078, 49.853210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223106, 58.899132, 49.989853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574416, 0.237385, 0.783386,
		0.394922, 0.757909, -0.519240,
		-0.716995, 0.607637, 0.341607,
		42.008007, 59.081425, 50.092335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128666, 58.048637, 50.160614>,  <42.509903, 58.656078, 49.853210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128666, 58.048637, 50.160614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205742, 57.697685, 50.336380>,  <42.251987, 57.487114, 50.441837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205742, 57.697685, 50.336380>,  <42.128666, 58.048637, 50.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205742, 57.697685, 50.336380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786134, 0.406025, 0.465979,
		-0.587251, 0.255647, 0.767972,
		0.192690, -0.877376, 0.439411,
		42.263550, 57.434471, 50.468204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103909, 58.151676, 50.940929>,  <42.128666, 58.048637, 50.160614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103909, 58.151676, 50.940929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359398, 57.859413, 50.844456>,  <42.512691, 57.684055, 50.786572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359398, 57.859413, 50.844456>,  <42.103909, 58.151676, 50.940929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359398, 57.859413, 50.844456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749398, 0.519674, 0.410295,
		-0.174447, -0.442809, 0.879482,
		0.638726, -0.730657, -0.241184,
		42.551014, 57.640217, 50.772099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409210, 57.971428, 51.563129>,  <42.103909, 58.151676, 50.940929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409210, 57.971428, 51.563129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611126, 57.938553, 51.219402>,  <42.732277, 57.918827, 51.013165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611126, 57.938553, 51.219402>,  <42.409210, 57.971428, 51.563129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611126, 57.938553, 51.219402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678688, 0.652937, 0.336237,
		0.533447, -0.752940, 0.385378,
		0.504794, -0.082186, -0.859318,
		42.762566, 57.913898, 50.961605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151836, 57.610146, 51.612816>,  <42.409210, 57.971428, 51.563129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151836, 57.610146, 51.612816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109104, 57.893654, 51.333893>,  <43.083466, 58.063759, 51.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109104, 57.893654, 51.333893>,  <43.151836, 57.610146, 51.612816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109104, 57.893654, 51.333893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834108, 0.445596, 0.325130,
		0.541157, -0.546891, -0.638795,
		-0.106834, 0.708770, -0.697303,
		43.077053, 58.106285, 51.124702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788799, 57.593636, 51.251949>,  <43.151836, 57.610146, 51.612816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788799, 57.593636, 51.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592335, 57.940338, 51.286575>,  <43.474457, 58.148361, 51.307350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592335, 57.940338, 51.286575>,  <43.788799, 57.593636, 51.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592335, 57.940338, 51.286575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837752, 0.442814, 0.319511,
		0.238606, 0.229452, -0.943620,
		-0.491160, 0.866757, 0.086566,
		43.444988, 58.200367, 51.312546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169792, 58.113121, 50.974365>,  <43.788799, 57.593636, 51.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169792, 58.113121, 50.974365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922565, 58.269150, 51.247375>,  <43.774227, 58.362766, 51.411182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922565, 58.269150, 51.247375>,  <44.169792, 58.113121, 50.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922565, 58.269150, 51.247375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778149, 0.426914, 0.460683,
		-0.111680, 0.815838, -0.567395,
		-0.618071, 0.390069, 0.682521,
		43.737144, 58.386169, 51.452133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279484, 58.793617, 51.025734>,  <44.169792, 58.113121, 50.974365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279484, 58.793617, 51.025734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176018, 58.609489, 51.365425>,  <44.113937, 58.499012, 51.569241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176018, 58.609489, 51.365425>,  <44.279484, 58.793617, 51.025734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176018, 58.609489, 51.365425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829121, 0.345284, 0.439701,
		-0.495631, 0.817852, 0.292351,
		-0.258666, -0.460324, 0.849231,
		44.098419, 58.471394, 51.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075985, 59.156609, 51.553810>,  <44.279484, 58.793617, 51.025734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075985, 59.156609, 51.553810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268719, 58.836609, 51.696823>,  <44.384361, 58.644608, 51.782631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268719, 58.836609, 51.696823>,  <44.075985, 59.156609, 51.553810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268719, 58.836609, 51.696823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759843, 0.584680, 0.284233,
		-0.436429, 0.134714, 0.889596,
		0.481839, -0.800001, 0.357533,
		44.413269, 58.596607, 51.804085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655014, 59.504295, 51.750801>,  <44.075985, 59.156609, 51.553810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655014, 59.504295, 51.750801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713326, 59.118805, 51.840233>,  <44.748314, 58.887512, 51.893890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713326, 59.118805, 51.840233>,  <44.655014, 59.504295, 51.750801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713326, 59.118805, 51.840233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870437, 0.232351, 0.433996,
		-0.470200, 0.131342, 0.872732,
		0.145778, -0.963723, 0.223576,
		44.757057, 58.829689, 51.907307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563023, 59.269451, 52.507973>,  <44.655014, 59.504295, 51.750801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563023, 59.269451, 52.507973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832794, 59.065765, 52.294113>,  <44.994656, 58.943554, 52.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832794, 59.065765, 52.294113>,  <44.563023, 59.269451, 52.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832794, 59.065765, 52.294113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667625, 0.111346, 0.736124,
		-0.315317, -0.853404, 0.415061,
		0.674427, -0.509218, -0.534645,
		45.035122, 58.912998, 52.133720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862148, 58.696041, 52.923008>,  <44.563023, 59.269451, 52.507973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862148, 58.696041, 52.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133915, 58.824188, 52.658962>,  <45.296974, 58.901077, 52.500534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133915, 58.824188, 52.658962>,  <44.862148, 58.696041, 52.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133915, 58.824188, 52.658962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676759, 0.074030, 0.732473,
		0.283532, -0.944395, -0.166518,
		0.679416, 0.320372, -0.660117,
		45.337742, 58.920300, 52.460926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389347, 58.380527, 53.165924>,  <44.862148, 58.696041, 52.923008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389347, 58.380527, 53.165924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501842, 58.711723, 52.971874>,  <45.569340, 58.910439, 52.855446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501842, 58.711723, 52.971874>,  <45.389347, 58.380527, 53.165924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501842, 58.711723, 52.971874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506090, 0.301544, 0.808050,
		0.815341, -0.472768, -0.334231,
		0.281235, 0.827987, -0.485124,
		45.586212, 58.960121, 52.826336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145130, 58.329624, 52.901981>,  <45.389347, 58.380527, 53.165924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145130, 58.329624, 52.901981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994946, 58.687210, 52.999847>,  <45.904835, 58.901760, 53.058567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994946, 58.687210, 52.999847>,  <46.145130, 58.329624, 52.901981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994946, 58.687210, 52.999847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589277, 0.026498, 0.807496,
		0.715387, 0.447361, -0.536740,
		-0.375465, 0.893961, 0.244663,
		45.882305, 58.955399, 53.073246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709549, 58.859234, 52.941814>,  <46.145130, 58.329624, 52.901981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709549, 58.859234, 52.941814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406044, 58.959534, 53.182281>,  <46.223942, 59.019714, 53.326561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406044, 58.959534, 53.182281>,  <46.709549, 58.859234, 52.941814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406044, 58.959534, 53.182281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641814, 0.130325, 0.755706,
		0.111142, 0.959240, -0.259817,
		-0.758764, 0.250745, 0.601169,
		46.178413, 59.034756, 53.362633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251251, 58.815723, 53.488178>,  <46.709549, 58.859234, 52.941814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251251, 58.815723, 53.488178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289631, 58.761497, 53.882622>,  <47.312660, 58.728962, 54.119289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289631, 58.761497, 53.882622>,  <47.251251, 58.815723, 53.488178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289631, 58.761497, 53.882622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934454, -0.329024, -0.136156,
		0.342912, 0.934540, 0.095109,
		0.095950, -0.135564, 0.986111,
		47.318417, 58.720829, 54.178455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884075, 59.197350, 53.695759>,  <47.251251, 58.815723, 53.488178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884075, 59.197350, 53.695759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792286, 58.883591, 53.926258>,  <47.737213, 58.695335, 54.064556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792286, 58.883591, 53.926258>,  <47.884075, 59.197350, 53.695759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792286, 58.883591, 53.926258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961869, -0.273290, 0.011023,
		0.148837, 0.556806, 0.817200,
		-0.229470, -0.784398, 0.576250,
		47.723446, 58.648270, 54.099133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.278831, 59.237358, 54.281265>,  <47.884075, 59.197350, 53.695759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.278831, 59.237358, 54.281265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206951, 58.851181, 54.205757>,  <48.163822, 58.619476, 54.160454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206951, 58.851181, 54.205757>,  <48.278831, 59.237358, 54.281265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.206951, 58.851181, 54.205757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980723, -0.190792, 0.042196,
		-0.076753, -0.177547, 0.981115,
		-0.179697, -0.965441, -0.188769,
		48.153042, 58.561550, 54.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.499260, 59.482929, 54.928055>,  <48.278831, 59.237358, 54.281265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.499260, 59.482929, 54.928055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.523964, 59.553699, 55.320969>,  <48.538784, 59.596161, 55.556717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.523964, 59.553699, 55.320969>,  <48.499260, 59.482929, 54.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.523964, 59.553699, 55.320969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991488, 0.102148, -0.080734,
		-0.114622, 0.978909, -0.169110,
		0.061757, 0.176924, 0.982285,
		48.542492, 59.606777, 55.615654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.773594, 60.148014, 54.989986>,  <48.499260, 59.482929, 54.928055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.773594, 60.148014, 54.989986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.858471, 59.859009, 55.253181>,  <48.909397, 59.685608, 55.411098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.858471, 59.859009, 55.253181>,  <48.773594, 60.148014, 54.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.858471, 59.859009, 55.253181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924407, -0.069968, -0.374935,
		0.316933, 0.687810, 0.653048,
		0.212191, -0.722511, 0.657992,
		48.922127, 59.642254, 55.450581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.512905, 60.200653, 55.249401>,  <48.773594, 60.148014, 54.989986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.512905, 60.200653, 55.249401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.366512, 59.828835, 55.231491>,  <49.278679, 59.605743, 55.220745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.366512, 59.828835, 55.231491>,  <49.512905, 60.200653, 55.249401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.366512, 59.828835, 55.231491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851303, -0.314962, -0.419621,
		0.375956, -0.191685, 0.906595,
		-0.365978, -0.929546, -0.044770,
		49.256718, 59.549973, 55.218060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.097980, 59.792534, 55.377884>,  <49.512905, 60.200653, 55.249401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.097980, 59.792534, 55.377884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.841843, 59.551537, 55.187325>,  <49.688160, 59.406937, 55.072990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.841843, 59.551537, 55.187325>,  <50.097980, 59.792534, 55.377884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.841843, 59.551537, 55.187325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765881, -0.453895, -0.455419,
		0.058152, -0.656492, 0.752088,
		-0.640348, -0.602493, -0.476400,
		49.649738, 59.370789, 55.044403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.439114, 59.178062, 55.488190>,  <50.097980, 59.792534, 55.377884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.439114, 59.178062, 55.488190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.212639, 59.163551, 55.158798>,  <50.076752, 59.154846, 54.961163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.212639, 59.163551, 55.158798>,  <50.439114, 59.178062, 55.488190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.212639, 59.163551, 55.158798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726253, -0.494463, -0.477560,
		-0.389853, -0.868441, 0.306307,
		-0.566190, -0.036278, -0.823476,
		50.042782, 59.152668, 54.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.356918, 58.459148, 55.294216>,  <50.439114, 59.178062, 55.488190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.356918, 58.459148, 55.294216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.309715, 58.700798, 54.978973>,  <50.281395, 58.845787, 54.789829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.309715, 58.700798, 54.978973>,  <50.356918, 58.459148, 55.294216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.309715, 58.700798, 54.978973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560376, -0.614692, -0.555097,
		-0.819788, -0.507141, -0.265997,
		-0.118007, 0.604121, -0.788107,
		50.274315, 58.882034, 54.742542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.150852, 58.409267, 55.239231>,  <50.356918, 58.459148, 55.294216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.150852, 58.409267, 55.239231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.316818, 58.214554, 55.546707>,  <51.416397, 58.097725, 55.731194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.316818, 58.214554, 55.546707>,  <51.150852, 58.409267, 55.239231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.316818, 58.214554, 55.546707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551206, -0.537681, -0.638022,
		0.723889, 0.688432, 0.045226,
		0.414918, -0.486786, 0.768689,
		51.441292, 58.068520, 55.777313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.968224, 58.565311, 55.389988>,  <51.150852, 58.409267, 55.239231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.968224, 58.565311, 55.389988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.812084, 58.206066, 55.471001>,  <51.718399, 57.990520, 55.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.812084, 58.206066, 55.471001>,  <51.968224, 58.565311, 55.389988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.812084, 58.206066, 55.471001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716330, -0.434467, -0.545994,
		0.578359, -0.068048, 0.812939,
		-0.390349, -0.898113, 0.202534,
		51.694981, 57.936630, 55.531761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.532623, 58.479725, 55.837326>,  <51.968224, 58.565311, 55.389988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.532623, 58.479725, 55.837326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.637550, 58.713715, 55.530342>,  <52.700508, 58.854111, 55.346153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.637550, 58.713715, 55.530342>,  <52.532623, 58.479725, 55.837326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.637550, 58.713715, 55.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957178, -0.056800, 0.283871,
		0.122467, -0.809057, -0.574828,
		0.262318, 0.584978, -0.767457,
		52.716248, 58.889210, 55.300106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.131649, 58.103596, 55.514637>,  <52.532623, 58.479725, 55.837326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.131649, 58.103596, 55.514637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.127708, 58.502819, 55.539223>,  <53.125343, 58.742355, 55.553974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.127708, 58.502819, 55.539223>,  <53.131649, 58.103596, 55.514637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.127708, 58.502819, 55.539223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961739, -0.007369, 0.273869,
		0.273791, 0.061811, -0.959801,
		-0.009855, 0.998061, 0.061463,
		53.124752, 58.802238, 55.557663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.779263, 58.486031, 55.268749>,  <53.131649, 58.103596, 55.514637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.779263, 58.486031, 55.268749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.636654, 58.746521, 55.536720>,  <53.551090, 58.902813, 55.697502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.636654, 58.746521, 55.536720>,  <53.779263, 58.486031, 55.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.636654, 58.746521, 55.536720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927483, 0.333078, 0.169808,
		-0.112555, 0.681885, -0.722748,
		-0.356521, 0.651223, 0.669926,
		53.529697, 58.941887, 55.737698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.015789, 59.166946, 55.077301>,  <53.779263, 58.486031, 55.268749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.015789, 59.166946, 55.077301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940639, 59.157993, 55.470078>,  <53.895550, 59.152622, 55.705742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940639, 59.157993, 55.470078>,  <54.015789, 59.166946, 55.077301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.940639, 59.157993, 55.470078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865957, 0.467994, 0.176353,
		-0.463488, 0.883448, -0.068545,
		-0.187878, -0.022381, 0.981937,
		53.884277, 59.151279, 55.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.084118, 59.879128, 55.487640>,  <54.015789, 59.166946, 55.077301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.084118, 59.879128, 55.487640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175697, 59.602543, 55.761711>,  <54.230644, 59.436592, 55.926151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175697, 59.602543, 55.761711>,  <54.084118, 59.879128, 55.487640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.175697, 59.602543, 55.761711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842919, 0.492889, 0.215752,
		-0.486899, 0.528150, 0.695692,
		0.228949, -0.691461, 0.685174,
		54.244381, 59.395103, 55.967262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.087360, 60.088486, 56.145672>,  <54.084118, 59.879128, 55.487640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.087360, 60.088486, 56.145672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.359047, 59.797253, 56.108650>,  <54.522060, 59.622513, 56.086437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.359047, 59.797253, 56.108650>,  <54.087360, 60.088486, 56.145672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.359047, 59.797253, 56.108650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728655, 0.653838, 0.203857,
		-0.087907, -0.205904, 0.974616,
		0.679216, -0.728079, -0.092556,
		54.562813, 59.578831, 56.080883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.562943, 59.997478, 56.687595>,  <54.087360, 60.088486, 56.145672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.562943, 59.997478, 56.687595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.791954, 59.867241, 56.386612>,  <54.929359, 59.789097, 56.206020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.791954, 59.867241, 56.386612>,  <54.562943, 59.997478, 56.687595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.791954, 59.867241, 56.386612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749679, 0.579480, 0.319664,
		0.331954, -0.747121, 0.575862,
		0.572528, -0.325598, -0.752461,
		54.963711, 59.769562, 56.160873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.149765, 59.618771, 56.893288>,  <54.562943, 59.997478, 56.687595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.149765, 59.618771, 56.893288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.172470, 59.846252, 56.565056>,  <55.186092, 59.982742, 56.368118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.172470, 59.846252, 56.565056>,  <55.149765, 59.618771, 56.893288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.172470, 59.846252, 56.565056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573034, 0.654485, 0.493236,
		0.817563, -0.498219, -0.288736,
		0.056766, 0.568707, -0.820579,
		55.189499, 60.016865, 56.318882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.849163, 59.510960, 57.211174>,  <55.149765, 59.618771, 56.893288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.849163, 59.510960, 57.211174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.930275, 59.680168, 56.857918>,  <55.978943, 59.781693, 56.645966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.930275, 59.680168, 56.857918>,  <55.849163, 59.510960, 57.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.930275, 59.680168, 56.857918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777394, 0.478853, 0.407871,
		0.595433, -0.769252, -0.231756,
		0.202778, 0.423026, -0.883137,
		55.991108, 59.807076, 56.592976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.592922, 59.376698, 56.894230>,  <55.849163, 59.510960, 57.211174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.592922, 59.376698, 56.894230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.422722, 59.733013, 56.830437>,  <56.320602, 59.946804, 56.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.422722, 59.733013, 56.830437>,  <56.592922, 59.376698, 56.894230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.422722, 59.733013, 56.830437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728633, 0.441752, 0.523401,
		0.536694, 0.106506, -0.837028,
		-0.425504, 0.890793, -0.159482,
		56.295071, 60.000252, 56.782593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.075172, 59.846680, 56.613785>,  <56.592922, 59.376698, 56.894230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.075172, 59.846680, 56.613785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.810081, 60.076977, 56.805328>,  <56.651028, 60.215157, 56.920254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.810081, 60.076977, 56.805328>,  <57.075172, 59.846680, 56.613785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.810081, 60.076977, 56.805328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748267, 0.534501, 0.392944,
		-0.029717, 0.618732, -0.785040,
		-0.662732, 0.575743, 0.478860,
		56.611263, 60.249699, 56.948986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.249802, 60.507854, 56.403545>,  <57.075172, 59.846680, 56.613785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.249802, 60.507854, 56.403545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.089340, 60.505737, 56.769943>,  <56.993065, 60.504467, 56.989780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.089340, 60.505737, 56.769943>,  <57.249802, 60.507854, 56.403545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.089340, 60.505737, 56.769943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843985, 0.386543, 0.371852,
		-0.356041, 0.922256, -0.150594,
		-0.401154, -0.005296, 0.915995,
		56.968994, 60.504150, 57.044743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.382500, 61.181541, 56.888630>,  <57.249802, 60.507854, 56.403545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.382500, 61.181541, 56.888630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.341599, 60.851883, 57.111458>,  <57.317059, 60.654087, 57.245155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.341599, 60.851883, 57.111458>,  <57.382500, 61.181541, 56.888630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.341599, 60.851883, 57.111458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885546, 0.179694, 0.428390,
		-0.453159, 0.537112, 0.711447,
		-0.102251, -0.824148, 0.557068,
		57.310925, 60.604637, 57.278580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.935257, 61.200680, 57.407036>,  <57.382500, 61.181541, 56.888630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.935257, 61.200680, 57.407036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.775940, 60.852409, 57.522476>,  <57.680351, 60.643448, 57.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.775940, 60.852409, 57.522476>,  <57.935257, 61.200680, 57.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.775940, 60.852409, 57.522476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741844, -0.120715, 0.659618,
		-0.539473, 0.476817, 0.693984,
		-0.398291, -0.870674, 0.288602,
		57.656452, 60.591206, 57.609058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.286503, 60.699638, 57.771408>,  <57.935257, 61.200680, 57.407036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.286503, 60.699638, 57.771408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118736, 60.353642, 57.661224>,  <58.018078, 60.146042, 57.595112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118736, 60.353642, 57.661224>,  <58.286503, 60.699638, 57.771408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.118736, 60.353642, 57.661224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884298, -0.457887, 0.091418,
		-0.205207, -0.205250, 0.956955,
		-0.419413, -0.864993, -0.275464,
		57.992912, 60.094143, 57.578587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.529259, 60.225250, 58.337685>,  <58.286503, 60.699638, 57.771408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.529259, 60.225250, 58.337685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.454720, 60.089939, 57.968719>,  <58.409996, 60.008751, 57.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.454720, 60.089939, 57.968719>,  <58.529259, 60.225250, 58.337685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.454720, 60.089939, 57.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962691, -0.250367, -0.102671,
		-0.196209, -0.907129, 0.372315,
		-0.186352, -0.338279, -0.922410,
		58.398815, 59.988457, 57.691998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.008137, 59.752644, 58.223972>,  <58.529259, 60.225250, 58.337685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.008137, 59.752644, 58.223972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.921295, 59.807461, 57.837379>,  <58.869190, 59.840351, 57.605423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.921295, 59.807461, 57.837379>,  <59.008137, 59.752644, 58.223972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.921295, 59.807461, 57.837379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964072, -0.125159, -0.234308,
		-0.153074, -0.982626, -0.104946,
		-0.217102, 0.137042, -0.966481,
		58.856163, 59.848572, 57.547436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.258087, 59.183926, 57.823410>,  <59.008137, 59.752644, 58.223972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.258087, 59.183926, 57.823410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.255341, 59.534172, 57.630226>,  <59.253693, 59.744320, 57.514317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.255341, 59.534172, 57.630226>,  <59.258087, 59.183926, 57.823410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.255341, 59.534172, 57.630226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978422, -0.093852, -0.184071,
		-0.206502, -0.473807, -0.856074,
		-0.006870, 0.875613, -0.482964,
		59.253281, 59.796856, 57.485336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.704819, 59.070442, 57.189743>,  <59.258087, 59.183926, 57.823410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.704819, 59.070442, 57.189743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722313, 59.442024, 57.336784>,  <59.732811, 59.664974, 57.425011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722313, 59.442024, 57.336784>,  <59.704819, 59.070442, 57.189743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.722313, 59.442024, 57.336784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989085, -0.092088, 0.115029,
		0.140709, 0.358564, -0.922840,
		0.043737, 0.928952, 0.367608,
		59.735435, 59.720711, 57.447067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.244202, 59.531403, 56.892868>,  <59.704819, 59.070442, 57.189743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.244202, 59.531403, 56.892868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.189758, 59.683731, 57.258698>,  <60.157093, 59.775127, 57.478195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.189758, 59.683731, 57.258698>,  <60.244202, 59.531403, 56.892868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.189758, 59.683731, 57.258698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990464, 0.032402, 0.133906,
		0.021360, 0.924080, -0.381602,
		-0.136104, 0.380823, 0.914576,
		60.148926, 59.797977, 57.533070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.732166, 60.115707, 57.000458>,  <60.244202, 59.531403, 56.892868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.732166, 60.115707, 57.000458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622505, 59.988533, 57.363503>,  <60.556709, 59.912228, 57.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622505, 59.988533, 57.363503>,  <60.732166, 60.115707, 57.000458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.622505, 59.988533, 57.363503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961266, -0.062687, 0.268399,
		-0.028440, 0.946036, 0.322811,
		-0.274152, -0.317941, 0.907609,
		60.540260, 59.893150, 57.635784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.006351, 60.603096, 57.538422>,  <60.732166, 60.115707, 57.000458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.006351, 60.603096, 57.538422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.968651, 60.228321, 57.673042>,  <60.946030, 60.003456, 57.753815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.968651, 60.228321, 57.673042>,  <61.006351, 60.603096, 57.538422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.968651, 60.228321, 57.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975718, -0.019797, 0.218134,
		-0.197715, 0.348939, 0.916052,
		-0.094251, -0.936936, 0.336552,
		60.940376, 59.947239, 57.774010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.141953, 60.650673, 58.228649>,  <61.006351, 60.603096, 57.538422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.141953, 60.650673, 58.228649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.203232, 60.286613, 58.074684>,  <61.240002, 60.068176, 57.982307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.203232, 60.286613, 58.074684>,  <61.141953, 60.650673, 58.228649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.203232, 60.286613, 58.074684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883786, -0.048065, 0.465416,
		-0.442099, -0.411480, 0.797015,
		0.153201, -0.910150, -0.384910,
		61.249191, 60.013569, 57.959209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.325386, 60.130215, 58.848194>,  <61.141953, 60.650673, 58.228649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.325386, 60.130215, 58.848194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.461357, 60.047478, 58.481224>,  <61.542938, 59.997837, 58.261044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.461357, 60.047478, 58.481224>,  <61.325386, 60.130215, 58.848194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.461357, 60.047478, 58.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929131, -0.077044, 0.361634,
		-0.145482, -0.975337, 0.165990,
		0.339927, -0.206838, -0.917424,
		61.563335, 59.985428, 58.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.615017, 59.433884, 58.795929>,  <61.325386, 60.130215, 58.848194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.615017, 59.433884, 58.795929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773384, 59.720024, 58.565613>,  <61.868404, 59.891708, 58.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773384, 59.720024, 58.565613>,  <61.615017, 59.433884, 58.795929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.773384, 59.720024, 58.565613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884445, -0.128394, 0.448635,
		0.247002, -0.686872, -0.683518,
		0.395914, 0.715347, -0.575786,
		61.892159, 59.934628, 58.392876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.305920, 59.290936, 58.813618>,  <61.615017, 59.433884, 58.795929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.305920, 59.290936, 58.813618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.323318, 59.673355, 58.697632>,  <62.333755, 59.902805, 58.628040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.323318, 59.673355, 58.697632>,  <62.305920, 59.290936, 58.813618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.323318, 59.673355, 58.697632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921992, 0.073368, 0.380193,
		0.384757, -0.283881, -0.878279,
		0.043492, 0.956049, -0.289965,
		62.336365, 59.960171, 58.610641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.062359, 59.254276, 58.875999>,  <62.305920, 59.290936, 58.813618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.062359, 59.254276, 58.875999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.446854, 59.255257, 58.765717>,  <63.677551, 59.255844, 58.699547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.446854, 59.255257, 58.765717>,  <63.062359, 59.254276, 58.875999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.446854, 59.255257, 58.765717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269922, -0.212311, 0.939184,
		-0.056231, -0.977199, -0.204744,
		0.961239, 0.002454, -0.275706,
		63.735226, 59.255993, 58.683006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.428276, 58.535885, 58.877808>,  <63.062359, 59.254276, 58.875999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.428276, 58.535885, 58.877808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.618004, 58.874229, 58.975410>,  <63.731842, 59.077236, 59.033974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.618004, 58.874229, 58.975410>,  <63.428276, 58.535885, 58.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.618004, 58.874229, 58.975410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118748, -0.336115, 0.934305,
		0.872306, -0.414186, -0.259871,
		0.474322, 0.845859, 0.244012,
		63.760300, 59.127987, 59.048615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.103966, 58.347992, 59.193081>,  <63.428276, 58.535885, 58.877808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.103966, 58.347992, 59.193081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.945396, 58.685501, 59.337791>,  <63.850254, 58.888008, 59.424618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.945396, 58.685501, 59.337791>,  <64.103966, 58.347992, 59.193081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.945396, 58.685501, 59.337791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037166, -0.408494, 0.912004,
		0.917313, 0.348099, 0.193299,
		-0.396429, 0.843777, 0.361780,
		63.826469, 58.938633, 59.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.545532, 58.402370, 59.686394>,  <64.103966, 58.347992, 59.193081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.545532, 58.402370, 59.686394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.169319, 58.520748, 59.753098>,  <63.943592, 58.591774, 59.793118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.169319, 58.520748, 59.753098>,  <64.545532, 58.402370, 59.686394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.169319, 58.520748, 59.753098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049264, -0.366882, 0.928962,
		0.336104, 0.881937, 0.330486,
		-0.940536, 0.295947, 0.166758,
		63.887157, 58.609531, 59.803123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.399834, 57.705143, 59.458214>,  <64.545532, 58.402370, 59.686394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.399834, 57.705143, 59.458214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.657158, 57.685837, 59.763847>,  <64.811554, 57.674255, 59.947227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.657158, 57.685837, 59.763847>,  <64.399834, 57.705143, 59.458214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.657158, 57.685837, 59.763847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204624, 0.950867, 0.232337,
		-0.737758, -0.305815, 0.601823,
		0.643306, -0.048261, 0.764087,
		64.850151, 57.671360, 59.993073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.862785, 57.155174, 59.678101>,  <64.399834, 57.705143, 59.458214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.862785, 57.155174, 59.678101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.934990, 57.547077, 59.712723>,  <64.978310, 57.782219, 59.733494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.934990, 57.547077, 59.712723>,  <64.862785, 57.155174, 59.678101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.934990, 57.547077, 59.712723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915853, -0.135344, -0.378015,
		-0.358648, 0.147506, -0.921745,
		0.180512, 0.979757, 0.086552,
		64.989143, 57.841003, 59.738689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.192116, 57.408173, 58.994881>,  <64.862785, 57.155174, 59.678101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.192116, 57.408173, 58.994881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.297554, 57.637337, 59.305313>,  <65.360817, 57.774834, 59.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.297554, 57.637337, 59.305313>,  <65.192116, 57.408173, 58.994881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.297554, 57.637337, 59.305313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964604, -0.163048, -0.207255,
		0.007800, 0.803238, -0.595607,
		0.263587, 0.572909, 0.776078,
		65.376633, 57.809208, 59.538136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.533279, 57.935371, 58.784199>,  <65.192116, 57.408173, 58.994881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.533279, 57.935371, 58.784199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.636536, 57.801872, 59.146851>,  <65.698494, 57.721775, 59.364441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.636536, 57.801872, 59.146851>,  <65.533279, 57.935371, 58.784199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.636536, 57.801872, 59.146851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952336, -0.069965, -0.296918,
		0.162526, 0.940064, 0.299775,
		0.258148, -0.333744, 0.906628,
		65.713982, 57.701748, 59.418839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.048172, 58.379581, 59.130760>,  <65.533279, 57.935371, 58.784199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.048172, 58.379581, 59.130760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.071564, 58.003654, 59.265411>,  <66.085602, 57.778099, 59.346203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.071564, 58.003654, 59.265411>,  <66.048172, 58.379581, 59.130760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.071564, 58.003654, 59.265411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977622, -0.014335, -0.209879,
		0.202075, 0.341368, 0.917951,
		0.058487, -0.939820, 0.336626,
		66.089111, 57.721710, 59.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.491791, 58.373108, 59.669147>,  <66.048172, 58.379581, 59.130760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.491791, 58.373108, 59.669147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.476936, 58.025642, 59.471542>,  <66.468025, 57.817165, 59.352978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.476936, 58.025642, 59.471542>,  <66.491791, 58.373108, 59.669147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.476936, 58.025642, 59.471542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997916, -0.006117, -0.064245,
		0.052786, -0.495369, 0.867077,
		-0.037129, -0.868661, -0.494014,
		66.465797, 57.765045, 59.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.789291, 57.817013, 60.061546>,  <66.491791, 58.373108, 59.669147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.789291, 57.817013, 60.061546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.836945, 57.798027, 59.664848>,  <66.865540, 57.786636, 59.426830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.836945, 57.798027, 59.664848>,  <66.789291, 57.817013, 60.061546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.836945, 57.798027, 59.664848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987624, 0.108287, 0.113457,
		0.102008, -0.992986, 0.059774,
		0.119134, -0.047461, -0.991743,
		66.872688, 57.783787, 59.367325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.294937, 57.273872, 59.818256>,  <66.789291, 57.817013, 60.061546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.294937, 57.273872, 59.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.316505, 57.563591, 59.543304>,  <67.329445, 57.737423, 59.378334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.316505, 57.563591, 59.543304>,  <67.294937, 57.273872, 59.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.316505, 57.563591, 59.543304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995330, 0.016228, 0.095165,
		0.080082, -0.689297, -0.720040,
		0.053912, 0.724298, -0.687377,
		67.332680, 57.780880, 59.337090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.636589, 57.091438, 59.234234>,  <67.294937, 57.273872, 59.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.636589, 57.091438, 59.234234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670853, 57.484772, 59.298370>,  <67.691414, 57.720772, 59.336853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670853, 57.484772, 59.298370>,  <67.636589, 57.091438, 59.234234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.670853, 57.484772, 59.298370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994832, -0.093227, 0.040220,
		0.054499, 0.156071, -0.986241,
		0.085667, 0.983336, 0.160345,
		67.696556, 57.779774, 59.346474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.145615, 57.391838, 58.683025>,  <67.636589, 57.091438, 59.234234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.145615, 57.391838, 58.683025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123596, 57.607300, 59.019318>,  <68.110382, 57.736576, 59.221092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123596, 57.607300, 59.019318>,  <68.145615, 57.391838, 58.683025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.123596, 57.607300, 59.019318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998482, 0.030997, 0.045522,
		-0.001539, 0.841959, -0.539539,
		-0.055051, 0.538650, 0.840729,
		68.107079, 57.768894, 59.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.495827, 58.041996, 58.704163>,  <68.145615, 57.391838, 58.683025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.495827, 58.041996, 58.704163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.489326, 57.875458, 59.067787>,  <68.485428, 57.775536, 59.285961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.489326, 57.875458, 59.067787>,  <68.495827, 58.041996, 58.704163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.489326, 57.875458, 59.067787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909317, 0.371925, 0.186588,
		-0.415788, 0.829656, 0.372548,
		-0.016244, -0.416345, 0.909061,
		68.484451, 57.750553, 59.340508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.146233, 58.277134, 58.958523>,  <68.495827, 58.041996, 58.704163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.146233, 58.277134, 58.958523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.033005, 58.048145, 59.266327>,  <68.965065, 57.910751, 59.451008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.033005, 58.048145, 59.266327>,  <69.146233, 58.277134, 58.958523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.033005, 58.048145, 59.266327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848124, 0.225223, 0.479542,
		-0.447836, 0.788385, 0.421773,
		-0.283071, -0.572472, 0.769511,
		68.948082, 57.876404, 59.497181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.128410, 58.711941, 59.564915>,  <69.146233, 58.277134, 58.958523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.128410, 58.711941, 59.564915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214737, 58.321854, 59.584404>,  <69.266533, 58.087803, 59.596100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214737, 58.321854, 59.584404>,  <69.128410, 58.711941, 59.564915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.214737, 58.321854, 59.584404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894712, 0.217499, 0.390109,
		-0.391038, -0.040600, 0.919479,
		0.215824, -0.975216, 0.048725,
		69.279488, 58.029289, 59.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.317505, 58.679291, 60.425041>,  <69.128410, 58.711941, 59.564915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.317505, 58.679291, 60.425041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.487717, 58.429588, 60.162979>,  <69.589844, 58.279766, 60.005741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.487717, 58.429588, 60.162979>,  <69.317505, 58.679291, 60.425041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.487717, 58.429588, 60.162979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904617, 0.273956, 0.326520,
		-0.024347, -0.731611, 0.681287,
		0.425529, -0.624254, -0.655158,
		69.615372, 58.242313, 59.966431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.894485, 58.186958, 60.721779>,  <69.317505, 58.679291, 60.425041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.894485, 58.186958, 60.721779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.936584, 58.295391, 60.339066>,  <69.961845, 58.360451, 60.109436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.936584, 58.295391, 60.339066>,  <69.894485, 58.186958, 60.721779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.936584, 58.295391, 60.339066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964864, 0.205088, 0.164245,
		0.240749, -0.940453, -0.239975,
		0.105248, 0.271085, -0.956784,
		69.968163, 58.376717, 60.052029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.408768, 57.783737, 60.219547>,  <69.894485, 58.186958, 60.721779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.408768, 57.783737, 60.219547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.381660, 58.182724, 60.210945>,  <70.365395, 58.422115, 60.205784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.381660, 58.182724, 60.210945>,  <70.408768, 57.783737, 60.219547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.381660, 58.182724, 60.210945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944526, 0.071087, 0.320651,
		0.321368, 0.001421, -0.946953,
		-0.067772, 0.997469, -0.021503,
		70.361328, 58.481964, 60.204494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.657486, 58.248096, 59.607857>,  <70.408768, 57.783737, 60.219547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.657486, 58.248096, 59.607857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.701500, 58.451466, 59.949478>,  <70.727905, 58.573486, 60.154449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.701500, 58.451466, 59.949478>,  <70.657486, 58.248096, 59.607857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.701500, 58.451466, 59.949478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980858, -0.194436, -0.010619,
		0.160659, 0.838870, -0.520082,
		0.110031, 0.508421, 0.854050,
		70.734512, 58.603992, 60.205692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.222488, 58.701561, 59.499519>,  <70.657486, 58.248096, 59.607857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.222488, 58.701561, 59.499519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.194771, 58.649525, 59.895149>,  <71.178139, 58.618301, 60.132526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.194771, 58.649525, 59.895149>,  <71.222488, 58.701561, 59.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.194771, 58.649525, 59.895149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997595, -0.010342, 0.068531,
		0.001313, 0.991448, 0.130497,
		-0.069294, -0.130093, 0.989077,
		71.173981, 58.610497, 60.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.831032, 59.025471, 59.803963>,  <71.222488, 58.701561, 59.499519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.831032, 59.025471, 59.803963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.666107, 58.755867, 60.049141>,  <71.567154, 58.594105, 60.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.666107, 58.755867, 60.049141>,  <71.831032, 59.025471, 59.803963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.666107, 58.755867, 60.049141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888414, -0.446480, 0.106657,
		0.201780, 0.588526, 0.782893,
		-0.412317, -0.674012, 0.612946,
		71.542412, 58.553665, 60.233025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.084137, 58.914219, 60.612484>,  <71.831032, 59.025471, 59.803963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.084137, 58.914219, 60.612484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.013786, 58.609570, 60.363007>,  <71.971573, 58.426781, 60.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.013786, 58.609570, 60.363007>,  <72.084137, 58.914219, 60.612484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.013786, 58.609570, 60.363007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972217, -0.233808, 0.011346,
		-0.154466, -0.604369, 0.781587,
		-0.175884, -0.761624, -0.623693,
		71.961021, 58.381081, 60.175900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.385323, 58.300728, 60.910160>,  <72.084137, 58.914219, 60.612484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.385323, 58.300728, 60.910160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.379799, 58.321007, 60.510712>,  <72.376480, 58.333172, 60.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.379799, 58.321007, 60.510712>,  <72.385323, 58.300728, 60.910160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.379799, 58.321007, 60.510712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997984, -0.061179, -0.016912,
		-0.061951, -0.996839, -0.049745,
		-0.013816, 0.050692, -0.998619,
		72.375656, 58.336216, 60.211124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.834404, 57.810215, 60.729141>,  <72.385323, 58.300728, 60.910160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.834404, 57.810215, 60.729141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.816299, 58.085686, 60.439682>,  <72.805435, 58.250969, 60.266006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.816299, 58.085686, 60.439682>,  <72.834404, 57.810215, 60.729141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.816299, 58.085686, 60.439682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997698, 0.067784, 0.002097,
		0.050496, -0.721890, -0.690163,
		-0.045268, 0.688680, -0.723651,
		72.802719, 58.292290, 60.222588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.113243, 57.631229, 60.075161>,  <72.834404, 57.810215, 60.729141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.113243, 57.631229, 60.075161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.152443, 58.024647, 60.135880>,  <73.175964, 58.260696, 60.172310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.152443, 58.024647, 60.135880>,  <73.113243, 57.631229, 60.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.152443, 58.024647, 60.135880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993586, -0.088060, -0.070941,
		-0.056406, 0.157775, -0.985863,
		0.098008, 0.983541, 0.151796,
		73.181847, 58.319710, 60.181419>
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
