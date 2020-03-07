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
	<36.138992, 53.412968, 50.497173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522057, 53.311764, 50.442215>,  <36.751896, 53.251041, 50.409241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522057, 53.311764, 50.442215>,  <36.138992, 53.412968, 50.497173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522057, 53.311764, 50.442215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091292, -0.185728, 0.978351,
		-0.273051, -0.949469, -0.154766,
		0.957658, -0.253011, -0.137392,
		36.809353, 53.235863, 50.400997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245857, 52.754715, 50.803570>,  <36.138992, 53.412968, 50.497173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245857, 52.754715, 50.803570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570343, 52.988613, 50.802643>,  <36.765034, 53.128952, 50.802086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570343, 52.988613, 50.802643>,  <36.245857, 52.754715, 50.803570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570343, 52.988613, 50.802643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068517, 0.098989, 0.992727,
		0.580718, -0.805157, 0.120366,
		0.811216, 0.584742, -0.002317,
		36.813709, 53.164036, 50.801949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446346, 52.727898, 51.408855>,  <36.245857, 52.754715, 50.803570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446346, 52.727898, 51.408855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613640, 53.068474, 51.282288>,  <36.714016, 53.272820, 51.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613640, 53.068474, 51.282288>,  <36.446346, 52.727898, 51.408855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613640, 53.068474, 51.282288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020248, 0.357005, 0.933883,
		0.908113, -0.384176, 0.166553,
		0.418236, 0.851444, -0.316422,
		36.739109, 53.323906, 51.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084656, 52.848541, 51.789001>,  <36.446346, 52.727898, 51.408855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084656, 52.848541, 51.789001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888973, 53.178902, 51.676880>,  <36.771564, 53.377117, 51.609608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888973, 53.178902, 51.676880>,  <37.084656, 52.848541, 51.789001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888973, 53.178902, 51.676880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058757, 0.289453, 0.955387,
		0.870188, 0.483849, -0.093074,
		-0.489204, 0.825898, -0.280308,
		36.742210, 53.426670, 51.592789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483036, 53.440674, 51.947517>,  <37.084656, 52.848541, 51.789001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483036, 53.440674, 51.947517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089165, 53.509911, 51.956059>,  <36.852844, 53.551453, 51.961182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089165, 53.509911, 51.956059>,  <37.483036, 53.440674, 51.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089165, 53.509911, 51.956059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050684, 0.166875, 0.984674,
		0.166875, 0.970666, -0.173090,
		-0.984674, 0.173090, 0.021351,
		36.793762, 53.561836, 51.962463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154373, 53.666473, 51.644897>,  <37.483036, 53.440674, 51.947517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154373, 53.666473, 51.644897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347393, 53.355801, 51.482948>,  <38.463203, 53.169399, 51.385780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347393, 53.355801, 51.482948>,  <38.154373, 53.666473, 51.644897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347393, 53.355801, 51.482948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491034, -0.142885, 0.859343,
		-0.725282, -0.613479, 0.312427,
		0.482548, -0.776678, -0.404870,
		38.492157, 53.122799, 51.361488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888107, 54.424446, 51.720844>,  <38.154373, 53.666473, 51.644897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888107, 54.424446, 51.720844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654324, 54.360687, 52.039089>,  <37.514053, 54.322433, 52.230038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654324, 54.360687, 52.039089>,  <37.888107, 54.424446, 51.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654324, 54.360687, 52.039089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707204, -0.580798, 0.403159,
		0.397828, 0.798290, 0.452179,
		-0.584462, -0.159395, 0.795611,
		37.478985, 54.312870, 52.277771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142498, 54.751392, 52.333797>,  <37.888107, 54.424446, 51.720844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142498, 54.751392, 52.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942974, 54.415031, 52.417770>,  <37.823261, 54.213215, 52.468155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942974, 54.415031, 52.417770>,  <38.142498, 54.751392, 52.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942974, 54.415031, 52.417770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786996, -0.337974, 0.516150,
		-0.363080, 0.422677, 0.830372,
		-0.498809, -0.840903, 0.209934,
		37.793331, 54.162762, 52.480751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039570, 54.706734, 53.075684>,  <38.142498, 54.751392, 52.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039570, 54.706734, 53.075684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965530, 54.327591, 52.971909>,  <37.921108, 54.100105, 52.909645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965530, 54.327591, 52.971909>,  <38.039570, 54.706734, 53.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965530, 54.327591, 52.971909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446149, -0.316275, 0.837210,
		-0.875608, 0.039220, 0.481427,
		-0.185099, -0.947856, -0.259435,
		37.910000, 54.043236, 52.894077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645046, 54.220692, 53.552624>,  <38.039570, 54.706734, 53.075684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645046, 54.220692, 53.552624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907990, 54.026688, 53.321922>,  <38.065758, 53.910286, 53.183502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907990, 54.026688, 53.321922>,  <37.645046, 54.220692, 53.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907990, 54.026688, 53.321922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508121, -0.279916, 0.814531,
		-0.556498, -0.828499, 0.062438,
		0.657361, -0.485011, -0.576751,
		38.105198, 53.881184, 53.148895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900925, 53.672577, 54.060886>,  <37.645046, 54.220692, 53.552624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900925, 53.672577, 54.060886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147835, 53.717514, 53.749413>,  <38.295979, 53.744476, 53.562527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147835, 53.717514, 53.749413>,  <37.900925, 53.672577, 54.060886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147835, 53.717514, 53.749413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779241, -0.223709, 0.585438,
		-0.108428, -0.968160, -0.225634,
		0.617274, 0.112345, -0.778686,
		38.333015, 53.751217, 53.515808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186363, 53.271587, 54.609592>,  <37.900925, 53.672577, 54.060886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186363, 53.271587, 54.609592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921982, 52.972660, 54.636917>,  <37.763355, 52.793304, 54.653313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921982, 52.972660, 54.636917>,  <38.186363, 53.271587, 54.609592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921982, 52.972660, 54.636917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532666, -0.531321, -0.658760,
		0.528594, -0.399023, 0.749246,
		-0.660951, -0.747314, 0.068307,
		37.723698, 52.748466, 54.657410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685413, 53.752132, 54.167358>,  <38.186363, 53.271587, 54.609592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685413, 53.752132, 54.167358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957386, 54.043140, 54.204048>,  <39.120567, 54.217747, 54.226063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957386, 54.043140, 54.204048>,  <38.685413, 53.752132, 54.167358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957386, 54.043140, 54.204048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182705, -0.046944, -0.982046,
		-0.710153, 0.684478, -0.164840,
		0.679927, 0.727521, 0.091720,
		39.161366, 54.261398, 54.231564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587341, 54.521149, 53.814941>,  <38.685413, 53.752132, 54.167358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587341, 54.521149, 53.814941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961018, 54.379993, 53.835915>,  <39.185223, 54.295300, 53.848499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961018, 54.379993, 53.835915>,  <38.587341, 54.521149, 53.814941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961018, 54.379993, 53.835915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054353, -0.004482, -0.998512,
		0.352602, 0.935653, 0.014994,
		0.934193, -0.352893, 0.052436,
		39.241276, 54.274124, 53.851646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100140, 54.950169, 53.452923>,  <38.587341, 54.521149, 53.814941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100140, 54.950169, 53.452923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257847, 54.582851, 53.467316>,  <39.352470, 54.362461, 53.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257847, 54.582851, 53.467316>,  <39.100140, 54.950169, 53.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257847, 54.582851, 53.467316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050910, -0.017270, -0.998554,
		0.917586, 0.395526, 0.039941,
		0.394264, -0.918293, 0.035982,
		39.376125, 54.307365, 53.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898396, 54.793308, 53.108440>,  <39.100140, 54.950169, 53.452923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898396, 54.793308, 53.108440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573002, 54.561737, 53.086220>,  <39.377766, 54.422794, 53.072887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573002, 54.561737, 53.086220>,  <39.898396, 54.793308, 53.108440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573002, 54.561737, 53.086220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102474, -0.048650, -0.993545,
		0.572492, -0.813923, 0.098901,
		-0.813481, -0.578932, -0.055554,
		39.328957, 54.388058, 53.069553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875519, 55.209030, 52.501972>,  <39.898396, 54.793308, 53.108440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875519, 55.209030, 52.501972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655468, 55.543053, 52.499634>,  <39.523438, 55.743465, 52.498230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655468, 55.543053, 52.499634>,  <39.875519, 55.209030, 52.501972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655468, 55.543053, 52.499634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550827, 0.368124, 0.749049,
		0.627651, 0.408856, -0.662488,
		-0.550131, 0.835058, -0.005844,
		39.490429, 55.793571, 52.497879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411480, 55.629223, 52.076080>,  <39.875519, 55.209030, 52.501972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411480, 55.629223, 52.076080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520195, 55.797729, 51.729980>,  <40.585423, 55.898834, 51.522320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520195, 55.797729, 51.729980>,  <40.411480, 55.629223, 52.076080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520195, 55.797729, 51.729980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924695, -0.363386, 0.113537,
		-0.266592, -0.830954, -0.488308,
		0.271788, 0.421267, -0.865254,
		40.601730, 55.924110, 51.470406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829689, 55.267349, 51.776871>,  <40.411480, 55.629223, 52.076080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829689, 55.267349, 51.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927567, 55.627884, 51.633919>,  <40.986294, 55.844204, 51.548149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927567, 55.627884, 51.633919>,  <40.829689, 55.267349, 51.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927567, 55.627884, 51.633919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969600, -0.227141, 0.091011,
		0.000856, -0.368785, -0.929514,
		0.244694, 0.901335, -0.357380,
		41.000977, 55.898285, 51.526703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427822, 55.216064, 51.281322>,  <40.829689, 55.267349, 51.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427822, 55.216064, 51.281322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397053, 55.587963, 51.425354>,  <41.378590, 55.811104, 51.511772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397053, 55.587963, 51.425354>,  <41.427822, 55.216064, 51.281322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397053, 55.587963, 51.425354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990522, 0.030049, 0.134027,
		0.113791, 0.366973, -0.923245,
		-0.076927, 0.929746, 0.360076,
		41.373974, 55.866886, 51.533379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029305, 55.502068, 51.100098>,  <41.427822, 55.216064, 51.281322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029305, 55.502068, 51.100098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916885, 55.692551, 51.433380>,  <41.849434, 55.806839, 51.633350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916885, 55.692551, 51.433380>,  <42.029305, 55.502068, 51.100098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916885, 55.692551, 51.433380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957415, 0.079314, 0.277608,
		0.066113, 0.875749, -0.478219,
		-0.281044, 0.476208, 0.833211,
		41.832573, 55.835415, 51.683342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512302, 56.134949, 51.146572>,  <42.029305, 55.502068, 51.100098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512302, 56.134949, 51.146572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385841, 56.041908, 51.514473>,  <42.309963, 55.986084, 51.735214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385841, 56.041908, 51.514473>,  <42.512302, 56.134949, 51.146572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385841, 56.041908, 51.514473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946637, -0.013307, 0.322027,
		-0.062664, 0.972482, 0.224393,
		-0.316151, -0.232599, 0.919753,
		42.290997, 55.972130, 51.790398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904118, 56.569824, 51.662094>,  <42.512302, 56.134949, 51.146572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904118, 56.569824, 51.662094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773232, 56.223022, 51.812424>,  <42.694702, 56.014942, 51.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773232, 56.223022, 51.812424>,  <42.904118, 56.569824, 51.662094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773232, 56.223022, 51.812424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943390, -0.322574, 0.077209,
		0.054290, 0.379811, 0.923469,
		-0.327212, -0.867000, 0.375823,
		42.675068, 55.962921, 51.925171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446899, 56.580391, 52.123306>,  <42.904118, 56.569824, 51.662094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446899, 56.580391, 52.123306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331749, 56.199219, 52.085258>,  <43.262657, 55.970516, 52.062428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331749, 56.199219, 52.085258>,  <43.446899, 56.580391, 52.123306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331749, 56.199219, 52.085258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937519, -0.300694, 0.175044,
		-0.195407, -0.038787, 0.979955,
		-0.287878, -0.952931, -0.095122,
		43.245384, 55.913338, 52.056721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578339, 56.106064, 52.596195>,  <43.446899, 56.580391, 52.123306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578339, 56.106064, 52.596195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575966, 55.848640, 52.290047>,  <43.574543, 55.694183, 52.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575966, 55.848640, 52.290047>,  <43.578339, 56.106064, 52.596195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575966, 55.848640, 52.290047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924092, -0.296003, 0.241735,
		-0.382123, -0.705839, 0.596467,
		-0.005930, -0.643563, -0.765370,
		43.574188, 55.655571, 52.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053368, 55.606739, 52.817791>,  <43.578339, 56.106064, 52.596195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053368, 55.606739, 52.817791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036247, 55.559513, 52.420959>,  <44.025974, 55.531178, 52.182861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036247, 55.559513, 52.420959>,  <44.053368, 55.606739, 52.817791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036247, 55.559513, 52.420959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985070, -0.170718, -0.022181,
		-0.166748, -0.978220, 0.123614,
		-0.042801, -0.118070, -0.992083,
		44.023407, 55.524094, 52.123333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408878, 54.905083, 52.983364>,  <44.053368, 55.606739, 52.817791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408878, 54.905083, 52.983364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568871, 55.253967, 53.095982>,  <44.664867, 55.463299, 53.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568871, 55.253967, 53.095982>,  <44.408878, 54.905083, 52.983364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568871, 55.253967, 53.095982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689098, -0.488727, 0.535060,
		0.604282, -0.020003, -0.796519,
		0.399983, 0.872207, 0.281545,
		44.688866, 55.515629, 53.180447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228313, 54.918522, 52.787392>,  <44.408878, 54.905083, 52.983364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228313, 54.918522, 52.787392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118416, 55.141933, 53.100456>,  <45.052479, 55.275978, 53.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118416, 55.141933, 53.100456>,  <45.228313, 54.918522, 52.787392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118416, 55.141933, 53.100456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538520, -0.584962, 0.606478,
		0.796564, 0.588106, -0.140064,
		-0.274741, 0.558526, 0.782666,
		45.035992, 55.309490, 53.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819847, 55.328445, 53.240814>,  <45.228313, 54.918522, 52.787392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819847, 55.328445, 53.240814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517155, 55.164925, 53.444870>,  <45.335541, 55.066811, 53.567303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517155, 55.164925, 53.444870>,  <45.819847, 55.328445, 53.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517155, 55.164925, 53.444870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628114, -0.670966, 0.394052,
		0.181194, 0.618614, 0.764516,
		-0.756731, -0.408804, 0.510135,
		45.290134, 55.042282, 53.597912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061668, 55.143509, 53.932133>,  <45.819847, 55.328445, 53.240814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061668, 55.143509, 53.932133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773773, 54.929451, 53.755226>,  <45.601036, 54.801018, 53.649082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773773, 54.929451, 53.755226>,  <46.061668, 55.143509, 53.932133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773773, 54.929451, 53.755226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593606, -0.804719, 0.007682,
		-0.360012, -0.257003, 0.896850,
		-0.719738, -0.535142, -0.442267,
		45.557850, 54.768909, 53.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680824, 54.568268, 54.285683>,  <46.061668, 55.143509, 53.932133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680824, 54.568268, 54.285683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837105, 54.240234, 54.118439>,  <45.930874, 54.043415, 54.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837105, 54.240234, 54.118439>,  <45.680824, 54.568268, 54.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837105, 54.240234, 54.118439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571325, -0.140099, 0.808678,
		-0.721760, -0.554829, 0.413797,
		0.390706, -0.820083, -0.418105,
		45.954315, 53.994209, 53.993008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680458, 53.940273, 54.721985>,  <45.680824, 54.568268, 54.285683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680458, 53.940273, 54.721985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966949, 53.963737, 54.443825>,  <46.138844, 53.977818, 54.276928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966949, 53.963737, 54.443825>,  <45.680458, 53.940273, 54.721985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966949, 53.963737, 54.443825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694529, 0.037452, 0.718489,
		0.068197, -0.997575, -0.013924,
		0.716225, 0.058669, -0.695399,
		46.181816, 53.981335, 54.235207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209324, 53.553162, 55.009319>,  <45.680458, 53.940273, 54.721985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209324, 53.553162, 55.009319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370396, 53.779575, 54.721581>,  <46.467041, 53.915424, 54.548939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370396, 53.779575, 54.721581>,  <46.209324, 53.553162, 55.009319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370396, 53.779575, 54.721581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801339, 0.161814, 0.575910,
		0.442383, -0.808348, -0.388423,
		0.402683, 0.566031, -0.719344,
		46.491199, 53.949383, 54.505775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.927700, 53.336765, 54.788338>,  <46.209324, 53.553162, 55.009319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.927700, 53.336765, 54.788338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883003, 53.733635, 54.766083>,  <46.856186, 53.971756, 54.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883003, 53.733635, 54.766083>,  <46.927700, 53.336765, 54.788338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883003, 53.733635, 54.766083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851643, 0.124462, 0.509129,
		0.512072, 0.009509, -0.858890,
		-0.111741, 0.992179, -0.055635,
		46.849480, 54.031288, 54.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562424, 53.745743, 54.545826>,  <46.927700, 53.336765, 54.788338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562424, 53.745743, 54.545826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360760, 53.957329, 54.818890>,  <47.239761, 54.084282, 54.982727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360760, 53.957329, 54.818890>,  <47.562424, 53.745743, 54.545826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.360760, 53.957329, 54.818890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831837, 0.084991, 0.548474,
		0.232104, 0.844377, -0.482862,
		-0.504157, 0.528965, 0.682657,
		47.209511, 54.116020, 55.023685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.948105, 54.327759, 54.744110>,  <47.562424, 53.745743, 54.545826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.948105, 54.327759, 54.744110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715004, 54.208160, 55.046371>,  <47.575146, 54.136402, 55.227726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715004, 54.208160, 55.046371>,  <47.948105, 54.327759, 54.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715004, 54.208160, 55.046371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776856, 0.067969, 0.625999,
		-0.238531, 0.951831, 0.192667,
		-0.582750, -0.298995, 0.755649,
		47.540180, 54.118462, 55.273067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.998093, 54.803844, 55.397388>,  <47.948105, 54.327759, 54.744110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.998093, 54.803844, 55.397388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879105, 54.432579, 55.486855>,  <47.807713, 54.209820, 55.540535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879105, 54.432579, 55.486855>,  <47.998093, 54.803844, 55.397388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879105, 54.432579, 55.486855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702502, -0.054146, 0.709619,
		-0.646533, 0.368211, 0.668144,
		-0.297467, -0.928164, 0.223662,
		47.789864, 54.154129, 55.553951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.861645, 54.709129, 56.217258>,  <47.998093, 54.803844, 55.397388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.861645, 54.709129, 56.217258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.971188, 54.405067, 55.981575>,  <48.036911, 54.222630, 55.840164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.971188, 54.405067, 55.981575>,  <47.861645, 54.709129, 56.217258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.971188, 54.405067, 55.981575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772833, -0.190732, 0.605269,
		-0.572480, -0.621115, 0.535241,
		0.273854, -0.760157, -0.589208,
		48.053345, 54.177021, 55.804813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.396015, 54.166843, 56.536949>,  <47.861645, 54.709129, 56.217258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.396015, 54.166843, 56.536949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438858, 54.137901, 56.140305>,  <48.464565, 54.120537, 55.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438858, 54.137901, 56.140305>,  <48.396015, 54.166843, 56.536949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.438858, 54.137901, 56.140305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925536, -0.357072, 0.126028,
		-0.363196, -0.931270, 0.028725,
		0.107109, -0.072359, -0.991611,
		48.470989, 54.116192, 55.842823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.734200, 53.625347, 56.432663>,  <48.396015, 54.166843, 56.536949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.734200, 53.625347, 56.432663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812119, 53.788849, 56.076019>,  <48.858871, 53.886951, 55.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812119, 53.788849, 56.076019>,  <48.734200, 53.625347, 56.432663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.812119, 53.788849, 56.076019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808798, -0.581199, -0.089743,
		-0.554886, -0.703651, -0.443821,
		0.194801, 0.408759, -0.891610,
		48.870560, 53.911476, 55.808537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.981400, 53.029503, 56.080914>,  <48.734200, 53.625347, 56.432663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.981400, 53.029503, 56.080914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.176945, 53.368233, 55.997108>,  <49.294273, 53.571472, 55.946827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.176945, 53.368233, 55.997108>,  <48.981400, 53.029503, 56.080914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.176945, 53.368233, 55.997108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837774, -0.388786, 0.383380,
		0.243201, -0.362943, -0.899514,
		0.488863, 0.846828, -0.209511,
		49.323605, 53.622280, 55.934254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.667660, 52.841911, 55.573334>,  <48.981400, 53.029503, 56.080914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.667660, 52.841911, 55.573334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.673214, 53.138454, 55.841721>,  <49.676548, 53.316380, 56.002754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.673214, 53.138454, 55.841721>,  <49.667660, 52.841911, 55.573334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.673214, 53.138454, 55.841721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811091, -0.400778, 0.426037,
		0.584755, 0.538300, -0.606873,
		0.013886, 0.741357, 0.670967,
		49.677380, 53.360863, 56.043011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.336746, 53.200451, 55.544765>,  <49.667660, 52.841911, 55.573334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.336746, 53.200451, 55.544765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167839, 53.232220, 55.905960>,  <50.066494, 53.251282, 56.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167839, 53.232220, 55.905960>,  <50.336746, 53.200451, 55.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.167839, 53.232220, 55.905960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867472, -0.253641, 0.427971,
		0.263024, 0.964032, 0.038210,
		-0.422269, 0.079421, 0.902984,
		50.041157, 53.256046, 56.176857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.608463, 53.582260, 56.088314>,  <50.336746, 53.200451, 55.544765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.608463, 53.582260, 56.088314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.381725, 53.340935, 56.312706>,  <50.245682, 53.196140, 56.447342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.381725, 53.340935, 56.312706>,  <50.608463, 53.582260, 56.088314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.381725, 53.340935, 56.312706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737789, -0.068789, 0.671517,
		-0.366544, 0.794534, 0.484109,
		-0.566844, -0.603311, 0.560984,
		50.211674, 53.159943, 56.481003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.545349, 53.872971, 56.750622>,  <50.608463, 53.582260, 56.088314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.545349, 53.872971, 56.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.515507, 53.474094, 56.753181>,  <50.497601, 53.234768, 56.754715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.515507, 53.474094, 56.753181>,  <50.545349, 53.872971, 56.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.515507, 53.474094, 56.753181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758995, -0.052625, 0.648966,
		-0.646807, 0.053272, 0.760791,
		-0.074608, -0.997193, 0.006395,
		50.493126, 53.174938, 56.755100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.407295, 53.578091, 57.453457>,  <50.545349, 53.872971, 56.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.407295, 53.578091, 57.453457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.651760, 53.350418, 57.233452>,  <50.798439, 53.213814, 57.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.651760, 53.350418, 57.233452>,  <50.407295, 53.578091, 57.453457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.651760, 53.350418, 57.233452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724736, 0.123074, 0.677946,
		-0.318186, -0.812945, 0.487728,
		0.611159, -0.569186, -0.550010,
		50.835110, 53.179661, 57.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.824818, 52.909996, 57.875340>,  <50.407295, 53.578091, 57.453457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.824818, 52.909996, 57.875340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.006054, 53.107117, 57.578194>,  <51.114796, 53.225391, 57.399906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.006054, 53.107117, 57.578194>,  <50.824818, 52.909996, 57.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.006054, 53.107117, 57.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824410, 0.085448, 0.559506,
		0.339204, -0.865935, -0.367557,
		0.453089, 0.492804, -0.742869,
		51.141979, 53.254959, 57.355331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.424706, 52.510883, 57.731926>,  <50.824818, 52.909996, 57.875340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.424706, 52.510883, 57.731926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.458328, 52.905231, 57.673973>,  <51.478500, 53.141842, 57.639202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.458328, 52.905231, 57.673973>,  <51.424706, 52.510883, 57.731926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.458328, 52.905231, 57.673973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811756, 0.016580, 0.583761,
		0.577916, -0.166680, -0.798893,
		0.084056, 0.985872, -0.144885,
		51.483543, 53.200993, 57.630508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.169529, 52.646694, 57.650024>,  <51.424706, 52.510883, 57.731926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.169529, 52.646694, 57.650024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.007343, 52.990860, 57.773499>,  <51.910030, 53.197357, 57.847584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.007343, 52.990860, 57.773499>,  <52.169529, 52.646694, 57.650024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.007343, 52.990860, 57.773499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764151, 0.133714, 0.631025,
		0.501666, 0.491743, -0.711702,
		-0.405467, 0.860412, 0.308686,
		51.885704, 53.248985, 57.866104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.569458, 53.278812, 57.503788>,  <52.169529, 52.646694, 57.650024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.569458, 53.278812, 57.503788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.371498, 53.311150, 57.849861>,  <52.252724, 53.330551, 58.057507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.371498, 53.311150, 57.849861>,  <52.569458, 53.278812, 57.503788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.371498, 53.311150, 57.849861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808760, 0.406969, 0.424599,
		-0.317777, 0.909858, -0.266790,
		-0.494900, 0.080841, 0.865181,
		52.223026, 53.335403, 58.109417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.742458, 53.904892, 57.841557>,  <52.569458, 53.278812, 57.503788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.742458, 53.904892, 57.841557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.627975, 53.656685, 58.133598>,  <52.559284, 53.507763, 58.308823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.627975, 53.656685, 58.133598>,  <52.742458, 53.904892, 57.841557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.627975, 53.656685, 58.133598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828481, 0.222533, 0.513905,
		-0.481357, 0.751958, 0.450394,
		-0.286207, -0.620515, 0.730101,
		52.542114, 53.470531, 58.352627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.677856, 54.327438, 58.433708>,  <52.742458, 53.904892, 57.841557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.677856, 54.327438, 58.433708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.723614, 53.941250, 58.527321>,  <52.751068, 53.709538, 58.583488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.723614, 53.941250, 58.527321>,  <52.677856, 54.327438, 58.433708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.723614, 53.941250, 58.527321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878172, 0.208420, 0.430551,
		-0.464464, 0.156268, 0.871696,
		0.114397, -0.965475, 0.234034,
		52.757935, 53.651608, 58.597530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.896557, 53.993553, 59.126183>,  <52.677856, 54.327438, 58.433708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.896557, 53.993553, 59.126183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.069260, 53.697186, 58.920418>,  <53.172882, 53.519363, 58.796959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.069260, 53.697186, 58.920418>,  <52.896557, 53.993553, 59.126183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.069260, 53.697186, 58.920418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890132, 0.257829, 0.375752,
		-0.145773, -0.620128, 0.770839,
		0.431758, -0.740923, -0.514411,
		53.198788, 53.474907, 58.766094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.531693, 53.602398, 59.462681>,  <52.896557, 53.993553, 59.126183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.531693, 53.602398, 59.462681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.545261, 53.625851, 59.063599>,  <53.553402, 53.639923, 58.824150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.545261, 53.625851, 59.063599>,  <53.531693, 53.602398, 59.462681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.545261, 53.625851, 59.063599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934098, 0.353135, 0.052511,
		0.355402, -0.933734, -0.042783,
		0.033923, 0.058626, -0.997703,
		53.555439, 53.643440, 58.764286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.002190, 53.170891, 59.134018>,  <53.531693, 53.602398, 59.462681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.002190, 53.170891, 59.134018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.958908, 53.454521, 58.855309>,  <53.932938, 53.624699, 58.688084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.958908, 53.454521, 58.855309>,  <54.002190, 53.170891, 59.134018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.958908, 53.454521, 58.855309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973941, 0.216143, 0.068709,
		0.199323, -0.671183, -0.713991,
		-0.108208, 0.709081, -0.696775,
		53.926445, 53.667244, 58.646275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.480404, 53.152126, 58.641991>,  <54.002190, 53.170891, 59.134018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.480404, 53.152126, 58.641991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.466034, 53.546558, 58.577057>,  <54.457413, 53.783218, 58.538097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.466034, 53.546558, 58.577057>,  <54.480404, 53.152126, 58.641991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.466034, 53.546558, 58.577057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992550, 0.016287, -0.120742,
		-0.116418, -0.165460, -0.979321,
		-0.035928, 0.986082, -0.162331,
		54.455257, 53.842384, 58.528358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.128971, 53.191978, 58.350460>,  <54.480404, 53.152126, 58.641991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.128971, 53.191978, 58.350460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.034958, 53.564316, 58.462379>,  <54.978550, 53.787720, 58.529533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.034958, 53.564316, 58.462379>,  <55.128971, 53.191978, 58.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.034958, 53.564316, 58.462379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971932, 0.228176, 0.057310,
		-0.010497, 0.285417, -0.958346,
		-0.235029, 0.930845, 0.279801,
		54.964451, 53.843571, 58.546318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.338573, 53.790821, 57.890942>,  <55.128971, 53.191978, 58.350460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.338573, 53.790821, 57.890942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.340622, 53.822121, 58.289711>,  <55.341850, 53.840900, 58.528973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.340622, 53.822121, 58.289711>,  <55.338573, 53.790821, 57.890942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.340622, 53.822121, 58.289711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994709, 0.101894, -0.013109,
		-0.102606, 0.991713, -0.077310,
		0.005123, 0.078246, 0.996921,
		55.342159, 53.845596, 58.588787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.602505, 54.421402, 58.194176>,  <55.338573, 53.790821, 57.890942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.602505, 54.421402, 58.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688820, 54.067417, 58.359230>,  <55.740608, 53.855026, 58.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688820, 54.067417, 58.359230>,  <55.602505, 54.421402, 58.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.688820, 54.067417, 58.359230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974816, 0.219607, -0.038805,
		-0.056278, 0.410623, 0.910067,
		0.215791, -0.884964, 0.412641,
		55.753559, 53.801929, 58.483021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.988388, 54.445236, 58.860435>,  <55.602505, 54.421402, 58.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.988388, 54.445236, 58.860435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.085449, 54.138367, 58.622925>,  <56.143684, 53.954247, 58.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.085449, 54.138367, 58.622925>,  <55.988388, 54.445236, 58.860435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.085449, 54.138367, 58.622925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965980, 0.247517, 0.074961,
		0.089460, -0.591762, 0.801133,
		0.242653, -0.767172, -0.593773,
		56.158245, 53.908215, 58.444794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.490410, 54.078445, 59.270447>,  <55.988388, 54.445236, 58.860435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.490410, 54.078445, 59.270447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.541130, 54.016609, 58.878525>,  <56.571564, 53.979507, 58.643372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.541130, 54.016609, 58.878525>,  <56.490410, 54.078445, 59.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.541130, 54.016609, 58.878525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978203, 0.183240, 0.097682,
		0.164440, -0.970838, 0.174452,
		0.126800, -0.154587, -0.979808,
		56.579170, 53.970234, 58.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.128502, 53.688244, 59.246719>,  <56.490410, 54.078445, 59.270447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.128502, 53.688244, 59.246719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.045036, 53.911354, 58.925385>,  <56.994957, 54.045219, 58.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.045036, 53.911354, 58.925385>,  <57.128502, 53.688244, 59.246719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.045036, 53.911354, 58.925385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946882, 0.320741, -0.023251,
		0.244693, -0.765513, -0.595075,
		-0.208664, 0.557777, -0.803334,
		56.982437, 54.078686, 58.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.548618, 53.532894, 58.559891>,  <57.128502, 53.688244, 59.246719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.548618, 53.532894, 58.559891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.430420, 53.914932, 58.568695>,  <57.359501, 54.144154, 58.573978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.430420, 53.914932, 58.568695>,  <57.548618, 53.532894, 58.559891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.430420, 53.914932, 58.568695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953701, 0.293557, 0.065409,
		0.056010, 0.040319, -0.997616,
		-0.295495, 0.955091, 0.022010,
		57.341770, 54.201458, 58.575298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.828259, 53.844704, 58.012123>,  <57.548618, 53.532894, 58.559891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.828259, 53.844704, 58.012123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.765778, 54.137569, 58.277313>,  <57.728291, 54.313290, 58.436428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.765778, 54.137569, 58.277313>,  <57.828259, 53.844704, 58.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.765778, 54.137569, 58.277313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925986, 0.342134, -0.159669,
		-0.343731, 0.588969, -0.731413,
		-0.156201, 0.732161, 0.662979,
		57.718918, 54.357220, 58.476208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.076775, 54.520836, 57.763660>,  <57.828259, 53.844704, 58.012123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.076775, 54.520836, 57.763660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.107132, 54.519730, 58.162506>,  <58.125347, 54.519066, 58.401814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.107132, 54.519730, 58.162506>,  <58.076775, 54.520836, 57.763660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.107132, 54.519730, 58.162506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914079, 0.399714, -0.068464,
		-0.398371, 0.916636, 0.032861,
		0.075891, -0.002764, 0.997112,
		58.129898, 54.518902, 58.461639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.274483, 55.171616, 57.994888>,  <58.076775, 54.520836, 57.763660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.274483, 55.171616, 57.994888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398911, 54.873734, 58.231071>,  <58.473568, 54.695004, 58.372780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398911, 54.873734, 58.231071>,  <58.274483, 55.171616, 57.994888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.398911, 54.873734, 58.231071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949250, 0.273845, -0.154708,
		-0.046482, 0.608618, 0.792100,
		0.311071, -0.744710, 0.590459,
		58.492233, 54.650322, 58.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.740311, 55.451431, 58.585640>,  <58.274483, 55.171616, 57.994888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.740311, 55.451431, 58.585640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.780647, 55.071480, 58.467285>,  <58.804852, 54.843506, 58.396271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.780647, 55.071480, 58.467285>,  <58.740311, 55.451431, 58.585640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.780647, 55.071480, 58.467285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928338, 0.196796, -0.315373,
		0.357798, -0.242884, 0.901658,
		0.100844, -0.949884, -0.295892,
		58.810902, 54.786514, 58.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.452366, 55.389915, 58.595249>,  <58.740311, 55.451431, 58.585640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.452366, 55.389915, 58.595249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.338867, 55.055191, 58.407959>,  <59.270767, 54.854355, 58.295586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.338867, 55.055191, 58.407959>,  <59.452366, 55.389915, 58.595249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.338867, 55.055191, 58.407959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862386, -0.009198, -0.506168,
		0.419260, -0.547416, 0.724263,
		-0.283746, -0.836810, -0.468227,
		59.253742, 54.804150, 58.267490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.095058, 54.988251, 58.506359>,  <59.452366, 55.389915, 58.595249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.095058, 54.988251, 58.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.812691, 54.927418, 58.229652>,  <59.643269, 54.890919, 58.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.812691, 54.927418, 58.229652>,  <60.095058, 54.988251, 58.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.812691, 54.927418, 58.229652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658592, 0.218453, -0.720094,
		0.260632, -0.963924, -0.054052,
		-0.705923, -0.152081, -0.691768,
		59.600914, 54.881794, 58.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.607723, 54.630814, 58.237652>,  <60.095058, 54.988251, 58.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.607723, 54.630814, 58.237652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.571968, 54.480743, 58.606705>,  <60.550514, 54.390701, 58.828136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.571968, 54.480743, 58.606705>,  <60.607723, 54.630814, 58.237652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.571968, 54.480743, 58.606705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995247, 0.002290, 0.097358,
		-0.038639, 0.926951, 0.373188,
		-0.089392, -0.375176, 0.922633,
		60.545151, 54.368191, 58.883495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.028454, 55.127602, 58.625797>,  <60.607723, 54.630814, 58.237652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.028454, 55.127602, 58.625797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.983444, 54.781296, 58.820854>,  <60.956440, 54.573513, 58.937889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.983444, 54.781296, 58.820854>,  <61.028454, 55.127602, 58.625797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.983444, 54.781296, 58.820854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992876, -0.078609, 0.089539,
		-0.039186, 0.494245, 0.868439,
		-0.112521, -0.865761, 0.487644,
		60.949688, 54.521568, 58.967148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.431320, 55.602444, 58.253548>,  <61.028454, 55.127602, 58.625797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.431320, 55.602444, 58.253548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.658241, 55.903496, 58.387238>,  <61.794395, 56.084129, 58.467453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.658241, 55.903496, 58.387238>,  <61.431320, 55.602444, 58.253548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.658241, 55.903496, 58.387238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007261, 0.410411, -0.911872,
		-0.823476, 0.514883, 0.238294,
		0.567305, 0.752634, 0.334225,
		61.828434, 56.129288, 58.487507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.502712, 56.134804, 57.677212>,  <61.431320, 55.602444, 58.253548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.502712, 56.134804, 57.677212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.824936, 56.227890, 57.895172>,  <62.018269, 56.283741, 58.025948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.824936, 56.227890, 57.895172>,  <61.502712, 56.134804, 57.677212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.824936, 56.227890, 57.895172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425853, 0.412033, -0.805529,
		-0.411979, 0.880949, 0.232813,
		0.805557, 0.232717, 0.544904,
		62.066605, 56.297707, 58.058643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.809696, 56.640987, 57.295483>,  <61.502712, 56.134804, 57.677212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.809696, 56.640987, 57.295483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.121468, 56.543633, 57.526398>,  <62.308529, 56.485222, 57.664948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.121468, 56.543633, 57.526398>,  <61.809696, 56.640987, 57.295483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.121468, 56.543633, 57.526398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623325, 0.208723, -0.753592,
		0.062921, 0.947205, 0.314393,
		0.779428, -0.243385, 0.577284,
		62.355297, 56.470615, 57.699581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.299530, 57.190315, 57.175510>,  <61.809696, 56.640987, 57.295483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.299530, 57.190315, 57.175510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.487816, 56.889145, 57.359482>,  <62.600788, 56.708443, 57.469864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.487816, 56.889145, 57.359482>,  <62.299530, 57.190315, 57.175510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.487816, 56.889145, 57.359482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823982, 0.188803, -0.534235,
		0.315402, 0.630445, 0.709268,
		0.470718, -0.752922, 0.459927,
		62.629032, 56.663269, 57.497459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.701843, 56.785946, 56.750053>,  <62.299530, 57.190315, 57.175510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.701843, 56.785946, 56.750053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.968658, 56.509720, 56.861893>,  <63.128750, 56.343983, 56.928997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.968658, 56.509720, 56.861893>,  <62.701843, 56.785946, 56.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.968658, 56.509720, 56.861893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504895, 0.143042, -0.851246,
		0.547848, 0.708983, 0.444078,
		0.667041, -0.690566, 0.279597,
		63.168770, 56.302551, 56.945770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.446400, 57.032154, 56.688927>,  <62.701843, 56.785946, 56.750053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.446400, 57.032154, 56.688927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.435844, 56.634552, 56.646492>,  <63.429512, 56.395988, 56.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.435844, 56.634552, 56.646492>,  <63.446400, 57.032154, 56.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.435844, 56.634552, 56.646492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554084, 0.073783, -0.829185,
		0.832043, -0.080663, 0.548816,
		-0.026391, -0.994007, -0.106085,
		63.427929, 56.336349, 56.614666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.998386, 56.675941, 56.860138>,  <63.446400, 57.032154, 56.688927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.998386, 56.675941, 56.860138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787071, 56.533699, 56.551735>,  <63.660282, 56.448353, 56.366692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787071, 56.533699, 56.551735>,  <63.998386, 56.675941, 56.860138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.787071, 56.533699, 56.551735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703319, 0.325433, -0.632009,
		0.475658, -0.876149, 0.078181,
		-0.528291, -0.355607, -0.771008,
		63.628582, 56.427017, 56.320431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.586899, 57.131378, 56.883553>,  <63.998386, 56.675941, 56.860138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.586899, 57.131378, 56.883553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.933044, 56.977940, 57.012543>,  <65.140732, 56.885876, 57.089935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.933044, 56.977940, 57.012543>,  <64.586899, 57.131378, 56.883553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.933044, 56.977940, 57.012543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279312, 0.903469, 0.325159,
		-0.416071, -0.191314, 0.888979,
		0.865373, -0.383592, 0.322471,
		65.192657, 56.862862, 57.109283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.820343, 57.515881, 57.503750>,  <64.586899, 57.131378, 56.883553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.820343, 57.515881, 57.503750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125633, 57.351173, 57.304573>,  <65.308807, 57.252350, 57.185066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125633, 57.351173, 57.304573>,  <64.820343, 57.515881, 57.503750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.125633, 57.351173, 57.304573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565177, 0.798938, 0.205603,
		0.313162, -0.438344, 0.842487,
		0.763220, -0.411767, -0.497939,
		65.354599, 57.227642, 57.155190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.338333, 57.092865, 57.759289>,  <64.820343, 57.515881, 57.503750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.338333, 57.092865, 57.759289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.080956, 56.789406, 57.800117>,  <64.926529, 56.607330, 57.824615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.080956, 56.789406, 57.800117>,  <65.338333, 57.092865, 57.759289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.080956, 56.789406, 57.800117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764955, 0.632291, -0.122687,
		0.028537, -0.157024, -0.987182,
		-0.643452, -0.758651, 0.102073,
		64.887917, 56.561810, 57.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.770233, 57.104092, 58.423416>,  <65.338333, 57.092865, 57.759289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.770233, 57.104092, 58.423416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.947350, 57.003345, 58.079208>,  <66.053619, 56.942898, 57.872684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.947350, 57.003345, 58.079208>,  <65.770233, 57.104092, 58.423416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.947350, 57.003345, 58.079208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773443, 0.592787, 0.224478,
		0.453568, -0.764961, 0.457286,
		0.442790, -0.251869, -0.860522,
		66.080185, 56.927784, 57.821053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.512756, 56.809708, 58.437836>,  <65.770233, 57.104092, 58.423416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.512756, 56.809708, 58.437836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.466652, 56.978714, 58.078239>,  <66.438988, 57.080120, 57.862480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.466652, 56.978714, 58.078239>,  <66.512756, 56.809708, 58.437836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.466652, 56.978714, 58.078239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926875, 0.371224, 0.055630,
		0.357233, -0.826844, -0.434411,
		-0.115267, 0.422518, -0.898995,
		66.432076, 57.105469, 57.808540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.936951, 56.624554, 57.835361>,  <66.512756, 56.809708, 58.437836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.936951, 56.624554, 57.835361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.856804, 57.013374, 57.786438>,  <66.808716, 57.246666, 57.757084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.856804, 57.013374, 57.786438>,  <66.936951, 56.624554, 57.835361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.856804, 57.013374, 57.786438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966413, 0.175602, -0.187642,
		-0.160921, -0.155795, -0.974593,
		-0.200375, 0.972055, -0.122305,
		66.796692, 57.304993, 57.749748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.125999, 56.977165, 57.129238>,  <66.936951, 56.624554, 57.835361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.125999, 56.977165, 57.129238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.161385, 57.241539, 57.427322>,  <67.182617, 57.400162, 57.606174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.161385, 57.241539, 57.427322>,  <67.125999, 56.977165, 57.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.161385, 57.241539, 57.427322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987987, 0.036945, -0.150055,
		-0.126708, 0.749533, -0.649727,
		0.088467, 0.660936, 0.745210,
		67.187927, 57.439819, 57.650887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.455872, 57.533100, 56.816730>,  <67.125999, 56.977165, 57.129238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.455872, 57.533100, 56.816730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.498070, 57.535454, 57.214493>,  <67.523392, 57.536865, 57.453148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.498070, 57.535454, 57.214493>,  <67.455872, 57.533100, 56.816730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.498070, 57.535454, 57.214493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994241, -0.019564, -0.105365,
		0.018835, 0.999791, -0.007912,
		0.105498, 0.005882, 0.994402,
		67.529716, 57.537220, 57.512814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.151123, 57.701885, 56.792274>,  <67.455872, 57.533100, 56.816730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.151123, 57.701885, 56.792274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.041946, 57.599777, 57.163292>,  <67.976440, 57.538513, 57.385902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.041946, 57.599777, 57.163292>,  <68.151123, 57.701885, 56.792274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.041946, 57.599777, 57.163292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960690, -0.123223, 0.248777,
		0.050791, 0.958986, 0.278866,
		-0.272936, -0.255268, 0.927547,
		67.960068, 57.523197, 57.441555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.576202, 57.973026, 57.266785>,  <68.151123, 57.701885, 56.792274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.576202, 57.973026, 57.266785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.436508, 57.697021, 57.520370>,  <68.352692, 57.531418, 57.672523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.436508, 57.697021, 57.520370>,  <68.576202, 57.973026, 57.266785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.436508, 57.697021, 57.520370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934826, -0.210160, 0.286238,
		-0.064274, 0.692613, 0.718440,
		-0.349240, -0.690014, 0.633965,
		68.331734, 57.490017, 57.710560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.930969, 58.027199, 57.967068>,  <68.576202, 57.973026, 57.266785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.930969, 58.027199, 57.967068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805847, 57.660069, 57.869286>,  <68.730774, 57.439793, 57.810616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805847, 57.660069, 57.869286>,  <68.930969, 58.027199, 57.967068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.805847, 57.660069, 57.869286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943723, -0.329437, 0.029298,
		-0.107421, -0.221529, 0.969219,
		-0.312807, -0.917821, -0.244451,
		68.712006, 57.384724, 57.795952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.161499, 57.499680, 58.502964>,  <68.930969, 58.027199, 57.967068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.161499, 57.499680, 58.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.129883, 57.337429, 58.138718>,  <69.110916, 57.240078, 57.920170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.129883, 57.337429, 58.138718>,  <69.161499, 57.499680, 58.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.129883, 57.337429, 58.138718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959329, -0.279277, 0.041137,
		-0.271000, -0.870328, 0.411204,
		-0.079038, -0.405628, -0.910615,
		69.106171, 57.215740, 57.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.026047, 57.326939, 58.404312>,  <69.161499, 57.499680, 58.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.026047, 57.326939, 58.404312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.210312, 57.662418, 58.288124>,  <70.320869, 57.863705, 58.218410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.210312, 57.662418, 58.288124>,  <70.026047, 57.326939, 58.404312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.210312, 57.662418, 58.288124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102044, 0.275047, 0.956000,
		0.881688, -0.470037, 0.041121,
		0.460666, 0.838698, -0.290470,
		70.348511, 57.914028, 58.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.630974, 57.227749, 58.747513>,  <70.026047, 57.326939, 58.404312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.630974, 57.227749, 58.747513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.454643, 57.576565, 58.662453>,  <70.348846, 57.785854, 58.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.454643, 57.576565, 58.662453>,  <70.630974, 57.227749, 58.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.454643, 57.576565, 58.662453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008353, 0.232919, 0.972461,
		0.897553, 0.430464, -0.095393,
		-0.440828, 0.872038, -0.212652,
		70.322395, 57.838177, 58.598656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.035210, 57.823792, 58.931335>,  <70.630974, 57.227749, 58.747513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.035210, 57.823792, 58.931335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.640656, 57.887859, 58.946236>,  <70.403923, 57.926300, 58.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.640656, 57.887859, 58.946236>,  <71.035210, 57.823792, 58.931335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.640656, 57.887859, 58.946236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073029, 0.223712, 0.971915,
		0.147340, 0.961404, -0.232364,
		-0.986386, 0.160172, 0.037249,
		70.344742, 57.935909, 58.957409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.833466, 58.038887, 59.502293>,  <71.035210, 57.823792, 58.931335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.833466, 58.038887, 59.502293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.444977, 57.991146, 59.419830>,  <70.211884, 57.962502, 59.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.444977, 57.991146, 59.419830>,  <70.833466, 58.038887, 59.502293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.444977, 57.991146, 59.419830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226701, 0.197314, 0.953768,
		-0.073161, 0.973047, -0.218692,
		-0.971213, -0.119357, -0.206155,
		70.153610, 57.955338, 59.357983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.423950, 58.497803, 59.320202>,  <70.833466, 58.038887, 59.502293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.423950, 58.497803, 59.320202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.312393, 58.424072, 59.697189>,  <71.245461, 58.379833, 59.923382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.312393, 58.424072, 59.697189>,  <71.423950, 58.497803, 59.320202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.312393, 58.424072, 59.697189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908784, -0.367848, 0.196977,
		0.310376, 0.911434, 0.270103,
		-0.278888, -0.184329, 0.942467,
		71.228729, 58.368774, 59.979931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.950661, 58.861637, 59.680382>,  <71.423950, 58.497803, 59.320202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.950661, 58.861637, 59.680382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776161, 58.567284, 59.887520>,  <71.671463, 58.390671, 60.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776161, 58.567284, 59.887520>,  <71.950661, 58.861637, 59.680382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.776161, 58.567284, 59.887520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890375, -0.436212, 0.130195,
		0.130083, 0.517876, 0.845507,
		-0.436245, -0.735883, 0.517848,
		71.645287, 58.346519, 60.042873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.239174, 58.760700, 60.454021>,  <71.950661, 58.861637, 59.680382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.239174, 58.760700, 60.454021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.083626, 58.444687, 60.264442>,  <71.990295, 58.255081, 60.150696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.083626, 58.444687, 60.264442>,  <72.239174, 58.760700, 60.454021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.083626, 58.444687, 60.264442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903988, -0.426441, -0.030880,
		-0.177716, -0.440454, 0.880010,
		-0.388873, -0.790031, -0.473951,
		71.966965, 58.207676, 60.122257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.597641, 58.313492, 60.839592>,  <72.239174, 58.760700, 60.454021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.597641, 58.313492, 60.839592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.438499, 58.128304, 60.522766>,  <72.343018, 58.017189, 60.332668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.438499, 58.128304, 60.522766>,  <72.597641, 58.313492, 60.839592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.438499, 58.128304, 60.522766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831669, -0.546502, -0.098300,
		-0.387357, -0.697847, 0.602466,
		-0.397847, -0.462975, -0.792068,
		72.319145, 57.989410, 60.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.397018, 57.507629, 60.933647>,  <72.597641, 58.313492, 60.839592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.397018, 57.507629, 60.933647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.532173, 57.655563, 60.587456>,  <72.613266, 57.744324, 60.379742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.532173, 57.655563, 60.587456>,  <72.397018, 57.507629, 60.933647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.532173, 57.655563, 60.587456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819267, -0.568214, 0.077034,
		-0.463288, -0.735089, -0.494983,
		0.337883, 0.369834, -0.865481,
		72.633537, 57.766514, 60.327812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.575584, 56.942299, 60.345730>,  <72.397018, 57.507629, 60.933647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.575584, 56.942299, 60.345730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.796692, 57.268692, 60.278046>,  <72.929352, 57.464527, 60.237434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.796692, 57.268692, 60.278046>,  <72.575584, 56.942299, 60.345730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.796692, 57.268692, 60.278046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815459, -0.571469, -0.091920,
		-0.171702, -0.087172, -0.981285,
		0.552761, 0.815980, -0.169208,
		72.962517, 57.513485, 60.227283>
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
