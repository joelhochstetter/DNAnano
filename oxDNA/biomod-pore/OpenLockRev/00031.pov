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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.304676, 34.300690, 50.925980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359890, 34.262234, 50.531681>,  <39.393017, 34.239162, 50.295101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359890, 34.262234, 50.531681>,  <39.304676, 34.300690, 50.925980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359890, 34.262234, 50.531681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969902, -0.188454, 0.154192,
		-0.200592, -0.977365, 0.067230,
		0.138032, -0.096136, -0.985751,
		39.401299, 34.233391, 50.235954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712006, 33.712074, 50.789753>,  <39.304676, 34.300690, 50.925980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712006, 33.712074, 50.789753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792328, 33.891216, 50.441246>,  <39.840519, 33.998703, 50.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792328, 33.891216, 50.441246>,  <39.712006, 33.712074, 50.789753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792328, 33.891216, 50.441246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966368, -0.236412, 0.101199,
		-0.160655, -0.862284, -0.480266,
		0.200803, 0.447856, -0.871265,
		39.852570, 34.025574, 50.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350990, 33.326046, 50.552402>,  <39.712006, 33.712074, 50.789753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350990, 33.326046, 50.552402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334587, 33.677174, 50.361507>,  <40.324745, 33.887852, 50.246971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334587, 33.677174, 50.361507>,  <40.350990, 33.326046, 50.552402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334587, 33.677174, 50.361507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996784, 0.068852, 0.041003,
		0.068852, -0.474019, -0.877818,
		-0.041003, 0.877818, -0.477235,
		40.322285, 33.940517, 50.218338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836304, 33.250275, 49.946514>,  <40.350990, 33.326046, 50.552402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836304, 33.250275, 49.946514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791630, 33.646103, 49.982891>,  <40.764824, 33.883602, 50.004719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791630, 33.646103, 49.982891>,  <40.836304, 33.250275, 49.946514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791630, 33.646103, 49.982891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974527, 0.126977, -0.184862,
		-0.194482, 0.067981, -0.978547,
		-0.111686, 0.989573, 0.090944,
		40.758125, 33.942974, 50.010174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905323, 33.548195, 49.287563>,  <40.836304, 33.250275, 49.946514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905323, 33.548195, 49.287563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006454, 33.807213, 49.575108>,  <41.067135, 33.962624, 49.747635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006454, 33.807213, 49.575108>,  <40.905323, 33.548195, 49.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006454, 33.807213, 49.575108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933634, 0.031601, -0.356833,
		-0.253782, 0.761370, -0.596582,
		0.252829, 0.647547, 0.718860,
		41.082302, 34.001476, 49.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435127, 33.812466, 49.076996>,  <40.905323, 33.548195, 49.287563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435127, 33.812466, 49.076996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487446, 33.987316, 49.432934>,  <41.518837, 34.092224, 49.646496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487446, 33.987316, 49.432934>,  <41.435127, 33.812466, 49.076996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487446, 33.987316, 49.432934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946604, 0.211716, -0.243142,
		-0.294676, 0.874128, -0.386090,
		0.130796, 0.437123, 0.889840,
		41.526684, 34.118454, 49.699886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797062, 34.452827, 48.886131>,  <41.435127, 33.812466, 49.076996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797062, 34.452827, 48.886131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861698, 34.354919, 49.268539>,  <41.900478, 34.296173, 49.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861698, 34.354919, 49.268539>,  <41.797062, 34.452827, 48.886131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861698, 34.354919, 49.268539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963608, 0.248182, -0.099326,
		-0.212956, 0.937280, 0.275965,
		0.161586, -0.244770, 0.956022,
		41.910175, 34.281490, 49.555347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261711, 34.984516, 49.124466>,  <41.797062, 34.452827, 48.886131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261711, 34.984516, 49.124466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303101, 34.701550, 49.404140>,  <42.327934, 34.531769, 49.571945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303101, 34.701550, 49.404140>,  <42.261711, 34.984516, 49.124466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303101, 34.701550, 49.404140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952541, 0.272812, 0.135050,
		-0.286282, 0.652027, 0.702071,
		0.103477, -0.707414, 0.699184,
		42.334145, 34.489326, 49.613895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683346, 35.256939, 49.780811>,  <42.261711, 34.984516, 49.124466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683346, 35.256939, 49.780811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737724, 34.865189, 49.840588>,  <42.770351, 34.630138, 49.876453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737724, 34.865189, 49.840588>,  <42.683346, 35.256939, 49.780811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737724, 34.865189, 49.840588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939654, 0.175266, 0.293825,
		-0.313958, 0.100479, 0.944105,
		0.135946, -0.979380, 0.149441,
		42.778507, 34.571373, 49.885422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911346, 35.207577, 50.390633>,  <42.683346, 35.256939, 49.780811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911346, 35.207577, 50.390633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014469, 34.883545, 50.179993>,  <43.076344, 34.689125, 50.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014469, 34.883545, 50.179993>,  <42.911346, 35.207577, 50.390633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014469, 34.883545, 50.179993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906178, 0.013626, 0.422678,
		-0.335227, -0.586163, 0.737588,
		0.257808, -0.810079, -0.526599,
		43.091812, 34.640522, 50.022015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445976, 35.247509, 50.750675>,  <42.911346, 35.207577, 50.390633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445976, 35.247509, 50.750675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457745, 34.937683, 50.497952>,  <43.464806, 34.751789, 50.346317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457745, 34.937683, 50.497952>,  <43.445976, 35.247509, 50.750675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457745, 34.937683, 50.497952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990822, -0.060826, 0.120710,
		-0.131929, -0.629562, 0.765667,
		0.029422, -0.774566, -0.631809,
		43.466572, 34.705315, 50.308411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479126, 34.578514, 51.097054>,  <43.445976, 35.247509, 50.750675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479126, 34.578514, 51.097054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632839, 34.542500, 50.729527>,  <43.725067, 34.520889, 50.509010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632839, 34.542500, 50.729527>,  <43.479126, 34.578514, 51.097054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632839, 34.542500, 50.729527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916541, -0.082243, 0.391393,
		-0.110807, -0.992537, 0.050919,
		0.384285, -0.090038, -0.918814,
		43.748123, 34.515488, 50.453884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763309, 33.949669, 51.124325>,  <43.479126, 34.578514, 51.097054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763309, 33.949669, 51.124325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969265, 34.125820, 50.830128>,  <44.092838, 34.231510, 50.653610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969265, 34.125820, 50.830128>,  <43.763309, 33.949669, 51.124325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969265, 34.125820, 50.830128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854019, -0.189021, 0.484688,
		0.074421, -0.877690, -0.473416,
		0.514891, 0.440377, -0.735497,
		44.123734, 34.257935, 50.609478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366848, 33.518581, 50.951939>,  <43.763309, 33.949669, 51.124325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366848, 33.518581, 50.951939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442265, 33.882534, 50.804119>,  <44.487514, 34.100906, 50.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442265, 33.882534, 50.804119>,  <44.366848, 33.518581, 50.951939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442265, 33.882534, 50.804119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974900, -0.128030, 0.182151,
		0.118423, -0.394616, -0.911183,
		0.188538, 0.909883, -0.369549,
		44.498825, 34.155499, 50.693253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920570, 33.360703, 50.566547>,  <44.366848, 33.518581, 50.951939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920570, 33.360703, 50.566547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940762, 33.757530, 50.612576>,  <44.952877, 33.995628, 50.640194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940762, 33.757530, 50.612576>,  <44.920570, 33.360703, 50.566547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940762, 33.757530, 50.612576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969426, -0.076370, 0.233198,
		0.240138, 0.099783, -0.965597,
		0.050474, 0.992074, 0.115072,
		44.955902, 34.055153, 50.647099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411877, 33.542900, 50.168583>,  <44.920570, 33.360703, 50.566547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411877, 33.542900, 50.168583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366711, 33.853966, 50.415962>,  <45.339611, 34.040607, 50.564392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366711, 33.853966, 50.415962>,  <45.411877, 33.542900, 50.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366711, 33.853966, 50.415962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956896, -0.082509, 0.278466,
		0.267582, 0.623237, -0.734830,
		-0.112920, 0.777668, 0.618451,
		45.332836, 34.087265, 50.601498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893097, 33.933174, 50.012768>,  <45.411877, 33.542900, 50.168583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893097, 33.933174, 50.012768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813545, 34.048450, 50.387444>,  <45.765812, 34.117615, 50.612251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813545, 34.048450, 50.387444>,  <45.893097, 33.933174, 50.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813545, 34.048450, 50.387444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973437, -0.052538, 0.222847,
		0.113434, 0.956132, -0.270083,
		-0.198881, 0.288187, 0.936693,
		45.753880, 34.134907, 50.668453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488674, 34.365402, 50.164314>,  <45.893097, 33.933174, 50.012768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488674, 34.365402, 50.164314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336105, 34.272942, 50.522327>,  <46.244564, 34.217464, 50.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336105, 34.272942, 50.522327>,  <46.488674, 34.365402, 50.164314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336105, 34.272942, 50.522327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923717, -0.132587, 0.359399,
		0.035596, 0.963842, 0.264086,
		-0.381419, -0.231148, 0.895037,
		46.221680, 34.203598, 50.790840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813740, 34.825043, 50.719780>,  <46.488674, 34.365402, 50.164314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813740, 34.825043, 50.719780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673977, 34.518730, 50.935741>,  <46.590118, 34.334942, 51.065319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673977, 34.518730, 50.935741>,  <46.813740, 34.825043, 50.719780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673977, 34.518730, 50.935741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890676, -0.092573, 0.445113,
		-0.290878, 0.636406, 0.714407,
		-0.349407, -0.765779, 0.539904,
		46.569157, 34.288998, 51.097713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075813, 34.967579, 51.396545>,  <46.813740, 34.825043, 50.719780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075813, 34.967579, 51.396545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988693, 34.578758, 51.361511>,  <46.936420, 34.345467, 51.340488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988693, 34.578758, 51.361511>,  <47.075813, 34.967579, 51.396545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988693, 34.578758, 51.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705535, -0.218820, 0.674046,
		-0.674376, 0.085010, 0.733478,
		-0.217800, -0.972055, -0.087590,
		46.923355, 34.287140, 51.335236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.756325, 34.690414, 51.615494>,  <47.075813, 34.967579, 51.396545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.756325, 34.690414, 51.615494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911243, 34.910137, 51.911674>,  <48.004196, 35.041969, 52.089382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911243, 34.910137, 51.911674>,  <47.756325, 34.690414, 51.615494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.911243, 34.910137, 51.911674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074861, 0.781742, -0.619093,
		-0.918910, 0.295204, 0.261646,
		0.387298, 0.549304, 0.740450,
		48.027431, 35.074928, 52.133808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.032749, 34.779598, 52.140965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.088892, 35.174042, 52.176514>,  <24.122578, 35.410706, 52.197842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.088892, 35.174042, 52.176514>,  <24.032749, 34.779598, 52.140965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.088892, 35.174042, 52.176514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922521, -0.097655, -0.373386,
		-0.359519, 0.134393, -0.923409,
		0.140356, 0.986104, 0.088871,
		24.130999, 35.469872, 52.203175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503952, 34.909950, 51.626102>,  <24.032749, 34.779598, 52.140965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503952, 34.909950, 51.626102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.525368, 35.239910, 51.851196>,  <24.538218, 35.437885, 51.986252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.525368, 35.239910, 51.851196>,  <24.503952, 34.909950, 51.626102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525368, 35.239910, 51.851196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945966, 0.138589, -0.293157,
		-0.319815, 0.548022, -0.772910,
		0.053540, 0.824903, 0.562733,
		24.541430, 35.487381, 52.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862761, 35.295589, 51.141399>,  <24.503952, 34.909950, 51.626102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862761, 35.295589, 51.141399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.881197, 35.444702, 51.512108>,  <24.892260, 35.534168, 51.734535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.881197, 35.444702, 51.512108>,  <24.862761, 35.295589, 51.141399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881197, 35.444702, 51.512108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897758, 0.391397, -0.202084,
		-0.438070, 0.841334, -0.316627,
		0.046093, 0.372781, 0.926774,
		24.895025, 35.556538, 51.790138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242447, 35.961033, 51.114414>,  <24.862761, 35.295589, 51.141399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242447, 35.961033, 51.114414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.302511, 35.859959, 51.496746>,  <25.338549, 35.799316, 51.726143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.302511, 35.859959, 51.496746>,  <25.242447, 35.961033, 51.114414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302511, 35.859959, 51.496746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988596, 0.049491, -0.142224,
		-0.011367, 0.966282, 0.257234,
		0.150159, -0.252684, 0.955826,
		25.347559, 35.784153, 51.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706881, 36.501511, 51.494720>,  <25.242447, 35.961033, 51.114414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706881, 36.501511, 51.494720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.753332, 36.148102, 51.676228>,  <25.781204, 35.936058, 51.785130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.753332, 36.148102, 51.676228>,  <25.706881, 36.501511, 51.494720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753332, 36.148102, 51.676228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986244, 0.156682, 0.052668,
		-0.117630, 0.441405, 0.889565,
		0.116131, -0.883523, 0.453763,
		25.788172, 35.883045, 51.812355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276819, 36.638351, 51.957039>,  <25.706881, 36.501511, 51.494720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276819, 36.638351, 51.957039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.244429, 36.240253, 51.935413>,  <26.224995, 36.001392, 51.922440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.244429, 36.240253, 51.935413>,  <26.276819, 36.638351, 51.957039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244429, 36.240253, 51.935413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974085, -0.090512, 0.207282,
		-0.211190, -0.035874, 0.976786,
		-0.080975, -0.995249, -0.054060,
		26.220137, 35.941677, 51.919197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645590, 36.452393, 52.587925>,  <26.276819, 36.638351, 51.957039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645590, 36.452393, 52.587925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633699, 36.132919, 52.347519>,  <26.626566, 35.941235, 52.203274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633699, 36.132919, 52.347519>,  <26.645590, 36.452393, 52.587925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633699, 36.132919, 52.347519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931184, -0.240690, 0.273796,
		-0.363335, -0.551516, 0.750878,
		-0.029725, -0.798685, -0.601014,
		26.624783, 35.893314, 52.167213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907555, 35.907856, 53.055347>,  <26.645590, 36.452393, 52.587925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907555, 35.907856, 53.055347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.956490, 35.818626, 52.668510>,  <26.985851, 35.765087, 52.436409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.956490, 35.818626, 52.668510>,  <26.907555, 35.907856, 53.055347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956490, 35.818626, 52.668510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878925, -0.428257, 0.209969,
		-0.461004, -0.875690, 0.143675,
		0.122338, -0.223076, -0.967094,
		26.993191, 35.751705, 52.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298031, 35.280785, 53.064892>,  <26.907555, 35.907856, 53.055347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298031, 35.280785, 53.064892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385426, 35.407673, 52.695755>,  <27.437862, 35.483807, 52.474274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385426, 35.407673, 52.695755>,  <27.298031, 35.280785, 53.064892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385426, 35.407673, 52.695755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971475, -0.160058, 0.174982,
		-0.092199, -0.934746, -0.343145,
		0.218487, 0.317224, -0.922839,
		27.450972, 35.502838, 52.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897554, 34.876076, 52.852425>,  <27.298031, 35.280785, 53.064892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897554, 34.876076, 52.852425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.896942, 35.176388, 52.588203>,  <27.896576, 35.356575, 52.429672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.896942, 35.176388, 52.588203>,  <27.897554, 34.876076, 52.852425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896942, 35.176388, 52.588203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997805, 0.044881, 0.048701,
		0.066209, -0.659024, -0.749202,
		-0.001530, 0.750781, -0.660549,
		27.896482, 35.401623, 52.390038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428030, 34.686516, 52.375195>,  <27.897554, 34.876076, 52.852425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428030, 34.686516, 52.375195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.395426, 35.076672, 52.293243>,  <28.375864, 35.310764, 52.244072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.395426, 35.076672, 52.293243>,  <28.428030, 34.686516, 52.375195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395426, 35.076672, 52.293243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981571, 0.042912, -0.186218,
		-0.172843, -0.216277, -0.960911,
		-0.081509, 0.975389, -0.204874,
		28.370974, 35.369289, 52.231781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625389, 34.761166, 51.671928>,  <28.428030, 34.686516, 52.375195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625389, 34.761166, 51.671928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666693, 35.124771, 51.833439>,  <28.691475, 35.342934, 51.930344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666693, 35.124771, 51.833439>,  <28.625389, 34.761166, 51.671928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666693, 35.124771, 51.833439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938172, 0.045840, -0.343122,
		-0.330411, 0.414238, -0.848078,
		0.103258, 0.909014, 0.403772,
		28.697670, 35.397476, 51.954571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909840, 35.222939, 51.194939>,  <28.625389, 34.761166, 51.671928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909840, 35.222939, 51.194939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995977, 35.385441, 51.550148>,  <29.047661, 35.482944, 51.763271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995977, 35.385441, 51.550148>,  <28.909840, 35.222939, 51.194939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995977, 35.385441, 51.550148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961472, 0.070914, -0.265599,
		-0.170875, 0.911002, -0.375337,
		0.215344, 0.406260, 0.888020,
		29.060581, 35.507320, 51.816555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345036, 35.682861, 50.968880>,  <28.909840, 35.222939, 51.194939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345036, 35.682861, 50.968880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.396044, 35.619423, 51.360508>,  <29.426649, 35.581360, 51.595486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.396044, 35.619423, 51.360508>,  <29.345036, 35.682861, 50.968880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396044, 35.619423, 51.360508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987628, 0.111133, -0.110633,
		-0.091261, 0.981069, 0.170809,
		0.127521, -0.158600, 0.979073,
		29.434299, 35.571842, 51.654228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766088, 36.133396, 51.249184>,  <29.345036, 35.682861, 50.968880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766088, 36.133396, 51.249184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.798964, 35.832123, 51.510242>,  <29.818689, 35.651360, 51.666878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.798964, 35.832123, 51.510242>,  <29.766088, 36.133396, 51.249184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798964, 35.832123, 51.510242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995557, 0.031855, -0.088607,
		0.045947, 0.657034, 0.752459,
		0.082187, -0.753187, 0.652652,
		29.823620, 35.606167, 51.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303717, 36.258450, 51.635326>,  <29.766088, 36.133396, 51.249184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303717, 36.258450, 51.635326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263903, 35.862518, 51.675995>,  <30.240015, 35.624958, 51.700394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263903, 35.862518, 51.675995>,  <30.303717, 36.258450, 51.635326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263903, 35.862518, 51.675995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987842, -0.110559, -0.109292,
		0.119421, 0.089555, 0.988797,
		-0.099533, -0.989827, 0.101669,
		30.234043, 35.565571, 51.706497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984562, 36.017529, 51.903580>,  <30.303717, 36.258450, 51.635326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984562, 36.017529, 51.903580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817390, 35.671230, 51.793434>,  <30.717087, 35.463451, 51.727348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817390, 35.671230, 51.793434>,  <30.984562, 36.017529, 51.903580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817390, 35.671230, 51.793434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854897, -0.272224, -0.441640,
		0.307385, -0.419983, 0.853890,
		-0.417931, -0.865742, -0.275365,
		30.692011, 35.411507, 51.710823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439417, 35.529999, 52.115616>,  <30.984562, 36.017529, 51.903580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439417, 35.529999, 52.115616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.230177, 35.312378, 51.853203>,  <31.104633, 35.181805, 51.695755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.230177, 35.312378, 51.853203>,  <31.439417, 35.529999, 52.115616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230177, 35.312378, 51.853203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852270, -0.335564, -0.401289,
		-0.001820, -0.769030, 0.639210,
		-0.523099, -0.544049, -0.656032,
		31.073248, 35.149162, 51.656395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738100, 34.946983, 52.040466>,  <31.439417, 35.529999, 52.115616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738100, 34.946983, 52.040466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528790, 34.938957, 51.699696>,  <31.403202, 34.934139, 51.495232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528790, 34.938957, 51.699696>,  <31.738100, 34.946983, 52.040466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528790, 34.938957, 51.699696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749728, -0.486063, -0.449055,
		-0.405077, -0.873693, 0.269394,
		-0.523279, -0.020070, -0.851925,
		31.371805, 34.932938, 51.444118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941538, 34.334698, 51.758682>,  <31.738100, 34.946983, 52.040466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941538, 34.334698, 51.758682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.780115, 34.544178, 51.458580>,  <31.683262, 34.669865, 51.278519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.780115, 34.544178, 51.458580>,  <31.941538, 34.334698, 51.758682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780115, 34.544178, 51.458580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692183, -0.361503, -0.624659,
		-0.598353, -0.771397, -0.216610,
		-0.403555, 0.523700, -0.750254,
		31.659048, 34.701286, 51.233505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875219, 33.926273, 51.216629>,  <31.941538, 34.334698, 51.758682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875219, 33.926273, 51.216629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.857441, 34.287643, 51.046055>,  <31.846773, 34.504467, 50.943710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.857441, 34.287643, 51.046055>,  <31.875219, 33.926273, 51.216629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857441, 34.287643, 51.046055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695023, -0.278660, -0.662791,
		-0.717612, -0.325844, -0.615514,
		-0.044448, 0.903424, -0.426439,
		31.844107, 34.558670, 50.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.125975, 34.471069, 35.328625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.196327, 34.822289, 35.150589>,  <24.238539, 35.033020, 35.043770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.196327, 34.822289, 35.150589>,  <24.125975, 34.471069, 35.328625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196327, 34.822289, 35.150589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964894, -0.064183, 0.254676,
		0.195050, -0.474255, -0.858509,
		0.175883, 0.878045, -0.445087,
		24.249092, 35.085701, 35.017063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804604, 34.405071, 35.183422>,  <24.125975, 34.471069, 35.328625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804604, 34.405071, 35.183422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.717871, 34.795551, 35.181953>,  <24.665831, 35.029839, 35.181072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.717871, 34.795551, 35.181953>,  <24.804604, 34.405071, 35.183422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717871, 34.795551, 35.181953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933181, 0.208378, 0.292834,
		0.286630, 0.060069, -0.956156,
		-0.216832, 0.976202, -0.003672,
		24.652821, 35.088413, 35.180851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357517, 34.837387, 34.878757>,  <24.804604, 34.405071, 35.183422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357517, 34.837387, 34.878757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.168999, 35.078217, 35.136559>,  <25.055887, 35.222713, 35.291237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.168999, 35.078217, 35.136559>,  <25.357517, 34.837387, 34.878757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168999, 35.078217, 35.136559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859716, 0.476746, 0.183309,
		-0.196897, 0.640481, -0.742305,
		-0.471297, 0.602078, 0.644501,
		25.027609, 35.258839, 35.329910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763489, 35.523163, 34.823997>,  <25.357517, 34.837387, 34.878757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763489, 35.523163, 34.823997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.597086, 35.490852, 35.186306>,  <25.497244, 35.471466, 35.403690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.597086, 35.490852, 35.186306>,  <25.763489, 35.523163, 34.823997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597086, 35.490852, 35.186306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888796, 0.174516, 0.423775,
		-0.192301, 0.981336, -0.000807,
		-0.416007, -0.080775, 0.905767,
		25.472284, 35.466621, 35.458035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203541, 35.838024, 35.276642>,  <25.763489, 35.523163, 34.823997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203541, 35.838024, 35.276642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.972195, 35.657425, 35.548420>,  <25.833387, 35.549065, 35.711487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.972195, 35.657425, 35.548420>,  <26.203541, 35.838024, 35.276642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972195, 35.657425, 35.548420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779477, -0.060160, 0.623535,
		-0.240648, 0.890243, 0.386724,
		-0.578363, -0.451495, 0.679447,
		25.798685, 35.521976, 35.752254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369612, 36.191521, 35.941647>,  <26.203541, 35.838024, 35.276642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369612, 36.191521, 35.941647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.169460, 35.860401, 36.043137>,  <26.049370, 35.661732, 36.104031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.169460, 35.860401, 36.043137>,  <26.369612, 36.191521, 35.941647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169460, 35.860401, 36.043137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550001, -0.077586, 0.831553,
		-0.668670, 0.555640, 0.494110,
		-0.500380, -0.827795, 0.253723,
		26.019346, 35.612064, 36.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150534, 36.304550, 36.640686>,  <26.369612, 36.191521, 35.941647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150534, 36.304550, 36.640686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.195639, 35.914135, 36.566254>,  <26.222702, 35.679886, 36.521595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.195639, 35.914135, 36.566254>,  <26.150534, 36.304550, 36.640686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195639, 35.914135, 36.566254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564475, -0.091195, 0.820397,
		-0.817712, -0.197549, 0.540668,
		0.112762, -0.976042, -0.186083,
		26.229467, 35.621323, 36.510429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082523, 35.871861, 37.251789>,  <26.150534, 36.304550, 36.640686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082523, 35.871861, 37.251789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285921, 35.659916, 36.980297>,  <26.407959, 35.532749, 36.817402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285921, 35.659916, 36.980297>,  <26.082523, 35.871861, 37.251789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285921, 35.659916, 36.980297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486376, -0.473711, 0.734191,
		-0.710545, -0.703450, 0.016835,
		0.508492, -0.529863, -0.678735,
		26.438469, 35.500957, 36.776676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000628, 35.148556, 37.256855>,  <26.082523, 35.871861, 37.251789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000628, 35.148556, 37.256855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.357561, 35.269142, 37.122478>,  <26.571722, 35.341496, 37.041851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.357561, 35.269142, 37.122478>,  <26.000628, 35.148556, 37.256855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357561, 35.269142, 37.122478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442683, -0.439166, 0.781771,
		0.088143, -0.846317, -0.525337,
		0.892335, 0.301465, -0.335941,
		26.625261, 35.359581, 37.021698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418093, 34.734566, 37.600075>,  <26.000628, 35.148556, 37.256855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418093, 34.734566, 37.600075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664347, 35.029728, 37.489449>,  <26.812099, 35.206825, 37.423073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664347, 35.029728, 37.489449>,  <26.418093, 34.734566, 37.600075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664347, 35.029728, 37.489449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551151, -0.152345, 0.820380,
		0.563230, -0.657484, -0.500486,
		0.615633, 0.737907, -0.276567,
		26.849037, 35.251099, 37.406479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096651, 34.483669, 37.706463>,  <26.418093, 34.734566, 37.600075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096651, 34.483669, 37.706463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089609, 34.883606, 37.705147>,  <27.085384, 35.123566, 37.704357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089609, 34.883606, 37.705147>,  <27.096651, 34.483669, 37.706463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089609, 34.883606, 37.705147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549481, 0.012425, 0.835414,
		0.835321, 0.012900, -0.549612,
		-0.017606, 0.999840, -0.003290,
		27.084328, 35.183559, 37.704159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779018, 34.772213, 37.707256>,  <27.096651, 34.483669, 37.706463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779018, 34.772213, 37.707256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484303, 34.965706, 37.896206>,  <27.307472, 35.081802, 38.009575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484303, 34.965706, 37.896206>,  <27.779018, 34.772213, 37.707256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484303, 34.965706, 37.896206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626543, 0.225886, 0.745935,
		0.254130, 0.845564, -0.469510,
		-0.736792, 0.483733, 0.472378,
		27.263266, 35.110825, 38.037918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969767, 35.511269, 37.672318>,  <27.779018, 34.772213, 37.707256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969767, 35.511269, 37.672318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.792366, 35.352264, 37.993637>,  <27.685925, 35.256863, 38.186428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.792366, 35.352264, 37.993637>,  <27.969767, 35.511269, 37.672318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792366, 35.352264, 37.993637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793180, 0.243260, 0.558292,
		-0.417337, 0.884766, 0.207410,
		-0.443503, -0.397509, 0.803300,
		27.659315, 35.233013, 38.234627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981577, 36.023663, 38.240906>,  <27.969767, 35.511269, 37.672318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981577, 36.023663, 38.240906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973927, 35.654057, 38.393654>,  <27.969336, 35.432293, 38.485302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973927, 35.654057, 38.393654>,  <27.981577, 36.023663, 38.240906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973927, 35.654057, 38.393654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761399, 0.234079, 0.604549,
		-0.648002, 0.302316, 0.699070,
		-0.019127, -0.924019, 0.381867,
		27.968189, 35.376850, 38.508213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734688, 35.885498, 39.036243>,  <27.981577, 36.023663, 38.240906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734688, 35.885498, 39.036243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002666, 35.620628, 38.901966>,  <28.163454, 35.461704, 38.821400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002666, 35.620628, 38.901966>,  <27.734688, 35.885498, 39.036243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002666, 35.620628, 38.901966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585400, 0.193078, 0.787418,
		-0.456595, -0.724045, 0.516991,
		0.669946, -0.662178, -0.335698,
		28.203650, 35.421974, 38.801258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174114, 35.986134, 39.555111>,  <27.734688, 35.885498, 39.036243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174114, 35.986134, 39.555111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328953, 35.678680, 39.351398>,  <28.421856, 35.494209, 39.229172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328953, 35.678680, 39.351398>,  <28.174114, 35.986134, 39.555111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328953, 35.678680, 39.351398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712288, -0.101450, 0.694516,
		-0.585492, -0.631600, 0.508214,
		0.387098, -0.768628, -0.509280,
		28.445082, 35.448093, 39.198616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579746, 35.599022, 39.982132>,  <28.174114, 35.986134, 39.555111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579746, 35.599022, 39.982132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746649, 35.433399, 39.658539>,  <28.846790, 35.334026, 39.464382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746649, 35.433399, 39.658539>,  <28.579746, 35.599022, 39.982132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746649, 35.433399, 39.658539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903262, 0.090925, 0.419345,
		-0.100077, -0.905697, 0.411943,
		0.417255, -0.414059, -0.808983,
		28.871826, 35.309181, 39.415844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015173, 34.964363, 40.200691>,  <28.579746, 35.599022, 39.982132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015173, 34.964363, 40.200691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160116, 35.134926, 39.869179>,  <29.247082, 35.237263, 39.670273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160116, 35.134926, 39.869179>,  <29.015173, 34.964363, 40.200691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160116, 35.134926, 39.869179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903352, 0.058239, 0.424928,
		0.229458, -0.902657, -0.364088,
		0.362360, 0.426403, -0.828780,
		29.268824, 35.262848, 39.620544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025072, 35.551182, 40.849430>,  <29.015173, 34.964363, 40.200691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025072, 35.551182, 40.849430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.172798, 35.226357, 41.030167>,  <29.261435, 35.031464, 41.138611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.172798, 35.226357, 41.030167>,  <29.025072, 35.551182, 40.849430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172798, 35.226357, 41.030167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464965, 0.582453, 0.666750,
		-0.804621, -0.036149, 0.592688,
		0.369315, -0.812060, 0.451846,
		29.283592, 34.982738, 41.165722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745661, 35.608940, 41.501144>,  <29.025072, 35.551182, 40.849430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745661, 35.608940, 41.501144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088095, 35.402290, 41.507015>,  <29.293556, 35.278301, 41.510540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088095, 35.402290, 41.507015>,  <28.745661, 35.608940, 41.501144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088095, 35.402290, 41.507015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217157, 0.385332, 0.896862,
		-0.468999, -0.764603, 0.442067,
		0.856086, -0.516625, 0.014682,
		29.344921, 35.247303, 41.511421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817999, 35.162651, 42.061550>,  <28.745661, 35.608940, 41.501144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817999, 35.162651, 42.061550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.158737, 35.325016, 41.929127>,  <29.363180, 35.422436, 41.849670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.158737, 35.325016, 41.929127>,  <28.817999, 35.162651, 42.061550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158737, 35.325016, 41.929127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076803, 0.528417, 0.845504,
		0.518124, -0.745668, 0.418958,
		0.851850, 0.405899, -0.331055,
		29.414289, 35.446789, 41.829807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269089, 35.192554, 42.581451>,  <28.817999, 35.162651, 42.061550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269089, 35.192554, 42.581451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358175, 35.495895, 42.336403>,  <29.411627, 35.677898, 42.189373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358175, 35.495895, 42.336403>,  <29.269089, 35.192554, 42.581451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358175, 35.495895, 42.336403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075636, 0.613068, 0.786401,
		0.971944, -0.221481, 0.079183,
		0.222718, 0.758349, -0.612620,
		29.424992, 35.723400, 42.152618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330250, 35.651699, 43.176022>,  <29.269089, 35.192554, 42.581451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330250, 35.651699, 43.176022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.652170, 35.640762, 42.938854>,  <29.845322, 35.634201, 42.796555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.652170, 35.640762, 42.938854>,  <29.330250, 35.651699, 43.176022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652170, 35.640762, 42.938854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353162, 0.824931, 0.441322,
		0.477048, -0.564571, 0.673561,
		0.804800, -0.027344, -0.592916,
		29.893610, 35.632561, 42.760979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903347, 35.942360, 43.516071>,  <29.330250, 35.651699, 43.176022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903347, 35.942360, 43.516071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012146, 35.959709, 43.131542>,  <30.077425, 35.970119, 42.900826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012146, 35.959709, 43.131542>,  <29.903347, 35.942360, 43.516071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012146, 35.959709, 43.131542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578180, 0.791197, 0.199286,
		0.769236, -0.610022, 0.190130,
		0.271999, 0.043368, -0.961320,
		30.093746, 35.972721, 42.843147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618443, 35.925838, 43.402058>,  <29.903347, 35.942360, 43.516071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618443, 35.925838, 43.402058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.457762, 36.113216, 43.087299>,  <30.361353, 36.225643, 42.898445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.457762, 36.113216, 43.087299>,  <30.618443, 35.925838, 43.402058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457762, 36.113216, 43.087299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729932, 0.682685, 0.033785,
		0.553025, -0.560806, -0.616166,
		-0.401700, 0.468443, -0.786891,
		30.337252, 36.253750, 42.851231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102049, 35.951035, 42.888729>,  <30.618443, 35.925838, 43.402058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102049, 35.951035, 42.888729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848413, 36.257591, 42.847584>,  <30.696232, 36.441525, 42.822899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848413, 36.257591, 42.847584>,  <31.102049, 35.951035, 42.888729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848413, 36.257591, 42.847584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749111, 0.575845, -0.327468,
		-0.191736, -0.284696, -0.939247,
		-0.634090, 0.766388, -0.102859,
		30.658186, 36.487507, 42.816727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281130, 36.338322, 42.282619>,  <31.102049, 35.951035, 42.888729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281130, 36.338322, 42.282619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097479, 36.595306, 42.528042>,  <30.987289, 36.749496, 42.675297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097479, 36.595306, 42.528042>,  <31.281130, 36.338322, 42.282619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097479, 36.595306, 42.528042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609802, 0.730158, -0.308238,
		-0.646023, 0.232628, -0.727007,
		-0.459125, 0.642459, 0.613556,
		30.959742, 36.788044, 42.712109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666227, 36.934017, 42.675499>,  <31.281130, 36.338322, 42.282619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666227, 36.934017, 42.675499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921125, 36.866272, 42.976227>,  <32.074062, 36.825626, 43.156666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921125, 36.866272, 42.976227>,  <31.666227, 36.934017, 42.675499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921125, 36.866272, 42.976227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603187, 0.497594, 0.623350,
		-0.479673, -0.850716, 0.214934,
		0.637244, -0.169359, 0.751823,
		32.112297, 36.815464, 43.201775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334612, 36.934509, 43.420292>,  <31.666227, 36.934017, 42.675499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334612, 36.934509, 43.420292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721874, 36.997402, 43.498222>,  <31.954231, 37.035137, 43.544979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721874, 36.997402, 43.498222>,  <31.334612, 36.934509, 43.420292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721874, 36.997402, 43.498222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245891, 0.743497, 0.621892,
		-0.047074, -0.649993, 0.758481,
		0.968154, 0.157228, 0.194827,
		32.012321, 37.044571, 43.556671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324875, 37.175507, 44.167480>,  <31.334612, 36.934509, 43.420292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324875, 37.175507, 44.167480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625454, 37.297359, 43.933376>,  <31.805801, 37.370472, 43.792915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625454, 37.297359, 43.933376>,  <31.324875, 37.175507, 44.167480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625454, 37.297359, 43.933376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183971, 0.948594, 0.257535,
		0.633626, -0.085853, 0.768861,
		0.751447, 0.304629, -0.585259,
		31.850887, 37.388748, 43.757797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848349, 37.529408, 44.533329>,  <31.324875, 37.175507, 44.167480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848349, 37.529408, 44.533329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826242, 37.687820, 44.166702>,  <31.812979, 37.782867, 43.946724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826242, 37.687820, 44.166702>,  <31.848349, 37.529408, 44.533329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826242, 37.687820, 44.166702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069804, 0.914195, 0.399217,
		0.996029, 0.086044, -0.022878,
		-0.055265, 0.396035, -0.916571,
		31.809664, 37.806629, 43.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375202, 37.090824, 45.021717>,  <31.848349, 37.529408, 44.533329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375202, 37.090824, 45.021717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460281, 37.379200, 45.285538>,  <32.511330, 37.552223, 45.443829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460281, 37.379200, 45.285538>,  <32.375202, 37.090824, 45.021717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460281, 37.379200, 45.285538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568207, -0.457874, 0.683734,
		0.794920, -0.520193, 0.312251,
		0.212702, 0.720937, 0.659552,
		32.524094, 37.595482, 45.483402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653744, 36.780857, 45.639774>,  <32.375202, 37.090824, 45.021717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653744, 36.780857, 45.639774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498505, 37.139835, 45.723656>,  <32.405361, 37.355221, 45.773983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498505, 37.139835, 45.723656>,  <32.653744, 36.780857, 45.639774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498505, 37.139835, 45.723656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519029, -0.400854, 0.754933,
		0.761569, 0.184150, 0.621371,
		-0.388100, 0.897443, 0.209699,
		32.382076, 37.409069, 45.786564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061855, 37.139679, 46.331318>,  <32.653744, 36.780857, 45.639774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061855, 37.139679, 46.331318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673054, 37.202930, 46.261814>,  <32.439774, 37.240883, 46.220112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673054, 37.202930, 46.261814>,  <33.061855, 37.139679, 46.331318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673054, 37.202930, 46.261814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222410, -0.380963, 0.897441,
		0.075716, 0.910968, 0.405469,
		-0.972009, 0.158131, -0.173764,
		32.381451, 37.250370, 46.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780720, 37.580414, 46.881634>,  <33.061855, 37.139679, 46.331318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780720, 37.580414, 46.881634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493587, 37.355984, 46.716747>,  <32.321308, 37.221325, 46.617813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493587, 37.355984, 46.716747>,  <32.780720, 37.580414, 46.881634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493587, 37.355984, 46.716747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233048, -0.364288, 0.901656,
		-0.656059, 0.743300, 0.130739,
		-0.717827, -0.561071, -0.412219,
		32.278240, 37.187664, 46.593082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149097, 37.668499, 47.187820>,  <32.780720, 37.580414, 46.881634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149097, 37.668499, 47.187820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168617, 37.293423, 47.050209>,  <32.180328, 37.068378, 46.967644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168617, 37.293423, 47.050209>,  <32.149097, 37.668499, 47.187820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168617, 37.293423, 47.050209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276366, -0.343667, 0.897505,
		-0.959813, 0.051277, -0.275917,
		0.048802, -0.937691, -0.344027,
		32.183258, 37.012115, 46.947002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535896, 37.355167, 47.460766>,  <32.149097, 37.668499, 47.187820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535896, 37.355167, 47.460766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807301, 37.075882, 47.369442>,  <31.970144, 36.908310, 47.314648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807301, 37.075882, 47.369442>,  <31.535896, 37.355167, 47.460766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807301, 37.075882, 47.369442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086465, -0.384545, 0.919048,
		-0.729482, -0.603846, -0.321289,
		0.678513, -0.698209, -0.228307,
		32.010853, 36.866421, 47.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419422, 36.788021, 47.917889>,  <31.535896, 37.355167, 47.460766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419422, 36.788021, 47.917889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810648, 36.755844, 47.841030>,  <32.045383, 36.736538, 47.794914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810648, 36.755844, 47.841030>,  <31.419422, 36.788021, 47.917889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810648, 36.755844, 47.841030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182714, -0.111687, 0.976802,
		-0.100012, -0.990484, -0.094544,
		0.978066, -0.080417, -0.192146,
		32.104069, 36.731712, 47.783386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695429, 36.153061, 48.230080>,  <31.419422, 36.788021, 47.917889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695429, 36.153061, 48.230080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998819, 36.409184, 48.181541>,  <32.180855, 36.562859, 48.152416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998819, 36.409184, 48.181541>,  <31.695429, 36.153061, 48.230080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998819, 36.409184, 48.181541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151895, 0.007384, 0.988369,
		0.633754, -0.768085, -0.091658,
		0.758475, 0.640305, -0.121348,
		32.226360, 36.601276, 48.145138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486324, 35.958988, 48.432076>,  <31.695429, 36.153061, 48.230080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486324, 35.958988, 48.432076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413750, 36.347519, 48.493526>,  <32.370205, 36.580639, 48.530396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413750, 36.347519, 48.493526>,  <32.486324, 35.958988, 48.432076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413750, 36.347519, 48.493526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246379, -0.106338, 0.963322,
		0.952040, 0.212628, -0.220022,
		-0.181433, 0.971330, 0.153625,
		32.359322, 36.638916, 48.539616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598507, 36.367023, 48.964489>,  <32.486324, 35.958988, 48.432076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598507, 36.367023, 48.964489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731503, 35.989872, 48.956215>,  <32.811298, 35.763580, 48.951252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731503, 35.989872, 48.956215>,  <32.598507, 36.367023, 48.964489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731503, 35.989872, 48.956215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020858, 0.014576, -0.999676,
		0.942876, 0.332814, -0.014821,
		0.332490, -0.942880, -0.020685,
		32.831249, 35.707008, 48.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024525, 35.881359, 49.467171>,  <32.598507, 36.367023, 48.964489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024525, 35.881359, 49.467171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018112, 35.578983, 49.728951>,  <33.014267, 35.397560, 49.886017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018112, 35.578983, 49.728951>,  <33.024525, 35.881359, 49.467171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018112, 35.578983, 49.728951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927820, -0.255210, -0.272063,
		0.372684, 0.602848, 0.705464,
		-0.016029, -0.755937, 0.654448,
		33.013302, 35.352203, 49.925285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624859, 35.910248, 49.857357>,  <33.024525, 35.881359, 49.467171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624859, 35.910248, 49.857357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497223, 35.532303, 49.886787>,  <33.420643, 35.305534, 49.904446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497223, 35.532303, 49.886787>,  <33.624859, 35.910248, 49.857357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497223, 35.532303, 49.886787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921452, -0.327462, -0.209034,
		0.221603, 0.001098, 0.975136,
		-0.319091, -0.944864, 0.073579,
		33.401497, 35.248844, 49.908859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198345, 35.540348, 50.077854>,  <33.624859, 35.910248, 49.857357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198345, 35.540348, 50.077854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962090, 35.240280, 49.958927>,  <33.820335, 35.060242, 49.887569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962090, 35.240280, 49.958927>,  <34.198345, 35.540348, 50.077854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962090, 35.240280, 49.958927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803454, -0.512505, -0.302984,
		0.074912, -0.417835, 0.905429,
		-0.590635, -0.750168, -0.297319,
		33.784901, 35.015228, 49.869732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583630, 34.949493, 50.176739>,  <34.198345, 35.540348, 50.077854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583630, 34.949493, 50.176739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325077, 34.826641, 49.897350>,  <34.169945, 34.752930, 49.729717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325077, 34.826641, 49.897350>,  <34.583630, 34.949493, 50.176739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325077, 34.826641, 49.897350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741205, -0.470045, -0.479241,
		-0.181125, -0.827484, 0.531474,
		-0.646381, -0.307128, -0.698473,
		34.131165, 34.734501, 49.687809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720974, 34.217648, 50.145992>,  <34.583630, 34.949493, 50.176739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720974, 34.217648, 50.145992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545937, 34.345406, 49.809776>,  <34.440914, 34.422058, 49.608047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545937, 34.345406, 49.809776>,  <34.720974, 34.217648, 50.145992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545937, 34.345406, 49.809776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760114, -0.367980, -0.535554,
		-0.480351, -0.873258, -0.081748,
		-0.437595, 0.319392, -0.840535,
		34.414658, 34.441223, 49.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958992, 33.742794, 49.623432>,  <34.720974, 34.217648, 50.145992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958992, 33.742794, 49.623432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777081, 34.017769, 49.396946>,  <34.667934, 34.182755, 49.261055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777081, 34.017769, 49.396946>,  <34.958992, 33.742794, 49.623432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777081, 34.017769, 49.396946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670376, -0.154317, -0.725797,
		-0.586317, -0.709659, -0.390661,
		-0.454783, 0.687437, -0.566218,
		34.640644, 34.223999, 49.227081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910854, 33.379292, 48.974651>,  <34.958992, 33.742794, 49.623432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910854, 33.379292, 48.974651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894474, 33.775993, 48.926083>,  <34.884644, 34.014015, 48.896942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894474, 33.775993, 48.926083>,  <34.910854, 33.379292, 48.974651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894474, 33.775993, 48.926083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710455, -0.056545, -0.701467,
		-0.702550, -0.114993, -0.702282,
		-0.040953, 0.991756, -0.121423,
		34.882187, 34.073521, 48.889656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006012, 33.483891, 48.317333>,  <34.910854, 33.379292, 48.974651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006012, 33.483891, 48.317333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123302, 33.837975, 48.461788>,  <35.193676, 34.050426, 48.548462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123302, 33.837975, 48.461788>,  <35.006012, 33.483891, 48.317333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123302, 33.837975, 48.461788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766830, 0.007820, -0.641803,
		-0.570956, 0.465122, -0.676514,
		0.293226, 0.885212, 0.361134,
		35.211269, 34.103539, 48.570129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257168, 33.875107, 47.746895>,  <35.006012, 33.483891, 48.317333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257168, 33.875107, 47.746895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406090, 34.050091, 48.074310>,  <35.495445, 34.155083, 48.270760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406090, 34.050091, 48.074310>,  <35.257168, 33.875107, 47.746895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406090, 34.050091, 48.074310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901961, 0.037332, -0.430201,
		-0.218755, 0.898461, -0.380676,
		0.372308, 0.437463, 0.818543,
		35.517780, 34.181332, 48.319874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730145, 34.457169, 47.554485>,  <35.257168, 33.875107, 47.746895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730145, 34.457169, 47.554485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844723, 34.334770, 47.917652>,  <35.913471, 34.261333, 48.135551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844723, 34.334770, 47.917652>,  <35.730145, 34.457169, 47.554485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844723, 34.334770, 47.917652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944937, -0.066296, -0.320468,
		0.158253, 0.949722, 0.270154,
		0.286445, -0.305994, 0.907919,
		35.930656, 34.242973, 48.190029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255787, 34.883762, 47.706726>,  <35.730145, 34.457169, 47.554485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255787, 34.883762, 47.706726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310749, 34.577389, 47.957951>,  <36.343727, 34.393566, 48.108685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310749, 34.577389, 47.957951>,  <36.255787, 34.883762, 47.706726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310749, 34.577389, 47.957951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890168, -0.182608, -0.417438,
		0.434420, 0.616440, 0.656720,
		0.137403, -0.765935, 0.628064,
		36.351971, 34.347607, 48.146370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918434, 34.947956, 47.953278>,  <36.255787, 34.883762, 47.706726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918434, 34.947956, 47.953278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859081, 34.556473, 48.010006>,  <36.823471, 34.321583, 48.044044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859081, 34.556473, 48.010006>,  <36.918434, 34.947956, 47.953278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859081, 34.556473, 48.010006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920558, -0.189091, -0.341785,
		0.361325, 0.079841, 0.929016,
		-0.148380, -0.978708, 0.141821,
		36.814568, 34.262859, 48.052551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410412, 34.650311, 48.415840>,  <36.918434, 34.947956, 47.953278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410412, 34.650311, 48.415840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257221, 34.338593, 48.217434>,  <37.165306, 34.151562, 48.098389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257221, 34.338593, 48.217434>,  <37.410412, 34.650311, 48.415840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257221, 34.338593, 48.217434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917289, -0.384251, -0.104555,
		-0.109116, -0.495033, 0.861995,
		-0.382981, -0.779290, -0.496016,
		37.142326, 34.104805, 48.068630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986805, 34.311211, 48.244411>,  <37.410412, 34.650311, 48.415840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986805, 34.311211, 48.244411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729656, 34.045040, 48.092663>,  <37.575367, 33.885338, 48.001614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729656, 34.045040, 48.092663>,  <37.986805, 34.311211, 48.244411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729656, 34.045040, 48.092663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765629, -0.573151, -0.292080,
		-0.023079, -0.478228, 0.877933,
		-0.642868, -0.665429, -0.379373,
		37.536797, 33.845413, 47.978851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272373, 33.630688, 48.384247>,  <37.986805, 34.311211, 48.244411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272373, 33.630688, 48.384247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031967, 33.594795, 48.066574>,  <37.887722, 33.573261, 47.875969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031967, 33.594795, 48.066574>,  <38.272373, 33.630688, 48.384247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031967, 33.594795, 48.066574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749449, -0.408502, -0.521011,
		-0.277676, -0.908336, 0.312765,
		-0.601018, -0.089729, -0.794182,
		37.851662, 33.567875, 47.828320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502117, 32.907066, 48.792233>,  <38.272373, 33.630688, 48.384247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502117, 32.907066, 48.792233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723576, 32.620037, 48.961262>,  <38.856449, 32.447819, 49.062679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723576, 32.620037, 48.961262>,  <38.502117, 32.907066, 48.792233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723576, 32.620037, 48.961262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357403, 0.253584, 0.898865,
		-0.752157, -0.648683, -0.116066,
		0.553645, -0.717569, 0.422576,
		38.889668, 32.404766, 49.088036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094875, 32.556744, 49.312393>,  <38.502117, 32.907066, 48.792233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094875, 32.556744, 49.312393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478443, 32.495884, 49.408165>,  <38.708584, 32.459366, 49.465630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478443, 32.495884, 49.408165>,  <38.094875, 32.556744, 49.312393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478443, 32.495884, 49.408165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152801, 0.434092, 0.887815,
		-0.239018, -0.887927, 0.393009,
		0.958917, -0.152151, 0.239432,
		38.766117, 32.450237, 49.479996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175034, 32.009850, 49.726650>,  <38.094875, 32.556744, 49.312393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175034, 32.009850, 49.726650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423653, 32.316639, 49.790432>,  <38.572823, 32.500713, 49.828701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423653, 32.316639, 49.790432>,  <38.175034, 32.009850, 49.726650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423653, 32.316639, 49.790432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475134, 0.207252, 0.855158,
		0.622839, -0.607283, 0.493233,
		0.621547, 0.766977, 0.159456,
		38.610115, 32.546734, 49.838268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075695, 32.628986, 50.301872>,  <38.175034, 32.009850, 49.726650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075695, 32.628986, 50.301872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189056, 33.006535, 50.369751>,  <38.257072, 33.233063, 50.410477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189056, 33.006535, 50.369751>,  <38.075695, 32.628986, 50.301872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189056, 33.006535, 50.369751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626281, 0.048156, 0.778108,
		0.726259, -0.326797, 0.604774,
		0.283407, 0.943867, 0.169693,
		38.274078, 33.289696, 50.420658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621441, 32.640194, 50.880932>,  <38.075695, 32.628986, 50.301872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621441, 32.640194, 50.880932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360600, 32.930450, 50.793118>,  <38.204094, 33.104607, 50.740429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360600, 32.930450, 50.793118>,  <38.621441, 32.640194, 50.880932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360600, 32.930450, 50.793118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558727, -0.264275, 0.786119,
		0.512425, 0.635294, 0.577773,
		-0.652108, 0.725644, -0.219535,
		38.164967, 33.148144, 50.727257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388447, 32.814987, 51.543053>,  <38.621441, 32.640194, 50.880932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388447, 32.814987, 51.543053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109974, 32.976181, 51.305420>,  <37.942890, 33.072895, 51.162842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109974, 32.976181, 51.305420>,  <38.388447, 32.814987, 51.543053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109974, 32.976181, 51.305420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567740, 0.197374, 0.799197,
		0.439319, 0.893671, 0.091381,
		-0.696183, 0.402982, -0.594083,
		37.901119, 33.097076, 51.127193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156227, 33.307693, 52.009434>,  <38.388447, 32.814987, 51.543053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156227, 33.307693, 52.009434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883747, 33.244171, 51.723568>,  <37.720261, 33.206059, 51.552048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883747, 33.244171, 51.723568>,  <38.156227, 33.307693, 52.009434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883747, 33.244171, 51.723568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732095, 0.144247, 0.665755,
		-0.002635, 0.976716, -0.214520,
		-0.681197, -0.158803, -0.714669,
		37.679386, 33.196529, 51.509167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737621, 33.831146, 52.103928>,  <38.156227, 33.307693, 52.009434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737621, 33.831146, 52.103928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.537159, 33.536674, 51.921993>,  <37.416882, 33.359989, 51.812832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.537159, 33.536674, 51.921993>,  <37.737621, 33.831146, 52.103928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537159, 33.536674, 51.921993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776828, 0.151149, 0.611304,
		-0.381285, 0.659687, -0.647638,
		-0.501159, -0.736184, -0.454832,
		37.386810, 33.315819, 51.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091362, 34.137970, 51.880486>,  <37.737621, 33.831146, 52.103928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091362, 34.137970, 51.880486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050049, 33.740166, 51.887230>,  <37.025261, 33.501484, 51.891277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050049, 33.740166, 51.887230>,  <37.091362, 34.137970, 51.880486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050049, 33.740166, 51.887230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758871, 0.089745, 0.645028,
		-0.642999, 0.053828, -0.763973,
		-0.103284, -0.994509, 0.016857,
		37.019062, 33.441814, 51.892288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424946, 34.120354, 52.005417>,  <37.091362, 34.137970, 51.880486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424946, 34.120354, 52.005417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510563, 33.743458, 52.108459>,  <36.561932, 33.517319, 52.170284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510563, 33.743458, 52.108459>,  <36.424946, 34.120354, 52.005417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510563, 33.743458, 52.108459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797702, -0.016395, 0.602829,
		-0.563789, -0.334526, -0.755139,
		0.214043, -0.942244, 0.257609,
		36.574776, 33.460785, 52.185741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793919, 33.749756, 51.968163>,  <36.424946, 34.120354, 52.005417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793919, 33.749756, 51.968163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028049, 33.528538, 52.205326>,  <36.168526, 33.395805, 52.347622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028049, 33.528538, 52.205326>,  <35.793919, 33.749756, 51.968163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028049, 33.528538, 52.205326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738366, -0.061464, 0.671594,
		-0.334980, -0.830880, -0.444327,
		0.585324, -0.553047, 0.592904,
		36.203648, 33.362625, 52.383198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276859, 33.179920, 52.317051>,  <35.793919, 33.749756, 51.968163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276859, 33.179920, 52.317051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625507, 33.149792, 52.510796>,  <35.834698, 33.131714, 52.627041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625507, 33.149792, 52.510796>,  <35.276859, 33.179920, 52.317051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625507, 33.149792, 52.510796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489442, -0.079424, 0.868412,
		-0.026935, -0.993992, -0.106090,
		0.871620, -0.075315, 0.484361,
		35.886993, 33.127197, 52.656105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357655, 32.529137, 52.648750>,  <35.276859, 33.179920, 52.317051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357655, 32.529137, 52.648750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574211, 32.809597, 52.834343>,  <35.704144, 32.977875, 52.945698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574211, 32.809597, 52.834343>,  <35.357655, 32.529137, 52.648750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574211, 32.809597, 52.834343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518474, -0.156020, 0.840739,
		0.661875, -0.695735, 0.279060,
		0.541392, 0.701150, 0.463986,
		35.736629, 33.019943, 52.973537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615208, 32.234367, 53.238831>,  <35.357655, 32.529137, 52.648750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615208, 32.234367, 53.238831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.638550, 32.629276, 53.298000>,  <35.652554, 32.866222, 53.333500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.638550, 32.629276, 53.298000>,  <35.615208, 32.234367, 53.238831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638550, 32.629276, 53.298000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420247, -0.110112, 0.900704,
		0.905532, -0.114721, 0.408475,
		0.058352, 0.987276, 0.147921,
		35.656055, 32.925461, 53.342377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519604, 32.190205, 53.922863>,  <35.615208, 32.234367, 53.238831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519604, 32.190205, 53.922863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449245, 32.574177, 53.835598>,  <35.407032, 32.804562, 53.783237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449245, 32.574177, 53.835598>,  <35.519604, 32.190205, 53.922863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449245, 32.574177, 53.835598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346705, 0.147010, 0.926382,
		0.921334, 0.238583, 0.306955,
		-0.175894, 0.959930, -0.218163,
		35.396477, 32.862156, 53.770149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641129, 32.513290, 54.604122>,  <35.519604, 32.190205, 53.922863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641129, 32.513290, 54.604122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436932, 32.777977, 54.384472>,  <35.314415, 32.936787, 54.252682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436932, 32.777977, 54.384472>,  <35.641129, 32.513290, 54.604122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436932, 32.777977, 54.384472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368513, 0.408628, 0.834998,
		0.776915, 0.628617, 0.035248,
		-0.510491, 0.661712, -0.549123,
		35.283783, 32.976490, 54.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752899, 33.150166, 54.767464>,  <35.641129, 32.513290, 54.604122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752899, 33.150166, 54.767464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401340, 33.216908, 54.588711>,  <35.190407, 33.256954, 54.481461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401340, 33.216908, 54.588711>,  <35.752899, 33.150166, 54.767464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401340, 33.216908, 54.588711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320320, 0.487739, 0.812100,
		0.353465, 0.856895, -0.375224,
		-0.878896, 0.166857, -0.446879,
		35.137672, 33.266964, 54.454647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676933, 33.833473, 54.696060>,  <35.752899, 33.150166, 54.767464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676933, 33.833473, 54.696060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296665, 33.709732, 54.686901>,  <35.068504, 33.635487, 54.681404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296665, 33.709732, 54.686901>,  <35.676933, 33.833473, 54.696060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296665, 33.709732, 54.686901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205794, 0.573739, 0.792763,
		-0.232105, 0.758370, -0.609101,
		-0.950672, -0.309353, -0.022900,
		35.011463, 33.616924, 54.680031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215565, 34.467182, 54.674030>,  <35.676933, 33.833473, 54.696060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215565, 34.467182, 54.674030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969284, 34.181965, 54.808182>,  <34.821514, 34.010834, 54.888672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969284, 34.181965, 54.808182>,  <35.215565, 34.467182, 54.674030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969284, 34.181965, 54.808182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208862, 0.558070, 0.803078,
		-0.759793, 0.424411, -0.492534,
		-0.615704, -0.713045, 0.335374,
		34.784573, 33.968052, 54.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624226, 34.860397, 54.912563>,  <35.215565, 34.467182, 54.674030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624226, 34.860397, 54.912563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564522, 34.496555, 55.067657>,  <34.528698, 34.278252, 55.160713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564522, 34.496555, 55.067657>,  <34.624226, 34.860397, 54.912563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564522, 34.496555, 55.067657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426390, 0.413008, 0.804746,
		-0.892139, -0.045207, -0.449494,
		-0.149264, -0.909605, 0.387737,
		34.519741, 34.223675, 55.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947670, 34.763195, 55.036041>,  <34.624226, 34.860397, 54.912563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947670, 34.763195, 55.036041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030842, 34.478874, 55.304825>,  <34.080746, 34.308281, 55.466095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030842, 34.478874, 55.304825>,  <33.947670, 34.763195, 55.036041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030842, 34.478874, 55.304825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504235, 0.510767, 0.696322,
		-0.838160, -0.483611, -0.252207,
		0.207930, -0.710801, 0.671958,
		34.093220, 34.265633, 55.506413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341484, 34.645702, 55.286541>,  <33.947670, 34.763195, 55.036041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341484, 34.645702, 55.286541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630081, 34.551399, 55.546963>,  <33.803238, 34.494816, 55.703217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630081, 34.551399, 55.546963>,  <33.341484, 34.645702, 55.286541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630081, 34.551399, 55.546963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570216, 0.331117, 0.751808,
		-0.392820, -0.913663, 0.104464,
		0.721489, -0.235759, 0.651055,
		33.846527, 34.480671, 55.742279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081348, 34.402035, 55.840019>,  <33.341484, 34.645702, 55.286541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081348, 34.402035, 55.840019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438351, 34.507568, 55.986355>,  <33.652550, 34.570889, 56.074154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438351, 34.507568, 55.986355>,  <33.081348, 34.402035, 55.840019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438351, 34.507568, 55.986355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426058, 0.226916, 0.875776,
		0.148038, -0.937499, 0.314929,
		0.892501, 0.263826, 0.365837,
		33.706100, 34.586716, 56.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072193, 34.187859, 56.523575>,  <33.081348, 34.402035, 55.840019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072193, 34.187859, 56.523575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395580, 34.422920, 56.536495>,  <33.589611, 34.563957, 56.544247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395580, 34.422920, 56.536495>,  <33.072193, 34.187859, 56.523575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395580, 34.422920, 56.536495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183645, 0.199738, 0.962486,
		0.559159, -0.784069, 0.269401,
		0.808465, 0.587657, 0.032305,
		33.638119, 34.599216, 56.546188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440662, 33.913231, 57.065563>,  <33.072193, 34.187859, 56.523575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440662, 33.913231, 57.065563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521137, 34.298489, 56.994144>,  <33.569424, 34.529644, 56.951294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521137, 34.298489, 56.994144>,  <33.440662, 33.913231, 57.065563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521137, 34.298489, 56.994144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549160, 0.261842, 0.793639,
		0.811139, -0.061618, 0.581599,
		0.201189, 0.963142, -0.178552,
		33.581493, 34.587433, 56.940578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592678, 34.199303, 57.714626>,  <33.440662, 33.913231, 57.065563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592678, 34.199303, 57.714626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545135, 34.530590, 57.495564>,  <33.516609, 34.729362, 57.364124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545135, 34.530590, 57.495564>,  <33.592678, 34.199303, 57.714626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545135, 34.530590, 57.495564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367271, 0.475776, 0.799218,
		0.922489, 0.296132, 0.247630,
		-0.118858, 0.828217, -0.547658,
		33.509480, 34.779057, 57.331264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929394, 34.761757, 58.152988>,  <33.592678, 34.199303, 57.714626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929394, 34.761757, 58.152988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653473, 34.885056, 57.890945>,  <33.487923, 34.959034, 57.733719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653473, 34.885056, 57.890945>,  <33.929394, 34.761757, 58.152988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653473, 34.885056, 57.890945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553708, 0.358364, 0.751653,
		0.466459, 0.881227, -0.076522,
		-0.689799, 0.308244, -0.655105,
		33.446533, 34.977528, 57.694412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861332, 35.575581, 58.177921>,  <33.929394, 34.761757, 58.152988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861332, 35.575581, 58.177921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526993, 35.414406, 58.028790>,  <33.326389, 35.317703, 57.939312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526993, 35.414406, 58.028790>,  <33.861332, 35.575581, 58.177921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526993, 35.414406, 58.028790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494339, 0.257127, 0.830370,
		-0.238718, 0.878368, -0.414105,
		-0.835848, -0.402933, -0.372831,
		33.276237, 35.293526, 57.916939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368496, 36.051384, 58.261986>,  <33.861332, 35.575581, 58.177921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368496, 36.051384, 58.261986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145390, 35.722347, 58.217739>,  <33.011528, 35.524925, 58.191193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145390, 35.722347, 58.217739>,  <33.368496, 36.051384, 58.261986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145390, 35.722347, 58.217739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619683, 0.324055, 0.714830,
		-0.552171, 0.467252, -0.690495,
		-0.557764, -0.822595, -0.110615,
		32.978062, 35.475567, 58.184555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701431, 36.330433, 58.158939>,  <33.368496, 36.051384, 58.261986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701431, 36.330433, 58.158939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661476, 35.948460, 58.270744>,  <32.637501, 35.719276, 58.337830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661476, 35.948460, 58.270744>,  <32.701431, 36.330433, 58.158939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661476, 35.948460, 58.270744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558964, 0.286259, 0.778213,
		-0.823153, -0.078502, -0.562367,
		-0.099891, -0.954931, 0.279515,
		32.631508, 35.661980, 58.354599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972298, 36.199223, 58.374863>,  <32.701431, 36.330433, 58.158939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972298, 36.199223, 58.374863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167694, 35.893887, 58.543949>,  <32.284931, 35.710686, 58.645401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167694, 35.893887, 58.543949>,  <31.972298, 36.199223, 58.374863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167694, 35.893887, 58.543949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466256, 0.181138, 0.865907,
		-0.737551, -0.620081, -0.267428,
		0.488491, -0.763340, 0.422715,
		32.314243, 35.664886, 58.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515753, 35.790794, 58.737297>,  <31.972298, 36.199223, 58.374863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515753, 35.790794, 58.737297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844866, 35.667831, 58.928516>,  <32.042332, 35.594051, 59.043247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844866, 35.667831, 58.928516>,  <31.515753, 35.790794, 58.737297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844866, 35.667831, 58.928516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497634, 0.016697, 0.867226,
		-0.274577, -0.951430, -0.139240,
		0.822781, -0.307411, 0.478049,
		32.091702, 35.575607, 59.071930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202257, 35.328854, 59.219589>,  <31.515753, 35.790794, 58.737297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202257, 35.328854, 59.219589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566813, 35.423027, 59.354614>,  <31.785545, 35.479530, 59.435627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566813, 35.423027, 59.354614>,  <31.202257, 35.328854, 59.219589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566813, 35.423027, 59.354614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339851, -0.032061, 0.939933,
		0.232112, -0.971362, 0.050791,
		0.911386, 0.235431, 0.337560,
		31.840229, 35.493656, 59.455883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267344, 34.903358, 59.813515>,  <31.202257, 35.328854, 59.219589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267344, 34.903358, 59.813515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521358, 35.209114, 59.858109>,  <31.673767, 35.392567, 59.884865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521358, 35.209114, 59.858109>,  <31.267344, 34.903358, 59.813515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521358, 35.209114, 59.858109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509098, 0.305591, 0.804633,
		0.580988, -0.567729, 0.583213,
		0.635038, 0.764394, 0.111485,
		31.711870, 35.438431, 59.891556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181070, 35.047016, 60.509090>,  <31.267344, 34.903358, 59.813515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181070, 35.047016, 60.509090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362957, 35.367996, 60.354527>,  <31.472090, 35.560585, 60.261787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362957, 35.367996, 60.354527>,  <31.181070, 35.047016, 60.509090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362957, 35.367996, 60.354527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455327, 0.582323, 0.673481,
		0.765447, -0.130302, 0.630168,
		0.454717, 0.802447, -0.386407,
		31.499372, 35.608730, 60.238605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498158, 35.457401, 61.082939>,  <31.181070, 35.047016, 60.509090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498158, 35.457401, 61.082939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460674, 35.730656, 60.793236>,  <31.438185, 35.894608, 60.619415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460674, 35.730656, 60.793236>,  <31.498158, 35.457401, 61.082939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460674, 35.730656, 60.793236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397296, 0.641367, 0.656357,
		0.912894, 0.349250, 0.211305,
		-0.093709, 0.683135, -0.724255,
		31.432562, 35.935596, 60.575958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644344, 36.066471, 61.389980>,  <31.498158, 35.457401, 61.082939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644344, 36.066471, 61.389980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476215, 36.203770, 61.054001>,  <31.375338, 36.286148, 60.852413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476215, 36.203770, 61.054001>,  <31.644344, 36.066471, 61.389980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476215, 36.203770, 61.054001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506852, 0.678990, 0.531106,
		0.752617, 0.648964, -0.111419,
		-0.420321, 0.343247, -0.839948,
		31.350119, 36.306744, 60.802017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613657, 36.909492, 61.331936>,  <31.644344, 36.066471, 61.389980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613657, 36.909492, 61.331936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326954, 36.756004, 61.099033>,  <31.154932, 36.663910, 60.959293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326954, 36.756004, 61.099033>,  <31.613657, 36.909492, 61.331936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326954, 36.756004, 61.099033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615367, 0.740808, 0.269308,
		0.328000, 0.551328, -0.767107,
		-0.716756, -0.383720, -0.582254,
		31.111927, 36.640888, 60.924358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379528, 37.483543, 60.873096>,  <31.613657, 36.909492, 61.331936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379528, 37.483543, 60.873096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090595, 37.210106, 60.914921>,  <30.917236, 37.046043, 60.940014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090595, 37.210106, 60.914921>,  <31.379528, 37.483543, 60.873096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090595, 37.210106, 60.914921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649957, 0.722728, 0.234987,
		-0.236206, 0.101778, -0.966358,
		-0.722331, -0.683597, 0.104561,
		30.873896, 37.005028, 60.946289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820801, 37.825233, 60.582878>,  <31.379528, 37.483543, 60.873096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820801, 37.825233, 60.582878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664593, 37.546478, 60.823490>,  <30.570868, 37.379223, 60.967857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664593, 37.546478, 60.823490>,  <30.820801, 37.825233, 60.582878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664593, 37.546478, 60.823490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578203, 0.694130, 0.428795,
		-0.716363, -0.180353, -0.674016,
		-0.390520, -0.696890, 0.601530,
		30.547438, 37.337410, 61.003948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060125, 37.909863, 60.563835>,  <30.820801, 37.825233, 60.582878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060125, 37.909863, 60.563835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170979, 37.715847, 60.895603>,  <30.237492, 37.599438, 61.094662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170979, 37.715847, 60.895603>,  <30.060125, 37.909863, 60.563835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170979, 37.715847, 60.895603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620058, 0.569137, 0.540011,
		-0.733979, -0.663942, -0.143025,
		0.277135, -0.485040, 0.829417,
		30.254120, 37.570335, 61.144428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432369, 37.895485, 60.957195>,  <30.060125, 37.909863, 60.563835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432369, 37.895485, 60.957195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707373, 37.817886, 61.237110>,  <29.872375, 37.771328, 61.405060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707373, 37.817886, 61.237110>,  <29.432369, 37.895485, 60.957195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707373, 37.817886, 61.237110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550702, 0.488863, 0.676565,
		-0.473350, -0.850517, 0.229263,
		0.687508, -0.193996, 0.699785,
		29.913626, 37.759689, 61.447044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104996, 38.172825, 61.510212>,  <29.432369, 37.895485, 60.957195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104996, 38.172825, 61.510212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463753, 38.105225, 61.673683>,  <29.679007, 38.064663, 61.771767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463753, 38.105225, 61.673683>,  <29.104996, 38.172825, 61.510212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463753, 38.105225, 61.673683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303567, 0.436739, 0.846821,
		-0.321600, -0.883571, 0.340405,
		0.896895, -0.169002, 0.408679,
		29.732821, 38.054523, 61.796288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943426, 38.029907, 62.209373>,  <29.104996, 38.172825, 61.510212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943426, 38.029907, 62.209373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330254, 38.131264, 62.218975>,  <29.562349, 38.192078, 62.224735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330254, 38.131264, 62.218975>,  <28.943426, 38.029907, 62.209373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330254, 38.131264, 62.218975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151541, 0.497456, 0.854151,
		0.204491, -0.829658, 0.519472,
		0.967067, 0.253388, 0.024002,
		29.620373, 38.207279, 62.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294111, 37.865345, 62.871197>,  <28.943426, 38.029907, 62.209373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294111, 37.865345, 62.871197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480064, 38.169682, 62.690086>,  <29.591637, 38.352283, 62.581421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480064, 38.169682, 62.690086>,  <29.294111, 37.865345, 62.871197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480064, 38.169682, 62.690086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159836, 0.575112, 0.802309,
		0.870825, -0.300611, 0.388970,
		0.464884, 0.760842, -0.452773,
		29.619530, 38.397934, 62.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612995, 38.290199, 63.435520>,  <29.294111, 37.865345, 62.871197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612995, 38.290199, 63.435520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579956, 38.544804, 63.128788>,  <29.560133, 38.697567, 62.944748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579956, 38.544804, 63.128788>,  <29.612995, 38.290199, 63.435520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579956, 38.544804, 63.128788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226310, 0.737380, 0.636440,
		0.970547, 0.226109, 0.083144,
		-0.082596, 0.636511, -0.766832,
		29.555178, 38.735756, 62.898739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715038, 38.018234, 64.117332>,  <29.612995, 38.290199, 63.435520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715038, 38.018234, 64.117332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885145, 37.696507, 64.283325>,  <29.987209, 37.503471, 64.382919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885145, 37.696507, 64.283325>,  <29.715038, 38.018234, 64.117332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885145, 37.696507, 64.283325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785556, 0.100301, -0.610608,
		0.449501, 0.585669, 0.674493,
		0.425266, -0.804321, 0.414990,
		30.012726, 37.455212, 64.407822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017616, 38.671623, 64.157524>,  <29.715038, 38.018234, 64.117332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017616, 38.671623, 64.157524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192209, 39.031105, 64.174561>,  <30.296965, 39.246796, 64.184784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192209, 39.031105, 64.174561>,  <30.017616, 38.671623, 64.157524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192209, 39.031105, 64.174561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611997, 0.331265, -0.718139,
		-0.659501, 0.287393, 0.694595,
		0.436483, 0.898704, 0.042586,
		30.323154, 39.300716, 64.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462030, 39.172520, 64.142273>,  <30.017616, 38.671623, 64.157524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462030, 39.172520, 64.142273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811773, 39.309025, 64.004265>,  <30.021618, 39.390930, 63.921459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811773, 39.309025, 64.004265>,  <29.462030, 39.172520, 64.142273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811773, 39.309025, 64.004265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473255, 0.442299, -0.761841,
		-0.107389, 0.829403, 0.548233,
		0.874356, 0.341267, -0.345021,
		30.074080, 39.411404, 63.900757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330463, 39.403412, 63.547188>,  <29.462030, 39.172520, 64.142273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330463, 39.403412, 63.547188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714540, 39.493271, 63.480774>,  <29.944986, 39.547188, 63.440926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714540, 39.493271, 63.480774>,  <29.330463, 39.403412, 63.547188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714540, 39.493271, 63.480774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218877, 0.235725, -0.946851,
		-0.173573, 0.945497, 0.275512,
		0.960190, 0.224651, -0.166032,
		30.002598, 39.560665, 63.430965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411860, 40.087879, 63.222713>,  <29.330463, 39.403412, 63.547188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411860, 40.087879, 63.222713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690081, 39.822140, 63.113285>,  <29.857014, 39.662697, 63.047626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690081, 39.822140, 63.113285>,  <29.411860, 40.087879, 63.222713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690081, 39.822140, 63.113285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104115, 0.283549, -0.953289,
		0.710892, 0.691545, 0.128055,
		0.695552, -0.664353, -0.273573,
		29.898746, 39.622833, 63.031212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898520, 40.298531, 63.758057>,  <29.411860, 40.087879, 63.222713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898520, 40.298531, 63.758057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832733, 40.688019, 63.821072>,  <28.793262, 40.921711, 63.858883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832733, 40.688019, 63.821072>,  <28.898520, 40.298531, 63.758057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832733, 40.688019, 63.821072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006710, 0.158606, -0.987319,
		-0.986360, -0.163436, -0.019551,
		-0.164464, 0.973721, 0.157540,
		28.783394, 40.980137, 63.868332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308413, 40.604446, 63.304314>,  <28.898520, 40.298531, 63.758057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308413, 40.604446, 63.304314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587423, 40.880833, 63.380230>,  <28.754829, 41.046665, 63.425781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587423, 40.880833, 63.380230>,  <28.308413, 40.604446, 63.304314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587423, 40.880833, 63.380230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058696, 0.208880, -0.976178,
		-0.714151, 0.692050, 0.105143,
		0.697526, 0.690967, 0.189792,
		28.796680, 41.088123, 63.437168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245037, 40.915089, 62.740173>,  <28.308413, 40.604446, 63.304314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245037, 40.915089, 62.740173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578249, 41.067375, 62.900734>,  <28.778175, 41.158749, 62.997070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578249, 41.067375, 62.900734>,  <28.245037, 40.915089, 62.740173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578249, 41.067375, 62.900734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341257, 0.217461, -0.914469,
		-0.435441, 0.898759, 0.051229,
		0.833028, 0.380715, 0.401399,
		28.828157, 41.181591, 63.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421747, 41.396629, 62.333435>,  <28.245037, 40.915089, 62.740173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421747, 41.396629, 62.333435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.769564, 41.329090, 62.519073>,  <28.978254, 41.288567, 62.630459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.769564, 41.329090, 62.519073>,  <28.421747, 41.396629, 62.333435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769564, 41.329090, 62.519073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455784, -0.087464, -0.885782,
		0.190152, 0.981754, 0.000903,
		0.869542, -0.168845, 0.464100,
		29.030426, 41.278435, 62.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899204, 41.943638, 62.224438>,  <28.421747, 41.396629, 62.333435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899204, 41.943638, 62.224438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131023, 41.628300, 62.307037>,  <29.270115, 41.439098, 62.356598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131023, 41.628300, 62.307037>,  <28.899204, 41.943638, 62.224438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131023, 41.628300, 62.307037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511306, 0.154442, -0.845408,
		0.634580, 0.595536, 0.492591,
		0.579547, -0.788343, 0.206495,
		29.304888, 41.391796, 62.368984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650379, 42.053493, 61.867374>,  <28.899204, 41.943638, 62.224438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650379, 42.053493, 61.867374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628658, 41.656483, 61.911083>,  <29.615625, 41.418278, 61.937309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628658, 41.656483, 61.911083>,  <29.650379, 42.053493, 61.867374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628658, 41.656483, 61.911083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480858, -0.121900, -0.868284,
		0.875115, 0.005393, 0.483884,
		-0.054303, -0.992528, 0.109270,
		29.612368, 41.358723, 61.943863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417070, 41.773701, 61.867912>,  <29.650379, 42.053493, 61.867374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417070, 41.773701, 61.867912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116491, 41.533058, 61.759544>,  <29.936144, 41.388672, 61.694523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116491, 41.533058, 61.759544>,  <30.417070, 41.773701, 61.867912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116491, 41.533058, 61.759544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514005, -0.276342, -0.812055,
		0.413672, -0.749470, 0.516885,
		-0.751448, -0.601606, -0.270916,
		29.891056, 41.352577, 61.678268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686213, 41.028492, 61.818386>,  <30.417070, 41.773701, 61.867912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686213, 41.028492, 61.818386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350622, 41.071301, 61.604969>,  <30.149269, 41.096985, 61.476917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350622, 41.071301, 61.604969>,  <30.686213, 41.028492, 61.818386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350622, 41.071301, 61.604969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496181, -0.252149, -0.830797,
		-0.223439, -0.961753, 0.158449,
		-0.838975, 0.107013, -0.533544,
		30.098930, 41.103405, 61.444904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647896, 40.350155, 61.496014>,  <30.686213, 41.028492, 61.818386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647896, 40.350155, 61.496014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433840, 40.603779, 61.272732>,  <30.305407, 40.755955, 61.138763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433840, 40.603779, 61.272732>,  <30.647896, 40.350155, 61.496014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433840, 40.603779, 61.272732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363823, -0.423367, -0.829695,
		-0.762402, -0.647090, -0.004125,
		-0.535140, 0.634062, -0.558202,
		30.273298, 40.793999, 61.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351540, 39.943928, 60.931965>,  <30.647896, 40.350155, 61.496014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351540, 39.943928, 60.931965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345539, 40.321190, 60.799160>,  <30.341938, 40.547546, 60.719479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345539, 40.321190, 60.799160>,  <30.351540, 39.943928, 60.931965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345539, 40.321190, 60.799160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428155, -0.294007, -0.854543,
		-0.903581, -0.154971, -0.399406,
		-0.015001, 0.943156, -0.332011,
		30.341040, 40.604137, 60.699558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197817, 39.871784, 60.292023>,  <30.351540, 39.943928, 60.931965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197817, 39.871784, 60.292023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321869, 40.251884, 60.280399>,  <30.396299, 40.479946, 60.273426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321869, 40.251884, 60.280399>,  <30.197817, 39.871784, 60.292023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321869, 40.251884, 60.280399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525742, -0.196893, -0.827543,
		-0.792095, 0.241368, -0.560649,
		0.310130, 0.950250, -0.029061,
		30.414907, 40.536961, 60.271683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021196, 40.123604, 59.603680>,  <30.197817, 39.871784, 60.292023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021196, 40.123604, 59.603680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323635, 40.335613, 59.757248>,  <30.505098, 40.462818, 59.849388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323635, 40.335613, 59.757248>,  <30.021196, 40.123604, 59.603680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323635, 40.335613, 59.757248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480566, -0.051416, -0.875450,
		-0.444271, 0.846422, -0.293587,
		0.756095, 0.530025, 0.383919,
		30.550463, 40.494621, 59.872425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090113, 40.508835, 59.031578>,  <30.021196, 40.123604, 59.603680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090113, 40.508835, 59.031578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403276, 40.520508, 59.280159>,  <30.591175, 40.527512, 59.429306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403276, 40.520508, 59.280159>,  <30.090113, 40.508835, 59.031578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403276, 40.520508, 59.280159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612658, -0.209853, -0.761979,
		0.108173, 0.977297, -0.182177,
		0.782911, 0.029186, 0.621449,
		30.638149, 40.529263, 59.466595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536005, 40.999825, 58.686100>,  <30.090113, 40.508835, 59.031578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536005, 40.999825, 58.686100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750860, 40.768559, 58.931767>,  <30.879772, 40.629799, 59.079166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750860, 40.768559, 58.931767>,  <30.536005, 40.999825, 58.686100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750860, 40.768559, 58.931767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617188, -0.226911, -0.753386,
		0.574946, 0.783730, 0.234957,
		0.537137, -0.578169, 0.614170,
		30.912001, 40.595108, 59.116016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187662, 41.136616, 58.589096>,  <30.536005, 40.999825, 58.686100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187662, 41.136616, 58.589096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176479, 40.764694, 58.735893>,  <31.169769, 40.541542, 58.823971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176479, 40.764694, 58.735893>,  <31.187662, 41.136616, 58.589096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176479, 40.764694, 58.735893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637589, -0.299343, -0.709841,
		0.769869, 0.214146, 0.601201,
		-0.027955, -0.929804, 0.366992,
		31.168093, 40.485752, 58.845989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812876, 40.873070, 58.521645>,  <31.187662, 41.136616, 58.589096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812876, 40.873070, 58.521645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.638527, 40.523029, 58.605751>,  <31.533918, 40.313004, 58.656216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.638527, 40.523029, 58.605751>,  <31.812876, 40.873070, 58.521645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638527, 40.523029, 58.605751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551488, -0.444325, -0.706000,
		0.711250, -0.191765, 0.676276,
		-0.435873, -0.875101, 0.210270,
		31.507765, 40.260498, 58.668831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282692, 40.532768, 58.317383>,  <31.812876, 40.873070, 58.521645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282692, 40.532768, 58.317383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985373, 40.267258, 58.350636>,  <31.806982, 40.107952, 58.370586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985373, 40.267258, 58.350636>,  <32.282692, 40.532768, 58.317383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985373, 40.267258, 58.350636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394728, -0.535517, -0.746600,
		0.540096, -0.522129, 0.660059,
		-0.743294, -0.663779, 0.083132,
		31.762384, 40.068123, 58.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602482, 39.912312, 58.394688>,  <32.282692, 40.532768, 58.317383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602482, 39.912312, 58.394688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232616, 39.822411, 58.271732>,  <32.010696, 39.768471, 58.197960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232616, 39.822411, 58.271732>,  <32.602482, 39.912312, 58.394688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232616, 39.822411, 58.271732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377989, -0.639552, -0.669402,
		-0.046142, -0.735159, 0.676322,
		-0.924660, -0.224755, -0.307392,
		31.955219, 39.754986, 58.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546429, 39.152359, 58.367977>,  <32.602482, 39.912312, 58.394688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546429, 39.152359, 58.367977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272835, 39.305588, 58.119648>,  <32.108677, 39.397526, 57.970650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272835, 39.305588, 58.119648>,  <32.546429, 39.152359, 58.367977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272835, 39.305588, 58.119648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178287, -0.737435, -0.651462,
		-0.707371, -0.556276, 0.436100,
		-0.683988, 0.383074, -0.620817,
		32.067638, 39.420509, 57.933403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214718, 38.588596, 58.079571>,  <32.546429, 39.152359, 58.367977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214718, 38.588596, 58.079571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113586, 38.884338, 57.829956>,  <32.052906, 39.061783, 57.680187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113586, 38.884338, 57.829956>,  <32.214718, 38.588596, 58.079571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113586, 38.884338, 57.829956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068281, -0.657021, -0.750773,
		-0.965098, -0.147210, 0.216600,
		-0.252832, 0.739359, -0.624038,
		32.037735, 39.106148, 57.642746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866196, 38.252712, 57.573387>,  <32.214718, 38.588596, 58.079571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866196, 38.252712, 57.573387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929419, 38.589550, 57.367126>,  <31.967352, 38.791653, 57.243370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929419, 38.589550, 57.367126>,  <31.866196, 38.252712, 57.573387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929419, 38.589550, 57.367126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303613, -0.538362, -0.786121,
		-0.939594, -0.032308, -0.340761,
		0.158055, 0.842094, -0.515651,
		31.976835, 38.842178, 57.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555452, 38.161179, 56.974632>,  <31.866196, 38.252712, 57.573387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555452, 38.161179, 56.974632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836081, 38.439716, 56.914101>,  <32.004456, 38.606838, 56.877781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836081, 38.439716, 56.914101>,  <31.555452, 38.161179, 56.974632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836081, 38.439716, 56.914101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275224, -0.460666, -0.843824,
		-0.657308, 0.550351, -0.514840,
		0.701569, 0.696348, -0.151330,
		32.046551, 38.648621, 56.868702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608654, 38.135254, 56.243256>,  <31.555452, 38.161179, 56.974632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608654, 38.135254, 56.243256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.943102, 38.303585, 56.383999>,  <32.143772, 38.404583, 56.468445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.943102, 38.303585, 56.383999>,  <31.608654, 38.135254, 56.243256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943102, 38.303585, 56.383999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541474, -0.530526, -0.652187,
		-0.087784, 0.735832, -0.671450,
		0.836121, 0.420825, 0.351862,
		32.193939, 38.429832, 56.489559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986774, 38.511166, 55.676399>,  <31.608654, 38.135254, 56.243256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986774, 38.511166, 55.676399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255653, 38.413353, 55.955929>,  <32.416981, 38.354668, 56.123646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255653, 38.413353, 55.955929>,  <31.986774, 38.511166, 55.676399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255653, 38.413353, 55.955929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541603, -0.481145, -0.689322,
		0.504796, 0.841846, -0.190986,
		0.672196, -0.244528, 0.698827,
		32.457314, 38.339996, 56.165577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632103, 38.576271, 55.379597>,  <31.986774, 38.511166, 55.676399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632103, 38.576271, 55.379597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714531, 38.341858, 55.693058>,  <32.763988, 38.201210, 55.881134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714531, 38.341858, 55.693058>,  <32.632103, 38.576271, 55.379597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714531, 38.341858, 55.693058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667261, -0.501620, -0.550581,
		0.715751, 0.636355, 0.287668,
		0.206066, -0.586029, 0.783650,
		32.776352, 38.166050, 55.928154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287212, 38.517448, 55.329689>,  <32.632103, 38.576271, 55.379597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287212, 38.517448, 55.329689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172104, 38.210510, 55.558903>,  <33.103039, 38.026348, 55.696430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172104, 38.210510, 55.558903>,  <33.287212, 38.517448, 55.329689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172104, 38.210510, 55.558903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644602, -0.597716, -0.476681,
		0.708291, 0.232205, 0.666636,
		-0.287771, -0.767344, 0.573037,
		33.085773, 37.980309, 55.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926174, 38.195316, 55.618313>,  <33.287212, 38.517448, 55.329689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926174, 38.195316, 55.618313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659798, 37.898018, 55.643970>,  <33.499973, 37.719639, 55.659367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659798, 37.898018, 55.643970>,  <33.926174, 38.195316, 55.618313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659798, 37.898018, 55.643970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641475, -0.614402, -0.459369,
		0.380837, -0.264761, 0.885926,
		-0.665938, -0.743244, 0.064149,
		33.460018, 37.675045, 55.663216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216846, 37.604694, 56.004059>,  <33.926174, 38.195316, 55.618313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216846, 37.604694, 56.004059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927795, 37.437012, 55.784218>,  <33.754364, 37.336403, 55.652313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927795, 37.437012, 55.784218>,  <34.216846, 37.604694, 56.004059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927795, 37.437012, 55.784218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681414, -0.565567, -0.464552,
		-0.116095, -0.710210, 0.694351,
		-0.722632, -0.419208, -0.549607,
		33.711006, 37.311249, 55.619335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500168, 36.989643, 55.958706>,  <34.216846, 37.604694, 56.004059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500168, 36.989643, 55.958706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210793, 36.975266, 55.682926>,  <34.037167, 36.966640, 55.517456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210793, 36.975266, 55.682926>,  <34.500168, 36.989643, 55.958706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210793, 36.975266, 55.682926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598626, -0.530135, -0.600502,
		-0.343920, -0.847151, 0.405036,
		-0.723440, -0.035940, -0.689451,
		33.993759, 36.964485, 55.476089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326656, 36.290115, 55.767857>,  <34.500168, 36.989643, 55.958706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326656, 36.290115, 55.767857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200916, 36.492191, 55.446369>,  <34.125473, 36.613438, 55.253475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200916, 36.492191, 55.446369>,  <34.326656, 36.290115, 55.767857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200916, 36.492191, 55.446369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648064, -0.504460, -0.570556,
		-0.693684, -0.700217, -0.168818,
		-0.314351, 0.505190, -0.803721,
		34.106609, 36.643749, 55.205254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132858, 35.755459, 55.214939>,  <34.326656, 36.290115, 55.767857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132858, 35.755459, 55.214939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196388, 36.104889, 55.030918>,  <34.234505, 36.314545, 54.920506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196388, 36.104889, 55.030918>,  <34.132858, 35.755459, 55.214939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196388, 36.104889, 55.030918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501876, -0.472708, -0.724339,
		-0.850232, -0.115846, -0.513502,
		0.158825, 0.873571, -0.460052,
		34.244034, 36.366959, 54.892902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004330, 35.660679, 54.502094>,  <34.132858, 35.755459, 55.214939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004330, 35.660679, 54.502094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203617, 36.007492, 54.504429>,  <34.323189, 36.215580, 54.505829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203617, 36.007492, 54.504429>,  <34.004330, 35.660679, 54.502094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203617, 36.007492, 54.504429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479794, -0.270086, -0.834776,
		-0.722202, 0.418701, -0.550558,
		0.498219, 0.867032, 0.005834,
		34.353085, 36.267601, 54.506180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851318, 35.888062, 53.866516>,  <34.004330, 35.660679, 54.502094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851318, 35.888062, 53.866516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186836, 36.076553, 53.975594>,  <34.388145, 36.189648, 54.041042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186836, 36.076553, 53.975594>,  <33.851318, 35.888062, 53.866516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186836, 36.076553, 53.975594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360572, -0.105522, -0.926743,
		-0.407936, 0.875674, -0.258424,
		0.838794, 0.471232, 0.272698,
		34.438473, 36.217922, 54.057404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046562, 36.339397, 53.317898>,  <33.851318, 35.888062, 53.866516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046562, 36.339397, 53.317898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385639, 36.286003, 53.523262>,  <34.589085, 36.253967, 53.646481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385639, 36.286003, 53.523262>,  <34.046562, 36.339397, 53.317898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385639, 36.286003, 53.523262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500876, -0.117397, -0.857520,
		0.174743, 0.984072, -0.032655,
		0.847695, -0.133490, 0.513413,
		34.639946, 36.245956, 53.677284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531990, 36.792057, 52.915375>,  <34.046562, 36.339397, 53.317898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531990, 36.792057, 52.915375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773972, 36.564640, 53.138371>,  <34.919159, 36.428192, 53.272167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773972, 36.564640, 53.138371>,  <34.531990, 36.792057, 52.915375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773972, 36.564640, 53.138371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650968, -0.050071, -0.757452,
		0.458556, 0.821130, 0.339811,
		0.604952, -0.568540, 0.557490,
		34.955456, 36.394077, 53.305618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306095, 37.027142, 52.749016>,  <34.531990, 36.792057, 52.915375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306095, 37.027142, 52.749016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283916, 36.649555, 52.879150>,  <35.270607, 36.423004, 52.957233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283916, 36.649555, 52.879150>,  <35.306095, 37.027142, 52.749016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283916, 36.649555, 52.879150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666881, -0.277518, -0.691558,
		0.743098, 0.178616, 0.644904,
		-0.055449, -0.943970, 0.325339,
		35.267281, 36.366364, 52.976753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953014, 36.803226, 52.895645>,  <35.306095, 37.027142, 52.749016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953014, 36.803226, 52.895645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751629, 36.461132, 52.846508>,  <35.630798, 36.255875, 52.817024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751629, 36.461132, 52.846508>,  <35.953014, 36.803226, 52.895645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751629, 36.461132, 52.846508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703052, -0.322860, -0.633624,
		0.502238, -0.405373, 0.763826,
		-0.503463, -0.855239, -0.122845,
		35.600590, 36.204559, 52.809654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445168, 36.264519, 52.954197>,  <35.953014, 36.803226, 52.895645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445168, 36.264519, 52.954197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130993, 36.129745, 52.746517>,  <35.942490, 36.048882, 52.621910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130993, 36.129745, 52.746517>,  <36.445168, 36.264519, 52.954197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130993, 36.129745, 52.746517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613779, -0.315854, -0.723541,
		0.079795, -0.886967, 0.454887,
		-0.785435, -0.336935, -0.519198,
		35.895363, 36.028664, 52.590759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755764, 35.738686, 52.619907>,  <36.445168, 36.264519, 52.954197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755764, 35.738686, 52.619907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417660, 35.778866, 52.409977>,  <36.214798, 35.802975, 52.284019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417660, 35.778866, 52.409977>,  <36.755764, 35.738686, 52.619907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417660, 35.778866, 52.409977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488341, -0.253492, -0.835024,
		-0.216920, -0.962107, 0.165212,
		-0.845263, 0.100454, -0.524824,
		36.164082, 35.809002, 52.252529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628578, 35.082760, 52.221573>,  <36.755764, 35.738686, 52.619907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628578, 35.082760, 52.221573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410366, 35.356136, 52.027542>,  <36.279438, 35.520164, 51.911125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410366, 35.356136, 52.027542>,  <36.628578, 35.082760, 52.221573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410366, 35.356136, 52.027542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491696, -0.207713, -0.845630,
		-0.678698, -0.699828, -0.222732,
		-0.545531, 0.683444, -0.485077,
		36.246708, 35.561169, 51.882019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316208, 34.756130, 51.695492>,  <36.628578, 35.082760, 52.221573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316208, 34.756130, 51.695492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293713, 35.142395, 51.594028>,  <36.280216, 35.374153, 51.533150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293713, 35.142395, 51.594028>,  <36.316208, 34.756130, 51.695492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293713, 35.142395, 51.594028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330179, -0.221777, -0.917495,
		-0.942241, -0.135355, -0.306366,
		-0.056242, 0.965657, -0.253659,
		36.276840, 35.432091, 51.517929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980507, 34.766361, 51.071926>,  <36.316208, 34.756130, 51.695492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980507, 34.766361, 51.071926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147827, 35.129623, 51.078579>,  <36.248219, 35.347580, 51.082573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147827, 35.129623, 51.078579>,  <35.980507, 34.766361, 51.071926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147827, 35.129623, 51.078579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332404, -0.136012, -0.933278,
		-0.845299, 0.395922, -0.358769,
		0.418302, 0.908155, 0.016635,
		36.273319, 35.402069, 51.083569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797398, 35.110409, 50.411812>,  <35.980507, 34.766361, 51.071926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797398, 35.110409, 50.411812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117065, 35.309029, 50.547325>,  <36.308865, 35.428200, 50.628632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117065, 35.309029, 50.547325>,  <35.797398, 35.110409, 50.411812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117065, 35.309029, 50.547325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404097, -0.026546, -0.914331,
		-0.445014, 0.867604, -0.221867,
		0.799167, 0.496546, 0.338783,
		36.356815, 35.457993, 50.648960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838196, 35.790127, 50.055721>,  <35.797398, 35.110409, 50.411812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838196, 35.790127, 50.055721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184425, 35.647945, 50.196819>,  <36.392162, 35.562637, 50.281479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184425, 35.647945, 50.196819>,  <35.838196, 35.790127, 50.055721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184425, 35.647945, 50.196819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383494, 0.017515, -0.923377,
		0.322042, 0.934529, 0.151476,
		0.865575, -0.355457, 0.352746,
		36.444099, 35.541309, 50.302643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314518, 36.225021, 49.536427>,  <35.838196, 35.790127, 50.055721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314518, 36.225021, 49.536427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467857, 36.551842, 49.364162>,  <36.559860, 36.747936, 49.260803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467857, 36.551842, 49.364162>,  <36.314518, 36.225021, 49.536427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467857, 36.551842, 49.364162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923530, 0.344969, -0.167597,
		0.011627, 0.461972, 0.886818,
		0.383350, 0.817054, -0.430656,
		36.582863, 36.796959, 49.234966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039387, 36.721313, 50.034355>,  <36.314518, 36.225021, 49.536427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039387, 36.721313, 50.034355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.095242, 36.839752, 49.656395>,  <36.128754, 36.910816, 49.429619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.095242, 36.839752, 49.656395>,  <36.039387, 36.721313, 50.034355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095242, 36.839752, 49.656395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987251, 0.115253, -0.109784,
		0.076396, 0.948180, 0.308412,
		0.139641, 0.296093, -0.944897,
		36.137135, 36.928581, 49.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750961, 37.389973, 49.986656>,  <36.039387, 36.721313, 50.034355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750961, 37.389973, 49.986656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725704, 37.208374, 49.631153>,  <35.710548, 37.099415, 49.417850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725704, 37.208374, 49.631153>,  <35.750961, 37.389973, 49.986656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725704, 37.208374, 49.631153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938881, 0.328987, -0.101346,
		0.338402, 0.828041, -0.447026,
		-0.063147, -0.454000, -0.888761,
		35.706760, 37.072174, 49.364525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433311, 37.905560, 49.520451>,  <35.750961, 37.389973, 49.986656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433311, 37.905560, 49.520451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370911, 37.567619, 49.315746>,  <35.333469, 37.364857, 49.192924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370911, 37.567619, 49.315746>,  <35.433311, 37.905560, 49.520451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370911, 37.567619, 49.315746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980182, 0.196447, -0.025520,
		0.122095, 0.497638, -0.858749,
		-0.155999, -0.844846, -0.511761,
		35.324112, 37.314167, 49.162216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018238, 38.102440, 48.891476>,  <35.433311, 37.905560, 49.520451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018238, 38.102440, 48.891476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970715, 37.720871, 49.001690>,  <34.942200, 37.491932, 49.067818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970715, 37.720871, 49.001690>,  <35.018238, 38.102440, 48.891476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970715, 37.720871, 49.001690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977043, 0.161738, 0.138662,
		-0.176838, -0.252741, -0.951236,
		-0.118805, -0.953919, 0.275540,
		34.935074, 37.434696, 49.084351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460236, 37.934731, 48.481270>,  <35.018238, 38.102440, 48.891476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460236, 37.934731, 48.481270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498646, 37.674438, 48.782555>,  <34.521690, 37.518265, 48.963326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498646, 37.674438, 48.782555>,  <34.460236, 37.934731, 48.481270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498646, 37.674438, 48.782555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969569, 0.110057, 0.218686,
		-0.225202, -0.751292, -0.620359,
		0.096023, -0.650729, 0.753214,
		34.527454, 37.479221, 49.008518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705643, 37.772270, 48.643303>,  <34.460236, 37.934731, 48.481270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705643, 37.772270, 48.643303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897900, 37.557858, 48.920906>,  <34.013252, 37.429211, 49.087467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897900, 37.557858, 48.920906>,  <33.705643, 37.772270, 48.643303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897900, 37.557858, 48.920906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848905, -0.085981, 0.521505,
		-0.219871, -0.839807, -0.496367,
		0.480642, -0.536033, 0.694012,
		34.042091, 37.397049, 49.129108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225868, 37.126179, 48.918194>,  <33.705643, 37.772270, 48.643303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225868, 37.126179, 48.918194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504589, 37.166084, 49.202312>,  <33.671822, 37.190029, 49.372784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504589, 37.166084, 49.202312>,  <33.225868, 37.126179, 48.918194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504589, 37.166084, 49.202312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709927, -0.045376, 0.702812,
		0.102349, -0.993975, 0.039211,
		0.696799, 0.099769, 0.710294,
		33.713627, 37.196014, 49.415401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092445, 36.635452, 49.461849>,  <33.225868, 37.126179, 48.918194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092445, 36.635452, 49.461849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263557, 36.969444, 49.600311>,  <33.366222, 37.169838, 49.683388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263557, 36.969444, 49.600311>,  <33.092445, 36.635452, 49.461849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263557, 36.969444, 49.600311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651452, 0.019326, 0.758444,
		0.626593, -0.549946, 0.552214,
		0.427775, 0.834976, 0.346154,
		33.391891, 37.219936, 49.704159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996479, 36.542362, 50.286739>,  <33.092445, 36.635452, 49.461849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996479, 36.542362, 50.286739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079586, 36.929688, 50.231304>,  <33.129448, 37.162083, 50.198044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079586, 36.929688, 50.231304>,  <32.996479, 36.542362, 50.286739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079586, 36.929688, 50.231304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536917, 0.231322, 0.811301,
		0.817651, -0.094148, 0.567964,
		0.207765, 0.968311, -0.138592,
		33.141914, 37.220181, 50.189728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970867, 36.715778, 50.918545>,  <32.996479, 36.542362, 50.286739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970867, 36.715778, 50.918545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956043, 37.077972, 50.749443>,  <32.947147, 37.295288, 50.647980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956043, 37.077972, 50.749443>,  <32.970867, 36.715778, 50.918545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956043, 37.077972, 50.749443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732189, 0.263303, 0.628149,
		0.680093, 0.332819, 0.653227,
		-0.037063, 0.905485, -0.422756,
		32.944923, 37.349617, 50.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035709, 37.229790, 51.523556>,  <32.970867, 36.715778, 50.918545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035709, 37.229790, 51.523556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867126, 37.415524, 51.211975>,  <32.765976, 37.526962, 51.025024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867126, 37.415524, 51.211975>,  <33.035709, 37.229790, 51.523556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867126, 37.415524, 51.211975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593004, 0.508754, 0.624112,
		0.686092, 0.724959, 0.060935,
		-0.421455, 0.464332, -0.778955,
		32.740688, 37.554825, 50.978287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107235, 37.905354, 51.672123>,  <33.035709, 37.229790, 51.523556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107235, 37.905354, 51.672123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823322, 37.903992, 51.390358>,  <32.652977, 37.903175, 51.221298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823322, 37.903992, 51.390358>,  <33.107235, 37.905354, 51.672123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823322, 37.903992, 51.390358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600109, 0.526598, 0.602132,
		0.368895, 0.850108, -0.375811,
		-0.709779, -0.003404, -0.704416,
		32.610390, 37.902969, 51.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925148, 38.691498, 51.428844>,  <33.107235, 37.905354, 51.672123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925148, 38.691498, 51.428844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608322, 38.453712, 51.373344>,  <32.418228, 38.311043, 51.340042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608322, 38.453712, 51.373344>,  <32.925148, 38.691498, 51.428844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608322, 38.453712, 51.373344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501026, 0.503224, 0.704088,
		-0.348730, 0.627200, -0.696425,
		-0.792061, -0.594463, -0.138754,
		32.370705, 38.275375, 51.331718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332256, 39.205193, 51.479599>,  <32.925148, 38.691498, 51.428844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332256, 39.205193, 51.479599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214108, 38.826260, 51.529099>,  <32.143219, 38.598900, 51.558796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214108, 38.826260, 51.529099>,  <32.332256, 39.205193, 51.479599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214108, 38.826260, 51.529099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445199, 0.251082, 0.859509,
		-0.845314, 0.198779, -0.495914,
		-0.295368, -0.947336, 0.123747,
		32.125496, 38.542061, 51.566223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608753, 39.260769, 51.500095>,  <32.332256, 39.205193, 51.479599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608753, 39.260769, 51.500095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.728886, 38.926311, 51.683685>,  <31.800966, 38.725636, 51.793839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.728886, 38.926311, 51.683685>,  <31.608753, 39.260769, 51.500095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728886, 38.926311, 51.683685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419323, 0.316458, 0.850895,
		-0.856719, -0.448012, -0.255572,
		0.300333, -0.836146, 0.458977,
		31.818985, 38.675468, 51.821377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055952, 39.216339, 51.915337>,  <31.608753, 39.260769, 51.500095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055952, 39.216339, 51.915337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311722, 38.932896, 52.034672>,  <31.465183, 38.762829, 52.106274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311722, 38.932896, 52.034672>,  <31.055952, 39.216339, 51.915337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311722, 38.932896, 52.034672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338158, 0.089290, 0.936844,
		-0.690498, -0.699926, -0.182529,
		0.639423, -0.708612, 0.298340,
		31.503550, 38.720310, 52.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607912, 38.550930, 52.176258>,  <31.055952, 39.216339, 51.915337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607912, 38.550930, 52.176258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.975805, 38.555847, 52.333199>,  <31.196541, 38.558796, 52.427361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.975805, 38.555847, 52.333199>,  <30.607912, 38.550930, 52.176258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975805, 38.555847, 52.333199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392311, 0.062977, 0.917674,
		-0.013435, -0.997939, 0.062742,
		0.919735, 0.012286, 0.392349,
		31.251726, 38.559532, 52.450905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601622, 38.063187, 52.828564>,  <30.607912, 38.550930, 52.176258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601622, 38.063187, 52.828564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927378, 38.290325, 52.876431>,  <31.122831, 38.426609, 52.905151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927378, 38.290325, 52.876431>,  <30.601622, 38.063187, 52.828564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927378, 38.290325, 52.876431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201150, 0.082793, 0.976055,
		0.544343, -0.818959, 0.181648,
		0.814389, 0.567848, 0.119666,
		31.171694, 38.460678, 52.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786289, 37.915112, 53.530231>,  <30.601622, 38.063187, 52.828564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786289, 37.915112, 53.530231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983267, 38.257626, 53.467903>,  <31.101454, 38.463135, 53.430508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983267, 38.257626, 53.467903>,  <30.786289, 37.915112, 53.530231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983267, 38.257626, 53.467903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256239, 0.313738, 0.914281,
		0.831770, -0.410303, 0.373911,
		0.492442, 0.856283, -0.155822,
		31.131001, 38.514511, 53.421158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291561, 37.845749, 53.983242>,  <30.786289, 37.915112, 53.530231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291561, 37.845749, 53.983242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197254, 38.221268, 53.882782>,  <31.140671, 38.446579, 53.822506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197254, 38.221268, 53.882782>,  <31.291561, 37.845749, 53.983242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197254, 38.221268, 53.882782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374115, 0.150838, 0.915033,
		0.896913, 0.309692, 0.315656,
		-0.235766, 0.938797, -0.251149,
		31.126524, 38.502907, 53.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659994, 38.292210, 54.473114>,  <31.291561, 37.845749, 53.983242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659994, 38.292210, 54.473114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373751, 38.527027, 54.321701>,  <31.202005, 38.667919, 54.230854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373751, 38.527027, 54.321701>,  <31.659994, 38.292210, 54.473114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373751, 38.527027, 54.321701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139501, 0.410887, 0.900950,
		0.684430, 0.697533, -0.212141,
		-0.715608, 0.587043, -0.378530,
		31.159069, 38.703140, 54.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733707, 38.949646, 54.839191>,  <31.659994, 38.292210, 54.473114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733707, 38.949646, 54.839191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367559, 38.934288, 54.678879>,  <31.147871, 38.925072, 54.582691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367559, 38.934288, 54.678879>,  <31.733707, 38.949646, 54.839191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367559, 38.934288, 54.678879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372432, 0.458896, 0.806665,
		0.152944, 0.887660, -0.434359,
		-0.915370, -0.038394, -0.400779,
		31.092949, 38.922771, 54.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502350, 39.496597, 55.166992>,  <31.733707, 38.949646, 54.839191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502350, 39.496597, 55.166992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171646, 39.333809, 55.011635>,  <30.973225, 39.236137, 54.918423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171646, 39.333809, 55.011635>,  <31.502350, 39.496597, 55.166992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171646, 39.333809, 55.011635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520371, 0.290927, 0.802855,
		-0.213744, 0.865874, -0.452301,
		-0.826757, -0.406970, -0.388392,
		30.923618, 39.211720, 54.895119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981419, 39.857162, 55.297832>,  <31.502350, 39.496597, 55.166992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981419, 39.857162, 55.297832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807728, 39.498192, 55.266678>,  <30.703514, 39.282810, 55.247986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807728, 39.498192, 55.266678>,  <30.981419, 39.857162, 55.297832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807728, 39.498192, 55.266678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552407, 0.196986, 0.809965,
		-0.711543, 0.394735, -0.581283,
		-0.434226, -0.897430, -0.077891,
		30.677460, 39.228962, 55.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167652, 39.936157, 55.385250>,  <30.981419, 39.857162, 55.297832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167652, 39.936157, 55.385250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219183, 39.546490, 55.459435>,  <30.250101, 39.312691, 55.503944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219183, 39.546490, 55.459435>,  <30.167652, 39.936157, 55.385250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219183, 39.546490, 55.459435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682678, 0.048527, 0.729106,
		-0.719273, -0.220541, -0.658793,
		0.128829, -0.974169, 0.185463,
		30.257832, 39.254238, 55.515072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632864, 39.518002, 55.231476>,  <30.167652, 39.936157, 55.385250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632864, 39.518002, 55.231476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810644, 39.298744, 55.514885>,  <29.917313, 39.167191, 55.684929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810644, 39.298744, 55.514885>,  <29.632864, 39.518002, 55.231476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810644, 39.298744, 55.514885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796641, 0.119854, 0.592451,
		-0.409668, -0.827752, -0.383405,
		0.444450, -0.548144, 0.708521,
		29.943979, 39.134300, 55.727440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146011, 39.149689, 55.525970>,  <29.632864, 39.518002, 55.231476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146011, 39.149689, 55.525970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438601, 39.151356, 55.798714>,  <29.614155, 39.152355, 55.962360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438601, 39.151356, 55.798714>,  <29.146011, 39.149689, 55.525970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438601, 39.151356, 55.798714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681854, 0.011231, 0.731402,
		-0.004619, -0.999928, 0.011047,
		0.731474, 0.004154, 0.681857,
		29.658043, 39.152607, 56.003269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966406, 38.759621, 56.199345>,  <29.146011, 39.149689, 55.525970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966406, 38.759621, 56.199345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238350, 39.024403, 56.325588>,  <29.401516, 39.183270, 56.401333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238350, 39.024403, 56.325588>,  <28.966406, 38.759621, 56.199345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238350, 39.024403, 56.325588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560426, 0.191402, 0.805784,
		0.472982, -0.724696, 0.501102,
		0.679861, 0.661952, 0.315609,
		29.442308, 39.222988, 56.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662577, 38.813179, 56.791412>,  <28.966406, 38.759621, 56.199345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662577, 38.813179, 56.791412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.916824, 39.118237, 56.743481>,  <29.069372, 39.301273, 56.714722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.916824, 39.118237, 56.743481>,  <28.662577, 38.813179, 56.791412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916824, 39.118237, 56.743481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475961, 0.509340, 0.716962,
		0.607824, -0.398678, 0.686736,
		0.635618, 0.762646, -0.119834,
		29.107510, 39.347031, 56.707531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906256, 38.972092, 57.370255>,  <28.662577, 38.813179, 56.791412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906256, 38.972092, 57.370255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994156, 39.327217, 57.208515>,  <29.046896, 39.540291, 57.111473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994156, 39.327217, 57.208515>,  <28.906256, 38.972092, 57.370255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994156, 39.327217, 57.208515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385544, 0.459774, 0.799977,
		0.896139, -0.019901, 0.443327,
		0.219750, 0.887813, -0.404349,
		29.060081, 39.593559, 57.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359823, 39.369133, 57.808949>,  <28.906256, 38.972092, 57.370255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359823, 39.369133, 57.808949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.165100, 39.627991, 57.574265>,  <29.048267, 39.783306, 57.433456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.165100, 39.627991, 57.574265>,  <29.359823, 39.369133, 57.808949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165100, 39.627991, 57.574265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334774, 0.482160, 0.809597,
		0.806812, 0.590532, -0.018072,
		-0.486806, 0.647143, -0.586707,
		29.019058, 39.822132, 57.398251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575377, 40.087048, 57.960785>,  <29.359823, 39.369133, 57.808949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575377, 40.087048, 57.960785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212940, 40.139111, 57.799759>,  <28.995480, 40.170349, 57.703144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212940, 40.139111, 57.799759>,  <29.575377, 40.087048, 57.960785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212940, 40.139111, 57.799759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219978, 0.667846, 0.711050,
		0.361402, 0.732831, -0.576496,
		-0.906089, 0.130158, -0.402568,
		28.941113, 40.178158, 57.678989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419987, 40.850330, 57.949360>,  <29.575377, 40.087048, 57.960785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419987, 40.850330, 57.949360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052467, 40.708008, 57.880997>,  <28.831955, 40.622616, 57.839977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052467, 40.708008, 57.880997>,  <29.419987, 40.850330, 57.949360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052467, 40.708008, 57.880997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369105, 0.621009, 0.691454,
		-0.139889, 0.698390, -0.701913,
		-0.918800, -0.355806, -0.170907,
		28.776827, 40.601265, 57.829723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986944, 41.359150, 58.106827>,  <29.419987, 40.850330, 57.949360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986944, 41.359150, 58.106827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722870, 41.059681, 58.130997>,  <28.564426, 40.880001, 58.145496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722870, 41.059681, 58.130997>,  <28.986944, 41.359150, 58.106827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722870, 41.059681, 58.130997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469800, 0.474358, 0.744495,
		-0.586043, 0.463117, -0.664888,
		-0.660184, -0.748670, 0.060422,
		28.524815, 40.835079, 58.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427620, 41.705372, 58.250027>,  <28.986944, 41.359150, 58.106827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427620, 41.705372, 58.250027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349623, 41.332657, 58.372505>,  <28.302824, 41.109028, 58.445992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349623, 41.332657, 58.372505>,  <28.427620, 41.705372, 58.250027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349623, 41.332657, 58.372505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454732, 0.362493, 0.813521,
		-0.869020, 0.019395, -0.494397,
		-0.194994, -0.931785, 0.306194,
		28.291124, 41.053120, 58.464363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699097, 41.575310, 58.353230>,  <28.427620, 41.705372, 58.250027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699097, 41.575310, 58.353230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863894, 41.302258, 58.594650>,  <27.962770, 41.138424, 58.739502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863894, 41.302258, 58.594650>,  <27.699097, 41.575310, 58.353230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863894, 41.302258, 58.594650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551763, 0.340228, 0.761448,
		-0.725136, -0.646726, -0.236482,
		0.411990, -0.682635, 0.603551,
		27.987490, 41.097466, 58.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120777, 41.122131, 58.643383>,  <27.699097, 41.575310, 58.353230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120777, 41.122131, 58.643383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454903, 41.148182, 58.861744>,  <27.655378, 41.163815, 58.992760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454903, 41.148182, 58.861744>,  <27.120777, 41.122131, 58.643383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454903, 41.148182, 58.861744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543089, 0.252110, 0.800934,
		-0.085464, -0.965504, 0.245961,
		0.835315, 0.065128, 0.545901,
		27.705498, 41.167721, 59.025513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985655, 40.694492, 59.391422>,  <27.120777, 41.122131, 58.643383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985655, 40.694492, 59.391422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264833, 40.980637, 59.377968>,  <27.432341, 41.152325, 59.369896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264833, 40.980637, 59.377968>,  <26.985655, 40.694492, 59.391422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264833, 40.980637, 59.377968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522925, 0.541157, 0.658558,
		0.489305, -0.442052, 0.751778,
		0.697947, 0.715360, -0.033632,
		27.474216, 41.195244, 59.367878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768320, 40.424721, 58.644360>,  <26.985655, 40.694492, 59.391422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768320, 40.424721, 58.644360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398130, 40.286491, 58.706429>,  <26.176016, 40.203556, 58.743668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398130, 40.286491, 58.706429>,  <26.768320, 40.424721, 58.644360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398130, 40.286491, 58.706429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098511, -0.175972, -0.979454,
		0.365775, -0.921746, 0.128815,
		-0.925475, -0.345570, 0.155168,
		26.120487, 40.182819, 58.752979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846279, 39.685066, 58.363857>,  <26.768320, 40.424721, 58.644360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846279, 39.685066, 58.363857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.466881, 39.810963, 58.378239>,  <26.239241, 39.886501, 58.386868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.466881, 39.810963, 58.378239>,  <26.846279, 39.685066, 58.363857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466881, 39.810963, 58.378239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159085, -0.375086, -0.913237,
		-0.273943, -0.871923, 0.405838,
		-0.948498, 0.314738, 0.035957,
		26.182331, 39.905384, 58.389027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472586, 39.145370, 58.095455>,  <26.846279, 39.685066, 58.363857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472586, 39.145370, 58.095455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.230640, 39.460369, 58.048157>,  <26.085474, 39.649368, 58.019779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.230640, 39.460369, 58.048157>,  <26.472586, 39.145370, 58.095455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230640, 39.460369, 58.048157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113747, -0.232407, -0.965944,
		-0.788163, -0.570814, 0.230151,
		-0.604864, 0.787501, -0.118246,
		26.049181, 39.696621, 58.012684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753122, 38.925209, 57.860836>,  <26.472586, 39.145370, 58.095455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753122, 38.925209, 57.860836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.843756, 39.297680, 57.746590>,  <25.898136, 39.521160, 57.678043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.843756, 39.297680, 57.746590>,  <25.753122, 38.925209, 57.860836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843756, 39.297680, 57.746590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216171, -0.237852, -0.946941,
		-0.949700, 0.276303, 0.147399,
		0.226583, 0.931173, -0.285616,
		25.911730, 39.577030, 57.660904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353277, 39.008564, 57.301785>,  <25.753122, 38.925209, 57.860836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353277, 39.008564, 57.301785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.603174, 39.316109, 57.247311>,  <25.753113, 39.500637, 57.214626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.603174, 39.316109, 57.247311>,  <25.353277, 39.008564, 57.301785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603174, 39.316109, 57.247311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043390, -0.139959, -0.989206,
		-0.779626, 0.623907, -0.054077,
		0.624741, 0.768864, -0.136187,
		25.790596, 39.546768, 57.206455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206482, 39.305553, 56.605988>,  <25.353277, 39.008564, 57.301785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206482, 39.305553, 56.605988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.572691, 39.455727, 56.663773>,  <25.792416, 39.545830, 56.698444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.572691, 39.455727, 56.663773>,  <25.206482, 39.305553, 56.605988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572691, 39.455727, 56.663773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203133, -0.121488, -0.971585,
		-0.347216, 0.918852, -0.187488,
		0.915520, 0.375435, 0.144467,
		25.847347, 39.568356, 56.707111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364286, 39.937473, 56.095100>,  <25.206482, 39.305553, 56.605988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364286, 39.937473, 56.095100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.728333, 39.827156, 56.218796>,  <25.946760, 39.760967, 56.293015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.728333, 39.827156, 56.218796>,  <25.364286, 39.937473, 56.095100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728333, 39.827156, 56.218796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340173, 0.071198, -0.937664,
		0.236582, 0.958577, 0.158615,
		0.910116, -0.275791, 0.309237,
		26.001368, 39.744419, 56.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816463, 40.369423, 55.702824>,  <25.364286, 39.937473, 56.095100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816463, 40.369423, 55.702824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.031256, 40.062832, 55.843773>,  <26.160131, 39.878880, 55.928341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.031256, 40.062832, 55.843773>,  <25.816463, 40.369423, 55.702824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031256, 40.062832, 55.843773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564705, 0.016286, -0.825132,
		0.626705, 0.642067, 0.441578,
		0.536982, -0.766476, 0.352372,
		26.192350, 39.832890, 55.949486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423971, 40.620903, 55.574360>,  <25.816463, 40.369423, 55.702824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423971, 40.620903, 55.574360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.462818, 40.224941, 55.615639>,  <26.486126, 39.987362, 55.640408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.462818, 40.224941, 55.615639>,  <26.423971, 40.620903, 55.574360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462818, 40.224941, 55.615639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610187, -0.022697, -0.791932,
		0.786282, 0.139884, 0.601825,
		0.097119, -0.989908, 0.103202,
		26.491953, 39.927967, 55.646599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136534, 40.501369, 55.470665>,  <26.423971, 40.620903, 55.574360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136534, 40.501369, 55.470665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970238, 40.144714, 55.398952>,  <26.870461, 39.930721, 55.355923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970238, 40.144714, 55.398952>,  <27.136534, 40.501369, 55.470665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970238, 40.144714, 55.398952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542903, -0.085149, -0.835467,
		0.729668, -0.444672, 0.519473,
		-0.415742, -0.891637, -0.179283,
		26.845514, 39.877224, 55.345169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721586, 40.147778, 55.343262>,  <27.136534, 40.501369, 55.470665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721586, 40.147778, 55.343262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402382, 39.948643, 55.207420>,  <27.210859, 39.829163, 55.125916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402382, 39.948643, 55.207420>,  <27.721586, 40.147778, 55.343262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402382, 39.948643, 55.207420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472817, -0.167813, -0.865033,
		0.373660, -0.850877, 0.369305,
		-0.798011, -0.497842, -0.339605,
		27.162979, 39.799290, 55.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975283, 39.622536, 55.163303>,  <27.721586, 40.147778, 55.343262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975283, 39.622536, 55.163303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632866, 39.625904, 54.956570>,  <27.427416, 39.627926, 54.832531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632866, 39.625904, 54.956570>,  <27.975283, 39.622536, 55.163303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632866, 39.625904, 54.956570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497474, -0.258134, -0.828183,
		-0.140390, -0.966072, 0.216783,
		-0.856044, 0.008424, -0.516835,
		27.376053, 39.628433, 54.801517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827744, 38.934952, 54.909767>,  <27.975283, 39.622536, 55.163303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827744, 38.934952, 54.909767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630730, 39.181496, 54.663998>,  <27.512522, 39.329422, 54.516537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630730, 39.181496, 54.663998>,  <27.827744, 38.934952, 54.909767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630730, 39.181496, 54.663998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447093, -0.426509, -0.786256,
		-0.746672, -0.661960, -0.065501,
		-0.492533, 0.616360, -0.614420,
		27.482969, 39.366405, 54.479671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585840, 38.512489, 54.452358>,  <27.827744, 38.934952, 54.909767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585840, 38.512489, 54.452358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.570728, 38.875935, 54.285992>,  <27.561661, 39.094002, 54.186172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.570728, 38.875935, 54.285992>,  <27.585840, 38.512489, 54.452358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570728, 38.875935, 54.285992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357309, -0.376415, -0.854776,
		-0.933222, -0.180906, -0.310436,
		-0.037781, 0.908617, -0.415918,
		27.559395, 39.148521, 54.161217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521984, 38.314491, 53.793777>,  <27.585840, 38.512489, 54.452358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521984, 38.314491, 53.793777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.622837, 38.698082, 53.741943>,  <27.683350, 38.928238, 53.710842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.622837, 38.698082, 53.741943>,  <27.521984, 38.314491, 53.793777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622837, 38.698082, 53.741943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406635, -0.226507, -0.885067,
		-0.878110, 0.170463, -0.447064,
		0.252134, 0.958977, -0.129581,
		27.698477, 38.985775, 53.703068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219408, 38.568489, 53.140499>,  <27.521984, 38.314491, 53.793777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219408, 38.568489, 53.140499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528435, 38.803913, 53.235775>,  <27.713850, 38.945168, 53.292942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528435, 38.803913, 53.235775>,  <27.219408, 38.568489, 53.140499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528435, 38.803913, 53.235775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439716, -0.225336, -0.869410,
		-0.458030, 0.776412, -0.432888,
		0.772566, 0.588564, 0.238190,
		27.760204, 38.980484, 53.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355583, 38.962914, 52.575985>,  <27.219408, 38.568489, 53.140499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355583, 38.962914, 52.575985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704220, 39.019814, 52.763641>,  <27.913401, 39.053955, 52.876236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704220, 39.019814, 52.763641>,  <27.355583, 38.962914, 52.575985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704220, 39.019814, 52.763641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485842, -0.378465, -0.787859,
		0.065481, 0.914620, -0.398977,
		0.871591, 0.142250, 0.469142,
		27.965696, 39.062489, 52.904385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738586, 39.381870, 52.104618>,  <27.355583, 38.962914, 52.575985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738586, 39.381870, 52.104618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992361, 39.192413, 52.348965>,  <28.144627, 39.078739, 52.495571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992361, 39.192413, 52.348965>,  <27.738586, 39.381870, 52.104618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992361, 39.192413, 52.348965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509643, -0.337861, -0.791274,
		0.581166, 0.813336, 0.027036,
		0.634437, -0.473640, 0.610864,
		28.182692, 39.050320, 52.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396835, 39.552883, 51.820946>,  <27.738586, 39.381870, 52.104618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396835, 39.552883, 51.820946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443918, 39.222630, 52.041664>,  <28.472168, 39.024479, 52.174095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443918, 39.222630, 52.041664>,  <28.396835, 39.552883, 51.820946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443918, 39.222630, 52.041664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592505, -0.387527, -0.706230,
		0.796921, 0.410069, 0.443576,
		0.117705, -0.825631, 0.551796,
		28.479229, 38.974941, 52.207203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065788, 39.314732, 51.850151>,  <28.396835, 39.552883, 51.820946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065788, 39.314732, 51.850151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.918140, 38.957253, 51.952175>,  <28.829552, 38.742764, 52.013390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.918140, 38.957253, 51.952175>,  <29.065788, 39.314732, 51.850151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918140, 38.957253, 51.952175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755882, -0.448359, -0.477093,
		0.540736, 0.016693, 0.841027,
		-0.369117, -0.893698, 0.255062,
		28.807405, 38.689144, 52.028694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598522, 38.931751, 52.175476>,  <29.065788, 39.314732, 51.850151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598522, 38.931751, 52.175476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332697, 38.670044, 52.031097>,  <29.173201, 38.513020, 51.944469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332697, 38.670044, 52.031097>,  <29.598522, 38.931751, 52.175476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332697, 38.670044, 52.031097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717276, -0.423168, -0.553573,
		0.209448, -0.626782, 0.750517,
		-0.664565, -0.654273, -0.360944,
		29.133327, 38.473763, 51.922813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845387, 38.169548, 52.335785>,  <29.598522, 38.931751, 52.175476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845387, 38.169548, 52.335785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591175, 38.185501, 52.027367>,  <29.438648, 38.195072, 51.842316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591175, 38.185501, 52.027367>,  <29.845387, 38.169548, 52.335785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591175, 38.185501, 52.027367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659254, -0.491765, -0.568816,
		-0.401858, -0.869814, 0.286239,
		-0.635527, 0.039879, -0.771048,
		29.400517, 38.197464, 51.796051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041718, 37.591408, 51.981327>,  <29.845387, 38.169548, 52.335785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041718, 37.591408, 51.981327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823540, 37.759865, 51.691463>,  <29.692633, 37.860939, 51.517544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823540, 37.759865, 51.691463>,  <30.041718, 37.591408, 51.981327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823540, 37.759865, 51.691463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505564, -0.524283, -0.685224,
		-0.668502, -0.740113, 0.073054,
		-0.545444, 0.421140, -0.724660,
		29.659906, 37.886208, 51.474064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709402, 37.033779, 51.572456>,  <30.041718, 37.591408, 51.981327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709402, 37.033779, 51.572456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716352, 37.353947, 51.332783>,  <29.720524, 37.546047, 51.188980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716352, 37.353947, 51.332783>,  <29.709402, 37.033779, 51.572456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716352, 37.353947, 51.332783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307816, -0.574451, -0.758456,
		-0.951287, -0.171258, -0.256365,
		0.017377, 0.800423, -0.599184,
		29.721565, 37.594074, 51.153027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436621, 36.749557, 51.002937>,  <29.709402, 37.033779, 51.572456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436621, 36.749557, 51.002937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610189, 37.087845, 50.878704>,  <29.714331, 37.290817, 50.804165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610189, 37.087845, 50.878704>,  <29.436621, 36.749557, 51.002937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610189, 37.087845, 50.878704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177495, -0.418223, -0.890834,
		-0.883292, 0.331427, -0.331588,
		0.433924, 0.845722, -0.310587,
		29.740366, 37.341560, 50.785526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300938, 36.819618, 50.351021>,  <29.436621, 36.749557, 51.002937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300938, 36.819618, 50.351021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.624315, 37.052116, 50.388039>,  <29.818342, 37.191616, 50.410248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.624315, 37.052116, 50.388039>,  <29.300938, 36.819618, 50.351021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624315, 37.052116, 50.388039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336406, -0.327310, -0.883006,
		-0.482955, 0.744996, -0.460148,
		0.808446, 0.581249, 0.092545,
		29.866850, 37.226490, 50.415802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354576, 37.241634, 49.728867>,  <29.300938, 36.819618, 50.351021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354576, 37.241634, 49.728867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712450, 37.198174, 49.902180>,  <29.927174, 37.172096, 50.006168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712450, 37.198174, 49.902180>,  <29.354576, 37.241634, 49.728867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712450, 37.198174, 49.902180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363546, -0.386523, -0.847605,
		0.259566, 0.915858, -0.306318,
		0.894684, -0.108649, 0.433285,
		29.980856, 37.165581, 50.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677876, 37.482784, 49.208076>,  <29.354576, 37.241634, 49.728867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677876, 37.482784, 49.208076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938627, 37.301815, 49.451508>,  <30.095078, 37.193233, 49.597565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938627, 37.301815, 49.451508>,  <29.677876, 37.482784, 49.208076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938627, 37.301815, 49.451508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504744, -0.340069, -0.793465,
		0.565941, 0.824419, 0.006675,
		0.651878, -0.452424, 0.608579,
		30.134190, 37.166088, 49.634083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396456, 37.605915, 48.928345>,  <29.677876, 37.482784, 49.208076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396456, 37.605915, 48.928345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442772, 37.274071, 49.146824>,  <30.470562, 37.074963, 49.277912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442772, 37.274071, 49.146824>,  <30.396456, 37.605915, 48.928345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442772, 37.274071, 49.146824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539849, -0.409028, -0.735704,
		0.833760, 0.380053, 0.400504,
		0.115789, -0.829612, 0.546202,
		30.477509, 37.025188, 49.310684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978701, 37.324009, 48.737289>,  <30.396456, 37.605915, 48.928345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978701, 37.324009, 48.737289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842302, 37.006912, 48.939396>,  <30.760464, 36.816654, 49.060658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842302, 37.006912, 48.939396>,  <30.978701, 37.324009, 48.737289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842302, 37.006912, 48.939396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593614, -0.598341, -0.538154,
		0.728934, 0.116424, 0.674611,
		-0.340994, -0.792738, 0.505262,
		30.740004, 36.769093, 49.090973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537462, 36.892075, 48.817341>,  <30.978701, 37.324009, 48.737289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537462, 36.892075, 48.817341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.236639, 36.640701, 48.896820>,  <31.056145, 36.489876, 48.944508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.236639, 36.640701, 48.896820>,  <31.537462, 36.892075, 48.817341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236639, 36.640701, 48.896820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543401, -0.761800, -0.352669,
		0.372996, -0.157255, 0.914409,
		-0.752056, -0.628435, 0.198696,
		31.011023, 36.452171, 48.956429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811155, 36.214275, 49.096310>,  <31.537462, 36.892075, 48.817341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811155, 36.214275, 49.096310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447515, 36.086300, 48.989594>,  <31.229332, 36.009514, 48.925564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447515, 36.086300, 48.989594>,  <31.811155, 36.214275, 49.096310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447515, 36.086300, 48.989594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415952, -0.732188, -0.539338,
		-0.022784, -0.601283, 0.798711,
		-0.909101, -0.319938, -0.266787,
		31.174786, 35.990318, 48.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718311, 35.442577, 49.290051>,  <31.811155, 36.214275, 49.096310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718311, 35.442577, 49.290051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476637, 35.532539, 48.984272>,  <31.331633, 35.586517, 48.800804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476637, 35.532539, 48.984272>,  <31.718311, 35.442577, 49.290051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476637, 35.532539, 48.984272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346517, -0.789730, -0.506214,
		-0.717555, -0.570741, 0.399212,
		-0.604187, 0.224903, -0.764446,
		31.295382, 35.600010, 48.754936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564356, 34.845272, 49.063633>,  <31.718311, 35.442577, 49.290051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564356, 34.845272, 49.063633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472454, 35.071087, 48.746517>,  <31.417313, 35.206577, 48.556248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472454, 35.071087, 48.746517>,  <31.564356, 34.845272, 49.063633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472454, 35.071087, 48.746517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250988, -0.752656, -0.608698,
		-0.940329, -0.338831, 0.031233,
		-0.229754, 0.564537, -0.792787,
		31.403528, 35.240448, 48.508682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050690, 34.444466, 48.651581>,  <31.564356, 34.845272, 49.063633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050690, 34.444466, 48.651581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238955, 34.702377, 48.410671>,  <31.351913, 34.857124, 48.266125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238955, 34.702377, 48.410671>,  <31.050690, 34.444466, 48.651581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238955, 34.702377, 48.410671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207369, -0.744328, -0.634803,
		-0.857600, 0.173883, -0.484033,
		0.470660, 0.644780, -0.602278,
		31.380152, 34.895813, 48.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963678, 34.134144, 48.026920>,  <31.050690, 34.444466, 48.651581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963678, 34.134144, 48.026920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260447, 34.378494, 47.916370>,  <31.438507, 34.525105, 47.850040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260447, 34.378494, 47.916370>,  <30.963678, 34.134144, 48.026920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260447, 34.378494, 47.916370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260051, -0.642103, -0.721164,
		-0.618004, 0.463175, -0.635248,
		0.741920, 0.610879, -0.276373,
		31.483023, 34.561756, 47.833458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968807, 34.298100, 47.224617>,  <30.963678, 34.134144, 48.026920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968807, 34.298100, 47.224617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332739, 34.302422, 47.390556>,  <31.551098, 34.305016, 47.490120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332739, 34.302422, 47.390556>,  <30.968807, 34.298100, 47.224617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332739, 34.302422, 47.390556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347418, -0.566571, -0.747194,
		0.226967, 0.823942, -0.519235,
		0.909828, 0.010803, 0.414845,
		31.605688, 34.305664, 47.515011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388201, 34.188053, 46.745277>,  <30.968807, 34.298100, 47.224617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388201, 34.188053, 46.745277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701694, 34.161263, 46.992268>,  <31.889791, 34.145187, 47.140461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701694, 34.161263, 46.992268>,  <31.388201, 34.188053, 46.745277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701694, 34.161263, 46.992268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405266, -0.698218, -0.590128,
		0.470659, 0.712744, -0.520073,
		0.783734, -0.066981, 0.617474,
		31.936815, 34.141167, 47.177509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009876, 34.170559, 46.283840>,  <31.388201, 34.188053, 46.745277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009876, 34.170559, 46.283840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124741, 34.053249, 46.648594>,  <32.193657, 33.982864, 46.867447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124741, 34.053249, 46.648594>,  <32.009876, 34.170559, 46.283840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124741, 34.053249, 46.648594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500419, -0.765809, -0.403878,
		0.816775, 0.572300, -0.073149,
		0.287158, -0.293272, 0.911884,
		32.210888, 33.965267, 46.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769257, 34.115738, 46.196697>,  <32.009876, 34.170559, 46.283840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769257, 34.115738, 46.196697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638756, 33.892017, 46.501522>,  <32.560455, 33.757786, 46.684418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638756, 33.892017, 46.501522>,  <32.769257, 34.115738, 46.196697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638756, 33.892017, 46.501522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566109, -0.761225, -0.316318,
		0.757020, 0.328212, 0.564976,
		-0.326254, -0.559297, 0.762067,
		32.540878, 33.724228, 46.730141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345333, 33.733212, 46.668304>,  <32.769257, 34.115738, 46.196697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345333, 33.733212, 46.668304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004063, 33.525009, 46.654613>,  <32.799301, 33.400089, 46.646400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004063, 33.525009, 46.654613>,  <33.345333, 33.733212, 46.668304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004063, 33.525009, 46.654613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486506, -0.770343, -0.412169,
		0.188169, -0.368303, 0.910464,
		-0.853173, -0.520504, -0.034227,
		32.748112, 33.368858, 46.644344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462440, 33.056843, 46.903450>,  <33.345333, 33.733212, 46.668304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462440, 33.056843, 46.903450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129848, 33.035397, 46.682266>,  <32.930294, 33.022530, 46.549557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129848, 33.035397, 46.682266>,  <33.462440, 33.056843, 46.903450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129848, 33.035397, 46.682266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369823, -0.796166, -0.478906,
		-0.414571, -0.602699, 0.681825,
		-0.831481, -0.053614, -0.552959,
		32.880405, 33.019314, 46.516380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031528, 32.410706, 47.011932>,  <33.462440, 33.056843, 46.903450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031528, 32.410706, 47.011932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021965, 32.576065, 46.647839>,  <33.016228, 32.675282, 46.429382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021965, 32.576065, 46.647839>,  <33.031528, 32.410706, 47.011932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021965, 32.576065, 46.647839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376399, -0.839773, -0.391285,
		-0.926149, -0.351966, -0.135528,
		-0.023906, 0.413401, -0.910235,
		33.014793, 32.700085, 46.374767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139130, 32.013252, 47.703110>,  <33.031528, 32.410706, 47.011932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139130, 32.013252, 47.703110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475555, 31.814867, 47.789490>,  <33.677410, 31.695835, 47.841316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475555, 31.814867, 47.789490>,  <33.139130, 32.013252, 47.703110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475555, 31.814867, 47.789490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074265, -0.501301, -0.862080,
		0.535815, 0.709026, -0.458458,
		0.841063, -0.495963, 0.215949,
		33.727875, 31.666079, 47.854275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723949, 32.123100, 47.155746>,  <33.139130, 32.013252, 47.703110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723949, 32.123100, 47.155746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739285, 31.766077, 47.335468>,  <33.748486, 31.551865, 47.443302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739285, 31.766077, 47.335468>,  <33.723949, 32.123100, 47.155746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739285, 31.766077, 47.335468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113043, -0.450624, -0.885528,
		0.992850, -0.016840, -0.118174,
		0.038340, -0.892555, 0.449305,
		33.750786, 31.498310, 47.470261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208858, 31.577152, 46.828850>,  <33.723949, 32.123100, 47.155746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208858, 31.577152, 46.828850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907768, 31.397764, 47.021629>,  <33.727112, 31.290131, 47.137299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907768, 31.397764, 47.021629>,  <34.208858, 31.577152, 46.828850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907768, 31.397764, 47.021629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042437, -0.697499, -0.715328,
		0.656962, -0.558900, 0.505996,
		-0.752729, -0.448470, 0.481948,
		33.681950, 31.263224, 47.166214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372086, 30.865278, 46.788910>,  <34.208858, 31.577152, 46.828850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372086, 30.865278, 46.788910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983677, 30.881887, 46.883057>,  <33.750633, 30.891853, 46.939545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983677, 30.881887, 46.883057>,  <34.372086, 30.865278, 46.788910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983677, 30.881887, 46.883057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178366, -0.781404, -0.597991,
		0.159087, -0.622642, 0.766165,
		-0.971018, 0.041525, 0.235369,
		33.692371, 30.894344, 46.953667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421329, 30.759058, 47.545872>,  <34.372086, 30.865278, 46.788910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421329, 30.759058, 47.545872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318409, 30.998535, 47.849281>,  <34.256657, 31.142221, 48.031326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318409, 30.998535, 47.849281>,  <34.421329, 30.759058, 47.545872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318409, 30.998535, 47.849281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965189, 0.197381, 0.171611,
		-0.046977, 0.776279, -0.628636,
		-0.257299, 0.598691, 0.758529,
		34.241219, 31.178143, 48.076839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884052, 31.323721, 47.484009>,  <34.421329, 30.759058, 47.545872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884052, 31.323721, 47.484009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731537, 31.400587, 47.845715>,  <34.640026, 31.446707, 48.062737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731537, 31.400587, 47.845715>,  <34.884052, 31.323721, 47.484009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731537, 31.400587, 47.845715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820508, 0.520981, 0.235258,
		-0.425894, 0.831656, -0.356319,
		-0.381289, 0.192167, 0.904262,
		34.617149, 31.458237, 48.116993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900784, 32.029728, 47.593769>,  <34.884052, 31.323721, 47.484009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900784, 32.029728, 47.593769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876476, 31.882437, 47.964867>,  <34.861893, 31.794062, 48.187527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876476, 31.882437, 47.964867>,  <34.900784, 32.029728, 47.593769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876476, 31.882437, 47.964867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814559, 0.518896, 0.259309,
		-0.576889, 0.771464, 0.268407,
		-0.060772, -0.368226, 0.927748,
		34.858246, 31.771969, 48.243191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973450, 32.558270, 48.082512>,  <34.900784, 32.029728, 47.593769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973450, 32.558270, 48.082512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086437, 32.226490, 48.275272>,  <35.154232, 32.027424, 48.390926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086437, 32.226490, 48.275272>,  <34.973450, 32.558270, 48.082512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086437, 32.226490, 48.275272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825507, 0.466064, 0.318312,
		-0.488619, 0.307896, 0.816365,
		0.282471, -0.829449, 0.481897,
		35.171177, 31.977655, 48.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304337, 32.819366, 48.570881>,  <34.973450, 32.558270, 48.082512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304337, 32.819366, 48.570881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439209, 32.443130, 48.586887>,  <35.520130, 32.217388, 48.596493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439209, 32.443130, 48.586887>,  <35.304337, 32.819366, 48.570881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439209, 32.443130, 48.586887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885272, 0.331237, 0.326458,
		-0.320319, -0.074648, 0.944364,
		0.337178, -0.940590, 0.040018,
		35.540363, 32.160954, 48.598892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677704, 32.846622, 49.178856>,  <35.304337, 32.819366, 48.570881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677704, 32.846622, 49.178856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830318, 32.523193, 48.999683>,  <35.921886, 32.329136, 48.892181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830318, 32.523193, 48.999683>,  <35.677704, 32.846622, 49.178856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830318, 32.523193, 48.999683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921677, 0.295909, 0.250899,
		-0.070325, -0.508571, 0.858143,
		0.381532, -0.808575, -0.447928,
		35.944778, 32.280621, 48.865303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206429, 32.541389, 49.500023>,  <35.677704, 32.846622, 49.178856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206429, 32.541389, 49.500023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308567, 32.394779, 49.142151>,  <36.369850, 32.306812, 48.927429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308567, 32.394779, 49.142151>,  <36.206429, 32.541389, 49.500023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308567, 32.394779, 49.142151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965087, 0.152485, 0.212968,
		0.058366, -0.917826, 0.392670,
		0.255344, -0.366530, -0.894682,
		36.385170, 32.284821, 48.873745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851334, 32.213421, 49.643261>,  <36.206429, 32.541389, 49.500023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851334, 32.213421, 49.643261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844131, 32.229530, 49.243649>,  <36.839809, 32.239197, 49.003883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844131, 32.229530, 49.243649>,  <36.851334, 32.213421, 49.643261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844131, 32.229530, 49.243649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998698, 0.048429, -0.016046,
		0.047736, -0.998014, -0.041096,
		-0.018005, 0.040276, -0.999026,
		36.838730, 32.241611, 48.943939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354130, 31.702534, 49.343582>,  <36.851334, 32.213421, 49.643261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354130, 31.702534, 49.343582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287838, 32.004726, 49.090038>,  <37.248062, 32.186043, 48.937912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287838, 32.004726, 49.090038>,  <37.354130, 31.702534, 49.343582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287838, 32.004726, 49.090038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984047, 0.084517, -0.156551,
		-0.064700, -0.649694, -0.757438,
		-0.165726, 0.755483, -0.633861,
		37.238121, 32.231373, 48.899879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802608, 31.457785, 48.672585>,  <37.354130, 31.702534, 49.343582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802608, 31.457785, 48.672585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744629, 31.851318, 48.630520>,  <37.709843, 32.087440, 48.605282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744629, 31.851318, 48.630520>,  <37.802608, 31.457785, 48.672585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744629, 31.851318, 48.630520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985158, 0.133624, -0.107746,
		-0.091952, -0.119223, -0.988601,
		-0.144946, 0.983835, -0.105166,
		37.701145, 32.146469, 48.598969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246510, 31.666149, 48.059170>,  <37.802608, 31.457785, 48.672585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246510, 31.666149, 48.059170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153713, 31.981150, 48.287563>,  <38.098034, 32.170151, 48.424599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153713, 31.981150, 48.287563>,  <38.246510, 31.666149, 48.059170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153713, 31.981150, 48.287563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915497, 0.375128, -0.145411,
		-0.328704, 0.489000, -0.807981,
		-0.231990, 0.787501, 0.570984,
		38.084118, 32.217400, 48.458858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248646, 32.261826, 47.717197>,  <38.246510, 31.666149, 48.059170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248646, 32.261826, 47.717197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357632, 32.299732, 48.100193>,  <38.423023, 32.322475, 48.329990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357632, 32.299732, 48.100193>,  <38.248646, 32.261826, 47.717197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357632, 32.299732, 48.100193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949292, 0.135768, -0.283568,
		-0.156868, 0.986198, -0.052969,
		0.272463, 0.094766, 0.957488,
		38.439369, 32.328163, 48.387440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925613, 32.019299, 47.369228>,  <38.248646, 32.261826, 47.717197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925613, 32.019299, 47.369228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866035, 31.627295, 47.316463>,  <38.830288, 31.392092, 47.284805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866035, 31.627295, 47.316463>,  <38.925613, 32.019299, 47.369228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866035, 31.627295, 47.316463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429352, 0.056078, -0.901395,
		0.890771, -0.190892, 0.412416,
		-0.148941, -0.980008, -0.131913,
		38.821354, 31.333292, 47.276890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691597, 32.122414, 46.663136>,  <38.925613, 32.019299, 47.369228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691597, 32.122414, 46.663136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897156, 31.839563, 46.468861>,  <39.020493, 31.669855, 46.352295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897156, 31.839563, 46.468861>,  <38.691597, 32.122414, 46.663136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897156, 31.839563, 46.468861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678120, 0.681615, -0.274872,
		0.525418, -0.188098, 0.829792,
		0.513896, -0.707121, -0.485686,
		39.051323, 31.627426, 46.323154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331665, 32.061840, 46.777699>,  <38.691597, 32.122414, 46.663136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331665, 32.061840, 46.777699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332581, 31.938150, 46.397305>,  <39.333130, 31.863935, 46.169067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332581, 31.938150, 46.397305>,  <39.331665, 32.061840, 46.777699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332581, 31.938150, 46.397305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521344, 0.811890, -0.262744,
		0.853343, -0.495188, 0.163075,
		0.002291, -0.309229, -0.950985,
		39.333267, 31.845383, 46.112007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990379, 32.188080, 46.361141>,  <39.331665, 32.061840, 46.777699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990379, 32.188080, 46.361141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954563, 31.818937, 46.211308>,  <39.933075, 31.597450, 46.121407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954563, 31.818937, 46.211308>,  <39.990379, 32.188080, 46.361141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954563, 31.818937, 46.211308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868477, 0.111768, -0.482966,
		0.487576, -0.368563, 0.791474,
		-0.089541, -0.922859, -0.374584,
		39.927700, 31.542080, 46.098934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623219, 31.827585, 46.512440>,  <39.990379, 32.188080, 46.361141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623219, 31.827585, 46.512440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469791, 31.685106, 46.171619>,  <40.377735, 31.599619, 45.967125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469791, 31.685106, 46.171619>,  <40.623219, 31.827585, 46.512440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469791, 31.685106, 46.171619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838837, 0.251548, -0.482780,
		0.386297, -0.899916, 0.202304,
		-0.383572, -0.356196, -0.852055,
		40.354721, 31.578247, 45.916004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172863, 31.468582, 46.242271>,  <40.623219, 31.827585, 46.512440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172863, 31.468582, 46.242271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925781, 31.625664, 45.969734>,  <40.777534, 31.719912, 45.806213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925781, 31.625664, 45.969734>,  <41.172863, 31.468582, 46.242271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925781, 31.625664, 45.969734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780492, 0.412242, -0.469989,
		0.096313, -0.822096, -0.561144,
		-0.617703, 0.392702, -0.681344,
		40.740471, 31.743475, 45.765331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556889, 31.338629, 45.718651>,  <41.172863, 31.468582, 46.242271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556889, 31.338629, 45.718651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.293369, 31.627121, 45.633038>,  <41.135258, 31.800217, 45.581669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.293369, 31.627121, 45.633038>,  <41.556889, 31.338629, 45.718651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293369, 31.627121, 45.633038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702649, 0.488225, -0.517610,
		-0.268819, -0.491392, -0.828414,
		-0.658802, 0.721228, -0.214032,
		41.095730, 31.843489, 45.568829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026802, 31.741302, 45.494045>,  <41.556889, 31.338629, 45.718651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026802, 31.741302, 45.494045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689442, 31.955109, 45.472286>,  <41.487026, 32.083393, 45.459232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689442, 31.955109, 45.472286>,  <42.026802, 31.741302, 45.494045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689442, 31.955109, 45.472286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500423, 0.744664, -0.441647,
		-0.195560, -0.399709, -0.895538,
		-0.843405, 0.534516, -0.054397,
		41.436420, 32.115463, 45.455967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218605, 32.133301, 44.980457>,  <42.026802, 31.741302, 45.494045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218605, 32.133301, 44.980457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890034, 32.324497, 45.104889>,  <41.692890, 32.439217, 45.179550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890034, 32.324497, 45.104889>,  <42.218605, 32.133301, 44.980457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890034, 32.324497, 45.104889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304865, 0.829020, -0.468810,
		-0.481982, -0.290258, -0.826707,
		-0.821432, 0.477992, 0.311083,
		41.643604, 32.467896, 45.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874008, 32.454880, 44.392410>,  <42.218605, 32.133301, 44.980457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874008, 32.454880, 44.392410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848381, 32.649033, 44.741192>,  <41.833004, 32.765522, 44.950462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848381, 32.649033, 44.741192>,  <41.874008, 32.454880, 44.392410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848381, 32.649033, 44.741192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430533, 0.801697, -0.414637,
		-0.900298, 0.348841, -0.260333,
		-0.064066, 0.485379, 0.871954,
		41.829163, 32.794647, 45.002777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586075, 33.137123, 44.166054>,  <41.874008, 32.454880, 44.392410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586075, 33.137123, 44.166054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798908, 33.112770, 44.503853>,  <41.926609, 33.098160, 44.706532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798908, 33.112770, 44.503853>,  <41.586075, 33.137123, 44.166054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798908, 33.112770, 44.503853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434749, 0.875531, -0.210804,
		-0.726552, 0.479311, 0.492325,
		0.532086, -0.060878, 0.844499,
		41.958534, 33.094505, 44.757202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209499, 33.395706, 44.017048>,  <41.586075, 33.137123, 44.166054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209499, 33.395706, 44.017048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525906, 33.151329, 44.004112>,  <42.715748, 33.004704, 43.996353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525906, 33.151329, 44.004112>,  <42.209499, 33.395706, 44.017048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525906, 33.151329, 44.004112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088323, -0.061736, -0.994177,
		0.605389, 0.789264, -0.102794,
		0.791014, -0.610943, -0.032336,
		42.763210, 32.968044, 43.994411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910789, 33.572605, 43.622822>,  <42.209499, 33.395706, 44.017048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910789, 33.572605, 43.622822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828705, 33.181267, 43.612026>,  <42.779453, 32.946465, 43.605549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828705, 33.181267, 43.612026>,  <42.910789, 33.572605, 43.622822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828705, 33.181267, 43.612026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001839, 0.027958, -0.999608,
		0.978715, -0.205085, -0.007536,
		-0.205215, -0.978345, -0.026985,
		42.767139, 32.887764, 43.603931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370762, 33.190128, 43.032116>,  <42.910789, 33.572605, 43.622822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370762, 33.190128, 43.032116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021858, 33.008316, 43.104301>,  <42.812515, 32.899227, 43.147614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021858, 33.008316, 43.104301>,  <43.370762, 33.190128, 43.032116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021858, 33.008316, 43.104301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210127, 0.015116, -0.977557,
		0.441601, -0.890603, -0.108694,
		-0.872258, -0.454530, 0.180464,
		42.760181, 32.871956, 43.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286083, 32.486935, 42.722912>,  <43.370762, 33.190128, 43.032116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286083, 32.486935, 42.722912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935505, 32.678658, 42.741241>,  <42.725159, 32.793690, 42.752239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935505, 32.678658, 42.741241>,  <43.286083, 32.486935, 42.722912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935505, 32.678658, 42.741241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002733, 0.100128, -0.994971,
		-0.481487, -0.871916, -0.089067,
		-0.876449, 0.479309, 0.045827,
		42.672569, 32.822449, 42.754990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742508, 32.165726, 42.260880>,  <43.286083, 32.486935, 42.722912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742508, 32.165726, 42.260880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.668900, 32.555595, 42.311707>,  <42.624733, 32.789516, 42.342201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.668900, 32.555595, 42.311707>,  <42.742508, 32.165726, 42.260880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668900, 32.555595, 42.311707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128871, 0.104231, -0.986168,
		-0.974437, -0.197853, 0.106426,
		-0.184024, 0.974674, 0.127065,
		42.613693, 32.848000, 42.349827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075142, 32.370098, 41.986156>,  <42.742508, 32.165726, 42.260880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075142, 32.370098, 41.986156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298176, 32.702091, 41.980175>,  <42.431995, 32.901287, 41.976585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298176, 32.702091, 41.980175>,  <42.075142, 32.370098, 41.986156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298176, 32.702091, 41.980175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052171, 0.017058, -0.998492,
		-0.828478, 0.557526, 0.052813,
		0.557586, 0.829984, -0.014954,
		42.465450, 32.951088, 41.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809380, 32.834099, 41.569271>,  <42.075142, 32.370098, 41.986156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809380, 32.834099, 41.569271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195126, 32.939827, 41.564533>,  <42.426571, 33.003265, 41.561691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195126, 32.939827, 41.564533>,  <41.809380, 32.834099, 41.569271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195126, 32.939827, 41.564533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085543, 0.269119, -0.959301,
		-0.250377, 0.926126, 0.282139,
		0.964362, 0.264321, -0.011842,
		42.484436, 33.019123, 41.560982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106098, 33.623711, 41.468208>,  <41.809380, 32.834099, 41.569271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106098, 33.623711, 41.468208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358311, 33.365501, 41.295822>,  <42.509640, 33.210575, 41.192390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358311, 33.365501, 41.295822>,  <42.106098, 33.623711, 41.468208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358311, 33.365501, 41.295822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040390, 0.527204, -0.848778,
		0.775113, 0.552587, 0.306345,
		0.630531, -0.645526, -0.430962,
		42.547470, 33.171844, 41.166534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632500, 34.118721, 41.240902>,  <42.106098, 33.623711, 41.468208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632500, 34.118721, 41.240902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.611397, 33.771286, 41.043816>,  <42.598736, 33.562824, 40.925564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.611397, 33.771286, 41.043816>,  <42.632500, 34.118721, 41.240902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611397, 33.771286, 41.043816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232172, 0.469210, -0.852020,
		0.971243, -0.159347, 0.176907,
		-0.052761, -0.868591, -0.492712,
		42.595570, 33.510708, 40.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342709, 34.037197, 40.988743>,  <42.632500, 34.118721, 41.240902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342709, 34.037197, 40.988743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.084435, 33.833721, 40.760944>,  <42.929470, 33.711636, 40.624264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.084435, 33.833721, 40.760944>,  <43.342709, 34.037197, 40.988743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084435, 33.833721, 40.760944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376007, 0.437314, -0.816930,
		0.664611, -0.741615, -0.091098,
		-0.645686, -0.508687, -0.569496,
		42.890728, 33.681114, 40.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613564, 33.550201, 40.507702>,  <43.342709, 34.037197, 40.988743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613564, 33.550201, 40.507702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270229, 33.693890, 40.361160>,  <43.064228, 33.780102, 40.273235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270229, 33.693890, 40.361160>,  <43.613564, 33.550201, 40.507702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270229, 33.693890, 40.361160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457238, 0.211576, -0.863811,
		-0.232783, -0.908954, -0.345852,
		-0.858338, 0.359217, -0.366357,
		43.012726, 33.801655, 40.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235065, 33.158043, 39.896244>,  <43.613564, 33.550201, 40.507702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235065, 33.158043, 39.896244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.239040, 33.556053, 39.935886>,  <43.241425, 33.794861, 39.959671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.239040, 33.556053, 39.935886>,  <43.235065, 33.158043, 39.896244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239040, 33.556053, 39.935886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690833, 0.064824, -0.720102,
		-0.722946, 0.075624, -0.686754,
		0.009939, 0.995027, 0.099108,
		43.242023, 33.854561, 39.965618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237053, 33.509506, 39.254253>,  <43.235065, 33.158043, 39.896244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237053, 33.509506, 39.254253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.387768, 33.788055, 39.498581>,  <43.478195, 33.955185, 39.645176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.387768, 33.788055, 39.498581>,  <43.237053, 33.509506, 39.254253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387768, 33.788055, 39.498581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687656, 0.231521, -0.688133,
		-0.620613, 0.679312, -0.391630,
		0.376786, 0.696371, 0.610818,
		43.500805, 33.996967, 39.681828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492344, 34.092720, 38.830467>,  <43.237053, 33.509506, 39.254253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492344, 34.092720, 38.830467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.684639, 34.174870, 39.171455>,  <43.800018, 34.224159, 39.376049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.684639, 34.174870, 39.171455>,  <43.492344, 34.092720, 38.830467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684639, 34.174870, 39.171455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774484, 0.356422, -0.522627,
		-0.411174, 0.911474, 0.012287,
		0.480740, 0.205374, 0.852473,
		43.828861, 34.236481, 39.427197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574684, 34.883930, 38.928097>,  <43.492344, 34.092720, 38.830467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574684, 34.883930, 38.928097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848469, 34.639935, 39.087807>,  <44.012741, 34.493538, 39.183632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848469, 34.639935, 39.087807>,  <43.574684, 34.883930, 38.928097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848469, 34.639935, 39.087807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715133, 0.455277, -0.530385,
		0.141750, 0.648564, 0.747845,
		0.684465, -0.609990, 0.399274,
		44.053810, 34.456936, 39.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066162, 35.346905, 38.974224>,  <43.574684, 34.883930, 38.928097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066162, 35.346905, 38.974224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.220638, 34.978283, 38.990215>,  <44.313324, 34.757111, 38.999809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.220638, 34.978283, 38.990215>,  <44.066162, 35.346905, 38.974224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220638, 34.978283, 38.990215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828601, 0.327539, -0.454024,
		0.405311, 0.208468, 0.890092,
		0.386190, -0.921553, 0.039982,
		44.336494, 34.701817, 39.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615795, 35.250027, 39.461243>,  <44.066162, 35.346905, 38.974224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615795, 35.250027, 39.461243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.677467, 35.025719, 39.135845>,  <44.714470, 34.891132, 38.940609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.677467, 35.025719, 39.135845>,  <44.615795, 35.250027, 39.461243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677467, 35.025719, 39.135845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757380, 0.595815, -0.267172,
		0.634511, -0.574927, 0.516579,
		0.154181, -0.560770, -0.813489,
		44.723721, 34.857487, 38.891800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341518, 34.973843, 39.451202>,  <44.615795, 35.250027, 39.461243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341518, 34.973843, 39.451202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.211899, 34.992657, 39.073254>,  <45.134129, 35.003944, 38.846485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.211899, 34.992657, 39.073254>,  <45.341518, 34.973843, 39.451202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211899, 34.992657, 39.073254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819755, 0.512500, -0.255629,
		0.472223, -0.857398, -0.204631,
		-0.324049, 0.047034, -0.944870,
		45.114685, 35.006767, 38.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819645, 34.689533, 38.967304>,  <45.341518, 34.973843, 39.451202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819645, 34.689533, 38.967304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.592243, 34.970406, 38.795841>,  <45.455803, 35.138927, 38.692963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.592243, 34.970406, 38.795841>,  <45.819645, 34.689533, 38.967304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592243, 34.970406, 38.795841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808736, 0.381495, -0.447669,
		-0.150814, -0.601171, -0.784760,
		-0.568508, 0.702178, -0.428654,
		45.421692, 35.181061, 38.667244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132954, 34.879005, 38.341251>,  <45.819645, 34.689533, 38.967304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132954, 34.879005, 38.341251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.952496, 35.197460, 38.502563>,  <45.844219, 35.388531, 38.599350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.952496, 35.197460, 38.502563>,  <46.132954, 34.879005, 38.341251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952496, 35.197460, 38.502563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830563, 0.539892, -0.136681,
		-0.326546, 0.273291, -0.904809,
		-0.451146, 0.796134, 0.403285,
		45.817150, 35.436302, 38.623550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268181, 35.491367, 37.932095>,  <46.132954, 34.879005, 38.341251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268181, 35.491367, 37.932095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.189144, 35.647427, 38.291813>,  <46.141724, 35.741062, 38.507645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.189144, 35.647427, 38.291813>,  <46.268181, 35.491367, 37.932095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189144, 35.647427, 38.291813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706910, 0.692278, -0.145017,
		-0.679144, 0.607070, -0.412589,
		-0.197591, 0.390151, 0.899300,
		46.129868, 35.764473, 38.561604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401848, 36.147667, 37.684605>,  <46.268181, 35.491367, 37.932095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401848, 36.147667, 37.684605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171761, 36.358398, 37.434299>,  <46.033710, 36.484837, 37.284119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171761, 36.358398, 37.434299>,  <46.401848, 36.147667, 37.684605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171761, 36.358398, 37.434299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343571, -0.538638, -0.769303,
		-0.742353, -0.657507, 0.128827,
		-0.575213, 0.526833, -0.625760,
		45.999195, 36.516449, 37.246571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072651, 35.613800, 37.236156>,  <46.401848, 36.147667, 37.684605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072651, 35.613800, 37.236156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153034, 35.976486, 37.087841>,  <46.201263, 36.194099, 36.998852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153034, 35.976486, 37.087841>,  <46.072651, 35.613800, 37.236156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153034, 35.976486, 37.087841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363857, -0.420521, -0.831126,
		-0.909518, 0.032108, -0.414422,
		0.200959, 0.906715, -0.370789,
		46.213322, 36.248501, 36.976604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976109, 35.580727, 36.458164>,  <46.072651, 35.613800, 37.236156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976109, 35.580727, 36.458164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.203011, 35.910007, 36.467617>,  <46.339153, 36.107574, 36.473289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.203011, 35.910007, 36.467617>,  <45.976109, 35.580727, 36.458164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203011, 35.910007, 36.467617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458291, -0.291694, -0.839574,
		-0.684244, 0.487085, -0.542732,
		0.567255, 0.823203, 0.023637,
		46.373188, 36.156967, 36.474709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922653, 35.802174, 35.845119>,  <45.976109, 35.580727, 36.458164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922653, 35.802174, 35.845119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.263790, 35.930161, 36.010181>,  <46.468472, 36.006954, 36.109219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.263790, 35.930161, 36.010181>,  <45.922653, 35.802174, 35.845119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263790, 35.930161, 36.010181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521957, -0.544960, -0.656185,
		0.014917, 0.775008, -0.631776,
		0.852841, 0.319971, 0.412650,
		46.519642, 36.026154, 36.133976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364983, 36.182266, 35.348721>,  <45.922653, 35.802174, 35.845119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364983, 36.182266, 35.348721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.547459, 35.987831, 35.646877>,  <46.656944, 35.871170, 35.825771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.547459, 35.987831, 35.646877>,  <46.364983, 36.182266, 35.348721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547459, 35.987831, 35.646877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405210, -0.632285, -0.660318,
		0.792273, 0.603271, -0.091474,
		0.456188, -0.486086, 0.745394,
		46.684315, 35.842007, 35.870495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134838, 36.207779, 35.428894>,  <46.364983, 36.182266, 35.348721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134838, 36.207779, 35.428894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.987209, 35.857639, 35.553829>,  <46.898632, 35.647556, 35.628792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.987209, 35.857639, 35.553829>,  <47.134838, 36.207779, 35.428894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987209, 35.857639, 35.553829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515175, -0.472388, -0.715153,
		0.773552, -0.103033, 0.625301,
		-0.369069, -0.875348, 0.312337,
		46.876488, 35.595036, 35.647530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677052, 35.726765, 35.717072>,  <47.134838, 36.207779, 35.428894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677052, 35.726765, 35.717072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.377254, 35.516129, 35.556587>,  <47.197376, 35.389748, 35.460297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.377254, 35.516129, 35.556587>,  <47.677052, 35.726765, 35.717072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377254, 35.516129, 35.556587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608193, -0.308345, -0.731454,
		0.261464, -0.792230, 0.551370,
		-0.749491, -0.526588, -0.401207,
		47.152409, 35.358150, 35.436226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000401, 35.244904, 35.574306>,  <47.677052, 35.726765, 35.717072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000401, 35.244904, 35.574306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.684086, 35.278183, 35.331741>,  <47.494297, 35.298153, 35.186203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.684086, 35.278183, 35.331741>,  <48.000401, 35.244904, 35.574306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684086, 35.278183, 35.331741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587779, -0.173231, -0.790258,
		-0.170771, -0.981363, 0.088107,
		-0.790793, 0.083166, -0.606407,
		47.446850, 35.303143, 35.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.947201, 34.606091, 35.080254>,  <48.000401, 35.244904, 35.574306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.947201, 34.606091, 35.080254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.789963, 34.947018, 34.942249>,  <47.695621, 35.151573, 34.859447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.789963, 34.947018, 34.942249>,  <47.947201, 34.606091, 35.080254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.789963, 34.947018, 34.942249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624618, -0.027834, -0.780434,
		-0.674781, -0.522282, -0.521432,
		-0.393093, 0.852318, -0.345009,
		47.672035, 35.202713, 34.838745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.634998, 33.427319, 56.873840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.939840, 33.290554, 57.093765>,  <30.122746, 33.208496, 57.225719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.939840, 33.290554, 57.093765>,  <29.634998, 33.427319, 56.873840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939840, 33.290554, 57.093765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530145, -0.157950, -0.833065,
		0.371675, 0.926364, 0.060886,
		0.762105, -0.341908, 0.549814,
		30.168472, 33.187981, 57.258709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229477, 33.762936, 56.683582>,  <29.634998, 33.427319, 56.873840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229477, 33.762936, 56.683582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.379236, 33.449814, 56.882393>,  <30.469091, 33.261940, 57.001678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.379236, 33.449814, 56.882393>,  <30.229477, 33.762936, 56.683582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379236, 33.449814, 56.882393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659831, -0.151689, -0.735944,
		0.651497, 0.603491, 0.459728,
		0.374400, -0.782808, 0.497027,
		30.491556, 33.214970, 57.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903038, 33.780972, 56.567799>,  <30.229477, 33.762936, 56.683582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903038, 33.780972, 56.567799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.878815, 33.397221, 56.678020>,  <30.864281, 33.166969, 56.744156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.878815, 33.397221, 56.678020>,  <30.903038, 33.780972, 56.567799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878815, 33.397221, 56.678020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698727, -0.237889, -0.674678,
		0.712821, 0.151683, 0.684747,
		-0.060557, -0.959375, 0.275557,
		30.860647, 33.109409, 56.760689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586447, 33.553715, 56.702759>,  <30.903038, 33.780972, 56.567799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586447, 33.553715, 56.702759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.378017, 33.217182, 56.645283>,  <31.252960, 33.015263, 56.610798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.378017, 33.217182, 56.645283>,  <31.586447, 33.553715, 56.702759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378017, 33.217182, 56.645283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701116, -0.325917, -0.634203,
		0.486744, -0.431208, 0.759697,
		-0.521072, -0.841331, -0.143689,
		31.221695, 32.964783, 56.602177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971985, 33.007896, 56.771164>,  <31.586447, 33.553715, 56.702759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971985, 33.007896, 56.771164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667774, 32.838249, 56.574501>,  <31.485249, 32.736462, 56.456505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667774, 32.838249, 56.574501>,  <31.971985, 33.007896, 56.771164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667774, 32.838249, 56.574501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612565, -0.217553, -0.759892,
		0.215324, -0.879087, 0.425255,
		-0.760526, -0.424119, -0.491653,
		31.439617, 32.711014, 56.427006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128750, 32.321625, 56.633099>,  <31.971985, 33.007896, 56.771164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128750, 32.321625, 56.633099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865908, 32.417332, 56.347172>,  <31.708202, 32.474754, 56.175613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865908, 32.417332, 56.347172>,  <32.128750, 32.321625, 56.633099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865908, 32.417332, 56.347172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650459, -0.299252, -0.698105,
		-0.380946, -0.923687, 0.041005,
		-0.657102, 0.239268, -0.714820,
		31.668777, 32.489113, 56.132725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335022, 31.924997, 56.112957>,  <32.128750, 32.321625, 56.633099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335022, 31.924997, 56.112957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.083870, 32.155594, 55.903801>,  <31.933178, 32.293953, 55.778305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.083870, 32.155594, 55.903801>,  <32.335022, 31.924997, 56.112957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083870, 32.155594, 55.903801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411669, -0.324172, -0.851728,
		-0.660523, -0.750045, -0.033782,
		-0.627884, 0.576493, -0.522894,
		31.895504, 32.328541, 55.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221188, 31.536123, 55.496510>,  <32.335022, 31.924997, 56.112957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221188, 31.536123, 55.496510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.118279, 31.911274, 55.403389>,  <32.056534, 32.136364, 55.347519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.118279, 31.911274, 55.403389>,  <32.221188, 31.536123, 55.496510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118279, 31.911274, 55.403389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395748, -0.117518, -0.910809,
		-0.881585, -0.326458, -0.340929,
		-0.257275, 0.937878, -0.232797,
		32.041096, 32.192638, 55.333549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023552, 31.544640, 54.815563>,  <32.221188, 31.536123, 55.496510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023552, 31.544640, 54.815563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.087879, 31.937408, 54.855492>,  <32.126476, 32.173069, 54.879448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.087879, 31.937408, 54.855492>,  <32.023552, 31.544640, 54.815563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087879, 31.937408, 54.855492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511388, 0.003608, -0.859343,
		-0.844169, 0.189244, -0.501563,
		0.160816, 0.981923, 0.099823,
		32.136124, 32.231987, 54.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039162, 31.775719, 54.139362>,  <32.023552, 31.544640, 54.815563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039162, 31.775719, 54.139362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188480, 32.095787, 54.327141>,  <32.278072, 32.287827, 54.439808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188480, 32.095787, 54.327141>,  <32.039162, 31.775719, 54.139362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188480, 32.095787, 54.327141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560978, 0.208340, -0.801185,
		-0.738889, 0.562427, -0.371105,
		0.373292, 0.800169, 0.469450,
		32.300468, 32.335838, 54.467976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810022, 32.294987, 53.781086>,  <32.039162, 31.775719, 54.139362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810022, 32.294987, 53.781086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.149242, 32.410175, 53.959023>,  <32.352776, 32.479290, 54.065784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.149242, 32.410175, 53.959023>,  <31.810022, 32.294987, 53.781086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149242, 32.410175, 53.959023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447303, 0.061103, -0.892293,
		-0.284139, 0.955687, -0.076993,
		0.848048, 0.287975, 0.444843,
		32.403656, 32.496567, 54.092476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054962, 32.882580, 53.352379>,  <31.810022, 32.294987, 53.781086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054962, 32.882580, 53.352379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.359699, 32.734848, 53.565239>,  <32.542542, 32.646210, 53.692955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.359699, 32.734848, 53.565239>,  <32.054962, 32.882580, 53.352379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359699, 32.734848, 53.565239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548877, -0.068188, -0.833117,
		0.343981, 0.926794, 0.150768,
		0.761847, -0.369329, 0.532151,
		32.588253, 32.624050, 53.724884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561852, 33.327534, 53.234039>,  <32.054962, 32.882580, 53.352379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561852, 33.327534, 53.234039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711609, 32.969994, 53.332718>,  <32.801464, 32.755470, 53.391926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711609, 32.969994, 53.332718>,  <32.561852, 33.327534, 53.234039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711609, 32.969994, 53.332718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550171, -0.000033, -0.835052,
		0.746421, 0.448362, 0.491759,
		0.374389, -0.893852, 0.246700,
		32.823925, 32.701839, 53.406727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283955, 33.340984, 52.879230>,  <32.561852, 33.327534, 53.234039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283955, 33.340984, 52.879230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.228649, 32.956821, 52.975983>,  <33.195465, 32.726326, 53.034035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.228649, 32.956821, 52.975983>,  <33.283955, 33.340984, 52.879230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228649, 32.956821, 52.975983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406104, -0.277729, -0.870601,
		0.903306, -0.022147, 0.428424,
		-0.138267, -0.960404, 0.241881,
		33.187168, 32.668701, 53.048546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901703, 33.039265, 52.702557>,  <33.283955, 33.340984, 52.879230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901703, 33.039265, 52.702557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.615280, 32.760147, 52.695152>,  <33.443424, 32.592678, 52.690712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.615280, 32.760147, 52.695152>,  <33.901703, 33.039265, 52.702557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615280, 32.760147, 52.695152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404816, -0.393522, -0.825387,
		0.568666, -0.598519, 0.564264,
		-0.716061, -0.697793, -0.018508,
		33.400463, 32.550808, 52.689602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289810, 32.447838, 52.656303>,  <33.901703, 33.039265, 52.702557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289810, 32.447838, 52.656303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923405, 32.341946, 52.535748>,  <33.703560, 32.278408, 52.463413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923405, 32.341946, 52.535748>,  <34.289810, 32.447838, 52.656303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923405, 32.341946, 52.535748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401018, -0.623497, -0.671146,
		-0.010240, -0.735641, 0.677294,
		-0.916013, -0.264734, -0.301390,
		33.648602, 32.262524, 52.445332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329998, 31.751501, 52.443295>,  <34.289810, 32.447838, 52.656303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329998, 31.751501, 52.443295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975262, 31.830090, 52.276001>,  <33.762421, 31.877243, 52.175625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975262, 31.830090, 52.276001>,  <34.329998, 31.751501, 52.443295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975262, 31.830090, 52.276001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302788, -0.436636, -0.847153,
		-0.349053, -0.877924, 0.327737,
		-0.886838, 0.196467, -0.418234,
		33.709209, 31.889030, 52.150532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143871, 31.111971, 52.059536>,  <34.329998, 31.751501, 52.443295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143871, 31.111971, 52.059536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.900574, 31.394480, 51.914642>,  <33.754593, 31.563986, 51.827705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.900574, 31.394480, 51.914642>,  <34.143871, 31.111971, 52.059536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900574, 31.394480, 51.914642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053476, -0.418857, -0.906476,
		-0.791944, -0.570733, 0.217000,
		-0.608248, 0.706274, -0.362232,
		33.718098, 31.606361, 51.805973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596878, 30.751585, 51.560410>,  <34.143871, 31.111971, 52.059536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596878, 30.751585, 51.560410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.645874, 31.140419, 51.480358>,  <33.675270, 31.373718, 51.432327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.645874, 31.140419, 51.480358>,  <33.596878, 30.751585, 51.560410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645874, 31.140419, 51.480358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019476, -0.199254, -0.979754,
		-0.992279, 0.123905, -0.005474,
		0.122487, 0.972083, -0.200129,
		33.682621, 31.432043, 51.420319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080864, 30.888155, 51.111103>,  <33.596878, 30.751585, 51.560410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080864, 30.888155, 51.111103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.361977, 31.168291, 51.061115>,  <33.530643, 31.336372, 51.031120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.361977, 31.168291, 51.061115>,  <33.080864, 30.888155, 51.111103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361977, 31.168291, 51.061115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106286, -0.277063, -0.954955,
		-0.703420, 0.657844, -0.269152,
		0.702783, 0.700341, -0.124972,
		33.572811, 31.378393, 51.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853287, 31.316486, 50.544590>,  <33.080864, 30.888155, 51.111103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853287, 31.316486, 50.544590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.248600, 31.367910, 50.577492>,  <33.485786, 31.398764, 50.597233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.248600, 31.367910, 50.577492>,  <32.853287, 31.316486, 50.544590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248600, 31.367910, 50.577492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111225, -0.237595, -0.964976,
		-0.104511, 0.962820, -0.249110,
		0.988285, 0.128558, 0.082258,
		33.545086, 31.406477, 50.602169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004436, 31.620796, 49.839985>,  <32.853287, 31.316486, 50.544590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004436, 31.620796, 49.839985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.361576, 31.515350, 49.986042>,  <33.575859, 31.452084, 50.073677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.361576, 31.515350, 49.986042>,  <33.004436, 31.620796, 49.839985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361576, 31.515350, 49.986042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295560, -0.268768, -0.916738,
		0.339802, 0.926430, -0.162055,
		0.892849, -0.263612, 0.365144,
		33.629429, 31.436266, 50.095585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568245, 31.510027, 49.271923>,  <33.004436, 31.620796, 49.839985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568245, 31.510027, 49.271923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.286137, 31.742130, 49.109005>,  <32.116871, 31.881392, 49.011253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.286137, 31.742130, 49.109005>,  <32.568245, 31.510027, 49.271923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286137, 31.742130, 49.109005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281684, 0.297856, 0.912105,
		0.650572, 0.758012, -0.046621,
		-0.705273, 0.580258, -0.407297,
		32.074554, 31.916208, 48.986816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524918, 32.191105, 49.689449>,  <32.568245, 31.510027, 49.271923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524918, 32.191105, 49.689449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.187920, 32.149364, 49.478050>,  <31.985722, 32.124321, 49.351212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.187920, 32.149364, 49.478050>,  <32.524918, 32.191105, 49.689449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187920, 32.149364, 49.478050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538197, 0.205638, 0.817348,
		0.023390, 0.973049, -0.229410,
		-0.842494, -0.104350, -0.528502,
		31.935171, 32.118061, 49.319500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136288, 32.733910, 49.827492>,  <32.524918, 32.191105, 49.689449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136288, 32.733910, 49.827492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.874325, 32.458767, 49.702305>,  <31.717148, 32.293682, 49.627193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.874325, 32.458767, 49.702305>,  <32.136288, 32.733910, 49.827492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874325, 32.458767, 49.702305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510493, 0.097310, 0.854358,
		-0.557220, 0.719295, -0.414875,
		-0.654907, -0.687856, -0.312972,
		31.677853, 32.252411, 49.608414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493685, 33.000671, 50.017426>,  <32.136288, 32.733910, 49.827492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493685, 33.000671, 50.017426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431210, 32.608116, 49.972744>,  <31.393724, 32.372581, 49.945934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431210, 32.608116, 49.972744>,  <31.493685, 33.000671, 50.017426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431210, 32.608116, 49.972744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545015, -0.008690, 0.838381,
		-0.823750, 0.191825, -0.533515,
		-0.156186, -0.981390, -0.111706,
		31.384354, 32.313698, 49.939232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815708, 32.990238, 50.156574>,  <31.493685, 33.000671, 50.017426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815708, 32.990238, 50.156574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.950954, 32.617760, 50.211052>,  <31.032103, 32.394272, 50.243740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.950954, 32.617760, 50.211052>,  <30.815708, 32.990238, 50.156574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950954, 32.617760, 50.211052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648066, -0.125446, 0.751181,
		-0.682413, -0.342248, -0.645893,
		0.338116, -0.931198, 0.136194,
		31.052389, 32.338402, 50.251911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229837, 32.682064, 50.166225>,  <30.815708, 32.990238, 50.156574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229837, 32.682064, 50.166225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491339, 32.427200, 50.329506>,  <30.648239, 32.274281, 50.427475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.491339, 32.427200, 50.329506>,  <30.229837, 32.682064, 50.166225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491339, 32.427200, 50.329506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736607, -0.412343, 0.536082,
		-0.173249, -0.651153, -0.738907,
		0.653755, -0.637160, 0.408206,
		30.687466, 32.236053, 50.451969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878077, 31.956961, 50.173832>,  <30.229837, 32.682064, 50.166225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878077, 31.956961, 50.173832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.170103, 31.951948, 50.447136>,  <30.345318, 31.948940, 50.611118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.170103, 31.951948, 50.447136>,  <29.878077, 31.956961, 50.173832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170103, 31.951948, 50.447136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651670, -0.313784, 0.690555,
		0.205745, -0.949412, -0.237247,
		0.730065, -0.012528, 0.683263,
		30.389122, 31.948189, 50.652115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700596, 31.432436, 50.616730>,  <29.878077, 31.956961, 50.173832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700596, 31.432436, 50.616730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.965998, 31.629223, 50.842201>,  <30.125238, 31.747295, 50.977486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.965998, 31.629223, 50.842201>,  <29.700596, 31.432436, 50.616730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965998, 31.629223, 50.842201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635247, -0.027577, 0.771817,
		0.395251, -0.870178, 0.294222,
		0.663504, 0.491965, 0.563678,
		30.165049, 31.776812, 51.011303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819641, 30.974506, 51.221767>,  <29.700596, 31.432436, 50.616730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819641, 30.974506, 51.221767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.910082, 31.350431, 51.324242>,  <29.964346, 31.575987, 51.385727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.910082, 31.350431, 51.324242>,  <29.819641, 30.974506, 51.221767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910082, 31.350431, 51.324242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587539, -0.078199, 0.805408,
		0.776966, -0.332625, 0.534495,
		0.226102, 0.939812, 0.256188,
		29.977913, 31.632376, 51.401096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877518, 31.046741, 51.972305>,  <29.819641, 30.974506, 51.221767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877518, 31.046741, 51.972305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.823734, 31.425943, 51.856918>,  <29.791464, 31.653463, 51.787685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.823734, 31.425943, 51.856918>,  <29.877518, 31.046741, 51.972305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823734, 31.425943, 51.856918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551546, 0.170251, 0.816585,
		0.823236, 0.268898, 0.499976,
		-0.134456, 0.948002, -0.288466,
		29.783398, 31.710344, 51.770378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050676, 31.401829, 52.554287>,  <29.877518, 31.046741, 51.972305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050676, 31.401829, 52.554287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.825729, 31.650045, 52.335686>,  <29.690762, 31.798975, 52.204525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.825729, 31.650045, 52.335686>,  <30.050676, 31.401829, 52.554287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825729, 31.650045, 52.335686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448160, 0.326694, 0.832120,
		0.694907, 0.712879, 0.094380,
		-0.562368, 0.620543, -0.546506,
		29.657019, 31.836208, 52.171734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047909, 32.062763, 52.913769>,  <30.050676, 31.401829, 52.554287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047909, 32.062763, 52.913769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723606, 32.084324, 52.680611>,  <29.529024, 32.097260, 52.540714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723606, 32.084324, 52.680611>,  <30.047909, 32.062763, 52.913769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723606, 32.084324, 52.680611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554019, 0.250897, 0.793797,
		0.189035, 0.966512, -0.173553,
		-0.810758, 0.053904, -0.582894,
		29.480379, 32.100494, 52.505741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824896, 32.749432, 52.908558>,  <30.047909, 32.062763, 52.913769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824896, 32.749432, 52.908558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.506817, 32.528934, 52.807526>,  <29.315969, 32.396637, 52.746906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.506817, 32.528934, 52.807526>,  <29.824896, 32.749432, 52.908558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506817, 32.528934, 52.807526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540280, 0.455053, 0.707831,
		-0.275244, 0.699331, -0.659680,
		-0.795197, -0.551238, -0.252584,
		29.268257, 32.363564, 52.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253817, 33.191376, 52.788956>,  <29.824896, 32.749432, 52.908558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253817, 33.191376, 52.788956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.074352, 32.840248, 52.856060>,  <28.966673, 32.629574, 52.896320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.074352, 32.840248, 52.856060>,  <29.253817, 33.191376, 52.788956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074352, 32.840248, 52.856060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439499, 0.380161, 0.813829,
		-0.778167, 0.291404, -0.556362,
		-0.448660, -0.877816, 0.167757,
		28.939754, 32.576904, 52.906387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640541, 33.409721, 52.945190>,  <29.253817, 33.191376, 52.788956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640541, 33.409721, 52.945190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.663958, 33.031837, 53.074253>,  <28.678007, 32.805107, 53.151691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.663958, 33.031837, 53.074253>,  <28.640541, 33.409721, 52.945190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663958, 33.031837, 53.074253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436280, 0.266497, 0.859441,
		-0.897905, -0.191077, -0.396555,
		0.058539, -0.944706, 0.322652,
		28.681519, 32.748425, 53.171047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976904, 33.251999, 53.233669>,  <28.640541, 33.409721, 52.945190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976904, 33.251999, 53.233669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.255104, 33.010082, 53.388851>,  <28.422024, 32.864933, 53.481960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.255104, 33.010082, 53.388851>,  <27.976904, 33.251999, 53.233669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255104, 33.010082, 53.388851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223917, 0.330607, 0.916821,
		-0.682743, -0.724520, 0.094515,
		0.695502, -0.604789, 0.387952,
		28.463755, 32.828644, 53.505238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652885, 33.040684, 53.891304>,  <27.976904, 33.251999, 53.233669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652885, 33.040684, 53.891304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.045338, 32.969112, 53.920609>,  <28.280809, 32.926170, 53.938190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.045338, 32.969112, 53.920609>,  <27.652885, 33.040684, 53.891304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045338, 32.969112, 53.920609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005921, 0.350928, 0.936384,
		-0.193258, -0.919148, 0.343246,
		0.981130, -0.178931, 0.073262,
		28.339676, 32.915432, 53.942589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751560, 32.558479, 54.404133>,  <27.652885, 33.040684, 53.891304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751560, 32.558479, 54.404133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.086920, 32.775856, 54.387379>,  <28.288136, 32.906284, 54.377327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.086920, 32.775856, 54.387379>,  <27.751560, 32.558479, 54.404133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086920, 32.775856, 54.387379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154108, 0.310053, 0.938146,
		0.522818, -0.780085, 0.343698,
		0.838398, 0.543447, -0.041884,
		28.338440, 32.938889, 54.374813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.096218, 32.459984, 55.071232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331720, 32.746876, 54.922127>,  <28.473021, 32.919010, 54.832664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331720, 32.746876, 54.922127>,  <28.096218, 32.459984, 55.071232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331720, 32.746876, 54.922127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136546, 0.542788, 0.828695,
		0.796696, -0.436997, 0.417503,
		0.588753, 0.717227, -0.372767,
		28.508347, 32.962044, 54.810295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678017, 32.560532, 55.517273>,  <28.096218, 32.459984, 55.071232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678017, 32.560532, 55.517273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624487, 32.894554, 55.303818>,  <28.592369, 33.094967, 55.175747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624487, 32.894554, 55.303818>,  <28.678017, 32.560532, 55.517273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624487, 32.894554, 55.303818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001879, 0.538692, 0.842500,
		0.991003, 0.111743, -0.073658,
		-0.133823, 0.835059, -0.533636,
		28.584341, 33.145073, 55.143726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095932, 32.989883, 55.991467>,  <28.678017, 32.560532, 55.517273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095932, 32.989883, 55.991467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910057, 33.239079, 55.739769>,  <28.798532, 33.388596, 55.588749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910057, 33.239079, 55.739769>,  <29.095932, 32.989883, 55.991467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910057, 33.239079, 55.739769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163354, 0.638122, 0.752406,
		0.870276, 0.452424, -0.194760,
		-0.464688, 0.622986, -0.629248,
		28.770651, 33.425976, 55.550995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307735, 33.566216, 56.174892>,  <29.095932, 32.989883, 55.991467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307735, 33.566216, 56.174892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962208, 33.644825, 55.989334>,  <28.754892, 33.691990, 55.877998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962208, 33.644825, 55.989334>,  <29.307735, 33.566216, 56.174892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962208, 33.644825, 55.989334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195299, 0.718168, 0.667901,
		0.464411, 0.667543, -0.581986,
		-0.863817, 0.196519, -0.463896,
		28.703062, 33.703781, 55.850166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280167, 34.332981, 56.181267>,  <29.307735, 33.566216, 56.174892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280167, 34.332981, 56.181267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916138, 34.178249, 56.121761>,  <28.697720, 34.085411, 56.086060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916138, 34.178249, 56.121761>,  <29.280167, 34.332981, 56.181267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916138, 34.178249, 56.121761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374833, 0.615080, 0.693669,
		-0.176830, 0.687051, -0.704764,
		-0.910072, -0.386830, -0.148765,
		28.643116, 34.062199, 56.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901085, 34.840607, 56.023643>,  <29.280167, 34.332981, 56.181267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901085, 34.840607, 56.023643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664715, 34.564693, 56.190975>,  <28.522892, 34.399143, 56.291374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664715, 34.564693, 56.190975>,  <28.901085, 34.840607, 56.023643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664715, 34.564693, 56.190975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415079, 0.704619, 0.575518,
		-0.691749, 0.166447, -0.702693,
		-0.590925, -0.689787, 0.418331,
		28.487438, 34.357758, 56.316475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201071, 35.233906, 56.108597>,  <28.901085, 34.840607, 56.023643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201071, 35.233906, 56.108597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192963, 34.906231, 56.337864>,  <28.188097, 34.709625, 56.475422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192963, 34.906231, 56.337864>,  <28.201071, 35.233906, 56.108597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192963, 34.906231, 56.337864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596271, 0.470076, 0.650761,
		-0.802528, -0.328569, -0.497988,
		-0.020272, -0.819189, 0.573165,
		28.186882, 34.660473, 56.509815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530029, 35.283821, 56.259689>,  <28.201071, 35.233906, 56.108597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530029, 35.283821, 56.259689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697384, 35.025452, 56.515106>,  <27.797796, 34.870430, 56.668354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697384, 35.025452, 56.515106>,  <27.530029, 35.283821, 56.259689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697384, 35.025452, 56.515106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510313, 0.414398, 0.753562,
		-0.751354, -0.641136, -0.156245,
		0.418388, -0.645925, 0.638539,
		27.822901, 34.831673, 56.706669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007044, 34.893326, 56.657665>,  <27.530029, 35.283821, 56.259689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007044, 34.893326, 56.657665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348471, 34.948944, 56.858501>,  <27.553328, 34.982315, 56.979004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348471, 34.948944, 56.858501>,  <27.007044, 34.893326, 56.657665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348471, 34.948944, 56.858501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503757, 0.466044, 0.727345,
		-0.132863, -0.873768, 0.467844,
		0.853567, 0.139043, 0.502087,
		27.604540, 34.990658, 57.009129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729733, 34.885941, 57.358639>,  <27.007044, 34.893326, 56.657665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729733, 34.885941, 57.358639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102091, 35.030998, 57.376183>,  <27.325506, 35.118031, 57.386707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102091, 35.030998, 57.376183>,  <26.729733, 34.885941, 57.358639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102091, 35.030998, 57.376183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259656, 0.572468, 0.777727,
		0.256927, -0.735371, 0.627070,
		0.930896, 0.362641, 0.043861,
		27.381359, 35.139790, 57.389339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867113, 34.934757, 58.122570>,  <26.729733, 34.885941, 57.358639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867113, 34.934757, 58.122570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147219, 35.174725, 57.967789>,  <27.315281, 35.318703, 57.874920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147219, 35.174725, 57.967789>,  <26.867113, 34.934757, 58.122570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147219, 35.174725, 57.967789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222016, 0.698174, 0.680634,
		0.678476, -0.390719, 0.622100,
		0.700271, 0.599910, -0.386948,
		27.357298, 35.354698, 57.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173506, 35.242977, 58.641685>,  <26.867113, 34.934757, 58.122570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173506, 35.242977, 58.641685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297703, 35.484570, 58.348072>,  <27.372221, 35.629524, 58.171906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297703, 35.484570, 58.348072>,  <27.173506, 35.242977, 58.641685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297703, 35.484570, 58.348072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207602, 0.796639, 0.567687,
		0.927630, -0.023875, 0.372737,
		0.310490, 0.603984, -0.734029,
		27.390850, 35.665764, 58.127865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713394, 35.758598, 58.943214>,  <27.173506, 35.242977, 58.641685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713394, 35.758598, 58.943214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504335, 35.897705, 58.631855>,  <27.378901, 35.981167, 58.445038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504335, 35.897705, 58.631855>,  <27.713394, 35.758598, 58.943214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504335, 35.897705, 58.631855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215126, 0.829683, 0.515119,
		0.824963, 0.436677, -0.358816,
		-0.522645, 0.347763, -0.778398,
		27.347542, 36.002033, 58.398335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927620, 36.427036, 58.886166>,  <27.713394, 35.758598, 58.943214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927620, 36.427036, 58.886166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597414, 36.451218, 58.661713>,  <27.399290, 36.465725, 58.527042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597414, 36.451218, 58.661713>,  <27.927620, 36.427036, 58.886166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597414, 36.451218, 58.661713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252680, 0.849443, 0.463249,
		0.504653, 0.524206, -0.685955,
		-0.825517, 0.060453, -0.561130,
		27.349758, 36.469353, 58.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859598, 37.102135, 58.683895>,  <27.927620, 36.427036, 58.886166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859598, 37.102135, 58.683895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487162, 36.966171, 58.630932>,  <27.263700, 36.884594, 58.599155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487162, 36.966171, 58.630932>,  <27.859598, 37.102135, 58.683895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487162, 36.966171, 58.630932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364637, 0.877552, 0.311355,
		0.010361, 0.338180, -0.941024,
		-0.931092, -0.339906, -0.132406,
		27.207834, 36.864201, 58.591209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442663, 37.610741, 58.396393>,  <27.859598, 37.102135, 58.683895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442663, 37.610741, 58.396393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179737, 37.352188, 58.551376>,  <27.021980, 37.197056, 58.644367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179737, 37.352188, 58.551376>,  <27.442663, 37.610741, 58.396393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179737, 37.352188, 58.551376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458211, 0.750980, 0.475470,
		-0.598311, 0.134995, -0.789810,
		-0.657317, -0.646379, 0.387463,
		26.982542, 37.158276, 58.667614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877396, 38.017147, 58.489697>,  <27.442663, 37.610741, 58.396393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877396, 38.017147, 58.489697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721884, 37.699852, 58.677155>,  <26.628576, 37.509476, 58.789627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721884, 37.699852, 58.677155>,  <26.877396, 38.017147, 58.489697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721884, 37.699852, 58.677155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557139, 0.607529, 0.566131,
		-0.733790, -0.040999, -0.678138,
		-0.388777, -0.793239, 0.468641,
		26.605251, 37.461880, 58.817745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106472, 38.033451, 58.338184>,  <26.877396, 38.017147, 58.489697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106472, 38.033451, 58.338184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201710, 37.863144, 58.687363>,  <26.258852, 37.760960, 58.896870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201710, 37.863144, 58.687363>,  <26.106472, 38.033451, 58.338184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201710, 37.863144, 58.687363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462740, 0.740495, 0.487379,
		-0.853922, -0.519989, -0.020714,
		0.238093, -0.425769, 0.872945,
		26.273138, 37.735413, 58.949245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470335, 38.033390, 58.812691>,  <26.106472, 38.033451, 58.338184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470335, 38.033390, 58.812691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775421, 37.979362, 59.065678>,  <25.958473, 37.946945, 59.217472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775421, 37.979362, 59.065678>,  <25.470335, 38.033390, 58.812691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775421, 37.979362, 59.065678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366220, 0.715850, 0.594509,
		-0.533053, -0.685066, 0.496527,
		0.762717, -0.135067, 0.632471,
		26.004236, 37.938843, 59.255421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187540, 37.869583, 59.454308>,  <25.470335, 38.033390, 58.812691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187540, 37.869583, 59.454308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558643, 37.973930, 59.561050>,  <25.781305, 38.036537, 59.625095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558643, 37.973930, 59.561050>,  <25.187540, 37.869583, 59.454308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558643, 37.973930, 59.561050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371990, 0.589421, 0.717082,
		0.029776, -0.764546, 0.643881,
		0.927759, 0.260869, 0.266853,
		25.836971, 38.052193, 59.641106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204613, 37.855244, 60.181877>,  <25.187540, 37.869583, 59.454308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204613, 37.855244, 60.181877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512730, 38.089794, 60.081623>,  <25.697599, 38.230522, 60.021469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512730, 38.089794, 60.081623>,  <25.204613, 37.855244, 60.181877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512730, 38.089794, 60.081623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259397, 0.647169, 0.716858,
		0.582549, -0.487176, 0.650612,
		0.770292, 0.586372, -0.250636,
		25.743816, 38.265705, 60.006432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639812, 37.938023, 60.830387>,  <25.204613, 37.855244, 60.181877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639812, 37.938023, 60.830387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685465, 38.243298, 60.575977>,  <25.712856, 38.426460, 60.423332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685465, 38.243298, 60.575977>,  <25.639812, 37.938023, 60.830387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685465, 38.243298, 60.575977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201331, 0.644689, 0.737456,
		0.972851, 0.043886, 0.227231,
		0.114130, 0.763184, -0.636022,
		25.719704, 38.472252, 60.385170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961079, 37.304562, 60.817680>,  <25.639812, 37.938023, 60.830387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961079, 37.304562, 60.817680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254572, 37.567429, 60.748676>,  <26.430668, 37.725151, 60.707275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254572, 37.567429, 60.748676>,  <25.961079, 37.304562, 60.817680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254572, 37.567429, 60.748676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005425, -0.248223, -0.968688,
		-0.679415, 0.711696, -0.178565,
		0.733735, 0.657172, -0.172507,
		26.474691, 37.764580, 60.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322371, 37.153191, 61.250198>,  <25.961079, 37.304562, 60.817680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322371, 37.153191, 61.250198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218266, 36.788563, 61.122883>,  <25.155802, 36.569786, 61.046494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218266, 36.788563, 61.122883>,  <25.322371, 37.153191, 61.250198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218266, 36.788563, 61.122883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679424, 0.407128, -0.610434,
		0.686038, 0.057383, -0.725300,
		-0.260262, -0.911567, -0.318292,
		25.140186, 36.515091, 61.027393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911268, 37.380596, 61.570492>,  <25.322371, 37.153191, 61.250198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911268, 37.380596, 61.570492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053537, 37.342594, 61.942398>,  <26.138899, 37.319794, 62.165543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053537, 37.342594, 61.942398>,  <25.911268, 37.380596, 61.570492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053537, 37.342594, 61.942398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769635, -0.534631, -0.349044,
		0.530243, 0.839729, -0.117037,
		0.355674, -0.095002, 0.929769,
		26.160240, 37.314095, 62.221329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564106, 37.711239, 61.606903>,  <25.911268, 37.380596, 61.570492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564106, 37.711239, 61.606903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542055, 37.416100, 61.875988>,  <26.528824, 37.239017, 62.037437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542055, 37.416100, 61.875988>,  <26.564106, 37.711239, 61.606903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542055, 37.416100, 61.875988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819534, -0.418303, -0.391646,
		0.570373, 0.529720, 0.627751,
		-0.055127, -0.737848, 0.672712,
		26.525517, 37.194744, 62.077801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222940, 37.567734, 61.686661>,  <26.564106, 37.711239, 61.606903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222940, 37.567734, 61.686661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041348, 37.253117, 61.854111>,  <26.932392, 37.064346, 61.954578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041348, 37.253117, 61.854111>,  <27.222940, 37.567734, 61.686661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041348, 37.253117, 61.854111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773209, -0.581245, -0.253577,
		0.442772, 0.208561, 0.872041,
		-0.453983, -0.786547, 0.418621,
		26.905153, 37.017151, 61.979698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682920, 37.304672, 62.206100>,  <27.222940, 37.567734, 61.686661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682920, 37.304672, 62.206100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435175, 37.003387, 62.117504>,  <27.286528, 36.822617, 62.064346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435175, 37.003387, 62.117504>,  <27.682920, 37.304672, 62.206100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435175, 37.003387, 62.117504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784624, -0.583975, -0.208176,
		0.027454, -0.302727, 0.952682,
		-0.619363, -0.753213, -0.221494,
		27.249367, 36.777424, 62.051056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912859, 36.673538, 62.577591>,  <27.682920, 37.304672, 62.206100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912859, 36.673538, 62.577591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702538, 36.527081, 62.270485>,  <27.576345, 36.439205, 62.086220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702538, 36.527081, 62.270485>,  <27.912859, 36.673538, 62.577591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702538, 36.527081, 62.270485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701105, -0.697648, -0.147441,
		-0.481647, -0.615811, 0.623533,
		-0.525802, -0.366148, -0.767768,
		27.544796, 36.417236, 62.040154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136608, 36.094650, 62.608551>,  <27.912859, 36.673538, 62.577591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136608, 36.094650, 62.608551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960627, 36.097206, 62.249352>,  <27.855038, 36.098740, 62.033833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960627, 36.097206, 62.249352>,  <28.136608, 36.094650, 62.608551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960627, 36.097206, 62.249352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741231, -0.561944, -0.367146,
		-0.506971, -0.827151, 0.242492,
		-0.439952, 0.006390, -0.897999,
		27.828640, 36.099125, 61.979954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306242, 35.406738, 62.421349>,  <28.136608, 36.094650, 62.608551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306242, 35.406738, 62.421349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178701, 35.573925, 62.081081>,  <28.102177, 35.674236, 61.876923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178701, 35.573925, 62.081081>,  <28.306242, 35.406738, 62.421349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178701, 35.573925, 62.081081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625642, -0.581379, -0.520163,
		-0.711972, -0.698070, -0.076123,
		-0.318853, 0.417967, -0.850668,
		28.083046, 35.699314, 61.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256021, 34.829941, 62.013226>,  <28.306242, 35.406738, 62.421349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256021, 34.829941, 62.013226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295498, 35.170586, 61.807308>,  <28.319183, 35.374973, 61.683758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295498, 35.170586, 61.807308>,  <28.256021, 34.829941, 62.013226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295498, 35.170586, 61.807308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444968, -0.500488, -0.742641,
		-0.890092, -0.155775, -0.428335,
		0.098691, 0.851614, -0.514795,
		28.325106, 35.426071, 61.652870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867174, 34.862045, 61.296654>,  <28.256021, 34.829941, 62.013226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867174, 34.862045, 61.296654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184868, 35.104980, 61.289421>,  <28.375484, 35.250744, 61.285084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184868, 35.104980, 61.289421>,  <27.867174, 34.862045, 61.296654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184868, 35.104980, 61.289421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387536, -0.529259, -0.754785,
		-0.467979, 0.592472, -0.655723,
		0.794237, 0.607340, -0.018078,
		28.423140, 35.287182, 61.283997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864521, 34.991619, 60.637451>,  <27.867174, 34.862045, 61.296654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864521, 34.991619, 60.637451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239174, 35.111401, 60.710167>,  <28.463966, 35.183270, 60.753796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239174, 35.111401, 60.710167>,  <27.864521, 34.991619, 60.637451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239174, 35.111401, 60.710167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293656, -0.388190, -0.873541,
		-0.191018, 0.871570, -0.451528,
		0.936631, 0.299456, 0.181791,
		28.520163, 35.201237, 60.764706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012985, 35.238125, 59.995937>,  <27.864521, 34.991619, 60.637451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012985, 35.238125, 59.995937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354704, 35.173389, 60.193516>,  <28.559734, 35.134548, 60.312065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354704, 35.173389, 60.193516>,  <28.012985, 35.238125, 59.995937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354704, 35.173389, 60.193516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406088, -0.385377, -0.828600,
		0.324454, 0.908457, -0.263506,
		0.854296, -0.161836, 0.493951,
		28.610992, 35.124840, 60.341702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563005, 35.635406, 59.622482>,  <28.012985, 35.238125, 59.995937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563005, 35.635406, 59.622482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718067, 35.326363, 59.823597>,  <28.811104, 35.140938, 59.944267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718067, 35.326363, 59.823597>,  <28.563005, 35.635406, 59.622482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718067, 35.326363, 59.823597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240701, -0.441676, -0.864283,
		0.889824, 0.456065, 0.014750,
		0.387654, -0.772611, 0.502789,
		28.834364, 35.094578, 59.974434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200439, 35.606163, 59.410110>,  <28.563005, 35.635406, 59.622482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200439, 35.606163, 59.410110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143267, 35.247898, 59.578564>,  <29.108963, 35.032940, 59.679634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143267, 35.247898, 59.578564>,  <29.200439, 35.606163, 59.410110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143267, 35.247898, 59.578564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274185, -0.444680, -0.852691,
		0.950995, -0.006411, 0.309138,
		-0.142934, -0.895666, 0.421131,
		29.100386, 34.979198, 59.704903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809204, 35.204685, 59.293869>,  <29.200439, 35.606163, 59.410110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809204, 35.204685, 59.293869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527948, 34.935242, 59.384949>,  <29.359196, 34.773575, 59.439598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527948, 34.935242, 59.384949>,  <29.809204, 35.204685, 59.293869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527948, 34.935242, 59.384949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249377, -0.533506, -0.808197,
		0.665890, -0.511490, 0.543111,
		-0.703138, -0.673609, 0.227702,
		29.317007, 34.733158, 59.453259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226345, 34.498566, 59.222481>,  <29.809204, 35.204685, 59.293869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226345, 34.498566, 59.222481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834547, 34.418739, 59.211433>,  <29.599468, 34.370842, 59.204803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834547, 34.418739, 59.211433>,  <30.226345, 34.498566, 59.222481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834547, 34.418739, 59.211433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142686, -0.590372, -0.794419,
		0.142233, -0.782071, 0.606742,
		-0.979495, -0.199566, -0.027620,
		29.540699, 34.358871, 59.203148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145920, 33.832573, 59.422085>,  <30.226345, 34.498566, 59.222481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145920, 33.832573, 59.422085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839048, 33.953796, 59.195953>,  <29.654924, 34.026531, 59.060276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839048, 33.953796, 59.195953>,  <30.145920, 33.832573, 59.422085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839048, 33.953796, 59.195953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169722, -0.754026, -0.634539,
		-0.618570, -0.582754, 0.527039,
		-0.767181, 0.303057, -0.565323,
		29.608894, 34.044712, 59.026356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773726, 33.243156, 59.268665>,  <30.145920, 33.832573, 59.422085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773726, 33.243156, 59.268665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681347, 33.486736, 58.965126>,  <29.625919, 33.632885, 58.783005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681347, 33.486736, 58.965126>,  <29.773726, 33.243156, 59.268665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681347, 33.486736, 58.965126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203324, -0.732504, -0.649690,
		-0.951485, -0.304333, 0.045354,
		-0.230944, 0.608949, -0.758845,
		29.612064, 33.669422, 58.737473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699020, 32.739170, 58.759136>,  <29.773726, 33.243156, 59.268665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699020, 32.739170, 58.759136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697571, 33.089775, 58.566593>,  <29.696701, 33.300140, 58.451069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697571, 33.089775, 58.566593>,  <29.699020, 32.739170, 58.759136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697571, 33.089775, 58.566593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406777, -0.438444, -0.801436,
		-0.913521, -0.198709, -0.354958,
		-0.003624, 0.876517, -0.481358,
		29.696484, 33.352730, 58.422184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288109, 32.670605, 58.177639>,  <29.699020, 32.739170, 58.759136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288109, 32.670605, 58.177639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548346, 32.966068, 58.107082>,  <29.704489, 33.143345, 58.064747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548346, 32.966068, 58.107082>,  <29.288109, 32.670605, 58.177639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548346, 32.966068, 58.107082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351977, -0.499109, -0.791835,
		-0.672934, 0.453075, -0.584707,
		0.650593, 0.738657, -0.176395,
		29.743523, 33.187664, 58.054165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289351, 32.945805, 57.447617>,  <29.288109, 32.670605, 58.177639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289351, 32.945805, 57.447617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666836, 33.018036, 57.558464>,  <29.893328, 33.061375, 57.624973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666836, 33.018036, 57.558464>,  <29.289351, 32.945805, 57.447617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666836, 33.018036, 57.558464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319256, -0.278244, -0.905901,
		-0.086483, 0.943383, -0.320234,
		0.943714, 0.180582, 0.277117,
		29.949949, 33.072212, 57.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.360069, 33.224140, 50.884151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.310616, 33.475903, 51.191021>,  <47.280945, 33.626961, 51.375145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.310616, 33.475903, 51.191021>,  <47.360069, 33.224140, 50.884151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310616, 33.475903, 51.191021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990132, -0.026836, -0.137543,
		-0.065983, -0.776611, 0.626516,
		-0.123630, 0.629409, 0.767176,
		47.273525, 33.664726, 51.421173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771271, 33.018253, 51.286259>,  <47.360069, 33.224140, 50.884151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771271, 33.018253, 51.286259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.823360, 33.414837, 51.289143>,  <46.854614, 33.652786, 51.290874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.823360, 33.414837, 51.289143>,  <46.771271, 33.018253, 51.286259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823360, 33.414837, 51.289143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957964, 0.127694, -0.256905,
		-0.255631, 0.026548, 0.966410,
		0.130225, 0.991458, 0.007211,
		46.862427, 33.712273, 51.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157536, 33.233505, 51.701496>,  <46.771271, 33.018253, 51.286259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157536, 33.233505, 51.701496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.279182, 33.569912, 51.522518>,  <46.352169, 33.771755, 51.415131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.279182, 33.569912, 51.522518>,  <46.157536, 33.233505, 51.701496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279182, 33.569912, 51.522518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952141, 0.283482, -0.114308,
		0.030707, 0.460791, 0.886977,
		0.304114, 0.841017, -0.447442,
		46.370415, 33.822216, 51.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795273, 33.839260, 52.003185>,  <46.157536, 33.233505, 51.701496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795273, 33.839260, 52.003185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.906536, 33.937038, 51.631622>,  <45.973293, 33.995705, 51.408684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.906536, 33.937038, 51.631622>,  <45.795273, 33.839260, 52.003185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906536, 33.937038, 51.631622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926338, 0.324017, -0.192121,
		0.254018, 0.913924, 0.316572,
		0.278159, 0.244450, -0.928909,
		45.989983, 34.010372, 51.352951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437225, 34.370117, 51.903118>,  <45.795273, 33.839260, 52.003185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437225, 34.370117, 51.903118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.557167, 34.299702, 51.528076>,  <45.629131, 34.257450, 51.303051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.557167, 34.299702, 51.528076>,  <45.437225, 34.370117, 51.903118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557167, 34.299702, 51.528076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929421, 0.167684, -0.328723,
		0.215089, 0.969996, -0.113335,
		0.299855, -0.176041, -0.937601,
		45.647125, 34.246891, 51.246796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249641, 35.040745, 51.502605>,  <45.437225, 34.370117, 51.903118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249641, 35.040745, 51.502605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.286560, 34.748116, 51.232410>,  <45.308712, 34.572536, 51.070293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.286560, 34.748116, 51.232410>,  <45.249641, 35.040745, 51.502605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286560, 34.748116, 51.232410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912380, 0.209566, -0.351632,
		0.398804, 0.648751, -0.648134,
		0.092295, -0.731576, -0.675484,
		45.314247, 34.528641, 51.029766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918259, 35.341839, 50.877968>,  <45.249641, 35.040745, 51.502605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918259, 35.341839, 50.877968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.949039, 34.951313, 50.797077>,  <44.967510, 34.716999, 50.748543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.949039, 34.951313, 50.797077>,  <44.918259, 35.341839, 50.877968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949039, 34.951313, 50.797077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899614, 0.019452, -0.436251,
		0.429851, 0.215497, -0.876806,
		0.076955, -0.976311, -0.202226,
		44.972126, 34.658421, 50.736408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700493, 35.331913, 50.235771>,  <44.918259, 35.341839, 50.877968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700493, 35.331913, 50.235771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.650543, 34.956055, 50.363190>,  <44.620571, 34.730541, 50.439640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.650543, 34.956055, 50.363190>,  <44.700493, 35.331913, 50.235771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650543, 34.956055, 50.363190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853194, -0.062174, -0.517874,
		0.506424, -0.336449, -0.793937,
		-0.124876, -0.939647, 0.318543,
		44.613079, 34.674160, 50.458752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583099, 34.964840, 49.620731>,  <44.700493, 35.331913, 50.235771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583099, 34.964840, 49.620731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.443848, 34.742817, 49.922916>,  <44.360298, 34.609604, 50.104229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.443848, 34.742817, 49.922916>,  <44.583099, 34.964840, 49.620731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443848, 34.742817, 49.922916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905984, -0.007828, -0.423239,
		0.240835, -0.831777, -0.500146,
		-0.348126, -0.555055, 0.755462,
		44.339409, 34.576302, 50.149555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290794, 34.416866, 49.308090>,  <44.583099, 34.964840, 49.620731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290794, 34.416866, 49.308090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.107746, 34.395370, 49.663097>,  <43.997917, 34.382473, 49.876102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.107746, 34.395370, 49.663097>,  <44.290794, 34.416866, 49.308090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107746, 34.395370, 49.663097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862265, -0.216763, -0.457725,
		0.216980, -0.974744, 0.052857,
		-0.457622, -0.053740, 0.887521,
		43.970459, 34.379250, 49.929356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868496, 34.008087, 49.194614>,  <44.290794, 34.416866, 49.308090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868496, 34.008087, 49.194614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703133, 34.161152, 49.525108>,  <43.603916, 34.252991, 49.723404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703133, 34.161152, 49.525108>,  <43.868496, 34.008087, 49.194614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703133, 34.161152, 49.525108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905922, -0.264192, -0.330919,
		0.091658, -0.885312, 0.455875,
		-0.413405, 0.382656, 0.826239,
		43.579109, 34.275948, 49.772980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428181, 33.510246, 49.524593>,  <43.868496, 34.008087, 49.194614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428181, 33.510246, 49.524593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.304890, 33.855518, 49.684551>,  <43.230915, 34.062683, 49.780525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.304890, 33.855518, 49.684551>,  <43.428181, 33.510246, 49.524593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304890, 33.855518, 49.684551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946149, -0.234404, -0.223288,
		-0.099001, -0.447183, 0.888947,
		-0.308224, 0.863181, 0.399896,
		43.212421, 34.114471, 49.804520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916603, 33.327892, 49.884583>,  <43.428181, 33.510246, 49.524593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916603, 33.327892, 49.884583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.857540, 33.723492, 49.880905>,  <42.822102, 33.960850, 49.878696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.857540, 33.723492, 49.880905>,  <42.916603, 33.327892, 49.884583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857540, 33.723492, 49.880905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982907, -0.147770, -0.109807,
		-0.109957, -0.007175, 0.993910,
		-0.147658, 0.988996, -0.009196,
		42.813244, 34.020191, 49.878147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474472, 33.464100, 50.371349>,  <42.916603, 33.327892, 49.884583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474472, 33.464100, 50.371349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.429535, 33.796448, 50.153347>,  <42.402573, 33.995857, 50.022545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.429535, 33.796448, 50.153347>,  <42.474472, 33.464100, 50.371349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429535, 33.796448, 50.153347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993446, -0.105541, 0.043883,
		-0.021060, 0.546364, 0.837283,
		-0.112343, 0.830872, -0.545006,
		42.395832, 34.045708, 49.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082256, 33.897770, 50.775753>,  <42.474472, 33.464100, 50.371349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082256, 33.897770, 50.775753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044437, 34.022087, 50.397449>,  <42.021748, 34.096680, 50.170467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044437, 34.022087, 50.397449>,  <42.082256, 33.897770, 50.775753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044437, 34.022087, 50.397449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984705, 0.110465, 0.134737,
		0.146349, 0.944036, 0.295598,
		-0.094544, 0.310796, -0.945763,
		42.016075, 34.115326, 50.113720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778870, 34.510361, 50.873581>,  <42.082256, 33.897770, 50.775753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778870, 34.510361, 50.873581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692665, 34.384933, 50.503666>,  <41.640942, 34.309677, 50.281719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692665, 34.384933, 50.503666>,  <41.778870, 34.510361, 50.873581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692665, 34.384933, 50.503666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935964, 0.336367, 0.104066,
		0.278435, 0.887993, -0.365983,
		-0.215514, -0.313571, -0.924785,
		41.628010, 34.290863, 50.226231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408466, 34.999088, 50.540321>,  <41.778870, 34.510361, 50.873581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408466, 34.999088, 50.540321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.287937, 34.673962, 50.340908>,  <41.215618, 34.478886, 50.221260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.287937, 34.673962, 50.340908>,  <41.408466, 34.999088, 50.540321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287937, 34.673962, 50.340908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951890, 0.225839, 0.207128,
		-0.055767, 0.536965, -0.841759,
		-0.301323, -0.812813, -0.498537,
		41.197540, 34.430119, 50.191345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709782, 35.197376, 50.371422>,  <41.408466, 34.999088, 50.540321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709782, 35.197376, 50.371422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.718540, 34.814930, 50.254551>,  <40.723793, 34.585461, 50.184429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.718540, 34.814930, 50.254551>,  <40.709782, 35.197376, 50.371422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718540, 34.814930, 50.254551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997642, -0.001877, -0.068613,
		0.065054, 0.292987, -0.953901,
		0.021893, -0.956114, -0.292174,
		40.725109, 34.528095, 50.166897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377094, 35.155727, 49.769260>,  <40.709782, 35.197376, 50.371422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377094, 35.155727, 49.769260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363388, 34.774853, 49.890701>,  <40.355164, 34.546329, 49.963566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363388, 34.774853, 49.890701>,  <40.377094, 35.155727, 49.769260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363388, 34.774853, 49.890701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995066, 0.004207, -0.099122,
		0.093105, -0.305502, -0.947629,
		-0.034268, -0.952182, 0.303603,
		40.353107, 34.489197, 49.981781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123760, 34.794003, 49.204319>,  <40.377094, 35.155727, 49.769260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123760, 34.794003, 49.204319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039993, 34.576881, 49.529652>,  <39.989735, 34.446609, 49.724854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039993, 34.576881, 49.529652>,  <40.123760, 34.794003, 49.204319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039993, 34.576881, 49.529652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961071, -0.039069, -0.273526,
		0.180245, -0.838954, -0.513486,
		-0.209415, -0.542798, 0.813336,
		39.977169, 34.414043, 49.773651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709415, 34.333576, 48.936169>,  <40.123760, 34.794003, 49.204319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709415, 34.333576, 48.936169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613541, 34.313267, 49.323978>,  <39.556015, 34.301079, 49.556664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613541, 34.313267, 49.323978>,  <39.709415, 34.333576, 48.936169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613541, 34.313267, 49.323978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964852, -0.098381, -0.243686,
		0.107756, -0.993853, -0.025412,
		-0.239688, -0.050777, 0.969521,
		39.541634, 34.298035, 49.614834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234463, 33.815899, 49.082668>,  <39.709415, 34.333576, 48.936169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234463, 33.815899, 49.082668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185493, 34.115143, 49.343544>,  <39.156113, 34.294689, 49.500069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185493, 34.115143, 49.343544>,  <39.234463, 33.815899, 49.082668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185493, 34.115143, 49.343544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940856, 0.121695, -0.316196,
		-0.315916, -0.652325, 0.688962,
		-0.122419, 0.748106, 0.652189,
		39.148769, 34.339573, 49.539200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736237, 33.615849, 49.589287>,  <39.234463, 33.815899, 49.082668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736237, 33.615849, 49.589287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766548, 34.009312, 49.523964>,  <38.784733, 34.245392, 49.484768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766548, 34.009312, 49.523964>,  <38.736237, 33.615849, 49.589287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766548, 34.009312, 49.523964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959542, 0.027393, -0.280229,
		-0.271177, 0.177938, 0.945939,
		0.075775, 0.983661, -0.163311,
		38.789280, 34.304409, 49.474972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020576, 33.799320, 49.638325>,  <38.736237, 33.615849, 49.589287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020576, 33.799320, 49.638325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220577, 34.093464, 49.455353>,  <38.340580, 34.269951, 49.345570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220577, 34.093464, 49.455353>,  <38.020576, 33.799320, 49.638325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220577, 34.093464, 49.455353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802935, 0.195735, -0.563012,
		-0.324483, 0.648793, 0.688316,
		0.500006, 0.735361, -0.457426,
		38.370579, 34.314072, 49.318127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847416, 33.355816, 49.119530>,  <38.020576, 33.799320, 49.638325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847416, 33.355816, 49.119530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900772, 33.022076, 48.905590>,  <37.932785, 32.821831, 48.777225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900772, 33.022076, 48.905590>,  <37.847416, 33.355816, 49.119530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900772, 33.022076, 48.905590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991003, -0.106338, -0.081266,
		0.010929, 0.540882, -0.841028,
		0.133389, -0.834349, -0.534854,
		37.940788, 32.771770, 48.745132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350349, 33.394463, 48.578957>,  <37.847416, 33.355816, 49.119530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350349, 33.394463, 48.578957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459000, 33.009533, 48.583813>,  <37.524189, 32.778576, 48.586727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459000, 33.009533, 48.583813>,  <37.350349, 33.394463, 48.578957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459000, 33.009533, 48.583813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955654, -0.271194, -0.114801,
		0.113769, 0.019581, -0.993314,
		0.271628, -0.962326, 0.012141,
		37.540489, 32.720837, 48.587456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117550, 33.059433, 47.907497>,  <37.350349, 33.394463, 48.578957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117550, 33.059433, 47.907497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155315, 32.791775, 48.202343>,  <37.177975, 32.631180, 48.379250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155315, 32.791775, 48.202343>,  <37.117550, 33.059433, 47.907497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155315, 32.791775, 48.202343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946194, -0.290516, -0.142535,
		0.309519, -0.683993, -0.660569,
		0.094413, -0.669144, 0.737111,
		37.183640, 32.591030, 48.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916119, 32.367680, 47.670914>,  <37.117550, 33.059433, 47.907497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916119, 32.367680, 47.670914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882595, 32.337006, 48.068325>,  <36.862480, 32.318600, 48.306770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882595, 32.337006, 48.068325>,  <36.916119, 32.367680, 47.670914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882595, 32.337006, 48.068325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861342, -0.495768, -0.110926,
		0.501065, -0.865062, -0.024505,
		-0.083809, -0.076688, 0.993526,
		36.857452, 32.313999, 48.366383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506802, 31.746286, 47.751671>,  <36.916119, 32.367680, 47.670914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506802, 31.746286, 47.751671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478504, 31.905848, 48.117374>,  <36.461525, 32.001583, 48.336796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478504, 31.905848, 48.117374>,  <36.506802, 31.746286, 47.751671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478504, 31.905848, 48.117374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837637, -0.521435, 0.162696,
		0.541627, -0.754310, 0.371021,
		-0.070740, 0.398901, 0.914261,
		36.457283, 32.025517, 48.391651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380112, 31.231197, 48.215309>,  <36.506802, 31.746286, 47.751671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380112, 31.231197, 48.215309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256310, 31.553249, 48.417683>,  <36.182030, 31.746481, 48.539108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256310, 31.553249, 48.417683>,  <36.380112, 31.231197, 48.215309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256310, 31.553249, 48.417683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903220, -0.415282, 0.108326,
		0.297324, -0.423446, 0.855741,
		-0.309504, 0.805130, 0.505938,
		36.163460, 31.794788, 48.569466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923355, 30.941483, 48.668270>,  <36.380112, 31.231197, 48.215309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923355, 30.941483, 48.668270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810047, 31.325092, 48.670334>,  <35.742062, 31.555258, 48.671570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810047, 31.325092, 48.670334>,  <35.923355, 30.941483, 48.668270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810047, 31.325092, 48.670334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956191, -0.282841, 0.075498,
		0.073863, 0.016457, 0.997133,
		-0.283273, 0.959025, 0.005155,
		35.725067, 31.612801, 48.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423325, 30.976851, 49.214832>,  <35.923355, 30.941483, 48.668270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423325, 30.976851, 49.214832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345287, 31.289963, 48.978462>,  <35.298466, 31.477829, 48.836639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345287, 31.289963, 48.978462>,  <35.423325, 30.976851, 49.214832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345287, 31.289963, 48.978462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977872, -0.201651, 0.055715,
		-0.075549, 0.588722, 0.804797,
		-0.195089, 0.782780, -0.590929,
		35.286762, 31.524797, 48.801182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740063, 31.140106, 49.408970>,  <35.423325, 30.976851, 49.214832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740063, 31.140106, 49.408970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.790039, 31.348654, 49.071316>,  <34.820026, 31.473783, 48.868725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.790039, 31.348654, 49.071316>,  <34.740063, 31.140106, 49.408970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790039, 31.348654, 49.071316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916406, -0.265429, -0.299580,
		-0.380249, 0.810999, 0.444624,
		0.124943, 0.521371, -0.844134,
		34.827522, 31.505066, 48.818077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191425, 31.619583, 49.321415>,  <34.740063, 31.140106, 49.408970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191425, 31.619583, 49.321415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323826, 31.576208, 48.946465>,  <34.403267, 31.550182, 48.721493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323826, 31.576208, 48.946465>,  <34.191425, 31.619583, 49.321415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323826, 31.576208, 48.946465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942767, -0.080513, -0.323587,
		-0.040382, 0.990838, -0.128881,
		0.330999, -0.108438, -0.937380,
		34.423126, 31.543676, 48.665249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707344, 32.060070, 48.887665>,  <34.191425, 31.619583, 49.321415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707344, 32.060070, 48.887665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859760, 31.803715, 48.621113>,  <33.951210, 31.649900, 48.461182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859760, 31.803715, 48.621113>,  <33.707344, 32.060070, 48.887665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859760, 31.803715, 48.621113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895593, -0.076860, -0.438185,
		0.229610, 0.763775, -0.603263,
		0.381042, -0.640890, -0.666384,
		33.974072, 31.611448, 48.421196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.458746, 32.072632, 51.709583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770941, 32.116318, 51.955807>,  <28.958258, 32.142529, 52.103542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770941, 32.116318, 51.955807>,  <28.458746, 32.072632, 51.709583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770941, 32.116318, 51.955807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625015, -0.114080, -0.772232,
		-0.014112, 0.987451, -0.157296,
		0.780485, 0.109210, 0.615562,
		29.005087, 32.149082, 52.140476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958059, 32.584297, 51.395061>,  <28.458746, 32.072632, 51.709583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958059, 32.584297, 51.395061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.160278, 32.338314, 51.637135>,  <29.281610, 32.190723, 51.782379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.160278, 32.338314, 51.637135>,  <28.958059, 32.584297, 51.395061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160278, 32.338314, 51.637135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718651, -0.088018, -0.689777,
		0.477452, 0.783631, 0.397444,
		0.505549, -0.614959, 0.605182,
		29.311943, 32.153828, 51.818687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569427, 32.950497, 51.622356>,  <28.958059, 32.584297, 51.395061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569427, 32.950497, 51.622356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.645008, 32.557938, 51.636005>,  <29.690357, 32.322403, 51.644196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.645008, 32.557938, 51.636005>,  <29.569427, 32.950497, 51.622356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645008, 32.557938, 51.636005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769171, 0.126314, -0.626435,
		0.610469, 0.144611, 0.778727,
		0.188954, -0.981393, 0.034120,
		29.701694, 32.263519, 51.646240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269609, 32.891800, 51.801159>,  <29.569427, 32.950497, 51.622356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269609, 32.891800, 51.801159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182627, 32.528198, 51.658928>,  <30.130438, 32.310040, 51.573589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182627, 32.528198, 51.658928>,  <30.269609, 32.891800, 51.801159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182627, 32.528198, 51.658928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844619, 0.007346, -0.535318,
		0.489216, -0.416732, 0.766161,
		-0.217456, -0.909000, -0.355573,
		30.117390, 32.255497, 51.552258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878345, 32.558090, 51.722633>,  <30.269609, 32.891800, 51.801159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878345, 32.558090, 51.722633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661076, 32.308315, 51.498119>,  <30.530714, 32.158451, 51.363411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661076, 32.308315, 51.498119>,  <30.878345, 32.558090, 51.722633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661076, 32.308315, 51.498119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816341, -0.236447, -0.526953,
		0.196333, -0.744430, 0.638184,
		-0.543176, -0.624434, -0.561286,
		30.498123, 32.120987, 51.329735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362770, 31.964479, 51.525352>,  <30.878345, 32.558090, 51.722633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362770, 31.964479, 51.525352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060539, 31.987757, 51.264362>,  <30.879202, 32.001724, 51.107769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060539, 31.987757, 51.264362>,  <31.362770, 31.964479, 51.525352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060539, 31.987757, 51.264362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623527, -0.241432, -0.743589,
		-0.200797, -0.968671, 0.146137,
		-0.755576, 0.058190, -0.652472,
		30.833866, 32.005215, 51.068623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496380, 31.421698, 51.007080>,  <31.362770, 31.964479, 51.525352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496380, 31.421698, 51.007080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253124, 31.685934, 50.830997>,  <31.107170, 31.844477, 50.725346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253124, 31.685934, 50.830997>,  <31.496380, 31.421698, 51.007080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253124, 31.685934, 50.830997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619271, 0.047840, -0.783719,
		-0.496657, -0.749221, -0.438178,
		-0.608141, 0.660590, -0.440210,
		31.070683, 31.884111, 50.698933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277918, 31.070784, 50.407150>,  <31.496380, 31.421698, 51.007080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277918, 31.070784, 50.407150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228638, 31.466225, 50.372540>,  <31.199070, 31.703489, 50.351772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228638, 31.466225, 50.372540>,  <31.277918, 31.070784, 50.407150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228638, 31.466225, 50.372540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394171, -0.031269, -0.918505,
		-0.910742, -0.147267, -0.385826,
		-0.123201, 0.988602, -0.086527,
		31.191677, 31.762806, 50.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182819, 31.043640, 49.704952>,  <31.277918, 31.070784, 50.407150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182819, 31.043640, 49.704952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238010, 31.431671, 49.784866>,  <31.271124, 31.664490, 49.832813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238010, 31.431671, 49.784866>,  <31.182819, 31.043640, 49.704952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238010, 31.431671, 49.784866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305602, 0.150172, -0.940242,
		-0.942109, 0.190786, -0.275737,
		0.137977, 0.970077, 0.199783,
		31.279404, 31.722694, 49.844803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750433, 31.473358, 49.249680>,  <31.182819, 31.043640, 49.704952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750433, 31.473358, 49.249680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078436, 31.672472, 49.362671>,  <31.275238, 31.791941, 49.430466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078436, 31.672472, 49.362671>,  <30.750433, 31.473358, 49.249680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078436, 31.672472, 49.362671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255705, 0.122931, -0.958907,
		-0.512055, 0.858544, -0.026482,
		0.820009, 0.497785, 0.282482,
		31.324438, 31.821808, 49.447414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689417, 32.096016, 48.958202>,  <30.750433, 31.473358, 49.249680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689417, 32.096016, 48.958202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074055, 32.023064, 49.040245>,  <31.304838, 31.979294, 49.089470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074055, 32.023064, 49.040245>,  <30.689417, 32.096016, 48.958202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074055, 32.023064, 49.040245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231186, 0.135424, -0.963438,
		0.147934, 0.973858, 0.172386,
		0.961597, -0.182378, 0.205109,
		31.362534, 31.968349, 49.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015368, 32.595249, 48.509964>,  <30.689417, 32.096016, 48.958202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015368, 32.595249, 48.509964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298817, 32.337013, 48.623856>,  <31.468885, 32.182072, 48.692188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298817, 32.337013, 48.623856>,  <31.015368, 32.595249, 48.509964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298817, 32.337013, 48.623856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506482, 0.184458, -0.842289,
		0.491253, 0.741073, 0.457691,
		0.708623, -0.645589, 0.284724,
		31.511404, 32.143337, 48.709274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707031, 32.896996, 48.381744>,  <31.015368, 32.595249, 48.509964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707031, 32.896996, 48.381744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702330, 32.497066, 48.375854>,  <31.699509, 32.257111, 48.372318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702330, 32.497066, 48.375854>,  <31.707031, 32.896996, 48.381744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702330, 32.497066, 48.375854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355716, 0.009586, -0.934545,
		0.934520, -0.016223, 0.355540,
		-0.011753, -0.999822, -0.014729,
		31.698803, 32.197121, 48.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444614, 32.517204, 48.291317>,  <31.707031, 32.896996, 48.381744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444614, 32.517204, 48.291317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132412, 32.318542, 48.139454>,  <31.945091, 32.199345, 48.048336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132412, 32.318542, 48.139454>,  <32.444614, 32.517204, 48.291317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132412, 32.318542, 48.139454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486194, -0.100495, -0.868053,
		0.392970, -0.862109, 0.319909,
		-0.780506, -0.496657, -0.379661,
		31.898260, 32.169544, 48.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065792, 33.004116, 47.774605>,  <32.444614, 32.517204, 48.291317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065792, 33.004116, 47.774605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251194, 33.217270, 47.491425>,  <32.362434, 33.345161, 47.321518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251194, 33.217270, 47.491425>,  <32.065792, 33.004116, 47.774605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251194, 33.217270, 47.491425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208497, 0.842113, 0.497369,
		0.861221, -0.082921, 0.501420,
		0.463494, 0.532889, -0.707956,
		32.390244, 33.377136, 47.279037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593857, 33.393982, 48.027508>,  <32.065792, 33.004116, 47.774605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593857, 33.393982, 48.027508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486042, 33.588055, 47.694775>,  <32.421352, 33.704498, 47.495136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486042, 33.588055, 47.694775>,  <32.593857, 33.393982, 48.027508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486042, 33.588055, 47.694775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288894, 0.783276, 0.550472,
		0.918634, 0.388686, -0.070957,
		-0.269539, 0.485183, -0.831833,
		32.405182, 33.733608, 47.445225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820286, 34.018501, 48.134590>,  <32.593857, 33.393982, 48.027508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820286, 34.018501, 48.134590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572788, 34.089214, 47.828415>,  <32.424290, 34.131641, 47.644711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572788, 34.089214, 47.828415>,  <32.820286, 34.018501, 48.134590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572788, 34.089214, 47.828415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368579, 0.795127, 0.481584,
		0.693758, 0.580104, -0.426825,
		-0.618748, 0.176784, -0.765440,
		32.387165, 34.142250, 47.598782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829784, 34.712994, 47.916126>,  <32.820286, 34.018501, 48.134590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829784, 34.712994, 47.916126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473957, 34.589931, 47.781067>,  <32.260460, 34.516094, 47.700031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473957, 34.589931, 47.781067>,  <32.829784, 34.712994, 47.916126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473957, 34.589931, 47.781067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428851, 0.817051, 0.385376,
		0.157313, 0.487622, -0.858765,
		-0.889573, -0.307657, -0.337650,
		32.207085, 34.497635, 47.679771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541183, 35.345272, 47.719135>,  <32.829784, 34.712994, 47.916126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541183, 35.345272, 47.719135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239685, 35.086624, 47.766029>,  <32.058784, 34.931435, 47.794167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239685, 35.086624, 47.766029>,  <32.541183, 35.345272, 47.719135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239685, 35.086624, 47.766029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591534, 0.745299, 0.307599,
		-0.286279, 0.162501, -0.944266,
		-0.753746, -0.646624, 0.117238,
		32.013561, 34.892635, 47.801201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952032, 35.694813, 47.438583>,  <32.541183, 35.345272, 47.719135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952032, 35.694813, 47.438583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745216, 35.446808, 47.674637>,  <31.621126, 35.298004, 47.816269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745216, 35.446808, 47.674637>,  <31.952032, 35.694813, 47.438583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745216, 35.446808, 47.674637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649622, 0.733169, 0.201132,
		-0.557370, -0.279369, -0.781851,
		-0.517039, -0.620013, 0.590131,
		31.590105, 35.260803, 47.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193823, 35.948410, 47.423740>,  <31.952032, 35.694813, 47.438583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193823, 35.948410, 47.423740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250315, 35.740360, 47.760674>,  <31.284210, 35.615532, 47.962833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250315, 35.740360, 47.760674>,  <31.193823, 35.948410, 47.423740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250315, 35.740360, 47.760674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589068, 0.639688, 0.493759,
		-0.795647, -0.565924, -0.216047,
		0.141228, -0.520124, 0.842333,
		31.292683, 35.584324, 48.013374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576208, 35.962257, 47.747784>,  <31.193823, 35.948410, 47.423740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576208, 35.962257, 47.747784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.796967, 35.847874, 48.061123>,  <30.929422, 35.779243, 48.249126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.796967, 35.847874, 48.061123>,  <30.576208, 35.962257, 47.747784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796967, 35.847874, 48.061123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477891, 0.661360, 0.578120,
		-0.683395, -0.693419, 0.228345,
		0.551897, -0.285961, 0.783349,
		30.962536, 35.762085, 48.296127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100214, 35.778801, 48.316662>,  <30.576208, 35.962257, 47.747784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100214, 35.778801, 48.316662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.454777, 35.868587, 48.478600>,  <30.667515, 35.922459, 48.575760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.454777, 35.868587, 48.478600>,  <30.100214, 35.778801, 48.316662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454777, 35.868587, 48.478600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436647, 0.695821, 0.570239,
		-0.153695, -0.682236, 0.714795,
		0.886407, 0.224470, 0.404841,
		30.720699, 35.935928, 48.600052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976423, 35.673920, 49.034649>,  <30.100214, 35.778801, 48.316662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976423, 35.673920, 49.034649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.299751, 35.903713, 48.983124>,  <30.493748, 36.041588, 48.952209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.299751, 35.903713, 48.983124>,  <29.976423, 35.673920, 49.034649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299751, 35.903713, 48.983124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291420, 0.580521, 0.760309,
		0.511557, -0.577036, 0.636662,
		0.808322, 0.574477, -0.128809,
		30.542248, 36.076057, 48.944481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173950, 35.757568, 49.679073>,  <29.976423, 35.673920, 49.034649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173950, 35.757568, 49.679073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.363066, 36.057316, 49.493637>,  <30.476534, 36.237164, 49.382374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.363066, 36.057316, 49.493637>,  <30.173950, 35.757568, 49.679073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363066, 36.057316, 49.493637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229039, 0.612528, 0.756538,
		0.850890, -0.251502, 0.461231,
		0.472787, 0.749370, -0.463591,
		30.504902, 36.282127, 49.354561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443516, 36.016621, 50.137508>,  <30.173950, 35.757568, 49.679073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443516, 36.016621, 50.137508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488855, 36.318779, 49.879353>,  <30.516060, 36.500076, 49.724461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488855, 36.318779, 49.879353>,  <30.443516, 36.016621, 50.137508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488855, 36.318779, 49.879353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076271, 0.654273, 0.752403,
		0.990623, -0.036059, 0.131775,
		0.113348, 0.755398, -0.645388,
		30.522860, 36.545399, 49.685738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032511, 36.508739, 50.420616>,  <30.443516, 36.016621, 50.137508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032511, 36.508739, 50.420616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.777046, 36.703865, 50.182575>,  <30.623768, 36.820938, 50.039749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.777046, 36.703865, 50.182575>,  <31.032511, 36.508739, 50.420616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777046, 36.703865, 50.182575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328794, 0.526224, 0.784208,
		0.695704, 0.696512, -0.175691,
		-0.638663, 0.487810, -0.595105,
		30.585447, 36.850208, 50.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214867, 37.194504, 50.466125>,  <31.032511, 36.508739, 50.420616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214867, 37.194504, 50.466125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831343, 37.181679, 50.353237>,  <30.601227, 37.173985, 50.285503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831343, 37.181679, 50.353237>,  <31.214867, 37.194504, 50.466125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831343, 37.181679, 50.353237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252026, 0.554305, 0.793240,
		0.131004, 0.831696, -0.539555,
		-0.958812, -0.032064, -0.282225,
		30.543699, 37.172058, 50.268570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596878, 37.837379, 50.388252>,  <31.214867, 37.194504, 50.466125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596878, 37.837379, 50.388252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909502, 37.852402, 50.637333>,  <32.097076, 37.861416, 50.786781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909502, 37.852402, 50.637333>,  <31.596878, 37.837379, 50.388252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909502, 37.852402, 50.637333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621638, -0.130493, -0.772358,
		0.052248, 0.990738, -0.125337,
		0.781560, 0.037560, 0.622698,
		32.143970, 37.863670, 50.824142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053085, 38.217697, 50.075703>,  <31.596878, 37.837379, 50.388252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053085, 38.217697, 50.075703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271862, 38.009109, 50.337673>,  <32.403130, 37.883957, 50.494854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271862, 38.009109, 50.337673>,  <32.053085, 38.217697, 50.075703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271862, 38.009109, 50.337673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741603, -0.061181, -0.668043,
		0.388430, 0.851076, 0.353258,
		0.546943, -0.521466, 0.654925,
		32.435944, 37.852669, 50.534149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746056, 38.424721, 49.874783>,  <32.053085, 38.217697, 50.075703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746056, 38.424721, 49.874783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836601, 38.121037, 50.118870>,  <32.890930, 37.938828, 50.265320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836601, 38.121037, 50.118870>,  <32.746056, 38.424721, 49.874783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836601, 38.121037, 50.118870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799724, -0.212778, -0.561397,
		0.556057, 0.615086, 0.558990,
		0.226366, -0.759207, 0.610216,
		32.904510, 37.893276, 50.301933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416985, 38.453945, 50.138348>,  <32.746056, 38.424721, 49.874783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416985, 38.453945, 50.138348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330688, 38.063545, 50.126438>,  <33.278912, 37.829308, 50.119293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330688, 38.063545, 50.126438>,  <33.416985, 38.453945, 50.138348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330688, 38.063545, 50.126438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895550, -0.185624, -0.404393,
		0.389160, -0.113904, 0.914101,
		-0.215741, -0.975997, -0.029769,
		33.265965, 37.770744, 50.117508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013031, 38.227016, 50.243652>,  <33.416985, 38.453945, 50.138348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013031, 38.227016, 50.243652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825935, 37.905148, 50.097378>,  <33.713676, 37.712025, 50.009613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825935, 37.905148, 50.097378>,  <34.013031, 38.227016, 50.243652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825935, 37.905148, 50.097378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831483, -0.260279, -0.490806,
		0.299758, -0.533628, 0.790814,
		-0.467740, -0.804671, -0.365682,
		33.685612, 37.663746, 49.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357937, 37.639698, 50.435040>,  <34.013031, 38.227016, 50.243652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357937, 37.639698, 50.435040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181698, 37.502655, 50.103138>,  <34.075954, 37.420429, 49.903996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181698, 37.502655, 50.103138>,  <34.357937, 37.639698, 50.435040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181698, 37.502655, 50.103138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867033, -0.401949, -0.294432,
		-0.232645, -0.849152, 0.474149,
		-0.440601, -0.342605, -0.829754,
		34.049519, 37.399872, 49.854210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673660, 37.081696, 50.274136>,  <34.357937, 37.639698, 50.435040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673660, 37.081696, 50.274136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509544, 37.173309, 49.921043>,  <34.411076, 37.228279, 49.709190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509544, 37.173309, 49.921043>,  <34.673660, 37.081696, 50.274136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509544, 37.173309, 49.921043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810291, -0.352578, -0.468099,
		-0.418442, -0.907321, -0.040927,
		-0.410286, 0.229035, -0.882728,
		34.386459, 37.242020, 49.656223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702721, 36.471649, 49.878563>,  <34.673660, 37.081696, 50.274136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702721, 36.471649, 49.878563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638077, 36.769855, 49.619926>,  <34.599289, 36.948780, 49.464745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638077, 36.769855, 49.619926>,  <34.702721, 36.471649, 49.878563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638077, 36.769855, 49.619926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761785, -0.322272, -0.561983,
		-0.627348, -0.583388, -0.515842,
		-0.161613, 0.745519, -0.646593,
		34.589592, 36.993511, 49.425949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714951, 36.151688, 49.221302>,  <34.702721, 36.471649, 49.878563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714951, 36.151688, 49.221302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804001, 36.538536, 49.172131>,  <34.857433, 36.770645, 49.142628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804001, 36.538536, 49.172131>,  <34.714951, 36.151688, 49.221302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804001, 36.538536, 49.172131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881952, -0.253528, -0.397347,
		-0.415449, -0.019956, -0.909398,
		0.222629, 0.967122, -0.122928,
		34.870789, 36.828674, 49.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995895, 36.252102, 48.566467>,  <34.714951, 36.151688, 49.221302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995895, 36.252102, 48.566467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119778, 36.576782, 48.764549>,  <35.194107, 36.771591, 48.883400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119778, 36.576782, 48.764549>,  <34.995895, 36.252102, 48.566467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119778, 36.576782, 48.764549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949882, -0.240853, -0.199282,
		-0.042485, 0.532106, -0.845611,
		0.309707, 0.811698, 0.495206,
		35.212688, 36.820293, 48.913113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553593, 36.433167, 48.205822>,  <34.995895, 36.252102, 48.566467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553593, 36.433167, 48.205822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597645, 36.611217, 48.561287>,  <35.624077, 36.718048, 48.774567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597645, 36.611217, 48.561287>,  <35.553593, 36.433167, 48.205822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597645, 36.611217, 48.561287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990628, 0.023516, -0.134548,
		-0.080789, 0.895156, -0.438370,
		0.110133, 0.445132, 0.888667,
		35.630684, 36.744759, 48.827888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109386, 36.992046, 48.102516>,  <35.553593, 36.433167, 48.205822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109386, 36.992046, 48.102516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087070, 36.855843, 48.477951>,  <36.073681, 36.774120, 48.703213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087070, 36.855843, 48.477951>,  <36.109386, 36.992046, 48.102516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087070, 36.855843, 48.477951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977760, -0.208977, -0.017693,
		0.202167, 0.916723, 0.344597,
		-0.055794, -0.340510, 0.938584,
		36.070332, 36.753689, 48.759525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.693127, 38.458046, 56.515110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463923, 38.685379, 56.278919>,  <30.326399, 38.821777, 56.137207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463923, 38.685379, 56.278919>,  <30.693127, 38.458046, 56.515110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463923, 38.685379, 56.278919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567079, -0.245205, -0.786318,
		-0.591676, -0.785414, -0.181783,
		-0.573011, 0.568330, -0.590474,
		30.292019, 38.855877, 56.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622387, 38.082748, 55.827541>,  <30.693127, 38.458046, 56.515110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622387, 38.082748, 55.827541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507027, 38.453903, 55.733006>,  <30.437811, 38.676594, 55.676285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507027, 38.453903, 55.733006>,  <30.622387, 38.082748, 55.827541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507027, 38.453903, 55.733006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367271, -0.120745, -0.922243,
		-0.884272, -0.352775, -0.305962,
		-0.288401, 0.927885, -0.236336,
		30.420507, 38.732269, 55.662106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298790, 38.041176, 55.089817>,  <30.622387, 38.082748, 55.827541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298790, 38.041176, 55.089817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408604, 38.423073, 55.135612>,  <30.474491, 38.652210, 55.163090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408604, 38.423073, 55.135612>,  <30.298790, 38.041176, 55.089817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408604, 38.423073, 55.135612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111146, 0.086759, -0.990010,
		-0.955133, 0.284515, -0.082297,
		0.274532, 0.954738, 0.114489,
		30.490963, 38.709496, 55.169960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968195, 38.453579, 54.499737>,  <30.298790, 38.041176, 55.089817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968195, 38.453579, 54.499737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268503, 38.694729, 54.607731>,  <30.448689, 38.839417, 54.672527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268503, 38.694729, 54.607731>,  <29.968195, 38.453579, 54.499737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268503, 38.694729, 54.607731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241171, 0.130341, -0.961690,
		-0.614966, 0.787119, -0.047540,
		0.750768, 0.602872, 0.269985,
		30.493734, 38.875591, 54.688728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889635, 39.004974, 54.028767>,  <29.968195, 38.453579, 54.499737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889635, 39.004974, 54.028767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259798, 39.023769, 54.179188>,  <30.481895, 39.035046, 54.269440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259798, 39.023769, 54.179188>,  <29.889635, 39.004974, 54.028767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259798, 39.023769, 54.179188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375360, 0.023167, -0.926589,
		-0.052246, 0.998627, 0.003804,
		0.925405, 0.046983, 0.376055,
		30.537420, 39.037865, 54.292004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257183, 39.377995, 53.550133>,  <29.889635, 39.004974, 54.028767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257183, 39.377995, 53.550133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539835, 39.193947, 53.765156>,  <30.709427, 39.083519, 53.894169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539835, 39.193947, 53.765156>,  <30.257183, 39.377995, 53.550133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539835, 39.193947, 53.765156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483989, -0.239898, -0.841549,
		0.516168, 0.854835, 0.053171,
		0.706630, -0.460115, 0.537558,
		30.751823, 39.055912, 53.926422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809046, 39.710461, 53.367985>,  <30.257183, 39.377995, 53.550133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809046, 39.710461, 53.367985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911129, 39.348839, 53.505127>,  <30.972378, 39.131866, 53.587414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911129, 39.348839, 53.505127>,  <30.809046, 39.710461, 53.367985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911129, 39.348839, 53.505127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443612, -0.205592, -0.872319,
		0.859115, 0.374716, 0.348582,
		0.255206, -0.904057, 0.342856,
		30.987690, 39.077621, 53.607983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552345, 39.681442, 53.132969>,  <30.809046, 39.710461, 53.367985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552345, 39.681442, 53.132969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410645, 39.317616, 53.219860>,  <31.325624, 39.099319, 53.271996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410645, 39.317616, 53.219860>,  <31.552345, 39.681442, 53.132969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410645, 39.317616, 53.219860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527558, -0.386182, -0.756667,
		0.772133, -0.153447, 0.616656,
		-0.354250, -0.909570, 0.217232,
		31.304369, 39.044746, 53.285030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175919, 39.273144, 53.020580>,  <31.552345, 39.681442, 53.132969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175919, 39.273144, 53.020580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875875, 39.008907, 53.008228>,  <31.695850, 38.850365, 53.000816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875875, 39.008907, 53.008228>,  <32.175919, 39.273144, 53.020580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875875, 39.008907, 53.008228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384941, -0.398183, -0.832628,
		0.537735, -0.636447, 0.552971,
		-0.750107, -0.660595, -0.030877,
		31.650843, 38.810730, 52.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469292, 38.583736, 52.920811>,  <32.175919, 39.273144, 53.020580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469292, 38.583736, 52.920811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.091366, 38.579430, 52.789841>,  <31.864611, 38.576847, 52.711258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.091366, 38.579430, 52.789841>,  <32.469292, 38.583736, 52.920811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091366, 38.579430, 52.789841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302449, -0.412712, -0.859182,
		-0.125882, -0.910798, 0.393194,
		-0.944816, -0.010766, -0.327422,
		31.807920, 38.576199, 52.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468910, 37.880249, 52.619202>,  <32.469292, 38.583736, 52.920811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468910, 37.880249, 52.619202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.158058, 38.107231, 52.510342>,  <31.971546, 38.243420, 52.445026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.158058, 38.107231, 52.510342>,  <32.468910, 37.880249, 52.619202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158058, 38.107231, 52.510342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047704, -0.378085, -0.924541,
		-0.627530, -0.731472, 0.266751,
		-0.777130, 0.567452, -0.272153,
		31.924919, 38.277466, 52.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148140, 37.424068, 52.269363>,  <32.468910, 37.880249, 52.619202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148140, 37.424068, 52.269363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024536, 37.779854, 52.134686>,  <31.950375, 37.993324, 52.053879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024536, 37.779854, 52.134686>,  <32.148140, 37.424068, 52.269363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024536, 37.779854, 52.134686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078808, -0.328858, -0.941085,
		-0.947790, -0.317334, 0.031521,
		-0.309005, 0.889467, -0.336696,
		31.931835, 38.046696, 52.033676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603556, 37.306007, 51.743385>,  <32.148140, 37.424068, 52.269363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603556, 37.306007, 51.743385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752081, 37.673058, 51.686680>,  <31.841196, 37.893288, 51.652657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752081, 37.673058, 51.686680>,  <31.603556, 37.306007, 51.743385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752081, 37.673058, 51.686680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345292, -0.278188, -0.896317,
		-0.861917, 0.283864, -0.420142,
		0.371311, 0.917623, -0.141759,
		31.863474, 37.948345, 51.644154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348429, 37.597595, 51.061138>,  <31.603556, 37.306007, 51.743385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348429, 37.597595, 51.061138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685192, 37.795380, 51.147572>,  <31.887251, 37.914051, 51.199432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685192, 37.795380, 51.147572>,  <31.348429, 37.597595, 51.061138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685192, 37.795380, 51.147572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312872, -0.121028, -0.942053,
		-0.439656, 0.860732, -0.256598,
		0.841911, 0.494462, 0.216088,
		31.937765, 37.943718, 51.212399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864609, 37.998810, 50.665646>,  <31.348429, 37.597595, 51.061138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864609, 37.998810, 50.665646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565992, 37.749199, 50.573322>,  <30.386824, 37.599434, 50.517929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565992, 37.749199, 50.573322>,  <30.864609, 37.998810, 50.665646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565992, 37.749199, 50.573322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628772, 0.548272, 0.551402,
		-0.217544, 0.556768, -0.801676,
		-0.746539, -0.624025, -0.230807,
		30.342031, 37.561993, 50.504082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339890, 38.499237, 50.436584>,  <30.864609, 37.998810, 50.665646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339890, 38.499237, 50.436584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174707, 38.149426, 50.538307>,  <30.075598, 37.939537, 50.599339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174707, 38.149426, 50.538307>,  <30.339890, 38.499237, 50.436584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174707, 38.149426, 50.538307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679176, 0.481735, 0.553760,
		-0.606786, 0.055961, -0.792893,
		-0.412954, -0.874528, 0.254303,
		30.050821, 37.887066, 50.614597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612631, 38.494232, 50.275017>,  <30.339890, 38.499237, 50.436584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612631, 38.494232, 50.275017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680891, 38.236950, 50.573593>,  <29.721848, 38.082581, 50.752739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680891, 38.236950, 50.573593>,  <29.612631, 38.494232, 50.275017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680891, 38.236950, 50.573593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726119, 0.429989, 0.536526,
		-0.666055, -0.633560, -0.393665,
		0.170650, -0.643203, 0.746437,
		29.732086, 38.043987, 50.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943834, 38.490761, 50.562969>,  <29.612631, 38.494232, 50.275017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943834, 38.490761, 50.562969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160295, 38.302071, 50.841431>,  <29.290173, 38.188854, 51.008507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160295, 38.302071, 50.841431>,  <28.943834, 38.490761, 50.562969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160295, 38.302071, 50.841431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649307, 0.291667, 0.702375,
		-0.534374, -0.832108, -0.148460,
		0.541151, -0.471727, 0.696153,
		29.322641, 38.160553, 51.050278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449263, 38.006638, 50.949726>,  <28.943834, 38.490761, 50.562969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449263, 38.006638, 50.949726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761045, 38.059509, 51.194668>,  <28.948116, 38.091232, 51.341633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761045, 38.059509, 51.194668>,  <28.449263, 38.006638, 50.949726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761045, 38.059509, 51.194668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626407, 0.176298, 0.759298,
		-0.007597, -0.975423, 0.220211,
		0.779459, 0.132173, 0.612351,
		28.994883, 38.099163, 51.378372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210064, 37.598503, 51.520809>,  <28.449263, 38.006638, 50.949726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210064, 37.598503, 51.520809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486597, 37.873234, 51.610538>,  <28.652517, 38.038074, 51.664375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486597, 37.873234, 51.610538>,  <28.210064, 37.598503, 51.520809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486597, 37.873234, 51.610538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597221, 0.368450, 0.712440,
		0.406680, -0.626499, 0.664914,
		0.691331, 0.686836, 0.224317,
		28.693998, 38.079285, 51.677834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275700, 37.574471, 52.413708>,  <28.210064, 37.598503, 51.520809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275700, 37.574471, 52.413708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430241, 37.916676, 52.275826>,  <28.522966, 38.121998, 52.193096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430241, 37.916676, 52.275826>,  <28.275700, 37.574471, 52.413708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430241, 37.916676, 52.275826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470085, 0.504187, 0.724441,
		0.793568, -0.117847, 0.596960,
		0.386353, 0.855516, -0.344709,
		28.546146, 38.173328, 52.172413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758869, 37.886940, 52.870987>,  <28.275700, 37.574471, 52.413708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758869, 37.886940, 52.870987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643305, 38.210300, 52.665848>,  <28.573967, 38.404316, 52.542763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643305, 38.210300, 52.665848>,  <28.758869, 37.886940, 52.870987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643305, 38.210300, 52.665848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346302, 0.411170, 0.843216,
		0.892528, 0.421213, 0.161162,
		-0.288909, 0.808405, -0.512848,
		28.556633, 38.452824, 52.511993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005529, 38.458939, 53.295689>,  <28.758869, 37.886940, 52.870987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005529, 38.458939, 53.295689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754372, 38.654884, 53.053768>,  <28.603678, 38.772449, 52.908615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754372, 38.654884, 53.053768>,  <29.005529, 38.458939, 53.295689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754372, 38.654884, 53.053768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311111, 0.554325, 0.771967,
		0.713413, 0.672875, -0.195657,
		-0.627895, 0.489860, -0.604802,
		28.566004, 38.801842, 52.872326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094212, 39.117741, 53.462025>,  <29.005529, 38.458939, 53.295689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094212, 39.117741, 53.462025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730732, 39.106216, 53.295441>,  <28.512644, 39.099300, 53.195492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730732, 39.106216, 53.295441>,  <29.094212, 39.117741, 53.462025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730732, 39.106216, 53.295441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377014, 0.484994, 0.789076,
		0.179247, 0.874042, -0.451575,
		-0.908697, -0.028811, -0.416460,
		28.458122, 39.097572, 53.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788158, 39.740128, 53.666599>,  <29.094212, 39.117741, 53.462025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788158, 39.740128, 53.666599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485281, 39.495697, 53.574299>,  <28.303555, 39.349037, 53.518917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485281, 39.495697, 53.574299>,  <28.788158, 39.740128, 53.666599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485281, 39.495697, 53.574299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601540, 0.514670, 0.610954,
		-0.254577, 0.601417, -0.757290,
		-0.757192, -0.611075, -0.230753,
		28.258123, 39.312374, 53.505074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196779, 40.184196, 53.704823>,  <28.788158, 39.740128, 53.666599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196779, 40.184196, 53.704823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006989, 39.833755, 53.670620>,  <27.893114, 39.623489, 53.650097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006989, 39.833755, 53.670620>,  <28.196779, 40.184196, 53.704823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006989, 39.833755, 53.670620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750805, 0.352071, 0.558871,
		-0.459525, 0.329372, -0.824834,
		-0.474477, -0.876105, -0.085509,
		27.864645, 39.570923, 53.644966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557737, 40.279804, 53.583042>,  <28.196779, 40.184196, 53.704823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557737, 40.279804, 53.583042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546135, 39.917480, 53.752121>,  <27.539173, 39.700085, 53.853569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546135, 39.917480, 53.752121>,  <27.557737, 40.279804, 53.583042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546135, 39.917480, 53.752121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719463, 0.312483, 0.620264,
		-0.693925, -0.286122, -0.660759,
		-0.029005, -0.905808, 0.422694,
		27.537434, 39.645737, 53.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791241, 40.280998, 53.783237>,  <27.557737, 40.279804, 53.583042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791241, 40.280998, 53.783237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997854, 39.994522, 53.970966>,  <27.121822, 39.822636, 54.083603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997854, 39.994522, 53.970966>,  <26.791241, 40.280998, 53.783237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997854, 39.994522, 53.970966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639207, 0.042183, 0.767877,
		-0.569745, -0.696628, -0.436006,
		0.516532, -0.716192, 0.469323,
		27.152815, 39.779663, 54.111763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.197582, 35.143360, 59.545166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839657, 35.250114, 59.402012>,  <32.624901, 35.314167, 59.316120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839657, 35.250114, 59.402012>,  <33.197582, 35.143360, 59.545166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839657, 35.250114, 59.402012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210054, -0.455672, -0.865009,
		-0.393933, -0.849197, 0.351683,
		-0.894815, 0.266883, -0.357882,
		32.571213, 35.330181, 59.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948200, 34.630356, 59.101044>,  <33.197582, 35.143360, 59.545166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948200, 34.630356, 59.101044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728794, 34.939789, 58.974117>,  <32.597149, 35.125450, 58.897961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728794, 34.939789, 58.974117>,  <32.948200, 34.630356, 59.101044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728794, 34.939789, 58.974117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090131, -0.322589, -0.942238,
		-0.831267, -0.545435, 0.107222,
		-0.548518, 0.773587, -0.317318,
		32.564240, 35.171864, 58.878922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410313, 34.391373, 58.582989>,  <32.948200, 34.630356, 59.101044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410313, 34.391373, 58.582989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492195, 34.777626, 58.518921>,  <32.541325, 35.009377, 58.480480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492195, 34.777626, 58.518921>,  <32.410313, 34.391373, 58.582989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492195, 34.777626, 58.518921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071168, -0.177888, -0.981474,
		-0.976233, 0.189514, -0.105137,
		0.204706, 0.965630, -0.160173,
		32.553608, 35.067314, 58.470871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192131, 34.497768, 57.898479>,  <32.410313, 34.391373, 58.582989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192131, 34.497768, 57.898479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450947, 34.794819, 57.967583>,  <32.606236, 34.973049, 58.009045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450947, 34.794819, 57.967583>,  <32.192131, 34.497768, 57.898479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450947, 34.794819, 57.967583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221490, 0.033743, -0.974579,
		-0.729581, 0.668852, -0.142652,
		0.647035, 0.742630, 0.172762,
		32.645058, 35.017609, 58.019413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209103, 34.903053, 57.266979>,  <32.192131, 34.497768, 57.898479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209103, 34.903053, 57.266979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538513, 35.015446, 57.464100>,  <32.736160, 35.082882, 57.582375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538513, 35.015446, 57.464100>,  <32.209103, 34.903053, 57.266979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538513, 35.015446, 57.464100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526225, -0.053909, -0.848635,
		-0.211880, 0.958199, -0.192252,
		0.823526, 0.280976, 0.492806,
		32.785572, 35.099739, 57.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555603, 35.529064, 56.973591>,  <32.209103, 34.903053, 57.266979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555603, 35.529064, 56.973591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853516, 35.378330, 57.193882>,  <33.032261, 35.287891, 57.326057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853516, 35.378330, 57.193882>,  <32.555603, 35.529064, 56.973591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853516, 35.378330, 57.193882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561942, -0.090939, -0.822162,
		0.359900, 0.921807, 0.144029,
		0.744777, -0.376832, 0.550731,
		33.076950, 35.265282, 57.359100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161911, 35.806126, 56.606071>,  <32.555603, 35.529064, 56.973591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161911, 35.806126, 56.606071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272900, 35.498829, 56.836830>,  <33.339493, 35.314449, 56.975285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272900, 35.498829, 56.836830>,  <33.161911, 35.806126, 56.606071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272900, 35.498829, 56.836830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655102, -0.287937, -0.698523,
		0.702745, 0.571749, 0.423382,
		0.277472, -0.768242, 0.576900,
		33.356140, 35.268356, 57.009899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916714, 35.845119, 56.642834>,  <33.161911, 35.806126, 56.606071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916714, 35.845119, 56.642834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807205, 35.469631, 56.726597>,  <33.741501, 35.244339, 56.776855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807205, 35.469631, 56.726597>,  <33.916714, 35.845119, 56.642834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807205, 35.469631, 56.726597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667643, -0.342209, -0.661170,
		0.692317, -0.041196, 0.720417,
		-0.273771, -0.938720, 0.209412,
		33.725075, 35.188015, 56.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612122, 35.455101, 56.581444>,  <33.916714, 35.845119, 56.642834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612122, 35.455101, 56.581444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314571, 35.187809, 56.577255>,  <34.136040, 35.027435, 56.574741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314571, 35.187809, 56.577255>,  <34.612122, 35.455101, 56.581444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314571, 35.187809, 56.577255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477297, -0.520233, -0.708199,
		0.467793, -0.531813, 0.705936,
		-0.743880, -0.668231, -0.010472,
		34.091408, 34.987339, 56.574112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900822, 34.928284, 56.399292>,  <34.612122, 35.455101, 56.581444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900822, 34.928284, 56.399292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530239, 34.794632, 56.329967>,  <34.307888, 34.714443, 56.288372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530239, 34.794632, 56.329967>,  <34.900822, 34.928284, 56.399292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530239, 34.794632, 56.329967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362009, -0.664839, -0.653405,
		0.103095, -0.668093, 0.736902,
		-0.926456, -0.334127, -0.173314,
		34.252304, 34.694393, 56.277973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798550, 34.122303, 56.545967>,  <34.900822, 34.928284, 56.399292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798550, 34.122303, 56.545967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499889, 34.210464, 56.294910>,  <34.320694, 34.263363, 56.144276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499889, 34.210464, 56.294910>,  <34.798550, 34.122303, 56.545967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499889, 34.210464, 56.294910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279789, -0.751952, -0.596897,
		-0.603515, -0.621281, 0.499779,
		-0.746651, 0.220404, -0.627642,
		34.275894, 34.276585, 56.106617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583294, 33.495640, 56.352245>,  <34.798550, 34.122303, 56.545967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583294, 33.495640, 56.352245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460396, 33.747597, 56.066914>,  <34.386658, 33.898769, 55.895714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460396, 33.747597, 56.066914>,  <34.583294, 33.495640, 56.352245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460396, 33.747597, 56.066914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276337, -0.658232, -0.700263,
		-0.910626, -0.412270, 0.028174,
		-0.307242, 0.629893, -0.713329,
		34.368221, 33.936565, 55.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280510, 33.070110, 55.807671>,  <34.583294, 33.495640, 56.352245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280510, 33.070110, 55.807671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347382, 33.407536, 55.603535>,  <34.387505, 33.609993, 55.481052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347382, 33.407536, 55.603535>,  <34.280510, 33.070110, 55.807671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347382, 33.407536, 55.603535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255981, -0.537011, -0.803799,
		-0.952115, 0.003744, -0.305716,
		0.167183, 0.843567, -0.510338,
		34.397537, 33.660606, 55.450432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893368, 33.085381, 55.181866>,  <34.280510, 33.070110, 55.807671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893368, 33.085381, 55.181866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169544, 33.369186, 55.125477>,  <34.335251, 33.539471, 55.091644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169544, 33.369186, 55.125477>,  <33.893368, 33.085381, 55.181866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169544, 33.369186, 55.125477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341774, -0.491707, -0.800883,
		-0.637556, 0.504786, -0.581991,
		0.690444, 0.709517, -0.140968,
		34.376678, 33.582043, 55.083187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046261, 33.113167, 55.047482>,  <33.893368, 33.085381, 55.181866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046261, 33.113167, 55.047482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766197, 32.907497, 54.849327>,  <32.598160, 32.784096, 54.730434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766197, 32.907497, 54.849327>,  <33.046261, 33.113167, 55.047482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766197, 32.907497, 54.849327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577520, -0.000132, 0.816376,
		-0.419825, 0.857686, -0.296854,
		-0.700155, -0.514174, -0.495386,
		32.556152, 32.753246, 54.700710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403603, 33.475586, 55.122711>,  <33.046261, 33.113167, 55.047482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403603, 33.475586, 55.122711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324951, 33.089489, 55.053848>,  <32.277760, 32.857830, 55.012531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324951, 33.089489, 55.053848>,  <32.403603, 33.475586, 55.122711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324951, 33.089489, 55.053848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589441, -0.023941, 0.807457,
		-0.783515, 0.260250, -0.564247,
		-0.196632, -0.965244, -0.172160,
		32.265961, 32.799915, 55.002201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675497, 33.411274, 55.143620>,  <32.403603, 33.475586, 55.122711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675497, 33.411274, 55.143620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779907, 33.027096, 55.182407>,  <31.842554, 32.796589, 55.205681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779907, 33.027096, 55.182407>,  <31.675497, 33.411274, 55.143620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779907, 33.027096, 55.182407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642785, -0.097986, 0.759754,
		-0.720204, -0.260645, -0.642939,
		0.261025, -0.960449, 0.096969,
		31.858215, 32.738960, 55.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061275, 33.103821, 55.220421>,  <31.675497, 33.411274, 55.143620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061275, 33.103821, 55.220421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318438, 32.843700, 55.382301>,  <31.472734, 32.687630, 55.479431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318438, 32.843700, 55.382301>,  <31.061275, 33.103821, 55.220421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318438, 32.843700, 55.382301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632859, -0.153354, 0.758928,
		-0.431467, -0.744040, -0.510139,
		0.642904, -0.650298, 0.404705,
		31.511309, 32.648609, 55.503712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649860, 32.523380, 55.333035>,  <31.061275, 33.103821, 55.220421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649860, 32.523380, 55.333035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966867, 32.515186, 55.576836>,  <31.157072, 32.510269, 55.723118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966867, 32.515186, 55.576836>,  <30.649860, 32.523380, 55.333035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966867, 32.515186, 55.576836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609553, 0.004445, 0.792733,
		-0.018955, -0.999780, -0.008970,
		0.792519, -0.020494, 0.609503,
		31.204622, 32.509041, 55.759686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437677, 32.152035, 55.862236>,  <30.649860, 32.523380, 55.333035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437677, 32.152035, 55.862236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.759514, 32.323574, 56.026539>,  <30.952616, 32.426498, 56.125122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.759514, 32.323574, 56.026539>,  <30.437677, 32.152035, 55.862236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759514, 32.323574, 56.026539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475557, 0.051073, 0.878201,
		0.355634, -0.901933, 0.245033,
		0.804594, 0.428845, 0.410757,
		31.000893, 32.452229, 56.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459730, 31.937933, 56.534019>,  <30.437677, 32.152035, 55.862236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459730, 31.937933, 56.534019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707039, 32.251808, 56.551914>,  <30.855425, 32.440132, 56.562653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707039, 32.251808, 56.551914>,  <30.459730, 31.937933, 56.534019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707039, 32.251808, 56.551914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347745, 0.222064, 0.910912,
		0.704850, -0.578748, 0.410168,
		0.618272, 0.784690, 0.044735,
		30.892521, 32.487217, 56.565334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741287, 31.900589, 57.182674>,  <30.459730, 31.937933, 56.534019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741287, 31.900589, 57.182674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793879, 32.279724, 57.066525>,  <30.825434, 32.507206, 56.996834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793879, 32.279724, 57.066525>,  <30.741287, 31.900589, 57.182674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793879, 32.279724, 57.066525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420681, 0.318578, 0.849433,
		0.897631, 0.010471, 0.440624,
		0.131479, 0.947839, -0.290371,
		30.833323, 32.564075, 56.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053440, 32.262592, 57.744141>,  <30.741287, 31.900589, 57.182674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053440, 32.262592, 57.744141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888746, 32.559269, 57.532341>,  <30.789930, 32.737274, 57.405262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888746, 32.559269, 57.532341>,  <31.053440, 32.262592, 57.744141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888746, 32.559269, 57.532341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602963, 0.213944, 0.768546,
		0.683308, 0.635704, 0.359125,
		-0.411735, 0.741693, -0.529495,
		30.765226, 32.781776, 57.373493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198587, 32.886326, 58.098808>,  <31.053440, 32.262592, 57.744141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198587, 32.886326, 58.098808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889572, 32.951607, 57.853355>,  <30.704163, 32.990776, 57.706085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889572, 32.951607, 57.853355>,  <31.198587, 32.886326, 58.098808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889572, 32.951607, 57.853355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517957, 0.397032, 0.757685,
		0.367291, 0.903178, -0.222189,
		-0.772540, 0.163206, -0.613633,
		30.657810, 33.000568, 57.669266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993147, 33.632801, 58.160194>,  <31.198587, 32.886326, 58.098808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993147, 33.632801, 58.160194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.683708, 33.427807, 58.011112>,  <30.498045, 33.304810, 57.921661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.683708, 33.427807, 58.011112>,  <30.993147, 33.632801, 58.160194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683708, 33.427807, 58.011112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633338, 0.644526, 0.428335,
		0.020704, 0.567407, -0.823177,
		-0.773599, -0.512481, -0.372704,
		30.451628, 33.274063, 57.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546726, 34.181473, 57.825012>,  <30.993147, 33.632801, 58.160194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546726, 34.181473, 57.825012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309040, 33.873211, 57.917091>,  <30.166428, 33.688251, 57.972340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309040, 33.873211, 57.917091>,  <30.546726, 34.181473, 57.825012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309040, 33.873211, 57.917091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696293, 0.636160, 0.332380,
		-0.402596, 0.037218, -0.914621,
		-0.594216, -0.770659, 0.230201,
		30.130775, 33.642014, 57.986153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901962, 34.446083, 57.789963>,  <30.546726, 34.181473, 57.825012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901962, 34.446083, 57.789963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.830395, 34.103500, 57.983650>,  <29.787455, 33.897949, 58.099861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.830395, 34.103500, 57.983650>,  <29.901962, 34.446083, 57.789963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830395, 34.103500, 57.983650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755979, 0.434655, 0.489459,
		-0.629669, -0.278484, -0.725233,
		-0.178920, -0.856459, 0.484217,
		29.776718, 33.846561, 58.128914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169279, 34.452663, 57.812668>,  <29.901962, 34.446083, 57.789963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169279, 34.452663, 57.812668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291792, 34.207539, 58.104050>,  <29.365299, 34.060463, 58.278881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291792, 34.207539, 58.104050>,  <29.169279, 34.452663, 57.812668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291792, 34.207539, 58.104050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693016, 0.381082, 0.611968,
		-0.652625, -0.692268, -0.307971,
		0.306284, -0.612814, 0.728457,
		29.383677, 34.023693, 58.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591242, 34.172382, 57.514919>,  <29.169279, 34.452663, 57.812668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591242, 34.172382, 57.514919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.337009, 34.366615, 57.274837>,  <28.184469, 34.483154, 57.130787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.337009, 34.366615, 57.274837>,  <28.591242, 34.172382, 57.514919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337009, 34.366615, 57.274837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104502, -0.716170, -0.690058,
		-0.764931, -0.501309, 0.404438,
		-0.635579, 0.485582, -0.600208,
		28.146336, 34.512291, 57.094776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047640, 33.614498, 57.206463>,  <28.591242, 34.172382, 57.514919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047640, 33.614498, 57.206463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.071268, 33.953838, 56.996010>,  <28.085445, 34.157444, 56.869740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.071268, 33.953838, 56.996010>,  <28.047640, 33.614498, 57.206463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071268, 33.953838, 56.996010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182976, -0.527324, -0.829729,
		-0.981341, -0.047258, -0.186376,
		0.059069, 0.848349, -0.526132,
		28.088989, 34.208344, 56.838169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560856, 33.599529, 56.700329>,  <28.047640, 33.614498, 57.206463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560856, 33.599529, 56.700329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.848274, 33.848717, 56.576656>,  <28.020725, 33.998230, 56.502453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.848274, 33.848717, 56.576656>,  <27.560856, 33.599529, 56.700329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848274, 33.848717, 56.576656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173681, -0.591213, -0.787593,
		-0.673442, 0.512224, -0.533013,
		0.718548, 0.622972, -0.309184,
		28.063839, 34.035606, 56.483902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420021, 33.577484, 55.930820>,  <27.560856, 33.599529, 56.700329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420021, 33.577484, 55.930820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.794481, 33.695801, 56.006855>,  <28.019157, 33.766792, 56.052475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.794481, 33.695801, 56.006855>,  <27.420021, 33.577484, 55.930820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794481, 33.695801, 56.006855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325395, -0.524027, -0.787092,
		-0.133203, 0.798689, -0.586816,
		0.936149, 0.295790, 0.190088,
		28.075325, 33.784538, 56.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586329, 33.647781, 55.187580>,  <27.420021, 33.577484, 55.930820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586329, 33.647781, 55.187580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.919430, 33.702358, 55.402206>,  <28.119291, 33.735104, 55.530983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.919430, 33.702358, 55.402206>,  <27.586329, 33.647781, 55.187580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919430, 33.702358, 55.402206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546464, -0.358141, -0.757042,
		0.088876, 0.923644, -0.372804,
		0.832754, 0.136441, 0.536568,
		28.169256, 33.743290, 55.563175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966824, 34.172813, 54.802013>,  <27.586329, 33.647781, 55.187580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966824, 34.172813, 54.802013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.224115, 33.943321, 55.004826>,  <28.378490, 33.805626, 55.126514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.224115, 33.943321, 55.004826>,  <27.966824, 34.172813, 54.802013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224115, 33.943321, 55.004826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392217, -0.321829, -0.861738,
		0.657586, 0.753164, 0.018017,
		0.643232, -0.573733, 0.507034,
		28.417086, 33.771202, 55.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664692, 34.236431, 54.425964>,  <27.966824, 34.172813, 54.802013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664692, 34.236431, 54.425964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657137, 33.908337, 54.654652>,  <28.652603, 33.711479, 54.791862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657137, 33.908337, 54.654652>,  <28.664692, 34.236431, 54.425964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657137, 33.908337, 54.654652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276453, -0.553808, -0.785411,
		0.960842, 0.143217, 0.237216,
		-0.018888, -0.820235, 0.571715,
		28.651470, 33.662266, 54.826168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354578, 33.864594, 54.314739>,  <28.664692, 34.236431, 54.425964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354578, 33.864594, 54.314739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074770, 33.615940, 54.455730>,  <28.906885, 33.466747, 54.540325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074770, 33.615940, 54.455730>,  <29.354578, 33.864594, 54.314739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074770, 33.615940, 54.455730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216038, -0.654122, -0.724881,
		0.681174, -0.430921, 0.591869,
		-0.699521, -0.621636, 0.352475,
		28.864914, 33.429451, 54.561474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632420, 33.343987, 54.116016>,  <29.354578, 33.864594, 54.314739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632420, 33.343987, 54.116016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260023, 33.218025, 54.189873>,  <29.036585, 33.142448, 54.234188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260023, 33.218025, 54.189873>,  <29.632420, 33.343987, 54.116016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260023, 33.218025, 54.189873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063486, -0.637778, -0.767600,
		0.359481, -0.702905, 0.613757,
		-0.930990, -0.314903, 0.184644,
		28.980726, 33.123554, 54.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619070, 32.617542, 54.112751>,  <29.632420, 33.343987, 54.116016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619070, 32.617542, 54.112751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.228359, 32.689171, 54.065689>,  <28.993933, 32.732147, 54.037453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.228359, 32.689171, 54.065689>,  <29.619070, 32.617542, 54.112751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228359, 32.689171, 54.065689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013163, -0.598226, -0.801219,
		-0.213860, -0.781063, 0.586690,
		-0.976775, 0.179071, -0.117656,
		28.935326, 32.742893, 54.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244007, 31.988432, 54.033276>,  <29.619070, 32.617542, 54.112751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244007, 31.988432, 54.033276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017824, 32.262653, 53.849854>,  <28.882114, 32.427185, 53.739799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017824, 32.262653, 53.849854>,  <29.244007, 31.988432, 54.033276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017824, 32.262653, 53.849854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063406, -0.518195, -0.852909,
		-0.822336, -0.511360, 0.249549,
		-0.565458, 0.685555, -0.458554,
		28.848186, 32.468319, 53.712288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975567, 31.551868, 53.644249>,  <29.244007, 31.988432, 54.033276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975567, 31.551868, 53.644249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.869188, 31.910780, 53.503300>,  <28.805361, 32.126125, 53.418732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.869188, 31.910780, 53.503300>,  <28.975567, 31.551868, 53.644249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869188, 31.910780, 53.503300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011856, -0.362465, -0.931922,
		-0.963915, -0.252020, 0.085758,
		-0.265947, 0.897276, -0.352374,
		28.789404, 32.179962, 53.397587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469332, 31.410810, 53.141560>,  <28.975567, 31.551868, 53.644249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469332, 31.410810, 53.141560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616642, 31.779148, 53.090305>,  <28.705029, 32.000153, 53.059551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616642, 31.779148, 53.090305>,  <28.469332, 31.410810, 53.141560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616642, 31.779148, 53.090305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181717, -0.206460, -0.961433,
		-0.911785, 0.330788, -0.243367,
		0.368276, 0.920844, -0.128137,
		28.727125, 32.055401, 53.051865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274839, 31.627537, 52.438000>,  <28.469332, 31.410810, 53.141560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274839, 31.627537, 52.438000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577028, 31.884117, 52.491379>,  <28.758341, 32.038063, 52.523407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577028, 31.884117, 52.491379>,  <28.274839, 31.627537, 52.438000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577028, 31.884117, 52.491379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434379, -0.337889, -0.834952,
		-0.490489, 0.688749, -0.533897,
		0.755470, 0.641449, 0.133447,
		28.803669, 32.076553, 52.531414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.313816, 39.712940, 54.046272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.640717, 39.668507, 54.272465>,  <26.836857, 39.641846, 54.408180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.640717, 39.668507, 54.272465>,  <26.313816, 39.712940, 54.046272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640717, 39.668507, 54.272465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574573, -0.081500, 0.814386,
		-0.044371, -0.990465, -0.130426,
		0.817250, -0.111075, 0.565478,
		26.885891, 39.635181, 54.442108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067705, 39.311878, 54.633682>,  <26.313816, 39.712940, 54.046272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067705, 39.311878, 54.633682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.407246, 39.473820, 54.769650>,  <26.610970, 39.570984, 54.851231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.407246, 39.473820, 54.769650>,  <26.067705, 39.311878, 54.633682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407246, 39.473820, 54.769650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293540, -0.173786, 0.940017,
		0.439643, -0.897715, -0.028677,
		0.848851, 0.404854, 0.339918,
		26.661901, 39.595276, 54.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279968, 38.755493, 55.088276>,  <26.067705, 39.311878, 54.633682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279968, 38.755493, 55.088276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.448483, 39.109417, 55.167908>,  <26.549591, 39.321770, 55.215687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.448483, 39.109417, 55.167908>,  <26.279968, 38.755493, 55.088276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448483, 39.109417, 55.167908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259311, -0.092828, 0.961322,
		0.869066, -0.456615, 0.190333,
		0.421286, 0.884808, 0.199079,
		26.574869, 39.374859, 55.227631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661655, 38.660549, 55.650757>,  <26.279968, 38.755493, 55.088276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661655, 38.660549, 55.650757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.605219, 39.055878, 55.673817>,  <26.571358, 39.293076, 55.687653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.605219, 39.055878, 55.673817>,  <26.661655, 38.660549, 55.650757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605219, 39.055878, 55.673817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185528, -0.083596, 0.979077,
		0.972457, 0.127442, 0.195155,
		-0.141090, 0.988317, 0.057650,
		26.562893, 39.352371, 55.691113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962696, 38.867111, 56.343979>,  <26.661655, 38.660549, 55.650757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962696, 38.867111, 56.343979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.715687, 39.156483, 56.220482>,  <26.567480, 39.330105, 56.146385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.715687, 39.156483, 56.220482>,  <26.962696, 38.867111, 56.343979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715687, 39.156483, 56.220482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260158, 0.182572, 0.948148,
		0.742281, 0.665827, 0.075462,
		-0.617525, 0.723424, -0.308740,
		26.530430, 39.373508, 56.127861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068857, 39.314217, 56.837337>,  <26.962696, 38.867111, 56.343979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068857, 39.314217, 56.837337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.733067, 39.445595, 56.664177>,  <26.531593, 39.524422, 56.560280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.733067, 39.445595, 56.664177>,  <27.068857, 39.314217, 56.837337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733067, 39.445595, 56.664177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300556, 0.383063, 0.873458,
		0.452712, 0.863358, -0.222856,
		-0.839475, 0.328444, -0.432905,
		26.481224, 39.544128, 56.534306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018353, 40.011723, 57.050007>,  <27.068857, 39.314217, 56.837337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018353, 40.011723, 57.050007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.654282, 39.881374, 56.947723>,  <26.435839, 39.803165, 56.886353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.654282, 39.881374, 56.947723>,  <27.018353, 40.011723, 57.050007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654282, 39.881374, 56.947723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369579, 0.360108, 0.856583,
		-0.187053, 0.874146, -0.448197,
		-0.910177, -0.325870, -0.255707,
		26.381229, 39.783615, 56.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606777, 40.547565, 57.098591>,  <27.018353, 40.011723, 57.050007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606777, 40.547565, 57.098591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.352129, 40.240215, 57.124844>,  <26.199341, 40.055805, 57.140594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.352129, 40.240215, 57.124844>,  <26.606777, 40.547565, 57.098591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352129, 40.240215, 57.124844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401565, 0.402957, 0.822418,
		-0.658378, 0.497210, -0.565085,
		-0.636619, -0.768380, 0.065635,
		26.161142, 40.009701, 57.144535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951344, 40.809307, 57.160919>,  <26.606777, 40.547565, 57.098591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951344, 40.809307, 57.160919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.976536, 40.459282, 57.352879>,  <25.991652, 40.249268, 57.468056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.976536, 40.459282, 57.352879>,  <25.951344, 40.809307, 57.160919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976536, 40.459282, 57.352879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377048, 0.424354, 0.823261,
		-0.924050, -0.232794, -0.303214,
		0.062981, -0.875060, 0.479898,
		25.995430, 40.196762, 57.496849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450375, 40.824062, 57.744385>,  <25.951344, 40.809307, 57.160919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450375, 40.824062, 57.744385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.601761, 40.463028, 57.826454>,  <25.692593, 40.246407, 57.875698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.601761, 40.463028, 57.826454>,  <25.450375, 40.824062, 57.744385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601761, 40.463028, 57.826454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275488, 0.101779, 0.955901,
		-0.883669, -0.418298, -0.210133,
		0.378465, -0.902589, 0.205175,
		25.715300, 40.192249, 57.888008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997129, 40.512691, 58.273018>,  <25.450375, 40.824062, 57.744385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997129, 40.512691, 58.273018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.354664, 40.334934, 58.296944>,  <25.569183, 40.228279, 58.311298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.354664, 40.334934, 58.296944>,  <24.997129, 40.512691, 58.273018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354664, 40.334934, 58.296944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006802, 0.119949, 0.992757,
		-0.448345, -0.887767, 0.104192,
		0.893834, -0.444389, 0.059817,
		25.622814, 40.201618, 58.314888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888662, 39.954834, 58.793682>,  <24.997129, 40.512691, 58.273018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888662, 39.954834, 58.793682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.281206, 40.031216, 58.802338>,  <25.516733, 40.077045, 58.807529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.281206, 40.031216, 58.802338>,  <24.888662, 39.954834, 58.793682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281206, 40.031216, 58.802338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004132, -0.133544, 0.991034,
		0.192129, -0.972473, -0.131844,
		0.981361, 0.190952, 0.021640,
		25.575615, 40.088501, 58.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163792, 39.364693, 59.107044>,  <24.888662, 39.954834, 58.793682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163792, 39.364693, 59.107044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.389940, 39.688225, 59.171715>,  <25.525629, 39.882343, 59.210518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.389940, 39.688225, 59.171715>,  <25.163792, 39.364693, 59.107044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389940, 39.688225, 59.171715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226281, -0.340588, 0.912577,
		0.793190, -0.479361, -0.375583,
		0.565373, 0.808834, 0.161680,
		25.559551, 39.930874, 59.220219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579168, 39.572636, 59.663189>,  <25.163792, 39.364693, 59.107044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579168, 39.572636, 59.663189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724669, 39.348534, 59.960861>,  <25.811970, 39.214073, 60.139465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724669, 39.348534, 59.960861>,  <25.579168, 39.572636, 59.663189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724669, 39.348534, 59.960861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182149, -0.740701, -0.646672,
		0.913513, 0.370780, -0.167382,
		0.363752, -0.560254, 0.744177,
		25.833794, 39.180458, 60.184113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275190, 39.371536, 59.672146>,  <25.579168, 39.572636, 59.663189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275190, 39.371536, 59.672146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.088816, 39.082722, 59.876724>,  <25.976992, 38.909435, 59.999470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.088816, 39.082722, 59.876724>,  <26.275190, 39.371536, 59.672146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088816, 39.082722, 59.876724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338829, -0.679558, -0.650689,
		0.817374, -0.129887, 0.561275,
		-0.465935, -0.722032, 0.511443,
		25.949036, 38.866112, 60.030155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744740, 38.986736, 59.818348>,  <26.275190, 39.371536, 59.672146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744740, 38.986736, 59.818348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.412315, 38.765423, 59.841026>,  <26.212860, 38.632633, 59.854633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.412315, 38.765423, 59.841026>,  <26.744740, 38.986736, 59.818348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412315, 38.765423, 59.841026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418104, -0.688711, -0.592339,
		0.366781, -0.468564, 0.803691,
		-0.831060, -0.553285, 0.056697,
		26.162998, 38.599438, 59.858036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014643, 38.379898, 60.101269>,  <26.744740, 38.986736, 59.818348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014643, 38.379898, 60.101269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.658119, 38.293472, 59.941830>,  <26.444204, 38.241615, 59.846165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.658119, 38.293472, 59.941830>,  <27.014643, 38.379898, 60.101269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658119, 38.293472, 59.941830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414067, -0.746055, -0.521490,
		-0.184703, -0.629856, 0.754431,
		-0.891310, -0.216064, -0.398601,
		26.390726, 38.228653, 59.822250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029503, 37.630451, 60.017471>,  <27.014643, 38.379898, 60.101269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029503, 37.630451, 60.017471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.711361, 37.734524, 59.798489>,  <26.520475, 37.796967, 59.667099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.711361, 37.734524, 59.798489>,  <27.029503, 37.630451, 60.017471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711361, 37.734524, 59.798489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165843, -0.775315, -0.609412,
		-0.583012, -0.575492, 0.573503,
		-0.795358, 0.260183, -0.547459,
		26.472754, 37.812580, 59.634251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502043, 37.126534, 60.143295>,  <27.029503, 37.630451, 60.017471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502043, 37.126534, 60.143295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.443937, 37.310532, 59.792912>,  <26.409075, 37.420929, 59.582680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.443937, 37.310532, 59.792912>,  <26.502043, 37.126534, 60.143295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443937, 37.310532, 59.792912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113254, -0.871799, -0.476591,
		-0.982890, -0.168437, 0.074544,
		-0.145263, 0.459994, -0.875959,
		26.400358, 37.448528, 59.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336994, 36.612816, 59.708511>,  <26.502043, 37.126534, 60.143295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336994, 36.612816, 59.708511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.433529, 36.877193, 59.424286>,  <26.491449, 37.035820, 59.253750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.433529, 36.877193, 59.424286>,  <26.336994, 36.612816, 59.708511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433529, 36.877193, 59.424286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343614, -0.742973, -0.574387,
		-0.907572, -0.105539, -0.406418,
		0.241337, 0.660948, -0.710566,
		26.505930, 37.075478, 59.211117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082676, 36.302086, 59.143421>,  <26.336994, 36.612816, 59.708511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082676, 36.302086, 59.143421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.338860, 36.577106, 59.006554>,  <26.492571, 36.742119, 58.924435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.338860, 36.577106, 59.006554>,  <26.082676, 36.302086, 59.143421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338860, 36.577106, 59.006554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318603, -0.643255, -0.696215,
		-0.698786, 0.336884, -0.631037,
		0.640461, 0.687555, -0.342165,
		26.530998, 36.783375, 58.903904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055653, 36.317158, 58.484898>,  <26.082676, 36.302086, 59.143421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055653, 36.317158, 58.484898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.415804, 36.488098, 58.517612>,  <26.631895, 36.590664, 58.537239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.415804, 36.488098, 58.517612>,  <26.055653, 36.317158, 58.484898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415804, 36.488098, 58.517612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335451, -0.562071, -0.756008,
		-0.277113, 0.708128, -0.649432,
		0.900378, 0.427352, 0.081785,
		26.685917, 36.616302, 58.542149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283852, 36.253860, 57.835091>,  <26.055653, 36.317158, 58.484898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283852, 36.253860, 57.835091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.617273, 36.342945, 58.037315>,  <26.817326, 36.396397, 58.158649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.617273, 36.342945, 58.037315>,  <26.283852, 36.253860, 57.835091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617273, 36.342945, 58.037315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510073, -0.661730, -0.549489,
		0.212167, 0.715901, -0.665185,
		0.833553, 0.222710, 0.505559,
		26.867340, 36.409760, 58.188984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768757, 36.417706, 57.337032>,  <26.283852, 36.253860, 57.835091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768757, 36.417706, 57.337032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.973372, 36.300789, 57.660240>,  <27.096140, 36.230640, 57.854164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.973372, 36.300789, 57.660240>,  <26.768757, 36.417706, 57.337032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973372, 36.300789, 57.660240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548163, -0.613150, -0.568827,
		0.661700, 0.733903, -0.153425,
		0.511536, -0.292291, 0.808020,
		27.126833, 36.213100, 57.902645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436981, 36.502728, 57.116188>,  <26.768757, 36.417706, 57.337032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436981, 36.502728, 57.116188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.450150, 36.250477, 57.426342>,  <27.458050, 36.099129, 57.612434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.450150, 36.250477, 57.426342>,  <27.436981, 36.502728, 57.116188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450150, 36.250477, 57.426342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376335, -0.710890, -0.594145,
		0.925899, 0.311365, 0.213923,
		0.032920, -0.630625, 0.775389,
		27.460026, 36.061291, 57.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115652, 36.237831, 57.215004>,  <27.436981, 36.502728, 57.116188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115652, 36.237831, 57.215004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.899977, 35.956779, 57.400730>,  <27.770573, 35.788147, 57.512165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.899977, 35.956779, 57.400730>,  <28.115652, 36.237831, 57.215004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899977, 35.956779, 57.400730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517323, -0.711370, -0.475741,
		0.664570, -0.016312, 0.747048,
		-0.539187, -0.702628, 0.464316,
		27.738220, 35.745991, 57.540024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587187, 35.672340, 57.438477>,  <28.115652, 36.237831, 57.215004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587187, 35.672340, 57.438477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.223837, 35.506237, 57.418831>,  <28.005827, 35.406574, 57.407043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.223837, 35.506237, 57.418831>,  <28.587187, 35.672340, 57.438477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223837, 35.506237, 57.418831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378205, -0.765800, -0.520107,
		0.178366, -0.491029, 0.852688,
		-0.908376, -0.415260, -0.049117,
		27.951324, 35.381660, 57.404095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596272, 35.014732, 57.831589>,  <28.587187, 35.672340, 57.438477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596272, 35.014732, 57.831589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.332808, 35.016937, 57.530621>,  <28.174728, 35.018261, 57.350040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.332808, 35.016937, 57.530621>,  <28.596272, 35.014732, 57.831589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332808, 35.016937, 57.530621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468896, -0.779059, -0.416178,
		-0.588475, -0.626927, 0.510549,
		-0.658661, 0.005516, -0.752420,
		28.135210, 35.018593, 57.304893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574705, 34.448124, 58.359913>,  <28.596272, 35.014732, 57.831589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574705, 34.448124, 58.359913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.877102, 34.304333, 58.578732>,  <29.058540, 34.218060, 58.710022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.877102, 34.304333, 58.578732>,  <28.574705, 34.448124, 58.359913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877102, 34.304333, 58.578732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446741, 0.327482, 0.832573,
		-0.478435, -0.873805, 0.086981,
		0.755991, -0.359474, 0.547043,
		29.103899, 34.196491, 58.742844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313995, 34.064068, 58.940430>,  <28.574705, 34.448124, 58.359913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313995, 34.064068, 58.940430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.689217, 34.161964, 59.038540>,  <28.914349, 34.220703, 59.097404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.689217, 34.161964, 59.038540>,  <28.313995, 34.064068, 58.940430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689217, 34.161964, 59.038540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321208, 0.348778, 0.880442,
		0.129933, -0.904685, 0.405785,
		0.938053, 0.244740, 0.245275,
		28.970633, 34.235386, 59.112122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286726, 34.040653, 59.701363>,  <28.313995, 34.064068, 58.940430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286726, 34.040653, 59.701363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641891, 34.207909, 59.624664>,  <28.854992, 34.308262, 59.578644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641891, 34.207909, 59.624664>,  <28.286726, 34.040653, 59.701363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641891, 34.207909, 59.624664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062353, 0.522387, 0.850426,
		0.455762, -0.743150, 0.489907,
		0.887915, 0.418138, -0.191747,
		28.908266, 34.333351, 59.567139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859034, 33.815681, 60.180214>,  <28.286726, 34.040653, 59.701363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859034, 33.815681, 60.180214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899492, 34.190060, 60.045296>,  <28.923767, 34.414688, 59.964344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899492, 34.190060, 60.045296>,  <28.859034, 33.815681, 60.180214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899492, 34.190060, 60.045296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018794, 0.337177, 0.941254,
		0.994694, -0.101542, 0.016514,
		0.101145, 0.935949, -0.337296,
		28.929836, 34.470844, 59.944107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333281, 34.063515, 60.588329>,  <28.859034, 33.815681, 60.180214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333281, 34.063515, 60.588329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160124, 34.376495, 60.409275>,  <29.056229, 34.564281, 60.301842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160124, 34.376495, 60.409275>,  <29.333281, 34.063515, 60.588329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160124, 34.376495, 60.409275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030549, 0.483554, 0.874781,
		0.900927, 0.392362, -0.185425,
		-0.432893, 0.782450, -0.447633,
		29.030256, 34.611229, 60.274986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695213, 34.679440, 60.834633>,  <29.333281, 34.063515, 60.588329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695213, 34.679440, 60.834633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.341291, 34.806675, 60.698433>,  <29.128939, 34.883015, 60.616714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.341291, 34.806675, 60.698433>,  <29.695213, 34.679440, 60.834633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341291, 34.806675, 60.698433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028863, 0.691931, 0.721386,
		0.465066, 0.648114, -0.603043,
		-0.884805, 0.318087, -0.340501,
		29.075850, 34.902100, 60.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725521, 35.377533, 61.126560>,  <29.695213, 34.679440, 60.834633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725521, 35.377533, 61.126560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345804, 35.343281, 61.005554>,  <29.117973, 35.322731, 60.932953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345804, 35.343281, 61.005554>,  <29.725521, 35.377533, 61.126560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345804, 35.343281, 61.005554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275241, 0.691372, 0.668017,
		0.151945, 0.717406, -0.679883,
		-0.949292, -0.085630, -0.302511,
		29.061016, 35.317593, 60.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923027, 36.138126, 60.947506>,  <29.725521, 35.377533, 61.126560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923027, 36.138126, 60.947506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195953, 36.430428, 60.939045>,  <30.359709, 36.605808, 60.933968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195953, 36.430428, 60.939045>,  <29.923027, 36.138126, 60.947506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195953, 36.430428, 60.939045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565387, -0.545808, -0.618410,
		-0.463448, 0.409993, -0.785571,
		0.682315, 0.730753, -0.021149,
		30.400648, 36.649654, 60.932701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119806, 36.238075, 60.164837>,  <29.923027, 36.138126, 60.947506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119806, 36.238075, 60.164837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415207, 36.365719, 60.402420>,  <30.592447, 36.442307, 60.544968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415207, 36.365719, 60.402420>,  <30.119806, 36.238075, 60.164837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415207, 36.365719, 60.402420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673592, -0.310197, -0.670859,
		-0.029835, 0.895514, -0.444031,
		0.738501, 0.319111, 0.593956,
		30.636757, 36.461452, 60.580608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629696, 36.444511, 59.715927>,  <30.119806, 36.238075, 60.164837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629696, 36.444511, 59.715927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851744, 36.417343, 60.047523>,  <30.984972, 36.401043, 60.246483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851744, 36.417343, 60.047523>,  <30.629696, 36.444511, 59.715927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851744, 36.417343, 60.047523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804667, -0.208493, -0.555915,
		0.210598, 0.975662, -0.061085,
		0.555121, -0.067921, 0.828992,
		31.018280, 36.396965, 60.296223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407282, 36.841179, 59.685814>,  <30.629696, 36.444511, 59.715927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407282, 36.841179, 59.685814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406464, 36.548405, 59.958363>,  <31.405973, 36.372738, 60.121891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406464, 36.548405, 59.958363>,  <31.407282, 36.841179, 59.685814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406464, 36.548405, 59.958363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811195, -0.399661, -0.426889,
		0.584772, 0.551849, 0.594562,
		-0.002044, -0.731938, 0.681368,
		31.405849, 36.328823, 60.162773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030567, 36.740494, 59.836887>,  <31.407282, 36.841179, 59.685814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030567, 36.740494, 59.836887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868637, 36.385204, 59.923763>,  <31.771481, 36.172031, 59.975887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868637, 36.385204, 59.923763>,  <32.030567, 36.740494, 59.836887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868637, 36.385204, 59.923763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776017, -0.459358, -0.432189,
		0.483650, -0.006416, 0.875238,
		-0.404820, -0.888228, 0.217190,
		31.747190, 36.118736, 59.988918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657284, 36.361305, 59.934025>,  <32.030567, 36.740494, 59.836887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657284, 36.361305, 59.934025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386780, 36.068012, 59.905632>,  <32.224476, 35.892036, 59.888596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386780, 36.068012, 59.905632>,  <32.657284, 36.361305, 59.934025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386780, 36.068012, 59.905632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642779, -0.540260, -0.543096,
		0.359868, -0.412902, 0.836665,
		-0.676262, -0.733234, -0.070982,
		32.183903, 35.848042, 59.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015709, 35.830952, 59.752968>,  <32.657284, 36.361305, 59.934025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015709, 35.830952, 59.752968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664062, 35.674225, 59.644421>,  <32.453075, 35.580189, 59.579292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664062, 35.674225, 59.644421>,  <33.015709, 35.830952, 59.752968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664062, 35.674225, 59.644421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475622, -0.684441, -0.552562,
		0.030769, -0.614833, 0.788057,
		-0.879112, -0.391819, -0.271368,
		32.400330, 35.556679, 59.563011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.513781, 41.537415, 59.784225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186520, 41.308582, 59.761047>,  <27.990164, 41.171284, 59.747139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186520, 41.308582, 59.761047>,  <28.513781, 41.537415, 59.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186520, 41.308582, 59.761047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378270, -0.459587, -0.803550,
		0.433060, -0.679345, 0.592410,
		-0.818151, -0.572076, -0.057947,
		27.941074, 41.136959, 59.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643055, 40.706661, 59.712242>,  <28.513781, 41.537415, 59.784225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643055, 40.706661, 59.712242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293833, 40.783028, 59.532764>,  <28.084299, 40.828850, 59.425079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293833, 40.783028, 59.532764>,  <28.643055, 40.706661, 59.712242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293833, 40.783028, 59.532764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381189, -0.306590, -0.872180,
		-0.304052, -0.932503, 0.194908,
		-0.873067, 0.190891, -0.448680,
		28.031916, 40.840302, 59.398155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428499, 40.110233, 59.437618>,  <28.643055, 40.706661, 59.712242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428499, 40.110233, 59.437618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279280, 40.428436, 59.246616>,  <28.189747, 40.619358, 59.132015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279280, 40.428436, 59.246616>,  <28.428499, 40.110233, 59.437618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279280, 40.428436, 59.246616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230248, -0.419177, -0.878223,
		-0.898788, -0.437564, -0.026789,
		-0.373050, 0.795505, -0.477500,
		28.167364, 40.667088, 59.103367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163752, 39.761955, 58.887104>,  <28.428499, 40.110233, 59.437618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163752, 39.761955, 58.887104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171125, 40.141720, 58.761711>,  <28.175550, 40.369579, 58.686474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171125, 40.141720, 58.761711>,  <28.163752, 39.761955, 58.887104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171125, 40.141720, 58.761711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113967, -0.313487, -0.942729,
		-0.993313, -0.018348, -0.113981,
		0.018434, 0.949415, -0.313482,
		28.176655, 40.426544, 58.667667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812738, 39.772995, 58.291016>,  <28.163752, 39.761955, 58.887104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812738, 39.772995, 58.291016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041056, 40.098141, 58.244621>,  <28.178045, 40.293228, 58.216785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041056, 40.098141, 58.244621>,  <27.812738, 39.772995, 58.291016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041056, 40.098141, 58.244621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242360, -0.301754, -0.922066,
		-0.784512, 0.498197, -0.369244,
		0.570791, 0.812862, -0.115986,
		28.212294, 40.341999, 58.209824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671371, 40.040508, 57.608337>,  <27.812738, 39.772995, 58.291016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671371, 40.040508, 57.608337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020706, 40.214211, 57.696617>,  <28.230307, 40.318432, 57.749584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020706, 40.214211, 57.696617>,  <27.671371, 40.040508, 57.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020706, 40.214211, 57.696617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384622, -0.336727, -0.859466,
		-0.298909, 0.835489, -0.461099,
		0.873338, 0.434251, 0.220696,
		28.282707, 40.344486, 57.762825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895721, 40.562572, 57.047718>,  <27.671371, 40.040508, 57.608337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895721, 40.562572, 57.047718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205936, 40.426819, 57.260643>,  <28.392065, 40.345367, 57.388397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205936, 40.426819, 57.260643>,  <27.895721, 40.562572, 57.047718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205936, 40.426819, 57.260643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410371, -0.369728, -0.833605,
		0.479724, 0.864939, -0.147464,
		0.775539, -0.339386, 0.532313,
		28.438599, 40.325005, 57.420338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504446, 40.744133, 56.633461>,  <27.895721, 40.562572, 57.047718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504446, 40.744133, 56.633461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657167, 40.464619, 56.875427>,  <28.748800, 40.296909, 57.020607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657167, 40.464619, 56.875427>,  <28.504446, 40.744133, 56.633461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657167, 40.464619, 56.875427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585484, -0.323565, -0.743312,
		0.715146, 0.637969, 0.285590,
		0.381803, -0.698785, 0.604917,
		28.771708, 40.254982, 57.056904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241154, 40.721180, 56.473133>,  <28.504446, 40.744133, 56.633461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241154, 40.721180, 56.473133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191168, 40.370781, 56.659470>,  <29.161177, 40.160542, 56.771271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191168, 40.370781, 56.659470>,  <29.241154, 40.721180, 56.473133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191168, 40.370781, 56.659470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656539, -0.425035, -0.623138,
		0.743868, 0.227975, 0.628242,
		-0.124965, -0.875998, 0.465845,
		29.153679, 40.107983, 56.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887026, 40.381100, 56.508991>,  <29.241154, 40.721180, 56.473133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887026, 40.381100, 56.508991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658373, 40.059597, 56.574982>,  <29.521181, 39.866695, 56.614574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658373, 40.059597, 56.574982>,  <29.887026, 40.381100, 56.508991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658373, 40.059597, 56.574982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569333, -0.533328, -0.625637,
		0.590842, -0.263710, 0.762471,
		-0.571634, -0.803752, 0.164974,
		29.486883, 39.818470, 56.624474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442467, 39.913311, 56.789112>,  <29.887026, 40.381100, 56.508991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442467, 39.913311, 56.789112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133429, 39.691811, 56.664886>,  <29.948006, 39.558910, 56.590351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133429, 39.691811, 56.664886>,  <30.442467, 39.913311, 56.789112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133429, 39.691811, 56.664886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634673, -0.660645, -0.400922,
		0.016836, -0.506860, 0.861864,
		-0.772598, -0.553751, -0.310567,
		29.901649, 39.525684, 56.571716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722309, 39.202614, 56.832287>,  <30.442467, 39.913311, 56.789112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722309, 39.202614, 56.832287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405329, 39.181633, 56.589218>,  <30.215139, 39.169044, 56.443375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405329, 39.181633, 56.589218>,  <30.722309, 39.202614, 56.832287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405329, 39.181633, 56.589218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546522, -0.503402, -0.669254,
		-0.270800, -0.862459, 0.427589,
		-0.792453, -0.052453, -0.607673,
		30.167593, 39.165897, 56.406918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044222, 39.748466, 57.167198>,  <30.722309, 39.202614, 56.832287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044222, 39.748466, 57.167198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347658, 39.650272, 57.408619>,  <31.529720, 39.591354, 57.553471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347658, 39.650272, 57.408619>,  <31.044222, 39.748466, 57.167198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347658, 39.650272, 57.408619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511053, 0.350443, 0.784866,
		-0.404186, -0.903839, 0.140385,
		0.758591, -0.245487, 0.603554,
		31.575235, 39.576626, 57.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704304, 39.525822, 57.826759>,  <31.044222, 39.748466, 57.167198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704304, 39.525822, 57.826759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083132, 39.601334, 57.930626>,  <31.310429, 39.646641, 57.992947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083132, 39.601334, 57.930626>,  <30.704304, 39.525822, 57.826759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083132, 39.601334, 57.930626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293420, 0.180836, 0.938724,
		0.130253, -0.965226, 0.226655,
		0.947069, 0.188776, 0.259663,
		31.367252, 39.657967, 58.008526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761433, 39.239563, 58.465206>,  <30.704304, 39.525822, 57.826759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761433, 39.239563, 58.465206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057135, 39.508060, 58.443504>,  <31.234556, 39.669159, 58.430485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057135, 39.508060, 58.443504>,  <30.761433, 39.239563, 58.465206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057135, 39.508060, 58.443504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204456, 0.300467, 0.931621,
		0.641641, -0.677611, 0.359360,
		0.739253, 0.671240, -0.054250,
		31.278910, 39.709431, 58.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018595, 39.167545, 59.032597>,  <30.761433, 39.239563, 58.465206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018595, 39.167545, 59.032597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148006, 39.525654, 58.910084>,  <31.225653, 39.740520, 58.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148006, 39.525654, 58.910084>,  <31.018595, 39.167545, 59.032597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148006, 39.525654, 58.910084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371891, 0.417956, 0.828860,
		0.870072, -0.154255, 0.468166,
		0.323528, 0.895276, -0.306286,
		31.245066, 39.794235, 58.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346739, 39.460232, 59.584145>,  <31.018595, 39.167545, 59.032597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346739, 39.460232, 59.584145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306654, 39.784477, 59.353367>,  <31.282602, 39.979023, 59.214901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306654, 39.784477, 59.353367>,  <31.346739, 39.460232, 59.584145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306654, 39.784477, 59.353367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397397, 0.498990, 0.770120,
		0.912158, 0.306451, 0.272130,
		-0.100214, 0.810615, -0.576941,
		31.276590, 40.027660, 59.180286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730499, 40.013596, 59.899384>,  <31.346739, 39.460232, 59.584145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730499, 40.013596, 59.899384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462605, 40.190960, 59.661110>,  <31.301867, 40.297379, 59.518147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462605, 40.190960, 59.661110>,  <31.730499, 40.013596, 59.899384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462605, 40.190960, 59.661110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497892, 0.327025, 0.803217,
		0.550957, 0.834532, 0.001748,
		-0.669739, 0.443409, -0.595683,
		31.261683, 40.323982, 59.482407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641317, 40.676247, 60.219360>,  <31.730499, 40.013596, 59.899384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641317, 40.676247, 60.219360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326454, 40.626259, 59.977779>,  <31.137537, 40.596264, 59.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326454, 40.626259, 59.977779>,  <31.641317, 40.676247, 60.219360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326454, 40.626259, 59.977779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591206, 0.431811, 0.681186,
		0.175665, 0.893264, -0.413789,
		-0.787158, -0.124974, -0.603957,
		31.090307, 40.588768, 59.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466461, 41.350395, 60.145096>,  <31.641317, 40.676247, 60.219360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466461, 41.350395, 60.145096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186129, 41.070694, 60.088696>,  <31.017929, 40.902874, 60.054855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186129, 41.070694, 60.088696>,  <31.466461, 41.350395, 60.145096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186129, 41.070694, 60.088696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572691, 0.433716, 0.695640,
		-0.425274, 0.568276, -0.704418,
		-0.700833, -0.699252, -0.140998,
		30.975878, 40.860920, 60.046394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881542, 41.742451, 60.237324>,  <31.466461, 41.350395, 60.145096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881542, 41.742451, 60.237324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751141, 41.365891, 60.271923>,  <30.672899, 41.139954, 60.292683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751141, 41.365891, 60.271923>,  <30.881542, 41.742451, 60.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751141, 41.365891, 60.271923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700094, 0.301900, 0.647089,
		-0.635286, 0.150395, -0.757491,
		-0.326006, -0.941402, 0.086502,
		30.653339, 41.083469, 60.297874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132120, 41.782719, 60.269161>,  <30.881542, 41.742451, 60.237324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132120, 41.782719, 60.269161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226639, 41.425789, 60.423008>,  <30.283350, 41.211632, 60.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226639, 41.425789, 60.423008>,  <30.132120, 41.782719, 60.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226639, 41.425789, 60.423008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651975, 0.147894, 0.743677,
		-0.720481, -0.426486, -0.546825,
		0.236296, -0.892321, 0.384613,
		30.297527, 41.158092, 60.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524916, 41.577499, 60.449818>,  <30.132120, 41.782719, 60.269161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524916, 41.577499, 60.449818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754805, 41.313148, 60.642868>,  <29.892738, 41.154537, 60.758698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754805, 41.313148, 60.642868>,  <29.524916, 41.577499, 60.449818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754805, 41.313148, 60.642868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649646, -0.009813, 0.760174,
		-0.497649, -0.750426, -0.434978,
		0.574722, -0.660881, 0.482628,
		29.927221, 41.114883, 60.787655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050226, 41.092594, 60.713226>,  <29.524916, 41.577499, 60.449818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050226, 41.092594, 60.713226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389189, 41.100742, 60.925449>,  <29.592566, 41.105633, 61.052784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389189, 41.100742, 60.925449>,  <29.050226, 41.092594, 60.713226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389189, 41.100742, 60.925449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529463, -0.042251, 0.847280,
		0.039675, -0.998899, -0.025019,
		0.847404, 0.020370, 0.530557,
		29.643410, 41.106853, 61.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966379, 40.525082, 61.171772>,  <29.050226, 41.092594, 60.713226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966379, 40.525082, 61.171772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237179, 40.771297, 61.333157>,  <29.399658, 40.919025, 61.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237179, 40.771297, 61.333157>,  <28.966379, 40.525082, 61.171772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237179, 40.771297, 61.333157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460152, -0.073825, 0.884765,
		0.574394, -0.784639, 0.233263,
		0.677001, 0.615541, 0.403458,
		29.440279, 40.955959, 61.454193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413769, 40.180237, 61.660305>,  <28.966379, 40.525082, 61.171772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413769, 40.180237, 61.660305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416981, 40.569218, 61.753487>,  <29.418907, 40.802608, 61.809395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416981, 40.569218, 61.753487>,  <29.413769, 40.180237, 61.660305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416981, 40.569218, 61.753487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200373, -0.226670, 0.953138,
		0.979687, -0.054330, 0.193034,
		0.008029, 0.972455, 0.232952,
		29.419390, 40.860954, 61.823372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444958, 39.309826, 61.774426>,  <29.413769, 40.180237, 61.660305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444958, 39.309826, 61.774426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530621, 39.163689, 62.136787>,  <29.582018, 39.076004, 62.354202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530621, 39.163689, 62.136787>,  <29.444958, 39.309826, 61.774426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530621, 39.163689, 62.136787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651426, -0.637646, -0.411159,
		0.727860, 0.678181, 0.101439,
		0.214158, -0.365346, 0.905902,
		29.594868, 39.054085, 62.408558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190361, 39.217892, 61.746708>,  <29.444958, 39.309826, 61.774426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190361, 39.217892, 61.746708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031700, 38.982368, 62.028408>,  <29.936504, 38.841053, 62.197430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031700, 38.982368, 62.028408>,  <30.190361, 39.217892, 61.746708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031700, 38.982368, 62.028408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493946, -0.783553, -0.376912,
		0.773747, 0.198358, 0.601639,
		-0.396652, -0.588811, 0.704250,
		29.912704, 38.805725, 62.239681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737570, 38.724232, 62.026657>,  <30.190361, 39.217892, 61.746708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737570, 38.724232, 62.026657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398249, 38.526157, 62.101681>,  <30.194656, 38.407314, 62.146694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398249, 38.526157, 62.101681>,  <30.737570, 38.724232, 62.026657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398249, 38.526157, 62.101681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427744, -0.849624, -0.308505,
		0.312122, -0.181477, 0.932548,
		-0.848302, -0.495183, 0.187560,
		30.143759, 38.377602, 62.157948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894966, 38.070114, 62.263397>,  <30.737570, 38.724232, 62.026657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894966, 38.070114, 62.263397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522179, 38.030895, 62.123783>,  <30.298506, 38.007362, 62.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522179, 38.030895, 62.123783>,  <30.894966, 38.070114, 62.263397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522179, 38.030895, 62.123783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298141, -0.755043, -0.583971,
		-0.206275, -0.648302, 0.732909,
		-0.931967, -0.098052, -0.349032,
		30.242588, 38.001480, 62.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734648, 37.390476, 62.346199>,  <30.894966, 38.070114, 62.263397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734648, 37.390476, 62.346199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466911, 37.492809, 62.067192>,  <30.306269, 37.554211, 61.899788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466911, 37.492809, 62.067192>,  <30.734648, 37.390476, 62.346199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466911, 37.492809, 62.067192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355579, -0.714020, -0.603108,
		-0.652337, -0.651708, 0.386955,
		-0.669344, 0.255837, -0.697515,
		30.266108, 37.569561, 61.857937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331741, 36.749607, 62.100437>,  <30.734648, 37.390476, 62.346199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331741, 36.749607, 62.100437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295744, 37.028469, 61.815937>,  <30.274145, 37.195786, 61.645237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295744, 37.028469, 61.815937>,  <30.331741, 36.749607, 62.100437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295744, 37.028469, 61.815937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290856, -0.664613, -0.688253,
		-0.952525, -0.268809, -0.142961,
		-0.089995, 0.697159, -0.711246,
		30.268745, 37.237617, 61.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070080, 36.311398, 61.634212>,  <30.331741, 36.749607, 62.100437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070080, 36.311398, 61.634212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193773, 36.632797, 61.430740>,  <30.267988, 36.825638, 61.308655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193773, 36.632797, 61.430740>,  <30.070080, 36.311398, 61.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193773, 36.632797, 61.430740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497950, -0.592519, -0.633219,
		-0.810197, -0.057487, -0.583331,
		0.309233, 0.803503, -0.508683,
		30.286543, 36.873848, 61.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339605, 36.134388, 61.356609>,  <30.070080, 36.311398, 61.634212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339605, 36.134388, 61.356609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038469, 35.884418, 61.273945>,  <28.857788, 35.734436, 61.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038469, 35.884418, 61.273945>,  <29.339605, 36.134388, 61.356609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038469, 35.884418, 61.273945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634630, 0.605885, 0.479738,
		-0.174584, 0.492319, -0.852726,
		-0.752838, -0.624920, -0.206663,
		28.812618, 35.696941, 61.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695993, 36.494976, 60.997601>,  <29.339605, 36.134388, 61.356609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695993, 36.494976, 60.997601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572166, 36.153522, 61.165165>,  <28.497869, 35.948650, 61.265701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572166, 36.153522, 61.165165>,  <28.695993, 36.494976, 60.997601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572166, 36.153522, 61.165165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801872, 0.471131, 0.367474,
		-0.511047, -0.222152, -0.830349,
		-0.309568, -0.853630, 0.418908,
		28.479296, 35.897434, 61.290836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035042, 36.378872, 60.760803>,  <28.695993, 36.494976, 60.997601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035042, 36.378872, 60.760803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034163, 36.149258, 61.088333>,  <28.033634, 36.011490, 61.284851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034163, 36.149258, 61.088333>,  <28.035042, 36.378872, 60.760803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034163, 36.149258, 61.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860452, 0.418301, 0.290940,
		-0.509527, -0.703920, -0.494853,
		-0.002199, -0.574039, 0.818825,
		28.033503, 35.977047, 61.333981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377924, 35.946976, 60.767525>,  <28.035042, 36.378872, 60.760803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377924, 35.946976, 60.767525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500029, 35.985382, 61.146492>,  <27.573292, 36.008427, 61.373871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500029, 35.985382, 61.146492>,  <27.377924, 35.946976, 60.767525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500029, 35.985382, 61.146492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835978, 0.503459, 0.218334,
		-0.456021, -0.858667, 0.233955,
		0.305263, 0.096017, 0.947415,
		27.591608, 36.014187, 61.430717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865870, 35.839252, 61.149666>,  <27.377924, 35.946976, 60.767525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865870, 35.839252, 61.149666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074728, 36.018841, 61.439709>,  <27.200043, 36.126595, 61.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074728, 36.018841, 61.439709>,  <26.865870, 35.839252, 61.149666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074728, 36.018841, 61.439709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779164, 0.596846, 0.191516,
		-0.346795, -0.664981, 0.661464,
		0.522146, 0.448972, 0.725112,
		27.231373, 36.153534, 61.657242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395075, 35.803333, 61.741787>,  <26.865870, 35.839252, 61.149666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395075, 35.803333, 61.741787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646709, 36.100819, 61.832249>,  <26.797689, 36.279308, 61.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646709, 36.100819, 61.832249>,  <26.395075, 35.803333, 61.741787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646709, 36.100819, 61.832249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758064, 0.522571, 0.390202,
		0.172017, -0.416909, 0.892523,
		0.629086, 0.743711, 0.226153,
		26.835436, 36.323933, 61.900093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331009, 35.940342, 62.453991>,  <26.395075, 35.803333, 61.741787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331009, 35.940342, 62.453991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487350, 36.268761, 62.287563>,  <26.581156, 36.465813, 62.187706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487350, 36.268761, 62.287563>,  <26.331009, 35.940342, 62.453991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487350, 36.268761, 62.287563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572629, 0.570803, 0.588456,
		0.720645, 0.008255, 0.693255,
		0.390854, 0.821046, -0.416073,
		26.604607, 36.515076, 62.162743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486183, 36.338322, 63.037827>,  <26.331009, 35.940342, 62.453991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486183, 36.338322, 63.037827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492672, 36.599064, 62.734558>,  <26.496565, 36.755508, 62.552597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492672, 36.599064, 62.734558>,  <26.486183, 36.338322, 63.037827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492672, 36.599064, 62.734558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557723, 0.635246, 0.534236,
		0.829868, 0.414184, 0.373858,
		0.016220, 0.651855, -0.758171,
		26.497538, 36.794621, 62.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543360, 36.954010, 63.399754>,  <26.486183, 36.338322, 63.037827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543360, 36.954010, 63.399754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414581, 37.064953, 63.037666>,  <26.337315, 37.131519, 62.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414581, 37.064953, 63.037666>,  <26.543360, 36.954010, 63.399754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414581, 37.064953, 63.037666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569077, 0.707435, 0.419151,
		0.756639, 0.650084, -0.069918,
		-0.321945, 0.277357, -0.905220,
		26.317997, 37.148159, 62.766102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.532139, 33.027573, 48.295197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613270, 33.410915, 48.214775>,  <36.661949, 33.640919, 48.166523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613270, 33.410915, 48.214775>,  <36.532139, 33.027573, 48.295197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613270, 33.410915, 48.214775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853546, 0.273658, 0.443364,
		0.479918, 0.081683, 0.873502,
		0.202826, 0.958353, -0.201053,
		36.674118, 33.698421, 48.154461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393414, 33.367458, 48.957321>,  <36.532139, 33.027573, 48.295197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393414, 33.367458, 48.957321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385330, 33.664845, 48.689934>,  <36.380482, 33.843277, 48.529503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385330, 33.664845, 48.689934>,  <36.393414, 33.367458, 48.957321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385330, 33.664845, 48.689934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776582, 0.409427, 0.478842,
		0.629692, 0.528793, 0.569092,
		-0.020206, 0.743470, -0.668464,
		36.379269, 33.887886, 48.489395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301552, 33.892620, 49.364403>,  <36.393414, 33.367458, 48.957321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301552, 33.892620, 49.364403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176704, 34.002026, 49.000477>,  <36.101795, 34.067669, 48.782120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176704, 34.002026, 49.000477>,  <36.301552, 33.892620, 49.364403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176704, 34.002026, 49.000477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857196, 0.331835, 0.393828,
		0.409628, 0.902815, 0.130883,
		-0.312122, 0.273515, -0.909818,
		36.083069, 34.084080, 48.727531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030327, 34.644405, 49.431507>,  <36.301552, 33.892620, 49.364403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030327, 34.644405, 49.431507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866524, 34.502640, 49.095245>,  <35.768242, 34.417580, 48.893490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866524, 34.502640, 49.095245>,  <36.030327, 34.644405, 49.431507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866524, 34.502640, 49.095245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819395, 0.548026, 0.168104,
		0.401120, 0.757665, -0.514827,
		-0.409505, -0.354417, -0.840651,
		35.743671, 34.396317, 48.843052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683392, 35.204712, 49.067211>,  <36.030327, 34.644405, 49.431507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683392, 35.204712, 49.067211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509510, 34.864502, 48.948792>,  <35.405182, 34.660378, 48.877739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509510, 34.864502, 48.948792>,  <35.683392, 35.204712, 49.067211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509510, 34.864502, 48.948792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898719, 0.430782, 0.082043,
		0.057752, 0.301726, -0.951644,
		-0.434706, -0.850522, -0.296045,
		35.379097, 34.609344, 48.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899345, 35.375896, 48.792496>,  <35.683392, 35.204712, 49.067211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899345, 35.375896, 48.792496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.890854, 34.976635, 48.815228>,  <34.885757, 34.737076, 48.828865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.890854, 34.976635, 48.815228>,  <34.899345, 35.375896, 48.792496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890854, 34.976635, 48.815228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940455, 0.039227, 0.337647,
		-0.339254, -0.046274, -0.939556,
		-0.021231, -0.998158, 0.056826,
		34.884483, 34.677189, 48.832275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167683, 35.210068, 48.581673>,  <34.899345, 35.375896, 48.792496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167683, 35.210068, 48.581673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300945, 34.885307, 48.773430>,  <34.380905, 34.690453, 48.888485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300945, 34.885307, 48.773430>,  <34.167683, 35.210068, 48.581673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300945, 34.885307, 48.773430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896296, -0.114887, 0.428316,
		-0.292674, -0.572379, -0.765980,
		0.333160, -0.811901, 0.479396,
		34.400894, 34.641739, 48.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704372, 34.728977, 48.511860>,  <34.167683, 35.210068, 48.581673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704372, 34.728977, 48.511860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910557, 34.618156, 48.836216>,  <34.034267, 34.551662, 49.030830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910557, 34.618156, 48.836216>,  <33.704372, 34.728977, 48.511860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910557, 34.618156, 48.836216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839691, 0.025455, 0.542467,
		-0.170935, -0.960517, -0.219520,
		0.515461, -0.277056, 0.810888,
		34.065197, 34.535042, 49.079483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229614, 34.325951, 48.825985>,  <33.704372, 34.728977, 48.511860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229614, 34.325951, 48.825985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506786, 34.441887, 49.090057>,  <33.673088, 34.511448, 49.248501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506786, 34.441887, 49.090057>,  <33.229614, 34.325951, 48.825985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506786, 34.441887, 49.090057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714012, 0.148639, 0.684174,
		0.100173, -0.945462, 0.309946,
		0.692931, 0.289841, 0.660181,
		33.714664, 34.528839, 49.288113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024208, 34.062614, 49.432594>,  <33.229614, 34.325951, 48.825985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024208, 34.062614, 49.432594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275650, 34.346863, 49.558998>,  <33.426517, 34.517414, 49.634842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275650, 34.346863, 49.558998>,  <33.024208, 34.062614, 49.432594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275650, 34.346863, 49.558998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651422, 0.259134, 0.713091,
		0.424853, -0.654111, 0.625811,
		0.628609, 0.710626, 0.316008,
		33.464233, 34.560051, 49.653801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919571, 34.081226, 50.106441>,  <33.024208, 34.062614, 49.432594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919571, 34.081226, 50.106441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088551, 34.439846, 50.053158>,  <33.189938, 34.655018, 50.021187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088551, 34.439846, 50.053158>,  <32.919571, 34.081226, 50.106441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088551, 34.439846, 50.053158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788922, 0.436065, 0.432954,
		0.446250, -0.077810, 0.891519,
		0.422449, 0.896545, -0.133208,
		33.215286, 34.708809, 50.013195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022671, 34.345879, 50.740173>,  <32.919571, 34.081226, 50.106441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022671, 34.345879, 50.740173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001118, 34.637615, 50.467361>,  <32.988186, 34.812656, 50.303677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001118, 34.637615, 50.467361>,  <33.022671, 34.345879, 50.740173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001118, 34.637615, 50.467361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799986, 0.377234, 0.466602,
		0.597595, 0.570753, 0.563136,
		-0.053880, 0.729340, -0.682027,
		32.984955, 34.856419, 50.262753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785503, 35.005783, 51.130302>,  <33.022671, 34.345879, 50.740173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785503, 35.005783, 51.130302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686546, 35.002300, 50.742752>,  <32.627174, 35.000210, 50.510223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686546, 35.002300, 50.742752>,  <32.785503, 35.005783, 51.130302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686546, 35.002300, 50.742752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935462, 0.262639, 0.236498,
		0.252406, 0.964855, -0.073120,
		-0.247391, -0.008707, -0.968877,
		32.612328, 34.999687, 50.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413937, 35.672424, 50.739544>,  <32.785503, 35.005783, 51.130302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413937, 35.672424, 50.739544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.282867, 35.316063, 50.613739>,  <32.204224, 35.102245, 50.538258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.282867, 35.316063, 50.613739>,  <32.413937, 35.672424, 50.739544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282867, 35.316063, 50.613739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919821, 0.224796, 0.321551,
		-0.215771, 0.394656, -0.893134,
		-0.327676, -0.890906, -0.314509,
		32.184566, 35.048790, 50.519386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806616, 35.716324, 50.276749>,  <32.413937, 35.672424, 50.739544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806616, 35.716324, 50.276749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.813110, 35.370041, 50.476868>,  <31.817007, 35.162273, 50.596939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.813110, 35.370041, 50.476868>,  <31.806616, 35.716324, 50.276749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813110, 35.370041, 50.476868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795596, 0.291878, 0.530880,
		-0.605610, -0.406650, -0.684012,
		0.016235, -0.865703, 0.500294,
		31.817982, 35.110329, 50.626957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174007, 35.498421, 50.350498>,  <31.806616, 35.716324, 50.276749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174007, 35.498421, 50.350498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.320726, 35.245090, 50.623074>,  <31.408758, 35.093094, 50.786617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.320726, 35.245090, 50.623074>,  <31.174007, 35.498421, 50.350498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320726, 35.245090, 50.623074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853440, 0.062461, 0.517435,
		-0.370269, -0.771360, -0.517595,
		0.366799, -0.633326, 0.681437,
		31.430767, 35.055092, 50.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691828, 34.978302, 50.371883>,  <31.174007, 35.498421, 50.350498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691828, 34.978302, 50.371883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.911718, 34.950310, 50.704845>,  <31.043652, 34.933514, 50.904625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.911718, 34.950310, 50.704845>,  <30.691828, 34.978302, 50.371883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911718, 34.950310, 50.704845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834524, -0.090182, 0.543541,
		0.037033, -0.993464, -0.107974,
		0.549725, -0.069978, 0.832409,
		31.076635, 34.929314, 50.954567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465778, 34.425762, 50.718826>,  <30.691828, 34.978302, 50.371883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465778, 34.425762, 50.718826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.626915, 34.665730, 50.995323>,  <30.723597, 34.809711, 51.161221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.626915, 34.665730, 50.995323>,  <30.465778, 34.425762, 50.718826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626915, 34.665730, 50.995323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890844, 0.083683, 0.446537,
		0.210042, -0.795670, 0.568147,
		0.402840, 0.599922, 0.691241,
		30.747766, 34.845707, 51.202694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140335, 34.295921, 51.334862>,  <30.465778, 34.425762, 50.718826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140335, 34.295921, 51.334862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307280, 34.642941, 51.443058>,  <30.407446, 34.851154, 51.507977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307280, 34.642941, 51.443058>,  <30.140335, 34.295921, 51.334862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307280, 34.642941, 51.443058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774858, 0.184239, 0.604691,
		0.474766, -0.461964, 0.749124,
		0.417363, 0.867552, 0.270486,
		30.432489, 34.903206, 51.524204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019964, 34.305096, 52.040661>,  <30.140335, 34.295921, 51.334862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019964, 34.305096, 52.040661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.095757, 34.682312, 51.931286>,  <30.141232, 34.908642, 51.865662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.095757, 34.682312, 51.931286>,  <30.019964, 34.305096, 52.040661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095757, 34.682312, 51.931286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864689, 0.292202, 0.408573,
		0.465200, 0.159020, 0.870805,
		0.189479, 0.943043, -0.273435,
		30.152601, 34.965225, 51.849255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847555, 34.721851, 52.620098>,  <30.019964, 34.305096, 52.040661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847555, 34.721851, 52.620098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848207, 34.991966, 52.325077>,  <29.848598, 35.154034, 52.148064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848207, 34.991966, 52.325077>,  <29.847555, 34.721851, 52.620098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848207, 34.991966, 52.325077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923062, 0.284715, 0.258639,
		0.384648, 0.680387, 0.623794,
		0.001629, 0.675286, -0.737555,
		29.848696, 35.194553, 52.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596807, 35.354252, 52.938320>,  <29.847555, 34.721851, 52.620098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596807, 35.354252, 52.938320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.548349, 35.431458, 52.548843>,  <29.519274, 35.477779, 52.315159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.548349, 35.431458, 52.548843>,  <29.596807, 35.354252, 52.938320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548349, 35.431458, 52.548843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894417, 0.404205, 0.191407,
		0.430514, 0.894072, 0.123666,
		-0.121145, 0.193013, -0.973689,
		29.512007, 35.489361, 52.256737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320745, 36.034660, 52.924717>,  <29.596807, 35.354252, 52.938320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320745, 36.034660, 52.924717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.244753, 35.849869, 52.578194>,  <29.199158, 35.738995, 52.370281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.244753, 35.849869, 52.578194>,  <29.320745, 36.034660, 52.924717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244753, 35.849869, 52.578194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926075, 0.377334, 0.001865,
		0.326025, 0.802618, -0.499511,
		-0.189980, -0.461977, -0.866305,
		29.187759, 35.711277, 52.318302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784122, 36.479252, 52.657097>,  <29.320745, 36.034660, 52.924717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784122, 36.479252, 52.657097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.755142, 36.160351, 52.417381>,  <28.737755, 35.969009, 52.273552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.755142, 36.160351, 52.417381>,  <28.784122, 36.479252, 52.657097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755142, 36.160351, 52.417381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997346, 0.053582, 0.049291,
		-0.007187, 0.601265, -0.799017,
		-0.072450, -0.797251, -0.599285,
		28.733408, 35.921177, 52.237595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172796, 36.634045, 52.244289>,  <28.784122, 36.479252, 52.657097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172796, 36.634045, 52.244289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.239969, 36.244526, 52.182949>,  <28.280273, 36.010815, 52.146145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.239969, 36.244526, 52.182949>,  <28.172796, 36.634045, 52.244289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239969, 36.244526, 52.182949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954589, -0.121803, -0.271889,
		0.246085, 0.192050, -0.950031,
		0.167933, -0.973797, -0.153355,
		28.290350, 35.952385, 52.136944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884264, 36.406956, 51.559460>,  <28.172796, 36.634045, 52.244289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884264, 36.406956, 51.559460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.884722, 36.099796, 51.815685>,  <27.884996, 35.915501, 51.969421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.884722, 36.099796, 51.815685>,  <27.884264, 36.406956, 51.559460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884722, 36.099796, 51.815685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957353, -0.185915, -0.221160,
		0.288920, -0.612993, -0.735367,
		0.001146, -0.767903, 0.640565,
		27.885065, 35.869427, 52.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506346, 35.845116, 51.194553>,  <27.884264, 36.406956, 51.559460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506346, 35.845116, 51.194553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.491709, 35.744633, 51.581451>,  <27.482927, 35.684341, 51.813591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.491709, 35.744633, 51.581451>,  <27.506346, 35.845116, 51.194553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491709, 35.744633, 51.581451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979463, -0.183021, -0.084587,
		0.198274, -0.950472, -0.239353,
		-0.036591, -0.251209, 0.967241,
		27.480732, 35.669270, 51.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174915, 35.228729, 51.240692>,  <27.506346, 35.845116, 51.194553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174915, 35.228729, 51.240692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.107405, 35.364948, 51.610672>,  <27.066898, 35.446682, 51.832661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.107405, 35.364948, 51.610672>,  <27.174915, 35.228729, 51.240692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107405, 35.364948, 51.610672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985643, -0.062721, -0.156759,
		0.004630, -0.938132, 0.346246,
		-0.168777, 0.340549, 0.924954,
		27.056772, 35.467113, 51.888157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660208, 34.808361, 51.537411>,  <27.174915, 35.228729, 51.240692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660208, 34.808361, 51.537411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.641260, 35.144043, 51.754108>,  <26.629892, 35.345451, 51.884129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.641260, 35.144043, 51.754108>,  <26.660208, 34.808361, 51.537411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641260, 35.144043, 51.754108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977948, 0.071478, -0.196238,
		-0.203407, -0.539092, 0.817316,
		-0.047370, 0.839208, 0.541743,
		26.627048, 35.395805, 51.916630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142601, 34.650082, 52.007114>,  <26.660208, 34.808361, 51.537411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142601, 34.650082, 52.007114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.154291, 35.049881, 52.002243>,  <26.161304, 35.289761, 51.999321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.154291, 35.049881, 52.002243>,  <26.142601, 34.650082, 52.007114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154291, 35.049881, 52.002243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999542, 0.029125, -0.008269,
		-0.007910, 0.012419, 0.999892,
		0.029224, 0.999498, -0.012183,
		26.163059, 35.349731, 51.998589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709883, 34.769699, 52.482094>,  <26.142601, 34.650082, 52.007114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709883, 34.769699, 52.482094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.757788, 35.117401, 52.290237>,  <25.786530, 35.326023, 52.175125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.757788, 35.117401, 52.290237>,  <25.709883, 34.769699, 52.482094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757788, 35.117401, 52.290237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989917, 0.141359, 0.009014,
		0.075637, 0.473722, 0.877421,
		0.119761, 0.869256, -0.479637,
		25.793716, 35.378178, 52.146347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429987, 35.253483, 52.951195>,  <25.709883, 34.769699, 52.482094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429987, 35.253483, 52.951195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.404675, 35.442032, 52.599331>,  <25.389486, 35.555161, 52.388214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.404675, 35.442032, 52.599331>,  <25.429987, 35.253483, 52.951195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404675, 35.442032, 52.599331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963901, 0.199554, 0.176276,
		0.258631, 0.859061, 0.441728,
		-0.063283, 0.471372, -0.879661,
		25.385689, 35.583443, 52.335434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050272, 35.961567, 53.055687>,  <25.429987, 35.253483, 52.951195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050272, 35.961567, 53.055687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.016632, 35.872086, 52.667278>,  <24.996449, 35.818398, 52.434235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.016632, 35.872086, 52.667278>,  <25.050272, 35.961567, 53.055687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016632, 35.872086, 52.667278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957746, 0.287124, 0.016802,
		0.275045, 0.931405, -0.238400,
		-0.084100, -0.223706, -0.971022,
		24.991402, 35.804974, 52.375973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680420, 36.502682, 52.836632>,  <25.050272, 35.961567, 53.055687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680420, 36.502682, 52.836632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.628328, 36.185329, 52.598778>,  <24.597073, 35.994919, 52.456066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.628328, 36.185329, 52.598778>,  <24.680420, 36.502682, 52.836632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628328, 36.185329, 52.598778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979780, 0.194859, -0.045404,
		0.151893, 0.576699, -0.802712,
		-0.130231, -0.793378, -0.594636,
		24.589258, 35.947315, 52.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302700, 36.751236, 52.239742>,  <24.680420, 36.502682, 52.836632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302700, 36.751236, 52.239742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.232174, 36.357651, 52.228973>,  <24.189859, 36.121498, 52.222511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.232174, 36.357651, 52.228973>,  <24.302700, 36.751236, 52.239742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232174, 36.357651, 52.228973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984320, 0.176102, 0.010080,
		-0.005177, 0.028277, -0.999587,
		-0.176314, -0.983965, -0.026922,
		24.179279, 36.062462, 52.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.748634, 31.007607, 50.628250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428257, 31.171156, 50.453297>,  <34.236031, 31.269285, 50.348324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428257, 31.171156, 50.453297>,  <34.748634, 31.007607, 50.628250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428257, 31.171156, 50.453297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200565, 0.505088, 0.839440,
		0.564144, 0.760071, -0.322542,
		-0.800946, 0.408875, -0.437386,
		34.187973, 31.293818, 50.322083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797222, 31.734787, 50.660000>,  <34.748634, 31.007607, 50.628250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797222, 31.734787, 50.660000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407803, 31.648113, 50.631035>,  <34.174149, 31.596109, 50.613655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407803, 31.648113, 50.631035>,  <34.797222, 31.734787, 50.660000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407803, 31.648113, 50.631035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194316, 0.618653, 0.761255,
		-0.120156, 0.755192, -0.644396,
		-0.973552, -0.216687, -0.072411,
		34.115738, 31.583107, 50.609310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419044, 32.375160, 50.836147>,  <34.797222, 31.734787, 50.660000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419044, 32.375160, 50.836147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166374, 32.072968, 50.905693>,  <34.014771, 31.891651, 50.947418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166374, 32.072968, 50.905693>,  <34.419044, 32.375160, 50.836147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166374, 32.072968, 50.905693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294453, 0.441280, 0.847685,
		-0.717134, 0.484269, -0.501201,
		-0.631678, -0.755483, 0.173863,
		33.976871, 31.846323, 50.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773884, 32.672199, 51.133011>,  <34.419044, 32.375160, 50.836147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773884, 32.672199, 51.133011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731411, 32.284874, 51.223427>,  <33.705925, 32.052479, 51.277676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731411, 32.284874, 51.223427>,  <33.773884, 32.672199, 51.133011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731411, 32.284874, 51.223427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397826, 0.249708, 0.882825,
		-0.911295, 0.003821, -0.411736,
		-0.106187, -0.968314, 0.226038,
		33.699554, 31.994379, 51.291237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039860, 32.581333, 51.295494>,  <33.773884, 32.672199, 51.133011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039860, 32.581333, 51.295494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257446, 32.288830, 51.460106>,  <33.387997, 32.113327, 51.558872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257446, 32.288830, 51.460106>,  <33.039860, 32.581333, 51.295494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257446, 32.288830, 51.460106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341241, 0.255268, 0.904651,
		-0.766586, -0.632531, -0.110679,
		0.543967, -0.731261, 0.411530,
		33.420635, 32.069450, 51.583565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586887, 32.194988, 51.677528>,  <33.039860, 32.581333, 51.295494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586887, 32.194988, 51.677528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949398, 32.103188, 51.819508>,  <33.166904, 32.048107, 51.904694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949398, 32.103188, 51.819508>,  <32.586887, 32.194988, 51.677528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949398, 32.103188, 51.819508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269676, 0.332683, 0.903658,
		-0.325472, -0.914688, 0.239614,
		0.906280, -0.229497, 0.354948,
		33.221283, 32.034340, 51.925991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372345, 31.906603, 52.225807>,  <32.586887, 32.194988, 51.677528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372345, 31.906603, 52.225807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760883, 31.989048, 52.273144>,  <32.994007, 32.038517, 52.301548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760883, 31.989048, 52.273144>,  <32.372345, 31.906603, 52.225807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760883, 31.989048, 52.273144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153110, 0.161807, 0.974872,
		0.181795, -0.965055, 0.188730,
		0.971344, 0.206123, 0.118344,
		33.052288, 32.050880, 52.308647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539997, 31.548138, 52.743343>,  <32.372345, 31.906603, 52.225807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539997, 31.548138, 52.743343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821793, 31.831341, 52.723637>,  <32.990868, 32.001263, 52.711811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821793, 31.831341, 52.723637>,  <32.539997, 31.548138, 52.743343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821793, 31.831341, 52.723637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115500, 0.182863, 0.976330,
		0.700258, -0.682119, 0.210599,
		0.704485, 0.708007, -0.049267,
		33.033138, 32.043743, 52.708858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969204, 31.410482, 53.336292>,  <32.539997, 31.548138, 52.743343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969204, 31.410482, 53.336292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014416, 31.794889, 53.235359>,  <33.041542, 32.025532, 53.174797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014416, 31.794889, 53.235359>,  <32.969204, 31.410482, 53.336292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014416, 31.794889, 53.235359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266339, 0.273973, 0.924123,
		0.957229, -0.037245, 0.286923,
		0.113028, 0.961016, -0.252335,
		33.048325, 32.083195, 53.159660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508633, 31.650213, 53.763332>,  <32.969204, 31.410482, 53.336292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508633, 31.650213, 53.763332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266460, 31.952623, 53.663826>,  <33.121159, 32.134068, 53.604122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266460, 31.952623, 53.663826>,  <33.508633, 31.650213, 53.763332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266460, 31.952623, 53.663826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249398, 0.116609, 0.961355,
		0.755815, 0.644073, 0.117953,
		-0.605428, 0.756024, -0.248766,
		33.084831, 32.179432, 53.589195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634655, 32.067337, 54.258865>,  <33.508633, 31.650213, 53.763332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634655, 32.067337, 54.258865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309597, 32.243927, 54.106701>,  <33.114563, 32.349880, 54.015400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309597, 32.243927, 54.106701>,  <33.634655, 32.067337, 54.258865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309597, 32.243927, 54.106701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334103, 0.181906, 0.924816,
		0.477480, 0.878642, -0.000327,
		-0.812643, 0.441472, -0.380414,
		33.065804, 32.376369, 53.992577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487736, 32.592529, 54.765377>,  <33.634655, 32.067337, 54.258865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487736, 32.592529, 54.765377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154240, 32.591003, 54.544518>,  <32.954144, 32.590088, 54.412003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154240, 32.591003, 54.544518>,  <33.487736, 32.592529, 54.765377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154240, 32.591003, 54.544518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543353, 0.183581, 0.819186,
		0.098239, 0.982997, -0.155131,
		-0.833736, -0.003815, -0.552149,
		32.904118, 32.589859, 54.378872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864887, 33.098389, 54.471668>,  <33.487736, 32.592529, 54.765377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864887, 33.098389, 54.471668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213963, 33.275581, 54.553825>,  <34.423409, 33.381897, 54.603119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213963, 33.275581, 54.553825>,  <33.864887, 33.098389, 54.471668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213963, 33.275581, 54.553825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351402, -0.277716, -0.894086,
		-0.339024, 0.852432, -0.398024,
		0.872685, 0.442983, 0.205394,
		34.475769, 33.408478, 54.615444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020187, 33.328354, 53.874023>,  <33.864887, 33.098389, 54.471668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020187, 33.328354, 53.874023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371647, 33.348339, 54.063965>,  <34.582523, 33.360329, 54.177929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371647, 33.348339, 54.063965>,  <34.020187, 33.328354, 53.874023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371647, 33.348339, 54.063965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477299, -0.118609, -0.870700,
		0.012819, 0.991683, -0.128063,
		0.878648, 0.049963, 0.474850,
		34.635242, 33.363327, 54.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471310, 33.801826, 53.591225>,  <34.020187, 33.328354, 53.874023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471310, 33.801826, 53.591225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733860, 33.562714, 53.775322>,  <34.891392, 33.419247, 53.885780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733860, 33.562714, 53.775322>,  <34.471310, 33.801826, 53.591225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733860, 33.562714, 53.775322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627327, 0.093580, -0.773113,
		0.419083, 0.796178, 0.436429,
		0.656376, -0.597783, 0.460246,
		34.930775, 33.383377, 53.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126049, 34.148460, 53.623386>,  <34.471310, 33.801826, 53.591225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126049, 34.148460, 53.623386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225349, 33.762737, 53.660217>,  <35.284931, 33.531303, 53.682316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225349, 33.762737, 53.660217>,  <35.126049, 34.148460, 53.623386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225349, 33.762737, 53.660217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818931, 0.158149, -0.551671,
		0.517420, 0.212354, 0.828964,
		0.248250, -0.964310, 0.092074,
		35.299824, 33.473446, 53.687840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915321, 34.157303, 53.664886>,  <35.126049, 34.148460, 53.623386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915321, 34.157303, 53.664886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809681, 33.784088, 53.567162>,  <35.746296, 33.560158, 53.508526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809681, 33.784088, 53.567162>,  <35.915321, 34.157303, 53.664886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809681, 33.784088, 53.567162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748730, -0.038653, -0.661748,
		0.607994, -0.357689, 0.708803,
		-0.264098, -0.933040, -0.244312,
		35.730450, 33.504177, 53.493870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576347, 33.866974, 53.501312>,  <35.915321, 34.157303, 53.664886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576347, 33.866974, 53.501312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316296, 33.602203, 53.352081>,  <36.160263, 33.443340, 53.262543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316296, 33.602203, 53.352081>,  <36.576347, 33.866974, 53.501312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316296, 33.602203, 53.352081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625511, -0.187513, -0.757347,
		0.431350, -0.725738, 0.535949,
		-0.650133, -0.661924, -0.373074,
		36.121254, 33.403625, 53.240158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927429, 33.221149, 53.404293>,  <36.576347, 33.866974, 53.501312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927429, 33.221149, 53.404293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608875, 33.212276, 53.162537>,  <36.417744, 33.206955, 53.017483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608875, 33.212276, 53.162537>,  <36.927429, 33.221149, 53.404293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608875, 33.212276, 53.162537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593841, -0.218012, -0.774483,
		-0.114586, -0.975694, 0.186793,
		-0.796381, -0.022180, -0.604388,
		36.369961, 33.205624, 52.981220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907913, 32.586731, 53.175808>,  <36.927429, 33.221149, 53.404293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907913, 32.586731, 53.175808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720688, 32.831543, 52.920830>,  <36.608353, 32.978428, 52.767841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720688, 32.831543, 52.920830>,  <36.907913, 32.586731, 53.175808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720688, 32.831543, 52.920830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641464, -0.260838, -0.721448,
		-0.607817, -0.746582, -0.270506,
		-0.468062, 0.612028, -0.637448,
		36.580269, 33.015152, 52.729595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833649, 32.270508, 52.514076>,  <36.907913, 32.586731, 53.175808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833649, 32.270508, 52.514076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768127, 32.653824, 52.420399>,  <36.728817, 32.883816, 52.364193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768127, 32.653824, 52.420399>,  <36.833649, 32.270508, 52.514076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768127, 32.653824, 52.420399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618311, -0.085248, -0.781297,
		-0.768675, -0.272779, -0.578559,
		-0.163800, 0.958292, -0.234190,
		36.718987, 32.941311, 52.350143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810356, 32.157032, 51.874279>,  <36.833649, 32.270508, 52.514076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810356, 32.157032, 51.874279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862019, 32.553673, 51.871861>,  <36.893017, 32.791656, 51.870411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862019, 32.553673, 51.871861>,  <36.810356, 32.157032, 51.874279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862019, 32.553673, 51.871861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619697, -0.085475, -0.780173,
		-0.774141, 0.097021, -0.625534,
		0.129161, 0.991605, -0.006046,
		36.900768, 32.851154, 51.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640621, 32.426197, 51.193974>,  <36.810356, 32.157032, 51.874279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640621, 32.426197, 51.193974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868744, 32.705917, 51.366360>,  <37.005619, 32.873749, 51.469791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868744, 32.705917, 51.366360>,  <36.640621, 32.426197, 51.193974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868744, 32.705917, 51.366360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488858, 0.132680, -0.862215,
		-0.660126, 0.702408, -0.266189,
		0.570309, 0.699299, 0.430963,
		37.039837, 32.915707, 51.495647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763554, 32.779854, 50.616131>,  <36.640621, 32.426197, 51.193974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763554, 32.779854, 50.616131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005249, 32.931843, 50.896278>,  <37.150269, 33.023037, 51.064365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005249, 32.931843, 50.896278>,  <36.763554, 32.779854, 50.616131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005249, 32.931843, 50.896278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608949, 0.346663, -0.713447,
		-0.513881, 0.857581, -0.021916,
		0.604241, 0.379973, 0.700367,
		37.186520, 33.045834, 51.106388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863495, 33.535671, 50.496864>,  <36.763554, 32.779854, 50.616131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863495, 33.535671, 50.496864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181900, 33.403332, 50.699604>,  <37.372944, 33.323929, 50.821247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181900, 33.403332, 50.699604>,  <36.863495, 33.535671, 50.496864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181900, 33.403332, 50.699604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603707, 0.373708, -0.704188,
		0.043566, 0.866534, 0.497213,
		0.796015, -0.330850, 0.506852,
		37.420704, 33.304077, 50.851658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655006, 33.602715, 50.308136>,  <36.863495, 33.535671, 50.496864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655006, 33.602715, 50.308136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542850, 33.982941, 50.254757>,  <37.475555, 34.211075, 50.222729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542850, 33.982941, 50.254757>,  <37.655006, 33.602715, 50.308136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542850, 33.982941, 50.254757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927606, -0.232580, 0.292325,
		0.246838, 0.205749, 0.946963,
		-0.280390, 0.950565, -0.133445,
		37.458733, 34.268108, 50.214722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372231, 33.940037, 50.992695>,  <37.655006, 33.602715, 50.308136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372231, 33.940037, 50.992695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228436, 34.133461, 50.673462>,  <37.142159, 34.249516, 50.481922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228436, 34.133461, 50.673462>,  <37.372231, 33.940037, 50.992695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228436, 34.133461, 50.673462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903781, 0.032455, 0.426763,
		0.232268, 0.874707, 0.425368,
		-0.359488, 0.483563, -0.798082,
		37.120590, 34.278530, 50.434036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962982, 34.529438, 51.094810>,  <37.372231, 33.940037, 50.992695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962982, 34.529438, 51.094810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808086, 34.397667, 50.750362>,  <36.715149, 34.318604, 50.543694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808086, 34.397667, 50.750362>,  <36.962982, 34.529438, 51.094810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808086, 34.397667, 50.750362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910483, -0.010399, 0.413416,
		-0.145144, 0.944125, -0.295908,
		-0.387239, -0.329424, -0.861119,
		36.691914, 34.298840, 50.492027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488346, 34.825062, 50.570053>,  <36.962982, 34.529438, 51.094810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488346, 34.825062, 50.570053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337933, 35.148529, 50.389095>,  <37.247684, 35.342609, 50.280521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337933, 35.148529, 50.389095>,  <37.488346, 34.825062, 50.570053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337933, 35.148529, 50.389095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443853, 0.271375, 0.854020,
		0.813385, 0.521934, 0.256884,
		-0.376030, 0.808666, -0.452394,
		37.225124, 35.391129, 50.253376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492893, 35.376274, 51.043949>,  <37.488346, 34.825062, 50.570053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492893, 35.376274, 51.043949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237679, 35.506451, 50.764809>,  <37.084549, 35.584557, 50.597324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237679, 35.506451, 50.764809>,  <37.492893, 35.376274, 51.043949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237679, 35.506451, 50.764809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638710, 0.282504, 0.715710,
		0.430065, 0.902376, 0.027611,
		-0.638039, 0.325438, -0.697851,
		37.046268, 35.604080, 50.555454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371445, 36.074432, 51.148170>,  <37.492893, 35.376274, 51.043949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371445, 36.074432, 51.148170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058064, 35.894730, 50.976418>,  <36.870037, 35.786907, 50.873363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058064, 35.894730, 50.976418>,  <37.371445, 36.074432, 51.148170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058064, 35.894730, 50.976418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575104, 0.262289, 0.774894,
		-0.235504, 0.854033, -0.463860,
		-0.783450, -0.449259, -0.429387,
		36.823029, 35.759953, 50.847603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966133, 36.559292, 51.165295>,  <37.371445, 36.074432, 51.148170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966133, 36.559292, 51.165295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758419, 36.218151, 51.143459>,  <36.633789, 36.013466, 51.130356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758419, 36.218151, 51.143459>,  <36.966133, 36.559292, 51.165295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758419, 36.218151, 51.143459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522373, 0.266206, 0.810099,
		-0.676365, 0.449190, -0.583746,
		-0.519285, -0.852856, -0.054593,
		36.602634, 35.962296, 51.127083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258404, 36.732670, 51.285198>,  <36.966133, 36.559292, 51.165295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258404, 36.732670, 51.285198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262428, 36.338192, 51.351303>,  <36.264843, 36.101505, 51.390968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262428, 36.338192, 51.351303>,  <36.258404, 36.732670, 51.285198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262428, 36.338192, 51.351303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438870, 0.144152, 0.886912,
		-0.898494, -0.081452, -0.431363,
		0.010059, -0.986198, 0.165267,
		36.265446, 36.042332, 51.400883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552254, 36.562004, 51.366028>,  <36.258404, 36.732670, 51.285198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552254, 36.562004, 51.366028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764977, 36.263515, 51.526192>,  <35.892612, 36.084423, 51.622288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764977, 36.263515, 51.526192>,  <35.552254, 36.562004, 51.366028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764977, 36.263515, 51.526192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537535, 0.067910, 0.840503,
		-0.654396, -0.662221, -0.365007,
		0.531811, -0.746225, 0.400407,
		35.924519, 36.039646, 51.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094078, 35.969852, 51.531399>,  <35.552254, 36.562004, 51.366028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094078, 35.969852, 51.531399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417870, 35.947735, 51.765213>,  <35.612144, 35.934464, 51.905502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417870, 35.947735, 51.765213>,  <35.094078, 35.969852, 51.531399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417870, 35.947735, 51.765213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586316, -0.023254, 0.809749,
		-0.031193, -0.998199, -0.051251,
		0.809482, -0.055308, 0.584534,
		35.660713, 35.931145, 51.940575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955822, 35.346329, 52.075180>,  <35.094078, 35.969852, 51.531399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955822, 35.346329, 52.075180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241928, 35.582314, 52.225033>,  <35.413589, 35.723904, 52.314945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241928, 35.582314, 52.225033>,  <34.955822, 35.346329, 52.075180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241928, 35.582314, 52.225033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454825, -0.014028, 0.890470,
		0.530598, -0.807310, 0.258295,
		0.715262, 0.589961, 0.374628,
		35.456505, 35.759300, 52.337421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973949, 35.103634, 52.791515>,  <34.955822, 35.346329, 52.075180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973949, 35.103634, 52.791515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184296, 35.442570, 52.821125>,  <35.310501, 35.645931, 52.838890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184296, 35.442570, 52.821125>,  <34.973949, 35.103634, 52.791515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184296, 35.442570, 52.821125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360827, 0.143429, 0.921538,
		0.770242, -0.511310, 0.381168,
		0.525862, 0.847343, 0.074020,
		35.342052, 35.696774, 52.843330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275311, 35.219910, 53.525005>,  <34.973949, 35.103634, 52.791515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275311, 35.219910, 53.525005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.289349, 35.576012, 53.343357>,  <35.297771, 35.789673, 53.234367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.289349, 35.576012, 53.343357>,  <35.275311, 35.219910, 53.525005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289349, 35.576012, 53.343357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326142, 0.439722, 0.836825,
		0.944669, 0.118740, 0.305779,
		0.035093, 0.890250, -0.454118,
		35.299877, 35.843086, 53.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748447, 35.572971, 53.936687>,  <35.275311, 35.219910, 53.525005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748447, 35.572971, 53.936687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490471, 35.823479, 53.761490>,  <35.335686, 35.973785, 53.656372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490471, 35.823479, 53.761490>,  <35.748447, 35.572971, 53.936687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490471, 35.823479, 53.761490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266474, 0.352868, 0.896926,
		0.716273, 0.695176, -0.060693,
		-0.644937, 0.626271, -0.437996,
		35.296989, 36.011360, 53.630093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681820, 36.079121, 54.440968>,  <35.748447, 35.572971, 53.936687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681820, 36.079121, 54.440968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374935, 36.164333, 54.198975>,  <35.190804, 36.215462, 54.053780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374935, 36.164333, 54.198975>,  <35.681820, 36.079121, 54.440968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374935, 36.164333, 54.198975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395049, 0.586130, 0.707381,
		0.505291, 0.781710, -0.365529,
		-0.767214, 0.213032, -0.604979,
		35.144772, 36.228241, 54.017479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556671, 36.804131, 54.535053>,  <35.681820, 36.079121, 54.440968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556671, 36.804131, 54.535053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226955, 36.633518, 54.386127>,  <35.029125, 36.531151, 54.296772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226955, 36.633518, 54.386127>,  <35.556671, 36.804131, 54.535053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226955, 36.633518, 54.386127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545370, 0.421596, 0.724451,
		-0.152034, 0.800206, -0.580134,
		-0.824292, -0.426529, -0.372311,
		34.979668, 36.505558, 54.274433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035145, 37.318184, 54.442284>,  <35.556671, 36.804131, 54.535053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035145, 37.318184, 54.442284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840424, 36.969135, 54.458054>,  <34.723591, 36.759705, 54.467514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840424, 36.969135, 54.458054>,  <35.035145, 37.318184, 54.442284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840424, 36.969135, 54.458054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660572, 0.397289, 0.637029,
		-0.571548, 0.284065, -0.769831,
		-0.486803, -0.872622, 0.039424,
		34.694382, 36.707348, 54.469879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358437, 37.549965, 54.448174>,  <35.035145, 37.318184, 54.442284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358437, 37.549965, 54.448174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323933, 37.166710, 54.557377>,  <34.303230, 36.936756, 54.622898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323933, 37.166710, 54.557377>,  <34.358437, 37.549965, 54.448174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323933, 37.166710, 54.557377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802063, 0.229338, 0.551452,
		-0.590977, -0.171396, -0.788270,
		-0.086263, -0.958137, 0.273004,
		34.298054, 36.879269, 54.639278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691956, 37.420021, 54.266209>,  <34.358437, 37.549965, 54.448174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691956, 37.420021, 54.266209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804722, 37.155712, 54.544460>,  <33.872379, 36.997128, 54.711411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804722, 37.155712, 54.544460>,  <33.691956, 37.420021, 54.266209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804722, 37.155712, 54.544460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799834, 0.238583, 0.550767,
		-0.529899, -0.711657, -0.461250,
		0.281911, -0.660774, 0.695632,
		33.889294, 36.957481, 54.753151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045105, 37.115063, 54.583256>,  <33.691956, 37.420021, 54.266209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045105, 37.115063, 54.583256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320118, 37.025009, 54.859406>,  <33.485126, 36.970978, 55.025093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320118, 37.025009, 54.859406>,  <33.045105, 37.115063, 54.583256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320118, 37.025009, 54.859406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652159, 0.226676, 0.723399,
		-0.319353, -0.947593, 0.009023,
		0.687533, -0.225135, 0.690371,
		33.526379, 36.957470, 55.066517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664738, 36.768726, 55.101223>,  <33.045105, 37.115063, 54.583256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664738, 36.768726, 55.101223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003063, 36.915340, 55.256275>,  <33.206059, 37.003307, 55.349308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003063, 36.915340, 55.256275>,  <32.664738, 36.768726, 55.101223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003063, 36.915340, 55.256275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533292, 0.561410, 0.632786,
		0.014315, -0.741938, 0.670315,
		0.845810, 0.366532, 0.387634,
		33.256805, 37.025299, 55.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549286, 36.750282, 55.804302>,  <32.664738, 36.768726, 55.101223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549286, 36.750282, 55.804302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838924, 37.023884, 55.768909>,  <33.012707, 37.188046, 55.747673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838924, 37.023884, 55.768909>,  <32.549286, 36.750282, 55.804302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838924, 37.023884, 55.768909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472333, 0.585276, 0.659055,
		0.502581, -0.435425, 0.746872,
		0.724095, 0.684000, -0.088482,
		33.056152, 37.229084, 55.742363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736015, 36.880482, 56.460850>,  <32.549286, 36.750282, 55.804302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736015, 36.880482, 56.460850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831760, 37.204285, 56.246407>,  <32.889210, 37.398567, 56.117741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831760, 37.204285, 56.246407>,  <32.736015, 36.880482, 56.460850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831760, 37.204285, 56.246407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364904, 0.586681, 0.722947,
		0.899750, 0.022579, 0.435821,
		0.239364, 0.809504, -0.536105,
		32.903568, 37.447136, 56.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067917, 37.415024, 56.956059>,  <32.736015, 36.880482, 56.460850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067917, 37.415024, 56.956059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944256, 37.614723, 56.632290>,  <32.870060, 37.734543, 56.438026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944256, 37.614723, 56.632290>,  <33.067917, 37.415024, 56.956059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944256, 37.614723, 56.632290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289814, 0.761178, 0.580186,
		0.905777, 0.413949, -0.090630,
		-0.309153, 0.499253, -0.809426,
		32.851509, 37.764500, 56.389462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329514, 38.130150, 57.080307>,  <33.067917, 37.415024, 56.956059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329514, 38.130150, 57.080307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040443, 38.165550, 56.806107>,  <32.867001, 38.186790, 56.641586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040443, 38.165550, 56.806107>,  <33.329514, 38.130150, 57.080307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040443, 38.165550, 56.806107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431318, 0.717228, 0.547311,
		0.540099, 0.691195, -0.480148,
		-0.722674, 0.088505, -0.685499,
		32.823643, 38.192101, 56.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317337, 38.916946, 56.933842>,  <33.329514, 38.130150, 57.080307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317337, 38.916946, 56.933842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974148, 38.766930, 56.793427>,  <32.768234, 38.676918, 56.709179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974148, 38.766930, 56.793427>,  <33.317337, 38.916946, 56.933842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974148, 38.766930, 56.793427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510653, 0.696959, 0.503470,
		0.055836, 0.611222, -0.789488,
		-0.857972, -0.375042, -0.351038,
		32.716755, 38.654415, 56.688114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923855, 39.552795, 56.652103>,  <33.317337, 38.916946, 56.933842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923855, 39.552795, 56.652103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659283, 39.260963, 56.721645>,  <32.500538, 39.085865, 56.763371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659283, 39.260963, 56.721645>,  <32.923855, 39.552795, 56.652103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659283, 39.260963, 56.721645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579026, 0.644069, 0.499904,
		-0.476693, 0.229986, -0.848452,
		-0.661432, -0.729576, 0.173855,
		32.460854, 39.042091, 56.773804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363586, 39.933945, 56.558968>,  <32.923855, 39.552795, 56.652103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363586, 39.933945, 56.558968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248775, 39.613770, 56.769459>,  <32.179890, 39.421665, 56.895752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248775, 39.613770, 56.769459>,  <32.363586, 39.933945, 56.558968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248775, 39.613770, 56.769459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460836, 0.596976, 0.656696,
		-0.839789, -0.054015, -0.540219,
		-0.287027, -0.800439, 0.526226,
		32.162666, 39.373638, 56.927326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628597, 40.013432, 56.772575>,  <32.363586, 39.933945, 56.558968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628597, 40.013432, 56.772575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801334, 39.769474, 57.038372>,  <31.904976, 39.623100, 57.197849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801334, 39.769474, 57.038372>,  <31.628597, 40.013432, 56.772575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801334, 39.769474, 57.038372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359871, 0.559032, 0.746978,
		-0.827046, -0.561706, 0.021931,
		0.431842, -0.609893, 0.664487,
		31.930887, 39.586506, 57.237717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
