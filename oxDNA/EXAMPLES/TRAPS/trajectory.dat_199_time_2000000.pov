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
	<36.121094, 53.828442, 49.858109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482887, 53.725605, 49.994232>,  <36.699963, 53.663902, 50.075905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482887, 53.725605, 49.994232>,  <36.121094, 53.828442, 49.858109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482887, 53.725605, 49.994232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034328, 0.839192, 0.542751,
		-0.425124, -0.479227, 0.767861,
		0.904483, -0.257096, 0.340310,
		36.754230, 53.648476, 50.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120880, 53.789272, 50.542881>,  <36.121094, 53.828442, 49.858109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120880, 53.789272, 50.542881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472149, 53.909527, 50.394051>,  <36.682911, 53.981678, 50.304752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472149, 53.909527, 50.394051>,  <36.120880, 53.789272, 50.542881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472149, 53.909527, 50.394051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027901, 0.744313, 0.667248,
		0.477535, -0.596338, 0.645245,
		0.878170, 0.300631, -0.372073,
		36.735600, 53.999718, 50.282429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693497, 53.836842, 51.039536>,  <36.120880, 53.789272, 50.542881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693497, 53.836842, 51.039536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745861, 54.096172, 50.739525>,  <36.777279, 54.251770, 50.559517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745861, 54.096172, 50.739525>,  <36.693497, 53.836842, 51.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745861, 54.096172, 50.739525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076581, 0.747663, 0.659648,
		0.988432, -0.143791, 0.048226,
		0.130908, 0.648324, -0.750026,
		36.785133, 54.290668, 50.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862991, 54.425602, 51.419640>,  <36.693497, 53.836842, 51.039536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862991, 54.425602, 51.419640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900181, 54.540401, 51.038277>,  <36.922497, 54.609283, 50.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900181, 54.540401, 51.038277>,  <36.862991, 54.425602, 51.419640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900181, 54.540401, 51.038277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269749, 0.914482, 0.301591,
		0.958432, -0.285221, 0.007606,
		0.092975, 0.287003, -0.953407,
		36.928074, 54.626503, 50.752254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560978, 54.749393, 51.183598>,  <36.862991, 54.425602, 51.419640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560978, 54.749393, 51.183598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241219, 54.874557, 50.978439>,  <37.049362, 54.949654, 50.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241219, 54.874557, 50.978439>,  <37.560978, 54.749393, 51.183598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241219, 54.874557, 50.978439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345335, 0.937866, 0.033934,
		0.491642, -0.149993, -0.857782,
		-0.799395, 0.312905, -0.512892,
		37.001400, 54.968430, 50.824574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964977, 54.531898, 51.830822>,  <37.560978, 54.749393, 51.183598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964977, 54.531898, 51.830822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256260, 54.793594, 51.912498>,  <38.431030, 54.950611, 51.961506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256260, 54.793594, 51.912498>,  <37.964977, 54.531898, 51.830822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256260, 54.793594, 51.912498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622658, -0.756032, 0.201774,
		0.286385, -0.019789, -0.957910,
		0.728203, 0.654235, 0.204195,
		38.474720, 54.989864, 51.973759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650517, 54.321644, 51.412952>,  <37.964977, 54.531898, 51.830822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650517, 54.321644, 51.412952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685173, 54.505733, 51.766380>,  <38.705967, 54.616188, 51.978436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685173, 54.505733, 51.766380>,  <38.650517, 54.321644, 51.412952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685173, 54.505733, 51.766380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441400, -0.812831, 0.380094,
		0.893118, 0.357075, -0.273566,
		0.086641, 0.460220, 0.883567,
		38.711166, 54.643799, 52.031452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379395, 54.244644, 51.681080>,  <38.650517, 54.321644, 51.412952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379395, 54.244644, 51.681080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136421, 54.265469, 51.998146>,  <38.990635, 54.277962, 52.188385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136421, 54.265469, 51.998146>,  <39.379395, 54.244644, 51.681080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136421, 54.265469, 51.998146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507463, -0.742265, 0.437634,
		0.611149, 0.668081, 0.424459,
		-0.607436, 0.052062, 0.792661,
		38.954189, 54.281086, 52.235943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695255, 54.343365, 52.331509>,  <39.379395, 54.244644, 51.681080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695255, 54.343365, 52.331509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355659, 54.144676, 52.403595>,  <39.151901, 54.025463, 52.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355659, 54.144676, 52.403595>,  <39.695255, 54.343365, 52.331509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355659, 54.144676, 52.403595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522458, -0.738094, 0.426914,
		-0.079039, 0.456603, 0.886153,
		-0.848994, -0.496720, 0.180218,
		39.100960, 53.995659, 52.457661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681755, 54.176575, 52.927860>,  <39.695255, 54.343365, 52.331509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681755, 54.176575, 52.927860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462563, 53.900097, 52.739403>,  <39.331047, 53.734211, 52.626328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462563, 53.900097, 52.739403>,  <39.681755, 54.176575, 52.927860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462563, 53.900097, 52.739403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477870, -0.720947, 0.501872,
		-0.686557, 0.049871, 0.725363,
		-0.547977, -0.691194, -0.471140,
		39.298168, 53.692738, 52.598061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764996, 53.618092, 53.466152>,  <39.681755, 54.176575, 52.927860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764996, 53.618092, 53.466152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634201, 53.461002, 53.122330>,  <39.555725, 53.366749, 52.916035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634201, 53.461002, 53.122330>,  <39.764996, 53.618092, 53.466152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634201, 53.461002, 53.122330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563487, 0.811209, -0.156279,
		0.758658, 0.433250, -0.486551,
		-0.326987, -0.392727, -0.859561,
		39.536106, 53.343185, 52.864460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461792, 53.651508, 53.748596>,  <39.764996, 53.618092, 53.466152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461792, 53.651508, 53.748596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494514, 53.269978, 53.864197>,  <40.514149, 53.041058, 53.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494514, 53.269978, 53.864197>,  <40.461792, 53.651508, 53.748596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494514, 53.269978, 53.864197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661820, -0.164822, -0.731319,
		0.745186, 0.251094, 0.617778,
		0.081807, -0.953827, 0.289002,
		40.519058, 52.983829, 53.950897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208469, 53.521866, 53.874500>,  <40.461792, 53.651508, 53.748596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208469, 53.521866, 53.874500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983612, 53.220856, 53.737274>,  <40.848698, 53.040249, 53.654938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983612, 53.220856, 53.737274>,  <41.208469, 53.521866, 53.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983612, 53.220856, 53.737274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611733, -0.099179, -0.784823,
		0.556576, -0.651050, 0.516099,
		-0.562145, -0.752528, -0.343068,
		40.814968, 52.995098, 53.634354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601616, 52.921677, 53.743355>,  <41.208469, 53.521866, 53.874500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601616, 52.921677, 53.743355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286457, 52.981895, 53.504509>,  <41.097363, 53.018024, 53.361202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286457, 52.981895, 53.504509>,  <41.601616, 52.921677, 53.743355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286457, 52.981895, 53.504509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615801, 0.189885, -0.764678,
		-0.001735, -0.970196, -0.242316,
		-0.787900, 0.150545, -0.597118,
		41.050087, 53.027058, 53.325375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717056, 52.597939, 53.091812>,  <41.601616, 52.921677, 53.743355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717056, 52.597939, 53.091812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448200, 52.881634, 53.006767>,  <41.286884, 53.051849, 52.955742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448200, 52.881634, 53.006767>,  <41.717056, 52.597939, 53.091812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448200, 52.881634, 53.006767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426508, 0.136151, -0.894178,
		-0.605239, -0.691696, -0.394009,
		-0.672144, 0.709239, -0.212610,
		41.246555, 53.094406, 52.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499947, 52.329021, 52.459923>,  <41.717056, 52.597939, 53.091812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499947, 52.329021, 52.459923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495712, 52.723812, 52.524132>,  <41.493172, 52.960686, 52.562656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495712, 52.723812, 52.524132>,  <41.499947, 52.329021, 52.459923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495712, 52.723812, 52.524132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485785, 0.145392, -0.861902,
		-0.874014, 0.068860, -0.480996,
		-0.010583, 0.986975, 0.160526,
		41.492538, 53.019905, 52.572289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177567, 52.693222, 51.910881>,  <41.499947, 52.329021, 52.459923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177567, 52.693222, 51.910881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414730, 52.965706, 52.082649>,  <41.557030, 53.129196, 52.185711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414730, 52.965706, 52.082649>,  <41.177567, 52.693222, 51.910881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414730, 52.965706, 52.082649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527802, 0.073999, -0.846138,
		-0.608177, 0.728336, -0.315671,
		0.592913, 0.681213, 0.429422,
		41.592606, 53.170071, 52.211475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143085, 53.508617, 51.712456>,  <41.177567, 52.693222, 51.910881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143085, 53.508617, 51.712456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503040, 53.359711, 51.803345>,  <41.719013, 53.270367, 51.857880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503040, 53.359711, 51.803345>,  <41.143085, 53.508617, 51.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503040, 53.359711, 51.803345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307380, 0.171744, -0.935960,
		0.309400, 0.912099, 0.268976,
		0.899883, -0.372264, 0.227224,
		41.773006, 53.248032, 51.871513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757843, 54.101734, 51.578972>,  <41.143085, 53.508617, 51.712456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757843, 54.101734, 51.578972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789520, 53.704521, 51.544060>,  <41.808525, 53.466194, 51.523113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789520, 53.704521, 51.544060>,  <41.757843, 54.101734, 51.578972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789520, 53.704521, 51.544060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205690, 0.101945, -0.973293,
		0.975408, 0.059124, 0.212329,
		0.079190, -0.993032, -0.087276,
		41.813278, 53.406612, 51.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501335, 53.906567, 51.396015>,  <41.757843, 54.101734, 51.578972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501335, 53.906567, 51.396015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236088, 53.640938, 51.257866>,  <42.076939, 53.481560, 51.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236088, 53.640938, 51.257866>,  <42.501335, 53.906567, 51.396015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236088, 53.640938, 51.257866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451709, 0.012897, -0.892072,
		0.596852, -0.747560, 0.291414,
		-0.663119, -0.664070, -0.345377,
		42.037151, 53.441715, 51.154251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808929, 53.475243, 50.846519>,  <42.501335, 53.906567, 51.396015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808929, 53.475243, 50.846519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414917, 53.431103, 50.793556>,  <42.178509, 53.404621, 50.761780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414917, 53.431103, 50.793556>,  <42.808929, 53.475243, 50.846519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414917, 53.431103, 50.793556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134927, -0.015655, -0.990732,
		0.107249, -0.993770, 0.030309,
		-0.985034, -0.110345, -0.132408,
		42.119408, 53.397999, 50.753834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511650, 53.379688, 50.770554>,  <42.808929, 53.475243, 50.846519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511650, 53.379688, 50.770554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488380, 52.980774, 50.788601>,  <43.474419, 52.741425, 50.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488380, 52.980774, 50.788601>,  <43.511650, 53.379688, 50.770554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488380, 52.980774, 50.788601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957591, -0.042970, 0.284908,
		-0.282196, 0.059776, 0.957493,
		-0.058174, -0.997287, 0.045115,
		43.470928, 52.681587, 50.802135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661263, 53.038609, 51.437199>,  <43.511650, 53.379688, 50.770554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661263, 53.038609, 51.437199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767540, 52.739944, 51.193264>,  <43.831306, 52.560745, 51.046906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767540, 52.739944, 51.193264>,  <43.661263, 53.038609, 51.437199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767540, 52.739944, 51.193264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872026, -0.083587, 0.482270,
		-0.411067, -0.659928, 0.628903,
		0.265695, -0.746665, -0.609834,
		43.847248, 52.515945, 51.010315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223240, 52.644135, 51.850109>,  <43.661263, 53.038609, 51.437199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223240, 52.644135, 51.850109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238796, 52.547791, 51.462196>,  <44.248131, 52.489983, 51.229450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238796, 52.547791, 51.462196>,  <44.223240, 52.644135, 51.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238796, 52.547791, 51.462196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976248, -0.197851, 0.088292,
		-0.213138, -0.950179, 0.227448,
		0.038893, -0.240864, -0.969779,
		44.250465, 52.475533, 51.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452236, 51.969196, 51.674019>,  <44.223240, 52.644135, 51.850109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452236, 51.969196, 51.674019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629074, 52.230934, 51.428616>,  <44.735176, 52.387978, 51.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629074, 52.230934, 51.428616>,  <44.452236, 51.969196, 51.674019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629074, 52.230934, 51.428616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891363, -0.244127, 0.381936,
		0.100143, -0.715708, -0.691183,
		0.442090, 0.654343, -0.613507,
		44.761700, 52.427238, 51.244564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944420, 51.560463, 51.432743>,  <44.452236, 51.969196, 51.674019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944420, 51.560463, 51.432743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046764, 51.945923, 51.463490>,  <45.108170, 52.177200, 51.481937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046764, 51.945923, 51.463490>,  <44.944420, 51.560463, 51.432743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046764, 51.945923, 51.463490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930575, -0.267050, 0.250428,
		0.261852, 0.007453, -0.965079,
		0.255858, 0.963654, 0.076863,
		45.123520, 52.235020, 51.486549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434566, 51.916862, 50.959366>,  <44.944420, 51.560463, 51.432743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434566, 51.916862, 50.959366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442776, 52.073803, 51.327202>,  <45.447701, 52.167965, 51.547901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442776, 52.073803, 51.327202>,  <45.434566, 51.916862, 50.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442776, 52.073803, 51.327202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912261, -0.383707, 0.143350,
		0.409096, 0.835961, -0.365800,
		0.020525, 0.392349, 0.919587,
		45.448933, 52.191509, 51.603077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997044, 52.184364, 51.093750>,  <45.434566, 51.916862, 50.959366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997044, 52.184364, 51.093750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874905, 52.153450, 51.473389>,  <45.801620, 52.134903, 51.701172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874905, 52.153450, 51.473389>,  <45.997044, 52.184364, 51.093750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874905, 52.153450, 51.473389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909842, -0.317783, 0.266837,
		0.280985, 0.945009, 0.167351,
		-0.305344, -0.077285, 0.949101,
		45.783302, 52.130264, 51.758118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436817, 52.675312, 51.463188>,  <45.997044, 52.184364, 51.093750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436817, 52.675312, 51.463188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306198, 52.338081, 51.634109>,  <46.227825, 52.135742, 51.736664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306198, 52.338081, 51.634109>,  <46.436817, 52.675312, 51.463188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306198, 52.338081, 51.634109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935186, -0.353762, 0.016699,
		0.137087, 0.405065, 0.903952,
		-0.326549, -0.843075, 0.427307,
		46.208233, 52.085159, 51.762302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648636, 53.107445, 52.024082>,  <46.436817, 52.675312, 51.463188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648636, 53.107445, 52.024082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256302, 53.085377, 52.098820>,  <46.020901, 53.072136, 52.143661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256302, 53.085377, 52.098820>,  <46.648636, 53.107445, 52.024082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256302, 53.085377, 52.098820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020057, 0.982565, 0.184835,
		-0.193782, 0.177546, -0.964845,
		-0.980839, -0.055170, 0.186843,
		45.962051, 53.068825, 52.154873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001259, 53.272453, 52.577168>,  <46.648636, 53.107445, 52.024082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001259, 53.272453, 52.577168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232052, 53.585209, 52.671600>,  <47.370529, 53.772861, 52.728260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232052, 53.585209, 52.671600>,  <47.001259, 53.272453, 52.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.232052, 53.585209, 52.671600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816733, -0.554545, -0.159462,
		0.006236, 0.284823, -0.958560,
		0.576983, 0.781893, 0.236082,
		47.405148, 53.819778, 52.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.376110, 53.435703, 52.048382>,  <47.001259, 53.272453, 52.577168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.376110, 53.435703, 52.048382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555244, 53.546352, 52.388481>,  <47.662727, 53.612740, 52.592541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555244, 53.546352, 52.388481>,  <47.376110, 53.435703, 52.048382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555244, 53.546352, 52.388481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793227, -0.561730, -0.235053,
		0.412590, 0.779706, -0.470986,
		0.447839, 0.276619, 0.850248,
		47.689598, 53.629337, 52.643555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.973022, 53.875015, 51.997337>,  <47.376110, 53.435703, 52.048382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.973022, 53.875015, 51.997337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.017658, 53.635216, 52.314362>,  <48.044437, 53.491337, 52.504574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.017658, 53.635216, 52.314362>,  <47.973022, 53.875015, 51.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.017658, 53.635216, 52.314362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832488, -0.379144, -0.403997,
		0.542690, 0.704875, 0.456769,
		0.111586, -0.599500, 0.792558,
		48.051136, 53.455364, 52.552128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.537811, 53.914768, 52.443340>,  <47.973022, 53.875015, 51.997337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.537811, 53.914768, 52.443340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.437489, 53.527588, 52.438179>,  <48.377293, 53.295280, 52.435081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.437489, 53.527588, 52.438179>,  <48.537811, 53.914768, 52.443340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.437489, 53.527588, 52.438179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815186, -0.203999, -0.542085,
		0.522080, -0.146479, 0.840224,
		-0.250809, -0.967951, -0.012904,
		48.362247, 53.237202, 52.434307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.729443, 54.090340, 51.759930>,  <48.537811, 53.914768, 52.443340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.729443, 54.090340, 51.759930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.690399, 54.467125, 51.631451>,  <48.666973, 54.693195, 51.554363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.690399, 54.467125, 51.631451>,  <48.729443, 54.090340, 51.759930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.690399, 54.467125, 51.631451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576605, -0.316579, -0.753197,
		-0.811172, 0.111690, 0.574042,
		-0.097605, 0.941968, -0.321201,
		48.661118, 54.749714, 51.535091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.467525, 53.884068, 51.419537>,  <48.729443, 54.090340, 51.759930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.467525, 53.884068, 51.419537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.508438, 53.756744, 51.796516>,  <49.532986, 53.680351, 52.022705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.508438, 53.756744, 51.796516>,  <49.467525, 53.884068, 51.419537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.508438, 53.756744, 51.796516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947299, -0.257969, -0.189936,
		0.303582, 0.912214, 0.275144,
		0.102284, -0.318305, 0.942454,
		49.539124, 53.661251, 52.079254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.077091, 54.150265, 51.711975>,  <49.467525, 53.884068, 51.419537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.077091, 54.150265, 51.711975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.017246, 53.808201, 51.910500>,  <49.981339, 53.602962, 52.029613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.017246, 53.808201, 51.910500>,  <50.077091, 54.150265, 51.711975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.017246, 53.808201, 51.910500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964719, -0.236240, -0.116228,
		0.216640, 0.461407, 0.860332,
		-0.149616, -0.855158, 0.496307,
		49.972363, 53.551655, 52.059391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.575687, 54.035202, 52.261139>,  <50.077091, 54.150265, 51.711975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.575687, 54.035202, 52.261139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.432232, 53.679249, 52.148369>,  <50.346157, 53.465675, 52.080708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.432232, 53.679249, 52.148369>,  <50.575687, 54.035202, 52.261139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.432232, 53.679249, 52.148369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932137, -0.325230, -0.159204,
		0.049984, -0.319887, 0.946136,
		-0.358639, -0.889886, -0.281922,
		50.324638, 53.412281, 52.063793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.956238, 53.579720, 52.664516>,  <50.575687, 54.035202, 52.261139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.956238, 53.579720, 52.664516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815250, 53.465244, 52.308121>,  <50.730659, 53.396561, 52.094284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815250, 53.465244, 52.308121>,  <50.956238, 53.579720, 52.664516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.815250, 53.465244, 52.308121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907935, -0.335278, -0.251482,
		-0.226759, -0.897600, 0.378014,
		-0.352470, -0.286186, -0.890990,
		50.709511, 53.379387, 52.040825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.924721, 52.836658, 52.627922>,  <50.956238, 53.579720, 52.664516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.924721, 52.836658, 52.627922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002850, 53.070259, 52.312759>,  <51.049728, 53.210419, 52.123661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002850, 53.070259, 52.312759>,  <50.924721, 52.836658, 52.627922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.002850, 53.070259, 52.312759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953637, -0.300653, 0.013560,
		-0.228967, -0.754025, -0.615646,
		0.195321, 0.583999, -0.787906,
		51.061447, 53.245461, 52.076389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.213795, 52.346508, 52.019146>,  <50.924721, 52.836658, 52.627922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.213795, 52.346508, 52.019146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.327816, 52.729641, 52.033611>,  <51.396229, 52.959518, 52.042290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.327816, 52.729641, 52.033611>,  <51.213795, 52.346508, 52.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.327816, 52.729641, 52.033611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954399, -0.280139, -0.103174,
		-0.088692, 0.063923, -0.994006,
		0.285055, 0.957829, 0.036161,
		51.413334, 53.016991, 52.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.607025, 52.288284, 51.490524>,  <51.213795, 52.346508, 52.019146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.607025, 52.288284, 51.490524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.562004, 52.601887, 51.246338>,  <50.534992, 52.790047, 51.099827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.562004, 52.601887, 51.246338>,  <50.607025, 52.288284, 51.490524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.562004, 52.601887, 51.246338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793989, 0.440348, 0.419136,
		0.597422, -0.437530, -0.672052,
		-0.112552, 0.784003, -0.610468,
		50.528240, 52.837086, 51.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.110218, 52.405083, 50.890930>,  <50.607025, 52.288284, 51.490524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.110218, 52.405083, 50.890930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.978863, 52.738392, 51.068840>,  <50.900051, 52.938377, 51.175587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.978863, 52.738392, 51.068840>,  <51.110218, 52.405083, 50.890930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.978863, 52.738392, 51.068840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907709, 0.148182, 0.392563,
		0.261204, 0.532638, -0.805027,
		-0.328385, 0.833270, 0.444775,
		50.880348, 52.988373, 51.202274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.583893, 52.957859, 50.814251>,  <51.110218, 52.405083, 50.890930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.583893, 52.957859, 50.814251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.388096, 53.023903, 51.156746>,  <51.270618, 53.063530, 51.362244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.388096, 53.023903, 51.156746>,  <51.583893, 52.957859, 50.814251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.388096, 53.023903, 51.156746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858012, 0.266401, 0.439143,
		-0.155596, 0.949616, -0.272064,
		-0.489495, 0.165105, 0.856233,
		51.241249, 53.073433, 51.413616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.758789, 53.617943, 50.967678>,  <51.583893, 52.957859, 50.814251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.758789, 53.617943, 50.967678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.651318, 53.423553, 51.300339>,  <51.586834, 53.306919, 51.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.651318, 53.423553, 51.300339>,  <51.758789, 53.617943, 50.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.651318, 53.423553, 51.300339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762892, 0.419741, 0.491745,
		-0.588052, 0.766581, 0.257969,
		-0.268682, -0.485974, 0.831648,
		51.570713, 53.277760, 51.549831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.689529, 54.158150, 51.471901>,  <51.758789, 53.617943, 50.967678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.689529, 54.158150, 51.471901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.787868, 53.797268, 51.613655>,  <51.846874, 53.580738, 51.698708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.787868, 53.797268, 51.613655>,  <51.689529, 54.158150, 51.471901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.787868, 53.797268, 51.613655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806566, 0.393186, 0.441426,
		-0.537595, 0.177313, 0.824349,
		0.245852, -0.902200, 0.354390,
		51.861626, 53.526608, 51.719971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.200462, 54.257996, 50.875965>,  <51.689529, 54.158150, 51.471901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.200462, 54.257996, 50.875965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.380459, 54.071896, 50.571060>,  <52.488457, 53.960236, 50.388119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.380459, 54.071896, 50.571060>,  <52.200462, 54.257996, 50.875965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.380459, 54.071896, 50.571060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892973, 0.224678, 0.390024,
		-0.010197, -0.856188, 0.516564,
		0.449994, -0.465255, -0.762262,
		52.515457, 53.932320, 50.342381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.606598, 53.790207, 51.148861>,  <52.200462, 54.257996, 50.875965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.606598, 53.790207, 51.148861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.716663, 53.923180, 50.788025>,  <52.782703, 54.002964, 50.571522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.716663, 53.923180, 50.788025>,  <52.606598, 53.790207, 51.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.716663, 53.923180, 50.788025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891749, 0.262383, 0.368699,
		0.359263, -0.905892, -0.224252,
		0.275162, 0.332437, -0.902093,
		52.799213, 54.022911, 50.517395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.293026, 53.588551, 50.968300>,  <52.606598, 53.790207, 51.148861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.293026, 53.588551, 50.968300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.218945, 53.926838, 50.768112>,  <53.174496, 54.129810, 50.647999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.218945, 53.926838, 50.768112>,  <53.293026, 53.588551, 50.968300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.218945, 53.926838, 50.768112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939795, 0.301269, 0.161313,
		0.287199, -0.440459, -0.850596,
		-0.185206, 0.845715, -0.500465,
		53.163383, 54.180553, 50.617973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.825317, 53.607803, 50.405872>,  <53.293026, 53.588551, 50.968300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.825317, 53.607803, 50.405872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.712227, 53.968479, 50.536728>,  <53.644375, 54.184883, 50.615242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.712227, 53.968479, 50.536728>,  <53.825317, 53.607803, 50.405872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.712227, 53.968479, 50.536728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911022, 0.359155, -0.202600,
		-0.300177, 0.240752, -0.923002,
		-0.282724, 0.901691, 0.327141,
		53.627411, 54.238987, 50.634869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.140411, 54.064865, 49.972691>,  <53.825317, 53.607803, 50.405872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.140411, 54.064865, 49.972691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.057243, 54.260475, 50.311543>,  <54.007343, 54.377842, 50.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.057243, 54.260475, 50.311543>,  <54.140411, 54.064865, 49.972691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.057243, 54.260475, 50.311543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875935, 0.478526, -0.061249,
		-0.435324, 0.729291, -0.527852,
		-0.207922, 0.489027, 0.847125,
		53.994865, 54.407185, 50.565681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.149029, 54.773819, 49.949753>,  <54.140411, 54.064865, 49.972691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.149029, 54.773819, 49.949753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.254936, 54.704712, 50.329239>,  <54.318481, 54.663246, 50.556931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.254936, 54.704712, 50.329239>,  <54.149029, 54.773819, 49.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.254936, 54.704712, 50.329239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849475, 0.507409, -0.144667,
		-0.456390, 0.844208, 0.281105,
		0.264764, -0.172767, 0.948710,
		54.334366, 54.652882, 50.613853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.284782, 55.418797, 50.281532>,  <54.149029, 54.773819, 49.949753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.284782, 55.418797, 50.281532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.499619, 55.105824, 50.407600>,  <54.628521, 54.918041, 50.483242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.499619, 55.105824, 50.407600>,  <54.284782, 55.418797, 50.281532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.499619, 55.105824, 50.407600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843492, 0.494917, -0.208753,
		0.007352, 0.377964, 0.925791,
		0.537091, -0.782432, 0.315171,
		54.660748, 54.871094, 50.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.876980, 55.477573, 50.863873>,  <54.284782, 55.418797, 50.281532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.876980, 55.477573, 50.863873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.931351, 55.202080, 50.579010>,  <54.963974, 55.036785, 50.408092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.931351, 55.202080, 50.579010>,  <54.876980, 55.477573, 50.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.931351, 55.202080, 50.579010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947921, 0.299410, -0.108630,
		0.288044, -0.660303, 0.693564,
		0.135931, -0.688734, -0.712158,
		54.972130, 54.995461, 50.365364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.462204, 55.157715, 50.992428>,  <54.876980, 55.477573, 50.863873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.462204, 55.157715, 50.992428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.412361, 55.127636, 50.596687>,  <55.382454, 55.109589, 50.359241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.412361, 55.127636, 50.596687>,  <55.462204, 55.157715, 50.992428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.412361, 55.127636, 50.596687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874174, 0.463360, -0.145319,
		0.469354, -0.882974, 0.007999,
		-0.124606, -0.075198, -0.989353,
		55.374981, 55.105076, 50.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.175438, 54.954643, 50.747086>,  <55.462204, 55.157715, 50.992428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.175438, 54.954643, 50.747086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.989449, 55.135612, 50.442688>,  <55.877853, 55.244194, 50.260048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.989449, 55.135612, 50.442688>,  <56.175438, 54.954643, 50.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.989449, 55.135612, 50.442688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824068, 0.535347, -0.185245,
		0.323587, -0.713246, -0.621749,
		-0.464976, 0.452421, -0.760994,
		55.849957, 55.271339, 50.214390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.443005, 54.752094, 50.029064>,  <56.175438, 54.954643, 50.747086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.443005, 54.752094, 50.029064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310959, 55.116646, 50.127377>,  <56.231731, 55.335377, 50.186363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310959, 55.116646, 50.127377>,  <56.443005, 54.752094, 50.029064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.310959, 55.116646, 50.127377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920196, 0.368745, -0.131399,
		-0.210386, 0.182794, -0.960377,
		-0.330115, 0.911380, 0.245785,
		56.211926, 55.390060, 50.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.656807, 55.431602, 49.525974>,  <56.443005, 54.752094, 50.029064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.656807, 55.431602, 49.525974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.587807, 55.502228, 49.913597>,  <56.546406, 55.544605, 50.146172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.587807, 55.502228, 49.913597>,  <56.656807, 55.431602, 49.525974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.587807, 55.502228, 49.913597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914202, 0.394961, 0.090774,
		-0.366711, 0.901571, -0.229549,
		-0.172502, 0.176566, 0.969055,
		56.536057, 55.555199, 50.204315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.294514, 55.560795, 49.975750>,  <56.656807, 55.431602, 49.525974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.294514, 55.560795, 49.975750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.458984, 55.197044, 49.950523>,  <57.557667, 54.978794, 49.935387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.458984, 55.197044, 49.950523>,  <57.294514, 55.560795, 49.975750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.458984, 55.197044, 49.950523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391198, 0.238525, -0.888859,
		0.823347, 0.340804, 0.453820,
		0.411174, -0.909373, -0.063067,
		57.582336, 54.924232, 49.931602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.022285, 55.604969, 50.015743>,  <57.294514, 55.560795, 49.975750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.022285, 55.604969, 50.015743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.888168, 55.762997, 49.673634>,  <57.807697, 55.857815, 49.468369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.888168, 55.762997, 49.673634>,  <58.022285, 55.604969, 50.015743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.888168, 55.762997, 49.673634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481403, -0.708516, -0.516001,
		-0.809834, -0.584743, 0.047371,
		-0.335292, 0.395070, -0.855278,
		57.787582, 55.881519, 49.417049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.493950, 55.838921, 49.700691>,  <58.022285, 55.604969, 50.015743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.493950, 55.838921, 49.700691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.782707, 55.572163, 49.626801>,  <58.955959, 55.412109, 49.582466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.782707, 55.572163, 49.626801>,  <58.493950, 55.838921, 49.700691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.782707, 55.572163, 49.626801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668581, 0.603269, 0.434817,
		-0.178535, -0.437397, 0.881367,
		0.721889, -0.666896, -0.184731,
		58.999275, 55.372093, 49.571381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.806934, 55.509953, 50.287067>,  <58.493950, 55.838921, 49.700691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.806934, 55.509953, 50.287067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.091927, 55.509972, 50.006393>,  <59.262924, 55.509983, 49.837990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.091927, 55.509972, 50.006393>,  <58.806934, 55.509953, 50.287067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.091927, 55.509972, 50.006393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581888, 0.558807, 0.590882,
		0.392139, -0.829298, 0.398111,
		0.712484, 0.000052, -0.701688,
		59.305672, 55.509987, 49.795887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.381401, 55.134563, 50.462158>,  <58.806934, 55.509953, 50.287067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.381401, 55.134563, 50.462158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425568, 55.468849, 50.246979>,  <59.452068, 55.669422, 50.117870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425568, 55.468849, 50.246979>,  <59.381401, 55.134563, 50.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.425568, 55.468849, 50.246979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540552, 0.403706, 0.738123,
		0.834034, -0.372285, -0.407175,
		0.110414, 0.835718, -0.537944,
		59.458691, 55.719566, 50.085594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.095291, 55.416286, 50.486664>,  <59.381401, 55.134563, 50.462158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.095291, 55.416286, 50.486664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.801109, 55.685181, 50.452690>,  <59.624599, 55.846516, 50.432308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.801109, 55.685181, 50.452690>,  <60.095291, 55.416286, 50.486664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.801109, 55.685181, 50.452690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440913, 0.569973, 0.693345,
		0.514498, 0.472474, -0.715584,
		-0.735450, 0.672235, -0.084930,
		59.580475, 55.886852, 50.427212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.876862, 55.354214, 50.897549>,  <60.095291, 55.416286, 50.486664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.876862, 55.354214, 50.897549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.940262, 55.396713, 51.290199>,  <60.978302, 55.422215, 51.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.940262, 55.396713, 51.290199>,  <60.876862, 55.354214, 50.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.940262, 55.396713, 51.290199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987322, -0.008499, -0.158502,
		-0.008499, 0.994303, -0.106252,
		0.158502, 0.106252, 0.981625,
		60.987812, 55.428589, 51.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.438732, 55.790325, 51.008156>,  <60.876862, 55.354214, 50.897549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.438732, 55.790325, 51.008156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.428673, 55.580372, 51.348476>,  <61.422638, 55.454399, 51.552670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.428673, 55.580372, 51.348476>,  <61.438732, 55.790325, 51.008156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.428673, 55.580372, 51.348476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999590, -0.001540, 0.028593,
		-0.013698, 0.851171, 0.524710,
		-0.025145, -0.524886, 0.850801,
		61.421131, 55.422905, 51.603718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.167686, 55.737907, 51.122475>,  <61.438732, 55.790325, 51.008156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.167686, 55.737907, 51.122475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996223, 55.554535, 51.433884>,  <61.893345, 55.444511, 51.620728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996223, 55.554535, 51.433884>,  <62.167686, 55.737907, 51.122475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.996223, 55.554535, 51.433884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903366, -0.230409, 0.361721,
		0.013551, 0.858341, 0.512901,
		-0.428657, -0.458436, 0.778518,
		61.867626, 55.417004, 51.667439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.497921, 55.961716, 51.657570>,  <62.167686, 55.737907, 51.122475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.497921, 55.961716, 51.657570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.347763, 55.598034, 51.729591>,  <62.257668, 55.379826, 51.772804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.347763, 55.598034, 51.729591>,  <62.497921, 55.961716, 51.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.347763, 55.598034, 51.729591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909765, -0.324310, 0.259133,
		-0.177212, 0.261086, 0.948910,
		-0.375397, -0.909207, 0.180055,
		62.235146, 55.325272, 51.783607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.829681, 55.824059, 52.228745>,  <62.497921, 55.961716, 51.657570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.829681, 55.824059, 52.228745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.701973, 55.488869, 52.051720>,  <62.625347, 55.287754, 51.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.701973, 55.488869, 52.051720>,  <62.829681, 55.824059, 52.228745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.701973, 55.488869, 52.051720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871759, -0.442838, 0.209596,
		-0.371618, -0.318887, 0.871901,
		-0.319273, -0.837977, -0.442559,
		62.606190, 55.237476, 51.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.828751, 55.084763, 52.668591>,  <62.829681, 55.824059, 52.228745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.828751, 55.084763, 52.668591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.894897, 55.041931, 52.276428>,  <62.934586, 55.016232, 52.041130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.894897, 55.041931, 52.276428>,  <62.828751, 55.084763, 52.668591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.894897, 55.041931, 52.276428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932791, -0.305809, 0.190738,
		-0.320240, -0.946052, 0.049314,
		0.165368, -0.107081, -0.980402,
		62.944508, 55.009808, 51.982307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.032223, 54.337219, 52.516884>,  <62.828751, 55.084763, 52.668591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.032223, 54.337219, 52.516884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.191826, 54.612347, 52.274330>,  <63.287590, 54.777424, 52.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.191826, 54.612347, 52.274330>,  <63.032223, 54.337219, 52.516884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.191826, 54.612347, 52.274330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912953, -0.236361, 0.332640,
		0.085471, -0.686325, -0.722256,
		0.399012, 0.687817, -0.606380,
		63.311531, 54.818691, 52.092415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.500439, 54.041531, 51.929459>,  <63.032223, 54.337219, 52.516884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.500439, 54.041531, 51.929459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.623436, 54.405041, 52.042290>,  <63.697235, 54.623146, 52.109989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.623436, 54.405041, 52.042290>,  <63.500439, 54.041531, 51.929459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.623436, 54.405041, 52.042290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926535, -0.353479, 0.128786,
		0.216747, 0.221756, -0.950708,
		0.307496, 0.908778, 0.282080,
		63.715683, 54.677673, 52.126915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.093781, 54.194424, 51.579548>,  <63.500439, 54.041531, 51.929459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.093781, 54.194424, 51.579548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.106125, 54.417809, 51.911129>,  <64.113533, 54.551838, 52.110077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.106125, 54.417809, 51.911129>,  <64.093781, 54.194424, 51.579548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.106125, 54.417809, 51.911129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932070, -0.315586, 0.177910,
		0.360962, 0.767153, -0.530266,
		0.030860, 0.558464, 0.828955,
		64.115379, 54.585346, 52.159817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.848503, 54.419353, 51.528141>,  <64.093781, 54.194424, 51.579548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.848503, 54.419353, 51.528141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.665482, 54.414955, 51.883785>,  <64.555672, 54.412315, 52.097172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.665482, 54.414955, 51.883785>,  <64.848503, 54.419353, 51.528141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.665482, 54.414955, 51.883785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827199, -0.372055, 0.421091,
		0.326169, 0.928146, 0.179330,
		-0.457554, -0.010995, 0.889114,
		64.528214, 54.411655, 52.150520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.340408, 54.368019, 52.029415>,  <64.848503, 54.419353, 51.528141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.340408, 54.368019, 52.029415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.074791, 54.254780, 52.306229>,  <64.915421, 54.186836, 52.472317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.074791, 54.254780, 52.306229>,  <65.340408, 54.368019, 52.029415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.074791, 54.254780, 52.306229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733799, -0.424384, 0.530507,
		0.143498, 0.860088, 0.489547,
		-0.664039, -0.283103, 0.692030,
		64.875580, 54.169849, 52.513836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.376060, 54.851826, 52.687000>,  <65.340408, 54.368019, 52.029415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.376060, 54.851826, 52.687000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.245560, 54.476536, 52.733131>,  <65.167259, 54.251362, 52.760811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.245560, 54.476536, 52.733131>,  <65.376060, 54.851826, 52.687000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.245560, 54.476536, 52.733131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916942, -0.284459, 0.279823,
		-0.229730, 0.197041, 0.953099,
		-0.326255, -0.938220, 0.115326,
		65.147682, 54.195068, 52.767731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.550583, 54.595390, 53.454216>,  <65.376060, 54.851826, 52.687000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.550583, 54.595390, 53.454216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.583496, 54.318535, 53.167393>,  <65.603241, 54.152420, 52.995296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.583496, 54.318535, 53.167393>,  <65.550583, 54.595390, 53.454216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.583496, 54.318535, 53.167393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962591, -0.131188, 0.237081,
		-0.258162, -0.709743, 0.655451,
		0.082279, -0.692137, -0.717061,
		65.608177, 54.110893, 52.952274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.911461, 54.128689, 53.960274>,  <65.550583, 54.595390, 53.454216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.911461, 54.128689, 53.960274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.703850, 54.062912, 53.624760>,  <65.579285, 54.023445, 53.423450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.703850, 54.062912, 53.624760>,  <65.911461, 54.128689, 53.960274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.703850, 54.062912, 53.624760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741106, 0.402358, -0.537466,
		0.425877, -0.900592, -0.086964,
		-0.519029, -0.164445, -0.838789,
		65.548141, 54.013577, 53.373123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.334602, 54.399826, 54.340565>,  <65.911461, 54.128689, 53.960274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.334602, 54.399826, 54.340565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.472404, 54.033142, 54.259609>,  <65.555084, 53.813133, 54.211037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.472404, 54.033142, 54.259609>,  <65.334602, 54.399826, 54.340565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.472404, 54.033142, 54.259609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619884, -0.060218, -0.782379,
		0.705027, 0.394990, -0.588999,
		0.344500, -0.916710, -0.202393,
		65.575752, 53.758129, 54.198891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.005043, 54.768620, 54.891438>,  <65.334602, 54.399826, 54.340565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.005043, 54.768620, 54.891438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.337608, 54.585514, 55.017418>,  <65.537148, 54.475651, 55.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.337608, 54.585514, 55.017418>,  <65.005043, 54.768620, 54.891438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.337608, 54.585514, 55.017418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016870, 0.587354, 0.809154,
		-0.555390, -0.667433, 0.496059,
		0.831418, -0.457765, 0.314951,
		65.587036, 54.448185, 55.111904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.075493, 54.496883, 55.654266>,  <65.005043, 54.768620, 54.891438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.075493, 54.496883, 55.654266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.438828, 54.623852, 55.545326>,  <65.656830, 54.700031, 55.479961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.438828, 54.623852, 55.545326>,  <65.075493, 54.496883, 55.654266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.438828, 54.623852, 55.545326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028026, 0.695901, 0.717591,
		0.417309, -0.644178, 0.641005,
		0.908332, 0.317422, -0.272352,
		65.711327, 54.719078, 55.463619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.435287, 54.640343, 56.267998>,  <65.075493, 54.496883, 55.654266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.435287, 54.640343, 56.267998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.595207, 54.832432, 55.955704>,  <65.691162, 54.947685, 55.768326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.595207, 54.832432, 55.955704>,  <65.435287, 54.640343, 56.267998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.595207, 54.832432, 55.955704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286338, 0.743712, 0.604072,
		0.870731, -0.465061, 0.159828,
		0.399796, 0.480220, -0.780738,
		65.715149, 54.976498, 55.721481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.039764, 54.954102, 56.541626>,  <65.435287, 54.640343, 56.267998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.039764, 54.954102, 56.541626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.012611, 55.147018, 56.192276>,  <65.996315, 55.262768, 55.982666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.012611, 55.147018, 56.192276>,  <66.039764, 54.954102, 56.541626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.012611, 55.147018, 56.192276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335250, 0.835522, 0.435328,
		0.939680, -0.263247, -0.218409,
		-0.067886, 0.482291, -0.873377,
		65.992249, 55.291706, 55.930264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.685516, 55.107212, 56.517208>,  <66.039764, 54.954102, 56.541626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.685516, 55.107212, 56.517208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.431465, 55.350193, 56.326378>,  <66.279030, 55.495983, 56.211880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.431465, 55.350193, 56.326378>,  <66.685516, 55.107212, 56.517208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.431465, 55.350193, 56.326378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481896, 0.794340, 0.369866,
		0.603639, 0.005013, -0.797242,
		-0.635135, 0.607453, -0.477079,
		66.240921, 55.532429, 56.183254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.893158, 55.420799, 55.845615>,  <66.685516, 55.107212, 56.517208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.893158, 55.420799, 55.845615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.715523, 55.598110, 56.157074>,  <66.608940, 55.704498, 56.343948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.715523, 55.598110, 56.157074>,  <66.893158, 55.420799, 55.845615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.715523, 55.598110, 56.157074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882667, 0.365718, 0.295211,
		-0.153903, 0.818384, -0.553680,
		-0.444087, 0.443282, 0.778645,
		66.582298, 55.731094, 56.390667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.207680, 56.119690, 55.914425>,  <66.893158, 55.420799, 55.845615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.207680, 56.119690, 55.914425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042519, 55.991081, 56.255280>,  <66.943420, 55.913918, 56.459793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042519, 55.991081, 56.255280>,  <67.207680, 56.119690, 55.914425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.042519, 55.991081, 56.255280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766253, 0.383112, 0.515830,
		-0.492316, 0.865938, 0.088182,
		-0.412894, -0.321521, 0.852140,
		66.918648, 55.894627, 56.510921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.056274, 56.706287, 56.349510>,  <67.207680, 56.119690, 55.914425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.056274, 56.706287, 56.349510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.106026, 56.389801, 56.589012>,  <67.135872, 56.199909, 56.732712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.106026, 56.389801, 56.589012>,  <67.056274, 56.706287, 56.349510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.106026, 56.389801, 56.589012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748050, 0.471220, 0.467303,
		-0.651883, 0.389779, 0.650477,
		0.124373, -0.791216, 0.598755,
		67.143341, 56.152435, 56.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.142807, 57.007923, 57.039536>,  <67.056274, 56.706287, 56.349510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.142807, 57.007923, 57.039536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.334618, 56.659515, 56.996864>,  <67.449707, 56.450470, 56.971264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.334618, 56.659515, 56.996864>,  <67.142807, 57.007923, 57.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.334618, 56.659515, 56.996864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818702, 0.400308, 0.411680,
		-0.315877, -0.284748, 0.905064,
		0.479529, -0.871018, -0.106675,
		67.478477, 56.398209, 56.964863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.456291, 56.751541, 57.708458>,  <67.142807, 57.007923, 57.039536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.456291, 56.751541, 57.708458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.649857, 56.664684, 57.369362>,  <67.765999, 56.612572, 57.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.649857, 56.664684, 57.369362>,  <67.456291, 56.751541, 57.708458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.649857, 56.664684, 57.369362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766061, 0.573416, 0.290421,
		0.423049, -0.789965, 0.443830,
		0.483921, -0.217138, -0.847744,
		67.795036, 56.599545, 57.115040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.205078, 56.591106, 57.807812>,  <67.456291, 56.751541, 57.708458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.205078, 56.591106, 57.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.141060, 56.745331, 57.444336>,  <68.102646, 56.837864, 57.226250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.141060, 56.745331, 57.444336>,  <68.205078, 56.591106, 57.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.141060, 56.745331, 57.444336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763478, 0.631859, 0.133626,
		0.625687, -0.672381, -0.395499,
		-0.160052, 0.385563, -0.908694,
		68.093048, 56.861000, 57.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.796928, 56.808014, 57.568687>,  <68.205078, 56.591106, 57.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.796928, 56.808014, 57.568687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.550171, 56.996941, 57.316856>,  <68.402115, 57.110294, 57.165756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.550171, 56.996941, 57.316856>,  <68.796928, 56.808014, 57.568687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.550171, 56.996941, 57.316856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646150, 0.760648, -0.062484,
		0.449376, -0.445347, -0.774421,
		-0.616889, 0.472314, -0.629578,
		68.365105, 57.138634, 57.127983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.297325, 57.147217, 57.982597>,  <68.796928, 56.808014, 57.568687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.297325, 57.147217, 57.982597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.400963, 57.360897, 57.660728>,  <69.463150, 57.489105, 57.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.400963, 57.360897, 57.660728>,  <69.297325, 57.147217, 57.982597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.400963, 57.360897, 57.660728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079311, 0.818539, 0.568950,
		0.962589, -0.211234, 0.169715,
		0.259099, 0.534205, -0.804669,
		69.478691, 57.521160, 57.419327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.990799, 57.467381, 58.023254>,  <69.297325, 57.147217, 57.982597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.990799, 57.467381, 58.023254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.380424, 57.552940, 57.993744>,  <70.614197, 57.604275, 57.976036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.380424, 57.552940, 57.993744>,  <69.990799, 57.467381, 58.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.380424, 57.552940, 57.993744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010583, 0.368789, 0.929453,
		0.226016, -0.904568, 0.361488,
		0.974066, 0.213897, -0.073779,
		70.672646, 57.617111, 57.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.201309, 57.289749, 58.648438>,  <69.990799, 57.467381, 58.023254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.201309, 57.289749, 58.648438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449860, 57.563606, 58.496033>,  <70.598991, 57.727921, 58.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449860, 57.563606, 58.496033>,  <70.201309, 57.289749, 58.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.449860, 57.563606, 58.496033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092352, 0.418892, 0.903328,
		0.778056, -0.596487, 0.197059,
		0.621370, 0.684640, -0.381008,
		70.636269, 57.768997, 58.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.882088, 57.453766, 59.005959>,  <70.201309, 57.289749, 58.648438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.882088, 57.453766, 59.005959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.745468, 57.792477, 58.842834>,  <70.663498, 57.995705, 58.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.745468, 57.792477, 58.842834>,  <70.882088, 57.453766, 59.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.745468, 57.792477, 58.842834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023301, 0.426142, 0.904356,
		0.939573, 0.318389, -0.125820,
		-0.341554, 0.846777, -0.407811,
		70.643005, 58.046509, 58.720490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.162621, 57.968765, 59.452278>,  <70.882088, 57.453766, 59.005959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.162621, 57.968765, 59.452278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.884651, 58.182377, 59.259651>,  <70.717873, 58.310543, 59.144073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.884651, 58.182377, 59.259651>,  <71.162621, 57.968765, 59.452278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.884651, 58.182377, 59.259651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238120, 0.461012, 0.854849,
		0.678521, 0.708719, -0.193203,
		-0.694916, 0.534027, -0.481566,
		70.676178, 58.342587, 59.115181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.851891, 57.747192, 59.136421>,  <71.162621, 57.968765, 59.452278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.851891, 57.747192, 59.136421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.678207, 58.079910, 58.998100>,  <71.573997, 58.279541, 58.915108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.678207, 58.079910, 58.998100>,  <71.851891, 57.747192, 59.136421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.678207, 58.079910, 58.998100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742043, -0.112644, 0.660820,
		0.510712, 0.543538, 0.666138,
		-0.434217, 0.831792, -0.345800,
		71.547943, 58.329449, 58.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.608582, 57.489624, 59.261803>,  <71.851891, 57.747192, 59.136421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.608582, 57.489624, 59.261803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.696877, 57.453438, 59.650253>,  <72.749855, 57.431725, 59.883324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.696877, 57.453438, 59.650253>,  <72.608582, 57.489624, 59.261803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.696877, 57.453438, 59.650253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959870, 0.196753, -0.199847,
		-0.172993, 0.976270, 0.130268,
		0.220735, -0.090468, 0.971129,
		72.763100, 57.426296, 59.941593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.868492, 58.200188, 59.610535>,  <72.608582, 57.489624, 59.261803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.868492, 58.200188, 59.610535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.999870, 57.869877, 59.793930>,  <73.078697, 57.671688, 59.903969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.999870, 57.869877, 59.793930>,  <72.868492, 58.200188, 59.610535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.999870, 57.869877, 59.793930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895104, 0.427084, 0.128015,
		-0.301527, 0.368353, 0.879430,
		0.328436, -0.825781, 0.458492,
		73.098404, 57.622143, 59.931477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.142288, 58.234219, 60.248810>,  <72.868492, 58.200188, 59.610535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.142288, 58.234219, 60.248810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.319939, 57.904488, 60.108391>,  <73.426529, 57.706650, 60.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.319939, 57.904488, 60.108391>,  <73.142288, 58.234219, 60.248810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.319939, 57.904488, 60.108391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892605, 0.373205, 0.252932,
		-0.077484, -0.425686, 0.901548,
		0.444132, -0.824324, -0.351052,
		73.453178, 57.657192, 60.003075>
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
