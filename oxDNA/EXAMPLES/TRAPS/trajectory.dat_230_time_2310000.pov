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
	<36.274258, 53.334713, 50.214329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554256, 53.471535, 49.963570>,  <36.722256, 53.553627, 49.813114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554256, 53.471535, 49.963570>,  <36.274258, 53.334713, 50.214329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554256, 53.471535, 49.963570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462430, 0.451845, 0.762886,
		0.544214, -0.823913, 0.158109,
		0.699992, 0.342059, -0.626903,
		36.764256, 53.574150, 49.775497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983353, 53.068535, 50.365040>,  <36.274258, 53.334713, 50.214329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983353, 53.068535, 50.365040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031879, 53.417000, 50.174728>,  <37.060997, 53.626080, 50.060543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031879, 53.417000, 50.174728>,  <36.983353, 53.068535, 50.365040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031879, 53.417000, 50.174728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656709, 0.288977, 0.696582,
		0.744322, -0.396955, -0.537039,
		0.121320, 0.871159, -0.475776,
		37.068275, 53.678349, 50.031994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394318, 53.408108, 50.810917>,  <36.983353, 53.068535, 50.365040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394318, 53.408108, 50.810917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370705, 53.716438, 50.557198>,  <37.356537, 53.901436, 50.404964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370705, 53.716438, 50.557198>,  <37.394318, 53.408108, 50.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370705, 53.716438, 50.557198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646605, 0.513623, 0.563998,
		0.760537, -0.376847, -0.528743,
		-0.059034, 0.770829, -0.634301,
		37.352993, 53.947685, 50.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989796, 53.568134, 50.661324>,  <37.394318, 53.408108, 50.810917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989796, 53.568134, 50.661324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785011, 53.908546, 50.614586>,  <37.662140, 54.112793, 50.586544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785011, 53.908546, 50.614586>,  <37.989796, 53.568134, 50.661324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785011, 53.908546, 50.614586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703220, 0.493335, 0.511959,
		0.493335, 0.179933, -0.851026,
		-0.511959, 0.851026, -0.116846,
		37.631424, 54.163853, 50.579533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493053, 54.080307, 50.717201>,  <37.989796, 53.568134, 50.661324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493053, 54.080307, 50.717201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135910, 54.256134, 50.756363>,  <37.921623, 54.361629, 50.779861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135910, 54.256134, 50.756363>,  <38.493053, 54.080307, 50.717201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135910, 54.256134, 50.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413620, 0.714462, 0.564325,
		0.178110, 0.544357, -0.819727,
		-0.892858, 0.439567, 0.097904,
		37.868053, 54.388004, 50.785732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651234, 54.805008, 50.500217>,  <38.493053, 54.080307, 50.717201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651234, 54.805008, 50.500217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322525, 54.814934, 50.727928>,  <38.125301, 54.820889, 50.864555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322525, 54.814934, 50.727928>,  <38.651234, 54.805008, 50.500217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322525, 54.814934, 50.727928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302038, 0.866125, 0.398246,
		-0.483180, 0.499210, -0.719254,
		-0.821773, 0.024818, 0.569275,
		38.075993, 54.822380, 50.898712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674282, 55.441513, 49.956165>,  <38.651234, 54.805008, 50.500217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674282, 55.441513, 49.956165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610050, 55.578083, 49.585728>,  <38.571510, 55.660027, 49.363464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610050, 55.578083, 49.585728>,  <38.674282, 55.441513, 49.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610050, 55.578083, 49.585728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916653, 0.399515, -0.011655,
		0.366007, -0.850775, -0.377122,
		-0.160581, 0.341424, -0.926090,
		38.561874, 55.680511, 49.307899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180649, 55.134304, 49.443348>,  <38.674282, 55.441513, 49.956165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180649, 55.134304, 49.443348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085217, 55.515392, 49.368092>,  <39.027954, 55.744045, 49.322937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085217, 55.515392, 49.368092>,  <39.180649, 55.134304, 49.443348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085217, 55.515392, 49.368092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947822, 0.270633, 0.168499,
		0.211450, -0.138120, -0.967580,
		-0.238586, 0.952723, -0.188139,
		39.013641, 55.801208, 49.311649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482140, 55.482380, 48.786930>,  <39.180649, 55.134304, 49.443348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482140, 55.482380, 48.786930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433685, 55.737888, 49.090851>,  <39.404613, 55.891193, 49.273205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433685, 55.737888, 49.090851>,  <39.482140, 55.482380, 48.786930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433685, 55.737888, 49.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982356, 0.187021, -0.000608,
		-0.142487, 0.746321, -0.650155,
		-0.121140, 0.638770, 0.759801,
		39.397343, 55.929520, 49.318790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646336, 56.179951, 48.604496>,  <39.482140, 55.482380, 48.786930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646336, 56.179951, 48.604496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716961, 56.108704, 48.991711>,  <39.759338, 56.065956, 49.224041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716961, 56.108704, 48.991711>,  <39.646336, 56.179951, 48.604496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716961, 56.108704, 48.991711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951451, 0.282803, -0.121506,
		-0.252121, 0.942494, 0.219407,
		0.176568, -0.178121, 0.968038,
		39.769932, 56.055267, 49.282124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953106, 56.818062, 48.995026>,  <39.646336, 56.179951, 48.604496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953106, 56.818062, 48.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044334, 56.450928, 49.124985>,  <40.099072, 56.230648, 49.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044334, 56.450928, 49.124985>,  <39.953106, 56.818062, 48.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044334, 56.450928, 49.124985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966796, 0.173983, -0.187176,
		0.115271, 0.356795, 0.927043,
		0.228073, -0.917838, 0.324893,
		40.112755, 56.175575, 49.222454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448059, 56.693211, 49.506275>,  <39.953106, 56.818062, 48.995026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448059, 56.693211, 49.506275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457191, 56.359650, 49.285698>,  <40.462669, 56.159512, 49.153351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457191, 56.359650, 49.285698>,  <40.448059, 56.693211, 49.506275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457191, 56.359650, 49.285698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965277, 0.161961, -0.204963,
		0.260231, -0.527615, 0.808642,
		0.022827, -0.833901, -0.551442,
		40.464039, 56.109478, 49.120266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108551, 56.337986, 49.588619>,  <40.448059, 56.693211, 49.506275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108551, 56.337986, 49.588619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973824, 56.198029, 49.238960>,  <40.892986, 56.114056, 49.029163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973824, 56.198029, 49.238960>,  <41.108551, 56.337986, 49.588619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973824, 56.198029, 49.238960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938489, -0.199807, -0.281630,
		-0.076122, -0.915235, 0.395665,
		-0.336815, -0.349889, -0.874147,
		40.872780, 56.093063, 48.976715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229462, 55.623291, 49.411049>,  <41.108551, 56.337986, 49.588619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229462, 55.623291, 49.411049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254913, 55.939907, 49.167931>,  <41.270184, 56.129875, 49.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254913, 55.939907, 49.167931>,  <41.229462, 55.623291, 49.411049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254913, 55.939907, 49.167931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985502, -0.145819, -0.086733,
		-0.157280, -0.593468, -0.789340,
		0.063627, 0.791538, -0.607799,
		41.274002, 56.177368, 48.985592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509899, 55.406914, 48.810143>,  <41.229462, 55.623291, 49.411049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509899, 55.406914, 48.810143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612652, 55.793446, 48.804226>,  <41.674301, 56.025364, 48.800674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612652, 55.793446, 48.804226>,  <41.509899, 55.406914, 48.810143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612652, 55.793446, 48.804226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963356, -0.257251, -0.075940,
		-0.077188, 0.005259, -0.997003,
		0.256879, 0.966331, -0.014791,
		41.689716, 56.083344, 48.799789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020512, 55.526787, 48.245220>,  <41.509899, 55.406914, 48.810143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020512, 55.526787, 48.245220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058884, 55.737946, 48.582771>,  <42.081905, 55.864639, 48.785301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058884, 55.737946, 48.582771>,  <42.020512, 55.526787, 48.245220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058884, 55.737946, 48.582771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965477, -0.255616, 0.050151,
		0.242182, 0.809931, -0.534191,
		0.095929, 0.527895, 0.843875,
		42.087662, 55.896313, 48.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621922, 55.949627, 48.207798>,  <42.020512, 55.526787, 48.245220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621922, 55.949627, 48.207798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571697, 55.909866, 48.602634>,  <42.541561, 55.886009, 48.839539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571697, 55.909866, 48.602634>,  <42.621922, 55.949627, 48.207798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571697, 55.909866, 48.602634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979873, -0.168064, 0.107717,
		0.155187, 0.980752, 0.118505,
		-0.125560, -0.099404, 0.987094,
		42.534031, 55.880047, 48.898762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035534, 56.419998, 48.535686>,  <42.621922, 55.949627, 48.207798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035534, 56.419998, 48.535686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963848, 56.111538, 48.780052>,  <42.920837, 55.926460, 48.926670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963848, 56.111538, 48.780052>,  <43.035534, 56.419998, 48.535686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963848, 56.111538, 48.780052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983786, -0.144801, 0.105820,
		0.006857, 0.619969, 0.784596,
		-0.179215, -0.771149, 0.610910,
		42.910084, 55.880192, 48.963326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439709, 56.592487, 49.324787>,  <43.035534, 56.419998, 48.535686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439709, 56.592487, 49.324787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394798, 56.230930, 49.159683>,  <43.367851, 56.013996, 49.060619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394798, 56.230930, 49.159683>,  <43.439709, 56.592487, 49.324787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394798, 56.230930, 49.159683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993115, -0.088107, -0.077204,
		0.033416, -0.418589, 0.907561,
		-0.112279, -0.903892, -0.412763,
		43.361115, 55.959763, 49.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124023, 56.524952, 49.488800>,  <43.439709, 56.592487, 49.324787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124023, 56.524952, 49.488800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927757, 56.541695, 49.140663>,  <43.809998, 56.551739, 48.931782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927757, 56.541695, 49.140663>,  <44.124023, 56.524952, 49.488800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927757, 56.541695, 49.140663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137351, -0.990073, 0.029822,
		-0.860457, 0.134175, 0.491540,
		-0.490662, 0.041853, -0.870344,
		43.780560, 56.554249, 48.879559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273743, 55.800125, 49.528381>,  <44.124023, 56.524952, 49.488800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273743, 55.800125, 49.528381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058411, 56.046448, 49.298256>,  <43.929214, 56.194241, 49.160183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058411, 56.046448, 49.298256>,  <44.273743, 55.800125, 49.528381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058411, 56.046448, 49.298256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793613, 0.140769, -0.591914,
		-0.283521, -0.775217, -0.564494,
		-0.538325, 0.615810, -0.575312,
		43.896912, 56.231190, 49.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268860, 55.495506, 48.918018>,  <44.273743, 55.800125, 49.528381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268860, 55.495506, 48.918018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225109, 55.892712, 48.935730>,  <44.198860, 56.131035, 48.946358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225109, 55.892712, 48.935730>,  <44.268860, 55.495506, 48.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225109, 55.892712, 48.935730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949134, 0.117565, -0.292100,
		-0.295265, 0.010075, -0.955362,
		-0.109374, 0.993014, 0.044276,
		44.192295, 56.190617, 48.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406963, 55.772671, 48.304245>,  <44.268860, 55.495506, 48.918018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406963, 55.772671, 48.304245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483002, 56.044815, 48.587360>,  <44.528625, 56.208103, 48.757229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483002, 56.044815, 48.587360>,  <44.406963, 55.772671, 48.304245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483002, 56.044815, 48.587360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896141, 0.174210, -0.408144,
		-0.400990, 0.711870, -0.576583,
		0.190099, 0.680361, 0.707793,
		44.540031, 56.248924, 48.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708893, 56.300114, 47.910740>,  <44.406963, 55.772671, 48.304245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708893, 56.300114, 47.910740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812607, 56.301109, 48.297058>,  <44.874836, 56.301708, 48.528851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812607, 56.301109, 48.297058>,  <44.708893, 56.300114, 47.910740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812607, 56.301109, 48.297058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964429, 0.052628, -0.259051,
		-0.051473, 0.998611, 0.011244,
		0.259283, 0.002490, 0.965798,
		44.890392, 56.301857, 48.586796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971416, 56.955357, 48.017834>,  <44.708893, 56.300114, 47.910740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971416, 56.955357, 48.017834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120354, 56.673325, 48.259239>,  <45.209717, 56.504105, 48.404083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120354, 56.673325, 48.259239>,  <44.971416, 56.955357, 48.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120354, 56.673325, 48.259239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927970, 0.272097, -0.254626,
		0.015319, 0.654847, 0.755607,
		0.372340, -0.705081, 0.603510,
		45.232056, 56.461800, 48.440292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407768, 57.168018, 48.556969>,  <44.971416, 56.955357, 48.017834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407768, 57.168018, 48.556969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547588, 56.805286, 48.462761>,  <45.631481, 56.587646, 48.406235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547588, 56.805286, 48.462761>,  <45.407768, 57.168018, 48.556969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547588, 56.805286, 48.462761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910898, 0.387758, -0.141097,
		0.219278, -0.165217, 0.961572,
		0.349546, -0.906834, -0.235523,
		45.652451, 56.533237, 48.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034607, 57.215237, 48.828686>,  <45.407768, 57.168018, 48.556969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034607, 57.215237, 48.828686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048519, 56.901417, 48.581047>,  <46.056866, 56.713127, 48.432465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048519, 56.901417, 48.581047>,  <46.034607, 57.215237, 48.828686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048519, 56.901417, 48.581047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962086, 0.193964, -0.191749,
		0.270518, -0.588953, 0.761547,
		0.034782, -0.784546, -0.619094,
		46.058952, 56.666054, 48.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689606, 57.191406, 48.555027>,  <46.034607, 57.215237, 48.828686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689606, 57.191406, 48.555027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608398, 56.853271, 48.357368>,  <46.559673, 56.650391, 48.238773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608398, 56.853271, 48.357368>,  <46.689606, 57.191406, 48.555027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608398, 56.853271, 48.357368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957268, -0.065196, -0.281759,
		0.205966, -0.530236, 0.822453,
		-0.203019, -0.845340, -0.494149,
		46.547493, 56.599670, 48.209126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154839, 56.612881, 48.704117>,  <46.689606, 57.191406, 48.555027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154839, 56.612881, 48.704117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002472, 56.482330, 48.358082>,  <46.911053, 56.403999, 48.150459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002472, 56.482330, 48.358082>,  <47.154839, 56.612881, 48.704117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002472, 56.482330, 48.358082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845580, -0.501452, -0.183141,
		-0.374026, -0.801263, 0.466993,
		-0.380918, -0.326380, -0.865088,
		46.888195, 56.384415, 48.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703171, 56.381557, 49.202133>,  <47.154839, 56.612881, 48.704117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703171, 56.381557, 49.202133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821285, 56.435280, 49.580502>,  <47.892155, 56.467514, 49.807522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821285, 56.435280, 49.580502>,  <47.703171, 56.381557, 49.202133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821285, 56.435280, 49.580502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934992, -0.162968, 0.315010,
		0.196462, -0.977448, 0.077452,
		0.295284, 0.134304, 0.945923,
		47.909870, 56.475571, 49.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.040833, 57.047581, 49.288368>,  <47.703171, 56.381557, 49.202133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.040833, 57.047581, 49.288368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.237743, 57.012196, 48.941994>,  <48.355888, 56.990967, 48.734169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.237743, 57.012196, 48.941994>,  <48.040833, 57.047581, 49.288368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.237743, 57.012196, 48.941994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500613, 0.842602, 0.198518,
		0.712076, -0.531222, 0.459076,
		0.492275, -0.088460, -0.865933,
		48.385426, 56.985657, 48.682213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.739563, 56.955269, 49.491310>,  <48.040833, 57.047581, 49.288368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.739563, 56.955269, 49.491310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662968, 57.139698, 49.144730>,  <48.617008, 57.250355, 48.936779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662968, 57.139698, 49.144730>,  <48.739563, 56.955269, 49.491310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.662968, 57.139698, 49.144730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491791, 0.809050, 0.321838,
		0.849396, -0.364485, -0.381678,
		-0.191491, 0.461074, -0.866454,
		48.605522, 57.278019, 48.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.407097, 57.214718, 49.160736>,  <48.739563, 56.955269, 49.491310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.407097, 57.214718, 49.160736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.077763, 57.423443, 49.071434>,  <48.880161, 57.548676, 49.017853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.077763, 57.423443, 49.071434>,  <49.407097, 57.214718, 49.160736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.077763, 57.423443, 49.071434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505569, 0.853039, 0.129321,
		0.257925, -0.006396, -0.966144,
		-0.823331, 0.521808, -0.223253,
		48.830765, 57.579987, 49.004459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.126217, 57.307922, 49.051296>,  <49.407097, 57.214718, 49.160736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.126217, 57.307922, 49.051296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.407646, 57.031330, 48.985764>,  <50.576504, 56.865376, 48.946442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.407646, 57.031330, 48.985764>,  <50.126217, 57.307922, 49.051296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.407646, 57.031330, 48.985764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683671, 0.595752, 0.421513,
		-0.193864, -0.408573, 0.891900,
		0.703570, -0.691482, -0.163835,
		50.618717, 56.823887, 48.936615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.539673, 56.916496, 49.638283>,  <50.126217, 57.307922, 49.051296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.539673, 56.916496, 49.638283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750702, 57.010010, 49.311600>,  <50.877319, 57.066116, 49.115589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750702, 57.010010, 49.311600>,  <50.539673, 56.916496, 49.638283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.750702, 57.010010, 49.311600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542715, 0.646870, 0.535742,
		0.653552, -0.725882, 0.214394,
		0.527571, 0.233781, -0.816710,
		50.908974, 57.080143, 49.066586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.209099, 57.007980, 49.845749>,  <50.539673, 56.916496, 49.638283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.209099, 57.007980, 49.845749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.228882, 57.164051, 49.477985>,  <51.240749, 57.257694, 49.257328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.228882, 57.164051, 49.477985>,  <51.209099, 57.007980, 49.845749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.228882, 57.164051, 49.477985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815040, 0.516304, 0.262945,
		0.577290, -0.762362, -0.292473,
		0.049454, 0.390173, -0.919413,
		51.243717, 57.281101, 49.202160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.890476, 56.896423, 49.381424>,  <51.209099, 57.007980, 49.845749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.890476, 56.896423, 49.381424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.688564, 57.236984, 49.324417>,  <51.567417, 57.441319, 49.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.688564, 57.236984, 49.324417>,  <51.890476, 56.896423, 49.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.688564, 57.236984, 49.324417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722724, 0.507100, 0.469595,
		0.472083, 0.134044, -0.871303,
		-0.504784, 0.851400, -0.142517,
		51.537128, 57.492405, 49.281662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.350430, 57.381233, 49.158901>,  <51.890476, 56.896423, 49.381424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.350430, 57.381233, 49.158901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.068710, 57.623947, 49.306290>,  <51.899677, 57.769577, 49.394722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.068710, 57.623947, 49.306290>,  <52.350430, 57.381233, 49.158901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.068710, 57.623947, 49.306290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684458, 0.442706, 0.579248,
		0.188353, 0.660169, -0.727117,
		-0.704301, 0.606785, 0.368473,
		51.857422, 57.805981, 49.416832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.538223, 58.102715, 49.089752>,  <52.350430, 57.381233, 49.158901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.538223, 58.102715, 49.089752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.312050, 58.055893, 49.416332>,  <52.176346, 58.027802, 49.612278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.312050, 58.055893, 49.416332>,  <52.538223, 58.102715, 49.089752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.312050, 58.055893, 49.416332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759484, 0.312156, 0.570738,
		-0.321666, 0.942792, -0.087602,
		-0.565433, -0.117055, 0.816446,
		52.142422, 58.020775, 49.661266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.472599, 58.768318, 49.483688>,  <52.538223, 58.102715, 49.089752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.472599, 58.768318, 49.483688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.472458, 58.448074, 49.723362>,  <52.472374, 58.255928, 49.867165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.472458, 58.448074, 49.723362>,  <52.472599, 58.768318, 49.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.472458, 58.448074, 49.723362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811148, 0.350199, 0.468401,
		-0.584841, 0.486193, 0.649290,
		-0.000353, -0.800610, 0.599185,
		52.472351, 58.207890, 49.903118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.387325, 59.034012, 50.119141>,  <52.472599, 58.768318, 49.483688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.387325, 59.034012, 50.119141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589176, 58.689850, 50.147568>,  <52.710289, 58.483353, 50.164623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589176, 58.689850, 50.147568>,  <52.387325, 59.034012, 50.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.589176, 58.689850, 50.147568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769463, 0.485561, 0.414919,
		-0.391504, -0.154700, 0.907079,
		0.504630, -0.860406, 0.071064,
		52.740566, 58.431728, 50.168888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.488647, 58.942673, 50.820755>,  <52.387325, 59.034012, 50.119141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.488647, 58.942673, 50.820755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.753353, 58.807892, 50.552864>,  <52.912178, 58.727024, 50.392132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.753353, 58.807892, 50.552864>,  <52.488647, 58.942673, 50.820755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.753353, 58.807892, 50.552864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734345, 0.471262, 0.488517,
		0.151009, -0.815093, 0.559304,
		0.661765, -0.336951, -0.669724,
		52.951881, 58.706806, 50.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.069172, 58.342438, 51.026005>,  <52.488647, 58.942673, 50.820755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.069172, 58.342438, 51.026005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.162617, 58.652634, 50.791386>,  <53.218685, 58.838753, 50.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.162617, 58.652634, 50.791386>,  <53.069172, 58.342438, 51.026005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.162617, 58.652634, 50.791386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557592, 0.387345, 0.734204,
		0.796565, -0.498572, -0.341920,
		0.233612, 0.775494, -0.586545,
		53.232700, 58.885281, 50.615421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.707088, 58.483562, 51.264103>,  <53.069172, 58.342438, 51.026005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.707088, 58.483562, 51.264103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.497402, 58.786819, 51.108971>,  <53.371590, 58.968773, 51.015892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.497402, 58.786819, 51.108971>,  <53.707088, 58.483562, 51.264103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.497402, 58.786819, 51.108971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478735, 0.639009, 0.602064,
		0.704282, 0.129941, -0.697928,
		-0.524214, 0.758145, -0.387835,
		53.340137, 59.014263, 50.992619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.080620, 59.161419, 50.832886>,  <53.707088, 58.483562, 51.264103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.080620, 59.161419, 50.832886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.750679, 59.252876, 51.039703>,  <53.552715, 59.307751, 51.163795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.750679, 59.252876, 51.039703>,  <54.080620, 59.161419, 50.832886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.750679, 59.252876, 51.039703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524868, 0.649540, 0.550102,
		-0.210062, 0.725134, -0.655785,
		-0.824856, 0.228645, 0.517043,
		53.503223, 59.321468, 51.194817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.763618, 59.101219, 50.692886>,  <54.080620, 59.161419, 50.832886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.763618, 59.101219, 50.692886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.578087, 58.755539, 50.770882>,  <54.466770, 58.548130, 50.817677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.578087, 58.755539, 50.770882>,  <54.763618, 59.101219, 50.692886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.578087, 58.755539, 50.770882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767842, -0.501929, -0.398103,
		0.441910, -0.034934, 0.896379,
		-0.463826, -0.864203, 0.194984,
		54.438938, 58.496277, 50.829376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.494541, 59.100246, 50.710011>,  <54.763618, 59.101219, 50.692886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.494541, 59.100246, 50.710011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.785652, 59.216713, 50.461632>,  <55.960320, 59.286591, 50.312607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.785652, 59.216713, 50.461632>,  <55.494541, 59.100246, 50.710011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.785652, 59.216713, 50.461632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559530, 0.271471, 0.783090,
		0.396575, -0.917348, 0.034655,
		0.727774, 0.291163, -0.620943,
		56.003983, 59.304062, 50.275349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.113522, 58.652756, 50.763416>,  <55.494541, 59.100246, 50.710011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.113522, 58.652756, 50.763416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.196793, 59.028172, 50.653282>,  <56.246754, 59.253422, 50.587200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.196793, 59.028172, 50.653282>,  <56.113522, 58.652756, 50.763416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.196793, 59.028172, 50.653282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616854, 0.092480, 0.781626,
		0.759048, -0.332559, -0.559688,
		0.208176, 0.938537, -0.275337,
		56.259247, 59.309734, 50.570683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.503872, 58.900997, 51.296616>,  <56.113522, 58.652756, 50.763416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.503872, 58.900997, 51.296616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.212402, 58.631756, 51.347145>,  <56.037521, 58.470211, 51.377464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.212402, 58.631756, 51.347145>,  <56.503872, 58.900997, 51.296616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.212402, 58.631756, 51.347145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472459, -0.360532, 0.804238,
		-0.495793, 0.645714, 0.580726,
		-0.728678, -0.673105, 0.126324,
		55.993797, 58.429825, 51.385044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.364380, 58.928654, 52.028114>,  <56.503872, 58.900997, 51.296616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.364380, 58.928654, 52.028114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.251755, 58.567337, 51.898628>,  <56.184181, 58.350548, 51.820934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.251755, 58.567337, 51.898628>,  <56.364380, 58.928654, 52.028114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.251755, 58.567337, 51.898628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448243, -0.422110, 0.787973,
		-0.848412, 0.076756, 0.523742,
		-0.281559, -0.903289, -0.323718,
		56.167286, 58.296349, 51.801514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.066715, 59.116268, 52.201935>,  <56.364380, 58.928654, 52.028114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.066715, 59.116268, 52.201935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926453, 59.196205, 52.567905>,  <56.842293, 59.244167, 52.787491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926453, 59.196205, 52.567905>,  <57.066715, 59.116268, 52.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.926453, 59.196205, 52.567905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460799, -0.813699, 0.354342,
		0.815293, 0.545853, 0.193242,
		-0.350659, 0.199847, 0.914931,
		56.821255, 59.256161, 52.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.583908, 59.221424, 52.690639>,  <57.066715, 59.116268, 52.201935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.583908, 59.221424, 52.690639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251678, 59.104782, 52.880424>,  <57.052341, 59.034798, 52.994297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251678, 59.104782, 52.880424>,  <57.583908, 59.221424, 52.690639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.251678, 59.104782, 52.880424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509699, -0.741308, 0.436657,
		0.224394, 0.604509, 0.764340,
		-0.830575, -0.291601, 0.474463,
		57.002506, 59.017303, 53.022762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.256443, 58.942463, 52.681087>,  <57.583908, 59.221424, 52.690639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.256443, 58.942463, 52.681087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.595688, 58.944679, 52.469170>,  <58.799232, 58.946011, 52.342018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.595688, 58.944679, 52.469170>,  <58.256443, 58.942463, 52.681087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.595688, 58.944679, 52.469170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445369, 0.534170, 0.718546,
		0.286980, -0.845359, 0.450567,
		0.848109, 0.005540, -0.529793,
		58.850121, 58.946342, 52.310230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.783558, 59.060574, 53.143105>,  <58.256443, 58.942463, 52.681087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.783558, 59.060574, 53.143105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.937614, 59.185040, 52.795578>,  <59.030048, 59.259720, 52.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.937614, 59.185040, 52.795578>,  <58.783558, 59.060574, 53.143105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.937614, 59.185040, 52.795578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591760, 0.639151, 0.491229,
		0.708159, -0.703323, 0.062026,
		0.385136, 0.311164, -0.868819,
		59.053154, 59.278389, 52.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.550613, 59.080837, 53.222576>,  <58.783558, 59.060574, 53.143105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.550613, 59.080837, 53.222576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.487839, 59.313126, 52.903046>,  <59.450172, 59.452499, 52.711327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.487839, 59.313126, 52.903046>,  <59.550613, 59.080837, 53.222576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.487839, 59.313126, 52.903046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602339, 0.697284, 0.388566,
		0.782661, -0.420186, -0.459224,
		-0.156940, 0.580723, -0.798831,
		59.440758, 59.487343, 52.663395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.160934, 59.236492, 52.883465>,  <59.550613, 59.080837, 53.222576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.160934, 59.236492, 52.883465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.882500, 59.521797, 52.850693>,  <59.715439, 59.692982, 52.831028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.882500, 59.521797, 52.850693>,  <60.160934, 59.236492, 52.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.882500, 59.521797, 52.850693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640156, 0.668271, 0.378965,
		0.325054, 0.211346, -0.921777,
		-0.696090, 0.713265, -0.081930,
		59.673672, 59.735775, 52.826115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.765549, 58.894661, 53.185944>,  <60.160934, 59.236492, 52.883465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.765549, 58.894661, 53.185944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.702248, 58.839260, 53.577000>,  <60.664268, 58.806019, 53.811634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.702248, 58.839260, 53.577000>,  <60.765549, 58.894661, 53.185944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.702248, 58.839260, 53.577000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707587, -0.706479, 0.014448,
		0.688679, 0.694049, 0.209805,
		-0.158250, -0.138505, 0.977637,
		60.654774, 58.797710, 53.870289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.454071, 58.981892, 53.621185>,  <60.765549, 58.894661, 53.185944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.454071, 58.981892, 53.621185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.181351, 58.743988, 53.791557>,  <61.017719, 58.601246, 53.893780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.181351, 58.743988, 53.791557>,  <61.454071, 58.981892, 53.621185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.181351, 58.743988, 53.791557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652339, -0.757799, -0.013954,
		0.331067, 0.268335, 0.904650,
		-0.681798, -0.594758, 0.425928,
		60.976810, 58.565559, 53.919334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.863422, 58.465721, 53.873989>,  <61.454071, 58.981892, 53.621185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.863422, 58.465721, 53.873989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497444, 58.319359, 53.942085>,  <61.277855, 58.231541, 53.982941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497444, 58.319359, 53.942085>,  <61.863422, 58.465721, 53.873989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.497444, 58.319359, 53.942085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333086, -0.922851, -0.193391,
		0.227866, -0.120239, 0.966240,
		-0.914948, -0.365908, 0.170236,
		61.222961, 58.209587, 53.993156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.837456, 57.817917, 54.397621>,  <61.863422, 58.465721, 53.873989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.837456, 57.817917, 54.397621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.565315, 57.846428, 54.105858>,  <61.402031, 57.863537, 53.930798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.565315, 57.846428, 54.105858>,  <61.837456, 57.817917, 54.397621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.565315, 57.846428, 54.105858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433278, -0.763586, -0.478756,
		-0.591093, -0.641760, 0.488623,
		-0.680352, 0.071280, -0.729411,
		61.361210, 57.867813, 53.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.282925, 57.349209, 54.465271>,  <61.837456, 57.817917, 54.397621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.282925, 57.349209, 54.465271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.372032, 57.441063, 54.086296>,  <61.425499, 57.496178, 53.858910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.372032, 57.441063, 54.086296>,  <61.282925, 57.349209, 54.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.372032, 57.441063, 54.086296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372243, -0.918259, -0.135039,
		-0.901003, -0.322594, -0.290044,
		0.222773, 0.229638, -0.947438,
		61.438866, 57.509953, 53.802063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.904945, 56.975574, 53.902325>,  <61.282925, 57.349209, 54.465271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.904945, 56.975574, 53.902325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.278168, 57.073479, 53.796879>,  <61.502102, 57.132221, 53.733612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.278168, 57.073479, 53.796879>,  <60.904945, 56.975574, 53.902325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.278168, 57.073479, 53.796879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216438, -0.967323, -0.132065,
		-0.287321, 0.066169, -0.955546,
		0.933060, 0.244761, -0.263610,
		61.558086, 57.146908, 53.717796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.135139, 56.569798, 53.312248>,  <60.904945, 56.975574, 53.902325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.135139, 56.569798, 53.312248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.435486, 56.637199, 53.567688>,  <61.615692, 56.677643, 53.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.435486, 56.637199, 53.567688>,  <61.135139, 56.569798, 53.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.435486, 56.637199, 53.567688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279376, -0.957176, -0.075919,
		0.598457, 0.235414, -0.765787,
		0.750865, 0.168508, 0.638597,
		61.660744, 56.687752, 53.759266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.604893, 55.980083, 53.174488>,  <61.135139, 56.569798, 53.312248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.604893, 55.980083, 53.174488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.795982, 56.194378, 53.452988>,  <61.910637, 56.322952, 53.620087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.795982, 56.194378, 53.452988>,  <61.604893, 55.980083, 53.174488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.795982, 56.194378, 53.452988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613485, -0.770725, 0.172100,
		0.628819, 0.344924, -0.696860,
		0.477726, 0.535733, 0.696253,
		61.939301, 56.355099, 53.661865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.293919, 56.204136, 53.008064>,  <61.604893, 55.980083, 53.174488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.293919, 56.204136, 53.008064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.256447, 56.142998, 53.401585>,  <62.233963, 56.106316, 53.637695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.256447, 56.142998, 53.401585>,  <62.293919, 56.204136, 53.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.256447, 56.142998, 53.401585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635084, -0.770172, -0.059181,
		0.766741, 0.619251, 0.169223,
		-0.093683, -0.152847, 0.983799,
		62.228344, 56.097145, 53.696724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.935387, 56.293114, 53.523571>,  <62.293919, 56.204136, 53.008064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.935387, 56.293114, 53.523571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.711319, 56.014771, 53.703350>,  <62.576878, 55.847767, 53.811218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.711319, 56.014771, 53.703350>,  <62.935387, 56.293114, 53.523571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.711319, 56.014771, 53.703350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762546, -0.645120, -0.048409,
		0.323632, 0.315606, 0.891995,
		-0.560166, -0.695854, 0.449446,
		62.543270, 55.806015, 53.838184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.257656, 55.921085, 54.084259>,  <62.935387, 56.293114, 53.523571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.257656, 55.921085, 54.084259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.016663, 55.675583, 53.880173>,  <62.872066, 55.528282, 53.757721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.016663, 55.675583, 53.880173>,  <63.257656, 55.921085, 54.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.016663, 55.675583, 53.880173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751926, -0.650833, -0.104996,
		-0.267620, -0.446900, 0.853616,
		-0.602484, -0.613757, -0.510211,
		62.835918, 55.491455, 53.727108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.330032, 55.165188, 54.330814>,  <63.257656, 55.921085, 54.084259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.330032, 55.165188, 54.330814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.212929, 55.151970, 53.948570>,  <63.142666, 55.144039, 53.719223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.212929, 55.151970, 53.948570>,  <63.330032, 55.165188, 54.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.212929, 55.151970, 53.948570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737235, -0.644234, -0.203585,
		-0.608913, -0.764114, 0.212966,
		-0.292762, -0.033040, -0.955614,
		63.125099, 55.142059, 53.661884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.065140, 54.894356, 54.290672>,  <63.330032, 55.165188, 54.330814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.065140, 54.894356, 54.290672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.442337, 54.841995, 54.413078>,  <64.668655, 54.810577, 54.486523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.442337, 54.841995, 54.413078>,  <64.065140, 54.894356, 54.290672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.442337, 54.841995, 54.413078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054473, -0.967714, -0.246095,
		0.328345, 0.215395, -0.919671,
		0.942986, -0.130901, 0.306011,
		64.725235, 54.802727, 54.504883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.234680, 54.385662, 53.791824>,  <64.065140, 54.894356, 54.290672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.234680, 54.385662, 53.791824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511459, 54.372047, 54.080280>,  <64.677528, 54.363880, 54.253353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511459, 54.372047, 54.080280>,  <64.234680, 54.385662, 53.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.511459, 54.372047, 54.080280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217747, -0.942532, -0.253416,
		0.688325, 0.332378, -0.644774,
		0.691950, -0.034035, 0.721143,
		64.719048, 54.361835, 54.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.973862, 53.709118, 53.910667>,  <64.234680, 54.385662, 53.791824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.973862, 53.709118, 53.910667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.346848, 53.852295, 53.930199>,  <64.570641, 53.938202, 53.941917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.346848, 53.852295, 53.930199>,  <63.973862, 53.709118, 53.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.346848, 53.852295, 53.930199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355574, -0.933259, 0.050943,
		0.063807, -0.030140, -0.997507,
		0.932468, 0.357938, 0.048832,
		64.626587, 53.959675, 53.944847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.499817, 53.462906, 53.376377>,  <63.973862, 53.709118, 53.910667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.499817, 53.462906, 53.376377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.786880, 53.581902, 53.628235>,  <64.959122, 53.653297, 53.779350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.786880, 53.581902, 53.628235>,  <64.499817, 53.462906, 53.376377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.786880, 53.581902, 53.628235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470504, -0.873717, -0.123468,
		0.513404, 0.384861, -0.767006,
		0.717664, 0.297490, 0.629649,
		65.002182, 53.671150, 53.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.070107, 53.139683, 53.117111>,  <64.499817, 53.462906, 53.376377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.070107, 53.139683, 53.117111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.204643, 53.279625, 53.466850>,  <65.285362, 53.363590, 53.676693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.204643, 53.279625, 53.466850>,  <65.070107, 53.139683, 53.117111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.204643, 53.279625, 53.466850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547808, -0.827876, 0.120536,
		0.766020, 0.438433, -0.470095,
		0.336333, 0.349855, 0.874346,
		65.305542, 53.384583, 53.729153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.527809, 52.854458, 53.582611>,  <65.070107, 53.139683, 53.117111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.527809, 52.854458, 53.582611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.879417, 53.041370, 53.620468>,  <66.090385, 53.153519, 53.643185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.879417, 53.041370, 53.620468>,  <65.527809, 52.854458, 53.582611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.879417, 53.041370, 53.620468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461023, 0.782493, 0.418525,
		0.121506, -0.411530, 0.903260,
		0.879030, 0.467277, 0.094647,
		66.143127, 53.181553, 53.648861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.561256, 53.116001, 54.317184>,  <65.527809, 52.854458, 53.582611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.561256, 53.116001, 54.317184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774338, 53.364456, 54.087257>,  <65.902191, 53.513527, 53.949303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774338, 53.364456, 54.087257>,  <65.561256, 53.116001, 54.317184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.774338, 53.364456, 54.087257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360979, 0.781092, 0.509499,
		0.765449, -0.063922, 0.640314,
		0.532712, 0.621135, -0.574812,
		65.934151, 53.550797, 53.914814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.992798, 53.650280, 54.593838>,  <65.561256, 53.116001, 54.317184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.992798, 53.650280, 54.593838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812294, 53.724770, 54.244736>,  <65.703995, 53.769463, 54.035275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812294, 53.724770, 54.244736>,  <65.992798, 53.650280, 54.593838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.812294, 53.724770, 54.244736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549070, 0.713020, 0.436033,
		0.703487, 0.675962, -0.219503,
		-0.451251, 0.186221, -0.872751,
		65.676918, 53.780636, 53.982910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.931023, 54.257397, 54.540466>,  <65.992798, 53.650280, 54.593838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.931023, 54.257397, 54.540466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.639153, 54.112484, 54.308487>,  <65.464035, 54.025536, 54.169300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.639153, 54.112484, 54.308487>,  <65.931023, 54.257397, 54.540466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.639153, 54.112484, 54.308487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593993, 0.755969, 0.275106,
		0.338754, 0.545220, -0.766799,
		-0.729670, -0.362280, -0.579944,
		65.420250, 54.003799, 54.134502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.694519, 54.708405, 53.982460>,  <65.931023, 54.257397, 54.540466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.694519, 54.708405, 53.982460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396652, 54.473049, 54.108501>,  <65.217934, 54.331837, 54.184124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396652, 54.473049, 54.108501>,  <65.694519, 54.708405, 53.982460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.396652, 54.473049, 54.108501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584999, 0.802653, 0.116295,
		-0.321342, -0.097733, -0.941906,
		-0.744658, -0.588385, 0.315100,
		65.173256, 54.296535, 54.203030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.766640, 55.411510, 54.200459>,  <65.694519, 54.708405, 53.982460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.766640, 55.411510, 54.200459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.880394, 55.302910, 53.832672>,  <65.948647, 55.237751, 53.612000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.880394, 55.302910, 53.832672>,  <65.766640, 55.411510, 54.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.880394, 55.302910, 53.832672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436265, 0.817363, -0.376285,
		0.853698, 0.508138, 0.113996,
		0.284381, -0.271501, -0.919464,
		65.965706, 55.221458, 53.556831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.535919, 55.346069, 54.167641>,  <65.766640, 55.411510, 54.200459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.535919, 55.346069, 54.167641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.617409, 55.454224, 54.544022>,  <66.666306, 55.519115, 54.769852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.617409, 55.454224, 54.544022>,  <66.535919, 55.346069, 54.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.617409, 55.454224, 54.544022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627164, 0.701970, -0.337495,
		-0.751773, 0.658887, -0.026567,
		0.203722, 0.270381, 0.940952,
		66.678528, 55.535339, 54.826309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.255875, 55.215115, 54.820553>,  <66.535919, 55.346069, 54.167641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.255875, 55.215115, 54.820553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.506874, 54.991852, 54.603409>,  <66.657478, 54.857895, 54.473122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.506874, 54.991852, 54.603409>,  <66.255875, 55.215115, 54.820553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.506874, 54.991852, 54.603409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744380, 0.225598, 0.628494,
		-0.228330, -0.798478, 0.557044,
		0.627506, -0.558156, -0.542860,
		66.695129, 54.824406, 54.440552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.644951, 54.675987, 55.250538>,  <66.255875, 55.215115, 54.820553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.644951, 54.675987, 55.250538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869995, 54.791298, 54.940605>,  <67.005020, 54.860485, 54.754646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869995, 54.791298, 54.940605>,  <66.644951, 54.675987, 55.250538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.869995, 54.791298, 54.940605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787283, 0.099215, 0.608557,
		0.252308, -0.952393, -0.171137,
		0.562607, 0.288277, -0.774836,
		67.038780, 54.877781, 54.708153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.290535, 54.246300, 55.135544>,  <66.644951, 54.675987, 55.250538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.290535, 54.246300, 55.135544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.341919, 54.626011, 55.020744>,  <67.372749, 54.853836, 54.951866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.341919, 54.626011, 55.020744>,  <67.290535, 54.246300, 55.135544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.341919, 54.626011, 55.020744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718748, 0.110273, 0.686470,
		0.683298, -0.294470, -0.668125,
		0.128469, 0.949277, -0.286999,
		67.380463, 54.910793, 54.934643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.984474, 54.422951, 54.831970>,  <67.290535, 54.246300, 55.135544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.984474, 54.422951, 54.831970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.814804, 54.715084, 55.046143>,  <67.713005, 54.890366, 55.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.814804, 54.715084, 55.046143>,  <67.984474, 54.422951, 54.831970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.814804, 54.715084, 55.046143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774317, -0.014085, 0.632641,
		0.469581, 0.682945, -0.559535,
		-0.424178, 0.730334, 0.535430,
		67.687553, 54.934185, 55.206772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.493225, 54.912792, 54.926285>,  <67.984474, 54.422951, 54.831970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.493225, 54.912792, 54.926285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.247978, 54.983845, 55.234192>,  <68.100830, 55.026478, 55.418938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.247978, 54.983845, 55.234192>,  <68.493225, 54.912792, 54.926285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.247978, 54.983845, 55.234192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788111, 0.070208, 0.611516,
		0.054581, 0.981589, -0.183039,
		-0.613108, 0.177633, 0.769769,
		68.064049, 55.037136, 55.465122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.536263, 55.695293, 55.400589>,  <68.493225, 54.912792, 54.926285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.536263, 55.695293, 55.400589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.434395, 55.357750, 55.589500>,  <68.373276, 55.155224, 55.702847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.434395, 55.357750, 55.589500>,  <68.536263, 55.695293, 55.400589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.434395, 55.357750, 55.589500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851631, 0.035642, 0.522929,
		-0.458111, 0.535381, 0.709578,
		-0.254676, -0.843858, 0.472275,
		68.357994, 55.104591, 55.731182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.902946, 55.673382, 55.978333>,  <68.536263, 55.695293, 55.400589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.902946, 55.673382, 55.978333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.860107, 55.275719, 55.972954>,  <68.834404, 55.037121, 55.969727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.860107, 55.275719, 55.972954>,  <68.902946, 55.673382, 55.978333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.860107, 55.275719, 55.972954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877887, -0.100902, 0.468116,
		-0.466739, 0.038323, 0.883565,
		-0.107093, -0.994158, -0.013451,
		68.827980, 54.977470, 55.968918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.793640, 55.188862, 56.662411>,  <68.902946, 55.673382, 55.978333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.793640, 55.188862, 56.662411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.025642, 55.067326, 56.360085>,  <69.164848, 54.994404, 56.178688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.025642, 55.067326, 56.360085>,  <68.793640, 55.188862, 56.662411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.025642, 55.067326, 56.360085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810650, 0.123962, 0.572258,
		-0.080183, -0.944624, 0.318209,
		0.580014, -0.303842, -0.755820,
		69.199646, 54.976173, 56.133339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.286522, 54.567204, 56.703438>,  <68.793640, 55.188862, 56.662411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.286522, 54.567204, 56.703438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.421623, 54.867325, 56.476120>,  <69.502686, 55.047398, 56.339729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.421623, 54.867325, 56.476120>,  <69.286522, 54.567204, 56.703438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.421623, 54.867325, 56.476120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801316, 0.087526, 0.591804,
		0.493775, -0.655271, -0.571670,
		0.337756, 0.750306, -0.568297,
		69.522949, 55.092415, 56.305630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.049416, 54.519505, 56.667507>,  <69.286522, 54.567204, 56.703438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.049416, 54.519505, 56.667507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.938782, 54.889938, 56.564850>,  <69.872398, 55.112198, 56.503258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.938782, 54.889938, 56.564850>,  <70.049416, 54.519505, 56.667507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.938782, 54.889938, 56.564850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829326, 0.364944, 0.423125,
		0.485509, -0.095809, -0.868966,
		-0.276585, 0.926087, -0.256640,
		69.855804, 55.167763, 56.487858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.671463, 54.834953, 56.650806>,  <70.049416, 54.519505, 56.667507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.671463, 54.834953, 56.650806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.395958, 55.111618, 56.737717>,  <70.230652, 55.277615, 56.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.395958, 55.111618, 56.737717>,  <70.671463, 54.834953, 56.650806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.395958, 55.111618, 56.737717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698938, 0.553885, 0.452434,
		0.192584, 0.463484, -0.864924,
		-0.688765, 0.691660, 0.217277,
		70.189331, 55.319115, 56.802898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.256668, 55.246304, 56.979183>,  <70.671463, 54.834953, 56.650806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.256668, 55.246304, 56.979183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.398880, 55.234436, 57.352859>,  <71.484207, 55.227318, 57.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.398880, 55.234436, 57.352859>,  <71.256668, 55.246304, 56.979183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.398880, 55.234436, 57.352859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113286, 0.993495, -0.011565,
		-0.927772, 0.109943, 0.356583,
		0.355535, -0.029666, 0.934192,
		71.505539, 55.225536, 57.633118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.967751, 55.781830, 57.422836>,  <71.256668, 55.246304, 56.979183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.967751, 55.781830, 57.422836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.332397, 55.711006, 57.571220>,  <71.551186, 55.668510, 57.660252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.332397, 55.711006, 57.571220>,  <70.967751, 55.781830, 57.422836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.332397, 55.711006, 57.571220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105822, 0.973143, 0.204438,
		-0.397198, -0.147112, 0.905865,
		0.911612, -0.177063, 0.370963,
		71.605881, 55.657887, 57.682510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.973404, 56.109573, 58.087029>,  <70.967751, 55.781830, 57.422836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.973404, 56.109573, 58.087029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.342949, 56.076233, 57.937607>,  <71.564674, 56.056229, 57.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.342949, 56.076233, 57.937607>,  <70.973404, 56.109573, 58.087029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.342949, 56.076233, 57.937607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189454, 0.947633, 0.257099,
		0.332567, -0.308294, 0.891265,
		0.923854, -0.083351, -0.373559,
		71.620102, 56.051228, 57.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.478386, 56.464691, 58.473331>,  <70.973404, 56.109573, 58.087029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.478386, 56.464691, 58.473331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.658745, 56.473030, 58.116402>,  <71.766960, 56.478031, 57.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.658745, 56.473030, 58.116402>,  <71.478386, 56.464691, 58.473331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.658745, 56.473030, 58.116402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312158, 0.932913, 0.179530,
		0.836207, -0.359498, 0.414149,
		0.450906, 0.020844, -0.892328,
		71.794014, 56.479282, 57.848701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.243484, 56.610714, 58.452381>,  <71.478386, 56.464691, 58.473331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.243484, 56.610714, 58.452381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.039680, 56.730839, 58.129837>,  <71.917397, 56.802914, 57.936310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.039680, 56.730839, 58.129837>,  <72.243484, 56.610714, 58.452381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.039680, 56.730839, 58.129837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275014, 0.944800, 0.178099,
		0.815338, -0.131021, -0.563966,
		-0.509501, 0.300309, -0.806364,
		71.886833, 56.820930, 57.887928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.323654, 57.211880, 58.921204>,  <72.243484, 56.610714, 58.452381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.323654, 57.211880, 58.921204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.515976, 57.331974, 58.591675>,  <72.631371, 57.404030, 58.393959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.515976, 57.331974, 58.591675>,  <72.323654, 57.211880, 58.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.515976, 57.331974, 58.591675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556577, -0.830500, 0.022171,
		-0.677526, -0.469179, -0.566419,
		0.480813, 0.300234, -0.823819,
		72.660217, 57.422043, 58.344528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.637260, 56.770279, 59.493835>,  <72.323654, 57.211880, 58.921204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.637260, 56.770279, 59.493835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872406, 57.055935, 59.341827>,  <73.013496, 57.227329, 59.250622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872406, 57.055935, 59.341827>,  <72.637260, 56.770279, 59.493835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.872406, 57.055935, 59.341827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383907, 0.659778, 0.645994,
		0.712063, -0.233862, 0.662023,
		0.587862, 0.714143, -0.380022,
		73.048767, 57.270180, 59.227821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.972717, 57.101910, 60.102016>,  <72.637260, 56.770279, 59.493835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.972717, 57.101910, 60.102016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984375, 57.336864, 59.778503>,  <72.991371, 57.477837, 59.584396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984375, 57.336864, 59.778503>,  <72.972717, 57.101910, 60.102016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.984375, 57.336864, 59.778503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256208, 0.786487, 0.561956,
		0.966182, 0.190837, 0.173417,
		0.029148, 0.587383, -0.808784,
		72.993118, 57.513081, 59.535870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.391808, 57.747917, 60.196255>,  <72.972717, 57.101910, 60.102016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.391808, 57.747917, 60.196255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.115448, 57.827324, 59.918190>,  <72.949631, 57.874969, 59.751350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.115448, 57.827324, 59.918190>,  <73.391808, 57.747917, 60.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.115448, 57.827324, 59.918190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244844, 0.840486, 0.483358,
		0.680230, 0.504157, -0.532083,
		-0.690897, 0.198517, -0.695164,
		72.908180, 57.886879, 59.709641>
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
