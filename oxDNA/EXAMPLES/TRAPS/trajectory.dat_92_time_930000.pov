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
	<36.607773, 52.968769, 49.720520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452744, 52.626129, 49.584274>,  <36.359726, 52.420544, 49.502525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452744, 52.626129, 49.584274>,  <36.607773, 52.968769, 49.720520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452744, 52.626129, 49.584274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898038, 0.267432, 0.349296,
		-0.208116, 0.441265, -0.872910,
		-0.387576, -0.856601, -0.340616,
		36.336472, 52.369148, 49.482090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105549, 53.153023, 50.287262>,  <36.607773, 52.968769, 49.720520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105549, 53.153023, 50.287262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040337, 52.854446, 50.545330>,  <37.001209, 52.675301, 50.700169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040337, 52.854446, 50.545330>,  <37.105549, 53.153023, 50.287262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040337, 52.854446, 50.545330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948495, 0.298604, 0.105802,
		-0.271625, -0.594689, -0.756680,
		-0.163028, -0.746446, 0.645167,
		36.991428, 52.630512, 50.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627941, 53.177643, 50.663155>,  <37.105549, 53.153023, 50.287262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627941, 53.177643, 50.663155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471691, 53.012825, 50.992428>,  <37.377941, 52.913933, 51.189991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471691, 53.012825, 50.992428>,  <37.627941, 53.177643, 50.663155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471691, 53.012825, 50.992428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143613, 0.856003, 0.496622,
		-0.909279, 0.312212, -0.275201,
		-0.390624, -0.412046, 0.823183,
		37.354504, 52.889210, 51.239384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160172, 53.722717, 50.889542>,  <37.627941, 53.177643, 50.663155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160172, 53.722717, 50.889542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292171, 53.477356, 51.176552>,  <37.371372, 53.330139, 51.348759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292171, 53.477356, 51.176552>,  <37.160172, 53.722717, 50.889542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292171, 53.477356, 51.176552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065991, 0.773236, 0.630675,
		-0.941672, -0.160770, 0.295645,
		0.329997, -0.613399, 0.717526,
		37.391171, 53.293335, 51.391811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940277, 54.150341, 51.453426>,  <37.160172, 53.722717, 50.889542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940277, 54.150341, 51.453426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211620, 53.876057, 51.558975>,  <37.374424, 53.711487, 51.622307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211620, 53.876057, 51.558975>,  <36.940277, 54.150341, 51.453426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211620, 53.876057, 51.558975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291854, 0.581074, 0.759720,
		-0.674282, -0.438347, 0.594303,
		0.678355, -0.685715, 0.263874,
		37.415127, 53.670341, 51.638138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813461, 54.014332, 52.146244>,  <36.940277, 54.150341, 51.453426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813461, 54.014332, 52.146244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194996, 53.968498, 52.035194>,  <37.423916, 53.940998, 51.968567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194996, 53.968498, 52.035194>,  <36.813461, 54.014332, 52.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194996, 53.968498, 52.035194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252743, 0.805591, 0.535857,
		0.162249, -0.581285, 0.797360,
		0.953832, -0.114585, -0.277622,
		37.481144, 53.934124, 51.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134068, 53.937122, 52.851631>,  <36.813461, 54.014332, 52.146244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134068, 53.937122, 52.851631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343937, 54.084866, 52.544830>,  <37.469860, 54.173512, 52.360752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343937, 54.084866, 52.544830>,  <37.134068, 53.937122, 52.851631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343937, 54.084866, 52.544830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449470, 0.644966, 0.618059,
		0.722975, -0.669023, 0.172380,
		0.524675, 0.369361, -0.767000,
		37.501339, 54.195675, 52.314732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589802, 54.058563, 53.469158>,  <37.134068, 53.937122, 52.851631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589802, 54.058563, 53.469158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486771, 54.024029, 53.854115>,  <37.424950, 54.003307, 54.085087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486771, 54.024029, 53.854115>,  <37.589802, 54.058563, 53.469158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486771, 54.024029, 53.854115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146547, -0.987969, -0.049404,
		0.955079, 0.128310, 0.267133,
		-0.257580, -0.086332, 0.962392,
		37.409496, 53.998131, 54.142834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066936, 53.674568, 53.838203>,  <37.589802, 54.058563, 53.469158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066936, 53.674568, 53.838203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707703, 53.627171, 54.007629>,  <37.492165, 53.598732, 54.109287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707703, 53.627171, 54.007629>,  <38.066936, 53.674568, 53.838203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707703, 53.627171, 54.007629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038376, -0.980466, -0.192910,
		0.438153, -0.156994, 0.885085,
		-0.898081, -0.118490, 0.423569,
		37.438278, 53.591625, 54.134701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108475, 53.115791, 54.140060>,  <38.066936, 53.674568, 53.838203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108475, 53.115791, 54.140060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711094, 53.156193, 54.118706>,  <37.472664, 53.180431, 54.105892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711094, 53.156193, 54.118706>,  <38.108475, 53.115791, 54.140060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711094, 53.156193, 54.118706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094710, -0.989462, -0.109519,
		-0.063886, -0.103745, 0.992550,
		-0.993453, 0.101001, -0.053387,
		37.413059, 53.186493, 54.102688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513992, 52.768326, 54.651070>,  <38.108475, 53.115791, 54.140060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513992, 52.768326, 54.651070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659077, 53.035374, 54.390999>,  <38.746128, 53.195602, 54.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659077, 53.035374, 54.390999>,  <38.513992, 52.768326, 54.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659077, 53.035374, 54.390999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833069, -0.544974, -0.094861,
		-0.417659, -0.507232, -0.753841,
		0.362707, 0.667622, -0.650173,
		38.767887, 53.235661, 54.195946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801769, 52.334774, 54.068562>,  <38.513992, 52.768326, 54.651070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801769, 52.334774, 54.068562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969315, 52.694611, 54.118004>,  <39.069843, 52.910515, 54.147671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969315, 52.694611, 54.118004>,  <38.801769, 52.334774, 54.068562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969315, 52.694611, 54.118004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908017, -0.416075, -0.048849,
		0.007487, 0.132701, -0.991128,
		0.418866, 0.899595, 0.123610,
		39.094975, 52.964489, 54.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234184, 52.557163, 53.482670>,  <38.801769, 52.334774, 54.068562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234184, 52.557163, 53.482670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338581, 52.683445, 53.847572>,  <39.401218, 52.759212, 54.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338581, 52.683445, 53.847572>,  <39.234184, 52.557163, 53.482670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338581, 52.683445, 53.847572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787886, -0.615698, -0.012335,
		0.557781, 0.721975, -0.409429,
		0.260990, 0.315703, 0.912258,
		39.416878, 52.778156, 54.121250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001160, 52.616039, 53.550400>,  <39.234184, 52.557163, 53.482670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001160, 52.616039, 53.550400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893013, 52.603436, 53.935295>,  <39.828125, 52.595875, 54.166233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893013, 52.603436, 53.935295>,  <40.001160, 52.616039, 53.550400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893013, 52.603436, 53.935295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822797, -0.526530, 0.213942,
		0.499909, 0.849573, 0.168277,
		-0.270362, -0.031507, 0.962243,
		39.811905, 52.593983, 54.223969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398647, 53.031940, 54.024334>,  <40.001160, 52.616039, 53.550400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398647, 53.031940, 54.024334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277691, 52.713448, 54.233932>,  <40.205116, 52.522354, 54.359692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277691, 52.713448, 54.233932>,  <40.398647, 53.031940, 54.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277691, 52.713448, 54.233932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949922, -0.206293, 0.234715,
		-0.078789, 0.568736, 0.818738,
		-0.302391, -0.796230, 0.524001,
		40.186974, 52.474579, 54.391132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753082, 53.037457, 54.576313>,  <40.398647, 53.031940, 54.024334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753082, 53.037457, 54.576313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649555, 52.654362, 54.526104>,  <40.587440, 52.424503, 54.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649555, 52.654362, 54.526104>,  <40.753082, 53.037457, 54.576313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649555, 52.654362, 54.526104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929063, -0.282385, 0.238958,
		-0.264303, -0.054768, 0.962883,
		-0.258817, -0.957737, -0.125518,
		40.571911, 52.367043, 54.488449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877262, 52.691032, 55.183163>,  <40.753082, 53.037457, 54.576313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877262, 52.691032, 55.183163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874508, 52.409729, 54.898804>,  <40.872856, 52.240948, 54.728188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874508, 52.409729, 54.898804>,  <40.877262, 52.691032, 55.183163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874508, 52.409729, 54.898804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889516, -0.329098, 0.316948,
		-0.456853, -0.630172, 0.627829,
		-0.006886, -0.703262, -0.710898,
		40.872440, 52.198750, 54.685535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943760, 52.054222, 55.509331>,  <40.877262, 52.691032, 55.183163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943760, 52.054222, 55.509331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098167, 52.076584, 55.141014>,  <41.190811, 52.090000, 54.920025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098167, 52.076584, 55.141014>,  <40.943760, 52.054222, 55.509331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098167, 52.076584, 55.141014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919285, -0.106461, 0.378921,
		-0.076843, -0.992744, -0.092494,
		0.386018, 0.055911, -0.920795,
		41.213974, 52.093357, 54.864777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509533, 51.646114, 55.501534>,  <40.943760, 52.054222, 55.509331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509533, 51.646114, 55.501534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598492, 51.855011, 55.172218>,  <41.651867, 51.980350, 54.974628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598492, 51.855011, 55.172218>,  <41.509533, 51.646114, 55.501534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598492, 51.855011, 55.172218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950586, -0.303775, 0.064085,
		-0.216627, -0.796859, -0.563993,
		0.222393, 0.522241, -0.823289,
		41.665211, 52.011684, 54.925232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730728, 51.252510, 54.755074>,  <41.509533, 51.646114, 55.501534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730728, 51.252510, 54.755074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896275, 51.612854, 54.807495>,  <41.995602, 51.829060, 54.838947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896275, 51.612854, 54.807495>,  <41.730728, 51.252510, 54.755074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896275, 51.612854, 54.807495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870525, -0.433752, 0.232477,
		0.266275, 0.017876, -0.963731,
		0.413865, 0.900855, 0.131058,
		42.020435, 51.883110, 54.846813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457336, 51.264595, 54.632454>,  <41.730728, 51.252510, 54.755074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457336, 51.264595, 54.632454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428989, 51.572289, 54.886467>,  <42.411983, 51.756905, 55.038876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428989, 51.572289, 54.886467>,  <42.457336, 51.264595, 54.632454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428989, 51.572289, 54.886467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788267, -0.346929, 0.508208,
		0.611240, 0.536587, -0.581773,
		-0.070864, 0.769229, 0.635031,
		42.407730, 51.803059, 55.076977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192730, 51.335121, 54.769367>,  <42.457336, 51.264595, 54.632454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192730, 51.335121, 54.769367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945381, 51.525150, 55.019783>,  <42.796974, 51.639168, 55.170033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945381, 51.525150, 55.019783>,  <43.192730, 51.335121, 54.769367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945381, 51.525150, 55.019783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669578, -0.098568, 0.736172,
		0.411444, 0.874408, -0.257148,
		-0.618368, 0.475074, 0.626039,
		42.759872, 51.667671, 55.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707359, 50.815975, 54.904800>,  <43.192730, 51.335121, 54.769367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707359, 50.815975, 54.904800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046661, 50.797798, 55.115852>,  <44.250244, 50.786892, 55.242485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046661, 50.797798, 55.115852>,  <43.707359, 50.815975, 54.904800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046661, 50.797798, 55.115852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083008, 0.995405, -0.047728,
		-0.523037, 0.084283, 0.848133,
		0.848258, -0.045438, 0.527630,
		44.301140, 50.784168, 55.274139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727127, 51.356804, 55.355484>,  <43.707359, 50.815975, 54.904800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727127, 51.356804, 55.355484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124241, 51.317318, 55.328247>,  <44.362511, 51.293629, 55.311905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124241, 51.317318, 55.328247>,  <43.727127, 51.356804, 55.355484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124241, 51.317318, 55.328247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105866, 0.988163, 0.111020,
		0.056328, -0.117427, 0.991483,
		0.992784, -0.098710, -0.068093,
		44.422077, 51.287704, 55.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978664, 51.786755, 55.814117>,  <43.727127, 51.356804, 55.355484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978664, 51.786755, 55.814117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307919, 51.741745, 55.591484>,  <44.505470, 51.714741, 55.457905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307919, 51.741745, 55.591484>,  <43.978664, 51.786755, 55.814117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307919, 51.741745, 55.591484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, 0.981559, 0.066571,
		0.538833, -0.154532, 0.828117,
		0.823134, -0.112521, -0.556588,
		44.554859, 51.707989, 55.424507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512253, 52.262558, 56.134392>,  <43.978664, 51.786755, 55.814117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512253, 52.262558, 56.134392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611744, 52.210453, 55.750481>,  <44.671436, 52.179192, 55.520134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611744, 52.210453, 55.750481>,  <44.512253, 52.262558, 56.134392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611744, 52.210453, 55.750481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287333, 0.956232, -0.055320,
		0.924974, -0.262016, 0.275266,
		0.248723, -0.130262, -0.959775,
		44.686359, 52.171375, 55.462547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159615, 52.395164, 56.148365>,  <44.512253, 52.262558, 56.134392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159615, 52.395164, 56.148365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961979, 52.473114, 55.809448>,  <44.843399, 52.519882, 55.606098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961979, 52.473114, 55.809448>,  <45.159615, 52.395164, 56.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961979, 52.473114, 55.809448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232759, 0.968631, 0.087051,
		0.837677, -0.154204, -0.523945,
		-0.494085, 0.194874, -0.847292,
		44.813755, 52.531574, 55.555260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747234, 52.163483, 55.901432>,  <45.159615, 52.395164, 56.148365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747234, 52.163483, 55.901432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968731, 51.831169, 55.878906>,  <46.101631, 51.631783, 55.865391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968731, 51.831169, 55.878906>,  <45.747234, 52.163483, 55.901432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968731, 51.831169, 55.878906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610564, 0.359120, 0.705864,
		-0.566195, -0.425250, 0.706106,
		0.553746, -0.830780, -0.056311,
		46.134853, 51.581936, 55.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978977, 52.088715, 56.543930>,  <45.747234, 52.163483, 55.901432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978977, 52.088715, 56.543930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232235, 51.862461, 56.332581>,  <46.384190, 51.726707, 56.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232235, 51.862461, 56.332581>,  <45.978977, 52.088715, 56.543930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232235, 51.862461, 56.332581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740341, 0.243331, 0.626646,
		-0.225884, -0.787937, 0.572828,
		0.633144, -0.565638, -0.528378,
		46.422176, 51.692768, 56.174068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318443, 51.797951, 57.018494>,  <45.978977, 52.088715, 56.543930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318443, 51.797951, 57.018494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553463, 51.765030, 56.696495>,  <46.694473, 51.745277, 56.503296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553463, 51.765030, 56.696495>,  <46.318443, 51.797951, 57.018494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553463, 51.765030, 56.696495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781101, 0.317522, 0.537644,
		0.211355, -0.944673, 0.250844,
		0.587546, -0.082301, -0.804994,
		46.729729, 51.740341, 56.454998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860504, 51.298882, 57.254852>,  <46.318443, 51.797951, 57.018494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860504, 51.298882, 57.254852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941170, 51.600109, 57.004341>,  <46.989571, 51.780846, 56.854034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941170, 51.600109, 57.004341>,  <46.860504, 51.298882, 57.254852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941170, 51.600109, 57.004341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613620, 0.401238, 0.680058,
		0.763415, -0.521439, -0.381180,
		0.201665, 0.753066, -0.626276,
		47.001671, 51.826031, 56.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.592674, 51.221855, 57.303719>,  <46.860504, 51.298882, 57.254852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.592674, 51.221855, 57.303719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479630, 51.592087, 57.202980>,  <47.411800, 51.814228, 57.142536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479630, 51.592087, 57.202980>,  <47.592674, 51.221855, 57.303719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479630, 51.592087, 57.202980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679658, 0.378493, 0.628337,
		0.676900, 0.006409, -0.736048,
		-0.282616, 0.925582, -0.251846,
		47.394844, 51.869762, 57.127426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.210247, 51.602657, 57.067776>,  <47.592674, 51.221855, 57.303719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.210247, 51.602657, 57.067776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.937523, 51.819046, 57.264748>,  <47.773888, 51.948879, 57.382931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.937523, 51.819046, 57.264748>,  <48.210247, 51.602657, 57.067776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.937523, 51.819046, 57.264748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719432, 0.373947, 0.585305,
		0.132492, 0.753334, -0.644153,
		-0.681809, 0.540972, 0.492427,
		47.732979, 51.981339, 57.412476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.368706, 52.298260, 56.941010>,  <48.210247, 51.602657, 57.067776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.368706, 52.298260, 56.941010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214130, 52.221691, 57.301903>,  <48.121384, 52.175751, 57.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214130, 52.221691, 57.301903>,  <48.368706, 52.298260, 56.941010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.214130, 52.221691, 57.301903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816702, 0.383518, 0.431174,
		-0.428560, 0.903477, 0.008132,
		-0.386437, -0.191425, 0.902232,
		48.098198, 52.164265, 57.572571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.234966, 52.949921, 57.393421>,  <48.368706, 52.298260, 56.941010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.234966, 52.949921, 57.393421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340168, 52.627583, 57.605629>,  <48.403290, 52.434181, 57.732952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340168, 52.627583, 57.605629>,  <48.234966, 52.949921, 57.393421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.340168, 52.627583, 57.605629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877102, 0.428763, 0.216456,
		-0.401895, 0.408387, 0.819573,
		0.263005, -0.805842, 0.530515,
		48.419071, 52.385830, 57.764782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.507004, 53.270996, 57.842060>,  <48.234966, 52.949921, 57.393421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.507004, 53.270996, 57.842060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662365, 52.905411, 57.795067>,  <48.755581, 52.686058, 57.766869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662365, 52.905411, 57.795067>,  <48.507004, 53.270996, 57.842060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.662365, 52.905411, 57.795067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912428, 0.399284, -0.089712,
		0.128904, -0.072353, 0.989014,
		0.388407, -0.913968, -0.117486,
		48.778889, 52.631222, 57.759823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.033138, 53.099636, 58.392033>,  <48.507004, 53.270996, 57.842060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.033138, 53.099636, 58.392033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.108555, 52.916672, 58.044418>,  <49.153805, 52.806892, 57.835850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.108555, 52.916672, 58.044418>,  <49.033138, 53.099636, 58.392033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.108555, 52.916672, 58.044418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910988, 0.411987, -0.019200,
		0.366814, -0.788060, 0.494378,
		0.188546, -0.457415, -0.869035,
		49.165119, 52.779446, 57.783707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.504192, 52.514862, 58.562931>,  <49.033138, 53.099636, 58.392033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.504192, 52.514862, 58.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.525635, 52.672855, 58.196083>,  <49.538502, 52.767651, 57.975975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.525635, 52.672855, 58.196083>,  <49.504192, 52.514862, 58.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.525635, 52.672855, 58.196083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890211, 0.397183, 0.223092,
		0.452384, -0.828392, -0.330325,
		0.053608, 0.394982, -0.917123,
		49.541718, 52.791351, 57.920944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.931499, 52.040707, 58.125050>,  <49.504192, 52.514862, 58.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.931499, 52.040707, 58.125050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.912601, 52.410252, 57.973129>,  <49.901260, 52.631977, 57.881977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.912601, 52.410252, 57.973129>,  <49.931499, 52.040707, 58.125050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.912601, 52.410252, 57.973129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998760, 0.037732, -0.032469,
		-0.015666, -0.380859, -0.924500,
		-0.047250, 0.923863, -0.379796,
		49.898426, 52.687412, 57.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.197533, 52.194210, 57.384571>,  <49.931499, 52.040707, 58.125050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.197533, 52.194210, 57.384571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.281101, 52.479610, 57.652084>,  <50.331242, 52.650848, 57.812592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.281101, 52.479610, 57.652084>,  <50.197533, 52.194210, 57.384571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.281101, 52.479610, 57.652084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976671, -0.117516, -0.179732,
		-0.049646, 0.690732, -0.721404,
		0.208923, 0.713498, 0.668784,
		50.343777, 52.693661, 57.852718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.539501, 52.792252, 57.149387>,  <50.197533, 52.194210, 57.384571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.539501, 52.792252, 57.149387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.656208, 52.693359, 57.518982>,  <50.726231, 52.634026, 57.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.656208, 52.693359, 57.518982>,  <50.539501, 52.792252, 57.149387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.656208, 52.693359, 57.518982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954448, 0.012160, -0.298128,
		0.062471, 0.968881, 0.239516,
		0.291763, -0.247230, 0.923987,
		50.743736, 52.619190, 57.796177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.000950, 53.394566, 57.538719>,  <50.539501, 52.792252, 57.149387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.000950, 53.394566, 57.538719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.125816, 53.038548, 57.671608>,  <51.200737, 52.824936, 57.751343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.125816, 53.038548, 57.671608>,  <51.000950, 53.394566, 57.538719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.125816, 53.038548, 57.671608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940499, 0.240111, -0.240435,
		0.134229, 0.387508, 0.912042,
		0.312162, -0.890047, 0.332221,
		51.219463, 52.771534, 57.771275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.415676, 53.359730, 58.144207>,  <51.000950, 53.394566, 57.538719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.415676, 53.359730, 58.144207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.531586, 53.081200, 57.881554>,  <51.601131, 52.914082, 57.723961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.531586, 53.081200, 57.881554>,  <51.415676, 53.359730, 58.144207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.531586, 53.081200, 57.881554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883417, 0.458559, -0.096425,
		0.368247, -0.552137, 0.748024,
		0.289773, -0.696325, -0.656630,
		51.618519, 52.872303, 57.684566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.036404, 53.070034, 58.411152>,  <51.415676, 53.359730, 58.144207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.036404, 53.070034, 58.411152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.004906, 53.081207, 58.012550>,  <51.986008, 53.087910, 57.773388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.004906, 53.081207, 58.012550>,  <52.036404, 53.070034, 58.411152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.004906, 53.081207, 58.012550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823896, 0.564595, -0.049278,
		0.561245, -0.824895, -0.067469,
		-0.078742, 0.027931, -0.996504,
		51.981285, 53.089588, 57.713600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.473877, 52.589470, 57.947407>,  <52.036404, 53.070034, 58.411152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.473877, 52.589470, 57.947407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.851349, 52.608139, 58.078423>,  <53.077831, 52.619339, 58.157032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.851349, 52.608139, 58.078423>,  <52.473877, 52.589470, 57.947407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.851349, 52.608139, 58.078423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, 0.938695, -0.337423,
		-0.323211, 0.341576, 0.882531,
		0.943683, 0.046670, 0.327544,
		53.134453, 52.622139, 58.176685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.671368, 53.311745, 58.115551>,  <52.473877, 52.589470, 57.947407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.671368, 53.311745, 58.115551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.991188, 53.101139, 57.999962>,  <53.183079, 52.974773, 57.930607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.991188, 53.101139, 57.999962>,  <52.671368, 53.311745, 58.115551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.991188, 53.101139, 57.999962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216570, 0.701509, -0.678957,
		0.560199, 0.480275, 0.674917,
		0.799546, -0.526518, -0.288971,
		53.231052, 52.943184, 57.913269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.309143, 53.700253, 58.064926>,  <52.671368, 53.311745, 58.115551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.309143, 53.700253, 58.064926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299675, 53.418182, 57.781471>,  <53.293995, 53.248940, 57.611397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299675, 53.418182, 57.781471>,  <53.309143, 53.700253, 58.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.299675, 53.418182, 57.781471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171376, 0.695484, -0.697805,
		0.984921, -0.137959, 0.104390,
		-0.023667, -0.705173, -0.708640,
		53.292576, 53.206631, 57.568878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.740372, 53.959412, 57.521439>,  <53.309143, 53.700253, 58.064926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.740372, 53.959412, 57.521439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.487404, 53.691803, 57.365250>,  <53.335625, 53.531239, 57.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.487404, 53.691803, 57.365250>,  <53.740372, 53.959412, 57.521439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.487404, 53.691803, 57.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068393, 0.550327, -0.832144,
		0.771604, -0.499556, -0.393791,
		-0.632416, -0.669018, -0.390468,
		53.297680, 53.491096, 57.248108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.325901, 53.514744, 57.496876>,  <53.740372, 53.959412, 57.521439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.325901, 53.514744, 57.496876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418190, 53.623260, 57.123100>,  <54.473564, 53.688370, 56.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418190, 53.623260, 57.123100>,  <54.325901, 53.514744, 57.496876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.418190, 53.623260, 57.123100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362413, 0.867288, 0.341275,
		0.903009, -0.417391, 0.101783,
		0.230720, 0.271287, -0.934437,
		54.487408, 53.704647, 56.842770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.062592, 53.571236, 57.071091>,  <54.325901, 53.514744, 57.496876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.062592, 53.571236, 57.071091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.814331, 53.857502, 56.942963>,  <54.665375, 54.029263, 56.866085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.814331, 53.857502, 56.942963>,  <55.062592, 53.571236, 57.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.814331, 53.857502, 56.942963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541894, 0.686781, 0.484440,
		0.566690, 0.127090, -0.814071,
		-0.620656, 0.715668, -0.320322,
		54.628136, 54.072201, 56.846867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.384235, 54.095760, 56.645786>,  <55.062592, 53.571236, 57.071091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.384235, 54.095760, 56.645786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070244, 54.268272, 56.823692>,  <54.881851, 54.371780, 56.930435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070244, 54.268272, 56.823692>,  <55.384235, 54.095760, 56.645786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.070244, 54.268272, 56.823692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598392, 0.713729, 0.364030,
		-0.160444, 0.551898, -0.818331,
		-0.784974, 0.431277, 0.444765,
		54.834751, 54.397655, 56.957123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.508259, 54.798325, 56.513351>,  <55.384235, 54.095760, 56.645786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.508259, 54.798325, 56.513351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.305733, 54.741852, 56.853638>,  <55.184216, 54.707966, 57.057808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.305733, 54.741852, 56.853638>,  <55.508259, 54.798325, 56.513351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.305733, 54.741852, 56.853638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624614, 0.620121, 0.474666,
		-0.594560, 0.771698, -0.225791,
		-0.506317, -0.141185, 0.850712,
		55.153839, 54.699497, 57.108852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.990150, 55.241817, 56.424210>,  <55.508259, 54.798325, 56.513351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.990150, 55.241817, 56.424210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.762459, 55.470932, 56.660141>,  <55.625843, 55.608398, 56.801701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.762459, 55.470932, 56.660141>,  <55.990150, 55.241817, 56.424210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.762459, 55.470932, 56.660141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565974, -0.247373, 0.786435,
		0.596364, 0.781490, -0.183368,
		-0.569230, 0.572783, 0.589827,
		55.591690, 55.642765, 56.837090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.443256, 55.567425, 56.843723>,  <55.990150, 55.241817, 56.424210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.443256, 55.567425, 56.843723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.088066, 55.592709, 57.025932>,  <55.874950, 55.607880, 57.135258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.088066, 55.592709, 57.025932>,  <56.443256, 55.567425, 56.843723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.088066, 55.592709, 57.025932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404437, -0.364170, 0.838935,
		0.218917, 0.929185, 0.297809,
		-0.887979, 0.063212, 0.455519,
		55.821671, 55.611671, 57.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.458393, 55.905823, 57.444557>,  <56.443256, 55.567425, 56.843723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.458393, 55.905823, 57.444557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.205902, 55.605633, 57.522888>,  <56.054409, 55.425518, 57.569885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.205902, 55.605633, 57.522888>,  <56.458393, 55.905823, 57.444557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.205902, 55.605633, 57.522888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666805, -0.396142, 0.631223,
		-0.396142, 0.529019, 0.750473,
		-0.631223, -0.750473, 0.195824,
		56.016537, 55.380489, 57.581635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.973354, 56.530720, 57.636703>,  <56.458393, 55.905823, 57.444557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.973354, 56.530720, 57.636703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.674797, 56.570084, 57.373428>,  <56.495663, 56.593700, 57.215466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.674797, 56.570084, 57.373428>,  <56.973354, 56.530720, 57.636703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.674797, 56.570084, 57.373428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131389, 0.991331, -0.000783,
		0.652401, -0.087063, -0.752857,
		-0.746398, 0.098406, -0.658184,
		56.450878, 56.599606, 57.175972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.159698, 57.089603, 57.274452>,  <56.973354, 56.530720, 57.636703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.159698, 57.089603, 57.274452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.766815, 57.021378, 57.243034>,  <56.531086, 56.980442, 57.224182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.766815, 57.021378, 57.243034>,  <57.159698, 57.089603, 57.274452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.766815, 57.021378, 57.243034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164346, 0.983169, -0.079805,
		0.090833, -0.065477, -0.993711,
		-0.982212, -0.170561, -0.078544,
		56.472153, 56.970211, 57.219471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.742508, 56.822918, 56.986237>,  <57.159698, 57.089603, 57.274452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.742508, 56.822918, 56.986237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.481964, 56.533192, 56.895813>,  <57.325638, 56.359356, 56.841560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.481964, 56.533192, 56.895813>,  <57.742508, 56.822918, 56.986237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.481964, 56.533192, 56.895813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258422, -0.068348, 0.963611,
		-0.713405, 0.686077, -0.142659,
		-0.651361, -0.724311, -0.226057,
		57.286556, 56.315899, 56.827995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.613556, 57.608826, 56.901115>,  <57.742508, 56.822918, 56.986237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.613556, 57.608826, 56.901115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.817924, 57.401928, 57.175758>,  <57.940544, 57.277790, 57.340542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.817924, 57.401928, 57.175758>,  <57.613556, 57.608826, 56.901115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.817924, 57.401928, 57.175758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829348, 0.506717, -0.235412,
		-0.226149, 0.689709, 0.687864,
		0.510918, -0.517241, 0.686603,
		57.971199, 57.246754, 57.381741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.916153, 57.921379, 57.395149>,  <57.613556, 57.608826, 56.901115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.916153, 57.921379, 57.395149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.168022, 57.612080, 57.365204>,  <58.319141, 57.426502, 57.347237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.168022, 57.612080, 57.365204>,  <57.916153, 57.921379, 57.395149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.168022, 57.612080, 57.365204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776431, 0.629603, 0.027473,
		0.025889, -0.075423, 0.996815,
		0.629671, -0.773247, -0.074861,
		58.356922, 57.380104, 57.342747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.583355, 57.994743, 57.780285>,  <57.916153, 57.921379, 57.395149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.583355, 57.994743, 57.780285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.666122, 57.738468, 57.484528>,  <58.715782, 57.584702, 57.307076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.666122, 57.738468, 57.484528>,  <58.583355, 57.994743, 57.780285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.666122, 57.738468, 57.484528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856703, 0.483636, -0.179321,
		0.472485, -0.596333, 0.648956,
		0.206923, -0.640690, -0.739391,
		58.728199, 57.546261, 57.262711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.256954, 57.745865, 57.917889>,  <58.583355, 57.994743, 57.780285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.256954, 57.745865, 57.917889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.175468, 57.711758, 57.527763>,  <59.126575, 57.691292, 57.293690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.175468, 57.711758, 57.527763>,  <59.256954, 57.745865, 57.917889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.175468, 57.711758, 57.527763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885141, 0.409655, -0.220700,
		0.418360, -0.908246, -0.007976,
		-0.203717, -0.085273, -0.975309,
		59.114353, 57.686176, 57.235172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.808628, 57.403976, 57.464554>,  <59.256954, 57.745865, 57.917889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.808628, 57.403976, 57.464554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.585518, 57.631557, 57.222832>,  <59.451653, 57.768105, 57.077797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.585518, 57.631557, 57.222832>,  <59.808628, 57.403976, 57.464554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.585518, 57.631557, 57.222832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828440, 0.426168, -0.363412,
		0.050771, -0.703331, -0.709047,
		-0.557772, 0.568952, -0.604305,
		59.418186, 57.802242, 57.041542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.985477, 57.268032, 56.756702>,  <59.808628, 57.403976, 57.464554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.985477, 57.268032, 56.756702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.850243, 57.643566, 56.782890>,  <59.769100, 57.868885, 56.798603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.850243, 57.643566, 56.782890>,  <59.985477, 57.268032, 56.756702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.850243, 57.643566, 56.782890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838269, 0.332034, -0.432503,
		-0.427785, -0.091348, -0.899253,
		-0.338091, 0.938834, 0.065465,
		59.748814, 57.925217, 56.802528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.655834, 57.602764, 56.669407>,  <59.985477, 57.268032, 56.756702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.655834, 57.602764, 56.669407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499069, 57.841919, 56.389709>,  <60.405010, 57.985413, 56.221889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499069, 57.841919, 56.389709>,  <60.655834, 57.602764, 56.669407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.499069, 57.841919, 56.389709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909161, 0.368035, -0.194877,
		0.140832, -0.712098, -0.687810,
		-0.391910, 0.597885, -0.699242,
		60.381496, 58.021286, 56.179935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.042210, 57.905697, 57.183071>,  <60.655834, 57.602764, 56.669407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.042210, 57.905697, 57.183071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.921127, 57.680645, 57.490791>,  <60.848480, 57.545616, 57.675423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.921127, 57.680645, 57.490791>,  <61.042210, 57.905697, 57.183071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.921127, 57.680645, 57.490791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163824, 0.764439, 0.623533,
		-0.938900, 0.314775, -0.139224,
		-0.302701, -0.562627, 0.769300,
		60.830318, 57.511856, 57.721581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.916080, 58.550179, 57.531357>,  <61.042210, 57.905697, 57.183071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.916080, 58.550179, 57.531357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.713623, 58.693306, 57.845245>,  <60.592148, 58.779182, 58.033577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.713623, 58.693306, 57.845245>,  <60.916080, 58.550179, 57.531357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.713623, 58.693306, 57.845245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700104, -0.360886, 0.616129,
		0.503657, 0.861235, -0.067850,
		-0.506146, 0.357820, 0.784717,
		60.561779, 58.800652, 58.080662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.659470, 58.703476, 57.314541>,  <60.916080, 58.550179, 57.531357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.659470, 58.703476, 57.314541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.684319, 58.501198, 56.970352>,  <61.699226, 58.379829, 56.763840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.684319, 58.501198, 56.970352>,  <61.659470, 58.703476, 57.314541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.684319, 58.501198, 56.970352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791645, 0.550000, -0.266080,
		0.607815, -0.664658, 0.434500,
		0.062123, -0.505697, -0.860472,
		61.702957, 58.349487, 56.712212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.373787, 58.533566, 57.189434>,  <61.659470, 58.703476, 57.314541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.373787, 58.533566, 57.189434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.191025, 58.552746, 56.834145>,  <62.081367, 58.564255, 56.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.191025, 58.552746, 56.834145>,  <62.373787, 58.533566, 57.189434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.191025, 58.552746, 56.834145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815616, 0.421073, -0.396823,
		0.354979, -0.905758, -0.231499,
		-0.456904, 0.047950, -0.888223,
		62.053955, 58.567131, 56.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.731869, 58.094402, 56.601665>,  <62.373787, 58.533566, 57.189434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.731869, 58.094402, 56.601665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.570686, 58.443138, 56.490295>,  <62.473976, 58.652382, 56.423473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.570686, 58.443138, 56.490295>,  <62.731869, 58.094402, 56.601665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.570686, 58.443138, 56.490295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855995, 0.251360, -0.451764,
		-0.323883, -0.420368, -0.847579,
		-0.402955, 0.871842, -0.278421,
		62.449799, 58.704689, 56.406769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.340405, 58.341652, 56.113380>,  <62.731869, 58.094402, 56.601665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.340405, 58.341652, 56.113380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163460, 58.656109, 56.286026>,  <63.057293, 58.844784, 56.389614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163460, 58.656109, 56.286026>,  <63.340405, 58.341652, 56.113380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.163460, 58.656109, 56.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764854, 0.582004, -0.276171,
		-0.468312, 0.207956, -0.858742,
		-0.442360, 0.786146, 0.431615,
		63.030750, 58.891953, 56.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.244911, 58.924515, 55.726578>,  <63.340405, 58.341652, 56.113380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.244911, 58.924515, 55.726578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.325882, 58.998978, 56.111153>,  <63.374466, 59.043655, 56.341900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.325882, 58.998978, 56.111153>,  <63.244911, 58.924515, 55.726578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.325882, 58.998978, 56.111153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930046, 0.270884, -0.248266,
		-0.306655, 0.944441, -0.118297,
		0.202428, 0.186154, 0.961442,
		63.386612, 59.054825, 56.399586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.501598, 59.633167, 55.725758>,  <63.244911, 58.924515, 55.726578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.501598, 59.633167, 55.725758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.610725, 59.447380, 56.062767>,  <63.676201, 59.335907, 56.264973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.610725, 59.447380, 56.062767>,  <63.501598, 59.633167, 55.725758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.610725, 59.447380, 56.062767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933968, 0.337970, -0.116107,
		-0.230817, 0.818561, 0.526005,
		0.272814, -0.464472, 0.842519,
		63.692570, 59.308037, 56.315521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.049713, 60.081841, 56.088699>,  <63.501598, 59.633167, 55.725758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.049713, 60.081841, 56.088699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.064606, 59.700569, 56.208748>,  <64.073540, 59.471806, 56.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.064606, 59.700569, 56.208748>,  <64.049713, 60.081841, 56.088699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.064606, 59.700569, 56.208748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968054, 0.108924, 0.225849,
		-0.247964, 0.282121, 0.926780,
		0.037232, -0.953175, 0.300117,
		64.075775, 59.414616, 56.298782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.450989, 59.987473, 56.671753>,  <64.049713, 60.081841, 56.088699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.450989, 59.987473, 56.671753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.454903, 59.630234, 56.491852>,  <64.457253, 59.415890, 56.383911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.454903, 59.630234, 56.491852>,  <64.450989, 59.987473, 56.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.454903, 59.630234, 56.491852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980326, -0.080112, 0.180395,
		-0.197141, -0.442667, 0.874746,
		0.009777, -0.893100, -0.449752,
		64.457832, 59.362305, 56.356926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.744568, 59.509483, 57.092010>,  <64.450989, 59.987473, 56.671753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.744568, 59.509483, 57.092010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.812279, 59.378616, 56.720139>,  <64.852905, 59.300095, 56.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.812279, 59.378616, 56.720139>,  <64.744568, 59.509483, 57.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.812279, 59.378616, 56.720139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977054, -0.068014, 0.201843,
		-0.129268, -0.942515, 0.308147,
		0.169282, -0.327168, -0.929680,
		64.863060, 59.280464, 56.441235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.917320, 58.776646, 56.950962>,  <64.744568, 59.509483, 57.092010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.917320, 58.776646, 56.950962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.111420, 59.007721, 56.688416>,  <65.227882, 59.146366, 56.530888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.111420, 59.007721, 56.688416>,  <64.917320, 58.776646, 56.950962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.111420, 59.007721, 56.688416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859360, -0.176555, 0.479926,
		0.161360, -0.796938, -0.582111,
		0.485246, 0.577683, -0.656367,
		65.256996, 59.181026, 56.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.503395, 58.400341, 56.588806>,  <64.917320, 58.776646, 56.950962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.503395, 58.400341, 56.588806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.564278, 58.794853, 56.614357>,  <65.600807, 59.031563, 56.629688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.564278, 58.794853, 56.614357>,  <65.503395, 58.400341, 56.588806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.564278, 58.794853, 56.614357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943667, -0.164226, 0.287267,
		0.293817, 0.016556, -0.955718,
		0.152197, 0.986284, 0.063876,
		65.609940, 59.090740, 56.633518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.153969, 58.658176, 56.276733>,  <65.503395, 58.400341, 56.588806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.153969, 58.658176, 56.276733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.043839, 58.832840, 56.619316>,  <65.977760, 58.937637, 56.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.043839, 58.832840, 56.619316>,  <66.153969, 58.658176, 56.276733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.043839, 58.832840, 56.619316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857985, -0.290255, 0.423809,
		0.433651, 0.851516, -0.294731,
		-0.275333, 0.436660, 0.856458,
		65.961235, 58.963837, 56.876255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.690407, 59.218338, 56.454708>,  <66.153969, 58.658176, 56.276733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.690407, 59.218338, 56.454708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487778, 59.047302, 56.754189>,  <66.366203, 58.944679, 56.933876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487778, 59.047302, 56.754189>,  <66.690407, 59.218338, 56.454708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.487778, 59.047302, 56.754189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857779, -0.162095, 0.487792,
		-0.087216, 0.889319, 0.448893,
		-0.506566, -0.427594, 0.748702,
		66.335808, 58.919025, 56.978798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.810036, 59.584797, 57.159523>,  <66.690407, 59.218338, 56.454708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.810036, 59.584797, 57.159523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.750191, 59.189438, 57.149055>,  <66.714287, 58.952221, 57.142776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.750191, 59.189438, 57.149055>,  <66.810036, 59.584797, 57.159523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.750191, 59.189438, 57.149055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928094, -0.149512, 0.341010,
		-0.340966, 0.026734, 0.939695,
		-0.149613, -0.988398, -0.026167,
		66.705307, 58.892918, 57.141205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.064445, 59.216770, 57.749546>,  <66.810036, 59.584797, 57.159523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.064445, 59.216770, 57.749546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092087, 58.938931, 57.463120>,  <67.108673, 58.772224, 57.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092087, 58.938931, 57.463120>,  <67.064445, 59.216770, 57.749546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.092087, 58.938931, 57.463120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855830, -0.327555, 0.400329,
		-0.512621, -0.640496, 0.571826,
		0.069105, -0.694603, -0.716067,
		67.112816, 58.730549, 57.248299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.172653, 58.577843, 58.100285>,  <67.064445, 59.216770, 57.749546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.172653, 58.577843, 58.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.306648, 58.601974, 57.724167>,  <67.387047, 58.616451, 57.498497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.306648, 58.601974, 57.724167>,  <67.172653, 58.577843, 58.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.306648, 58.601974, 57.724167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900989, -0.312503, 0.300934,
		-0.275689, -0.947999, -0.159037,
		0.334985, 0.060327, -0.940290,
		67.407143, 58.620071, 57.442081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.663986, 58.140713, 58.068111>,  <67.172653, 58.577843, 58.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.663986, 58.140713, 58.068111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.748581, 58.345112, 57.734848>,  <67.799339, 58.467751, 57.534889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.748581, 58.345112, 57.734848>,  <67.663986, 58.140713, 58.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.748581, 58.345112, 57.734848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976179, -0.152653, 0.154176,
		-0.048400, -0.845917, -0.531114,
		0.211496, 0.511000, -0.833155,
		67.812027, 58.498413, 57.484901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.910789, 57.699173, 57.537842>,  <67.663986, 58.140713, 58.068111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.910789, 57.699173, 57.537842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.054520, 58.071503, 57.511147>,  <68.140755, 58.294899, 57.495129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.054520, 58.071503, 57.511147>,  <67.910789, 57.699173, 57.537842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.054520, 58.071503, 57.511147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920818, -0.342019, 0.187393,
		0.151604, -0.128789, -0.980015,
		0.359318, 0.930826, -0.066740,
		68.162315, 58.350750, 57.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.376709, 57.770336, 57.009308>,  <67.910789, 57.699173, 57.537842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.376709, 57.770336, 57.009308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.451782, 58.026917, 57.306847>,  <68.496826, 58.180866, 57.485371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.451782, 58.026917, 57.306847>,  <68.376709, 57.770336, 57.009308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.451782, 58.026917, 57.306847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896624, -0.421100, 0.136893,
		0.401045, 0.641258, -0.654180,
		0.187691, 0.641453, 0.743848,
		68.508087, 58.219353, 57.530003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.160835, 57.890629, 57.025673>,  <68.376709, 57.770336, 57.009308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.160835, 57.890629, 57.025673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.045166, 58.040100, 57.378204>,  <68.975761, 58.129784, 57.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.045166, 58.040100, 57.378204>,  <69.160835, 57.890629, 57.025673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.045166, 58.040100, 57.378204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943743, -0.042984, 0.327873,
		0.160403, 0.926561, -0.340228,
		-0.289170, 0.373680, 0.881331,
		68.958412, 58.152203, 57.642605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.655190, 58.466324, 57.117645>,  <69.160835, 57.890629, 57.025673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.655190, 58.466324, 57.117645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.509216, 58.288849, 57.445053>,  <69.421631, 58.182365, 57.641499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.509216, 58.288849, 57.445053>,  <69.655190, 58.466324, 57.117645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.509216, 58.288849, 57.445053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921129, -0.044129, 0.386749,
		-0.135473, 0.895097, 0.424793,
		-0.364924, -0.443683, 0.818521,
		69.399742, 58.155743, 57.690609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.907211, 58.832195, 57.673008>,  <69.655190, 58.466324, 57.117645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.907211, 58.832195, 57.673008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789627, 58.481155, 57.824486>,  <69.719078, 58.270531, 57.915371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789627, 58.481155, 57.824486>,  <69.907211, 58.832195, 57.673008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.789627, 58.481155, 57.824486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864598, -0.075225, 0.496802,
		-0.407505, 0.473457, 0.780883,
		-0.293956, -0.877599, 0.378695,
		69.701439, 58.217876, 57.938095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.932289, 58.710876, 58.446812>,  <69.907211, 58.832195, 57.673008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.932289, 58.710876, 58.446812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.993462, 58.336960, 58.318573>,  <70.030167, 58.112610, 58.241631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.993462, 58.336960, 58.318573>,  <69.932289, 58.710876, 58.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.993462, 58.336960, 58.318573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740111, -0.106634, 0.663977,
		-0.654865, -0.338819, 0.675539,
		0.152933, -0.934789, -0.320594,
		70.039345, 58.056522, 58.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.769402, 58.182045, 58.929012>,  <69.932289, 58.710876, 58.446812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.769402, 58.182045, 58.929012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.071144, 58.126122, 58.672455>,  <70.252190, 58.092567, 58.518520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.071144, 58.126122, 58.672455>,  <69.769402, 58.182045, 58.929012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.071144, 58.126122, 58.672455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656311, 0.181076, 0.732439,
		0.013739, -0.973481, 0.228356,
		0.754365, -0.139810, -0.641394,
		70.297455, 58.084179, 58.480038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.229889, 57.691536, 59.244064>,  <69.769402, 58.182045, 58.929012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.229889, 57.691536, 59.244064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.431580, 57.939827, 59.003914>,  <70.552597, 58.088802, 58.859825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.431580, 57.939827, 59.003914>,  <70.229889, 57.691536, 59.244064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.431580, 57.939827, 59.003914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796768, -0.066288, 0.600639,
		0.333037, -0.781218, -0.528001,
		0.504230, 0.620729, -0.600373,
		70.582848, 58.126045, 58.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.884171, 57.334965, 59.158863>,  <70.229889, 57.691536, 59.244064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.884171, 57.334965, 59.158863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.923393, 57.722042, 59.065948>,  <70.946930, 57.954288, 59.010201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.923393, 57.722042, 59.065948>,  <70.884171, 57.334965, 59.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.923393, 57.722042, 59.065948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908768, 0.008060, 0.417225,
		0.405617, -0.252011, -0.878616,
		0.098063, 0.967691, -0.232289,
		70.952812, 58.012348, 58.996262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.533478, 57.352684, 58.874695>,  <70.884171, 57.334965, 59.158863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.533478, 57.352684, 58.874695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.411041, 57.699715, 59.031471>,  <71.337578, 57.907932, 59.125538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.411041, 57.699715, 59.031471>,  <71.533478, 57.352684, 58.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.411041, 57.699715, 59.031471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868173, 0.085456, 0.488849,
		0.390620, 0.489906, -0.779364,
		-0.306091, 0.867577, 0.391942,
		71.319214, 57.959988, 59.149055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.020302, 57.892429, 58.611496>,  <71.533478, 57.352684, 58.874695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.020302, 57.892429, 58.611496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.841187, 57.965733, 58.961555>,  <71.733719, 58.009716, 59.171593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.841187, 57.965733, 58.961555>,  <72.020302, 57.892429, 58.611496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.841187, 57.965733, 58.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889608, 0.189689, 0.415471,
		-0.089867, 0.964590, -0.247973,
		-0.447797, 0.183261, 0.875153,
		71.706848, 58.020710, 59.224102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.271255, 58.660561, 58.615776>,  <72.020302, 57.892429, 58.611496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.271255, 58.660561, 58.615776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.569550, 58.903736, 58.724815>,  <72.748528, 59.049641, 58.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.569550, 58.903736, 58.724815>,  <72.271255, 58.660561, 58.615776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.569550, 58.903736, 58.724815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098389, -0.304174, 0.947522,
		0.658948, -0.733412, -0.167017,
		0.745726, 0.607935, 0.272595,
		72.793266, 59.086117, 58.806595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.892815, 58.257446, 58.913967>,  <72.271255, 58.660561, 58.615776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.892815, 58.257446, 58.913967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.795433, 58.619781, 59.052643>,  <72.737007, 58.837181, 59.135849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.795433, 58.619781, 59.052643>,  <72.892815, 58.257446, 58.913967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.795433, 58.619781, 59.052643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041132, -0.366764, 0.929404,
		0.969040, 0.212005, 0.126548,
		-0.243452, 0.905835, 0.346689,
		72.722397, 58.891533, 59.156651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.278313, 58.479839, 59.430508>,  <72.892815, 58.257446, 58.913967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.278313, 58.479839, 59.430508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.924271, 58.659172, 59.480469>,  <72.711845, 58.766769, 59.510445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.924271, 58.659172, 59.480469>,  <73.278313, 58.479839, 59.430508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.924271, 58.659172, 59.480469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035902, -0.333352, 0.942119,
		0.464014, 0.829385, 0.311146,
		-0.885100, 0.448327, 0.124903,
		72.658737, 58.793671, 59.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.574097, 58.167126, 60.128555>,  <73.278313, 58.479839, 59.430508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.574097, 58.167126, 60.128555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.503471, 58.440018, 60.412354>,  <73.461098, 58.603752, 60.582634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.503471, 58.440018, 60.412354>,  <73.574097, 58.167126, 60.128555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.503471, 58.440018, 60.412354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861275, -0.456024, 0.224159,
		0.476477, -0.571495, 0.668105,
		-0.176566, 0.682229, 0.709499,
		73.450500, 58.644688, 60.625202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.436073, 57.834572, 60.831570>,  <73.574097, 58.167126, 60.128555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.436073, 57.834572, 60.831570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.229172, 58.176880, 60.827286>,  <73.105034, 58.382263, 60.824715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.229172, 58.176880, 60.827286>,  <73.436073, 57.834572, 60.831570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.229172, 58.176880, 60.827286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795999, -0.476449, 0.373338,
		0.314389, 0.201632, 0.927634,
		-0.517247, 0.855769, -0.010708,
		73.073997, 58.433609, 60.824074>
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
