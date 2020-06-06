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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.356903, 15.162008, 15.344328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239508, 15.051854, 14.978152>,  <4.169072, 14.985762, 14.758447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239508, 15.051854, 14.978152>,  <4.356903, 15.162008, 15.344328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239508, 15.051854, 14.978152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937157, 0.106129, -0.332375,
		0.188686, -0.955457, 0.226932,
		-0.293486, -0.275386, -0.915439,
		4.151463, 14.969238, 14.703521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.647438, 14.463782, 15.141404>,  <4.356903, 15.162008, 15.344328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.647438, 14.463782, 15.141404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575431, 14.693582, 14.822019>,  <4.532227, 14.831461, 14.630387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575431, 14.693582, 14.822019>,  <4.647438, 14.463782, 15.141404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.575431, 14.693582, 14.822019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981780, 0.054729, -0.181970,
		-0.060842, -0.816674, -0.573883,
		-0.180018, 0.574498, -0.798464,
		4.521425, 14.865931, 14.582479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348799, 14.579385, 15.592517>,  <4.647438, 14.463782, 15.141404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348799, 14.579385, 15.592517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.196249, 14.761550, 15.270734>,  <5.104719, 14.870850, 15.077664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.196249, 14.761550, 15.270734>,  <5.348799, 14.579385, 15.592517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.196249, 14.761550, 15.270734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901739, -0.008312, -0.432200,
		-0.203517, -0.890241, -0.407495,
		-0.381375, 0.455414, -0.804457,
		5.081836, 14.898174, 15.029397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.800099, 14.353177, 16.131901>,  <5.348799, 14.579385, 15.592517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.800099, 14.353177, 16.131901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.124565, 14.552430, 16.254456>,  <6.319245, 14.671982, 16.327990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.124565, 14.552430, 16.254456>,  <5.800099, 14.353177, 16.131901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.124565, 14.552430, 16.254456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433203, -0.159855, -0.887007,
		-0.392871, 0.852238, -0.345462,
		0.811165, 0.498134, 0.306389,
		6.367915, 14.701870, 16.346373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.035009, 14.989449, 15.662046>,  <5.800099, 14.353177, 16.131901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.035009, 14.989449, 15.662046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340620, 14.825504, 15.861357>,  <6.523986, 14.727138, 15.980943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340620, 14.825504, 15.861357>,  <6.035009, 14.989449, 15.662046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.340620, 14.825504, 15.861357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469635, -0.176254, -0.865088,
		0.442390, 0.894957, 0.057823,
		0.764025, -0.409862, 0.498276,
		6.569827, 14.702546, 16.010839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.774252, 15.215474, 15.317574>,  <6.035009, 14.989449, 15.662046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.774252, 15.215474, 15.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818305, 14.882416, 15.534672>,  <6.844736, 14.682581, 15.664931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818305, 14.882416, 15.534672>,  <6.774252, 15.215474, 15.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818305, 14.882416, 15.534672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529113, -0.413145, -0.741182,
		0.841374, 0.368801, 0.395063,
		0.110130, -0.832645, 0.542747,
		6.851344, 14.632623, 15.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.270640, 14.905833, 14.958851>,  <6.774252, 15.215474, 15.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.270640, 14.905833, 14.958851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165596, 14.615718, 15.213408>,  <7.102571, 14.441648, 15.366141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165596, 14.615718, 15.213408>,  <7.270640, 14.905833, 14.958851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165596, 14.615718, 15.213408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628365, -0.629064, -0.457641,
		0.732252, 0.279705, 0.620944,
		-0.262609, -0.725289, 0.636391,
		7.086814, 14.398131, 15.404325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.875574, 14.629391, 15.126713>,  <7.270640, 14.905833, 14.958851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.875574, 14.629391, 15.126713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.582088, 14.363191, 15.181519>,  <7.405997, 14.203470, 15.214402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.582088, 14.363191, 15.181519>,  <7.875574, 14.629391, 15.126713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.582088, 14.363191, 15.181519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354400, -0.546885, -0.758496,
		0.579711, -0.507962, 0.637111,
		-0.733714, -0.665501, 0.137014,
		7.361974, 14.163541, 15.222623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.202651, 14.065649, 15.030414>,  <7.875574, 14.629391, 15.126713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.202651, 14.065649, 15.030414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824711, 13.958879, 14.954508>,  <7.597947, 13.894817, 14.908964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824711, 13.958879, 14.954508>,  <8.202651, 14.065649, 15.030414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.824711, 13.958879, 14.954508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321126, -0.641281, -0.696877,
		0.064322, -0.719382, 0.691630,
		-0.944849, -0.266925, -0.189764,
		7.541256, 13.878802, 14.897578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.323508, 13.457322, 14.872998>,  <8.202651, 14.065649, 15.030414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.323508, 13.457322, 14.872998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.944818, 13.508191, 14.754653>,  <7.717603, 13.538713, 14.683645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.944818, 13.508191, 14.754653>,  <8.323508, 13.457322, 14.872998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.944818, 13.508191, 14.754653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225115, -0.395627, -0.890395,
		-0.230283, -0.909564, 0.345923,
		-0.946727, 0.127170, -0.295863,
		7.660800, 13.546343, 14.665894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.969587, 12.768703, 14.750581>,  <8.323508, 13.457322, 14.872998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.969587, 12.768703, 14.750581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.777644, 13.049037, 14.539462>,  <7.662478, 13.217237, 14.412791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.777644, 13.049037, 14.539462>,  <7.969587, 12.768703, 14.750581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.777644, 13.049037, 14.539462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138562, -0.533495, -0.834376,
		-0.866335, -0.473515, 0.158893,
		-0.479859, 0.700833, -0.527796,
		7.633687, 13.259287, 14.381124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598693, 12.349473, 14.231830>,  <7.969587, 12.768703, 14.750581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598693, 12.349473, 14.231830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.564852, 12.719713, 14.084258>,  <7.544548, 12.941857, 13.995715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.564852, 12.719713, 14.084258>,  <7.598693, 12.349473, 14.231830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.564852, 12.719713, 14.084258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166921, -0.351858, -0.921050,
		-0.982334, -0.139504, -0.124734,
		-0.084601, 0.925600, -0.368928,
		7.539472, 12.997394, 13.973579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.042114, 12.334491, 13.682163>,  <7.598693, 12.349473, 14.231830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.042114, 12.334491, 13.682163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.249809, 12.668094, 13.607517>,  <7.374426, 12.868256, 13.562730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.249809, 12.668094, 13.607517>,  <7.042114, 12.334491, 13.682163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.249809, 12.668094, 13.607517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042581, -0.243332, -0.969008,
		-0.853568, 0.495200, -0.161860,
		0.519238, 0.834007, -0.186614,
		7.405581, 12.918296, 13.551533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.663177, 12.649459, 13.213018>,  <7.042114, 12.334491, 13.682163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.663177, 12.649459, 13.213018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.034106, 12.798318, 13.197123>,  <7.256663, 12.887633, 13.187585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.034106, 12.798318, 13.197123>,  <6.663177, 12.649459, 13.213018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.034106, 12.798318, 13.197123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058809, -0.249751, -0.966523,
		-0.369615, 0.893941, -0.253485,
		0.927322, 0.372149, -0.039740,
		7.312303, 12.909963, 13.185201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.661022, 13.141450, 12.502088>,  <6.663177, 12.649459, 13.213018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.661022, 13.141450, 12.502088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.023056, 13.020571, 12.621754>,  <7.240276, 12.948044, 12.693553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.023056, 13.020571, 12.621754>,  <6.661022, 13.141450, 12.502088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.023056, 13.020571, 12.621754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186698, -0.349697, -0.918072,
		0.382056, 0.886786, -0.260085,
		0.905084, -0.302197, 0.299164,
		7.294581, 12.929912, 12.711503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.178673, 13.487127, 12.058972>,  <6.661022, 13.141450, 12.502088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.178673, 13.487127, 12.058972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.360029, 13.159064, 12.198562>,  <7.468842, 12.962227, 12.282315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.360029, 13.159064, 12.198562>,  <7.178673, 13.487127, 12.058972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.360029, 13.159064, 12.198562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190411, -0.293364, -0.936846,
		0.870737, 0.491203, 0.023159,
		0.453388, -0.820157, 0.348973,
		7.496045, 12.913017, 12.303254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.756812, 13.387207, 11.575393>,  <7.178673, 13.487127, 12.058972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.756812, 13.387207, 11.575393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.712760, 13.042493, 11.773462>,  <7.686329, 12.835665, 11.892304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.712760, 13.042493, 11.773462>,  <7.756812, 13.387207, 11.575393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.712760, 13.042493, 11.773462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227143, -0.506842, -0.831575,
		0.967614, 0.020895, 0.251567,
		-0.110128, -0.861786, 0.495174,
		7.679721, 12.783957, 11.922014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.253608, 13.022923, 11.360817>,  <7.756812, 13.387207, 11.575393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.253608, 13.022923, 11.360817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.001398, 12.748803, 11.506585>,  <7.850072, 12.584332, 11.594047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.001398, 12.748803, 11.506585>,  <8.253608, 13.022923, 11.360817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.001398, 12.748803, 11.506585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114249, -0.546343, -0.829733,
		0.767715, -0.481532, 0.422777,
		-0.630524, -0.685300, 0.364422,
		7.812241, 12.543213, 11.615911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.561671, 12.466792, 11.073680>,  <8.253608, 13.022923, 11.360817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.561671, 12.466792, 11.073680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.202373, 12.323401, 11.175385>,  <7.986794, 12.237368, 11.236407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.202373, 12.323401, 11.175385>,  <8.561671, 12.466792, 11.073680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.202373, 12.323401, 11.175385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077958, -0.699321, -0.710544,
		0.432524, -0.618421, 0.656108,
		-0.898246, -0.358476, 0.254262,
		7.932899, 12.215858, 11.251663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.604445, 11.685949, 11.077081>,  <8.561671, 12.466792, 11.073680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.604445, 11.685949, 11.077081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.215878, 11.771127, 11.035110>,  <7.982739, 11.822233, 11.009929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.215878, 11.771127, 11.035110>,  <8.604445, 11.685949, 11.077081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.215878, 11.771127, 11.035110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085561, -0.726353, -0.681976,
		-0.221435, -0.653503, 0.723809,
		-0.971414, 0.212943, -0.104926,
		7.924454, 11.835010, 11.003633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.171462, 10.988736, 11.223095>,  <8.604445, 11.685949, 11.077081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.171462, 10.988736, 11.223095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.959573, 11.249833, 11.006458>,  <7.832440, 11.406491, 10.876476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.959573, 11.249833, 11.006458>,  <8.171462, 10.988736, 11.223095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.959573, 11.249833, 11.006458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161173, -0.704373, -0.691290,
		-0.832717, -0.278901, 0.478326,
		-0.529721, 0.652743, -0.541592,
		7.800656, 11.445656, 10.843981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.651866, 10.613752, 10.899002>,  <8.171462, 10.988736, 11.223095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.651866, 10.613752, 10.899002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659797, 10.944982, 10.674894>,  <7.664555, 11.143720, 10.540430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659797, 10.944982, 10.674894>,  <7.651866, 10.613752, 10.899002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.659797, 10.944982, 10.674894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060941, -0.558336, -0.827374,
		-0.997944, 0.050547, 0.039394,
		0.019826, 0.828074, -0.560268,
		7.665744, 11.193404, 10.506814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.459913, 10.444111, 10.282459>,  <7.651866, 10.613752, 10.899002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.459913, 10.444111, 10.282459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586789, 10.810496, 10.184153>,  <7.662915, 11.030328, 10.125169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586789, 10.810496, 10.184153>,  <7.459913, 10.444111, 10.282459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.586789, 10.810496, 10.184153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031976, -0.269329, -0.962517,
		-0.947823, 0.297442, -0.114717,
		0.317190, 0.915964, -0.245766,
		7.681946, 11.085285, 10.110423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.092519, 10.530983, 9.755445>,  <7.459913, 10.444111, 10.282459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.092519, 10.530983, 9.755445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.398961, 10.788027, 9.750786>,  <7.582826, 10.942253, 9.747990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.398961, 10.788027, 9.750786>,  <7.092519, 10.530983, 9.755445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.398961, 10.788027, 9.750786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161388, -0.209885, -0.964314,
		-0.622124, 0.736885, -0.264503,
		0.766104, 0.642611, -0.011650,
		7.628792, 10.980810, 9.747291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.022161, 10.682359, 9.127964>,  <7.092519, 10.530983, 9.755445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.022161, 10.682359, 9.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.405911, 10.758873, 9.210917>,  <7.636162, 10.804782, 9.260690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.405911, 10.758873, 9.210917>,  <7.022161, 10.682359, 9.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.405911, 10.758873, 9.210917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245929, -0.206769, -0.946977,
		-0.138262, 0.959508, -0.245412,
		0.959376, 0.191285, 0.207383,
		7.693724, 10.816258, 9.273132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.239033, 11.391389, 8.887262>,  <7.022161, 10.682359, 9.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.239033, 11.391389, 8.887262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.222427, 11.656134, 8.587873>,  <7.212464, 11.814981, 8.408238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.222427, 11.656134, 8.587873>,  <7.239033, 11.391389, 8.887262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.222427, 11.656134, 8.587873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981360, 0.167699, 0.093864,
		0.187644, -0.730626, -0.656487,
		-0.041513, 0.661863, -0.748475,
		7.209973, 11.854692, 8.363330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.566840, 11.225046, 8.240461>,  <7.239033, 11.391389, 8.887262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.566840, 11.225046, 8.240461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.598692, 11.621122, 8.286389>,  <7.617803, 11.858768, 8.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.598692, 11.621122, 8.286389>,  <7.566840, 11.225046, 8.240461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.598692, 11.621122, 8.286389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991505, -0.090561, 0.093356,
		0.102839, 0.106411, -0.988990,
		0.079629, 0.990190, 0.114820,
		7.622581, 11.918180, 8.320835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209565, 11.270395, 8.177291>,  <7.566840, 11.225046, 8.240461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209565, 11.270395, 8.177291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.097685, 11.618645, 8.339170>,  <8.030557, 11.827595, 8.436298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.097685, 11.618645, 8.339170>,  <8.209565, 11.270395, 8.177291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.097685, 11.618645, 8.339170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851443, 0.030158, 0.523580,
		0.443637, 0.491023, -0.749722,
		-0.279700, 0.870624, 0.404698,
		8.013775, 11.879832, 8.460580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.674034, 11.953570, 8.063997>,  <8.209565, 11.270395, 8.177291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.674034, 11.953570, 8.063997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.468937, 11.944282, 8.407289>,  <8.345879, 11.938708, 8.613263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.468937, 11.944282, 8.407289>,  <8.674034, 11.953570, 8.063997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.468937, 11.944282, 8.407289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839714, 0.194636, 0.506949,
		-0.178814, 0.980601, -0.080299,
		-0.512744, -0.023221, 0.858227,
		8.315114, 11.937315, 8.664757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.311600, 11.957083, 7.628473>,  <8.674034, 11.953570, 8.063997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.311600, 11.957083, 7.628473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.538436, 11.635983, 7.702231>,  <9.674538, 11.443322, 7.746486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.538436, 11.635983, 7.702231>,  <9.311600, 11.957083, 7.628473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.538436, 11.635983, 7.702231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814081, 0.512234, -0.273659,
		0.125227, 0.305302, 0.943986,
		0.567090, -0.802750, 0.184395,
		9.708563, 11.395158, 7.757550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.735985, 12.111528, 8.311585>,  <9.311600, 11.957083, 7.628473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.735985, 12.111528, 8.311585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919420, 11.861923, 8.058506>,  <10.029481, 11.712160, 7.906659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919420, 11.861923, 8.058506>,  <9.735985, 12.111528, 8.311585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.919420, 11.861923, 8.058506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718983, 0.678973, -0.148523,
		0.522265, -0.386788, 0.760023,
		0.458588, -0.624012, -0.632697,
		10.056996, 11.674720, 7.868697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.342470, 12.105628, 8.451692>,  <9.735985, 12.111528, 8.311585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.342470, 12.105628, 8.451692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.387359, 12.033508, 8.060816>,  <10.414292, 11.990236, 7.826291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.387359, 12.033508, 8.060816>,  <10.342470, 12.105628, 8.451692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.387359, 12.033508, 8.060816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824426, 0.565886, -0.009732,
		0.554733, -0.804528, 0.212149,
		0.112222, -0.180300, -0.977189,
		10.421025, 11.979419, 7.767659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.079482, 12.171250, 8.142887>,  <10.342470, 12.105628, 8.451692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.079482, 12.171250, 8.142887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979322, 12.553992, 8.201852>,  <10.919227, 12.783637, 8.237231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979322, 12.553992, 8.201852>,  <11.079482, 12.171250, 8.142887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979322, 12.553992, 8.201852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390166, -0.239087, 0.889162,
		0.886042, 0.165130, 0.433199,
		-0.250400, 0.956854, 0.147413,
		10.904202, 12.841048, 8.246076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231063, 12.344993, 8.836340>,  <11.079482, 12.171250, 8.142887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231063, 12.344993, 8.836340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950665, 12.595340, 8.699580>,  <10.782426, 12.745548, 8.617524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950665, 12.595340, 8.699580>,  <11.231063, 12.344993, 8.836340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.950665, 12.595340, 8.699580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446916, -0.011917, 0.894497,
		0.555762, 0.779839, 0.288064,
		-0.700996, 0.625867, -0.341899,
		10.740366, 12.783100, 8.597011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296344, 12.920174, 9.226124>,  <11.231063, 12.344993, 8.836340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296344, 12.920174, 9.226124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924798, 12.886557, 9.081819>,  <10.701871, 12.866386, 8.995235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924798, 12.886557, 9.081819>,  <11.296344, 12.920174, 9.226124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924798, 12.886557, 9.081819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370366, 0.227732, 0.900537,
		0.006474, 0.970090, -0.242658,
		-0.928863, -0.084042, -0.360763,
		10.646139, 12.861344, 8.973590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.837704, 13.527343, 9.448545>,  <11.296344, 12.920174, 9.226124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.837704, 13.527343, 9.448545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.664866, 13.166813, 9.436479>,  <10.561164, 12.950495, 9.429239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.664866, 13.166813, 9.436479>,  <10.837704, 13.527343, 9.448545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.664866, 13.166813, 9.436479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194396, 0.060427, 0.979060,
		-0.880628, 0.428909, -0.201324,
		-0.432093, -0.901324, -0.030164,
		10.535238, 12.896416, 9.427429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.333344, 13.614214, 9.913822>,  <10.837704, 13.527343, 9.448545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.333344, 13.614214, 9.913822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.399494, 13.221137, 9.880429>,  <10.439184, 12.985291, 9.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.399494, 13.221137, 9.880429>,  <10.333344, 13.614214, 9.913822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.399494, 13.221137, 9.880429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011236, -0.086519, 0.996187,
		-0.986167, -0.163806, -0.025349,
		0.165375, -0.982691, -0.083482,
		10.449106, 12.926330, 9.855385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755181, 13.186535, 10.260434>,  <10.333344, 13.614214, 9.913822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755181, 13.186535, 10.260434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057937, 12.925890, 10.280519>,  <10.239590, 12.769503, 10.292570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057937, 12.925890, 10.280519>,  <9.755181, 13.186535, 10.260434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.057937, 12.925890, 10.280519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207680, -0.166960, 0.963843,
		-0.619669, -0.739949, -0.261697,
		0.756888, -0.651613, 0.050213,
		10.285004, 12.730406, 10.295584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.543507, 12.754033, 10.787668>,  <9.755181, 13.186535, 10.260434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.543507, 12.754033, 10.787668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932873, 12.666747, 10.759833>,  <10.166492, 12.614375, 10.743133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932873, 12.666747, 10.759833>,  <9.543507, 12.754033, 10.787668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.932873, 12.666747, 10.759833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056771, -0.064475, 0.996303,
		-0.221897, -0.973768, -0.050372,
		0.973416, -0.218217, -0.069588,
		10.224897, 12.601282, 10.738956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.597447, 12.237041, 11.184601>,  <9.543507, 12.754033, 10.787668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.597447, 12.237041, 11.184601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981632, 12.346807, 11.165801>,  <10.212143, 12.412665, 11.154521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981632, 12.346807, 11.165801>,  <9.597447, 12.237041, 11.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.981632, 12.346807, 11.165801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067569, -0.065988, 0.995530,
		0.270085, -0.959345, -0.081921,
		0.960463, 0.274413, -0.046999,
		10.269771, 12.429131, 11.151701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062856, 11.743106, 11.539289>,  <9.597447, 12.237041, 11.184601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062856, 11.743106, 11.539289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286848, 12.074428, 11.531992>,  <10.421244, 12.273221, 11.527614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286848, 12.074428, 11.531992>,  <10.062856, 11.743106, 11.539289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.286848, 12.074428, 11.531992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068243, -0.024170, 0.997376,
		0.825690, -0.559756, -0.070061,
		0.559981, 0.828304, -0.018243,
		10.454843, 12.322919, 11.526519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684216, 11.624236, 11.937129>,  <10.062856, 11.743106, 11.539289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684216, 11.624236, 11.937129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.691887, 12.023575, 11.915454>,  <10.696490, 12.263178, 11.902449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.691887, 12.023575, 11.915454>,  <10.684216, 11.624236, 11.937129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.691887, 12.023575, 11.915454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100359, 0.052001, 0.993592,
		0.994766, -0.024494, -0.099196,
		0.019179, 0.998347, -0.054187,
		10.697640, 12.323079, 11.899198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298706, 11.822062, 12.321670>,  <10.684216, 11.624236, 11.937129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298706, 11.822062, 12.321670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053748, 12.138282, 12.320772>,  <10.906774, 12.328013, 12.320234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053748, 12.138282, 12.320772>,  <11.298706, 11.822062, 12.321670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.053748, 12.138282, 12.320772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065191, 0.053326, 0.996447,
		0.787860, 0.610072, -0.084193,
		-0.612394, 0.790549, -0.002242,
		10.870029, 12.375446, 12.320100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.643597, 12.242923, 12.827068>,  <11.298706, 11.822062, 12.321670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.643597, 12.242923, 12.827068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273913, 12.394262, 12.806320>,  <11.052103, 12.485066, 12.793871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273913, 12.394262, 12.806320>,  <11.643597, 12.242923, 12.827068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273913, 12.394262, 12.806320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046602, 0.023076, 0.998647,
		0.379035, 0.925375, -0.003695,
		-0.924208, 0.378350, -0.051871,
		10.996651, 12.507768, 12.790759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639625, 12.886421, 13.260055>,  <11.643597, 12.242923, 12.827068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639625, 12.886421, 13.260055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.250758, 12.798287, 13.228188>,  <11.017439, 12.745407, 13.209067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.250758, 12.798287, 13.228188>,  <11.639625, 12.886421, 13.260055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250758, 12.798287, 13.228188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154980, 0.349738, 0.923940,
		-0.175713, 0.910569, -0.374151,
		-0.972166, -0.220335, -0.079666,
		10.959108, 12.732187, 13.204288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434550, 13.399646, 13.647165>,  <11.639625, 12.886421, 13.260055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434550, 13.399646, 13.647165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109491, 13.170861, 13.602509>,  <10.914456, 13.033590, 13.575714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109491, 13.170861, 13.602509>,  <11.434550, 13.399646, 13.647165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109491, 13.170861, 13.602509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382323, 0.378687, 0.842867,
		-0.439811, 0.727637, -0.526414,
		-0.812647, -0.571962, -0.111642,
		10.865697, 12.999272, 13.569016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851582, 13.811549, 13.678040>,  <11.434550, 13.399646, 13.647165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851582, 13.811549, 13.678040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.719346, 13.443333, 13.761290>,  <10.640005, 13.222403, 13.811239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.719346, 13.443333, 13.761290>,  <10.851582, 13.811549, 13.678040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.719346, 13.443333, 13.761290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439841, 0.345386, 0.829004,
		-0.835016, 0.182517, -0.519073,
		-0.330588, -0.920541, 0.208124,
		10.620170, 13.167171, 13.823727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.197941, 13.900989, 13.865483>,  <10.851582, 13.811549, 13.678040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.197941, 13.900989, 13.865483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.278176, 13.540306, 14.018683>,  <10.326318, 13.323896, 14.110603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.278176, 13.540306, 14.018683>,  <10.197941, 13.900989, 13.865483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.278176, 13.540306, 14.018683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331233, 0.305500, 0.892723,
		-0.921981, -0.305932, -0.237396,
		0.200588, -0.901707, 0.383000,
		10.338353, 13.269794, 14.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651209, 13.759274, 14.160208>,  <10.197941, 13.900989, 13.865483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651209, 13.759274, 14.160208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.901074, 13.524993, 14.366798>,  <10.050994, 13.384424, 14.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.901074, 13.524993, 14.366798>,  <9.651209, 13.759274, 14.160208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901074, 13.524993, 14.366798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463968, 0.253623, 0.848770,
		-0.628116, -0.769824, -0.113318,
		0.624664, -0.585701, 0.516478,
		10.088473, 13.349282, 14.521742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.266298, 13.279141, 14.604517>,  <9.651209, 13.759274, 14.160208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.266298, 13.279141, 14.604517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.626074, 13.320842, 14.774288>,  <9.841939, 13.345862, 14.876151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.626074, 13.320842, 14.774288>,  <9.266298, 13.279141, 14.604517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.626074, 13.320842, 14.774288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436423, 0.266046, 0.859509,
		-0.023314, -0.958306, 0.284789,
		0.899440, 0.104250, 0.424429,
		9.895905, 13.352117, 14.901617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.142774, 12.968327, 15.261817>,  <9.266298, 13.279141, 14.604517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.142774, 12.968327, 15.261817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.489184, 13.160615, 15.316813>,  <9.697031, 13.275989, 15.349812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.489184, 13.160615, 15.316813>,  <9.142774, 12.968327, 15.261817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.489184, 13.160615, 15.316813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177770, 0.039020, 0.983298,
		0.467328, -0.876005, 0.119250,
		0.866027, 0.480722, 0.137492,
		9.748993, 13.304832, 15.358061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496136, 12.748374, 15.931218>,  <9.142774, 12.968327, 15.261817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496136, 12.748374, 15.931218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588618, 13.131681, 15.863968>,  <9.644108, 13.361666, 15.823618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588618, 13.131681, 15.863968>,  <9.496136, 12.748374, 15.931218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.588618, 13.131681, 15.863968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224557, 0.220705, 0.949138,
		0.946635, -0.181694, 0.266214,
		0.231207, 0.958268, -0.168127,
		9.657981, 13.419162, 15.813530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.722440, 12.912253, 16.515993>,  <9.496136, 12.748374, 15.931218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.722440, 12.912253, 16.515993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735572, 13.277847, 16.354225>,  <9.743451, 13.497204, 16.257164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735572, 13.277847, 16.354225>,  <9.722440, 12.912253, 16.515993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.735572, 13.277847, 16.354225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293859, 0.395581, 0.870151,
		0.955285, 0.090276, 0.281569,
		0.032830, 0.913984, -0.404421,
		9.745420, 13.552042, 16.232899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004347, 13.433915, 16.965078>,  <9.722440, 12.912253, 16.515993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004347, 13.433915, 16.965078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815481, 13.684898, 16.717415>,  <9.702162, 13.835488, 16.568817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815481, 13.684898, 16.717415>,  <10.004347, 13.433915, 16.965078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.815481, 13.684898, 16.717415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361907, 0.502477, 0.785201,
		0.803794, 0.594822, -0.010170,
		-0.472164, 0.627459, -0.619158,
		9.673832, 13.873136, 16.531668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.099866, 14.066870, 17.135633>,  <10.004347, 13.433915, 16.965078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.099866, 14.066870, 17.135633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771395, 14.142144, 16.920134>,  <9.574312, 14.187308, 16.790834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771395, 14.142144, 16.920134>,  <10.099866, 14.066870, 17.135633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771395, 14.142144, 16.920134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263393, 0.712509, 0.650350,
		0.506250, 0.675956, -0.535531,
		-0.821179, 0.188185, -0.538750,
		9.525041, 14.198600, 16.758509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106732, 14.813385, 16.986300>,  <10.099866, 14.066870, 17.135633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106732, 14.813385, 16.986300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735919, 14.663410, 16.984089>,  <9.513431, 14.573425, 16.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735919, 14.663410, 16.984089>,  <10.106732, 14.813385, 16.986300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.735919, 14.663410, 16.984089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326351, 0.799469, 0.504325,
		-0.184670, 0.469331, -0.863496,
		-0.927034, -0.374936, -0.005529,
		9.457808, 14.550929, 16.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.886348, 15.479046, 16.835766>,  <10.106732, 14.813385, 16.986300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.886348, 15.479046, 16.835766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943980, 15.865085, 16.923246>,  <9.978559, 16.096708, 16.975735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943980, 15.865085, 16.923246>,  <9.886348, 15.479046, 16.835766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943980, 15.865085, 16.923246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848300, 0.006661, 0.529475,
		0.509537, -0.261810, 0.819651,
		0.144082, 0.965096, 0.218699,
		9.987205, 16.154613, 16.988855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.393940, 15.791600, 17.219070>,  <9.886348, 15.479046, 16.835766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.393940, 15.791600, 17.219070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.697101, 15.562555, 17.094044>,  <10.878997, 15.425128, 17.019028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.697101, 15.562555, 17.094044>,  <10.393940, 15.791600, 17.219070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.697101, 15.562555, 17.094044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559216, 0.323521, 0.763290,
		-0.335948, -0.753291, 0.565412,
		0.757903, -0.572613, -0.312566,
		10.924472, 15.390771, 17.000275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873608, 15.493289, 17.759720>,  <10.393940, 15.791600, 17.219070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873608, 15.493289, 17.759720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104630, 15.544493, 17.437218>,  <11.243242, 15.575214, 17.243717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104630, 15.544493, 17.437218>,  <10.873608, 15.493289, 17.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104630, 15.544493, 17.437218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617991, 0.576757, 0.534264,
		0.533402, -0.806825, 0.254000,
		0.577554, 0.128008, -0.806254,
		11.277896, 15.582895, 17.195341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633750, 15.346384, 17.875793>,  <10.873608, 15.493289, 17.759720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633750, 15.346384, 17.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538404, 15.620562, 17.600592>,  <11.481197, 15.785069, 17.435471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538404, 15.620562, 17.600592>,  <11.633750, 15.346384, 17.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.538404, 15.620562, 17.600592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652285, 0.637846, 0.409484,
		0.719519, -0.351168, -0.599145,
		-0.238364, 0.685444, -0.688003,
		11.466895, 15.826195, 17.394190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212840, 15.693851, 17.552992>,  <11.633750, 15.346384, 17.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212840, 15.693851, 17.552992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884530, 15.922344, 17.554787>,  <11.687544, 16.059441, 17.555862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884530, 15.922344, 17.554787>,  <12.212840, 15.693851, 17.552992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884530, 15.922344, 17.554787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524344, 0.750240, 0.402745,
		0.226697, 0.332916, -0.915301,
		-0.820775, 0.571234, 0.004486,
		11.638297, 16.093714, 17.556133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.466352, 16.255842, 17.323334>,  <12.212840, 15.693851, 17.552992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.466352, 16.255842, 17.323334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151495, 16.359110, 17.547388>,  <11.962581, 16.421070, 17.681820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151495, 16.359110, 17.547388>,  <12.466352, 16.255842, 17.323334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151495, 16.359110, 17.547388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583853, 0.604625, 0.541797,
		-0.198795, 0.753509, -0.626661,
		-0.787144, 0.258171, 0.560135,
		11.915352, 16.436562, 17.715429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423656, 17.001490, 17.461229>,  <12.466352, 16.255842, 17.323334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423656, 17.001490, 17.461229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269972, 16.806572, 17.774899>,  <12.177761, 16.689621, 17.963100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269972, 16.806572, 17.774899>,  <12.423656, 17.001490, 17.461229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269972, 16.806572, 17.774899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647912, 0.462773, 0.605021,
		-0.657717, 0.740531, 0.137921,
		-0.384211, -0.487293, 0.784173,
		12.154709, 16.660383, 18.010151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941165, 17.339148, 17.933525>,  <12.423656, 17.001490, 17.461229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.941165, 17.339148, 17.933525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129272, 17.064207, 18.154938>,  <12.242137, 16.899242, 18.287786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129272, 17.064207, 18.154938>,  <11.941165, 17.339148, 17.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129272, 17.064207, 18.154938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324805, 0.717993, 0.615620,
		-0.820578, -0.109717, 0.560904,
		0.470269, -0.687349, 0.553533,
		12.270353, 16.858002, 18.320997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.751313, 17.514894, 18.666851>,  <11.941165, 17.339148, 17.933525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.751313, 17.514894, 18.666851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092832, 17.309324, 18.700100>,  <12.297743, 17.185982, 18.720049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092832, 17.309324, 18.700100>,  <11.751313, 17.514894, 18.666851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.092832, 17.309324, 18.700100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317776, 0.640938, 0.698725,
		-0.412370, -0.570155, 0.710545,
		0.853797, -0.513927, 0.083122,
		12.348970, 17.155146, 18.725037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966654, 17.599016, 19.435558>,  <11.751313, 17.514894, 18.666851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966654, 17.599016, 19.435558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296748, 17.460182, 19.257338>,  <12.494804, 17.376883, 19.150404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296748, 17.460182, 19.257338>,  <11.966654, 17.599016, 19.435558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.296748, 17.460182, 19.257338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560820, 0.410224, 0.719165,
		-0.066835, -0.843355, 0.533184,
		0.825236, -0.347085, -0.445553,
		12.544319, 17.356056, 19.123672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440350, 17.336084, 19.905659>,  <11.966654, 17.599016, 19.435558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440350, 17.336084, 19.905659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.685111, 17.424971, 19.602030>,  <12.831968, 17.478302, 19.419851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.685111, 17.424971, 19.602030>,  <12.440350, 17.336084, 19.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.685111, 17.424971, 19.602030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582079, 0.523253, 0.622407,
		0.535497, -0.822694, 0.190832,
		0.611904, 0.222218, -0.759074,
		12.868682, 17.491636, 19.374308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038483, 17.421680, 20.261656>,  <12.440350, 17.336084, 19.905659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038483, 17.421680, 20.261656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118307, 17.568365, 19.898184>,  <13.166202, 17.656376, 19.680101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118307, 17.568365, 19.898184>,  <13.038483, 17.421680, 20.261656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.118307, 17.568365, 19.898184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688394, 0.607477, 0.396340,
		0.697344, -0.704623, -0.131214,
		0.199561, 0.366712, -0.908679,
		13.178175, 17.678379, 19.625580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754374, 17.213579, 20.228315>,  <13.038483, 17.421680, 20.261656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754374, 17.213579, 20.228315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659666, 17.518476, 19.987341>,  <13.602841, 17.701414, 19.842756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659666, 17.518476, 19.987341>,  <13.754374, 17.213579, 20.228315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659666, 17.518476, 19.987341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745404, 0.540218, 0.390560,
		0.623147, -0.356585, -0.696086,
		-0.236770, 0.762242, -0.602435,
		13.588635, 17.747149, 19.806610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352341, 17.596045, 20.188108>,  <13.754374, 17.213579, 20.228315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352341, 17.596045, 20.188108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078699, 17.851250, 20.046721>,  <13.914515, 18.004374, 19.961887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078699, 17.851250, 20.046721>,  <14.352341, 17.596045, 20.188108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078699, 17.851250, 20.046721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553472, 0.769710, 0.318144,
		0.475050, 0.022007, -0.879684,
		-0.684103, 0.638014, -0.353470,
		13.873468, 18.042654, 19.940680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715118, 17.997166, 19.777988>,  <14.352341, 17.596045, 20.188108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715118, 17.997166, 19.777988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.395110, 18.194841, 19.914074>,  <14.203105, 18.313446, 19.995726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.395110, 18.194841, 19.914074>,  <14.715118, 17.997166, 19.777988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395110, 18.194841, 19.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592527, 0.561733, 0.577380,
		0.094226, 0.663502, -0.742218,
		-0.800021, 0.494188, 0.340213,
		14.155104, 18.343098, 20.016138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.836263, 18.791414, 19.708019>,  <14.715118, 17.997166, 19.777988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.836263, 18.791414, 19.708019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582103, 18.747210, 20.013714>,  <14.429607, 18.720686, 20.197130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582103, 18.747210, 20.013714>,  <14.836263, 18.791414, 19.708019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582103, 18.747210, 20.013714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501752, 0.693206, 0.517407,
		-0.586952, 0.712216, -0.385013,
		-0.635399, -0.110512, 0.764235,
		14.391483, 18.714056, 20.242985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964199, 19.353933, 20.053431>,  <14.836263, 18.791414, 19.708019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964199, 19.353933, 20.053431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723114, 19.205431, 20.335964>,  <14.578463, 19.116329, 20.505484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723114, 19.205431, 20.335964>,  <14.964199, 19.353933, 20.053431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723114, 19.205431, 20.335964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427264, 0.597443, 0.678607,
		-0.673932, 0.710795, -0.201461,
		-0.602712, -0.371258, 0.706333,
		14.542300, 19.094053, 20.547865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760166, 19.966255, 20.435682>,  <14.964199, 19.353933, 20.053431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760166, 19.966255, 20.435682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692339, 19.643494, 20.662010>,  <14.651643, 19.449837, 20.797808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692339, 19.643494, 20.662010>,  <14.760166, 19.966255, 20.435682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692339, 19.643494, 20.662010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457851, 0.443915, 0.770267,
		-0.872708, 0.389675, 0.294167,
		-0.169569, -0.806903, 0.565822,
		14.641468, 19.401423, 20.831757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592569, 20.204201, 21.079363>,  <14.760166, 19.966255, 20.435682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592569, 20.204201, 21.079363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700150, 19.830322, 21.172319>,  <14.764697, 19.605995, 21.228094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700150, 19.830322, 21.172319>,  <14.592569, 20.204201, 21.079363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700150, 19.830322, 21.172319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358553, 0.321103, 0.876546,
		-0.893927, -0.152422, 0.421499,
		0.268950, -0.934698, 0.232391,
		14.780834, 19.549913, 21.242037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305949, 20.010677, 21.760555>,  <14.592569, 20.204201, 21.079363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305949, 20.010677, 21.760555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642014, 19.806900, 21.686155>,  <14.843652, 19.684633, 21.641516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642014, 19.806900, 21.686155>,  <14.305949, 20.010677, 21.760555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642014, 19.806900, 21.686155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406259, 0.363988, 0.838133,
		-0.359282, -0.779729, 0.512775,
		0.840161, -0.509446, -0.185998,
		14.894062, 19.654066, 21.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.485320, 19.820055, 22.394499>,  <14.305949, 20.010677, 21.760555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.485320, 19.820055, 22.394499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828209, 19.775402, 22.193419>,  <15.033942, 19.748610, 22.072771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828209, 19.775402, 22.193419>,  <14.485320, 19.820055, 22.394499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828209, 19.775402, 22.193419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514808, 0.163241, 0.841621,
		-0.011894, -0.980250, 0.197405,
		0.857223, -0.111636, -0.502699,
		15.085376, 19.741911, 22.042608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879535, 19.245756, 22.715471>,  <14.485320, 19.820055, 22.394499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879535, 19.245756, 22.715471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137106, 19.474264, 22.511900>,  <15.291649, 19.611368, 22.389757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137106, 19.474264, 22.511900>,  <14.879535, 19.245756, 22.715471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137106, 19.474264, 22.511900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569673, 0.086028, 0.817357,
		0.510714, -0.816240, -0.270041,
		0.643929, 0.571271, -0.508926,
		15.330284, 19.645645, 22.359222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642614, 19.099243, 23.055639>,  <14.879535, 19.245756, 22.715471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642614, 19.099243, 23.055639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666778, 19.449980, 22.864853>,  <15.681275, 19.660421, 22.750381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666778, 19.449980, 22.864853>,  <15.642614, 19.099243, 23.055639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666778, 19.449980, 22.864853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543409, 0.371933, 0.752577,
		0.837292, -0.304648, -0.454018,
		0.060407, 0.876844, -0.476965,
		15.684900, 19.713034, 22.721764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290680, 19.385300, 23.351131>,  <15.642614, 19.099243, 23.055639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290680, 19.385300, 23.351131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134678, 19.681549, 23.132271>,  <16.041077, 19.859299, 23.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134678, 19.681549, 23.132271>,  <16.290680, 19.385300, 23.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134678, 19.681549, 23.132271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514779, 0.668042, 0.537329,
		0.763478, -0.072101, -0.641797,
		-0.390005, 0.740623, -0.547151,
		16.017675, 19.903736, 22.968126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861525, 19.783894, 22.874540>,  <16.290680, 19.385300, 23.351131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.861525, 19.783894, 22.874540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553526, 19.997519, 23.014185>,  <16.368727, 20.125694, 23.097973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553526, 19.997519, 23.014185>,  <16.861525, 19.783894, 22.874540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553526, 19.997519, 23.014185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633565, 0.575247, 0.517384,
		0.075490, 0.619570, -0.781303,
		-0.769997, 0.534064, 0.349113,
		16.322527, 20.157738, 23.118919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087702, 20.357960, 23.199064>,  <16.861525, 19.783894, 22.874540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087702, 20.357960, 23.199064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715357, 20.402761, 23.338179>,  <16.491951, 20.429644, 23.421646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715357, 20.402761, 23.338179>,  <17.087702, 20.357960, 23.199064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715357, 20.402761, 23.338179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363193, 0.387534, 0.847295,
		-0.039876, 0.915026, -0.401420,
		-0.930860, 0.112006, 0.347784,
		16.436098, 20.436363, 23.442514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938536, 21.075554, 23.316959>,  <17.087702, 20.357960, 23.199064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938536, 21.075554, 23.316959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.678749, 20.881277, 23.550985>,  <16.522877, 20.764711, 23.691401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.678749, 20.881277, 23.550985>,  <16.938536, 21.075554, 23.316959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678749, 20.881277, 23.550985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275067, 0.567253, 0.776249,
		-0.708896, 0.665078, -0.234814,
		-0.649465, -0.485690, 0.585064,
		16.483910, 20.735571, 23.726505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612574, 21.552492, 23.614368>,  <16.938536, 21.075554, 23.316959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612574, 21.552492, 23.614368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559206, 21.244404, 23.863834>,  <16.527185, 21.059551, 24.013514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559206, 21.244404, 23.863834>,  <16.612574, 21.552492, 23.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559206, 21.244404, 23.863834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230914, 0.587811, 0.775343,
		-0.963783, 0.247460, 0.099429,
		-0.133421, -0.770222, 0.623664,
		16.519180, 21.013338, 24.050934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229313, 21.853363, 24.201767>,  <16.612574, 21.552492, 23.614368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229313, 21.853363, 24.201767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386654, 21.513514, 24.342289>,  <16.481058, 21.309605, 24.426601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386654, 21.513514, 24.342289>,  <16.229313, 21.853363, 24.201767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386654, 21.513514, 24.342289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113658, 0.424113, 0.898449,
		-0.912335, -0.313480, 0.263393,
		0.393354, -0.849623, 0.351303,
		16.504660, 21.258627, 24.447680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922748, 21.695127, 24.908407>,  <16.229313, 21.853363, 24.201767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922748, 21.695127, 24.908407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257450, 21.476109, 24.910658>,  <16.458271, 21.344698, 24.912008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257450, 21.476109, 24.910658>,  <15.922748, 21.695127, 24.908407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257450, 21.476109, 24.910658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067965, 0.114045, 0.991148,
		-0.543341, -0.828967, 0.132642,
		0.836756, -0.547546, 0.005624,
		16.508476, 21.311844, 24.912346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878872, 21.434732, 25.532772>,  <15.922748, 21.695127, 24.908407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878872, 21.434732, 25.532772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261896, 21.420925, 25.418308>,  <16.491711, 21.412642, 25.349630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261896, 21.420925, 25.418308>,  <15.878872, 21.434732, 25.532772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261896, 21.420925, 25.418308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285034, 0.260886, 0.922331,
		0.042818, -0.964753, 0.259652,
		0.957560, -0.034518, -0.286158,
		16.549164, 21.410570, 25.332460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228193, 21.161888, 26.059383>,  <15.878872, 21.434732, 25.532772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228193, 21.161888, 26.059383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.520077, 21.324581, 25.839533>,  <16.695208, 21.422197, 25.707623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.520077, 21.324581, 25.839533>,  <16.228193, 21.161888, 26.059383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520077, 21.324581, 25.839533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501944, 0.227192, 0.834528,
		0.464301, -0.884846, -0.038373,
		0.729710, 0.406733, -0.549628,
		16.738991, 21.446602, 25.674644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806070, 21.097586, 26.447918>,  <16.228193, 21.161888, 26.059383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806070, 21.097586, 26.447918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911928, 21.392166, 26.198887>,  <16.975443, 21.568914, 26.049469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911928, 21.392166, 26.198887>,  <16.806070, 21.097586, 26.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911928, 21.392166, 26.198887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629452, 0.357184, 0.690080,
		0.730585, -0.574508, -0.369034,
		0.264643, 0.736451, -0.622578,
		16.991322, 21.613102, 26.012114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530897, 21.178051, 26.649065>,  <16.806070, 21.097586, 26.447918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530897, 21.178051, 26.649065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458342, 21.521248, 26.456839>,  <17.414808, 21.727167, 26.341503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458342, 21.521248, 26.456839>,  <17.530897, 21.178051, 26.649065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458342, 21.521248, 26.456839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629951, 0.476623, 0.613182,
		0.755156, -0.191510, -0.626948,
		-0.181388, 0.857994, -0.480567,
		17.403925, 21.778646, 26.312668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143826, 21.502832, 26.620714>,  <17.530897, 21.178051, 26.649065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143826, 21.502832, 26.620714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876347, 21.794992, 26.565060>,  <17.715858, 21.970289, 26.531668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876347, 21.794992, 26.565060>,  <18.143826, 21.502832, 26.620714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876347, 21.794992, 26.565060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567064, 0.622013, 0.539943,
		0.480919, 0.282159, -0.830122,
		-0.668697, 0.730401, -0.139136,
		17.675737, 22.014112, 26.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478394, 22.151461, 26.349865>,  <18.143826, 21.502832, 26.620714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478394, 22.151461, 26.349865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142084, 22.232269, 26.550777>,  <17.940298, 22.280754, 26.671326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142084, 22.232269, 26.550777>,  <18.478394, 22.151461, 26.349865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142084, 22.232269, 26.550777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511805, 0.599082, 0.615757,
		-0.176511, 0.774782, -0.607088,
		-0.840773, 0.202023, 0.502282,
		17.889853, 22.292875, 26.701462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479326, 22.944103, 26.552814>,  <18.478394, 22.151461, 26.349865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479326, 22.944103, 26.552814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233353, 22.766098, 26.813219>,  <18.085768, 22.659294, 26.969463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233353, 22.766098, 26.813219>,  <18.479326, 22.944103, 26.552814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233353, 22.766098, 26.813219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514193, 0.399639, 0.758877,
		-0.597882, 0.801405, -0.016928,
		-0.614933, -0.445015, 0.651014,
		18.048872, 22.632593, 27.008524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209295, 23.544701, 26.982056>,  <18.479326, 22.944103, 26.552814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209295, 23.544701, 26.982056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210043, 23.194494, 27.175331>,  <18.210491, 22.984371, 27.291296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210043, 23.194494, 27.175331>,  <18.209295, 23.544701, 26.982056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210043, 23.194494, 27.175331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410107, 0.441356, 0.798134,
		-0.912036, 0.196666, 0.359880,
		0.001869, -0.875516, 0.483187,
		18.210604, 22.931839, 27.320288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114359, 23.733213, 27.605989>,  <18.209295, 23.544701, 26.982056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114359, 23.733213, 27.605989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252144, 23.360697, 27.653391>,  <18.334816, 23.137188, 27.681831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252144, 23.360697, 27.653391>,  <18.114359, 23.733213, 27.605989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252144, 23.360697, 27.653391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541168, 0.300124, 0.785533,
		-0.767126, -0.206456, 0.607366,
		0.344464, -0.931290, 0.118506,
		18.355482, 23.081310, 27.688942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958261, 23.579006, 28.282114>,  <18.114359, 23.733213, 27.605989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958261, 23.579006, 28.282114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259796, 23.327385, 28.206192>,  <18.440716, 23.176413, 28.160639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259796, 23.327385, 28.206192>,  <17.958261, 23.579006, 28.282114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259796, 23.327385, 28.206192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480904, 0.331371, 0.811741,
		-0.447733, -0.703197, 0.552313,
		0.753835, -0.629053, -0.189805,
		18.485947, 23.138670, 28.149250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243557, 23.297184, 28.894196>,  <17.958261, 23.579006, 28.282114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243557, 23.297184, 28.894196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560785, 23.258558, 28.653625>,  <18.751122, 23.235382, 28.509283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560785, 23.258558, 28.653625>,  <18.243557, 23.297184, 28.894196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560785, 23.258558, 28.653625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593519, 0.344601, 0.727314,
		0.137017, -0.933769, 0.330608,
		0.793071, -0.096567, -0.601426,
		18.798706, 23.229588, 28.473198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810995, 23.207951, 29.426060>,  <18.243557, 23.297184, 28.894196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810995, 23.207951, 29.426060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987339, 23.241392, 29.068590>,  <19.093145, 23.261457, 28.854109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987339, 23.241392, 29.068590>,  <18.810995, 23.207951, 29.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987339, 23.241392, 29.068590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875481, 0.179496, 0.448680,
		0.197923, -0.980200, 0.005937,
		0.440862, 0.083606, -0.893673,
		19.119598, 23.266474, 28.800488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415819, 22.749039, 29.517059>,  <18.810995, 23.207951, 29.426060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415819, 22.749039, 29.517059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491980, 23.025276, 29.237967>,  <19.537676, 23.191019, 29.070511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491980, 23.025276, 29.237967>,  <19.415819, 22.749039, 29.517059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491980, 23.025276, 29.237967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951497, 0.045139, 0.304329,
		0.241662, -0.721834, -0.648502,
		0.190403, 0.690593, -0.697731,
		19.549101, 23.232454, 29.028646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096298, 22.625595, 29.363199>,  <19.415819, 22.749039, 29.517059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096298, 22.625595, 29.363199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033171, 22.997337, 29.229696>,  <19.995295, 23.220383, 29.149595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033171, 22.997337, 29.229696>,  <20.096298, 22.625595, 29.363199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033171, 22.997337, 29.229696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864200, 0.293516, 0.408664,
		0.477757, -0.223939, -0.849470,
		-0.157818, 0.929354, -0.333757,
		19.985825, 23.276144, 29.129570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771942, 22.814434, 29.230545>,  <20.096298, 22.625595, 29.363199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771942, 22.814434, 29.230545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525732, 23.126728, 29.273594>,  <20.378006, 23.314104, 29.299423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525732, 23.126728, 29.273594>,  <20.771942, 22.814434, 29.230545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525732, 23.126728, 29.273594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682661, 0.459931, 0.567835,
		0.393828, 0.422988, -0.816076,
		-0.615526, 0.780733, 0.107624,
		20.341074, 23.360949, 29.305882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.208452, 23.403820, 29.164520>,  <20.771942, 22.814434, 29.230545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.208452, 23.403820, 29.164520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879431, 23.506464, 29.367519>,  <20.682018, 23.568050, 29.489319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879431, 23.506464, 29.367519>,  <21.208452, 23.403820, 29.164520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879431, 23.506464, 29.367519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567833, 0.321738, 0.757661,
		0.031143, 0.911392, -0.410359,
		-0.822554, 0.256611, 0.507499,
		20.632664, 23.583447, 29.519770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362265, 24.034903, 29.445318>,  <21.208452, 23.403820, 29.164520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362265, 24.034903, 29.445318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045055, 23.913237, 29.656448>,  <20.854731, 23.840237, 29.783127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045055, 23.913237, 29.656448>,  <21.362265, 24.034903, 29.445318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045055, 23.913237, 29.656448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512977, 0.133933, 0.847889,
		-0.328592, 0.943157, 0.049818,
		-0.793021, -0.304165, 0.527827,
		20.807150, 23.821987, 29.814796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349220, 24.533068, 29.983139>,  <21.362265, 24.034903, 29.445318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349220, 24.533068, 29.983139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092930, 24.260952, 30.125505>,  <20.939156, 24.097683, 30.210926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092930, 24.260952, 30.125505>,  <21.349220, 24.533068, 29.983139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092930, 24.260952, 30.125505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313036, 0.191819, 0.930169,
		-0.701058, 0.707396, 0.090052,
		-0.640724, -0.680291, 0.355917,
		20.900713, 24.056864, 30.232281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051373, 24.884195, 30.424759>,  <21.349220, 24.533068, 29.983139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051373, 24.884195, 30.424759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022831, 24.497862, 30.524416>,  <21.005705, 24.266062, 30.584209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022831, 24.497862, 30.524416>,  <21.051373, 24.884195, 30.424759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022831, 24.497862, 30.524416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565846, 0.166500, 0.807524,
		-0.821417, 0.198596, 0.534634,
		-0.071355, -0.965835, 0.249141,
		21.001425, 24.208111, 30.599157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.763681, 24.878719, 31.182743>,  <21.051373, 24.884195, 30.424759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.763681, 24.878719, 31.182743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.970892, 24.552244, 31.080383>,  <21.095219, 24.356359, 31.018967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.970892, 24.552244, 31.080383>,  <20.763681, 24.878719, 31.182743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970892, 24.552244, 31.080383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683808, 0.215436, 0.697133,
		-0.513861, -0.536121, 0.669718,
		0.518028, -0.816187, -0.255900,
		21.126301, 24.307388, 31.003613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.821421, 24.421787, 31.783941>,  <20.763681, 24.878719, 31.182743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.821421, 24.421787, 31.783941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136793, 24.401302, 31.538746>,  <21.326017, 24.389011, 31.391628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136793, 24.401302, 31.538746>,  <20.821421, 24.421787, 31.783941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136793, 24.401302, 31.538746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607709, 0.219111, 0.763335,
		0.095219, -0.974355, 0.203877,
		0.788431, -0.051214, -0.612988,
		21.373322, 24.385939, 31.354849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429647, 24.159557, 32.194626>,  <20.821421, 24.421787, 31.783941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429647, 24.159557, 32.194626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546124, 24.363550, 31.870867>,  <21.616009, 24.485947, 31.676611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546124, 24.363550, 31.870867>,  <21.429647, 24.159557, 32.194626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546124, 24.363550, 31.870867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684224, 0.480292, 0.548778,
		0.668615, -0.713607, -0.209088,
		0.291189, 0.509985, -0.809398,
		21.633480, 24.516546, 31.628048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228264, 23.525393, 32.552608>,  <21.429647, 24.159557, 32.194626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228264, 23.525393, 32.552608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878340, 23.654953, 32.696716>,  <20.668385, 23.732689, 32.783180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878340, 23.654953, 32.696716>,  <21.228264, 23.525393, 32.552608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878340, 23.654953, 32.696716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230404, -0.932319, 0.278739,
		0.426167, 0.160838, 0.890232,
		-0.874812, 0.323903, 0.360266,
		20.615896, 23.752123, 32.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151800, 23.340981, 33.282116>,  <21.228264, 23.525393, 32.552608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151800, 23.340981, 33.282116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811903, 23.364626, 33.072567>,  <20.607964, 23.378813, 32.946838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.811903, 23.364626, 33.072567>,  <21.151800, 23.340981, 33.282116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811903, 23.364626, 33.072567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222916, -0.940779, 0.255428,
		-0.477746, 0.333828, 0.812599,
		-0.849745, 0.059112, -0.523869,
		20.556980, 23.382359, 32.915405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.332048, 22.651358, 33.684273>,  <21.151800, 23.340981, 33.282116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.332048, 22.651358, 33.684273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693954, 22.583961, 33.527809>,  <21.911098, 22.543524, 33.433929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693954, 22.583961, 33.527809>,  <21.332048, 22.651358, 33.684273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693954, 22.583961, 33.527809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421412, -0.487233, -0.764863,
		-0.061716, 0.856864, -0.511835,
		0.904767, -0.168489, -0.391163,
		21.965385, 22.533415, 33.410461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143673, 22.692614, 32.992535>,  <21.332048, 22.651358, 33.684273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143673, 22.692614, 32.992535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.491278, 22.498123, 33.029205>,  <21.699841, 22.381430, 33.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.491278, 22.498123, 33.029205>,  <21.143673, 22.692614, 32.992535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491278, 22.498123, 33.029205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246853, -0.586625, -0.771320,
		0.428817, 0.647654, -0.629809,
		0.869011, -0.486226, 0.091679,
		21.751982, 22.352255, 33.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632578, 22.809252, 32.449112>,  <21.143673, 22.692614, 32.992535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632578, 22.809252, 32.449112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.653530, 22.441483, 32.605019>,  <21.666101, 22.220821, 32.698563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.653530, 22.441483, 32.605019>,  <21.632578, 22.809252, 32.449112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653530, 22.441483, 32.605019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153192, -0.393076, -0.906655,
		0.986807, -0.012217, -0.161438,
		0.052381, -0.919425, 0.389762,
		21.669245, 22.165655, 32.721947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099178, 22.333591, 32.055771>,  <21.632578, 22.809252, 32.449112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099178, 22.333591, 32.055771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816105, 22.119595, 32.240364>,  <21.646261, 21.991196, 32.351120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816105, 22.119595, 32.240364>,  <22.099178, 22.333591, 32.055771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816105, 22.119595, 32.240364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185509, -0.489554, -0.852012,
		0.681742, -0.688563, 0.247202,
		-0.707682, -0.534994, 0.461484,
		21.603800, 21.959097, 32.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.100309, 21.683174, 31.705620>,  <22.099178, 22.333591, 32.055771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.100309, 21.683174, 31.705620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.750093, 21.706768, 31.897432>,  <21.539965, 21.720924, 32.012520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.750093, 21.706768, 31.897432>,  <22.100309, 21.683174, 31.705620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.750093, 21.706768, 31.897432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435484, -0.526196, -0.730391,
		0.209245, -0.848315, 0.486392,
		-0.875539, 0.058985, 0.479532,
		21.487432, 21.724464, 32.041290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595041, 21.093267, 32.024048>,  <22.100309, 21.683174, 31.705620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595041, 21.093267, 32.024048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343313, 21.381266, 31.907043>,  <21.192276, 21.554064, 31.836842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343313, 21.381266, 31.907043>,  <21.595041, 21.093267, 32.024048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343313, 21.381266, 31.907043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357512, -0.602415, -0.713639,
		-0.690030, -0.344532, 0.636519,
		-0.629320, 0.719996, -0.292511,
		21.154516, 21.597263, 31.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881264, 20.858162, 32.080002>,  <21.595041, 21.093267, 32.024048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881264, 20.858162, 32.080002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931435, 21.122925, 31.784393>,  <20.961536, 21.281782, 31.607029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931435, 21.122925, 31.784393>,  <20.881264, 20.858162, 32.080002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931435, 21.122925, 31.784393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220801, -0.707596, -0.671234,
		-0.967220, 0.247367, 0.057399,
		0.125426, 0.661905, -0.739020,
		20.969063, 21.321497, 31.562687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211386, 20.899967, 31.705961>,  <20.881264, 20.858162, 32.080002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211386, 20.899967, 31.705961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.495138, 21.025139, 31.453342>,  <20.665390, 21.100243, 31.301771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.495138, 21.025139, 31.453342>,  <20.211386, 20.899967, 31.705961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.495138, 21.025139, 31.453342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401492, -0.557040, -0.726987,
		-0.579292, 0.769273, -0.269516,
		0.709383, 0.312929, -0.631547,
		20.707952, 21.119019, 31.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808228, 20.999109, 31.168257>,  <20.211386, 20.899967, 31.705961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.808228, 20.999109, 31.168257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.183336, 20.975313, 31.031412>,  <20.408401, 20.961037, 30.949305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.183336, 20.975313, 31.031412>,  <19.808228, 20.999109, 31.168257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183336, 20.975313, 31.031412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321992, -0.517819, -0.792581,
		-0.130002, 0.853419, -0.504753,
		0.937774, -0.059489, -0.342112,
		20.464668, 20.957466, 30.928778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775034, 21.117065, 30.547937>,  <19.808228, 20.999109, 31.168257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775034, 21.117065, 30.547937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148460, 20.974260, 30.535316>,  <20.372517, 20.888577, 30.527744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148460, 20.974260, 30.535316>,  <19.775034, 21.117065, 30.547937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148460, 20.974260, 30.535316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198824, -0.442633, -0.874383,
		0.298201, 0.822567, -0.484210,
		0.933566, -0.357014, -0.031553,
		20.428530, 20.867157, 30.525850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017557, 21.331043, 29.959599>,  <19.775034, 21.117065, 30.547937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017557, 21.331043, 29.959599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238668, 21.009739, 30.048330>,  <20.371334, 20.816956, 30.101570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238668, 21.009739, 30.048330>,  <20.017557, 21.331043, 29.959599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238668, 21.009739, 30.048330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140618, -0.352290, -0.925267,
		0.821380, 0.480272, -0.307691,
		0.552776, -0.803262, 0.221829,
		20.404501, 20.768761, 30.114880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517122, 21.307764, 29.460007>,  <20.017557, 21.331043, 29.959599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517122, 21.307764, 29.460007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494572, 20.931746, 29.594549>,  <20.481041, 20.706135, 29.675274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494572, 20.931746, 29.594549>,  <20.517122, 21.307764, 29.460007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494572, 20.931746, 29.594549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152938, -0.324783, -0.933342,
		0.986626, -0.104062, -0.125458,
		-0.056379, -0.940046, 0.336354,
		20.477657, 20.649731, 29.695456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083368, 20.873611, 29.032345>,  <20.517122, 21.307764, 29.460007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083368, 20.873611, 29.032345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792292, 20.646099, 29.185680>,  <20.617645, 20.509592, 29.277681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792292, 20.646099, 29.185680>,  <21.083368, 20.873611, 29.032345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792292, 20.646099, 29.185680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091903, -0.472990, -0.876261,
		0.679718, -0.672880, 0.291919,
		-0.727693, -0.568782, 0.383340,
		20.573984, 20.475464, 29.300682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120829, 20.174000, 28.760357>,  <21.083368, 20.873611, 29.032345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120829, 20.174000, 28.760357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754705, 20.150455, 28.919729>,  <20.535032, 20.136330, 29.015352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754705, 20.150455, 28.919729>,  <21.120829, 20.174000, 28.760357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754705, 20.150455, 28.919729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315239, -0.511010, -0.799683,
		0.250672, -0.857557, 0.449177,
		-0.915307, -0.058860, 0.398432,
		20.480114, 20.132797, 29.039259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963503, 19.482656, 28.922829>,  <21.120829, 20.174000, 28.760357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963503, 19.482656, 28.922829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638851, 19.703712, 28.847095>,  <20.444059, 19.836346, 28.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638851, 19.703712, 28.847095>,  <20.963503, 19.482656, 28.922829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638851, 19.703712, 28.847095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208993, -0.577348, -0.789298,
		-0.545504, -0.601051, 0.584092,
		-0.811633, 0.552636, -0.189330,
		20.395361, 19.869503, 28.790297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457790, 19.040449, 28.878599>,  <20.963503, 19.482656, 28.922829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457790, 19.040449, 28.878599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314760, 19.360449, 28.685875>,  <20.228943, 19.552448, 28.570240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314760, 19.360449, 28.685875>,  <20.457790, 19.040449, 28.878599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314760, 19.360449, 28.685875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230907, -0.575638, -0.784425,
		-0.904888, -0.169236, 0.390559,
		-0.357574, 0.800000, -0.481810,
		20.207487, 19.600449, 28.541332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881210, 18.759340, 28.531792>,  <20.457790, 19.040449, 28.878599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881210, 18.759340, 28.531792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970284, 19.105625, 28.352480>,  <20.023727, 19.313396, 28.244892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970284, 19.105625, 28.352480>,  <19.881210, 18.759340, 28.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970284, 19.105625, 28.352480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221482, -0.402879, -0.888051,
		-0.949399, 0.297041, 0.102024,
		0.222684, 0.865711, -0.448282,
		20.037088, 19.365339, 28.217995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437944, 18.723526, 28.029173>,  <19.881210, 18.759340, 28.531792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437944, 18.723526, 28.029173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658052, 19.035686, 27.910398>,  <19.790117, 19.222982, 27.839134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658052, 19.035686, 27.910398>,  <19.437944, 18.723526, 28.029173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658052, 19.035686, 27.910398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296688, -0.149673, -0.943173,
		-0.780499, 0.607098, 0.149175,
		0.550271, 0.780403, -0.296938,
		19.823133, 19.269808, 27.821318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004049, 19.200924, 27.740240>,  <19.437944, 18.723526, 28.029173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004049, 19.200924, 27.740240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348083, 19.299679, 27.561668>,  <19.554504, 19.358932, 27.454525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348083, 19.299679, 27.561668>,  <19.004049, 19.200924, 27.740240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348083, 19.299679, 27.561668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417182, -0.163286, -0.894034,
		-0.293622, 0.955188, -0.037442,
		0.860085, 0.246888, -0.446431,
		19.606110, 19.373745, 27.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883669, 19.778479, 27.150436>,  <19.004049, 19.200924, 27.740240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.883669, 19.778479, 27.150436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216259, 19.560650, 27.106457>,  <19.415813, 19.429953, 27.080069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216259, 19.560650, 27.106457>,  <18.883669, 19.778479, 27.150436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216259, 19.560650, 27.106457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357677, -0.373297, -0.855988,
		0.425104, 0.751060, -0.505169,
		0.831476, -0.544572, -0.109947,
		19.465702, 19.397278, 27.073473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965862, 19.762163, 26.446030>,  <18.883669, 19.778479, 27.150436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965862, 19.762163, 26.446030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219152, 19.475460, 26.562843>,  <19.371126, 19.303438, 26.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219152, 19.475460, 26.562843>,  <18.965862, 19.762163, 26.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219152, 19.475460, 26.562843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328113, -0.590341, -0.737455,
		0.700976, 0.371155, -0.608997,
		0.633225, -0.716758, 0.292034,
		19.409121, 19.260433, 26.650454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291014, 19.565746, 25.789576>,  <18.965862, 19.762163, 26.446030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291014, 19.565746, 25.789576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330776, 19.283352, 26.070063>,  <19.354633, 19.113916, 26.238354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330776, 19.283352, 26.070063>,  <19.291014, 19.565746, 25.789576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330776, 19.283352, 26.070063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384766, -0.677162, -0.627222,
		0.917646, -0.207454, -0.338953,
		0.099407, -0.705985, 0.701216,
		19.360598, 19.071556, 26.280428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516079, 18.963472, 25.452438>,  <19.291014, 19.565746, 25.789576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516079, 18.963472, 25.452438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.345066, 18.832989, 25.789675>,  <19.242458, 18.754698, 25.992016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.345066, 18.832989, 25.789675>,  <19.516079, 18.963472, 25.452438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345066, 18.832989, 25.789675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501833, -0.690083, -0.521488,
		0.751919, -0.646043, 0.131328,
		-0.427531, -0.326212, 0.843092,
		19.216806, 18.735125, 26.042603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743593, 18.239506, 25.506884>,  <19.516079, 18.963472, 25.452438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743593, 18.239506, 25.506884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401047, 18.297228, 25.705202>,  <19.195518, 18.331861, 25.824194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401047, 18.297228, 25.705202>,  <19.743593, 18.239506, 25.506884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401047, 18.297228, 25.705202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450129, -0.679109, -0.579824,
		0.253030, -0.719713, 0.646521,
		-0.856364, 0.144305, 0.495798,
		19.144136, 18.340519, 25.853941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360346, 17.688211, 25.295616>,  <19.743593, 18.239506, 25.506884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360346, 17.688211, 25.295616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073839, 17.900524, 25.476826>,  <18.901936, 18.027912, 25.585552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073839, 17.900524, 25.476826>,  <19.360346, 17.688211, 25.295616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073839, 17.900524, 25.476826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692864, -0.618206, -0.371161,
		0.083058, -0.579736, 0.810560,
		-0.716269, 0.530779, 0.453026,
		18.858959, 18.059757, 25.612734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991842, 17.175402, 25.669203>,  <19.360346, 17.688211, 25.295616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991842, 17.175402, 25.669203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763794, 17.500778, 25.623116>,  <18.626965, 17.696005, 25.595463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763794, 17.500778, 25.623116>,  <18.991842, 17.175402, 25.669203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763794, 17.500778, 25.623116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680830, -0.546283, -0.487898,
		-0.459819, -0.199716, 0.865263,
		-0.570120, 0.813442, -0.115219,
		18.592758, 17.744810, 25.588549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370939, 16.993889, 25.977873>,  <18.991842, 17.175402, 25.669203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370939, 16.993889, 25.977873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311096, 17.288761, 25.714304>,  <18.275190, 17.465685, 25.556162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311096, 17.288761, 25.714304>,  <18.370939, 16.993889, 25.977873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311096, 17.288761, 25.714304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693505, -0.553243, -0.461490,
		-0.704747, 0.387923, 0.594010,
		-0.149609, 0.737182, -0.658923,
		18.266212, 17.509916, 25.516626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656719, 17.023384, 25.801136>,  <18.370939, 16.993889, 25.977873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656719, 17.023384, 25.801136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821987, 17.199654, 25.482365>,  <17.921148, 17.305416, 25.291101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821987, 17.199654, 25.482365>,  <17.656719, 17.023384, 25.801136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821987, 17.199654, 25.482365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679789, -0.433057, -0.591903,
		-0.605952, 0.786300, 0.120639,
		0.413170, 0.440674, -0.796930,
		17.945938, 17.331856, 25.243286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059853, 17.250628, 25.502684>,  <17.656719, 17.023384, 25.801136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059853, 17.250628, 25.502684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350996, 17.245636, 25.228437>,  <17.525681, 17.242641, 25.063890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350996, 17.245636, 25.228437>,  <17.059853, 17.250628, 25.502684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350996, 17.245636, 25.228437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636888, -0.382891, -0.669155,
		-0.254164, 0.923709, -0.286638,
		0.727856, -0.012481, -0.685616,
		17.569353, 17.241892, 25.022753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809252, 17.488272, 24.811832>,  <17.059853, 17.250628, 25.502684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809252, 17.488272, 24.811832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146683, 17.323189, 24.674402>,  <17.349142, 17.224138, 24.591944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146683, 17.323189, 24.674402>,  <16.809252, 17.488272, 24.811832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146683, 17.323189, 24.674402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522812, -0.485071, -0.700980,
		0.122642, 0.770959, -0.624965,
		0.843580, -0.412709, -0.343576,
		17.399757, 17.199377, 24.571329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876152, 17.624134, 24.011894>,  <16.809252, 17.488272, 24.811832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876152, 17.624134, 24.011894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088186, 17.303831, 24.123463>,  <17.215406, 17.111649, 24.190403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088186, 17.303831, 24.123463>,  <16.876152, 17.624134, 24.011894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088186, 17.303831, 24.123463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494837, -0.559244, -0.665118,
		0.688583, 0.214549, -0.692692,
		0.530084, -0.800759, 0.278919,
		17.247211, 17.063604, 24.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089855, 17.371769, 23.364138>,  <16.876152, 17.624134, 24.011894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089855, 17.371769, 23.364138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146832, 17.065773, 23.615374>,  <17.181017, 16.882175, 23.766115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146832, 17.065773, 23.615374>,  <17.089855, 17.371769, 23.364138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146832, 17.065773, 23.615374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463004, -0.612353, -0.640821,
		0.874836, -0.199529, -0.441418,
		0.142442, -0.764992, 0.628091,
		17.189564, 16.836275, 23.803801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462572, 16.963928, 23.013367>,  <17.089855, 17.371769, 23.364138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462572, 16.963928, 23.013367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260773, 16.755268, 23.288572>,  <17.139692, 16.630072, 23.453695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260773, 16.755268, 23.288572>,  <17.462572, 16.963928, 23.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260773, 16.755268, 23.288572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424691, -0.543868, -0.723771,
		0.751743, -0.657336, 0.052842,
		-0.504500, -0.521648, 0.688014,
		17.109423, 16.598774, 23.494976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.398203, 16.378187, 22.688715>,  <17.462572, 16.963928, 23.013367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.398203, 16.378187, 22.688715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136673, 16.313602, 22.984402>,  <16.979755, 16.274853, 23.161814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136673, 16.313602, 22.984402>,  <17.398203, 16.378187, 22.688715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136673, 16.313602, 22.984402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538490, -0.587027, -0.604507,
		0.531544, -0.793303, 0.296869,
		-0.653827, -0.161461, 0.739216,
		16.940525, 16.265163, 23.206167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252443, 15.626132, 22.786558>,  <17.398203, 16.378187, 22.688715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252443, 15.626132, 22.786558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942049, 15.843637, 22.914412>,  <16.755812, 15.974141, 22.991123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942049, 15.843637, 22.914412>,  <17.252443, 15.626132, 22.786558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942049, 15.843637, 22.914412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576664, -0.406305, -0.708784,
		-0.255543, -0.734327, 0.628857,
		-0.775988, 0.543764, 0.319632,
		16.709253, 16.006767, 23.010302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727625, 15.198603, 22.645430>,  <17.252443, 15.626132, 22.786558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727625, 15.198603, 22.645430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.510986, 15.525304, 22.725018>,  <16.381004, 15.721325, 22.772770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.510986, 15.525304, 22.725018>,  <16.727625, 15.198603, 22.645430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510986, 15.525304, 22.725018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732411, -0.342285, -0.588571,
		-0.412615, -0.464491, 0.783579,
		-0.541593, 0.816755, 0.198967,
		16.348507, 15.770329, 22.784708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018700, 14.940106, 22.785379>,  <16.727625, 15.198603, 22.645430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018700, 14.940106, 22.785379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988512, 15.325370, 22.682127>,  <15.970399, 15.556528, 22.620176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988512, 15.325370, 22.682127>,  <16.018700, 14.940106, 22.785379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988512, 15.325370, 22.682127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570230, -0.254051, -0.781214,
		-0.818011, 0.088236, 0.568395,
		-0.075470, 0.963158, -0.258131,
		15.965871, 15.614317, 22.604687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234018, 14.925066, 22.830580>,  <16.018700, 14.940106, 22.785379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234018, 14.925066, 22.830580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370721, 15.264213, 22.668432>,  <15.452743, 15.467701, 22.571144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370721, 15.264213, 22.668432>,  <15.234018, 14.925066, 22.830580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370721, 15.264213, 22.668432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549306, -0.169769, -0.818194,
		-0.762539, 0.502295, 0.407719,
		0.341757, 0.847867, -0.405369,
		15.473248, 15.518573, 22.546822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611451, 15.317434, 22.651539>,  <15.234018, 14.925066, 22.830580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611451, 15.317434, 22.651539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899172, 15.445999, 22.405190>,  <15.071804, 15.523138, 22.257380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899172, 15.445999, 22.405190>,  <14.611451, 15.317434, 22.651539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899172, 15.445999, 22.405190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577543, -0.216011, -0.787264,
		-0.386071, 0.921973, 0.030253,
		0.719301, 0.321412, -0.615874,
		15.114962, 15.542423, 22.220427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235096, 15.811673, 22.206284>,  <14.611451, 15.317434, 22.651539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235096, 15.811673, 22.206284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564752, 15.718568, 21.999744>,  <14.762545, 15.662704, 21.875820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564752, 15.718568, 21.999744>,  <14.235096, 15.811673, 22.206284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564752, 15.718568, 21.999744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516531, 0.065127, -0.853788,
		0.232358, 0.970351, -0.066555,
		0.824139, -0.232762, -0.516349,
		14.811994, 15.648739, 21.844839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282533, 16.273666, 21.636345>,  <14.235096, 15.811673, 22.206284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.282533, 16.273666, 21.636345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.533801, 15.981618, 21.528772>,  <14.684563, 15.806389, 21.464230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.533801, 15.981618, 21.528772>,  <14.282533, 16.273666, 21.636345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.533801, 15.981618, 21.528772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548909, -0.170881, -0.818229,
		0.551452, 0.661606, -0.508113,
		0.628172, -0.730122, -0.268929,
		14.722253, 15.762582, 21.448093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576997, 16.524385, 20.965597>,  <14.282533, 16.273666, 21.636345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576997, 16.524385, 20.965597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589928, 16.126451, 21.004084>,  <14.597686, 15.887691, 21.027176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589928, 16.126451, 21.004084>,  <14.576997, 16.524385, 20.965597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589928, 16.126451, 21.004084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432174, -0.100714, -0.896149,
		0.901211, -0.012611, -0.433198,
		0.032328, -0.994836, 0.096214,
		14.599626, 15.828001, 21.032948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814884, 16.336018, 20.328064>,  <14.576997, 16.524385, 20.965597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814884, 16.336018, 20.328064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662974, 15.998119, 20.478889>,  <14.571829, 15.795381, 20.569386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662974, 15.998119, 20.478889>,  <14.814884, 16.336018, 20.328064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662974, 15.998119, 20.478889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535897, -0.131345, -0.834004,
		0.754046, -0.518800, -0.402816,
		-0.379774, -0.844745, 0.377064,
		14.549042, 15.744696, 20.592009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.014812, 15.831254, 19.852045>,  <14.814884, 16.336018, 20.328064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.014812, 15.831254, 19.852045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.713168, 15.691544, 20.074512>,  <14.532182, 15.607718, 20.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.713168, 15.691544, 20.074512>,  <15.014812, 15.831254, 19.852045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.713168, 15.691544, 20.074512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475600, -0.293567, -0.829230,
		0.452904, -0.889845, 0.055265,
		-0.754110, -0.349277, 0.556168,
		14.486935, 15.586761, 20.241364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816253, 15.202936, 19.467646>,  <15.014812, 15.831254, 19.852045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816253, 15.202936, 19.467646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507915, 15.319602, 19.694178>,  <14.322913, 15.389602, 19.830097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507915, 15.319602, 19.694178>,  <14.816253, 15.202936, 19.467646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507915, 15.319602, 19.694178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633449, -0.256884, -0.729900,
		-0.067405, -0.921381, 0.382772,
		-0.770843, 0.291665, 0.566332,
		14.276663, 15.407102, 19.864077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.584590, 15.150113, 19.477831>,  <14.816253, 15.202936, 19.467646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.584590, 15.150113, 19.477831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838133, 15.074305, 19.177881>,  <15.990258, 15.028819, 18.997911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838133, 15.074305, 19.177881>,  <15.584590, 15.150113, 19.477831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838133, 15.074305, 19.177881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770712, 0.073241, 0.632961,
		-0.065039, -0.979141, 0.192491,
		0.633856, -0.189522, -0.749872,
		16.028290, 15.017448, 18.952919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011904, 14.677710, 19.714979>,  <15.584590, 15.150113, 19.477831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011904, 14.677710, 19.714979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241478, 14.847770, 19.435022>,  <16.379223, 14.949805, 19.267048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241478, 14.847770, 19.435022>,  <16.011904, 14.677710, 19.714979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241478, 14.847770, 19.435022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739743, 0.097428, 0.665799,
		0.351253, -0.899864, -0.258584,
		0.573935, 0.425150, -0.699890,
		16.413658, 14.975314, 19.225056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683403, 14.454851, 19.930832>,  <16.011904, 14.677710, 19.714979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683403, 14.454851, 19.930832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.744810, 14.767947, 19.689585>,  <16.781654, 14.955805, 19.544836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.744810, 14.767947, 19.689585>,  <16.683403, 14.454851, 19.930832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744810, 14.767947, 19.689585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851910, 0.204421, 0.482143,
		0.500683, -0.587819, -0.635441,
		0.153515, 0.782739, -0.603119,
		16.790865, 15.002769, 19.508650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367538, 14.476525, 19.681259>,  <16.683403, 14.454851, 19.930832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367538, 14.476525, 19.681259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276558, 14.863999, 19.641436>,  <17.221970, 15.096484, 19.617540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276558, 14.863999, 19.641436>,  <17.367538, 14.476525, 19.681259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276558, 14.863999, 19.641436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891850, 0.248273, 0.378105,
		0.390983, -0.002791, -0.920394,
		-0.227453, 0.968686, -0.099560,
		17.208323, 15.154605, 19.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011265, 14.733858, 19.514563>,  <17.367538, 14.476525, 19.681259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011265, 14.733858, 19.514563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774027, 15.033931, 19.631500>,  <17.631683, 15.213974, 19.701664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774027, 15.033931, 19.631500>,  <18.011265, 14.733858, 19.514563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774027, 15.033931, 19.631500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760893, 0.403547, 0.508126,
		0.263212, 0.523810, -0.810150,
		-0.593095, 0.750181, 0.292345,
		17.596098, 15.258986, 19.719204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421106, 15.366510, 19.444143>,  <18.011265, 14.733858, 19.514563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421106, 15.366510, 19.444143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129486, 15.487966, 19.689514>,  <17.954514, 15.560839, 19.836737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129486, 15.487966, 19.689514>,  <18.421106, 15.366510, 19.444143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129486, 15.487966, 19.689514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671906, 0.488354, 0.556824,
		-0.130496, 0.818116, -0.560051,
		-0.729050, 0.303638, 0.613425,
		17.910770, 15.579057, 19.873541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389727, 16.145325, 19.391628>,  <18.421106, 15.366510, 19.444143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389727, 16.145325, 19.391628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204205, 16.051476, 19.733351>,  <18.092892, 15.995167, 19.938385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204205, 16.051476, 19.733351>,  <18.389727, 16.145325, 19.391628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204205, 16.051476, 19.733351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586172, 0.641781, 0.494489,
		-0.664295, 0.730116, -0.160133,
		-0.463805, -0.234621, 0.854306,
		18.065063, 15.981090, 19.989643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371845, 16.747747, 19.687454>,  <18.389727, 16.145325, 19.391628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371845, 16.747747, 19.687454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337826, 16.480740, 19.983343>,  <18.317415, 16.320536, 20.160875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337826, 16.480740, 19.983343>,  <18.371845, 16.747747, 19.687454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337826, 16.480740, 19.983343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672506, 0.509339, 0.536944,
		-0.735189, 0.543132, 0.405592,
		-0.085048, -0.667519, 0.739720,
		18.312311, 16.280483, 20.205259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223675, 17.127142, 20.260015>,  <18.371845, 16.747747, 19.687454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223675, 17.127142, 20.260015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331179, 16.791716, 20.449574>,  <18.395681, 16.590460, 20.563309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331179, 16.791716, 20.449574>,  <18.223675, 17.127142, 20.260015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331179, 16.791716, 20.449574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454898, 0.544176, 0.704940,
		-0.849021, 0.026115, 0.527714,
		0.268759, -0.838565, 0.473896,
		18.411806, 16.540146, 20.591742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145447, 17.198948, 20.942089>,  <18.223675, 17.127142, 20.260015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145447, 17.198948, 20.942089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402584, 16.892550, 20.941713>,  <18.556866, 16.708710, 20.941488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402584, 16.892550, 20.941713>,  <18.145447, 17.198948, 20.942089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402584, 16.892550, 20.941713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403947, 0.337961, 0.850065,
		-0.650831, -0.546836, 0.526678,
		0.642843, -0.765998, -0.000938,
		18.595436, 16.662750, 20.941433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240574, 17.102230, 21.671009>,  <18.145447, 17.198948, 20.942089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240574, 17.102230, 21.671009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.550634, 16.902618, 21.516033>,  <18.736671, 16.782852, 21.423048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.550634, 16.902618, 21.516033>,  <18.240574, 17.102230, 21.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550634, 16.902618, 21.516033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582327, 0.326522, 0.744499,
		-0.245018, -0.802717, 0.543702,
		0.775152, -0.499028, -0.387440,
		18.783180, 16.752911, 21.399801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501537, 16.810959, 22.161308>,  <18.240574, 17.102230, 21.671009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501537, 16.810959, 22.161308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803959, 16.809256, 21.899509>,  <18.985411, 16.808233, 21.742430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803959, 16.809256, 21.899509>,  <18.501537, 16.810959, 22.161308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803959, 16.809256, 21.899509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642673, 0.194159, 0.741130,
		0.123920, -0.980961, 0.149531,
		0.756053, -0.004259, -0.654497,
		19.030775, 16.807980, 21.703159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026426, 16.451433, 22.400358>,  <18.501537, 16.810959, 22.161308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026426, 16.451433, 22.400358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206392, 16.691858, 22.136147>,  <19.314371, 16.836113, 21.977619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206392, 16.691858, 22.136147>,  <19.026426, 16.451433, 22.400358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206392, 16.691858, 22.136147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679916, 0.249016, 0.689714,
		0.579045, -0.759416, -0.296637,
		0.449913, 0.601064, -0.660531,
		19.341366, 16.872177, 21.937986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703007, 16.361193, 22.530954>,  <19.026426, 16.451433, 22.400358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703007, 16.361193, 22.530954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.713648, 16.707027, 22.330242>,  <19.720032, 16.914528, 22.209814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.713648, 16.707027, 22.330242>,  <19.703007, 16.361193, 22.530954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.713648, 16.707027, 22.330242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722766, 0.330131, 0.607144,
		0.690581, -0.378823, -0.616110,
		0.026603, 0.864585, -0.501782,
		19.721628, 16.966402, 22.179708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.413069, 16.518518, 22.327557>,  <19.703007, 16.361193, 22.530954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.413069, 16.518518, 22.327557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233290, 16.875784, 22.333941>,  <20.125422, 17.090143, 22.337770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233290, 16.875784, 22.333941>,  <20.413069, 16.518518, 22.327557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233290, 16.875784, 22.333941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653315, 0.316464, 0.687772,
		0.609243, 0.319544, -0.725751,
		-0.449447, 0.893164, 0.015959,
		20.098455, 17.143734, 22.338728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987556, 17.041164, 22.265581>,  <20.413069, 16.518518, 22.327557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987556, 17.041164, 22.265581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.662695, 17.232336, 22.399441>,  <20.467777, 17.347038, 22.479757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.662695, 17.232336, 22.399441>,  <20.987556, 17.041164, 22.265581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662695, 17.232336, 22.399441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571066, 0.533644, 0.623785,
		0.119540, 0.697717, -0.706329,
		-0.812154, 0.477928, 0.334651,
		20.419048, 17.375715, 22.499836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253178, 17.706438, 22.419235>,  <20.987556, 17.041164, 22.265581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253178, 17.706438, 22.419235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.907921, 17.651546, 22.613617>,  <20.700766, 17.618610, 22.730246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.907921, 17.651546, 22.613617>,  <21.253178, 17.706438, 22.419235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907921, 17.651546, 22.613617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335050, 0.564360, 0.754480,
		-0.377791, 0.814043, -0.441144,
		-0.863143, -0.137230, 0.485955,
		20.648977, 17.610378, 22.759403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884981, 18.415972, 22.580324>,  <21.253178, 17.706438, 22.419235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884981, 18.415972, 22.580324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739122, 18.159132, 22.850061>,  <20.651608, 18.005028, 23.011904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739122, 18.159132, 22.850061>,  <20.884981, 18.415972, 22.580324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739122, 18.159132, 22.850061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307703, 0.600428, 0.738109,
		-0.878835, 0.476648, -0.021369,
		-0.364648, -0.642100, 0.674344,
		20.629728, 17.966501, 23.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733583, 18.871918, 23.123163>,  <20.884981, 18.415972, 22.580324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733583, 18.871918, 23.123163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719589, 18.506662, 23.285622>,  <20.711193, 18.287510, 23.383097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719589, 18.506662, 23.285622>,  <20.733583, 18.871918, 23.123163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719589, 18.506662, 23.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206833, 0.390982, 0.896857,
		-0.977751, 0.115382, 0.175188,
		-0.034986, -0.913137, 0.406147,
		20.709093, 18.232721, 23.407465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340015, 19.007795, 23.822870>,  <20.733583, 18.871918, 23.123163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340015, 19.007795, 23.822870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566643, 18.679924, 23.856636>,  <20.702620, 18.483202, 23.876896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566643, 18.679924, 23.856636>,  <20.340015, 19.007795, 23.822870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566643, 18.679924, 23.856636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403038, 0.365015, 0.839240,
		-0.718720, -0.441466, 0.537168,
		0.566570, -0.819678, 0.084417,
		20.736614, 18.434021, 23.881962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223614, 18.734083, 24.381256>,  <20.340015, 19.007795, 23.822870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223614, 18.734083, 24.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.593847, 18.603666, 24.304325>,  <20.815987, 18.525417, 24.258165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.593847, 18.603666, 24.304325>,  <20.223614, 18.734083, 24.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593847, 18.603666, 24.304325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336582, 0.476350, 0.812283,
		-0.173222, -0.816571, 0.550642,
		0.925584, -0.326042, -0.192329,
		20.871523, 18.505854, 24.246626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491184, 18.523737, 25.086632>,  <20.223614, 18.734083, 24.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491184, 18.523737, 25.086632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819946, 18.545012, 24.859776>,  <21.017202, 18.557775, 24.723661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819946, 18.545012, 24.859776>,  <20.491184, 18.523737, 25.086632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819946, 18.545012, 24.859776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489681, 0.442678, 0.751165,
		0.291011, -0.895102, 0.337795,
		0.821903, 0.053185, -0.567138,
		21.066517, 18.560966, 24.689634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045921, 18.232824, 25.398706>,  <20.491184, 18.523737, 25.086632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045921, 18.232824, 25.398706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210423, 18.490623, 25.140873>,  <21.309124, 18.645304, 24.986172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210423, 18.490623, 25.140873>,  <21.045921, 18.232824, 25.398706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210423, 18.490623, 25.140873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555755, 0.383222, 0.737751,
		0.722500, -0.661635, -0.200581,
		0.411255, 0.644499, -0.644585,
		21.333799, 18.683973, 24.947498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642239, 18.369091, 25.654207>,  <21.045921, 18.232824, 25.398706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642239, 18.369091, 25.654207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659515, 18.653919, 25.373896>,  <21.669882, 18.824816, 25.205709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659515, 18.653919, 25.373896>,  <21.642239, 18.369091, 25.654207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659515, 18.653919, 25.373896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550138, 0.568558, 0.611629,
		0.833956, -0.411943, -0.367179,
		0.043194, 0.712071, -0.700778,
		21.672474, 18.867540, 25.163662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278271, 18.710926, 25.919352>,  <21.642239, 18.369091, 25.654207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278271, 18.710926, 25.919352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.138514, 18.970203, 25.648716>,  <22.054659, 19.125769, 25.486336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.138514, 18.970203, 25.648716>,  <22.278271, 18.710926, 25.919352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138514, 18.970203, 25.648716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483216, 0.743316, 0.462584,
		0.802761, -0.165314, -0.572927,
		-0.349394, 0.648193, -0.676587,
		22.033695, 19.164661, 25.445740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780266, 19.065861, 25.834158>,  <22.278271, 18.710926, 25.919352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780266, 19.065861, 25.834158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.475351, 19.307989, 25.742498>,  <22.292402, 19.453266, 25.687504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.475351, 19.307989, 25.742498>,  <22.780266, 19.065861, 25.834158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.475351, 19.307989, 25.742498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389706, 0.711916, 0.584213,
		0.516769, 0.356037, -0.778580,
		-0.762285, 0.605321, -0.229147,
		22.246666, 19.489586, 25.673754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.080570, 19.650471, 25.604618>,  <22.780266, 19.065861, 25.834158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.080570, 19.650471, 25.604618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720869, 19.692844, 25.774384>,  <22.505049, 19.718267, 25.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720869, 19.692844, 25.774384>,  <23.080570, 19.650471, 25.604618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720869, 19.692844, 25.774384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345479, 0.767116, 0.540534,
		-0.268314, 0.632702, -0.726427,
		-0.899251, 0.105933, 0.424413,
		22.451094, 19.724625, 25.901707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972591, 20.415674, 25.669147>,  <23.080570, 19.650471, 25.604618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972591, 20.415674, 25.669147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.736399, 20.251696, 25.947220>,  <22.594683, 20.153309, 26.114063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.736399, 20.251696, 25.947220>,  <22.972591, 20.415674, 25.669147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.736399, 20.251696, 25.947220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350549, 0.645602, 0.678464,
		-0.726942, 0.644317, -0.237511,
		-0.590483, -0.409945, 0.695180,
		22.559254, 20.128712, 26.155773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628643, 20.963926, 25.993046>,  <22.972591, 20.415674, 25.669147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628643, 20.963926, 25.993046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611275, 20.650276, 26.240679>,  <22.600853, 20.462086, 26.389259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611275, 20.650276, 26.240679>,  <22.628643, 20.963926, 25.993046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611275, 20.650276, 26.240679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153499, 0.607073, 0.779679,
		-0.987194, 0.128883, 0.094003,
		-0.043421, -0.784124, 0.619083,
		22.598249, 20.415039, 26.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135509, 21.233324, 26.539995>,  <22.628643, 20.963926, 25.993046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.135509, 21.233324, 26.539995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354744, 20.931662, 26.684687>,  <22.486284, 20.750664, 26.771502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354744, 20.931662, 26.684687>,  <22.135509, 21.233324, 26.539995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354744, 20.931662, 26.684687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108537, 0.492943, 0.863265,
		-0.829350, -0.433882, 0.352029,
		0.548086, -0.754157, 0.361730,
		22.519169, 20.705414, 26.793205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.969864, 21.251450, 27.252331>,  <22.135509, 21.233324, 26.539995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.969864, 21.251450, 27.252331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304913, 21.035488, 27.219112>,  <22.505941, 20.905912, 27.199183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304913, 21.035488, 27.219112>,  <21.969864, 21.251450, 27.252331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304913, 21.035488, 27.219112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396639, 0.496607, 0.772048,
		-0.375591, -0.679622, 0.630115,
		0.837621, -0.539903, -0.083044,
		22.556198, 20.873518, 27.194199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.236252, 21.048090, 27.860754>,  <21.969864, 21.251450, 27.252331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.236252, 21.048090, 27.860754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575155, 21.048138, 27.648281>,  <22.778498, 21.048166, 27.520798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575155, 21.048138, 27.648281>,  <22.236252, 21.048090, 27.860754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575155, 21.048138, 27.648281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425541, 0.598346, 0.678894,
		0.317911, -0.801238, 0.506902,
		0.847259, 0.000120, -0.531181,
		22.829332, 21.048174, 27.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.794172, 20.810411, 28.244930>,  <22.236252, 21.048090, 27.860754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.794172, 20.810411, 28.244930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951969, 21.047625, 27.964163>,  <23.046646, 21.189953, 27.795702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951969, 21.047625, 27.964163>,  <22.794172, 20.810411, 28.244930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951969, 21.047625, 27.964163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471723, 0.524834, 0.708539,
		0.788578, -0.610622, -0.072706,
		0.394491, 0.593035, -0.701917,
		23.070316, 21.225534, 27.753588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.548140, 20.844635, 28.268749>,  <22.794172, 20.810411, 28.244930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.548140, 20.844635, 28.268749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392683, 21.181677, 28.119631>,  <23.299410, 21.383902, 28.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392683, 21.181677, 28.119631>,  <23.548140, 20.844635, 28.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.392683, 21.181677, 28.119631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424217, 0.522803, 0.739404,
		0.817923, 0.129216, -0.560629,
		-0.388641, 0.842603, -0.372797,
		23.276091, 21.434458, 28.007792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046919, 21.220728, 28.320284>,  <23.548140, 20.844635, 28.268749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046919, 21.220728, 28.320284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.744436, 21.478678, 28.275936>,  <23.562946, 21.633448, 28.249327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.744436, 21.478678, 28.275936>,  <24.046919, 21.220728, 28.320284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.744436, 21.478678, 28.275936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398832, 0.588587, 0.703205,
		0.518736, 0.487548, -0.702289,
		-0.756205, 0.644873, -0.110871,
		23.517574, 21.672140, 28.242674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193645, 21.985788, 28.218607>,  <24.046919, 21.220728, 28.320284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193645, 21.985788, 28.218607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827364, 21.991520, 28.379246>,  <23.607595, 21.994959, 28.475630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827364, 21.991520, 28.379246>,  <24.193645, 21.985788, 28.218607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.827364, 21.991520, 28.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319307, 0.632713, 0.705490,
		-0.243986, 0.774253, -0.583954,
		-0.915704, 0.014331, 0.401598,
		23.552652, 21.995819, 28.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046436, 22.652843, 28.266109>,  <24.193645, 21.985788, 28.218607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046436, 22.652843, 28.266109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.836700, 22.454447, 28.542967>,  <23.710859, 22.335409, 28.709082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.836700, 22.454447, 28.542967>,  <24.046436, 22.652843, 28.266109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.836700, 22.454447, 28.542967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046230, 0.795062, 0.604764,
		-0.850253, 0.349100, -0.393954,
		-0.524341, -0.495990, 0.692142,
		23.679398, 22.305651, 28.750610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.453199, 23.140675, 28.466000>,  <24.046436, 22.652843, 28.266109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.453199, 23.140675, 28.466000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573721, 22.868757, 28.733459>,  <23.646034, 22.705606, 28.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573721, 22.868757, 28.733459>,  <23.453199, 23.140675, 28.466000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573721, 22.868757, 28.733459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158701, 0.727210, 0.667817,
		-0.940228, -0.095101, 0.326996,
		0.301305, -0.679795, 0.668651,
		23.664112, 22.664820, 28.934055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.058657, 23.783419, 28.185144>,  <23.453199, 23.140675, 28.466000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.058657, 23.783419, 28.185144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329039, 23.981558, 27.966890>,  <23.491268, 24.100441, 27.835938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329039, 23.981558, 27.966890>,  <23.058657, 23.783419, 28.185144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329039, 23.981558, 27.966890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203826, -0.585853, -0.784367,
		-0.708196, 0.641410, -0.295045,
		0.675953, 0.495348, -0.545635,
		23.531824, 24.130163, 27.803200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.757523, 23.944630, 27.576611>,  <23.058657, 23.783419, 28.185144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.757523, 23.944630, 27.576611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143629, 23.984018, 27.479813>,  <23.375294, 24.007650, 27.421734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143629, 23.984018, 27.479813>,  <22.757523, 23.944630, 27.576611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143629, 23.984018, 27.479813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168227, -0.474433, -0.864068,
		-0.199896, 0.874767, -0.441390,
		0.965268, 0.098470, -0.241996,
		23.433208, 24.013559, 27.407213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643042, 24.117756, 26.947491>,  <22.757523, 23.944630, 27.576611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643042, 24.117756, 26.947491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017365, 23.978928, 26.972157>,  <23.241959, 23.895630, 26.986956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017365, 23.978928, 26.972157>,  <22.643042, 24.117756, 26.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.017365, 23.978928, 26.972157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093826, -0.413871, -0.905488,
		0.339790, 0.841578, -0.419868,
		0.935809, -0.347070, 0.061667,
		23.298107, 23.874807, 26.990656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007374, 24.265085, 26.424829>,  <22.643042, 24.117756, 26.947491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007374, 24.265085, 26.424829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232002, 23.951155, 26.529661>,  <23.366779, 23.762796, 26.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232002, 23.951155, 26.529661>,  <23.007374, 24.265085, 26.424829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232002, 23.951155, 26.529661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069861, -0.270635, -0.960144,
		0.824473, 0.557499, -0.097152,
		0.561572, -0.784826, 0.262078,
		23.400475, 23.715708, 26.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485012, 24.289242, 25.877563>,  <23.007374, 24.265085, 26.424829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485012, 24.289242, 25.877563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.500154, 23.918617, 26.027258>,  <23.509239, 23.696243, 26.117075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.500154, 23.918617, 26.027258>,  <23.485012, 24.289242, 25.877563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.500154, 23.918617, 26.027258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063261, -0.371532, -0.926262,
		0.997279, 0.058740, 0.044550,
		0.037857, -0.926560, 0.374237,
		23.511511, 23.640650, 26.139528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043938, 23.939413, 25.468349>,  <23.485012, 24.289242, 25.877563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043938, 23.939413, 25.468349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835310, 23.640772, 25.633537>,  <23.710133, 23.461586, 25.732651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835310, 23.640772, 25.633537>,  <24.043938, 23.939413, 25.468349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.835310, 23.640772, 25.633537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114724, -0.540994, -0.833165,
		0.845460, -0.387177, 0.367820,
		-0.521571, -0.746605, 0.412970,
		23.678839, 23.416790, 25.757429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408180, 23.350962, 25.278601>,  <24.043938, 23.939413, 25.468349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408180, 23.350962, 25.278601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049646, 23.213428, 25.390577>,  <23.834526, 23.130909, 25.457764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049646, 23.213428, 25.390577>,  <24.408180, 23.350962, 25.278601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049646, 23.213428, 25.390577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093442, -0.763685, -0.638791,
		0.433425, -0.546410, 0.716644,
		-0.896333, -0.343832, 0.279942,
		23.780746, 23.110279, 25.474560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524515, 22.732353, 25.190153>,  <24.408180, 23.350962, 25.278601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524515, 22.732353, 25.190153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125956, 22.755045, 25.215355>,  <23.886820, 22.768660, 25.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125956, 22.755045, 25.215355>,  <24.524515, 22.732353, 25.190153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125956, 22.755045, 25.215355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081349, -0.849072, -0.521977,
		0.023885, -0.525223, 0.850630,
		-0.996400, 0.056731, 0.063007,
		23.827036, 22.772064, 25.234257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173765, 22.027491, 25.372971>,  <24.524515, 22.732353, 25.190153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173765, 22.027491, 25.372971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.901760, 22.240149, 25.171005>,  <23.738558, 22.367743, 25.049826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.901760, 22.240149, 25.171005>,  <24.173765, 22.027491, 25.372971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.901760, 22.240149, 25.171005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250417, -0.815639, -0.521560,
		-0.689112, -0.228228, 0.687776,
		-0.680012, 0.531644, -0.504915,
		23.697756, 22.399641, 25.019531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.694313, 21.526627, 25.240414>,  <24.173765, 22.027491, 25.372971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.694313, 21.526627, 25.240414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538872, 21.812897, 25.008278>,  <23.445606, 21.984659, 24.868996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538872, 21.812897, 25.008278>,  <23.694313, 21.526627, 25.240414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.538872, 21.812897, 25.008278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423225, -0.698111, -0.577514,
		-0.818455, 0.021191, 0.574180,
		-0.388603, 0.715676, -0.580340,
		23.422291, 22.027599, 24.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.989330, 21.381071, 25.120483>,  <23.694313, 21.526627, 25.240414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.989330, 21.381071, 25.120483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089600, 21.627680, 24.821938>,  <23.149761, 21.775644, 24.642809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089600, 21.627680, 24.821938>,  <22.989330, 21.381071, 25.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.089600, 21.627680, 24.821938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475042, -0.593436, -0.649745,
		-0.843502, 0.517431, 0.144114,
		0.250676, 0.616521, -0.746366,
		23.164803, 21.812635, 24.598028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447809, 21.464907, 24.650030>,  <22.989330, 21.381071, 25.120483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447809, 21.464907, 24.650030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.758972, 21.560354, 24.417507>,  <22.945671, 21.617622, 24.277994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.758972, 21.560354, 24.417507>,  <22.447809, 21.464907, 24.650030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758972, 21.560354, 24.417507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376134, -0.564233, -0.734959,
		-0.503368, 0.790381, -0.349169,
		0.777910, 0.238621, -0.581306,
		22.992346, 21.631941, 24.243114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169573, 21.630867, 24.030460>,  <22.447809, 21.464907, 24.650030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169573, 21.630867, 24.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550440, 21.539028, 23.949802>,  <22.778959, 21.483925, 23.901407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550440, 21.539028, 23.949802>,  <22.169573, 21.630867, 24.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550440, 21.539028, 23.949802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296828, -0.538187, -0.788827,
		0.072588, 0.810951, -0.580595,
		0.952168, -0.229596, -0.201646,
		22.836090, 21.470150, 23.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164621, 21.704605, 23.330027>,  <22.169573, 21.630867, 24.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164621, 21.704605, 23.330027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493586, 21.502352, 23.434315>,  <22.690964, 21.381001, 23.496887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493586, 21.502352, 23.434315>,  <22.164621, 21.704605, 23.330027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493586, 21.502352, 23.434315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104063, -0.584271, -0.804859,
		0.559296, 0.634793, -0.533128,
		0.822410, -0.505633, 0.260722,
		22.740309, 21.350662, 23.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499550, 21.574326, 22.765806>,  <22.164621, 21.704605, 23.330027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499550, 21.574326, 22.765806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627054, 21.274658, 22.998060>,  <22.703558, 21.094858, 23.137413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627054, 21.274658, 22.998060>,  <22.499550, 21.574326, 22.765806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627054, 21.274658, 22.998060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265857, -0.658671, -0.703899,
		0.909786, 0.070011, -0.409131,
		0.318763, -0.749167, 0.580637,
		22.722683, 21.049908, 23.172251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.022324, 21.262884, 22.380001>,  <22.499550, 21.574326, 22.765806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.022324, 21.262884, 22.380001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.874508, 21.013182, 22.655317>,  <22.785818, 20.863359, 22.820507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.874508, 21.013182, 22.655317>,  <23.022324, 21.262884, 22.380001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.874508, 21.013182, 22.655317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113183, -0.704969, -0.700149,
		0.922296, -0.336636, 0.189859,
		-0.369539, -0.624256, 0.688292,
		22.763645, 20.825905, 22.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.359859, 20.707510, 22.157867>,  <23.022324, 21.262884, 22.380001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.359859, 20.707510, 22.157867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.053885, 20.585691, 22.384892>,  <22.870300, 20.512600, 22.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.053885, 20.585691, 22.384892>,  <23.359859, 20.707510, 22.157867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053885, 20.585691, 22.384892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270952, -0.647258, -0.712490,
		0.584345, -0.698791, 0.412593,
		-0.764935, -0.304547, 0.567561,
		22.824404, 20.494328, 22.555161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.360306, 19.903055, 22.227383>,  <23.359859, 20.707510, 22.157867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.360306, 19.903055, 22.227383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990944, 20.014729, 22.332743>,  <22.769327, 20.081734, 22.395960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990944, 20.014729, 22.332743>,  <23.360306, 19.903055, 22.227383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.990944, 20.014729, 22.332743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373671, -0.810715, -0.450679,
		0.087721, -0.514584, 0.852941,
		-0.923404, 0.279185, 0.263402,
		22.713923, 20.098484, 22.411764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.086618, 19.331444, 22.403284>,  <23.360306, 19.903055, 22.227383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.086618, 19.331444, 22.403284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.785576, 19.580069, 22.316343>,  <22.604950, 19.729244, 22.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.785576, 19.580069, 22.316343>,  <23.086618, 19.331444, 22.403284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.785576, 19.580069, 22.316343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426974, -0.711949, -0.557514,
		-0.501274, -0.326785, 0.801209,
		-0.752607, 0.621563, -0.217353,
		22.559793, 19.766537, 22.251137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.544353, 18.879740, 22.481571>,  <23.086618, 19.331444, 22.403284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.544353, 18.879740, 22.481571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416708, 19.179857, 22.249977>,  <22.340120, 19.359928, 22.111021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416708, 19.179857, 22.249977>,  <22.544353, 18.879740, 22.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.416708, 19.179857, 22.249977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559208, -0.642309, -0.524143,
		-0.765150, 0.156513, 0.624540,
		-0.319113, 0.750295, -0.578986,
		22.320974, 19.404945, 22.076281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.797831, 18.922255, 22.418333>,  <22.544353, 18.879740, 22.481571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.797831, 18.922255, 22.418333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896351, 19.096592, 22.072067>,  <21.955463, 19.201195, 21.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896351, 19.096592, 22.072067>,  <21.797831, 18.922255, 22.418333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896351, 19.096592, 22.072067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752722, -0.476624, -0.454136,
		-0.610529, 0.763459, 0.210676,
		0.246301, 0.435844, -0.865665,
		21.970242, 19.227345, 21.812368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142653, 19.132732, 22.143600>,  <21.797831, 18.922255, 22.418333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142653, 19.132732, 22.143600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410986, 19.108282, 21.847967>,  <21.571987, 19.093611, 21.670588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410986, 19.108282, 21.847967>,  <21.142653, 19.132732, 22.143600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410986, 19.108282, 21.847967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682252, -0.441532, -0.582736,
		-0.290708, 0.895161, -0.337900,
		0.670836, -0.061127, -0.739082,
		21.612236, 19.089945, 21.626242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700607, 19.273552, 21.567287>,  <21.142653, 19.132732, 22.143600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700607, 19.273552, 21.567287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027288, 19.112902, 21.401543>,  <21.223297, 19.016512, 21.302095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027288, 19.112902, 21.401543>,  <20.700607, 19.273552, 21.567287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027288, 19.112902, 21.401543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559898, -0.377683, -0.737476,
		0.139693, 0.834297, -0.533324,
		0.816701, -0.401627, -0.414361,
		21.272299, 18.992413, 21.277235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670662, 19.512157, 20.834202>,  <20.700607, 19.273552, 21.567287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670662, 19.512157, 20.834202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.952974, 19.230194, 20.805988>,  <21.122362, 19.061016, 20.789061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.952974, 19.230194, 20.805988>,  <20.670662, 19.512157, 20.834202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952974, 19.230194, 20.805988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409466, -0.324659, -0.852604,
		0.578108, 0.630634, -0.517775,
		0.705782, -0.704909, -0.070535,
		21.164709, 19.018721, 20.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650566, 19.362869, 20.111198>,  <20.670662, 19.512157, 20.834202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650566, 19.362869, 20.111198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826151, 19.052265, 20.292015>,  <20.931501, 18.865902, 20.400505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826151, 19.052265, 20.292015>,  <20.650566, 19.362869, 20.111198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826151, 19.052265, 20.292015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177817, -0.568230, -0.803427,
		0.880735, 0.272294, -0.387509,
		0.438962, -0.776512, 0.452042,
		20.957840, 18.819311, 20.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131054, 19.126020, 19.640678>,  <20.650566, 19.362869, 20.111198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131054, 19.126020, 19.640678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011087, 18.830511, 19.882095>,  <20.939108, 18.653206, 20.026945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011087, 18.830511, 19.882095>,  <21.131054, 19.126020, 19.640678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011087, 18.830511, 19.882095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039201, -0.622587, -0.781568,
		0.953160, -0.258064, 0.157763,
		-0.299915, -0.738775, 0.603542,
		20.921112, 18.608879, 20.063158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.519682, 18.642178, 19.380310>,  <21.131054, 19.126020, 19.640678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.519682, 18.642178, 19.380310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223555, 18.447916, 19.566242>,  <21.045877, 18.331360, 19.677801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223555, 18.447916, 19.566242>,  <21.519682, 18.642178, 19.380310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223555, 18.447916, 19.566242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067559, -0.634201, -0.770211,
		0.668851, -0.601606, 0.436701,
		-0.740320, -0.485653, 0.464830,
		21.001459, 18.302219, 19.705690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727785, 17.993929, 19.205568>,  <21.519682, 18.642178, 19.380310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727785, 17.993929, 19.205568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350563, 17.960964, 19.334475>,  <21.124229, 17.941185, 19.411818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350563, 17.960964, 19.334475>,  <21.727785, 17.993929, 19.205568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350563, 17.960964, 19.334475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204605, -0.620151, -0.757331,
		0.262264, -0.780142, 0.567976,
		-0.943056, -0.082410, 0.322264,
		21.067646, 17.936241, 19.431154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547035, 17.232073, 19.411917>,  <21.727785, 17.993929, 19.205568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547035, 17.232073, 19.411917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230110, 17.450315, 19.302702>,  <21.039955, 17.581261, 19.237173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230110, 17.450315, 19.302702>,  <21.547035, 17.232073, 19.411917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230110, 17.450315, 19.302702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288123, -0.729080, -0.620829,
		-0.537794, -0.413224, 0.734863,
		-0.792315, 0.545609, -0.273035,
		20.992416, 17.613998, 19.220791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052410, 16.729795, 19.203920>,  <21.547035, 17.232073, 19.411917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052410, 16.729795, 19.203920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882441, 17.062689, 19.061470>,  <20.780458, 17.262424, 18.976000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882441, 17.062689, 19.061470>,  <21.052410, 16.729795, 19.203920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882441, 17.062689, 19.061470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339828, -0.511290, -0.789366,
		-0.839021, -0.214400, 0.500076,
		-0.424924, 0.832235, -0.356124,
		20.754963, 17.312359, 18.954634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365984, 16.575865, 19.071457>,  <21.052410, 16.729795, 19.203920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365984, 16.575865, 19.071457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.443701, 16.887535, 18.833084>,  <20.490332, 17.074537, 18.690060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.443701, 16.887535, 18.833084>,  <20.365984, 16.575865, 19.071457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.443701, 16.887535, 18.833084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469040, -0.459771, -0.754064,
		-0.861540, 0.426025, 0.276135,
		0.194291, 0.779175, -0.595934,
		20.501987, 17.121288, 18.654305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862755, 16.529478, 18.622215>,  <20.365984, 16.575865, 19.071457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862755, 16.529478, 18.622215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103827, 16.783855, 18.429403>,  <20.248470, 16.936481, 18.313717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103827, 16.783855, 18.429403>,  <19.862755, 16.529478, 18.622215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103827, 16.783855, 18.429403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358351, -0.324038, -0.875548,
		-0.712996, 0.700410, 0.032601,
		0.602678, 0.635945, -0.482030,
		20.284630, 16.974640, 18.284794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425529, 16.860575, 18.150822>,  <19.862755, 16.529478, 18.622215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425529, 16.860575, 18.150822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799461, 16.892223, 18.012354>,  <20.023821, 16.911213, 17.929274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799461, 16.892223, 18.012354>,  <19.425529, 16.860575, 18.150822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799461, 16.892223, 18.012354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338529, -0.095722, -0.936074,
		-0.107199, 0.992259, -0.062699,
		0.934830, 0.079121, -0.346170,
		20.079910, 16.915960, 17.908503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435635, 17.334682, 17.610056>,  <19.425529, 16.860575, 18.150822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435635, 17.334682, 17.610056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.784122, 17.153669, 17.533958>,  <19.993216, 17.045061, 17.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.784122, 17.153669, 17.533958>,  <19.435635, 17.334682, 17.610056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784122, 17.153669, 17.533958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197367, 0.031934, -0.979809,
		0.449472, 0.891176, -0.061494,
		0.871218, -0.452533, -0.190242,
		20.045488, 17.017910, 17.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662447, 17.615620, 16.940813>,  <19.435635, 17.334682, 17.610056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662447, 17.615620, 16.940813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876030, 17.279112, 16.974648>,  <20.004179, 17.077208, 16.994947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876030, 17.279112, 16.974648>,  <19.662447, 17.615620, 16.940813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876030, 17.279112, 16.974648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168219, -0.203741, -0.964465,
		0.828608, 0.500754, -0.250307,
		0.533957, -0.841270, 0.084585,
		20.036217, 17.026731, 17.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181259, 17.564739, 16.420216>,  <19.662447, 17.615620, 16.940813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181259, 17.564739, 16.420216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096056, 17.193432, 16.542162>,  <20.044933, 16.970648, 16.615330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096056, 17.193432, 16.542162>,  <20.181259, 17.564739, 16.420216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096056, 17.193432, 16.542162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253057, -0.248964, -0.934869,
		0.943711, -0.276283, -0.181874,
		-0.213008, -0.928270, 0.304865,
		20.032154, 16.914951, 16.633621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456478, 17.110826, 15.888466>,  <20.181259, 17.564739, 16.420216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456478, 17.110826, 15.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212807, 16.863846, 16.087524>,  <20.066603, 16.715658, 16.206959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212807, 16.863846, 16.087524>,  <20.456478, 17.110826, 15.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212807, 16.863846, 16.087524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209197, -0.480178, -0.851860,
		0.764942, -0.623043, 0.163346,
		-0.609181, -0.617452, 0.497647,
		20.030052, 16.678610, 16.236818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470762, 16.458437, 15.557520>,  <20.456478, 17.110826, 15.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470762, 16.458437, 15.557520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148411, 16.375729, 15.779440>,  <19.955000, 16.326103, 15.912592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148411, 16.375729, 15.779440>,  <20.470762, 16.458437, 15.557520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148411, 16.375729, 15.779440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480734, -0.318471, -0.816989,
		0.345619, -0.925106, 0.157246,
		-0.805880, -0.206773, 0.554799,
		19.906647, 16.313696, 15.945880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251842, 15.722855, 15.279457>,  <20.470762, 16.458437, 15.557520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.251842, 15.722855, 15.279457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938248, 15.904195, 15.449086>,  <19.750092, 16.012999, 15.550864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938248, 15.904195, 15.449086>,  <20.251842, 15.722855, 15.279457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938248, 15.904195, 15.449086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580075, -0.291707, -0.760540,
		-0.221083, -0.842248, 0.491670,
		-0.783987, 0.453348, 0.424075,
		19.703053, 16.040199, 15.576308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695045, 15.269270, 15.200044>,  <20.251842, 15.722855, 15.279457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695045, 15.269270, 15.200044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495178, 15.605291, 15.284557>,  <19.375257, 15.806904, 15.335266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495178, 15.605291, 15.284557>,  <19.695045, 15.269270, 15.200044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495178, 15.605291, 15.284557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693389, -0.241700, -0.678817,
		-0.519175, -0.485686, 0.703254,
		-0.499668, 0.840054, 0.211284,
		19.345278, 15.857307, 15.347942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.076931, 15.115985, 15.328549>,  <19.695045, 15.269270, 15.200044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.076931, 15.115985, 15.328549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013262, 15.485946, 15.190436>,  <18.975061, 15.707922, 15.107569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013262, 15.485946, 15.190436>,  <19.076931, 15.115985, 15.328549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013262, 15.485946, 15.190436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750118, -0.340686, -0.566794,
		-0.641861, 0.168784, 0.748014,
		-0.159172, 0.924903, -0.345282,
		18.965509, 15.763416, 15.086852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340948, 15.469254, 15.512386>,  <19.076931, 15.115985, 15.328549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340948, 15.469254, 15.512386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520433, 15.554564, 15.165245>,  <18.628124, 15.605749, 14.956961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520433, 15.554564, 15.165245>,  <18.340948, 15.469254, 15.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520433, 15.554564, 15.165245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760927, -0.418091, -0.496176,
		-0.468663, 0.883015, -0.025318,
		0.448715, 0.213274, -0.867853,
		18.655048, 15.618546, 14.904889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793005, 15.389456, 16.078369>,  <18.340948, 15.469254, 15.512386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793005, 15.389456, 16.078369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872831, 15.532496, 16.443289>,  <17.920727, 15.618320, 16.662241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872831, 15.532496, 16.443289>,  <17.793005, 15.389456, 16.078369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872831, 15.532496, 16.443289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598748, -0.692501, 0.402422,
		0.775677, -0.626548, 0.075913,
		0.199567, 0.357602, 0.912301,
		17.932701, 15.639777, 16.716980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118538, 15.375672, 15.697589>,  <17.793005, 15.389456, 16.078369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118538, 15.375672, 15.697589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053503, 15.141263, 15.380063>,  <17.014482, 15.000617, 15.189548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053503, 15.141263, 15.380063>,  <17.118538, 15.375672, 15.697589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053503, 15.141263, 15.380063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980840, -0.183499, -0.065426,
		-0.107323, -0.789243, 0.604630,
		-0.162586, -0.586024, -0.793815,
		17.004726, 14.965456, 15.141918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534246, 14.825958, 15.697070>,  <17.118538, 15.375672, 15.697589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.534246, 14.825958, 15.697070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461250, 14.834810, 15.303886>,  <17.417452, 14.840121, 15.067976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461250, 14.834810, 15.303886>,  <17.534246, 14.825958, 15.697070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461250, 14.834810, 15.303886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978648, -0.092083, -0.183765,
		-0.094579, -0.995505, -0.004847,
		-0.182493, 0.022124, -0.982958,
		17.406502, 14.841449, 15.008999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744411, 14.194880, 15.428409>,  <17.534246, 14.825958, 15.697070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744411, 14.194880, 15.428409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742487, 14.457590, 15.126781>,  <17.741331, 14.615216, 14.945804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742487, 14.457590, 15.126781>,  <17.744411, 14.194880, 15.428409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742487, 14.457590, 15.126781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904789, -0.318256, -0.282967,
		-0.425833, -0.683635, -0.592713,
		-0.004812, 0.656777, -0.754069,
		17.741043, 14.654623, 14.900559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997305, 13.931011, 14.711655>,  <17.744411, 14.194880, 15.428409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.997305, 13.931011, 14.711655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081377, 14.321564, 14.731669>,  <18.131821, 14.555895, 14.743678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081377, 14.321564, 14.731669>,  <17.997305, 13.931011, 14.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081377, 14.321564, 14.731669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975326, -0.205866, -0.079740,
		-0.067555, 0.065561, -0.995559,
		0.210179, 0.976382, 0.050036,
		18.144430, 14.614478, 14.746680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377068, 14.004628, 14.282384>,  <17.997305, 13.931011, 14.711655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377068, 14.004628, 14.282384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478731, 14.275281, 14.558810>,  <18.539730, 14.437673, 14.724666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478731, 14.275281, 14.558810>,  <18.377068, 14.004628, 14.282384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478731, 14.275281, 14.558810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956364, -0.282299, -0.075331,
		0.144116, 0.680057, -0.718856,
		0.254161, 0.676632, 0.691066,
		18.554979, 14.478271, 14.766129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095501, 13.643006, 14.156086>,  <18.377068, 14.004628, 14.282384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095501, 13.643006, 14.156086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280313, 13.302515, 14.056538>,  <19.391201, 13.098221, 13.996808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280313, 13.302515, 14.056538>,  <19.095501, 13.643006, 14.156086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280313, 13.302515, 14.056538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172591, 0.188953, -0.966700,
		0.869907, 0.489601, -0.059611,
		0.462034, -0.851227, -0.248872,
		19.418924, 13.047147, 13.981876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583124, 13.846146, 13.573020>,  <19.095501, 13.643006, 14.156086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.583124, 13.846146, 13.573020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499937, 13.454908, 13.576683>,  <19.450026, 13.220166, 13.578880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499937, 13.454908, 13.576683>,  <19.583124, 13.846146, 13.573020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499937, 13.454908, 13.576683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234322, 0.040729, -0.971306,
		0.949654, -0.204145, -0.237659,
		-0.207967, -0.978093, 0.009157,
		19.437548, 13.161481, 13.579431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.962219, 13.638572, 13.054160>,  <19.583124, 13.846146, 13.573020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.962219, 13.638572, 13.054160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663080, 13.386445, 13.137517>,  <19.483597, 13.235169, 13.187531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663080, 13.386445, 13.137517>,  <19.962219, 13.638572, 13.054160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663080, 13.386445, 13.137517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304971, 0.047363, -0.951183,
		0.589676, -0.774892, -0.227649,
		-0.747847, -0.630316, 0.208391,
		19.438726, 13.197351, 13.200034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978930, 13.238769, 12.497540>,  <19.962219, 13.638572, 13.054160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978930, 13.238769, 12.497540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610212, 13.205815, 12.649073>,  <19.388983, 13.186043, 12.739992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610212, 13.205815, 12.649073>,  <19.978930, 13.238769, 12.497540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610212, 13.205815, 12.649073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387026, 0.138591, -0.911594,
		0.022595, -0.986917, -0.159635,
		-0.921792, -0.082380, 0.378832,
		19.333675, 13.181100, 12.762722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678284, 13.044516, 11.924251>,  <19.978930, 13.238769, 12.497540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678284, 13.044516, 11.924251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367680, 13.156403, 12.150096>,  <19.181316, 13.223535, 12.285604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367680, 13.156403, 12.150096>,  <19.678284, 13.044516, 11.924251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367680, 13.156403, 12.150096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454323, 0.372340, -0.809292,
		-0.436601, -0.884941, -0.162044,
		-0.776512, 0.279717, 0.564613,
		19.134726, 13.240317, 12.319480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122042, 12.940815, 11.484722>,  <19.678284, 13.044516, 11.924251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122042, 12.940815, 11.484722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988270, 13.199567, 11.758862>,  <18.908007, 13.354818, 11.923346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988270, 13.199567, 11.758862>,  <19.122042, 12.940815, 11.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988270, 13.199567, 11.758862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519022, 0.480577, -0.706868,
		-0.786621, -0.592109, 0.175026,
		-0.334429, 0.646880, 0.685349,
		18.887941, 13.393631, 11.964466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404680, 13.027304, 11.258460>,  <19.122042, 12.940815, 11.484722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404680, 13.027304, 11.258460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502653, 13.341671, 11.485560>,  <18.561436, 13.530292, 11.621820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502653, 13.341671, 11.485560>,  <18.404680, 13.027304, 11.258460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502653, 13.341671, 11.485560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689933, 0.552706, -0.467449,
		-0.681176, -0.277218, 0.677606,
		0.244931, 0.785918, 0.567752,
		18.576132, 13.577446, 11.655886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739201, 13.348529, 11.407648>,  <18.404680, 13.027304, 11.258460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739201, 13.348529, 11.407648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028294, 13.617597, 11.471110>,  <18.201750, 13.779037, 11.509188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028294, 13.617597, 11.471110>,  <17.739201, 13.348529, 11.407648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028294, 13.617597, 11.471110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560744, 0.704920, -0.434344,
		-0.404009, 0.224950, 0.886664,
		0.722733, 0.672670, 0.158655,
		18.245113, 13.819398, 11.518707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340914, 13.993697, 11.423038>,  <17.739201, 13.348529, 11.407648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340914, 13.993697, 11.423038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715639, 14.131763, 11.400249>,  <17.940474, 14.214602, 11.386575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715639, 14.131763, 11.400249>,  <17.340914, 13.993697, 11.423038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715639, 14.131763, 11.400249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331152, 0.822435, -0.462535,
		-0.112792, 0.452175, 0.884769,
		0.936812, 0.345163, -0.056974,
		17.996683, 14.235312, 11.383156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269634, 14.719994, 11.553922>,  <17.340914, 13.993697, 11.423038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269634, 14.719994, 11.553922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.604208, 14.644618, 11.348061>,  <17.804953, 14.599393, 11.224544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.604208, 14.644618, 11.348061>,  <17.269634, 14.719994, 11.553922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604208, 14.644618, 11.348061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237570, 0.721567, -0.650309,
		0.493899, 0.666207, 0.558777,
		0.836435, -0.188438, -0.514652,
		17.855139, 14.588086, 11.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549837, 15.421853, 11.433171>,  <17.269634, 14.719994, 11.553922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549837, 15.421853, 11.433171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667484, 15.154222, 11.160165>,  <17.738073, 14.993644, 10.996361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667484, 15.154222, 11.160165>,  <17.549837, 15.421853, 11.433171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667484, 15.154222, 11.160165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180304, 0.662439, -0.727094,
		0.938608, 0.336913, 0.074199,
		0.294119, -0.669077, -0.682517,
		17.755720, 14.953499, 10.955410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765686, 15.856430, 10.833676>,  <17.549837, 15.421853, 11.433171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765686, 15.856430, 10.833676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740688, 15.490394, 10.674327>,  <17.725689, 15.270772, 10.578717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740688, 15.490394, 10.674327>,  <17.765686, 15.856430, 10.833676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740688, 15.490394, 10.674327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316436, 0.396727, -0.861670,
		0.946553, 0.072210, -0.314361,
		-0.062495, -0.915092, -0.398373,
		17.721939, 15.215866, 10.554815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053844, 15.894943, 10.182871>,  <17.765686, 15.856430, 10.833676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053844, 15.894943, 10.182871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794588, 15.590680, 10.168356>,  <17.639034, 15.408122, 10.159647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794588, 15.590680, 10.168356>,  <18.053844, 15.894943, 10.182871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794588, 15.590680, 10.168356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393722, 0.375509, -0.839033,
		0.651842, -0.529523, -0.542869,
		-0.648139, -0.760657, -0.036288,
		17.600147, 15.362483, 10.157470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188593, 15.593031, 9.608012>,  <18.053844, 15.894943, 10.182871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188593, 15.593031, 9.608012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823820, 15.452110, 9.692168>,  <17.604956, 15.367558, 9.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823820, 15.452110, 9.692168>,  <18.188593, 15.593031, 9.608012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823820, 15.452110, 9.692168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261847, 0.104854, -0.959397,
		0.315938, -0.929994, -0.187869,
		-0.911932, -0.352303, 0.210389,
		17.550240, 15.346419, 9.755285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017931, 15.277560, 9.089965>,  <18.188593, 15.593031, 9.608012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.017931, 15.277560, 9.089965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664730, 15.359657, 9.258810>,  <17.452808, 15.408916, 9.360117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664730, 15.359657, 9.258810>,  <18.017931, 15.277560, 9.089965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664730, 15.359657, 9.258810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360347, 0.279831, -0.889856,
		-0.300757, -0.937854, -0.173134,
		-0.883004, 0.205243, 0.422114,
		17.399830, 15.421230, 9.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529577, 15.118873, 8.557406>,  <18.017931, 15.277560, 9.089965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529577, 15.118873, 8.557406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296467, 15.327502, 8.806672>,  <17.156601, 15.452680, 8.956231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296467, 15.327502, 8.806672>,  <17.529577, 15.118873, 8.557406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296467, 15.327502, 8.806672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559830, 0.298163, -0.773103,
		-0.589034, -0.799412, 0.118231,
		-0.582776, 0.521574, 0.623164,
		17.121634, 15.483974, 8.993621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907661, 14.922735, 8.409863>,  <17.529577, 15.118873, 8.557406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907661, 14.922735, 8.409863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882854, 15.287862, 8.571315>,  <16.867970, 15.506938, 8.668186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882854, 15.287862, 8.571315>,  <16.907661, 14.922735, 8.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882854, 15.287862, 8.571315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537533, 0.310199, -0.784114,
		-0.840959, -0.265595, 0.471431,
		-0.062020, 0.912818, 0.403630,
		16.864248, 15.561707, 8.692404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203184, 15.157101, 8.219619>,  <16.907661, 14.922735, 8.409863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203184, 15.157101, 8.219619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415758, 15.481702, 8.316813>,  <16.543303, 15.676462, 8.375129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415758, 15.481702, 8.316813>,  <16.203184, 15.157101, 8.219619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415758, 15.481702, 8.316813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387319, 0.487880, -0.782277,
		-0.753367, 0.321615, 0.573586,
		0.531433, 0.811503, 0.242985,
		16.575188, 15.725153, 8.389709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702394, 15.678887, 8.021941>,  <16.203184, 15.157101, 8.219619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702394, 15.678887, 8.021941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057806, 15.857259, 8.065134>,  <16.271053, 15.964281, 8.091049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057806, 15.857259, 8.065134>,  <15.702394, 15.678887, 8.021941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057806, 15.857259, 8.065134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152097, 0.508314, -0.847634,
		-0.432872, 0.736726, 0.519477,
		0.888532, 0.445928, 0.107981,
		16.324366, 15.991037, 8.097528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616473, 16.401611, 8.039028>,  <15.702394, 15.678887, 8.021941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616473, 16.401611, 8.039028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.977005, 16.328991, 7.881729>,  <16.193323, 16.285418, 7.787349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.977005, 16.328991, 7.881729>,  <15.616473, 16.401611, 8.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.977005, 16.328991, 7.881729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230344, 0.567963, -0.790164,
		0.366808, 0.802780, 0.470102,
		0.901329, -0.181553, -0.393249,
		16.247404, 16.274525, 7.763754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359797, 16.185926, 8.671418>,  <15.616473, 16.401611, 8.039028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359797, 16.185926, 8.671418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.182026, 16.160280, 8.314012>,  <15.075363, 16.144892, 8.099567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.182026, 16.160280, 8.314012>,  <15.359797, 16.185926, 8.671418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182026, 16.160280, 8.314012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439622, 0.853455, -0.279904,
		0.780523, -0.517208, -0.351113,
		-0.444428, -0.064115, -0.893517,
		15.048697, 16.141047, 8.045957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139755, 16.842655, 9.071396>,  <15.359797, 16.185926, 8.671418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139755, 16.842655, 9.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889290, 17.012362, 9.333057>,  <14.739011, 17.114185, 9.490054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889290, 17.012362, 9.333057>,  <15.139755, 16.842655, 9.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889290, 17.012362, 9.333057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565354, -0.824825, -0.006201,
		0.536932, -0.373712, 0.756336,
		-0.626162, 0.424267, 0.654154,
		14.701441, 17.139641, 9.529304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.944498, 16.523628, 9.740332>,  <15.139755, 16.842655, 9.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.944498, 16.523628, 9.740332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766623, 16.584078, 10.093469>,  <14.659897, 16.620348, 10.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766623, 16.584078, 10.093469>,  <14.944498, 16.523628, 9.740332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.766623, 16.584078, 10.093469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884233, -0.083044, 0.459604,
		0.142771, 0.985021, -0.096699,
		-0.444689, 0.151123, 0.882844,
		14.633216, 16.629416, 10.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517817, 16.706268, 10.101965>,  <14.944498, 16.523628, 9.740332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517817, 16.706268, 10.101965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241857, 16.621708, 10.378903>,  <15.076280, 16.570972, 10.545067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241857, 16.621708, 10.378903>,  <15.517817, 16.706268, 10.101965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241857, 16.621708, 10.378903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723900, -0.203613, 0.659175,
		0.001621, 0.955956, 0.293506,
		-0.689903, -0.211400, 0.692346,
		15.034885, 16.558289, 10.586607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652637, 16.839830, 10.726542>,  <15.517817, 16.706268, 10.101965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652637, 16.839830, 10.726542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870693, 16.799091, 11.059396>,  <16.001528, 16.774647, 11.259108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870693, 16.799091, 11.059396>,  <15.652637, 16.839830, 10.726542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870693, 16.799091, 11.059396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463887, 0.790140, 0.400608,
		-0.698304, -0.604405, 0.383493,
		0.545143, -0.101849, 0.832134,
		16.034237, 16.768538, 11.309036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193892, 16.744789, 11.378137>,  <15.652637, 16.839830, 10.726542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193892, 16.744789, 11.378137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532647, 16.956179, 11.401787>,  <15.735901, 17.083012, 11.415977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532647, 16.956179, 11.401787>,  <15.193892, 16.744789, 11.378137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532647, 16.956179, 11.401787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521354, 0.803256, 0.288044,
		0.104730, -0.274767, 0.955790,
		0.846889, 0.528471, 0.059126,
		15.786714, 17.114719, 11.419524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112239, 17.183582, 11.913498>,  <15.193892, 16.744789, 11.378137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112239, 17.183582, 11.913498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410645, 17.343504, 11.700476>,  <15.589689, 17.439457, 11.572662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410645, 17.343504, 11.700476>,  <15.112239, 17.183582, 11.913498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410645, 17.343504, 11.700476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398083, 0.908841, 0.124646,
		0.533843, 0.119014, 0.837166,
		0.746016, 0.399803, -0.532556,
		15.634450, 17.463446, 11.540709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562347, 17.623695, 12.316537>,  <15.112239, 17.183582, 11.913498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562347, 17.623695, 12.316537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575095, 17.748690, 11.936782>,  <15.582744, 17.823687, 11.708929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575095, 17.748690, 11.936782>,  <15.562347, 17.623695, 12.316537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575095, 17.748690, 11.936782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278905, 0.914919, 0.291778,
		0.959790, 0.255491, 0.116312,
		0.031869, 0.312486, -0.949388,
		15.584656, 17.842436, 11.651965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836500, 18.274549, 12.355786>,  <15.562347, 17.623695, 12.316537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836500, 18.274549, 12.355786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580019, 18.259882, 12.049189>,  <15.426130, 18.251081, 11.865230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580019, 18.259882, 12.049189>,  <15.836500, 18.274549, 12.355786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580019, 18.259882, 12.049189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416969, 0.855180, 0.307903,
		0.644200, 0.517033, -0.563634,
		-0.641204, -0.036667, -0.766494,
		15.387658, 18.248882, 11.819241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227736, 17.829716, 12.697328>,  <15.836500, 18.274549, 12.355786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227736, 17.829716, 12.697328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410467, 18.185127, 12.714416>,  <16.520107, 18.398375, 12.724669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410467, 18.185127, 12.714416>,  <16.227736, 17.829716, 12.697328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410467, 18.185127, 12.714416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886862, -0.451189, -0.099518,
		-0.069149, 0.083350, -0.994118,
		0.456830, 0.888528, 0.042720,
		16.547516, 18.451685, 12.727232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722780, 18.032869, 12.113145>,  <16.227736, 17.829716, 12.697328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722780, 18.032869, 12.113145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813457, 18.198853, 12.465604>,  <16.867865, 18.298443, 12.677079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813457, 18.198853, 12.465604>,  <16.722780, 18.032869, 12.113145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813457, 18.198853, 12.465604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900581, -0.433825, -0.027395,
		0.370896, 0.799755, -0.472047,
		0.226695, 0.414956, 0.881147,
		16.881466, 18.323339, 12.729948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.412579, 18.096838, 12.041475>,  <16.722780, 18.032869, 12.113145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.412579, 18.096838, 12.041475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.335487, 18.116001, 12.433508>,  <17.289232, 18.127499, 12.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.335487, 18.116001, 12.433508>,  <17.412579, 18.096838, 12.041475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335487, 18.116001, 12.433508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738986, -0.650029, 0.177093,
		0.645566, 0.758397, 0.089875,
		-0.192729, 0.047909, 0.980082,
		17.277668, 18.130373, 12.727532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986570, 18.277868, 12.315041>,  <17.412579, 18.096838, 12.041475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986570, 18.277868, 12.315041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783976, 18.075588, 12.594394>,  <17.662418, 17.954220, 12.762006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783976, 18.075588, 12.594394>,  <17.986570, 18.277868, 12.315041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783976, 18.075588, 12.594394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801501, -0.574753, 0.165094,
		0.317910, 0.643373, 0.696423,
		-0.506488, -0.505699, 0.698383,
		17.632029, 17.923878, 12.803908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342829, 18.395372, 12.948609>,  <17.986570, 18.277868, 12.315041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342829, 18.395372, 12.948609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158291, 18.049028, 13.026014>,  <18.047567, 17.841223, 13.072457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158291, 18.049028, 13.026014>,  <18.342829, 18.395372, 12.948609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158291, 18.049028, 13.026014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879539, -0.417704, 0.227892,
		-0.116492, 0.275339, 0.954263,
		-0.461347, -0.865859, 0.193512,
		18.019886, 17.789270, 13.084068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654266, 18.206079, 13.500652>,  <18.342829, 18.395372, 12.948609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654266, 18.206079, 13.500652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504541, 17.859514, 13.368458>,  <18.414707, 17.651575, 13.289142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504541, 17.859514, 13.368458>,  <18.654266, 18.206079, 13.500652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504541, 17.859514, 13.368458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864403, -0.455034, 0.213897,
		-0.335705, -0.205608, 0.919254,
		-0.374313, -0.866412, -0.330485,
		18.392248, 17.599590, 13.269312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950153, 17.854958, 13.950270>,  <18.654266, 18.206079, 13.500652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950153, 17.854958, 13.950270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797476, 17.571926, 13.712398>,  <18.705870, 17.402107, 13.569674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797476, 17.571926, 13.712398>,  <18.950153, 17.854958, 13.950270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797476, 17.571926, 13.712398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798092, -0.576837, 0.174091,
		-0.466217, -0.408159, 0.784887,
		-0.381695, -0.707577, -0.594680,
		18.682968, 17.359653, 13.533994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963287, 17.245173, 14.338847>,  <18.950153, 17.854958, 13.950270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963287, 17.245173, 14.338847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952799, 17.145224, 13.951678>,  <18.946507, 17.085255, 13.719377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952799, 17.145224, 13.951678>,  <18.963287, 17.245173, 14.338847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952799, 17.145224, 13.951678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629410, -0.756363, 0.178208,
		-0.776631, -0.604548, 0.177106,
		-0.026221, -0.249874, -0.967923,
		18.944933, 17.070261, 13.661302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945271, 16.494341, 14.254335>,  <18.963287, 17.245173, 14.338847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945271, 16.494341, 14.254335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.082302, 16.635794, 13.906178>,  <19.164522, 16.720665, 13.697285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.082302, 16.635794, 13.906178>,  <18.945271, 16.494341, 14.254335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.082302, 16.635794, 13.906178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752579, -0.657866, 0.028925,
		-0.562372, -0.664948, -0.491509,
		0.342581, 0.353633, -0.870392,
		19.185076, 16.741884, 13.645061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114651, 15.848928, 13.866260>,  <18.945271, 16.494341, 14.254335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114651, 15.848928, 13.866260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323507, 16.130337, 13.673416>,  <19.448820, 16.299181, 13.557711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323507, 16.130337, 13.673416>,  <19.114651, 15.848928, 13.866260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323507, 16.130337, 13.673416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713893, -0.669805, -0.204249,
		-0.466612, -0.237527, -0.851971,
		0.522140, 0.703521, -0.482108,
		19.480148, 16.341393, 13.528784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268324, 15.528540, 13.305423>,  <19.114651, 15.848928, 13.866260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268324, 15.528540, 13.305423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536989, 15.822022, 13.346494>,  <19.698189, 15.998113, 13.371137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536989, 15.822022, 13.346494>,  <19.268324, 15.528540, 13.305423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536989, 15.822022, 13.346494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725869, -0.623985, -0.289406,
		-0.148270, 0.268914, -0.951683,
		0.671662, 0.733708, 0.102679,
		19.738487, 16.042135, 13.377297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768574, 15.465651, 12.736534>,  <19.268324, 15.528540, 13.305423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768574, 15.465651, 12.736534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930412, 15.689672, 13.025710>,  <20.027515, 15.824084, 13.199216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930412, 15.689672, 13.025710>,  <19.768574, 15.465651, 12.736534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930412, 15.689672, 13.025710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808006, -0.589159, 0.004211,
		0.428285, 0.582437, -0.690897,
		0.404596, 0.560053, 0.722941,
		20.051790, 15.857687, 13.242592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473198, 15.353564, 12.571474>,  <19.768574, 15.465651, 12.736534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473198, 15.353564, 12.571474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503408, 15.539733, 12.924218>,  <20.521534, 15.651434, 13.135864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503408, 15.539733, 12.924218>,  <20.473198, 15.353564, 12.571474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503408, 15.539733, 12.924218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762132, -0.597234, 0.249932,
		0.643001, 0.653218, -0.399820,
		0.075526, 0.465422, 0.881860,
		20.526066, 15.679359, 13.188776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124891, 15.541928, 12.645604>,  <20.473198, 15.353564, 12.571474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124891, 15.541928, 12.645604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982502, 15.510089, 13.018044>,  <20.897068, 15.490986, 13.241508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982502, 15.510089, 13.018044>,  <21.124891, 15.541928, 12.645604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982502, 15.510089, 13.018044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745704, -0.624697, 0.231688,
		0.563214, 0.776800, 0.281730,
		-0.355971, -0.079598, 0.931101,
		20.875711, 15.486210, 13.297375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.687574, 15.569873, 13.007318>,  <21.124891, 15.541928, 12.645604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.687574, 15.569873, 13.007318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430258, 15.405461, 13.265691>,  <21.275867, 15.306814, 13.420714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430258, 15.405461, 13.265691>,  <21.687574, 15.569873, 13.007318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430258, 15.405461, 13.265691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679045, -0.696014, 0.233372,
		0.353655, 0.588744, 0.726849,
		-0.643293, -0.411030, 0.645932,
		21.237270, 15.282152, 13.459471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837902, 15.584313, 13.780362>,  <21.687574, 15.569873, 13.007318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837902, 15.584313, 13.780362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552004, 15.859212, 13.728473>,  <21.380465, 16.024151, 13.697339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552004, 15.859212, 13.728473>,  <21.837902, 15.584313, 13.780362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552004, 15.859212, 13.728473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671707, 0.622890, -0.401020,
		-0.194796, -0.373765, -0.906838,
		-0.714748, 0.687246, -0.129724,
		21.337580, 16.065386, 13.689555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926418, 15.847341, 14.546467>,  <21.837902, 15.584313, 13.780362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926418, 15.847341, 14.546467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128252, 15.565886, 14.346353>,  <22.249353, 15.397013, 14.226284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128252, 15.565886, 14.346353>,  <21.926418, 15.847341, 14.546467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128252, 15.565886, 14.346353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552812, 0.708415, -0.438802,
		0.663168, -0.055150, 0.746436,
		0.504586, -0.703638, -0.500286,
		22.279629, 15.354795, 14.196267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620687, 15.967603, 14.709744>,  <21.926418, 15.847341, 14.546467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620687, 15.967603, 14.709744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.591717, 15.803684, 14.346025>,  <22.574333, 15.705333, 14.127794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.591717, 15.803684, 14.346025>,  <22.620687, 15.967603, 14.709744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.591717, 15.803684, 14.346025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501480, 0.773105, -0.388363,
		0.862132, -0.484123, 0.149510,
		-0.072429, -0.409797, -0.909297,
		22.569988, 15.680745, 14.073236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.261232, 15.904433, 14.400599>,  <22.620687, 15.967603, 14.709744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.261232, 15.904433, 14.400599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976467, 15.937441, 14.121639>,  <22.805607, 15.957246, 13.954263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976467, 15.937441, 14.121639>,  <23.261232, 15.904433, 14.400599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.976467, 15.937441, 14.121639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574998, 0.638630, -0.511399,
		0.403180, -0.765076, -0.502100,
		-0.711915, 0.082521, -0.697400,
		22.762892, 15.962197, 13.912419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013422, 15.750740, 14.355947>,  <23.261232, 15.904433, 14.400599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013422, 15.750740, 14.355947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207993, 15.521319, 14.092303>,  <24.324736, 15.383667, 13.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207993, 15.521319, 14.092303>,  <24.013422, 15.750740, 14.355947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207993, 15.521319, 14.092303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319332, 0.818886, -0.476919,
		0.813275, 0.021511, 0.581481,
		0.486426, -0.573552, -0.659111,
		24.353920, 15.349254, 13.894570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728624, 15.851464, 14.358129>,  <24.013422, 15.750740, 14.355947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728624, 15.851464, 14.358129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616428, 15.729659, 13.994020>,  <24.549110, 15.656576, 13.775554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616428, 15.729659, 13.994020>,  <24.728624, 15.851464, 14.358129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616428, 15.729659, 13.994020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193702, 0.910874, -0.364401,
		0.940109, -0.278532, -0.196505,
		-0.280489, -0.304513, -0.910273,
		24.532282, 15.638305, 13.720938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.514292, 16.223579, 14.947295>,  <24.728624, 15.851464, 14.358129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.514292, 16.223579, 14.947295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854095, 16.061237, 14.812466>,  <25.057978, 15.963833, 14.731568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854095, 16.061237, 14.812466>,  <24.514292, 16.223579, 14.947295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854095, 16.061237, 14.812466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440419, 0.193793, 0.876628,
		-0.290461, -0.893156, 0.343374,
		0.849508, -0.405854, -0.337073,
		25.108948, 15.939481, 14.711344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762295, 15.684015, 15.404478>,  <24.514292, 16.223579, 14.947295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762295, 15.684015, 15.404478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076227, 15.841599, 15.213132>,  <25.264587, 15.936149, 15.098324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076227, 15.841599, 15.213132>,  <24.762295, 15.684015, 15.404478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076227, 15.841599, 15.213132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422756, 0.224047, 0.878112,
		0.453117, -0.891402, 0.009291,
		0.784832, 0.393960, -0.478365,
		25.311678, 15.959786, 15.069622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525314, 15.449221, 15.621822>,  <24.762295, 15.684015, 15.404478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525314, 15.449221, 15.621822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547134, 15.835990, 15.522155>,  <25.560226, 16.068052, 15.462355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547134, 15.835990, 15.522155>,  <25.525314, 15.449221, 15.621822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547134, 15.835990, 15.522155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401819, 0.207186, 0.891973,
		0.914093, -0.148776, -0.377226,
		0.054549, 0.966923, -0.249168,
		25.563499, 16.126066, 15.447404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388943, 15.403410, 15.731221>,  <25.525314, 15.449221, 15.621822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388943, 15.403410, 15.731221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609653, 15.108845, 15.887805>,  <26.742079, 14.932106, 15.981755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609653, 15.108845, 15.887805>,  <26.388943, 15.403410, 15.731221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609653, 15.108845, 15.887805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570439, 0.675659, 0.466995,
		-0.608394, -0.034373, 0.792891,
		0.551775, -0.736413, 0.391459,
		26.775187, 14.887921, 16.005243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703562, 14.910874, 15.243914>,  <26.388943, 15.403410, 15.731221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703562, 14.910874, 15.243914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704079, 14.866137, 14.846424>,  <26.704390, 14.839293, 14.607930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704079, 14.866137, 14.846424>,  <26.703562, 14.910874, 15.243914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704079, 14.866137, 14.846424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031967, -0.993213, 0.111829,
		-0.999488, -0.031911, 0.002292,
		0.001292, -0.111845, -0.993725,
		26.704466, 14.832583, 14.548306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.942440, 23.407852, 22.624731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.628376, 23.355375, 22.866825>,  <18.439938, 23.323889, 23.012081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.628376, 23.355375, 22.866825>,  <18.942440, 23.407852, 22.624731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628376, 23.355375, 22.866825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263460, -0.813693, -0.518162,
		0.560457, -0.566296, 0.604315,
		-0.785160, -0.131194, 0.605237,
		18.392828, 23.316017, 23.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930349, 22.569178, 22.703552>,  <18.942440, 23.407852, 22.624731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930349, 22.569178, 22.703552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.578201, 22.733725, 22.797981>,  <18.366913, 22.832453, 22.854639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.578201, 22.733725, 22.797981>,  <18.930349, 22.569178, 22.703552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.578201, 22.733725, 22.797981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454447, -0.589157, -0.668110,
		-0.135754, -0.695466, 0.705619,
		-0.880368, 0.411365, 0.236072,
		18.314091, 22.857134, 22.868803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548561, 21.988201, 22.757957>,  <18.930349, 22.569178, 22.703552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548561, 21.988201, 22.757957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.297235, 22.296352, 22.714617>,  <18.146441, 22.481243, 22.688612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.297235, 22.296352, 22.714617>,  <18.548561, 21.988201, 22.757957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297235, 22.296352, 22.714617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533387, -0.527975, -0.660863,
		-0.566323, -0.357434, 0.742643,
		-0.628312, 0.770379, -0.108354,
		18.108742, 22.527466, 22.682112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843229, 21.699179, 22.919174>,  <18.548561, 21.988201, 22.757957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843229, 21.699179, 22.919174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776207, 22.034096, 22.710995>,  <17.735992, 22.235046, 22.586086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776207, 22.034096, 22.710995>,  <17.843229, 21.699179, 22.919174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776207, 22.034096, 22.710995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602622, -0.504791, -0.618088,
		-0.780238, 0.210068, 0.589151,
		-0.167558, 0.837291, -0.520449,
		17.725939, 22.285284, 22.554859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212223, 21.667492, 22.819113>,  <17.843229, 21.699179, 22.919174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212223, 21.667492, 22.819113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.365484, 21.915812, 22.545528>,  <17.457441, 22.064804, 22.381378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.365484, 21.915812, 22.545528>,  <17.212223, 21.667492, 22.819113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365484, 21.915812, 22.545528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436060, -0.531193, -0.726420,
		-0.814277, 0.576576, 0.067179,
		0.383151, 0.620801, -0.683960,
		17.480429, 22.102053, 22.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713789, 21.644274, 22.346373>,  <17.212223, 21.667492, 22.819113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713789, 21.644274, 22.346373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.984631, 21.834454, 22.121702>,  <17.147137, 21.948561, 21.986900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.984631, 21.834454, 22.121702>,  <16.713789, 21.644274, 22.346373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.984631, 21.834454, 22.121702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402521, -0.399666, -0.823556,
		-0.616039, 0.783720, -0.079238,
		0.677106, 0.475448, -0.561674,
		17.187763, 21.977087, 21.953199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345150, 21.905327, 21.695494>,  <16.713789, 21.644274, 22.346373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345150, 21.905327, 21.695494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.737093, 21.846479, 21.641479>,  <16.972260, 21.811171, 21.609070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.737093, 21.846479, 21.641479>,  <16.345150, 21.905327, 21.695494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737093, 21.846479, 21.641479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190692, -0.488525, -0.851458,
		0.059297, 0.860058, -0.506739,
		0.979858, -0.147120, -0.135038,
		17.031050, 21.802343, 21.600967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391804, 22.103161, 21.031044>,  <16.345150, 21.905327, 21.695494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391804, 22.103161, 21.031044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.724661, 21.886765, 21.079809>,  <16.924376, 21.756926, 21.109068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.724661, 21.886765, 21.079809>,  <16.391804, 22.103161, 21.031044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724661, 21.886765, 21.079809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197240, -0.494195, -0.846681,
		0.518297, 0.680514, -0.517947,
		0.832145, -0.540992, 0.121915,
		16.974304, 21.724466, 21.116385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666327, 22.083023, 20.430883>,  <16.391804, 22.103161, 21.031044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666327, 22.083023, 20.430883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.850151, 21.783815, 20.622412>,  <16.960445, 21.604290, 20.737329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.850151, 21.783815, 20.622412>,  <16.666327, 22.083023, 20.430883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850151, 21.783815, 20.622412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369830, -0.651334, -0.662563,
		0.807483, 0.127405, -0.575968,
		0.459561, -0.748019, 0.478822,
		16.988020, 21.559410, 20.766058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542379, 21.505747, 19.902397>,  <16.666327, 22.083023, 20.430883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542379, 21.505747, 19.902397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.763937, 21.313656, 20.174452>,  <16.896872, 21.198402, 20.337685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.763937, 21.313656, 20.174452>,  <16.542379, 21.505747, 19.902397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.763937, 21.313656, 20.174452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023938, -0.807371, -0.589558,
		0.832243, 0.342833, -0.435702,
		0.553893, -0.480226, 0.680136,
		16.930105, 21.169588, 20.378492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274349, 21.189924, 19.606892>,  <16.542379, 21.505747, 19.902397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274349, 21.189924, 19.606892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.086973, 20.952929, 19.869041>,  <16.974546, 20.810732, 20.026331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.086973, 20.952929, 19.869041>,  <17.274349, 21.189924, 19.606892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086973, 20.952929, 19.869041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018923, -0.734902, -0.677909,
		0.883292, -0.329962, 0.333047,
		-0.468441, -0.592490, 0.655377,
		16.946442, 20.775181, 20.065655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613892, 20.562260, 19.511198>,  <17.274349, 21.189924, 19.606892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613892, 20.562260, 19.511198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.266285, 20.465654, 19.683931>,  <17.057720, 20.407692, 19.787571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.266285, 20.465654, 19.683931>,  <17.613892, 20.562260, 19.511198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266285, 20.465654, 19.683931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066493, -0.807855, -0.585619,
		0.490292, -0.537627, 0.685982,
		-0.869018, -0.241511, 0.431833,
		17.005579, 20.393202, 19.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623291, 19.853897, 19.553690>,  <17.613892, 20.562260, 19.511198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623291, 19.853897, 19.553690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234470, 19.929659, 19.609171>,  <17.001177, 19.975117, 19.642460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234470, 19.929659, 19.609171>,  <17.623291, 19.853897, 19.553690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234470, 19.929659, 19.609171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231951, -0.683737, -0.691883,
		-0.036212, -0.704719, 0.708562,
		-0.972053, 0.189406, 0.138701,
		16.942854, 19.986481, 19.650782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244614, 19.207422, 19.763948>,  <17.623291, 19.853897, 19.553690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244614, 19.207422, 19.763948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.969025, 19.452301, 19.608755>,  <16.803671, 19.599228, 19.515638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.969025, 19.452301, 19.608755>,  <17.244614, 19.207422, 19.763948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969025, 19.452301, 19.608755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267504, -0.712296, -0.648904,
		-0.673614, -0.343292, 0.654519,
		-0.688975, 0.612197, -0.387981,
		16.762333, 19.635962, 19.492359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711058, 18.852322, 19.653780>,  <17.244614, 19.207422, 19.763948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711058, 18.852322, 19.653780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599489, 19.161774, 19.426201>,  <16.532549, 19.347445, 19.289654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599489, 19.161774, 19.426201>,  <16.711058, 18.852322, 19.653780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599489, 19.161774, 19.426201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281091, -0.632282, -0.721947,
		-0.918254, -0.041440, 0.393817,
		-0.278921, 0.773629, -0.568947,
		16.515812, 19.393862, 19.255516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036898, 18.689899, 19.471743>,  <16.711058, 18.852322, 19.653780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036898, 18.689899, 19.471743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.160225, 18.961531, 19.205273>,  <16.234221, 19.124510, 19.045391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.160225, 18.961531, 19.205273>,  <16.036898, 18.689899, 19.471743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160225, 18.961531, 19.205273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387318, -0.550007, -0.739917,
		-0.868864, 0.486151, 0.093444,
		0.308316, 0.679079, -0.666177,
		16.252720, 19.165255, 19.005419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619349, 18.563725, 18.995079>,  <16.036898, 18.689899, 19.471743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619349, 18.563725, 18.995079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.867116, 18.806082, 18.795395>,  <16.015776, 18.951496, 18.675585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.867116, 18.806082, 18.795395>,  <15.619349, 18.563725, 18.995079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867116, 18.806082, 18.795395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133000, -0.545709, -0.827353,
		-0.773714, 0.578872, -0.257438,
		0.619418, 0.605895, -0.499213,
		16.052940, 18.987850, 18.645632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340223, 18.670895, 18.407234>,  <15.619349, 18.563725, 18.995079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340223, 18.670895, 18.407234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.721112, 18.756815, 18.320391>,  <15.949645, 18.808367, 18.268286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.721112, 18.756815, 18.320391>,  <15.340223, 18.670895, 18.407234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721112, 18.756815, 18.320391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017896, -0.670411, -0.741774,
		-0.304883, 0.710219, -0.634536,
		0.952222, 0.214799, -0.217107,
		16.006779, 18.821255, 18.255259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343426, 18.817728, 17.680143>,  <15.340223, 18.670895, 18.407234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343426, 18.817728, 17.680143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.705894, 18.693287, 17.794735>,  <15.923374, 18.618622, 17.863489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.705894, 18.693287, 17.794735>,  <15.343426, 18.817728, 17.680143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705894, 18.693287, 17.794735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009052, -0.691505, -0.722315,
		0.422815, 0.651948, -0.629437,
		0.906171, -0.311104, 0.286477,
		15.977745, 18.599957, 17.880678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693487, 18.653084, 17.097153>,  <15.343426, 18.817728, 17.680143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693487, 18.653084, 17.097153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.940208, 18.498898, 17.371662>,  <16.088242, 18.406385, 17.536367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.940208, 18.498898, 17.371662>,  <15.693487, 18.653084, 17.097153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.940208, 18.498898, 17.371662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322931, -0.671197, -0.667241,
		0.717822, 0.633175, -0.289518,
		0.616804, -0.385466, 0.686272,
		16.125250, 18.383257, 17.577543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355301, 18.549927, 16.803795>,  <15.693487, 18.653084, 17.097153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355301, 18.549927, 16.803795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.300112, 18.281446, 17.095123>,  <16.266998, 18.120358, 17.269920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.300112, 18.281446, 17.095123>,  <16.355301, 18.549927, 16.803795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300112, 18.281446, 17.095123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437540, -0.701016, -0.563148,
		0.888550, 0.240969, 0.390400,
		-0.137975, -0.671200, 0.728322,
		16.258718, 18.080086, 17.313620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019272, 18.282875, 17.007614>,  <16.355301, 18.549927, 16.803795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019272, 18.282875, 17.007614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.721483, 18.027292, 17.085070>,  <16.542809, 17.873943, 17.131542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.721483, 18.027292, 17.085070>,  <17.019272, 18.282875, 17.007614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721483, 18.027292, 17.085070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462858, -0.702950, -0.540022,
		0.481167, -0.312406, 0.819073,
		-0.744474, -0.638955, 0.193637,
		16.498140, 17.835606, 17.143160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556759, 17.836559, 17.401743>,  <17.019272, 18.282875, 17.007614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556759, 17.836559, 17.401743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.719782, 17.903347, 17.042629>,  <17.817596, 17.943419, 16.827160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.719782, 17.903347, 17.042629>,  <17.556759, 17.836559, 17.401743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719782, 17.903347, 17.042629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428239, 0.833387, 0.349394,
		0.806541, -0.526865, 0.268152,
		0.407558, 0.166968, -0.897785,
		17.842049, 17.953438, 16.773294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170166, 17.741623, 17.490221>,  <17.556759, 17.836559, 17.401743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170166, 17.741623, 17.490221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.139271, 17.973438, 17.165710>,  <18.120733, 18.112528, 16.971004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.139271, 17.973438, 17.165710>,  <18.170166, 17.741623, 17.490221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139271, 17.973438, 17.165710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397054, 0.764277, 0.508162,
		0.914539, -0.282872, -0.289139,
		-0.077238, 0.579538, -0.811277,
		18.116100, 18.147299, 16.922327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853554, 17.960039, 17.314077>,  <18.170166, 17.741623, 17.490221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853554, 17.960039, 17.314077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.608248, 18.216789, 17.129946>,  <18.461063, 18.370840, 17.019466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.608248, 18.216789, 17.129946>,  <18.853554, 17.960039, 17.314077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.608248, 18.216789, 17.129946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540298, 0.766005, 0.348303,
		0.576182, -0.035113, -0.816567,
		-0.613264, 0.641875, -0.460329,
		18.424269, 18.409351, 16.991846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281984, 18.368870, 16.986887>,  <18.853554, 17.960039, 17.314077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281984, 18.368870, 16.986887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.949114, 18.589811, 17.006422>,  <18.749392, 18.722376, 17.018143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.949114, 18.589811, 17.006422>,  <19.281984, 18.368870, 16.986887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949114, 18.589811, 17.006422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554128, 0.831639, 0.036311,
		-0.020559, 0.057279, -0.998147,
		-0.832178, 0.552354, 0.048838,
		18.699461, 18.755518, 17.021072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516027, 18.850307, 16.633244>,  <19.281984, 18.368870, 16.986887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516027, 18.850307, 16.633244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.194170, 18.979441, 16.832575>,  <19.001057, 19.056921, 16.952173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.194170, 18.979441, 16.832575>,  <19.516027, 18.850307, 16.633244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194170, 18.979441, 16.832575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456618, 0.872920, 0.171785,
		-0.379542, 0.365770, -0.849800,
		-0.804641, 0.322834, 0.498327,
		18.952778, 19.076290, 16.982073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417868, 19.504681, 16.399626>,  <19.516027, 18.850307, 16.633244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417868, 19.504681, 16.399626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.219200, 19.484348, 16.746206>,  <19.099998, 19.472149, 16.954155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.219200, 19.484348, 16.746206>,  <19.417868, 19.504681, 16.399626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219200, 19.484348, 16.746206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475909, 0.818883, 0.320844,
		-0.725830, 0.571705, -0.382525,
		-0.496671, -0.050831, 0.866449,
		19.070198, 19.469099, 17.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.354931, 20.272814, 16.580013>,  <19.417868, 19.504681, 16.399626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.354931, 20.272814, 16.580013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.280449, 20.081772, 16.923460>,  <19.235760, 19.967146, 17.129528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.280449, 20.081772, 16.923460>,  <19.354931, 20.272814, 16.580013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280449, 20.081772, 16.923460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346502, 0.785827, 0.512262,
		-0.919383, 0.392897, 0.019167,
		-0.186204, -0.477607, 0.858615,
		19.224588, 19.938490, 17.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834318, 20.619368, 17.029037>,  <19.354931, 20.272814, 16.580013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834318, 20.619368, 17.029037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.052227, 20.389187, 17.273029>,  <19.182972, 20.251078, 17.419424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.052227, 20.389187, 17.273029>,  <18.834318, 20.619368, 17.029037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052227, 20.389187, 17.273029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068508, 0.755504, 0.651553,
		-0.835781, -0.313159, 0.451000,
		0.544772, -0.575453, 0.609982,
		19.215658, 20.216551, 17.456024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731764, 20.892981, 17.779173>,  <18.834318, 20.619368, 17.029037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731764, 20.892981, 17.779173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.056080, 20.658865, 17.776144>,  <19.250669, 20.518396, 17.774326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.056080, 20.658865, 17.776144>,  <18.731764, 20.892981, 17.779173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056080, 20.658865, 17.776144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421295, 0.574530, 0.701731,
		-0.406364, -0.572147, 0.712402,
		0.810789, -0.585290, -0.007574,
		19.299316, 20.483278, 17.773872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787153, 20.736069, 18.580826>,  <18.731764, 20.892981, 17.779173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787153, 20.736069, 18.580826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.124346, 20.608536, 18.407515>,  <19.326662, 20.532015, 18.303528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.124346, 20.608536, 18.407515>,  <18.787153, 20.736069, 18.580826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124346, 20.608536, 18.407515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537834, 0.483243, 0.690805,
		-0.010873, -0.815366, 0.578844,
		0.842981, -0.318833, -0.433277,
		19.377239, 20.512886, 18.277531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.282871, 20.351812, 19.054285>,  <18.787153, 20.736069, 18.580826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.282871, 20.351812, 19.054285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.485800, 20.563847, 18.782509>,  <19.607557, 20.691067, 18.619444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.485800, 20.563847, 18.782509>,  <19.282871, 20.351812, 19.054285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485800, 20.563847, 18.782509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519955, 0.440461, 0.731875,
		0.687222, -0.724572, -0.052165,
		0.507320, 0.530084, -0.679439,
		19.637997, 20.722872, 18.578676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814159, 20.692942, 19.412052>,  <19.282871, 20.351812, 19.054285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814159, 20.692942, 19.412052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.884722, 20.892828, 19.072838>,  <19.927059, 21.012760, 18.869308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.884722, 20.892828, 19.072838>,  <19.814159, 20.692942, 19.412052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884722, 20.892828, 19.072838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483262, 0.706594, 0.516897,
		0.857519, -0.501007, -0.116846,
		0.176406, 0.499716, -0.848036,
		19.937643, 21.042744, 18.818428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497540, 20.671301, 19.348288>,  <19.814159, 20.692942, 19.412052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497540, 20.671301, 19.348288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.357763, 20.987293, 19.146763>,  <20.273897, 21.176888, 19.025848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.357763, 20.987293, 19.146763>,  <20.497540, 20.671301, 19.348288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357763, 20.987293, 19.146763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457281, 0.613110, 0.644197,
		0.817794, -0.005275, -0.575487,
		-0.349439, 0.789980, -0.503810,
		20.252932, 21.224287, 18.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927839, 21.199617, 19.343330>,  <20.497540, 20.671301, 19.348288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927839, 21.199617, 19.343330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.609741, 21.422825, 19.248503>,  <20.418882, 21.556749, 19.191607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.609741, 21.422825, 19.248503>,  <20.927839, 21.199617, 19.343330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609741, 21.422825, 19.248503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402030, 0.778031, 0.482741,
		0.453826, 0.288588, -0.843065,
		-0.795245, 0.558018, -0.237070,
		20.371168, 21.590231, 19.177382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.248623, 21.871344, 19.277134>,  <20.927839, 21.199617, 19.343330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.248623, 21.871344, 19.277134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.855459, 21.943949, 19.289413>,  <20.619560, 21.987513, 19.296782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.855459, 21.943949, 19.289413>,  <21.248623, 21.871344, 19.277134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855459, 21.943949, 19.289413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161270, 0.768582, 0.619091,
		0.088779, 0.613460, -0.784719,
		-0.982909, 0.181514, 0.030698,
		20.560587, 21.998404, 19.298622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173416, 22.590307, 19.294798>,  <21.248623, 21.871344, 19.277134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173416, 22.590307, 19.294798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.829676, 22.451050, 19.444630>,  <20.623430, 22.367496, 19.534529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.829676, 22.451050, 19.444630>,  <21.173416, 22.590307, 19.294798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829676, 22.451050, 19.444630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030410, 0.696396, 0.717013,
		-0.510478, 0.627558, -0.587863,
		-0.859353, -0.348143, 0.374579,
		20.571869, 22.346607, 19.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803129, 23.155758, 19.449137>,  <21.173416, 22.590307, 19.294798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803129, 23.155758, 19.449137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.650997, 22.868429, 19.682156>,  <20.559719, 22.696032, 19.821968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.650997, 22.868429, 19.682156>,  <20.803129, 23.155758, 19.449137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650997, 22.868429, 19.682156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026391, 0.638057, 0.769537,
		-0.924475, 0.277302, -0.261629,
		-0.380328, -0.718322, 0.582549,
		20.536900, 22.652933, 19.856920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180460, 23.455587, 19.768185>,  <20.803129, 23.155758, 19.449137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180460, 23.455587, 19.768185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.302237, 23.147486, 19.992334>,  <20.375303, 22.962624, 20.126825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.302237, 23.147486, 19.992334>,  <20.180460, 23.455587, 19.768185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302237, 23.147486, 19.992334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041360, 0.577057, 0.815656,
		-0.951632, -0.271498, 0.143823,
		0.304443, -0.770256, 0.560375,
		20.393570, 22.916409, 20.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.582224, 23.361006, 20.538202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.900377, 23.131584, 20.616587>,  <20.091270, 22.993931, 20.663616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.900377, 23.131584, 20.616587>,  <19.582224, 23.361006, 20.538202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900377, 23.131584, 20.616587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114636, 0.459832, 0.880576,
		-0.595164, -0.677933, 0.431494,
		0.795385, -0.573552, 0.195960,
		20.138992, 22.959518, 20.675375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.538256, 23.144238, 21.166517>,  <19.582224, 23.361006, 20.538202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.538256, 23.144238, 21.166517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.931725, 23.127918, 21.096409>,  <20.167807, 23.118126, 21.054344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.931725, 23.127918, 21.096409>,  <19.538256, 23.144238, 21.166517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931725, 23.127918, 21.096409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174962, 0.444744, 0.878403,
		0.042114, -0.894728, 0.444621,
		0.983674, -0.040799, -0.175273,
		20.226828, 23.115679, 21.043827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777380, 22.913143, 21.761059>,  <19.538256, 23.144238, 21.166517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777380, 22.913143, 21.761059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.096264, 23.082306, 21.588732>,  <20.287594, 23.183804, 21.485336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.096264, 23.082306, 21.588732>,  <19.777380, 22.913143, 21.761059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096264, 23.082306, 21.588732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252398, 0.414779, 0.874216,
		0.548408, -0.805672, 0.223924,
		0.797210, 0.422909, -0.430818,
		20.335428, 23.209177, 21.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.343990, 22.816113, 22.171082>,  <19.777380, 22.913143, 21.761059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.343990, 22.816113, 22.171082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.518450, 23.102924, 21.953590>,  <20.623125, 23.275011, 21.823095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.518450, 23.102924, 21.953590>,  <20.343990, 22.816113, 22.171082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518450, 23.102924, 21.953590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306709, 0.449597, 0.838924,
		0.845992, -0.532662, -0.023828,
		0.436150, 0.717031, -0.543728,
		20.649294, 23.318033, 21.790472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956528, 22.997253, 22.562908>,  <20.343990, 22.816113, 22.171082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956528, 22.997253, 22.562908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.870117, 23.296511, 22.311953>,  <20.818272, 23.476065, 22.161379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.870117, 23.296511, 22.311953>,  <20.956528, 22.997253, 22.562908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870117, 23.296511, 22.311953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325996, 0.660953, 0.675920,
		0.920358, -0.058509, -0.386675,
		-0.216026, 0.748143, -0.627387,
		20.805309, 23.520954, 22.123737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.554327, 23.376665, 22.517418>,  <20.956528, 22.997253, 22.562908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.554327, 23.376665, 22.517418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.255562, 23.624571, 22.421072>,  <21.076303, 23.773314, 22.363264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.255562, 23.624571, 22.421072>,  <21.554327, 23.376665, 22.517418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255562, 23.624571, 22.421072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370722, 0.688867, 0.622918,
		0.551985, 0.375972, -0.744283,
		-0.746913, 0.619763, -0.240863,
		21.031488, 23.810499, 22.348814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849239, 23.931349, 22.373178>,  <21.554327, 23.376665, 22.517418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849239, 23.931349, 22.373178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.480320, 24.034224, 22.488569>,  <21.258968, 24.095949, 22.557804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.480320, 24.034224, 22.488569>,  <21.849239, 23.931349, 22.373178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480320, 24.034224, 22.488569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386472, 0.610615, 0.691223,
		0.001626, 0.749002, -0.662565,
		-0.922300, 0.257187, 0.288476,
		21.203630, 24.111380, 22.575111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881008, 24.641989, 22.600180>,  <21.849239, 23.931349, 22.373178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881008, 24.641989, 22.600180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.535942, 24.554232, 22.782467>,  <21.328903, 24.501577, 22.891840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.535942, 24.554232, 22.782467>,  <21.881008, 24.641989, 22.600180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535942, 24.554232, 22.782467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144209, 0.756928, 0.637388,
		-0.484785, 0.615570, -0.621335,
		-0.862663, -0.219394, 0.455718,
		21.277143, 24.488413, 22.919182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538538, 25.219755, 22.594959>,  <21.881008, 24.641989, 22.600180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538538, 25.219755, 22.594959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.336746, 25.024792, 22.880037>,  <21.215672, 24.907814, 23.051085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.336746, 25.024792, 22.880037>,  <21.538538, 25.219755, 22.594959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336746, 25.024792, 22.880037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189407, 0.742851, 0.642104,
		-0.842392, 0.458918, -0.282435,
		-0.504480, -0.487409, 0.712694,
		21.185402, 24.878569, 23.093845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096239, 25.798494, 22.855591>,  <21.538538, 25.219755, 22.594959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096239, 25.798494, 22.855591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.133873, 25.504688, 23.124405>,  <21.156454, 25.328405, 23.285694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.133873, 25.504688, 23.124405>,  <21.096239, 25.798494, 22.855591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133873, 25.504688, 23.124405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187212, 0.676043, 0.712683,
		-0.977803, 0.058760, 0.201116,
		0.094086, -0.734516, 0.672037,
		21.162098, 25.284334, 23.326015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829428, 26.079893, 23.420410>,  <21.096239, 25.798494, 22.855591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829428, 26.079893, 23.420410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.023355, 25.767981, 23.578846>,  <21.139713, 25.580833, 23.673906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.023355, 25.767981, 23.578846>,  <20.829428, 26.079893, 23.420410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023355, 25.767981, 23.578846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189816, 0.535890, 0.822673,
		-0.853767, -0.323666, 0.407826,
		0.484821, -0.779783, 0.396089,
		21.168802, 25.534046, 23.697672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498129, 25.980230, 24.052515>,  <20.829428, 26.079893, 23.420410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498129, 25.980230, 24.052515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.858767, 25.810171, 24.084467>,  <21.075150, 25.708136, 24.103638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.858767, 25.810171, 24.084467>,  <20.498129, 25.980230, 24.052515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858767, 25.810171, 24.084467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217010, 0.604256, 0.766669,
		-0.374216, -0.673888, 0.637054,
		0.901592, -0.425147, 0.079881,
		21.129244, 25.682627, 24.108431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634464, 25.969585, 24.811232>,  <20.498129, 25.980230, 24.052515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634464, 25.969585, 24.811232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.984411, 25.941439, 24.619543>,  <21.194380, 25.924551, 24.504530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.984411, 25.941439, 24.619543>,  <20.634464, 25.969585, 24.811232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984411, 25.941439, 24.619543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433068, 0.556751, 0.708859,
		0.216926, -0.827694, 0.517558,
		0.874869, -0.070368, -0.479221,
		21.246872, 25.920328, 24.475777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062672, 25.713493, 25.345934>,  <20.634464, 25.969585, 24.811232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062672, 25.713493, 25.345934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.313173, 25.882105, 25.083599>,  <21.463474, 25.983273, 24.926199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.313173, 25.882105, 25.083599>,  <21.062672, 25.713493, 25.345934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313173, 25.882105, 25.083599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606567, 0.265036, 0.749555,
		0.489780, -0.867219, -0.089707,
		0.626252, 0.421530, -0.655836,
		21.501049, 26.008564, 24.886848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686131, 25.376299, 25.447392>,  <21.062672, 25.713493, 25.345934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686131, 25.376299, 25.447392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784294, 25.721466, 25.270689>,  <21.843191, 25.928566, 25.164667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784294, 25.721466, 25.270689>,  <21.686131, 25.376299, 25.447392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784294, 25.721466, 25.270689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592023, 0.227442, 0.773162,
		0.767649, -0.451270, -0.455051,
		0.245407, 0.862917, -0.441757,
		21.857916, 25.980341, 25.138163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260206, 25.390118, 25.810741>,  <21.686131, 25.376299, 25.447392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260206, 25.390118, 25.810741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.222586, 25.740141, 25.620825>,  <22.200014, 25.950155, 25.506874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.222586, 25.740141, 25.620825>,  <22.260206, 25.390118, 25.810741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222586, 25.740141, 25.620825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641457, 0.417982, 0.643291,
		0.761372, -0.244056, -0.600624,
		-0.094051, 0.875059, -0.474792,
		22.194370, 26.002659, 25.478388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.885250, 25.474588, 25.680740>,  <22.260206, 25.390118, 25.810741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.885250, 25.474588, 25.680740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.660315, 25.805092, 25.693830>,  <22.525354, 26.003395, 25.701685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.660315, 25.805092, 25.693830>,  <22.885250, 25.474588, 25.680740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.660315, 25.805092, 25.693830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653606, 0.419894, 0.629673,
		0.506533, 0.375478, -0.776171,
		-0.562338, 0.826260, 0.032725,
		22.491613, 26.052969, 25.703648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427589, 26.040710, 25.509439>,  <22.885250, 25.474588, 25.680740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427589, 26.040710, 25.509439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.113844, 26.218498, 25.682518>,  <22.925596, 26.325171, 25.786366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.113844, 26.218498, 25.682518>,  <23.427589, 26.040710, 25.509439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113844, 26.218498, 25.682518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615473, 0.470766, 0.632117,
		0.077258, 0.762121, -0.642809,
		-0.784362, 0.444468, 0.432695,
		22.878536, 26.351839, 25.812326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.683350, 26.787125, 25.651320>,  <23.427589, 26.040710, 25.509439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.683350, 26.787125, 25.651320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.363743, 26.717743, 25.881620>,  <23.171980, 26.676113, 26.019800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.363743, 26.717743, 25.881620>,  <23.683350, 26.787125, 25.651320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363743, 26.717743, 25.881620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473088, 0.409683, 0.779967,
		-0.371165, 0.895585, -0.245283,
		-0.799015, -0.173456, 0.575750,
		23.124039, 26.665707, 26.054346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586094, 27.376331, 26.053288>,  <23.683350, 26.787125, 25.651320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586094, 27.376331, 26.053288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.380644, 27.107496, 26.266638>,  <23.257374, 26.946196, 26.394648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.380644, 27.107496, 26.266638>,  <23.586094, 27.376331, 26.053288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380644, 27.107496, 26.266638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436426, 0.330575, 0.836811,
		-0.738730, 0.662586, 0.123524,
		-0.513625, -0.672086, 0.533376,
		23.226557, 26.905870, 26.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.282118, 27.750603, 26.582479>,  <23.586094, 27.376331, 26.053288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.282118, 27.750603, 26.582479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.280384, 27.374376, 26.718313>,  <23.279345, 27.148640, 26.799814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.280384, 27.374376, 26.718313>,  <23.282118, 27.750603, 26.582479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280384, 27.374376, 26.718313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435332, 0.303946, 0.847409,
		-0.900259, 0.151504, 0.408142,
		-0.004333, -0.940566, 0.339584,
		23.279085, 27.092207, 26.820189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000055, 27.765219, 27.377848>,  <23.282118, 27.750603, 26.582479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000055, 27.765219, 27.377848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.188055, 27.414789, 27.334768>,  <23.300854, 27.204533, 27.308920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.188055, 27.414789, 27.334768>,  <23.000055, 27.765219, 27.377848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.188055, 27.414789, 27.334768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544586, 0.191787, 0.816482,
		-0.694643, -0.442397, 0.567236,
		0.469998, -0.876072, -0.107699,
		23.329054, 27.151968, 27.302458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094889, 27.563103, 28.043880>,  <23.000055, 27.765219, 27.377848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094889, 27.563103, 28.043880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.353243, 27.371002, 27.806498>,  <23.508255, 27.255743, 27.664068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.353243, 27.371002, 27.806498>,  <23.094889, 27.563103, 28.043880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.353243, 27.371002, 27.806498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757453, 0.306006, 0.576737,
		-0.095376, -0.822023, 0.561411,
		0.645886, -0.480249, -0.593458,
		23.547009, 27.226927, 27.628460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923292, 27.191462, 28.824312>,  <23.094889, 27.563103, 28.043880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923292, 27.191462, 28.824312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.749823, 27.210350, 29.184244>,  <22.645741, 27.221684, 29.400204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.749823, 27.210350, 29.184244>,  <22.923292, 27.191462, 28.824312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749823, 27.210350, 29.184244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655882, -0.668206, 0.351169,
		0.617857, 0.742476, 0.258811,
		-0.433673, 0.047223, 0.899832,
		22.619720, 27.224516, 29.454193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696886, 26.456259, 29.238716>,  <22.923292, 27.191462, 28.824312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696886, 26.456259, 29.238716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340000, 26.470280, 29.418816>,  <22.125868, 26.478691, 29.526876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340000, 26.470280, 29.418816>,  <22.696886, 26.456259, 29.238716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340000, 26.470280, 29.418816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318950, -0.754735, -0.573276,
		0.319727, -0.655093, 0.684564,
		-0.892214, 0.035050, 0.450251,
		22.072336, 26.480795, 29.553890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529127, 25.773241, 29.375418>,  <22.696886, 26.456259, 29.238716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529127, 25.773241, 29.375418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.175501, 25.959715, 29.388672>,  <21.963326, 26.071600, 29.396626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.175501, 25.959715, 29.388672>,  <22.529127, 25.773241, 29.375418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175501, 25.959715, 29.388672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409203, -0.737849, -0.536779,
		-0.225789, -0.488107, 0.843072,
		-0.884066, 0.466187, 0.033137,
		21.910280, 26.099571, 29.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089352, 25.236338, 29.484411>,  <22.529127, 25.773241, 29.375418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089352, 25.236338, 29.484411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.852690, 25.528130, 29.347120>,  <21.710691, 25.703205, 29.264746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.852690, 25.528130, 29.347120>,  <22.089352, 25.236338, 29.484411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852690, 25.528130, 29.347120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391311, -0.632079, -0.668843,
		-0.704854, -0.261416, 0.659426,
		-0.591656, 0.729478, -0.343229,
		21.675194, 25.746973, 29.244152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527958, 24.815411, 29.232037>,  <22.089352, 25.236338, 29.484411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527958, 24.815411, 29.232037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.443638, 25.169592, 29.066370>,  <21.393045, 25.382101, 28.966970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.443638, 25.169592, 29.066370>,  <21.527958, 24.815411, 29.232037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443638, 25.169592, 29.066370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454383, -0.463890, -0.760488,
		-0.865505, 0.027878, 0.500124,
		-0.210802, 0.885454, -0.414167,
		21.380398, 25.435228, 28.942120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.792732, 24.877504, 29.148365>,  <21.527958, 24.815411, 29.232037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.792732, 24.877504, 29.148365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.969585, 25.105059, 28.870981>,  <21.075697, 25.241592, 28.704552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.969585, 25.105059, 28.870981>,  <20.792732, 24.877504, 29.148365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969585, 25.105059, 28.870981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629406, -0.354043, -0.691738,
		-0.639035, 0.742308, 0.201527,
		0.442133, 0.568887, -0.693459,
		21.102226, 25.275724, 28.662943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.196634, 25.168940, 28.744980>,  <20.792732, 24.877504, 29.148365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.196634, 25.168940, 28.744980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.498838, 25.245888, 28.494476>,  <20.680161, 25.292057, 28.344173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.498838, 25.245888, 28.494476>,  <20.196634, 25.168940, 28.744980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498838, 25.245888, 28.494476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622836, -0.085554, -0.777660,
		-0.203177, 0.977586, 0.055179,
		0.755509, 0.192370, -0.626259,
		20.725491, 25.303598, 28.306599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090149, 25.790979, 28.353659>,  <20.196634, 25.168940, 28.744980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090149, 25.790979, 28.353659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.318024, 25.532827, 28.150112>,  <20.454748, 25.377937, 28.027985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.318024, 25.532827, 28.150112>,  <20.090149, 25.790979, 28.353659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318024, 25.532827, 28.150112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730463, -0.113835, -0.673399,
		0.376670, 0.755334, -0.536275,
		0.569688, -0.645378, -0.508865,
		20.488930, 25.339214, 27.997452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814142, 25.764555, 27.609835>,  <20.090149, 25.790979, 28.353659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814142, 25.764555, 27.609835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101679, 25.490408, 27.563297>,  <20.274200, 25.325920, 27.535376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101679, 25.490408, 27.563297>,  <19.814142, 25.764555, 27.609835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101679, 25.490408, 27.563297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456153, -0.338744, -0.822908,
		0.524584, 0.644612, -0.556136,
		0.718844, -0.685367, -0.116342,
		20.317331, 25.284798, 27.528395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224060, 25.928648, 26.949478>,  <19.814142, 25.764555, 27.609835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224060, 25.928648, 26.949478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.243446, 25.540159, 27.042759>,  <20.255077, 25.307066, 27.098728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.243446, 25.540159, 27.042759>,  <20.224060, 25.928648, 26.949478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243446, 25.540159, 27.042759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358543, -0.234832, -0.903494,
		0.932254, -0.039825, -0.359606,
		0.048465, -0.971220, 0.233201,
		20.257986, 25.248793, 27.112719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431955, 25.574503, 26.377249>,  <20.224060, 25.928648, 26.949478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431955, 25.574503, 26.377249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.272118, 25.275265, 26.589165>,  <20.176216, 25.095722, 26.716314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.272118, 25.275265, 26.589165>,  <20.431955, 25.574503, 26.377249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272118, 25.275265, 26.589165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526652, -0.285689, -0.800637,
		0.750309, -0.598943, -0.279827,
		-0.399593, -0.748096, 0.529790,
		20.152239, 25.050837, 26.748102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491634, 25.039728, 25.976799>,  <20.431955, 25.574503, 26.377249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491634, 25.039728, 25.976799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.215193, 24.882269, 26.219259>,  <20.049328, 24.787794, 26.364735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.215193, 24.882269, 26.219259>,  <20.491634, 25.039728, 25.976799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215193, 24.882269, 26.219259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461174, -0.405572, -0.789196,
		0.556502, -0.824957, 0.098752,
		-0.691103, -0.393647, 0.606150,
		20.007862, 24.764175, 26.401104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416430, 24.296627, 25.743488>,  <20.491634, 25.039728, 25.976799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416430, 24.296627, 25.743488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.090834, 24.399097, 25.952023>,  <19.895475, 24.460581, 26.077143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.090834, 24.399097, 25.952023>,  <20.416430, 24.296627, 25.743488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090834, 24.399097, 25.952023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579682, -0.415812, -0.700764,
		0.037258, -0.872624, 0.486969,
		-0.813991, 0.256178, 0.521336,
		19.846636, 24.475950, 26.108423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032755, 23.636730, 25.910751>,  <20.416430, 24.296627, 25.743488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.032755, 23.636730, 25.910751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.787912, 23.952372, 25.890202>,  <19.641006, 24.141756, 25.877872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.787912, 23.952372, 25.890202>,  <20.032755, 23.636730, 25.910751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787912, 23.952372, 25.890202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444813, -0.397296, -0.802681,
		-0.653811, -0.468474, 0.594192,
		-0.612105, 0.789106, -0.051373,
		19.604280, 24.189104, 25.874790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392971, 23.409664, 25.661840>,  <20.032755, 23.636730, 25.910751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392971, 23.409664, 25.661840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.327497, 23.799488, 25.600605>,  <19.288214, 24.033382, 25.563864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.327497, 23.799488, 25.600605>,  <19.392971, 23.409664, 25.661840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327497, 23.799488, 25.600605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577156, -0.220455, -0.786314,
		-0.800062, -0.040349, 0.598559,
		-0.163682, 0.974562, -0.153090,
		19.278393, 24.091856, 25.554678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716623, 23.430101, 25.482731>,  <19.392971, 23.409664, 25.661840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716623, 23.430101, 25.482731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860703, 23.778797, 25.349865>,  <18.947149, 23.988014, 25.270145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860703, 23.778797, 25.349865>,  <18.716623, 23.430101, 25.482731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860703, 23.778797, 25.349865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569266, -0.076687, -0.818569,
		-0.739050, 0.483934, 0.468629,
		0.360196, 0.871738, -0.332163,
		18.968761, 24.040319, 25.250216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191978, 23.869299, 25.218103>,  <18.716623, 23.430101, 25.482731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.191978, 23.869299, 25.218103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.512230, 23.983667, 25.007486>,  <18.704380, 24.052288, 24.881117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.512230, 23.983667, 25.007486>,  <18.191978, 23.869299, 25.218103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512230, 23.983667, 25.007486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502748, -0.157491, -0.849966,
		-0.325948, 0.945223, 0.017655,
		0.800626, 0.285921, -0.526542,
		18.752419, 24.069443, 24.849524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972214, 24.240463, 24.650835>,  <18.191978, 23.869299, 25.218103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972214, 24.240463, 24.650835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337673, 24.130543, 24.531017>,  <18.556950, 24.064590, 24.459126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337673, 24.130543, 24.531017>,  <17.972214, 24.240463, 24.650835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337673, 24.130543, 24.531017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378255, -0.304834, -0.874070,
		0.148885, 0.911899, -0.382457,
		0.913650, -0.274803, -0.299545,
		18.611769, 24.048101, 24.441154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042322, 24.444941, 23.988527>,  <17.972214, 24.240463, 24.650835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042322, 24.444941, 23.988527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.322199, 24.161798, 24.027252>,  <18.490126, 23.991913, 24.050488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.322199, 24.161798, 24.027252>,  <18.042322, 24.444941, 23.988527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322199, 24.161798, 24.027252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262391, -0.380640, -0.886715,
		0.664514, 0.595027, -0.452065,
		0.699694, -0.707853, 0.096811,
		18.532106, 23.949442, 24.056295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279074, 24.414637, 23.335545>,  <18.042322, 24.444941, 23.988527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279074, 24.414637, 23.335545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.373798, 24.072107, 23.519121>,  <18.430634, 23.866589, 23.629267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.373798, 24.072107, 23.519121>,  <18.279074, 24.414637, 23.335545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373798, 24.072107, 23.519121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251129, -0.510276, -0.822528,
		0.938539, 0.079529, -0.335886,
		0.236810, -0.856326, 0.458942,
		18.444841, 23.815210, 23.656803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737459, 24.107557, 22.848040>,  <18.279074, 24.414637, 23.335545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737459, 24.107557, 22.848040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.588942, 23.834343, 23.099627>,  <18.499832, 23.670414, 23.250578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.588942, 23.834343, 23.099627>,  <18.737459, 24.107557, 22.848040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588942, 23.834343, 23.099627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104009, -0.642532, -0.759167,
		0.922672, -0.347292, 0.167526,
		-0.371293, -0.683038, 0.628968,
		18.477554, 23.629431, 23.288317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.679691, 14.892470, 7.607161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.541891, 14.520815, 7.553468>,  <18.459211, 14.297821, 7.521252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.541891, 14.520815, 7.553468>,  <18.679691, 14.892470, 7.607161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541891, 14.520815, 7.553468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873091, 0.369650, -0.317917,
		0.345007, 0.007672, -0.938569,
		-0.344503, -0.929139, -0.134231,
		18.438541, 14.242073, 7.513198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518528, 14.735009, 6.883726>,  <18.679691, 14.892470, 7.607161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518528, 14.735009, 6.883726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.267647, 14.535014, 7.122599>,  <18.117117, 14.415017, 7.265923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.267647, 14.535014, 7.122599>,  <18.518528, 14.735009, 6.883726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267647, 14.535014, 7.122599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777717, 0.443490, -0.445504,
		-0.042098, -0.743861, -0.667007,
		-0.627204, -0.499988, 0.597183,
		18.079485, 14.385018, 7.301754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953222, 14.618637, 6.480445>,  <18.518528, 14.735009, 6.883726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953222, 14.618637, 6.480445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.788679, 14.603263, 6.844710>,  <17.689953, 14.594038, 7.063270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.788679, 14.603263, 6.844710>,  <17.953222, 14.618637, 6.480445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788679, 14.603263, 6.844710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886253, 0.250274, -0.389767,
		-0.212935, -0.967412, -0.137016,
		-0.411357, -0.038436, 0.910663,
		17.665272, 14.591732, 7.117909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344698, 14.237578, 6.384320>,  <17.953222, 14.618637, 6.480445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344698, 14.237578, 6.384320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.312120, 14.518570, 6.667132>,  <17.292574, 14.687164, 6.836819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.312120, 14.518570, 6.667132>,  <17.344698, 14.237578, 6.384320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312120, 14.518570, 6.667132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965191, 0.121309, -0.231713,
		-0.248542, -0.701291, 0.668145,
		-0.081446, 0.702478, 0.707030,
		17.287687, 14.729313, 6.879241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830360, 14.028913, 6.881568>,  <17.344698, 14.237578, 6.384320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830360, 14.028913, 6.881568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.861599, 14.424339, 6.829967>,  <16.880342, 14.661594, 6.799006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.861599, 14.424339, 6.829967>,  <16.830360, 14.028913, 6.881568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861599, 14.424339, 6.829967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895384, 0.012652, -0.445115,
		-0.438393, 0.150270, 0.886132,
		0.078099, 0.988564, -0.129002,
		16.885029, 14.720908, 6.791266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311979, 14.483394, 7.100583>,  <16.830360, 14.028913, 6.881568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311979, 14.483394, 7.100583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.439180, 14.669514, 6.770160>,  <16.515501, 14.781186, 6.571907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.439180, 14.669514, 6.770160>,  <16.311979, 14.483394, 7.100583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439180, 14.669514, 6.770160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928346, -0.024066, -0.370936,
		-0.192477, 0.884825, 0.424307,
		0.318002, 0.465300, -0.826057,
		16.534580, 14.809104, 6.522343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011284, 15.244472, 6.894712>,  <16.311979, 14.483394, 7.100583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011284, 15.244472, 6.894712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.109612, 14.992093, 6.600371>,  <16.168608, 14.840666, 6.423766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.109612, 14.992093, 6.600371>,  <16.011284, 15.244472, 6.894712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109612, 14.992093, 6.600371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943528, 0.018192, -0.330793,
		0.222099, 0.775613, -0.590844,
		0.245819, -0.630947, -0.735853,
		16.183357, 14.802809, 6.379615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867789, 15.568631, 6.197136>,  <16.011284, 15.244472, 6.894712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867789, 15.568631, 6.197136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.860579, 15.169106, 6.179022>,  <15.856254, 14.929392, 6.168153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.860579, 15.169106, 6.179022>,  <15.867789, 15.568631, 6.197136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860579, 15.169106, 6.179022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866848, 0.038181, -0.497108,
		0.498246, 0.030296, -0.866506,
		-0.018024, -0.998812, -0.045286,
		15.855172, 14.869463, 6.165436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227631, 15.926526, 6.806841>,  <15.867789, 15.568631, 6.197136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227631, 15.926526, 6.806841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.511793, 16.204823, 6.849306>,  <16.682291, 16.371799, 6.874784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.511793, 16.204823, 6.849306>,  <16.227631, 15.926526, 6.806841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511793, 16.204823, 6.849306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100657, -0.249730, 0.963070,
		0.696558, -0.673484, -0.247441,
		0.710405, 0.695740, 0.106160,
		16.724915, 16.413546, 6.881154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998072, 15.717117, 7.004491>,  <16.227631, 15.926526, 6.806841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998072, 15.717117, 7.004491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.825521, 16.053535, 7.135063>,  <16.721991, 16.255386, 7.213407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.825521, 16.053535, 7.135063>,  <16.998072, 15.717117, 7.004491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825521, 16.053535, 7.135063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071864, -0.328644, 0.941716,
		0.899305, 0.429693, 0.081329,
		-0.431377, 0.841045, 0.326431,
		16.696108, 16.305849, 7.232992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437574, 16.202394, 7.458971>,  <16.998072, 15.717117, 7.004491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437574, 16.202394, 7.458971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.066622, 16.275599, 7.589491>,  <16.844049, 16.319521, 7.667803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.066622, 16.275599, 7.589491>,  <17.437574, 16.202394, 7.458971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066622, 16.275599, 7.589491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210920, -0.464604, 0.860033,
		0.308994, 0.866401, 0.392265,
		-0.927381, 0.183008, 0.326301,
		16.788408, 16.330502, 7.687381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496132, 16.528332, 8.193117>,  <17.437574, 16.202394, 7.458971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496132, 16.528332, 8.193117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133661, 16.362953, 8.157553>,  <16.916178, 16.263725, 8.136214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133661, 16.362953, 8.157553>,  <17.496132, 16.528332, 8.193117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133661, 16.362953, 8.157553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105174, -0.423964, 0.899552,
		-0.409611, 0.805803, 0.427670,
		-0.906178, -0.413446, -0.088911,
		16.861809, 16.238920, 8.130879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146648, 16.856638, 8.755908>,  <17.496132, 16.528332, 8.193117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146648, 16.856638, 8.755908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.974749, 16.508862, 8.658428>,  <16.871609, 16.300196, 8.599940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.974749, 16.508862, 8.658428>,  <17.146648, 16.856638, 8.755908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974749, 16.508862, 8.658428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202673, -0.355885, 0.912288,
		-0.879910, 0.342662, 0.329153,
		-0.429747, -0.869441, -0.243699,
		16.845825, 16.248030, 8.585319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914852, 16.625793, 9.385344>,  <17.146648, 16.856638, 8.755908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914852, 16.625793, 9.385344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.855768, 16.310890, 9.145876>,  <16.820318, 16.121948, 9.002195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.855768, 16.310890, 9.145876>,  <16.914852, 16.625793, 9.385344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855768, 16.310890, 9.145876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026576, -0.601930, 0.798107,
		-0.988674, 0.133798, 0.067988,
		-0.147709, -0.787260, -0.598668,
		16.811455, 16.074713, 8.966275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557312, 16.173393, 9.862535>,  <16.914852, 16.625793, 9.385344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557312, 16.173393, 9.862535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.695095, 15.939131, 9.569043>,  <16.777765, 15.798573, 9.392948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.695095, 15.939131, 9.569043>,  <16.557312, 16.173393, 9.862535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.695095, 15.939131, 9.569043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307387, -0.668118, 0.677592,
		-0.887052, -0.458942, -0.050117,
		0.344459, -0.585654, -0.733728,
		16.798433, 15.763434, 9.348925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229851, 15.441665, 9.877557>,  <16.557312, 16.173393, 9.862535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229851, 15.441665, 9.877557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.601341, 15.441837, 9.729250>,  <16.824236, 15.441941, 9.640265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.601341, 15.441837, 9.729250>,  <16.229851, 15.441665, 9.877557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601341, 15.441837, 9.729250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265950, -0.697544, 0.665359,
		-0.258339, -0.716542, -0.647942,
		0.928726, 0.000432, -0.370767,
		16.879959, 15.441967, 9.618020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.367388, 14.755206, 9.887218>,  <16.229851, 15.441665, 9.877557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.367388, 14.755206, 9.887218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.720917, 14.941888, 9.874310>,  <16.933035, 15.053897, 9.866565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.720917, 14.941888, 9.874310>,  <16.367388, 14.755206, 9.887218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720917, 14.941888, 9.874310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344021, -0.601647, 0.720882,
		0.317024, -0.648235, -0.692306,
		0.883824, 0.466704, -0.032270,
		16.986065, 15.081899, 9.864629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892849, 14.282595, 10.112575>,  <16.367388, 14.755206, 9.887218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892849, 14.282595, 10.112575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.119040, 14.611978, 10.094001>,  <17.254753, 14.809608, 10.082856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.119040, 14.611978, 10.094001>,  <16.892849, 14.282595, 10.112575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119040, 14.611978, 10.094001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555532, -0.338665, 0.759401,
		0.609609, -0.455218, -0.648964,
		0.565475, 0.823458, -0.046435,
		17.288681, 14.859015, 10.080070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589567, 14.033454, 10.020984>,  <16.892849, 14.282595, 10.112575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589567, 14.033454, 10.020984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.630009, 14.391170, 10.195351>,  <17.654274, 14.605799, 10.299971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.630009, 14.391170, 10.195351>,  <17.589567, 14.033454, 10.020984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630009, 14.391170, 10.195351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535766, -0.418142, 0.733561,
		0.838292, 0.159385, -0.521405,
		0.101103, 0.894289, 0.435918,
		17.660339, 14.659456, 10.326126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319630, 14.101871, 10.194590>,  <17.589567, 14.033454, 10.020984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319630, 14.101871, 10.194590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.124846, 14.366390, 10.422818>,  <18.007975, 14.525102, 10.559755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.124846, 14.366390, 10.422818>,  <18.319630, 14.101871, 10.194590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124846, 14.366390, 10.422818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566723, -0.257846, 0.782522,
		0.664600, 0.704415, -0.249212,
		-0.486962, 0.661298, 0.570573,
		17.978756, 14.564779, 10.593990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906239, 14.477654, 10.430841>,  <18.319630, 14.101871, 10.194590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906239, 14.477654, 10.430841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.585299, 14.494601, 10.668980>,  <18.392735, 14.504770, 10.811863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.585299, 14.494601, 10.668980>,  <18.906239, 14.477654, 10.430841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.585299, 14.494601, 10.668980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497585, -0.503367, 0.706421,
		0.329609, 0.863033, 0.382795,
		-0.802351, 0.042370, 0.595346,
		18.344593, 14.507312, 10.847584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083328, 14.815164, 11.076516>,  <18.906239, 14.477654, 10.430841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.083328, 14.815164, 11.076516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.758583, 14.598986, 11.164880>,  <18.563736, 14.469279, 11.217898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.758583, 14.598986, 11.164880>,  <19.083328, 14.815164, 11.076516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.758583, 14.598986, 11.164880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468707, -0.377690, 0.798539,
		-0.348130, 0.751845, 0.559942,
		-0.811862, -0.540444, 0.220909,
		18.515024, 14.436852, 11.231153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189390, 14.712214, 11.801553>,  <19.083328, 14.815164, 11.076516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189390, 14.712214, 11.801553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.886990, 14.461891, 11.724792>,  <18.705549, 14.311698, 11.678735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.886990, 14.461891, 11.724792>,  <19.189390, 14.712214, 11.801553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886990, 14.461891, 11.724792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172339, -0.473131, 0.863971,
		-0.631473, 0.620093, 0.465539,
		-0.756003, -0.625805, -0.191904,
		18.660189, 14.274150, 11.667220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994032, 14.586084, 12.415931>,  <19.189390, 14.712214, 11.801553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.994032, 14.586084, 12.415931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.847561, 14.292596, 12.186996>,  <18.759678, 14.116503, 12.049636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.847561, 14.292596, 12.186996>,  <18.994032, 14.586084, 12.415931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847561, 14.292596, 12.186996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073651, -0.635976, 0.768186,
		-0.927626, 0.239139, 0.286919,
		-0.366177, -0.733721, -0.572335,
		18.737707, 14.072479, 12.015296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352530, 14.255940, 12.799715>,  <18.994032, 14.586084, 12.415931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352530, 14.255940, 12.799715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.526598, 13.992516, 12.554139>,  <18.631039, 13.834460, 12.406794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.526598, 13.992516, 12.554139>,  <18.352530, 14.255940, 12.799715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526598, 13.992516, 12.554139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020780, -0.674362, 0.738108,
		-0.900108, -0.333961, -0.279778,
		0.435171, -0.658563, -0.613939,
		18.657148, 13.794947, 12.369958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118578, 13.657022, 12.986854>,  <18.352530, 14.255940, 12.799715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.118578, 13.657022, 12.986854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.433512, 13.526889, 12.777373>,  <18.622473, 13.448809, 12.651685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.433512, 13.526889, 12.777373>,  <18.118578, 13.657022, 12.986854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433512, 13.526889, 12.777373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236451, -0.625142, 0.743834,
		-0.569384, -0.709475, -0.415269,
		0.787333, -0.325336, -0.523701,
		18.669712, 13.429288, 12.620263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190245, 12.878130, 13.200503>,  <18.118578, 13.657022, 12.986854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190245, 12.878130, 13.200503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.548853, 12.977241, 13.053612>,  <18.764017, 13.036707, 12.965477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.548853, 12.977241, 13.053612>,  <18.190245, 12.878130, 13.200503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548853, 12.977241, 13.053612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427033, -0.262810, 0.865201,
		0.117865, -0.932490, -0.341423,
		0.896521, 0.247776, -0.367228,
		18.817810, 13.051573, 12.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484646, 12.292839, 13.402227>,  <18.190245, 12.878130, 13.200503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484646, 12.292839, 13.402227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.766891, 12.563542, 13.318224>,  <18.936239, 12.725965, 13.267822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.766891, 12.563542, 13.318224>,  <18.484646, 12.292839, 13.402227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766891, 12.563542, 13.318224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567810, -0.362719, 0.738936,
		0.423908, -0.640649, -0.640211,
		0.705616, 0.676759, -0.210008,
		18.978577, 12.766570, 13.255221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101429, 11.934786, 13.524069>,  <18.484646, 12.292839, 13.402227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101429, 11.934786, 13.524069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.224283, 12.315224, 13.537260>,  <19.297995, 12.543487, 13.545175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.224283, 12.315224, 13.537260>,  <19.101429, 11.934786, 13.524069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224283, 12.315224, 13.537260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593570, -0.218536, 0.774542,
		0.743870, -0.218314, -0.631662,
		0.307134, 0.951095, 0.032977,
		19.316423, 12.600553, 13.547153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859505, 11.886286, 13.527448>,  <19.101429, 11.934786, 13.524069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859505, 11.886286, 13.527448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.723692, 12.222732, 13.695850>,  <19.642204, 12.424599, 13.796892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.723692, 12.222732, 13.695850>,  <19.859505, 11.886286, 13.527448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723692, 12.222732, 13.695850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568707, -0.172938, 0.804155,
		0.749193, 0.512465, -0.419630,
		-0.339532, 0.841113, 0.421007,
		19.621832, 12.475065, 13.822152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411451, 12.366941, 13.695707>,  <19.859505, 11.886286, 13.527448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.411451, 12.366941, 13.695707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.095760, 12.404208, 13.938504>,  <19.906345, 12.426568, 14.084183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.095760, 12.404208, 13.938504>,  <20.411451, 12.366941, 13.695707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095760, 12.404208, 13.938504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558649, -0.301533, 0.772651,
		0.255014, 0.948893, 0.185931,
		-0.789227, 0.093166, 0.606993,
		19.858992, 12.432158, 14.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539566, 12.927447, 14.138324>,  <20.411451, 12.366941, 13.695707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539566, 12.927447, 14.138324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301264, 12.640578, 14.282954>,  <20.158283, 12.468456, 14.369733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301264, 12.640578, 14.282954>,  <20.539566, 12.927447, 14.138324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301264, 12.640578, 14.282954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670600, -0.196412, 0.715345,
		-0.442008, 0.668644, 0.597950,
		-0.595756, -0.717173, 0.361577,
		20.122538, 12.425426, 14.391427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625761, 13.377191, 14.745500>,  <20.539566, 12.927447, 14.138324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625761, 13.377191, 14.745500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874136, 13.193579, 14.491341>,  <21.023161, 13.083412, 14.338845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874136, 13.193579, 14.491341>,  <20.625761, 13.377191, 14.745500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874136, 13.193579, 14.491341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030318, 0.795929, -0.604630,
		0.783274, 0.394702, 0.480305,
		0.620937, -0.459029, -0.635397,
		21.060417, 13.055870, 14.300721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423836, 13.697622, 14.609159>,  <20.625761, 13.377191, 14.745500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423836, 13.697622, 14.609159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.217705, 13.521771, 14.314903>,  <21.094027, 13.416261, 14.138350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.217705, 13.521771, 14.314903>,  <21.423836, 13.697622, 14.609159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217705, 13.521771, 14.314903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182485, 0.895001, -0.407030,
		0.837338, -0.075511, -0.541446,
		-0.515329, -0.439627, -0.735638,
		21.063107, 13.389883, 14.094212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855495, 13.805833, 14.059135>,  <21.423836, 13.697622, 14.609159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855495, 13.805833, 14.059135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.457121, 13.771286, 14.048889>,  <21.218096, 13.750558, 14.042742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.457121, 13.771286, 14.048889>,  <21.855495, 13.805833, 14.059135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.457121, 13.771286, 14.048889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085195, 0.995403, -0.043747,
		0.029276, -0.041387, -0.998714,
		-0.995934, -0.086366, -0.025616,
		21.158340, 13.745376, 14.041204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.542673, 14.171229, 13.445797>,  <21.855495, 13.805833, 14.059135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.542673, 14.171229, 13.445797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325054, 14.118649, 13.777275>,  <21.194483, 14.087102, 13.976162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325054, 14.118649, 13.777275>,  <21.542673, 14.171229, 13.445797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325054, 14.118649, 13.777275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162610, 0.985445, 0.049558,
		-0.823148, -0.107792, -0.557502,
		-0.544046, -0.131449, 0.828695,
		21.161840, 14.079215, 14.025884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856102, 14.311448, 13.302114>,  <21.542673, 14.171229, 13.445797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856102, 14.311448, 13.302114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019968, 14.392120, 13.657978>,  <21.118288, 14.440524, 13.871497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019968, 14.392120, 13.657978>,  <20.856102, 14.311448, 13.302114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.019968, 14.392120, 13.657978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279391, 0.956127, -0.088097,
		-0.868398, -0.212473, 0.448040,
		0.409664, 0.201682, 0.889663,
		21.142868, 14.452625, 13.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394871, 14.684546, 13.651993>,  <20.856102, 14.311448, 13.302114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394871, 14.684546, 13.651993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.755863, 14.774590, 13.798881>,  <20.972460, 14.828617, 13.887013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.755863, 14.774590, 13.798881>,  <20.394871, 14.684546, 13.651993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755863, 14.774590, 13.798881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173048, 0.970223, -0.169474,
		-0.394435, 0.089401, 0.914565,
		0.902483, 0.225110, 0.367219,
		21.026608, 14.842124, 13.909046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337399, 14.920116, 14.291646>,  <20.394871, 14.684546, 13.651993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337399, 14.920116, 14.291646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.631857, 15.027588, 14.043162>,  <20.808533, 15.092071, 13.894073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.631857, 15.027588, 14.043162>,  <20.337399, 14.920116, 14.291646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631857, 15.027588, 14.043162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374369, 0.926282, -0.043012,
		0.563858, 0.264225, 0.782464,
		0.736146, 0.268678, -0.621209,
		20.852701, 15.108191, 13.856800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612005, 15.498847, 14.577293>,  <20.337399, 14.920116, 14.291646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612005, 15.498847, 14.577293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676598, 15.498491, 14.182543>,  <20.715353, 15.498278, 13.945693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676598, 15.498491, 14.182543>,  <20.612005, 15.498847, 14.577293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676598, 15.498491, 14.182543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407977, 0.910488, -0.067575,
		0.898599, 0.413535, 0.146662,
		0.161479, -0.000888, -0.986876,
		20.725040, 15.498225, 13.886480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.653557, 16.123770, 14.420786>,  <20.612005, 15.498847, 14.577293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.653557, 16.123770, 14.420786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.610552, 15.998111, 14.043479>,  <20.584749, 15.922715, 13.817095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.610552, 15.998111, 14.043479>,  <20.653557, 16.123770, 14.420786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610552, 15.998111, 14.043479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501944, 0.836122, -0.221251,
		0.858191, 0.449680, -0.247579,
		-0.107514, -0.314147, -0.943267,
		20.578297, 15.903867, 13.760499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.628540, 16.691792, 14.040997>,  <20.653557, 16.123770, 14.420786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.628540, 16.691792, 14.040997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467295, 16.438650, 13.776574>,  <20.370548, 16.286764, 13.617921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467295, 16.438650, 13.776574>,  <20.628540, 16.691792, 14.040997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467295, 16.438650, 13.776574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611460, 0.723700, -0.319959,
		0.680895, 0.275231, -0.678697,
		-0.403111, -0.632855, -0.661057,
		20.346361, 16.248793, 13.578258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607662, 17.045677, 13.446178>,  <20.628540, 16.691792, 14.040997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607662, 17.045677, 13.446178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.333107, 16.755253, 13.462730>,  <20.168375, 16.580999, 13.472662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.333107, 16.755253, 13.462730>,  <20.607662, 17.045677, 13.446178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333107, 16.755253, 13.462730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707010, 0.652887, -0.271799,
		0.170325, -0.215816, -0.961464,
		-0.686386, -0.726059, 0.041381,
		20.127192, 16.537436, 13.475144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201519, 17.165207, 12.815103>,  <20.607662, 17.045677, 13.446178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201519, 17.165207, 12.815103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.995007, 16.919878, 13.054197>,  <19.871099, 16.772680, 13.197654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.995007, 16.919878, 13.054197>,  <20.201519, 17.165207, 12.815103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995007, 16.919878, 13.054197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845995, 0.473802, -0.244549,
		-0.133221, -0.631938, -0.763483,
		-0.516279, -0.613324, 0.597737,
		19.840122, 16.735880, 13.233519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596159, 17.213476, 12.452114>,  <20.201519, 17.165207, 12.815103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596159, 17.213476, 12.452114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.482307, 17.050381, 12.799155>,  <19.413998, 16.952522, 13.007380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.482307, 17.050381, 12.799155>,  <19.596159, 17.213476, 12.452114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482307, 17.050381, 12.799155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903593, 0.416375, -0.100753,
		-0.320167, -0.812637, -0.486943,
		-0.284627, -0.407740, 0.867603,
		19.396919, 16.928059, 13.059436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953495, 16.864309, 12.385110>,  <19.596159, 17.213476, 12.452114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953495, 16.864309, 12.385110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.967136, 16.946280, 12.776383>,  <18.975321, 16.995462, 13.011147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.967136, 16.946280, 12.776383>,  <18.953495, 16.864309, 12.385110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967136, 16.946280, 12.776383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942772, 0.331426, -0.036564,
		-0.331689, -0.920957, 0.204500,
		0.034102, 0.204925, 0.978183,
		18.977367, 17.007757, 13.069839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399019, 16.515104, 12.634232>,  <18.953495, 16.864309, 12.385110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399019, 16.515104, 12.634232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.459261, 16.793310, 12.915251>,  <18.495405, 16.960234, 13.083862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.459261, 16.793310, 12.915251>,  <18.399019, 16.515104, 12.634232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459261, 16.793310, 12.915251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981881, 0.187917, 0.024447,
		-0.115018, -0.693501, 0.711216,
		0.150603, 0.695517, 0.702549,
		18.504442, 17.001965, 13.126016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846230, 16.430164, 13.089046>,  <18.399019, 16.515104, 12.634232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846230, 16.430164, 13.089046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.001884, 16.798336, 13.103937>,  <18.095278, 17.019239, 13.112872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.001884, 16.798336, 13.103937>,  <17.846230, 16.430164, 13.089046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001884, 16.798336, 13.103937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919834, 0.390434, -0.038301,
		-0.049788, -0.019340, 0.998573,
		0.389136, 0.920428, 0.037228,
		18.118626, 17.074465, 13.115106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344732, 16.771584, 13.422144>,  <17.846230, 16.430164, 13.089046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344732, 16.771584, 13.422144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.550306, 17.095171, 13.307990>,  <17.673651, 17.289324, 13.239498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.550306, 17.095171, 13.307990>,  <17.344732, 16.771584, 13.422144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550306, 17.095171, 13.307990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837485, 0.545189, 0.037243,
		0.185717, 0.219864, 0.957689,
		0.513933, 0.808967, -0.285384,
		17.704487, 17.337862, 13.222375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073030, 17.375597, 13.812564>,  <17.344732, 16.771584, 13.422144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073030, 17.375597, 13.812564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.236378, 17.530867, 13.482097>,  <17.334387, 17.624029, 13.283816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.236378, 17.530867, 13.482097>,  <17.073030, 17.375597, 13.812564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236378, 17.530867, 13.482097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729646, 0.682659, -0.039911,
		0.548499, 0.619109, 0.562007,
		0.408369, 0.388175, -0.826169,
		17.358889, 17.647320, 13.234246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997734, 18.015732, 13.981961>,  <17.073030, 17.375597, 13.812564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997734, 18.015732, 13.981961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094042, 18.058468, 13.596087>,  <17.151827, 18.084110, 13.364563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094042, 18.058468, 13.596087>,  <16.997734, 18.015732, 13.981961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094042, 18.058468, 13.596087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740256, 0.663045, -0.111322,
		0.627735, 0.740915, 0.238732,
		0.240770, 0.106842, -0.964684,
		17.166273, 18.090521, 13.306683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220352, 18.746485, 13.922214>,  <16.997734, 18.015732, 13.981961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220352, 18.746485, 13.922214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.101936, 18.611534, 13.564770>,  <17.030886, 18.530563, 13.350304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.101936, 18.611534, 13.564770>,  <17.220352, 18.746485, 13.922214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101936, 18.611534, 13.564770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660696, 0.747962, -0.063509,
		0.689811, 0.571603, -0.444331,
		-0.296041, -0.337377, -0.893609,
		17.013124, 18.510321, 13.296687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.120201, 21.764622, 17.759678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049212, 21.533060, 18.078016>,  <20.006617, 21.394123, 18.269020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049212, 21.533060, 18.078016>,  <20.120201, 21.764622, 17.759678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049212, 21.533060, 18.078016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193328, -0.772419, -0.604973,
		0.964949, -0.261228, 0.025168,
		-0.177476, -0.578903, 0.795848,
		19.995968, 21.359390, 18.316771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.467005, 21.139479, 17.588089>,  <20.120201, 21.764622, 17.759678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.467005, 21.139479, 17.588089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187344, 21.043695, 17.857561>,  <20.019547, 20.986225, 18.019243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187344, 21.043695, 17.857561>,  <20.467005, 21.139479, 17.588089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187344, 21.043695, 17.857561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204350, -0.836013, -0.509238,
		0.685145, -0.493703, 0.535569,
		-0.699155, -0.239458, 0.673678,
		19.977596, 20.971857, 18.059664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475195, 20.308722, 17.660131>,  <20.467005, 21.139479, 17.588089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475195, 20.308722, 17.660131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122318, 20.375179, 17.836374>,  <19.910593, 20.415054, 17.942120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122318, 20.375179, 17.836374>,  <20.475195, 20.308722, 17.660131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122318, 20.375179, 17.836374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364720, -0.832937, -0.416168,
		0.297855, -0.527838, 0.795405,
		-0.882191, 0.166142, 0.440608,
		19.857660, 20.425022, 17.968557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347559, 19.617010, 17.910831>,  <20.475195, 20.308722, 17.660131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347559, 19.617010, 17.910831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034267, 19.864395, 17.885336>,  <19.846292, 20.012825, 17.870039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034267, 19.864395, 17.885336>,  <20.347559, 19.617010, 17.910831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034267, 19.864395, 17.885336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504540, -0.692146, -0.516113,
		-0.363311, -0.372076, 0.854146,
		-0.783227, 0.618460, -0.063737,
		19.799299, 20.049932, 17.866215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839628, 19.255983, 18.133408>,  <20.347559, 19.617010, 17.910831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839628, 19.255983, 18.133408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639400, 19.548975, 17.948841>,  <19.519264, 19.724770, 17.838102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639400, 19.548975, 17.948841>,  <19.839628, 19.255983, 18.133408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639400, 19.548975, 17.948841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634204, -0.673079, -0.380461,
		-0.589248, 0.102183, 0.801465,
		-0.500572, 0.732478, -0.461415,
		19.489229, 19.768719, 17.810417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188292, 19.184465, 18.288084>,  <19.839628, 19.255983, 18.133408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188292, 19.184465, 18.288084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177742, 19.405100, 17.954603>,  <19.171412, 19.537479, 17.754515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177742, 19.405100, 17.954603>,  <19.188292, 19.184465, 18.288084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177742, 19.405100, 17.954603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743095, -0.568674, -0.352733,
		-0.668666, 0.610216, 0.424878,
		-0.026374, 0.551585, -0.833702,
		19.169830, 19.570576, 17.704493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502161, 19.478783, 18.188728>,  <19.188292, 19.184465, 18.288084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502161, 19.478783, 18.188728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663822, 19.475618, 17.822865>,  <18.760818, 19.473719, 17.603346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663822, 19.475618, 17.822865>,  <18.502161, 19.478783, 18.188728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.663822, 19.475618, 17.822865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730044, -0.605251, -0.317342,
		-0.551087, 0.795995, -0.250389,
		0.404151, -0.007912, -0.914658,
		18.785069, 19.473246, 17.548468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942318, 19.460947, 17.740259>,  <18.502161, 19.478783, 18.188728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942318, 19.460947, 17.740259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238033, 19.343084, 17.498060>,  <18.415462, 19.272367, 17.352741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238033, 19.343084, 17.498060>,  <17.942318, 19.460947, 17.740259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238033, 19.343084, 17.498060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647618, -0.557483, -0.519426,
		-0.184502, 0.776138, -0.602967,
		0.739290, -0.294657, -0.605497,
		18.459820, 19.254688, 17.316410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639853, 19.491589, 17.098383>,  <17.942318, 19.460947, 17.740259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639853, 19.491589, 17.098383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.952204, 19.242067, 17.085135>,  <18.139614, 19.092354, 17.077185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.952204, 19.242067, 17.085135>,  <17.639853, 19.491589, 17.098383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952204, 19.242067, 17.085135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548933, -0.659912, -0.513020,
		0.298166, 0.418788, -0.857738,
		0.780878, -0.623806, -0.033123,
		18.186466, 19.054926, 17.075197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559763, 19.218983, 16.435844>,  <17.639853, 19.491589, 17.098383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559763, 19.218983, 16.435844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836143, 18.975739, 16.592196>,  <18.001972, 18.829792, 16.686007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836143, 18.975739, 16.592196>,  <17.559763, 19.218983, 16.435844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836143, 18.975739, 16.592196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321632, -0.742844, -0.587143,
		0.647410, 0.279968, -0.708857,
		0.690951, -0.608113, 0.390878,
		18.043428, 18.793304, 16.709459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919331, 18.943014, 15.870415>,  <17.559763, 19.218983, 16.435844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919331, 18.943014, 15.870415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975422, 18.694590, 16.178862>,  <18.009077, 18.545536, 16.363930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975422, 18.694590, 16.178862>,  <17.919331, 18.943014, 15.870415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975422, 18.694590, 16.178862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242729, -0.776610, -0.581343,
		0.959905, -0.105651, -0.259653,
		0.140229, -0.621060, 0.771117,
		18.017490, 18.508272, 16.410196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887148, 18.374542, 15.514017>,  <17.919331, 18.943014, 15.870415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.887148, 18.374542, 15.514017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902578, 18.250229, 15.893896>,  <17.911837, 18.175640, 16.121824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902578, 18.250229, 15.893896>,  <17.887148, 18.374542, 15.514017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902578, 18.250229, 15.893896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307409, -0.908004, -0.284655,
		0.950796, -0.280965, -0.130563,
		0.038574, -0.310785, 0.949697,
		17.914150, 18.156994, 16.178804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578297, 17.757107, 15.479315>,  <17.887148, 18.374542, 15.514017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578297, 17.757107, 15.479315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721405, 17.719326, 15.850923>,  <17.807270, 17.696657, 16.073887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721405, 17.719326, 15.850923>,  <17.578297, 17.757107, 15.479315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721405, 17.719326, 15.850923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301594, -0.953242, 0.019233,
		0.883765, -0.287068, -0.369528,
		0.357771, -0.094450, 0.929021,
		17.828735, 17.690990, 16.129629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968697, 17.275473, 15.349627>,  <17.578297, 17.757107, 15.479315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968697, 17.275473, 15.349627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811758, 17.267265, 15.717462>,  <17.717594, 17.262341, 15.938163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811758, 17.267265, 15.717462>,  <17.968697, 17.275473, 15.349627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811758, 17.267265, 15.717462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446753, -0.869658, -0.210014,
		0.804037, -0.493227, 0.332040,
		-0.392346, -0.020519, 0.919589,
		17.694054, 17.261110, 15.993339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654827, 17.020792, 15.658517>,  <17.968697, 17.275473, 15.349627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654827, 17.020792, 15.658517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839327, 16.678389, 15.565137>,  <18.950027, 16.472946, 15.509109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839327, 16.678389, 15.565137>,  <18.654827, 17.020792, 15.658517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839327, 16.678389, 15.565137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402368, -0.032698, 0.914894,
		-0.790790, -0.515927, 0.329348,
		0.461250, -0.856008, -0.233449,
		18.977701, 16.421587, 15.495102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620708, 16.579840, 16.130262>,  <18.654827, 17.020792, 15.658517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620708, 16.579840, 16.130262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953810, 16.416780, 15.980413>,  <19.153671, 16.318945, 15.890504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953810, 16.416780, 15.980413>,  <18.620708, 16.579840, 16.130262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953810, 16.416780, 15.980413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370964, -0.091450, 0.924133,
		-0.410981, -0.908548, 0.075068,
		0.832755, -0.407648, -0.374623,
		19.203636, 16.294487, 15.868027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837893, 16.015802, 16.590326>,  <18.620708, 16.579840, 16.130262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837893, 16.015802, 16.590326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175613, 16.110418, 16.397993>,  <19.378246, 16.167187, 16.282593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175613, 16.110418, 16.397993>,  <18.837893, 16.015802, 16.590326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175613, 16.110418, 16.397993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481105, 0.060561, 0.874569,
		0.235990, -0.969733, -0.062669,
		0.844302, 0.236540, -0.480835,
		19.428904, 16.181379, 16.253742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272118, 15.859076, 17.008802>,  <18.837893, 16.015802, 16.590326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272118, 15.859076, 17.008802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498825, 16.079853, 16.764135>,  <19.634850, 16.212320, 16.617336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498825, 16.079853, 16.764135>,  <19.272118, 15.859076, 17.008802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498825, 16.079853, 16.764135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529096, 0.325252, 0.783753,
		0.631532, -0.767834, -0.107690,
		0.566766, 0.551943, -0.611666,
		19.668856, 16.245436, 16.580635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031124, 15.673179, 17.051987>,  <19.272118, 15.859076, 17.008802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031124, 15.673179, 17.051987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032883, 16.056343, 16.937176>,  <20.033937, 16.286242, 16.868288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032883, 16.056343, 16.937176>,  <20.031124, 15.673179, 17.051987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032883, 16.056343, 16.937176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657332, 0.213539, 0.722715,
		0.753589, -0.191849, -0.628727,
		0.004394, 0.957912, -0.287029,
		20.034201, 16.343716, 16.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610556, 15.917273, 17.272186>,  <20.031124, 15.673179, 17.051987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610556, 15.917273, 17.272186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426983, 16.262865, 17.189320>,  <20.316839, 16.470221, 17.139599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426983, 16.262865, 17.189320>,  <20.610556, 15.917273, 17.272186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426983, 16.262865, 17.189320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554484, 0.460707, 0.693035,
		0.694213, 0.203184, -0.690496,
		-0.458930, 0.863982, -0.207166,
		20.289305, 16.522060, 17.127171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138859, 16.411818, 17.339159>,  <20.610556, 15.917273, 17.272186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138859, 16.411818, 17.339159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787363, 16.597235, 17.384665>,  <20.576466, 16.708485, 17.411968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787363, 16.597235, 17.384665>,  <21.138859, 16.411818, 17.339159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787363, 16.597235, 17.384665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317964, 0.390768, 0.863828,
		0.355967, 0.795254, -0.490774,
		-0.878741, 0.463543, 0.113762,
		20.523741, 16.736298, 17.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305365, 17.072065, 17.513268>,  <21.138859, 16.411818, 17.339159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305365, 17.072065, 17.513268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.919092, 17.042778, 17.612947>,  <20.687328, 17.025206, 17.672756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.919092, 17.042778, 17.612947>,  <21.305365, 17.072065, 17.513268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919092, 17.042778, 17.612947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182468, 0.491564, 0.851510,
		-0.184847, 0.867758, -0.461333,
		-0.965680, -0.073221, 0.249202,
		20.629389, 17.020811, 17.687708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143511, 17.708504, 17.651064>,  <21.305365, 17.072065, 17.513268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143511, 17.708504, 17.651064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866022, 17.497406, 17.847118>,  <20.699528, 17.370747, 17.964750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866022, 17.497406, 17.847118>,  <21.143511, 17.708504, 17.651064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866022, 17.497406, 17.847118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197256, 0.515283, 0.834010,
		-0.692704, 0.675254, -0.253363,
		-0.693723, -0.527745, 0.490136,
		20.657906, 17.339083, 17.994160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754808, 18.187223, 17.966667>,  <21.143511, 17.708504, 17.651064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754808, 18.187223, 17.966667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706228, 17.849598, 18.175591>,  <20.677080, 17.647022, 18.300945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706228, 17.849598, 18.175591>,  <20.754808, 18.187223, 17.966667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706228, 17.849598, 18.175591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140672, 0.506255, 0.850833,
		-0.982579, 0.176810, 0.057250,
		-0.121453, -0.844064, 0.522308,
		20.669792, 17.596378, 18.332283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200693, 18.324118, 18.444468>,  <20.754808, 18.187223, 17.966667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200693, 18.324118, 18.444468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386658, 18.011396, 18.610668>,  <20.498238, 17.823763, 18.710388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386658, 18.011396, 18.610668>,  <20.200693, 18.324118, 18.444468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.386658, 18.011396, 18.610668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061978, 0.439413, 0.896145,
		-0.883184, -0.442381, 0.155834,
		0.464913, -0.781803, 0.415501,
		20.526131, 17.776855, 18.735319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776241, 18.181011, 19.049898>,  <20.200693, 18.324118, 18.444468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776241, 18.181011, 19.049898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154308, 18.058718, 19.095821>,  <20.381149, 17.985342, 19.123375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154308, 18.058718, 19.095821>,  <19.776241, 18.181011, 19.049898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154308, 18.058718, 19.095821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003322, 0.342530, 0.939501,
		-0.326563, -0.888369, 0.322733,
		0.945170, -0.305734, 0.114809,
		20.437859, 17.966997, 19.130264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736193, 17.966492, 19.685724>,  <19.776241, 18.181011, 19.049898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736193, 17.966492, 19.685724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128820, 17.951126, 19.610840>,  <20.364397, 17.941906, 19.565908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128820, 17.951126, 19.610840>,  <19.736193, 17.966492, 19.685724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.128820, 17.951126, 19.610840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189075, 0.337833, 0.922019,
		0.027825, -0.940422, 0.338870,
		0.981568, -0.038417, -0.187211,
		20.423290, 17.939602, 19.554676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031925, 17.671459, 20.279720>,  <19.736193, 17.966492, 19.685724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031925, 17.671459, 20.279720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328493, 17.868740, 20.097710>,  <20.506433, 17.987108, 19.988503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328493, 17.868740, 20.097710>,  <20.031925, 17.671459, 20.279720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.328493, 17.868740, 20.097710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215040, 0.467704, 0.857328,
		0.635653, -0.733489, 0.240707,
		0.741419, 0.493202, -0.455027,
		20.550919, 18.016701, 19.961203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908031, 17.032862, 20.727762>,  <20.031925, 17.671459, 20.279720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908031, 17.032862, 20.727762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690720, 16.916059, 21.042616>,  <19.560333, 16.845978, 21.231527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690720, 16.916059, 21.042616>,  <19.908031, 17.032862, 20.727762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690720, 16.916059, 21.042616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390031, -0.742463, -0.544632,
		0.743454, -0.602894, 0.289474,
		-0.543279, -0.292005, 0.787135,
		19.527737, 16.828459, 21.278757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.810555, 16.293560, 20.725630>,  <19.908031, 17.032862, 20.727762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.810555, 16.293560, 20.725630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490601, 16.414909, 20.932760>,  <19.298628, 16.487719, 21.057039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490601, 16.414909, 20.932760>,  <19.810555, 16.293560, 20.725630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490601, 16.414909, 20.932760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586806, -0.576290, -0.568813,
		0.125855, -0.758850, 0.638989,
		-0.799887, 0.303375, 0.517827,
		19.250635, 16.505922, 21.088108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430672, 15.747619, 20.786821>,  <19.810555, 16.293560, 20.725630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430672, 15.747619, 20.786821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174324, 16.048435, 20.848431>,  <19.020515, 16.228926, 20.885397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174324, 16.048435, 20.848431>,  <19.430672, 15.747619, 20.786821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174324, 16.048435, 20.848431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687592, -0.473143, -0.550775,
		-0.341328, -0.458882, 0.820319,
		-0.640869, 0.752040, 0.154026,
		18.982063, 16.274048, 20.894638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842440, 15.348577, 20.935818>,  <19.430672, 15.747619, 20.786821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842440, 15.348577, 20.935818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708450, 15.711382, 20.833738>,  <18.628057, 15.929065, 20.772491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708450, 15.711382, 20.833738>,  <18.842440, 15.348577, 20.935818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708450, 15.711382, 20.833738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718838, -0.421105, -0.553121,
		-0.609151, -0.001833, 0.793052,
		-0.334971, 0.907010, -0.255199,
		18.607958, 15.983485, 20.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185318, 15.388043, 21.149931>,  <18.842440, 15.348577, 20.935818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185318, 15.388043, 21.149931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217115, 15.662500, 20.860687>,  <18.236193, 15.827175, 20.687141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217115, 15.662500, 20.860687>,  <18.185318, 15.388043, 21.149931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217115, 15.662500, 20.860687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818110, -0.369555, -0.440597,
		-0.569542, 0.626607, 0.531964,
		0.079491, 0.686143, -0.723110,
		18.240963, 15.868343, 20.643755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500151, 15.670787, 21.117958>,  <18.185318, 15.388043, 21.149931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500151, 15.670787, 21.117958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664652, 15.783943, 20.771353>,  <17.763353, 15.851837, 20.563391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664652, 15.783943, 20.771353>,  <17.500151, 15.670787, 21.117958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664652, 15.783943, 20.771353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838272, -0.255990, -0.481425,
		-0.358009, 0.924360, 0.131863,
		0.411255, 0.282892, -0.866511,
		17.788029, 15.868811, 20.511400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008280, 16.077536, 20.690737>,  <17.500151, 15.670787, 21.117958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.008280, 16.077536, 20.690737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273726, 15.909637, 20.443050>,  <17.432993, 15.808899, 20.294437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273726, 15.909637, 20.443050>,  <17.008280, 16.077536, 20.690737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273726, 15.909637, 20.443050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705855, -0.077193, -0.704138,
		0.247759, 0.904354, -0.347505,
		0.663615, -0.419744, -0.619217,
		17.472811, 15.783714, 20.257286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775372, 16.332296, 20.079035>,  <17.008280, 16.077536, 20.690737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775372, 16.332296, 20.079035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019917, 16.031115, 19.981634>,  <17.166643, 15.850406, 19.923193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019917, 16.031115, 19.981634>,  <16.775372, 16.332296, 20.079035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019917, 16.031115, 19.981634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589030, -0.227494, -0.775429,
		0.528467, 0.617500, -0.582594,
		0.611364, -0.752954, -0.243503,
		17.203325, 15.805228, 19.908583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893612, 16.388144, 19.325453>,  <16.775372, 16.332296, 20.079035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893612, 16.388144, 19.325453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978165, 16.010962, 19.428333>,  <17.028896, 15.784653, 19.490063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978165, 16.010962, 19.428333>,  <16.893612, 16.388144, 19.325453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978165, 16.010962, 19.428333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490659, -0.329963, -0.806460,
		0.845324, 0.044272, -0.532417,
		0.211382, -0.942955, 0.257203,
		17.041578, 15.728075, 19.505495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004446, 15.957132, 18.700771>,  <16.893612, 16.388144, 19.325453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.004446, 15.957132, 18.700771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953335, 15.657182, 18.960421>,  <16.922668, 15.477212, 19.116211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953335, 15.657182, 18.960421>,  <17.004446, 15.957132, 18.700771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953335, 15.657182, 18.960421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520130, -0.506602, -0.687618,
		0.844475, -0.425489, -0.325301,
		-0.127776, -0.749876, 0.649122,
		16.915003, 15.432220, 19.155157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155260, 15.441991, 18.285666>,  <17.004446, 15.957132, 18.700771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155260, 15.441991, 18.285666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929451, 15.297633, 18.582602>,  <16.793966, 15.211019, 18.760763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929451, 15.297633, 18.582602>,  <17.155260, 15.441991, 18.285666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929451, 15.297633, 18.582602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495265, -0.571372, -0.654406,
		0.660324, -0.737082, 0.143814,
		-0.564522, -0.360894, 0.742341,
		16.760094, 15.189365, 18.805304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843222, 15.616130, 18.596828>,  <17.155260, 15.441991, 18.285666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843222, 15.616130, 18.596828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846422, 15.955029, 18.809284>,  <17.848343, 16.158367, 18.936758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846422, 15.955029, 18.809284>,  <17.843222, 15.616130, 18.596828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846422, 15.955029, 18.809284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983156, -0.103653, 0.150534,
		0.182594, 0.520990, -0.833804,
		0.007999, 0.847246, 0.531141,
		17.848822, 16.209202, 18.968626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.382877, 20.384308, 25.397839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.626642, 20.081591, 25.492392>,  <21.772902, 19.899960, 25.549124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.626642, 20.081591, 25.492392>,  <21.382877, 20.384308, 25.397839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.626642, 20.081591, 25.492392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371961, -0.536195, -0.757720,
		0.700185, 0.373841, -0.608263,
		0.609415, -0.756795, 0.236381,
		21.809467, 19.854553, 25.563307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102922, 19.896032, 24.941637>,  <21.382877, 20.384308, 25.397839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102922, 19.896032, 24.941637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.447723, 19.736406, 25.066666>,  <21.654604, 19.640631, 25.141682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.447723, 19.736406, 25.066666>,  <21.102922, 19.896032, 24.941637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.447723, 19.736406, 25.066666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066158, -0.699920, -0.711150,
		0.502569, 0.592334, -0.629734,
		0.862002, -0.399064, 0.312570,
		21.706324, 19.616688, 25.160437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626394, 19.901085, 24.423754>,  <21.102922, 19.896032, 24.941637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626394, 19.901085, 24.423754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.630287, 19.566322, 24.642658>,  <21.632622, 19.365465, 24.774002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.630287, 19.566322, 24.642658>,  <21.626394, 19.901085, 24.423754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630287, 19.566322, 24.642658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252034, -0.531672, -0.808581,
		0.967669, -0.130061, -0.216101,
		0.009730, -0.836904, 0.547263,
		21.633205, 19.315250, 24.806837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867241, 19.381811, 23.955797>,  <21.626394, 19.901085, 24.423754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867241, 19.381811, 23.955797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.758968, 19.145189, 24.259586>,  <21.694004, 19.003216, 24.441860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.758968, 19.145189, 24.259586>,  <21.867241, 19.381811, 23.955797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758968, 19.145189, 24.259586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453459, -0.617566, -0.642641,
		0.849180, -0.518339, -0.101081,
		-0.270682, -0.591554, 0.759471,
		21.677763, 18.967724, 24.487427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114807, 18.667526, 23.871588>,  <21.867241, 19.381811, 23.955797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114807, 18.667526, 23.871588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.805149, 18.635086, 24.122705>,  <21.619354, 18.615622, 24.273376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.805149, 18.635086, 24.122705>,  <22.114807, 18.667526, 23.871588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805149, 18.635086, 24.122705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401264, -0.704169, -0.585775,
		0.489580, -0.705385, 0.512585,
		-0.774143, -0.081102, 0.627793,
		21.572906, 18.610756, 24.311043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.944645, 17.873980, 23.921587>,  <22.114807, 18.667526, 23.871588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.944645, 17.873980, 23.921587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.610023, 18.049751, 24.052477>,  <21.409250, 18.155214, 24.131012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.610023, 18.049751, 24.052477>,  <21.944645, 17.873980, 23.921587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610023, 18.049751, 24.052477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531379, -0.505266, -0.679958,
		-0.133457, -0.742704, 0.656186,
		-0.836556, 0.439429, 0.327226,
		21.359056, 18.181580, 24.150644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.388121, 17.366554, 24.167696>,  <21.944645, 17.873980, 23.921587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.388121, 17.366554, 24.167696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.182552, 17.686708, 24.044235>,  <21.059212, 17.878801, 23.970160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.182552, 17.686708, 24.044235>,  <21.388121, 17.366554, 24.167696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182552, 17.686708, 24.044235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476381, -0.565504, -0.673251,
		-0.713404, -0.198962, 0.671914,
		-0.513921, 0.800387, -0.308651,
		21.028376, 17.926825, 23.951639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687952, 17.182587, 24.088570>,  <21.388121, 17.366554, 24.167696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687952, 17.182587, 24.088570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.647259, 17.523520, 23.883366>,  <20.622843, 17.728079, 23.760242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.647259, 17.523520, 23.883366>,  <20.687952, 17.182587, 24.088570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647259, 17.523520, 23.883366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486086, -0.492525, -0.721900,
		-0.867969, 0.175927, 0.464412,
		-0.101734, 0.852331, -0.513013,
		20.616739, 17.779219, 23.729462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988338, 17.230343, 23.866468>,  <20.687952, 17.182587, 24.088570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988338, 17.230343, 23.866468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.204515, 17.461498, 23.621859>,  <20.334223, 17.600191, 23.475092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.204515, 17.461498, 23.621859>,  <19.988338, 17.230343, 23.866468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204515, 17.461498, 23.621859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535238, -0.324656, -0.779820,
		-0.649184, 0.748762, 0.133850,
		0.540444, 0.577888, -0.611527,
		20.366650, 17.634865, 23.438400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548277, 17.564348, 23.527084>,  <19.988338, 17.230343, 23.866468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548277, 17.564348, 23.527084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.873472, 17.587172, 23.295294>,  <20.068590, 17.600866, 23.156219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.873472, 17.587172, 23.295294>,  <19.548277, 17.564348, 23.527084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873472, 17.587172, 23.295294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562969, -0.177130, -0.807274,
		-0.148705, 0.982532, -0.111882,
		0.812990, 0.057060, -0.579475,
		20.117369, 17.604290, 23.121450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328550, 17.977377, 22.913961>,  <19.548277, 17.564348, 23.527084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328550, 17.977377, 22.913961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.663727, 17.785387, 22.810055>,  <19.864832, 17.670193, 22.747711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.663727, 17.785387, 22.810055>,  <19.328550, 17.977377, 22.913961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663727, 17.785387, 22.810055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410464, -0.240551, -0.879577,
		0.359688, 0.843658, -0.398580,
		0.837940, -0.479976, -0.259767,
		19.915110, 17.641394, 22.732124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.532040, 18.321415, 22.352861>,  <19.328550, 17.977377, 22.913961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.532040, 18.321415, 22.352861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.690496, 17.954214, 22.345409>,  <19.785570, 17.733894, 22.340939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.690496, 17.954214, 22.345409>,  <19.532040, 18.321415, 22.352861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690496, 17.954214, 22.345409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360565, -0.136868, -0.922637,
		0.844431, 0.372214, -0.385218,
		0.396142, -0.918000, -0.018631,
		19.809340, 17.678814, 22.339821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644274, 18.176497, 21.687304>,  <19.532040, 18.321415, 22.352861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644274, 18.176497, 21.687304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.671835, 17.801731, 21.824383>,  <19.688372, 17.576872, 21.906631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.671835, 17.801731, 21.824383>,  <19.644274, 18.176497, 21.687304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671835, 17.801731, 21.824383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484244, -0.331744, -0.809601,
		0.872216, -0.110165, -0.476554,
		0.068904, -0.936915, 0.342700,
		19.692507, 17.520657, 21.927193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829973, 17.687027, 21.103897>,  <19.644274, 18.176497, 21.687304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829973, 17.687027, 21.103897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.664467, 17.428831, 21.360691>,  <19.565163, 17.273914, 21.514767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.664467, 17.428831, 21.360691>,  <19.829973, 17.687027, 21.103897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664467, 17.428831, 21.360691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339511, -0.544901, -0.766691,
		0.844708, -0.535191, 0.006311,
		-0.413765, -0.645488, 0.641985,
		19.540337, 17.235186, 21.553288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.569475, 17.723217, 20.915691>,  <19.829973, 17.687027, 21.103897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.569475, 17.723217, 20.915691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.719450, 17.975908, 20.644297>,  <20.809435, 18.127523, 20.481461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.719450, 17.975908, 20.644297>,  <20.569475, 17.723217, 20.915691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719450, 17.975908, 20.644297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447066, 0.517938, 0.729296,
		0.812129, -0.576768, -0.088229,
		0.374937, 0.631727, -0.678486,
		20.831932, 18.165426, 20.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351980, 17.691040, 20.952923>,  <20.569475, 17.723217, 20.915691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351980, 17.691040, 20.952923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.266966, 18.052046, 20.803097>,  <21.215958, 18.268648, 20.713202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.266966, 18.052046, 20.803097>,  <21.351980, 17.691040, 20.952923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266966, 18.052046, 20.803097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644727, 0.417563, 0.640287,
		0.734272, -0.105407, -0.670622,
		-0.212536, 0.902514, -0.374563,
		21.203205, 18.322800, 20.690727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036457, 18.091074, 20.952532>,  <21.351980, 17.691040, 20.952923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036457, 18.091074, 20.952532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.767227, 18.372705, 20.861984>,  <21.605690, 18.541685, 20.807655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.767227, 18.372705, 20.861984>,  <22.036457, 18.091074, 20.952532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767227, 18.372705, 20.861984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553974, 0.682748, 0.476412,
		0.489983, 0.195259, -0.849582,
		-0.673074, 0.704080, -0.226367,
		21.565306, 18.583929, 20.794075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369806, 18.699379, 20.699080>,  <22.036457, 18.091074, 20.952532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369806, 18.699379, 20.699080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.018673, 18.792938, 20.866266>,  <21.807993, 18.849073, 20.966579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.018673, 18.792938, 20.866266>,  <22.369806, 18.699379, 20.699080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018673, 18.792938, 20.866266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454148, 0.683721, 0.571205,
		-0.152170, 0.691243, -0.706419,
		-0.877834, 0.233898, 0.417969,
		21.755323, 18.863108, 20.991657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289930, 19.330330, 20.517616>,  <22.369806, 18.699379, 20.699080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289930, 19.330330, 20.517616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.071779, 19.250036, 20.843136>,  <21.940887, 19.201860, 21.038446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.071779, 19.250036, 20.843136>,  <22.289930, 19.330330, 20.517616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071779, 19.250036, 20.843136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463941, 0.736317, 0.492540,
		-0.698084, 0.646175, -0.308442,
		-0.545379, -0.200735, 0.813798,
		21.908165, 19.189816, 21.087275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.170469, 20.004015, 20.770992>,  <22.289930, 19.330330, 20.517616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.170469, 20.004015, 20.770992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.118811, 19.759811, 21.083555>,  <22.087816, 19.613289, 21.271093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.118811, 19.759811, 21.083555>,  <22.170469, 20.004015, 20.770992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118811, 19.759811, 21.083555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213399, 0.752433, 0.623141,
		-0.968392, 0.247227, 0.033110,
		-0.129144, -0.610511, 0.781408,
		22.080067, 19.576658, 21.317978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881687, 20.389788, 21.358702>,  <22.170469, 20.004015, 20.770992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881687, 20.389788, 21.358702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.036613, 20.083176, 21.563608>,  <22.129568, 19.899208, 21.686552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.036613, 20.083176, 21.563608>,  <21.881687, 20.389788, 21.358702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.036613, 20.083176, 21.563608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148112, 0.600152, 0.786053,
		-0.909973, -0.228577, 0.345980,
		0.387315, -0.766531, 0.512267,
		22.152807, 19.853216, 21.717289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525425, 20.507120, 22.042479>,  <21.881687, 20.389788, 21.358702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525425, 20.507120, 22.042479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.839252, 20.269722, 22.114279>,  <22.027548, 20.127283, 22.157358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.839252, 20.269722, 22.114279>,  <21.525425, 20.507120, 22.042479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839252, 20.269722, 22.114279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187581, 0.503121, 0.843613,
		-0.590989, -0.628200, 0.506060,
		0.784567, -0.593493, 0.179500,
		22.074623, 20.091675, 22.168129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514650, 20.494606, 22.765968>,  <21.525425, 20.507120, 22.042479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514650, 20.494606, 22.765968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.874954, 20.362947, 22.652626>,  <22.091137, 20.283953, 22.584620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.874954, 20.362947, 22.652626>,  <21.514650, 20.494606, 22.765968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874954, 20.362947, 22.652626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420257, 0.495898, 0.759914,
		-0.109608, -0.803584, 0.585012,
		0.900761, -0.329148, -0.283357,
		22.145182, 20.264202, 22.567619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853893, 20.058760, 23.279860>,  <21.514650, 20.494606, 22.765968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853893, 20.058760, 23.279860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.150850, 20.197758, 23.050739>,  <22.329025, 20.281157, 22.913267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.150850, 20.197758, 23.050739>,  <21.853893, 20.058760, 23.279860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.150850, 20.197758, 23.050739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325923, 0.559655, 0.761945,
		0.585345, -0.752350, 0.302226,
		0.742392, 0.347498, -0.572800,
		22.373568, 20.302006, 22.878901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540157, 19.882339, 23.690273>,  <21.853893, 20.058760, 23.279860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540157, 19.882339, 23.690273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.575323, 20.192823, 23.440548>,  <22.596422, 20.379114, 23.290712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.575323, 20.192823, 23.440548>,  <22.540157, 19.882339, 23.690273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575323, 20.192823, 23.440548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354832, 0.561229, 0.747741,
		0.930787, -0.287263, -0.226085,
		0.087913, 0.776210, -0.624315,
		22.601696, 20.425686, 23.253254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106829, 20.082455, 23.907082>,  <22.540157, 19.882339, 23.690273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106829, 20.082455, 23.907082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.965384, 20.393480, 23.699099>,  <22.880516, 20.580095, 23.574308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.965384, 20.393480, 23.699099>,  <23.106829, 20.082455, 23.907082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965384, 20.393480, 23.699099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475588, 0.628112, 0.615867,
		0.805466, -0.029506, -0.591908,
		-0.353612, 0.777563, -0.519955,
		22.859301, 20.626749, 23.543112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701252, 20.514071, 23.737366>,  <23.106829, 20.082455, 23.907082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701252, 20.514071, 23.737366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.400076, 20.775137, 23.703640>,  <23.219370, 20.931776, 23.683405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.400076, 20.775137, 23.703640>,  <23.701252, 20.514071, 23.737366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.400076, 20.775137, 23.703640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571045, 0.711648, 0.409224,
		0.327089, 0.259974, -0.908530,
		-0.752941, 0.652664, -0.084315,
		23.174194, 20.970936, 23.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.098679, 21.151958, 23.744007>,  <23.701252, 20.514071, 23.737366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.098679, 21.151958, 23.744007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.710993, 21.241812, 23.784336>,  <23.478382, 21.295723, 23.808535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.710993, 21.241812, 23.784336>,  <24.098679, 21.151958, 23.744007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710993, 21.241812, 23.784336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238847, 0.758274, 0.606608,
		0.059812, 0.612014, -0.788582,
		-0.969213, 0.224633, 0.100823,
		23.420229, 21.309202, 23.814583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.749063, 22.988962, 26.384274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.037645, 22.714169, 26.419041>,  <17.210794, 22.549294, 26.439901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.037645, 22.714169, 26.419041>,  <16.749063, 22.988962, 26.384274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037645, 22.714169, 26.419041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331786, -0.453120, -0.827406,
		0.607798, 0.568099, -0.554838,
		0.721457, -0.686983, 0.086918,
		17.254082, 22.508074, 26.445116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978231, 22.842138, 25.691647>,  <16.749063, 22.988962, 26.384274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978231, 22.842138, 25.691647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.101868, 22.522343, 25.897667>,  <17.176050, 22.330465, 26.021278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.101868, 22.522343, 25.897667>,  <16.978231, 22.842138, 25.691647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101868, 22.522343, 25.897667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231179, -0.588489, -0.774750,
		0.922507, 0.120400, -0.366723,
		0.309092, -0.799490, 0.515051,
		17.194595, 22.282495, 26.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399515, 22.524353, 25.188784>,  <16.978231, 22.842138, 25.691647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399515, 22.524353, 25.188784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287249, 22.234224, 25.440224>,  <17.219889, 22.060148, 25.591087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287249, 22.234224, 25.440224>,  <17.399515, 22.524353, 25.188784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287249, 22.234224, 25.440224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261555, -0.572338, -0.777186,
		0.923480, -0.382544, -0.029074,
		-0.280668, -0.725320, 0.628599,
		17.203049, 22.016628, 25.628803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721298, 21.945168, 25.026815>,  <17.399515, 22.524353, 25.188784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721298, 21.945168, 25.026815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.428364, 21.783434, 25.245975>,  <17.252604, 21.686394, 25.377472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.428364, 21.783434, 25.245975>,  <17.721298, 21.945168, 25.026815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428364, 21.783434, 25.245975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241269, -0.598348, -0.764048,
		0.636768, -0.691731, 0.340638,
		-0.732335, -0.404336, 0.547902,
		17.208664, 21.662132, 25.410347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798616, 21.304173, 24.990551>,  <17.721298, 21.945168, 25.026815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798616, 21.304173, 24.990551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.412361, 21.311003, 25.094280>,  <17.180607, 21.315102, 25.156519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.412361, 21.311003, 25.094280>,  <17.798616, 21.304173, 24.990551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412361, 21.311003, 25.094280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213830, -0.619328, -0.755454,
		0.147708, -0.784947, 0.601698,
		-0.965639, 0.017075, 0.259325,
		17.122669, 21.316126, 25.172077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549477, 20.590858, 24.932875>,  <17.798616, 21.304173, 24.990551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549477, 20.590858, 24.932875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.224325, 20.823694, 24.924921>,  <17.029234, 20.963396, 24.920149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.224325, 20.823694, 24.924921>,  <17.549477, 20.590858, 24.932875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224325, 20.823694, 24.924921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380786, -0.556976, -0.738092,
		-0.440711, -0.592409, 0.674407,
		-0.812881, 0.582090, -0.019885,
		16.980461, 20.998322, 24.918955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987427, 20.093660, 24.868015>,  <17.549477, 20.590858, 24.932875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987427, 20.093660, 24.868015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.835653, 20.446514, 24.756393>,  <16.744589, 20.658226, 24.689421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.835653, 20.446514, 24.756393>,  <16.987427, 20.093660, 24.868015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835653, 20.446514, 24.756393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380210, -0.423628, -0.822180,
		-0.843488, -0.205862, 0.496134,
		-0.379432, 0.882134, -0.279054,
		16.721823, 20.711155, 24.672678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294502, 19.916634, 24.745449>,  <16.987427, 20.093660, 24.868015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294502, 19.916634, 24.745449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.369917, 20.260939, 24.556330>,  <16.415165, 20.467522, 24.442858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.369917, 20.260939, 24.556330>,  <16.294502, 19.916634, 24.745449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369917, 20.260939, 24.556330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493823, -0.333049, -0.803254,
		-0.848878, 0.384921, 0.362273,
		0.188535, 0.860764, -0.472800,
		16.426477, 20.519167, 24.414490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565564, 20.195482, 24.438204>,  <16.294502, 19.916634, 24.745449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565564, 20.195482, 24.438204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.859091, 20.359083, 24.221231>,  <16.035206, 20.457243, 24.091047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.859091, 20.359083, 24.221231>,  <15.565564, 20.195482, 24.438204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859091, 20.359083, 24.221231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517181, -0.181394, -0.836433,
		-0.440496, 0.894323, 0.078418,
		0.733816, 0.409002, -0.542431,
		16.079235, 20.481783, 24.058502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232899, 20.591223, 23.951777>,  <15.565564, 20.195482, 24.438204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232899, 20.591223, 23.951777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.600312, 20.535164, 23.803907>,  <15.820760, 20.501530, 23.715187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.600312, 20.535164, 23.803907>,  <15.232899, 20.591223, 23.951777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600312, 20.535164, 23.803907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394628, -0.268735, -0.878664,
		0.023797, 0.952964, -0.302148,
		0.918533, -0.140146, -0.369671,
		15.875872, 20.493120, 23.693007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252077, 20.913343, 23.292416>,  <15.232899, 20.591223, 23.951777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252077, 20.913343, 23.292416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.565014, 20.666435, 23.259150>,  <15.752776, 20.518290, 23.239189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.565014, 20.666435, 23.259150>,  <15.252077, 20.913343, 23.292416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565014, 20.666435, 23.259150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254172, -0.194495, -0.947401,
		0.568629, 0.762330, -0.309055,
		0.782341, -0.617272, -0.083167,
		15.799716, 20.481253, 23.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350199, 20.915888, 22.506042>,  <15.252077, 20.913343, 23.292416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.350199, 20.915888, 22.506042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.567607, 20.608944, 22.642128>,  <15.698051, 20.424778, 22.723780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.567607, 20.608944, 22.642128>,  <15.350199, 20.915888, 22.506042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567607, 20.608944, 22.642128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214155, -0.518664, -0.827723,
		0.811618, 0.377025, -0.446238,
		0.543519, -0.767359, 0.340215,
		15.730662, 20.378736, 22.744192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912232, 20.812737, 22.053625>,  <15.350199, 20.915888, 22.506042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912232, 20.812737, 22.053625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.830171, 20.469851, 22.242558>,  <15.780933, 20.264120, 22.355917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.830171, 20.469851, 22.242558>,  <15.912232, 20.812737, 22.053625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830171, 20.469851, 22.242558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191825, -0.438019, -0.878261,
		0.959747, -0.270783, -0.074574,
		-0.205154, -0.857214, 0.472330,
		15.768624, 20.212687, 22.384256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086140, 20.296988, 21.529789>,  <15.912232, 20.812737, 22.053625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086140, 20.296988, 21.529789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.868750, 20.098455, 21.800579>,  <15.738316, 19.979336, 21.963053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.868750, 20.098455, 21.800579>,  <16.086140, 20.296988, 21.529789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868750, 20.098455, 21.800579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395369, -0.560064, -0.728019,
		0.740485, -0.663315, 0.108147,
		-0.543475, -0.496329, 0.676973,
		15.705707, 19.949556, 22.003672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821781, 20.459690, 21.377621>,  <16.086140, 20.296988, 21.529789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821781, 20.459690, 21.377621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.955410, 20.700436, 21.087475>,  <17.035587, 20.844883, 20.913387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.955410, 20.700436, 21.087475>,  <16.821781, 20.459690, 21.377621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955410, 20.700436, 21.087475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433374, 0.585324, 0.685261,
		0.837008, -0.543282, -0.065291,
		0.334073, 0.601864, -0.725365,
		17.055632, 20.880995, 20.869865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521465, 20.605299, 21.443386>,  <16.821781, 20.459690, 21.377621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521465, 20.605299, 21.443386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.369347, 20.906557, 21.228668>,  <17.278076, 21.087311, 21.099838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.369347, 20.906557, 21.228668>,  <17.521465, 20.605299, 21.443386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.369347, 20.906557, 21.228668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352142, 0.654600, 0.668951,
		0.855202, 0.065371, -0.514156,
		-0.380296, 0.753144, -0.536795,
		17.255259, 21.132500, 21.067629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092127, 20.999010, 21.344929>,  <17.521465, 20.605299, 21.443386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092127, 20.999010, 21.344929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.760866, 21.214346, 21.282507>,  <17.562109, 21.343548, 21.245054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.760866, 21.214346, 21.282507>,  <18.092127, 20.999010, 21.344929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760866, 21.214346, 21.282507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252411, 0.606786, 0.753724,
		0.500452, 0.584808, -0.638394,
		-0.828153, 0.538340, -0.156055,
		17.512421, 21.375849, 21.235691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.304865, 21.763243, 21.330280>,  <18.092127, 20.999010, 21.344929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.304865, 21.763243, 21.330280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.911516, 21.793339, 21.396395>,  <17.675507, 21.811398, 21.436064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.911516, 21.793339, 21.396395>,  <18.304865, 21.763243, 21.330280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911516, 21.793339, 21.396395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159093, 0.795826, 0.584252,
		-0.087578, 0.600832, -0.794563,
		-0.983371, 0.075242, 0.165285,
		17.616505, 21.815910, 21.445980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260380, 22.441372, 21.394724>,  <18.304865, 21.763243, 21.330280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260380, 22.441372, 21.394724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.915028, 22.309971, 21.547907>,  <17.707815, 22.231131, 21.639816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.915028, 22.309971, 21.547907>,  <18.260380, 22.441372, 21.394724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915028, 22.309971, 21.547907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020154, 0.735951, 0.676735,
		-0.504148, 0.591999, -0.628786,
		-0.863382, -0.328502, 0.382959,
		17.656013, 22.211420, 21.662794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781763, 23.018532, 21.360758>,  <18.260380, 22.441372, 21.394724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781763, 23.018532, 21.360758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.706383, 22.752493, 21.649792>,  <17.661154, 22.592869, 21.823212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.706383, 22.752493, 21.649792>,  <17.781763, 23.018532, 21.360758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706383, 22.752493, 21.649792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028921, 0.739209, 0.672855,
		-0.981657, 0.105902, -0.158539,
		-0.188451, -0.665097, 0.722587,
		17.649847, 22.552963, 21.866568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557316, 23.383533, 21.817518>,  <17.781763, 23.018532, 21.360758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557316, 23.383533, 21.817518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.633671, 23.052292, 22.028347>,  <17.679483, 22.853546, 22.154844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.633671, 23.052292, 22.028347>,  <17.557316, 23.383533, 21.817518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633671, 23.052292, 22.028347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248097, 0.560211, 0.790324,
		-0.949742, -0.020097, 0.312387,
		0.190885, -0.828106, 0.527070,
		17.690937, 22.803860, 22.186468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307890, 23.505196, 22.459362>,  <17.557316, 23.383533, 21.817518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307890, 23.505196, 22.459362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.547419, 23.195635, 22.541807>,  <17.691135, 23.009897, 22.591274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.547419, 23.195635, 22.541807>,  <17.307890, 23.505196, 22.459362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547419, 23.195635, 22.541807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318722, 0.466385, 0.825168,
		-0.734729, -0.428436, 0.525942,
		0.598823, -0.773904, 0.206115,
		17.727066, 22.963463, 22.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147713, 23.326385, 23.163210>,  <17.307890, 23.505196, 22.459362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147713, 23.326385, 23.163210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.507675, 23.177099, 23.072987>,  <17.723652, 23.087526, 23.018852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.507675, 23.177099, 23.072987>,  <17.147713, 23.326385, 23.163210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507675, 23.177099, 23.072987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359286, 0.341408, 0.868536,
		-0.247146, -0.862641, 0.441327,
		0.899907, -0.373218, -0.225557,
		17.777647, 23.065134, 23.005320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438627, 22.988058, 23.805843>,  <17.147713, 23.326385, 23.163210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438627, 22.988058, 23.805843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.724947, 23.103361, 23.551430>,  <17.896738, 23.172543, 23.398781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.724947, 23.103361, 23.551430>,  <17.438627, 22.988058, 23.805843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724947, 23.103361, 23.551430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530141, 0.368517, 0.763640,
		0.454517, -0.883799, 0.110965,
		0.715797, 0.288260, -0.636035,
		17.939686, 23.189838, 23.360619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092955, 22.764017, 24.156752>,  <17.438627, 22.988058, 23.805843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092955, 22.764017, 24.156752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.212587, 23.031130, 23.884100>,  <18.284367, 23.191399, 23.720509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.212587, 23.031130, 23.884100>,  <18.092955, 22.764017, 24.156752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212587, 23.031130, 23.884100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526788, 0.480061, 0.701452,
		0.795642, -0.568863, -0.208204,
		0.299080, 0.667784, -0.681627,
		18.302311, 23.231464, 23.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796881, 22.787706, 24.418772>,  <18.092955, 22.764017, 24.156752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796881, 22.787706, 24.418772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.685699, 23.101812, 24.197466>,  <18.618990, 23.290276, 24.064682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.685699, 23.101812, 24.197466>,  <18.796881, 22.787706, 24.418772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.685699, 23.101812, 24.197466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510625, 0.608630, 0.607316,
		0.813636, -0.113703, -0.570148,
		-0.277955, 0.785265, -0.553262,
		18.602312, 23.337393, 24.031487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462788, 23.101742, 24.173641>,  <18.796881, 22.787706, 24.418772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462788, 23.101742, 24.173641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.171112, 23.372808, 24.135584>,  <18.996107, 23.535448, 24.112749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.171112, 23.372808, 24.135584>,  <19.462788, 23.101742, 24.173641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171112, 23.372808, 24.135584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560791, 0.671440, 0.484439,
		0.392172, 0.299891, -0.869636,
		-0.729188, 0.677667, -0.095144,
		18.952356, 23.576109, 24.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821434, 23.727964, 23.987570>,  <19.462788, 23.101742, 24.173641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821434, 23.727964, 23.987570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.464579, 23.811554, 24.147779>,  <19.250465, 23.861708, 24.243906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.464579, 23.811554, 24.147779>,  <19.821434, 23.727964, 23.987570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464579, 23.811554, 24.147779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450386, 0.480564, 0.752470,
		-0.035232, 0.851698, -0.522848,
		-0.892139, 0.208972, 0.400524,
		19.196938, 23.874245, 24.267937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101814, 24.159224, 23.381166>,  <19.821434, 23.727964, 23.987570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101814, 24.159224, 23.381166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.454626, 24.271872, 23.230057>,  <20.666313, 24.339460, 23.139391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.454626, 24.271872, 23.230057>,  <20.101814, 24.159224, 23.381166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454626, 24.271872, 23.230057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216342, -0.470200, -0.855633,
		-0.418595, 0.836422, -0.353803,
		0.882029, 0.281621, -0.377777,
		20.719234, 24.356358, 23.116724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946619, 24.462355, 22.727587>,  <20.101814, 24.159224, 23.381166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946619, 24.462355, 22.727587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.330679, 24.356400, 22.691935>,  <20.561115, 24.292826, 22.670544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.330679, 24.356400, 22.691935>,  <19.946619, 24.462355, 22.727587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330679, 24.356400, 22.691935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205569, -0.453287, -0.867336,
		0.189344, 0.851097, -0.489677,
		0.960151, -0.264887, -0.089132,
		20.618725, 24.276934, 22.665195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062151, 24.630987, 22.055935>,  <19.946619, 24.462355, 22.727587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062151, 24.630987, 22.055935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.366056, 24.384243, 22.138142>,  <20.548401, 24.236197, 22.187466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.366056, 24.384243, 22.138142>,  <20.062151, 24.630987, 22.055935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366056, 24.384243, 22.138142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119649, -0.443332, -0.888336,
		0.639093, 0.650337, -0.410636,
		0.759765, -0.616862, 0.205518,
		20.593987, 24.199184, 22.199797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463726, 24.635876, 21.549990>,  <20.062151, 24.630987, 22.055935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463726, 24.635876, 21.549990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.581902, 24.293604, 21.719946>,  <20.652807, 24.088242, 21.821920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.581902, 24.293604, 21.719946>,  <20.463726, 24.635876, 21.549990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581902, 24.293604, 21.719946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003039, -0.443900, -0.896071,
		0.955358, 0.266023, -0.128544,
		0.295437, -0.855678, 0.424892,
		20.670532, 24.036901, 21.847414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.081476, 24.361340, 21.134731>,  <20.463726, 24.635876, 21.549990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.081476, 24.361340, 21.134731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.956141, 24.048523, 21.350224>,  <20.880939, 23.860832, 21.479519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.956141, 24.048523, 21.350224>,  <21.081476, 24.361340, 21.134731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956141, 24.048523, 21.350224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006574, -0.569072, -0.822262,
		0.949618, -0.254106, 0.183453,
		-0.313340, -0.782041, 0.538731,
		20.862139, 23.813911, 21.511843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.366014, 23.814419, 20.840176>,  <21.081476, 24.361340, 21.134731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.366014, 23.814419, 20.840176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.067429, 23.630512, 21.032595>,  <20.888277, 23.520168, 21.148046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.067429, 23.630512, 21.032595>,  <21.366014, 23.814419, 20.840176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067429, 23.630512, 21.032595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073766, -0.661288, -0.746496,
		0.661326, -0.592717, 0.459711,
		-0.746462, -0.459767, 0.481049,
		20.843491, 23.492582, 21.176908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.517284, 23.097717, 20.806490>,  <21.366014, 23.814419, 20.840176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.517284, 23.097717, 20.806490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.123177, 23.115446, 20.872553>,  <20.886711, 23.126083, 20.912191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.123177, 23.115446, 20.872553>,  <21.517284, 23.097717, 20.806490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123177, 23.115446, 20.872553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128577, -0.828767, -0.544622,
		0.112738, -0.557835, 0.822259,
		-0.985271, 0.044324, 0.165158,
		20.827595, 23.128744, 20.922100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193254, 22.365744, 21.067385>,  <21.517284, 23.097717, 20.806490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193254, 22.365744, 21.067385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.864027, 22.550243, 20.934837>,  <20.666491, 22.660942, 20.855309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.864027, 22.550243, 20.934837>,  <21.193254, 22.365744, 21.067385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864027, 22.550243, 20.934837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075994, -0.667655, -0.740582,
		-0.562830, -0.584370, 0.584580,
		-0.823072, 0.461247, -0.331368,
		20.617105, 22.688618, 20.835426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.749912, 21.815903, 20.898531>,  <21.193254, 22.365744, 21.067385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.749912, 21.815903, 20.898531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.657290, 22.126945, 20.664707>,  <20.601717, 22.313572, 20.524412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.657290, 22.126945, 20.664707>,  <20.749912, 21.815903, 20.898531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657290, 22.126945, 20.664707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299400, -0.628689, -0.717712,
		-0.925604, 0.008827, 0.378392,
		-0.231555, 0.777607, -0.584559,
		20.587822, 22.360228, 20.489340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065516, 21.701263, 20.572405>,  <20.749912, 21.815903, 20.898531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065516, 21.701263, 20.572405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.213980, 21.997469, 20.348305>,  <20.303059, 22.175192, 20.213844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.213980, 21.997469, 20.348305>,  <20.065516, 21.701263, 20.572405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213980, 21.997469, 20.348305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286326, -0.482676, -0.827672,
		-0.883322, 0.467612, 0.032879,
		0.371159, 0.740515, -0.560248,
		20.325327, 22.219624, 20.180231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501808, 21.784609, 20.026852>,  <20.065516, 21.701263, 20.572405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501808, 21.784609, 20.026852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.839787, 21.958944, 19.902843>,  <20.042574, 22.063545, 19.828438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.839787, 21.958944, 19.902843>,  <19.501808, 21.784609, 20.026852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839787, 21.958944, 19.902843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126210, -0.400793, -0.907434,
		-0.519751, 0.805858, -0.283640,
		0.844944, 0.435841, -0.310020,
		20.093269, 22.089697, 19.809837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268532, 22.130802, 19.484964>,  <19.501808, 21.784609, 20.026852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268532, 22.130802, 19.484964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.658615, 22.060284, 19.431465>,  <19.892666, 22.017973, 19.399366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.658615, 22.060284, 19.431465>,  <19.268532, 22.130802, 19.484964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658615, 22.060284, 19.431465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200622, -0.449313, -0.870557,
		0.093383, 0.875806, -0.473543,
		0.975208, -0.176298, -0.133748,
		19.951178, 22.007395, 19.391340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363028, 22.256630, 18.885878>,  <19.268532, 22.130802, 19.484964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363028, 22.256630, 18.885878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.676090, 22.027782, 18.983959>,  <19.863928, 21.890474, 19.042809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.676090, 22.027782, 18.983959>,  <19.363028, 22.256630, 18.885878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676090, 22.027782, 18.983959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017326, -0.373757, -0.927365,
		0.622211, 0.730058, -0.282611,
		0.782658, -0.572120, 0.245205,
		19.910887, 21.856146, 19.057520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738207, 22.187874, 18.192049>,  <19.363028, 22.256630, 18.885878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738207, 22.187874, 18.192049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.886227, 21.898012, 18.424582>,  <19.975039, 21.724096, 18.564100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.886227, 21.898012, 18.424582>,  <19.738207, 22.187874, 18.192049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886227, 21.898012, 18.424582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206268, -0.674219, -0.709142,
		0.905824, 0.142508, -0.398966,
		0.370049, -0.724652, 0.581329,
		19.997242, 21.680616, 18.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.637743, 8.398354, 7.434668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.867013, 8.128450, 7.620644>,  <5.004575, 7.966508, 7.732230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.867013, 8.128450, 7.620644>,  <4.637743, 8.398354, 7.434668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.867013, 8.128450, 7.620644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720118, -0.685530, -0.107136,
		0.391022, -0.273405, -0.878835,
		0.573177, -0.674758, 0.464941,
		5.038966, 7.926023, 7.760127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.794134, 9.008402, 7.293588>,  <4.637743, 8.398354, 7.434668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.794134, 9.008402, 7.293588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.859027, 9.356236, 7.107041>,  <4.897963, 9.564938, 6.995113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.859027, 9.356236, 7.107041>,  <4.794134, 9.008402, 7.293588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.859027, 9.356236, 7.107041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970628, -0.225726, -0.083240,
		-0.177655, -0.439165, -0.880666,
		0.162233, 0.869587, -0.466367,
		4.907697, 9.617113, 6.967131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.486670, 8.905812, 7.493876>,  <4.794134, 9.008402, 7.293588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.486670, 8.905812, 7.493876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.443359, 8.558745, 7.687961>,  <5.417372, 8.350505, 7.804411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.443359, 8.558745, 7.687961>,  <5.486670, 8.905812, 7.493876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.443359, 8.558745, 7.687961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663040, 0.426696, 0.615067,
		-0.740711, -0.255116, -0.621500,
		-0.108278, -0.867667, 0.485211,
		5.410875, 8.298445, 7.833524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.182959, 8.981490, 7.447012>,  <5.486670, 8.905812, 7.493876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.182959, 8.981490, 7.447012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.523055, 8.844975, 7.607319>,  <6.727112, 8.763065, 7.703503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.523055, 8.844975, 7.607319>,  <6.182959, 8.981490, 7.447012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.523055, 8.844975, 7.607319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057969, 0.696002, 0.715696,
		-0.523194, -0.631745, 0.571984,
		0.850240, -0.341290, 0.400766,
		6.778127, 8.742588, 7.727549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.144642, 8.818967, 8.263304>,  <6.182959, 8.981490, 7.447012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.144642, 8.818967, 8.263304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.526076, 8.903184, 8.177187>,  <6.754936, 8.953714, 8.125517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.526076, 8.903184, 8.177187>,  <6.144642, 8.818967, 8.263304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.526076, 8.903184, 8.177187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058126, 0.572804, 0.817629,
		0.295465, -0.792191, 0.533978,
		0.953583, 0.210543, -0.215291,
		6.812151, 8.966347, 8.112599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.578496, 8.720725, 8.861534>,  <6.144642, 8.818967, 8.263304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.578496, 8.720725, 8.861534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.774687, 8.967973, 8.615816>,  <6.892402, 9.116322, 8.468385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.774687, 8.967973, 8.615816>,  <6.578496, 8.720725, 8.861534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.774687, 8.967973, 8.615816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324650, 0.524564, 0.787042,
		0.808723, -0.585458, 0.056615,
		0.490479, 0.618119, -0.614296,
		6.921831, 9.153408, 8.431527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.342783, 8.730277, 9.024307>,  <6.578496, 8.720725, 8.861534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.342783, 8.730277, 9.024307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.190216, 9.081093, 8.907467>,  <7.098675, 9.291582, 8.837362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.190216, 9.081093, 8.907467>,  <7.342783, 8.730277, 9.024307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.190216, 9.081093, 8.907467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470145, 0.456116, 0.755594,
		0.795917, 0.150869, -0.586306,
		-0.381419, 0.877039, -0.292101,
		7.075790, 9.344204, 8.819837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.948619, 9.274962, 8.767682>,  <7.342783, 8.730277, 9.024307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.948619, 9.274962, 8.767682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614429, 9.370996, 8.965405>,  <7.413914, 9.428616, 9.084038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614429, 9.370996, 8.965405>,  <7.948619, 9.274962, 8.767682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.614429, 9.370996, 8.965405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547910, 0.295025, 0.782787,
		0.042101, 0.924835, -0.378031,
		-0.835477, 0.240083, 0.494305,
		7.363785, 9.443021, 9.113696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.358459, 9.775480, 9.197369>,  <7.948619, 9.274962, 8.767682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.358459, 9.775480, 9.197369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382840, 10.108633, 8.977335>,  <8.397469, 10.308524, 8.845315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382840, 10.108633, 8.977335>,  <8.358459, 9.775480, 9.197369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.382840, 10.108633, 8.977335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307377, 0.539990, 0.783537,
		0.949634, 0.121325, 0.288922,
		0.060952, 0.832881, -0.550085,
		8.401126, 10.358498, 8.812309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.769701, 10.352990, 9.544169>,  <8.358459, 9.775480, 9.197369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.769701, 10.352990, 9.544169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.537309, 10.540638, 9.278120>,  <8.397873, 10.653227, 9.118490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.537309, 10.540638, 9.278120>,  <8.769701, 10.352990, 9.544169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.537309, 10.540638, 9.278120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216759, 0.698496, 0.681996,
		0.784523, 0.540399, -0.304127,
		-0.580981, 0.469119, -0.665123,
		8.363014, 10.681374, 9.078584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968723, 11.060314, 9.518560>,  <8.769701, 10.352990, 9.544169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968723, 11.060314, 9.518560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.580323, 11.009396, 9.437611>,  <8.347283, 10.978845, 9.389041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.580323, 11.009396, 9.437611>,  <8.968723, 11.060314, 9.518560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.580323, 11.009396, 9.437611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237879, 0.599132, 0.764496,
		0.023931, 0.790466, -0.612038,
		-0.971000, -0.127296, -0.202373,
		8.289023, 10.971207, 9.376899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.675971, 11.719870, 9.515389>,  <8.968723, 11.060314, 9.518560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.675971, 11.719870, 9.515389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374907, 11.465010, 9.581772>,  <8.194268, 11.312094, 9.621601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374907, 11.465010, 9.581772>,  <8.675971, 11.719870, 9.515389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.374907, 11.465010, 9.581772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326169, 0.579776, 0.746642,
		-0.571940, 0.507839, -0.644193,
		-0.752661, -0.637150, 0.165956,
		8.149108, 11.273865, 9.631558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.204921, 12.181514, 9.684525>,  <8.675971, 11.719870, 9.515389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.204921, 12.181514, 9.684525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053048, 11.837179, 9.820055>,  <7.961925, 11.630578, 9.901373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053048, 11.837179, 9.820055>,  <8.204921, 12.181514, 9.684525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.053048, 11.837179, 9.820055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375620, 0.478150, 0.793903,
		-0.845430, 0.174160, -0.504892,
		-0.379681, -0.860837, 0.338824,
		7.939144, 11.578928, 9.921702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.534261, 12.306756, 9.901189>,  <8.204921, 12.181514, 9.684525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.534261, 12.306756, 9.901189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614701, 11.969172, 10.100102>,  <7.662965, 11.766623, 10.219451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614701, 11.969172, 10.100102>,  <7.534261, 12.306756, 9.901189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.614701, 11.969172, 10.100102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405018, 0.390594, 0.826678,
		-0.891919, -0.367655, -0.263270,
		0.201101, -0.843959, 0.497285,
		7.675032, 11.715985, 10.249288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.018351, 12.256654, 10.217962>,  <7.534261, 12.306756, 9.901189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.018351, 12.256654, 10.217962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.281246, 12.023489, 10.409064>,  <7.438983, 11.883590, 10.523726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.281246, 12.023489, 10.409064>,  <7.018351, 12.256654, 10.217962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.281246, 12.023489, 10.409064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126256, 0.539783, 0.832282,
		-0.743032, -0.607328, 0.281170,
		0.657240, -0.582913, 0.477755,
		7.478418, 11.848616, 10.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.679050, 12.087461, 10.825213>,  <7.018351, 12.256654, 10.217962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.679050, 12.087461, 10.825213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.072769, 12.035597, 10.873129>,  <7.309000, 12.004478, 10.901878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.072769, 12.035597, 10.873129>,  <6.679050, 12.087461, 10.825213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.072769, 12.035597, 10.873129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026564, 0.562063, 0.826668,
		-0.174514, -0.816868, 0.549793,
		0.984296, -0.129661, 0.119788,
		7.368058, 11.996698, 10.909065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.659817, 11.811934, 11.490921>,  <6.679050, 12.087461, 10.825213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.659817, 11.811934, 11.490921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.037700, 11.924979, 11.424401>,  <7.264430, 11.992806, 11.384489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.037700, 11.924979, 11.424401>,  <6.659817, 11.811934, 11.490921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.037700, 11.924979, 11.424401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001284, 0.510329, 0.859978,
		0.327910, -0.812215, 0.482475,
		0.944708, 0.282615, -0.166299,
		7.321112, 12.009764, 11.374512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.948160, 11.618950, 12.068193>,  <6.659817, 11.811934, 11.490921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.948160, 11.618950, 12.068193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.190497, 11.903376, 11.925452>,  <7.335899, 12.074031, 11.839808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.190497, 11.903376, 11.925452>,  <6.948160, 11.618950, 12.068193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.190497, 11.903376, 11.925452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092294, 0.382698, 0.919252,
		0.790214, -0.589857, 0.166228,
		0.605842, 0.711064, -0.356853,
		7.372250, 12.116694, 11.818397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.494504, 11.617563, 12.482463>,  <6.948160, 11.618950, 12.068193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.494504, 11.617563, 12.482463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524340, 11.978086, 12.311777>,  <7.542241, 12.194399, 12.209366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524340, 11.978086, 12.311777>,  <7.494504, 11.617563, 12.482463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.524340, 11.978086, 12.311777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174852, 0.409456, 0.895418,
		0.981765, -0.141401, -0.127054,
		0.074589, 0.901306, -0.426713,
		7.546717, 12.248477, 12.183764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.068326, 11.872777, 12.839329>,  <7.494504, 11.617563, 12.482463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.068326, 11.872777, 12.839329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.891567, 12.189767, 12.671181>,  <7.785511, 12.379961, 12.570292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.891567, 12.189767, 12.671181>,  <8.068326, 11.872777, 12.839329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.891567, 12.189767, 12.671181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103412, 0.510484, 0.853646,
		0.891085, 0.333753, -0.307533,
		-0.441898, 0.792474, -0.420371,
		7.758998, 12.427509, 12.545070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.468167, 12.431460, 13.011613>,  <8.068326, 11.872777, 12.839329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.468167, 12.431460, 13.011613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.115617, 12.587521, 12.905060>,  <7.904087, 12.681156, 12.841127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.115617, 12.587521, 12.905060>,  <8.468167, 12.431460, 13.011613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.115617, 12.587521, 12.905060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006234, 0.554220, 0.832347,
		0.472375, 0.735271, -0.486043,
		-0.881375, 0.390150, -0.266384,
		7.851204, 12.704566, 12.825145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599053, 13.240025, 13.087860>,  <8.468167, 12.431460, 13.011613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599053, 13.240025, 13.087860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.205446, 13.170382, 13.102810>,  <7.969282, 13.128597, 13.111780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.205446, 13.170382, 13.102810>,  <8.599053, 13.240025, 13.087860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.205446, 13.170382, 13.102810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068015, 0.561450, 0.824711,
		-0.164569, 0.808988, -0.564318,
		-0.984018, -0.174104, 0.037374,
		7.910241, 13.118152, 13.114022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124325, 13.924107, 13.301806>,  <8.599053, 13.240025, 13.087860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124325, 13.924107, 13.301806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.898590, 13.596980, 13.346885>,  <7.763149, 13.400704, 13.373932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.898590, 13.596980, 13.346885>,  <8.124325, 13.924107, 13.301806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.898590, 13.596980, 13.346885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472271, 0.431785, 0.768454,
		-0.677114, 0.380444, -0.629903,
		-0.564337, -0.817817, 0.112695,
		7.729289, 13.351635, 13.380693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.488835, 14.237300, 13.457978>,  <8.124325, 13.924107, 13.301806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.488835, 14.237300, 13.457978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474594, 13.869947, 13.615614>,  <7.466049, 13.649536, 13.710196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474594, 13.869947, 13.615614>,  <7.488835, 14.237300, 13.457978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.474594, 13.869947, 13.615614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459942, 0.365153, 0.809393,
		-0.887235, -0.152440, -0.435404,
		-0.035605, -0.918382, 0.394090,
		7.463912, 13.594433, 13.733841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.929867, 14.181837, 13.731263>,  <7.488835, 14.237300, 13.457978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.929867, 14.181837, 13.731263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.135733, 13.903536, 13.931683>,  <7.259252, 13.736555, 14.051934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.135733, 13.903536, 13.931683>,  <6.929867, 14.181837, 13.731263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.135733, 13.903536, 13.931683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265165, 0.426576, 0.864708,
		-0.815358, -0.577895, 0.035054,
		0.514664, -0.695752, 0.501049,
		7.290132, 13.694810, 14.081997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.453142, 13.989016, 14.281822>,  <6.929867, 14.181837, 13.731263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.453142, 13.989016, 14.281822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.811393, 13.839727, 14.378618>,  <7.026343, 13.750154, 14.436696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.811393, 13.839727, 14.378618>,  <6.453142, 13.989016, 14.281822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.811393, 13.839727, 14.378618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177585, 0.198771, 0.963823,
		-0.407820, -0.906199, 0.111746,
		0.895627, -0.373222, 0.241990,
		7.080081, 13.727761, 14.451215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.314902, 13.540099, 14.828467>,  <6.453142, 13.989016, 14.281822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.314902, 13.540099, 14.828467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704868, 13.626534, 14.849825>,  <6.938847, 13.678394, 14.862639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704868, 13.626534, 14.849825>,  <6.314902, 13.540099, 14.828467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.704868, 13.626534, 14.849825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115508, 0.286100, 0.951212,
		0.190266, -0.933517, 0.303882,
		0.974914, 0.216084, 0.053394,
		6.997342, 13.691360, 14.865843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.561635, 13.148719, 15.335480>,  <6.314902, 13.540099, 14.828467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.561635, 13.148719, 15.335480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.780866, 13.480675, 15.293729>,  <6.912404, 13.679849, 15.268679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.780866, 13.480675, 15.293729>,  <6.561635, 13.148719, 15.335480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.780866, 13.480675, 15.293729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223200, 0.265374, 0.937955,
		0.806098, -0.490774, 0.330676,
		0.548076, 0.829890, -0.104377,
		6.945289, 13.729642, 15.262416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.737019, 13.370296, 16.065250>,  <6.561635, 13.148719, 15.335480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.737019, 13.370296, 16.065250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.881166, 13.693980, 15.879643>,  <6.967655, 13.888191, 15.768280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.881166, 13.693980, 15.879643>,  <6.737019, 13.370296, 16.065250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.881166, 13.693980, 15.879643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201540, 0.553232, 0.808279,
		0.910778, -0.197761, 0.362456,
		0.360369, 0.809212, -0.464015,
		6.989277, 13.936744, 15.740438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.172561, 13.740680, 16.540684>,  <6.737019, 13.370296, 16.065250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.172561, 13.740680, 16.540684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.064953, 14.021559, 16.277002>,  <7.000389, 14.190086, 16.118793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.064953, 14.021559, 16.277002>,  <7.172561, 13.740680, 16.540684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.064953, 14.021559, 16.277002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193646, 0.631024, 0.751206,
		0.943467, 0.329741, -0.033781,
		-0.269020, 0.702196, -0.659203,
		6.984247, 14.232218, 16.079241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.583496, 14.301019, 16.714481>,  <7.172561, 13.740680, 16.540684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.583496, 14.301019, 16.714481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.251375, 14.408945, 16.519423>,  <7.052103, 14.473701, 16.402388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.251375, 14.408945, 16.519423>,  <7.583496, 14.301019, 16.714481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.251375, 14.408945, 16.519423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267505, 0.574661, 0.773437,
		0.488916, 0.772634, -0.404966,
		-0.830302, 0.269816, -0.487645,
		7.002285, 14.489890, 16.373129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.257947, 14.028968, 16.831917>,  <7.583496, 14.301019, 16.714481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.257947, 14.028968, 16.831917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.596588, 14.241756, 16.838507>,  <8.799772, 14.369430, 16.842461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.596588, 14.241756, 16.838507>,  <8.257947, 14.028968, 16.831917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.596588, 14.241756, 16.838507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364926, -0.557673, -0.745540,
		-0.387419, 0.637187, -0.666258,
		0.846602, 0.531972, 0.016473,
		8.850569, 14.401348, 16.843449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.454383, 14.283571, 16.079348>,  <8.257947, 14.028968, 16.831917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.454383, 14.283571, 16.079348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.788181, 14.273787, 16.299536>,  <8.988461, 14.267916, 16.431648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.788181, 14.273787, 16.299536>,  <8.454383, 14.283571, 16.079348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.788181, 14.273787, 16.299536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437952, -0.576817, -0.689551,
		0.334389, 0.816507, -0.470638,
		0.834495, -0.024461, 0.550472,
		9.038530, 14.266448, 16.464678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.955138, 14.613933, 15.681681>,  <8.454383, 14.283571, 16.079348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.955138, 14.613933, 15.681681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.147525, 14.374133, 15.937578>,  <9.262957, 14.230253, 16.091116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.147525, 14.374133, 15.937578>,  <8.955138, 14.613933, 15.681681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.147525, 14.374133, 15.937578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530661, -0.381788, -0.756728,
		0.697904, 0.703448, 0.134503,
		0.480967, -0.599499, 0.639744,
		9.291815, 14.194283, 16.129501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701023, 14.706758, 15.568965>,  <8.955138, 14.613933, 15.681681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701023, 14.706758, 15.568965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.729149, 14.369979, 15.782947>,  <9.746024, 14.167911, 15.911336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.729149, 14.369979, 15.782947>,  <9.701023, 14.706758, 15.568965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.729149, 14.369979, 15.782947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457462, -0.449347, -0.767343,
		0.886445, 0.298677, 0.353564,
		0.070315, -0.841950, 0.534955,
		9.750243, 14.117394, 15.943433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.377162, 14.420696, 15.523158>,  <9.701023, 14.706758, 15.568965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.377162, 14.420696, 15.523158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.116277, 14.126764, 15.597606>,  <9.959745, 13.950405, 15.642275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.116277, 14.126764, 15.597606>,  <10.377162, 14.420696, 15.523158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.116277, 14.126764, 15.597606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411657, -0.549518, -0.727027,
		0.636518, -0.397560, 0.660901,
		-0.652214, -0.734831, 0.186120,
		9.920612, 13.906315, 15.653441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.841919, 13.954020, 15.609511>,  <10.377162, 14.420696, 15.523158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.841919, 13.954020, 15.609511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.500052, 13.767711, 15.517771>,  <10.294932, 13.655925, 15.462727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.500052, 13.767711, 15.517771>,  <10.841919, 13.954020, 15.609511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.500052, 13.767711, 15.517771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425330, -0.374819, -0.823775,
		0.297726, -0.801602, 0.518452,
		-0.854666, -0.465773, -0.229352,
		10.243652, 13.627979, 15.448965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.053973, 13.303329, 15.439537>,  <10.841919, 13.954020, 15.609511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.053973, 13.303329, 15.439537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.691398, 13.307794, 15.270660>,  <10.473852, 13.310472, 15.169334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.691398, 13.307794, 15.270660>,  <11.053973, 13.303329, 15.439537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.691398, 13.307794, 15.270660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389212, -0.366017, -0.845308,
		-0.163964, -0.930541, 0.327428,
		-0.906438, 0.011161, -0.422192,
		10.419466, 13.311142, 15.144003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028548, 12.684578, 15.119523>,  <11.053973, 13.303329, 15.439537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028548, 12.684578, 15.119523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.732884, 12.889855, 14.945041>,  <10.555486, 13.013021, 14.840351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.732884, 12.889855, 14.945041>,  <11.028548, 12.684578, 15.119523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.732884, 12.889855, 14.945041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252488, -0.389286, -0.885837,
		-0.624415, -0.764911, 0.158168,
		-0.739159, 0.513194, -0.436207,
		10.511137, 13.043814, 14.814178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.596609, 12.212463, 14.833954>,  <11.028548, 12.684578, 15.119523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.596609, 12.212463, 14.833954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.533474, 12.538023, 14.610291>,  <10.495593, 12.733358, 14.476094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.533474, 12.538023, 14.610291>,  <10.596609, 12.212463, 14.833954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.533474, 12.538023, 14.610291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228089, -0.520892, -0.822586,
		-0.960762, -0.257371, -0.103426,
		-0.157836, 0.813899, -0.559156,
		10.486123, 12.782193, 14.442545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.282386, 11.944482, 14.171638>,  <10.596609, 12.212463, 14.833954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.282386, 11.944482, 14.171638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.397501, 12.305196, 14.042664>,  <10.466570, 12.521624, 13.965280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.397501, 12.305196, 14.042664>,  <10.282386, 11.944482, 14.171638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.397501, 12.305196, 14.042664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029545, -0.344877, -0.938183,
		-0.957238, 0.260472, -0.125895,
		0.287789, 0.901784, -0.322434,
		10.483837, 12.575731, 13.945933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.904928, 12.059312, 13.561635>,  <10.282386, 11.944482, 14.171638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.904928, 12.059312, 13.561635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197679, 12.331676, 13.550886>,  <10.373329, 12.495093, 13.544437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197679, 12.331676, 13.550886>,  <9.904928, 12.059312, 13.561635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197679, 12.331676, 13.550886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076640, -0.121432, -0.989637,
		-0.677115, 0.722231, -0.141058,
		0.731876, 0.680908, -0.026872,
		10.417241, 12.535948, 13.542825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.690174, 12.551979, 13.071504>,  <9.904928, 12.059312, 13.561635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.690174, 12.551979, 13.071504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.085176, 12.605966, 13.104047>,  <10.322177, 12.638358, 13.123573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.085176, 12.605966, 13.104047>,  <9.690174, 12.551979, 13.071504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.085176, 12.605966, 13.104047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078915, 0.023373, -0.996607,
		-0.136411, 0.990574, 0.012430,
		0.987504, 0.134967, 0.081359,
		10.381427, 12.646456, 13.128454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.791495, 13.011683, 12.629112>,  <9.690174, 12.551979, 13.071504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.791495, 13.011683, 12.629112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.163248, 12.876738, 12.689025>,  <10.386300, 12.795770, 12.724973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.163248, 12.876738, 12.689025>,  <9.791495, 13.011683, 12.629112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163248, 12.876738, 12.689025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212523, 0.157286, -0.964414,
		0.301800, 0.928141, 0.217876,
		0.929382, -0.337364, 0.149783,
		10.442062, 12.775528, 12.733960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.197369, 13.482829, 12.333942>,  <9.791495, 13.011683, 12.629112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.197369, 13.482829, 12.333942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.393406, 13.134343, 12.322671>,  <10.511028, 12.925252, 12.315907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.393406, 13.134343, 12.322671>,  <10.197369, 13.482829, 12.333942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393406, 13.134343, 12.322671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132395, 0.106352, -0.985475,
		0.861557, 0.479243, 0.167467,
		0.490092, -0.871215, -0.028179,
		10.540434, 12.872978, 12.314218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.746902, 13.621067, 11.887320>,  <10.197369, 13.482829, 12.333942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.746902, 13.621067, 11.887320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.712957, 13.222576, 11.880057>,  <10.692591, 12.983481, 11.875700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.712957, 13.222576, 11.880057>,  <10.746902, 13.621067, 11.887320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.712957, 13.222576, 11.880057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126039, 0.007343, -0.991998,
		0.988389, -0.086470, 0.124940,
		-0.084860, -0.996228, -0.018156,
		10.687499, 12.923708, 11.874610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.282258, 13.401778, 11.446390>,  <10.746902, 13.621067, 11.887320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.282258, 13.401778, 11.446390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.016687, 13.102801, 11.455627>,  <10.857345, 12.923415, 11.461169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.016687, 13.102801, 11.455627>,  <11.282258, 13.401778, 11.446390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016687, 13.102801, 11.455627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148882, -0.162383, -0.975432,
		0.732828, -0.644176, 0.219090,
		-0.663926, -0.747442, 0.023093,
		10.817510, 12.878569, 11.462555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.472417, 12.880258, 11.038011>,  <11.282258, 13.401778, 11.446390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.472417, 12.880258, 11.038011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.099796, 12.742864, 11.085725>,  <10.876224, 12.660427, 11.114353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.099796, 12.742864, 11.085725>,  <11.472417, 12.880258, 11.038011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099796, 12.742864, 11.085725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067472, -0.159066, -0.984960,
		0.357295, -0.925589, 0.125002,
		-0.931551, -0.343486, 0.119285,
		10.820331, 12.639818, 11.121511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446751, 12.164113, 10.724483>,  <11.472417, 12.880258, 11.038011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446751, 12.164113, 10.724483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.076745, 12.315574, 10.736939>,  <10.854741, 12.406450, 10.744413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.076745, 12.315574, 10.736939>,  <11.446751, 12.164113, 10.724483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076745, 12.315574, 10.736939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085483, -0.127558, -0.988140,
		-0.370190, -0.916706, 0.150362,
		-0.925015, 0.378653, 0.031142,
		10.799240, 12.429170, 10.746282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180695, 11.800835, 10.248042>,  <11.446751, 12.164113, 10.724483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.180695, 11.800835, 10.248042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.904662, 12.090096, 10.259641>,  <10.739042, 12.263652, 10.266600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.904662, 12.090096, 10.259641>,  <11.180695, 11.800835, 10.248042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904662, 12.090096, 10.259641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019129, 0.021827, -0.999579,
		-0.723480, -0.690344, -0.001229,
		-0.690080, 0.723152, 0.028997,
		10.697638, 12.307041, 10.268340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.564849, 11.659595, 9.890692>,  <11.180695, 11.800835, 10.248042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.564849, 11.659595, 9.890692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.573603, 12.059179, 9.874704>,  <10.578855, 12.298930, 9.865112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.573603, 12.059179, 9.874704>,  <10.564849, 11.659595, 9.890692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573603, 12.059179, 9.874704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118339, -0.037108, -0.992280,
		-0.992732, 0.026445, 0.117404,
		0.021885, 0.998961, -0.039968,
		10.580168, 12.358868, 9.862714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.941411, 11.983488, 9.525490>,  <10.564849, 11.659595, 9.890692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.941411, 11.983488, 9.525490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.269936, 12.206762, 9.478373>,  <10.467051, 12.340727, 9.450103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.269936, 12.206762, 9.478373>,  <9.941411, 11.983488, 9.525490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269936, 12.206762, 9.478373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032656, -0.160140, -0.986554,
		-0.569544, 0.814115, -0.113297,
		0.821312, 0.558186, -0.117792,
		10.516329, 12.374218, 9.443035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<24.069189, 21.861994, 23.536053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730255, 21.807528, 23.741377>,  <23.526896, 21.774847, 23.864571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730255, 21.807528, 23.741377>,  <24.069189, 21.861994, 23.536053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730255, 21.807528, 23.741377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136120, 0.878592, 0.457763,
		-0.513321, 0.457750, -0.725925,
		-0.847333, -0.136167, 0.513309,
		23.476055, 21.766678, 23.895369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.869879, 22.489676, 23.697334>,  <24.069189, 21.861994, 23.536053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.869879, 22.489676, 23.697334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.651375, 22.284754, 23.962406>,  <23.520271, 22.161800, 24.121449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.651375, 22.284754, 23.962406>,  <23.869879, 22.489676, 23.697334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.651375, 22.284754, 23.962406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060634, 0.813260, 0.578732,
		-0.835417, 0.275958, -0.475316,
		-0.546262, -0.512303, 0.662679,
		23.487495, 22.131063, 24.161209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257193, 22.870581, 23.918413>,  <23.869879, 22.489676, 23.697334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257193, 22.870581, 23.918413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.284885, 22.603262, 24.214680>,  <23.301500, 22.442871, 24.392441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.284885, 22.603262, 24.214680>,  <23.257193, 22.870581, 23.918413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.284885, 22.603262, 24.214680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060468, 0.738273, 0.671786,
		-0.995766, -0.091296, 0.010702,
		0.069232, -0.668295, 0.740668,
		23.305655, 22.402773, 24.436880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.671743, 23.016745, 24.461348>,  <23.257193, 22.870581, 23.918413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.671743, 23.016745, 24.461348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.986866, 22.842703, 24.635727>,  <23.175940, 22.738277, 24.740355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.986866, 22.842703, 24.635727>,  <22.671743, 23.016745, 24.461348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.986866, 22.842703, 24.635727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085536, 0.623647, 0.777012,
		-0.609956, -0.649423, 0.454095,
		0.787805, -0.435102, 0.435946,
		23.223207, 22.712172, 24.766510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504112, 22.934732, 25.210302>,  <22.671743, 23.016745, 24.461348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504112, 22.934732, 25.210302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.901533, 22.889452, 25.207663>,  <23.139986, 22.862284, 25.206079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.901533, 22.889452, 25.207663>,  <22.504112, 22.934732, 25.210302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901533, 22.889452, 25.207663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074176, 0.604815, 0.792904,
		-0.085766, -0.788279, 0.609311,
		0.993550, -0.113201, -0.006599,
		23.199598, 22.855492, 25.205683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.599546, 22.916214, 25.893770>,  <22.504112, 22.934732, 25.210302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.599546, 22.916214, 25.893770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.974062, 22.936411, 25.754738>,  <23.198771, 22.948528, 25.671318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.974062, 22.936411, 25.754738>,  <22.599546, 22.916214, 25.893770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.974062, 22.936411, 25.754738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310849, 0.341584, 0.886957,
		0.163511, -0.938494, 0.304126,
		0.936289, 0.050490, -0.347582,
		23.254950, 22.951557, 25.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037628, 22.405224, 26.300205>,  <22.599546, 22.916214, 25.893770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037628, 22.405224, 26.300205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.222576, 22.725451, 26.147728>,  <23.333546, 22.917585, 26.056242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.222576, 22.725451, 26.147728>,  <23.037628, 22.405224, 26.300205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.222576, 22.725451, 26.147728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252237, 0.293389, 0.922117,
		0.850053, -0.522511, -0.066278,
		0.462370, 0.800566, -0.381193,
		23.361288, 22.965620, 26.033371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630875, 22.476032, 26.688190>,  <23.037628, 22.405224, 26.300205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630875, 22.476032, 26.688190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.593319, 22.839771, 26.526066>,  <23.570786, 23.058014, 26.428791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.593319, 22.839771, 26.526066>,  <23.630875, 22.476032, 26.688190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.593319, 22.839771, 26.526066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251326, 0.415571, 0.874149,
		0.963338, -0.019794, -0.267559,
		-0.093887, 0.909345, -0.405310,
		23.565153, 23.112576, 26.404472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199253, 22.780806, 26.951307>,  <23.630875, 22.476032, 26.688190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199253, 22.780806, 26.951307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.983732, 23.091225, 26.820192>,  <23.854420, 23.277475, 26.741524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.983732, 23.091225, 26.820192>,  <24.199253, 22.780806, 26.951307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.983732, 23.091225, 26.820192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155280, 0.473917, 0.866770,
		0.827999, 0.416117, -0.375851,
		-0.538800, 0.776047, -0.327789,
		23.822092, 23.324039, 26.721855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.550268, 23.366955, 27.166361>,  <24.199253, 22.780806, 26.951307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.550268, 23.366955, 27.166361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.200399, 23.548065, 27.097141>,  <23.990479, 23.656733, 27.055611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.200399, 23.548065, 27.097141>,  <24.550268, 23.366955, 27.166361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200399, 23.548065, 27.097141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243151, 0.718688, 0.651432,
		0.419320, 0.527712, -0.738709,
		-0.874670, 0.452777, -0.173047,
		23.937998, 23.683899, 27.045227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693548, 23.994225, 27.045614>,  <24.550268, 23.366955, 27.166361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693548, 23.994225, 27.045614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.315849, 24.015219, 27.175623>,  <24.089230, 24.027815, 27.253628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.315849, 24.015219, 27.175623>,  <24.693548, 23.994225, 27.045614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315849, 24.015219, 27.175623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259580, 0.725930, 0.636902,
		-0.202512, 0.685763, -0.699083,
		-0.944249, 0.052488, 0.325020,
		24.032574, 24.030966, 27.273129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.467888, 24.718750, 27.078079>,  <24.693548, 23.994225, 27.045614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.467888, 24.718750, 27.078079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.203482, 24.528587, 27.310303>,  <24.044838, 24.414490, 27.449636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.203482, 24.528587, 27.310303>,  <24.467888, 24.718750, 27.078079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203482, 24.528587, 27.310303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207587, 0.627641, 0.750316,
		-0.721087, 0.616487, -0.316192,
		-0.661015, -0.475406, 0.580559,
		24.005177, 24.385965, 27.484470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.905638, 25.162949, 27.383604>,  <24.467888, 24.718750, 27.078079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.905638, 25.162949, 27.383604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.993635, 24.869806, 27.641138>,  <24.046434, 24.693920, 27.795658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.993635, 24.869806, 27.641138>,  <23.905638, 25.162949, 27.383604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.993635, 24.869806, 27.641138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158825, 0.678106, 0.717598,
		-0.962485, -0.055611, 0.265576,
		0.219995, -0.732857, 0.643834,
		24.059633, 24.649950, 27.834288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.368357, 25.714579, 27.600729>,  <23.905638, 25.162949, 27.383604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.368357, 25.714579, 27.600729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.334484, 25.552227, 27.236731>,  <24.314161, 25.454815, 27.018332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.334484, 25.552227, 27.236731>,  <24.368357, 25.714579, 27.600729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334484, 25.552227, 27.236731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163848, 0.895171, -0.414516,
		0.982844, -0.184202, -0.009301,
		-0.084681, -0.405880, -0.909995,
		24.309080, 25.430464, 26.963732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852451, 25.973373, 27.211985>,  <24.368357, 25.714579, 27.600729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852451, 25.973373, 27.211985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.703150, 26.344147, 27.227362>,  <23.613569, 26.566610, 27.236588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.703150, 26.344147, 27.227362>,  <23.852451, 25.973373, 27.211985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703150, 26.344147, 27.227362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505581, -0.168492, -0.846167,
		-0.777862, -0.335272, 0.531530,
		-0.373255, 0.926932, 0.038443,
		23.591173, 26.622227, 27.238895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209791, 25.826258, 27.255051>,  <23.852451, 25.973373, 27.211985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209791, 25.826258, 27.255051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.247629, 26.203651, 27.127998>,  <23.270332, 26.430088, 27.051767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.247629, 26.203651, 27.127998>,  <23.209791, 25.826258, 27.255051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.247629, 26.203651, 27.127998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525651, -0.223621, -0.820783,
		-0.845425, 0.244603, 0.474790,
		0.094593, 0.943485, -0.317630,
		23.276007, 26.486696, 27.032709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553152, 26.041805, 27.114355>,  <23.209791, 25.826258, 27.255051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553152, 26.041805, 27.114355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.777210, 26.303303, 26.910843>,  <22.911646, 26.460201, 26.788736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.777210, 26.303303, 26.910843>,  <22.553152, 26.041805, 27.114355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.777210, 26.303303, 26.910843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467530, -0.257528, -0.845633,
		-0.683851, 0.711548, 0.161391,
		0.560145, 0.653742, -0.508781,
		22.945253, 26.499426, 26.758209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115929, 26.467730, 26.885342>,  <22.553152, 26.041805, 27.114355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115929, 26.467730, 26.885342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.424500, 26.523617, 26.637026>,  <22.609642, 26.557150, 26.488037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.424500, 26.523617, 26.637026>,  <22.115929, 26.467730, 26.885342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.424500, 26.523617, 26.637026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557990, -0.320400, -0.765501,
		-0.305855, 0.936922, -0.169204,
		0.771427, 0.139718, -0.620789,
		22.655928, 26.565533, 26.450788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853355, 26.931753, 26.385704>,  <22.115929, 26.467730, 26.885342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853355, 26.931753, 26.385704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.162630, 26.749535, 26.209225>,  <22.348196, 26.640203, 26.103336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.162630, 26.749535, 26.209225>,  <21.853355, 26.931753, 26.385704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162630, 26.749535, 26.209225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584739, -0.242812, -0.774030,
		0.245480, 0.856457, -0.454116,
		0.773188, -0.455548, -0.441198,
		22.394587, 26.612869, 26.076866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810276, 27.229563, 25.739870>,  <21.853355, 26.931753, 26.385704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810276, 27.229563, 25.739870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.013742, 26.885202, 25.735800>,  <22.135822, 26.678585, 25.733356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.013742, 26.885202, 25.735800>,  <21.810276, 27.229563, 25.739870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.013742, 26.885202, 25.735800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476302, -0.271539, -0.836303,
		0.717212, 0.430248, -0.548173,
		0.508668, -0.860903, -0.010178,
		22.166344, 26.626932, 25.732746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039696, 27.250755, 25.087975>,  <21.810276, 27.229563, 25.739870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039696, 27.250755, 25.087975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.127697, 26.869007, 25.168741>,  <22.180498, 26.639957, 25.217201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.127697, 26.869007, 25.168741>,  <22.039696, 27.250755, 25.087975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.127697, 26.869007, 25.168741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449944, -0.282934, -0.847053,
		0.865534, 0.095503, -0.491661,
		0.220003, -0.954373, 0.201918,
		22.193699, 26.582695, 25.229317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955509, 27.107323, 24.392859>,  <22.039696, 27.250755, 25.087975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955509, 27.107323, 24.392859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.963736, 26.769484, 24.606859>,  <21.968672, 26.566780, 24.735260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.963736, 26.769484, 24.606859>,  <21.955509, 27.107323, 24.392859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963736, 26.769484, 24.606859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586101, -0.443709, -0.677944,
		0.809977, -0.299623, -0.504146,
		0.020567, -0.844599, 0.535003,
		21.969906, 26.516104, 24.767361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153183, 26.544195, 23.931940>,  <21.955509, 27.107323, 24.392859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153183, 26.544195, 23.931940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.947586, 26.385931, 24.236378>,  <21.824228, 26.290974, 24.419041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.947586, 26.385931, 24.236378>,  <22.153183, 26.544195, 23.931940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947586, 26.385931, 24.236378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384363, -0.686981, -0.616703,
		0.766861, -0.609518, 0.201028,
		-0.513994, -0.395658, 0.761095,
		21.793388, 26.267233, 24.464706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405874, 25.828444, 24.003656>,  <22.153183, 26.544195, 23.931940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405874, 25.828444, 24.003656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.025843, 25.822990, 24.128342>,  <21.797825, 25.819719, 24.203154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.025843, 25.822990, 24.128342>,  <22.405874, 25.828444, 24.003656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025843, 25.822990, 24.128342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219687, -0.680202, -0.699331,
		0.221562, -0.732898, 0.643250,
		-0.950078, -0.013632, 0.311715,
		21.740820, 25.818901, 24.221857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287838, 25.109650, 24.087730>,  <22.405874, 25.828444, 24.003656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287838, 25.109650, 24.087730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.937227, 25.302052, 24.080444>,  <21.726860, 25.417492, 24.076073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.937227, 25.302052, 24.080444>,  <22.287838, 25.109650, 24.087730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937227, 25.302052, 24.080444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419531, -0.781963, -0.461007,
		-0.235988, -0.396445, 0.887210,
		-0.876529, 0.481004, -0.018213,
		21.674269, 25.446352, 24.074980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924528, 24.570522, 24.151264>,  <22.287838, 25.109650, 24.087730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924528, 24.570522, 24.151264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.671736, 24.853247, 24.024130>,  <21.520061, 25.022881, 23.947849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.671736, 24.853247, 24.024130>,  <21.924528, 24.570522, 24.151264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671736, 24.853247, 24.024130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477186, -0.678056, -0.559046,
		-0.610652, -0.201637, 0.765798,
		-0.631979, 0.706811, -0.317838,
		21.482141, 25.065290, 23.928778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406689, 24.135138, 24.053703>,  <21.924528, 24.570522, 24.151264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406689, 24.135138, 24.053703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.312912, 24.477758, 23.869808>,  <21.256645, 24.683331, 23.759472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.312912, 24.477758, 23.869808>,  <21.406689, 24.135138, 24.053703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.312912, 24.477758, 23.869808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480016, -0.513242, -0.711455,
		-0.845353, 0.053886, 0.531483,
		-0.234442, 0.856551, -0.459736,
		21.242579, 24.734724, 23.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575590, 24.130737, 23.925928>,  <21.406689, 24.135138, 24.053703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575590, 24.130737, 23.925928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.777254, 24.367994, 23.674850>,  <20.898252, 24.510349, 23.524204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.777254, 24.367994, 23.674850>,  <20.575590, 24.130737, 23.925928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777254, 24.367994, 23.674850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391842, -0.490596, -0.778316,
		-0.769599, 0.638354, -0.014920,
		0.504160, 0.593144, -0.627696,
		20.928503, 24.545938, 23.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854630, 24.442465, 24.226648>,  <20.575590, 24.130737, 23.925928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854630, 24.442465, 24.226648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.538095, 24.316256, 24.436117>,  <19.348175, 24.240530, 24.561798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.538095, 24.316256, 24.436117>,  <19.854630, 24.442465, 24.226648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538095, 24.316256, 24.436117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415754, 0.350289, 0.839313,
		-0.448261, 0.881896, -0.146015,
		-0.791334, -0.315525, 0.523673,
		19.300695, 24.221598, 24.593220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593191, 25.027790, 24.712103>,  <19.854630, 24.442465, 24.226648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593191, 25.027790, 24.712103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.403616, 24.725479, 24.892851>,  <19.289871, 24.544092, 25.001299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.403616, 24.725479, 24.892851>,  <19.593191, 25.027790, 24.712103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403616, 24.725479, 24.892851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324380, 0.327224, 0.887526,
		-0.818634, 0.567209, 0.090075,
		-0.473938, -0.755777, 0.451868,
		19.261435, 24.498747, 25.028412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272896, 25.328751, 25.289267>,  <19.593191, 25.027790, 24.712103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272896, 25.328751, 25.289267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261530, 24.934645, 25.356728>,  <19.254711, 24.698181, 25.397203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261530, 24.934645, 25.356728>,  <19.272896, 25.328751, 25.289267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261530, 24.934645, 25.356728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104603, 0.164863, 0.980754,
		-0.994108, 0.045507, 0.098378,
		-0.028412, -0.985266, 0.168652,
		19.253006, 24.639065, 25.407324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808908, 25.192146, 25.999664>,  <19.272896, 25.328751, 25.289267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808908, 25.192146, 25.999664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.082306, 24.907112, 25.936340>,  <19.246344, 24.736092, 25.898346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.082306, 24.907112, 25.936340>,  <18.808908, 25.192146, 25.999664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.082306, 24.907112, 25.936340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452823, 0.243804, 0.857619,
		-0.572529, -0.657863, 0.489312,
		0.683492, -0.712584, -0.158311,
		19.287354, 24.693336, 25.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782406, 24.812784, 26.751854>,  <18.808908, 25.192146, 25.999664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782406, 24.812784, 26.751854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.105499, 24.672459, 26.562330>,  <19.299356, 24.588263, 26.448616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.105499, 24.672459, 26.562330>,  <18.782406, 24.812784, 26.751854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.105499, 24.672459, 26.562330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567433, 0.244570, 0.786260,
		-0.159952, -0.903944, 0.396612,
		0.807734, -0.350814, -0.473808,
		19.347820, 24.567215, 26.420187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125568, 24.443825, 27.270853>,  <18.782406, 24.812784, 26.751854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125568, 24.443825, 27.270853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.394596, 24.529737, 26.987581>,  <19.556013, 24.581285, 26.817617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.394596, 24.529737, 26.987581>,  <19.125568, 24.443825, 27.270853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.394596, 24.529737, 26.987581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705034, 0.104849, 0.701380,
		0.224897, -0.971017, -0.080912,
		0.672569, 0.214784, -0.708180,
		19.596367, 24.594173, 26.775127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648512, 24.066538, 27.389305>,  <19.125568, 24.443825, 27.270853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648512, 24.066538, 27.389305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.814428, 24.369694, 27.187891>,  <19.913979, 24.551588, 27.067043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.814428, 24.369694, 27.187891>,  <19.648512, 24.066538, 27.389305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814428, 24.369694, 27.187891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644302, 0.146120, 0.750682,
		0.642512, -0.635806, -0.427702,
		0.414792, 0.757892, -0.503535,
		19.938866, 24.597061, 27.036831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854082, 23.483471, 27.667942>,  <19.648512, 24.066538, 27.389305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854082, 23.483471, 27.667942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.644381, 23.440729, 28.005875>,  <19.518560, 23.415085, 28.208635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.644381, 23.440729, 28.005875>,  <19.854082, 23.483471, 27.667942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644381, 23.440729, 28.005875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766627, -0.372693, -0.522860,
		0.370733, -0.921782, 0.113467,
		-0.524252, -0.106854, 0.844833,
		19.487104, 23.408672, 28.259325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.657860, 22.902452, 27.611134>,  <19.854082, 23.483471, 27.667942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.657860, 22.902452, 27.611134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.395615, 22.962471, 27.907150>,  <19.238268, 22.998482, 28.084761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.395615, 22.962471, 27.907150>,  <19.657860, 22.902452, 27.611134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395615, 22.962471, 27.907150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720377, -0.418059, -0.553429,
		0.226341, -0.895943, 0.382174,
		-0.655612, 0.150046, 0.740041,
		19.198931, 23.007484, 28.129162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407339, 22.273266, 27.849195>,  <19.657860, 22.902452, 27.611134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407339, 22.273266, 27.849195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137533, 22.554943, 27.937866>,  <18.975649, 22.723949, 27.991070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137533, 22.554943, 27.937866>,  <19.407339, 22.273266, 27.849195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137533, 22.554943, 27.937866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623093, -0.381970, -0.682535,
		-0.395968, -0.598500, 0.696425,
		-0.674511, 0.704199, 0.221673,
		18.935179, 22.766201, 28.004370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819473, 21.910854, 27.749294>,  <19.407339, 22.273266, 27.849195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819473, 21.910854, 27.749294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.636042, 22.266266, 27.755329>,  <18.525984, 22.479513, 27.758949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.636042, 22.266266, 27.755329>,  <18.819473, 21.910854, 27.749294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636042, 22.266266, 27.755329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794856, -0.402520, -0.454073,
		-0.397365, -0.220254, 0.890836,
		-0.458591, 0.888519, 0.015123,
		18.498468, 22.532824, 27.759855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075672, 21.818401, 27.958138>,  <18.819473, 21.910854, 27.749294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075672, 21.818401, 27.958138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.127131, 22.159489, 27.755623>,  <18.158007, 22.364141, 27.634115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.127131, 22.159489, 27.755623>,  <18.075672, 21.818401, 27.958138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127131, 22.159489, 27.755623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707167, -0.279034, -0.649657,
		-0.695244, 0.441605, 0.567116,
		0.128647, 0.852716, -0.506285,
		18.165724, 22.415304, 27.603737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330702, 22.035046, 27.833027>,  <18.075672, 21.818401, 27.958138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330702, 22.035046, 27.833027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.563869, 22.227644, 27.571228>,  <17.703770, 22.343203, 27.414148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.563869, 22.227644, 27.571228>,  <17.330702, 22.035046, 27.833027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563869, 22.227644, 27.571228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634604, -0.233248, -0.736799,
		-0.507426, 0.844841, 0.169595,
		0.582921, 0.481496, -0.654496,
		17.738747, 22.372093, 27.374880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913712, 22.565575, 27.484367>,  <17.330702, 22.035046, 27.833027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913712, 22.565575, 27.484367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211988, 22.448296, 27.245043>,  <17.390955, 22.377928, 27.101448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211988, 22.448296, 27.245043>,  <16.913712, 22.565575, 27.484367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211988, 22.448296, 27.245043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654969, -0.157729, -0.739011,
		0.122304, 0.942951, -0.309652,
		0.745692, -0.293197, -0.598313,
		17.435696, 22.360336, 27.065548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.406502, 19.359062, 24.906424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.371367, 19.293543, 25.299454>,  <24.350285, 19.254230, 25.535273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.371367, 19.293543, 25.299454>,  <24.406502, 19.359062, 24.906424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371367, 19.293543, 25.299454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462019, 0.880574, 0.105491,
		-0.882509, -0.444702, -0.153026,
		-0.087839, -0.163798, 0.982575,
		24.345015, 19.244404, 25.594227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200827, 19.443518, 24.641422>,  <24.406502, 19.359062, 24.906424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200827, 19.443518, 24.641422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.836586, 19.599852, 24.587683>,  <24.618042, 19.693653, 24.555439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.836586, 19.599852, 24.587683>,  <25.200827, 19.443518, 24.641422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836586, 19.599852, 24.587683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053461, 0.433738, 0.899452,
		0.409809, 0.811861, -0.415858,
		-0.910603, 0.390836, -0.134347,
		24.563404, 19.717102, 24.547379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242653, 20.138435, 24.810949>,  <25.200827, 19.443518, 24.641422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242653, 20.138435, 24.810949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.869623, 20.021654, 24.895863>,  <24.645805, 19.951586, 24.946810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.869623, 20.021654, 24.895863>,  <25.242653, 20.138435, 24.810949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869623, 20.021654, 24.895863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018011, 0.624988, 0.780427,
		-0.360523, 0.723984, -0.588107,
		-0.932576, -0.291954, 0.212283,
		24.589849, 19.934069, 24.959547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901596, 20.783272, 24.920845>,  <25.242653, 20.138435, 24.810949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901596, 20.783272, 24.920845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.727472, 20.462326, 25.084167>,  <24.622999, 20.269758, 25.182161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.727472, 20.462326, 25.084167>,  <24.901596, 20.783272, 24.920845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727472, 20.462326, 25.084167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048077, 0.432168, 0.900510,
		-0.898997, 0.411629, -0.149551,
		-0.435308, -0.802366, 0.408308,
		24.596880, 20.221617, 25.206659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103210, 20.773838, 25.326952>,  <24.901596, 20.783272, 24.920845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103210, 20.773838, 25.326952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.394575, 20.533852, 25.459288>,  <24.569395, 20.389860, 25.538689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.394575, 20.533852, 25.459288>,  <24.103210, 20.773838, 25.326952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394575, 20.533852, 25.459288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050373, 0.434676, 0.899177,
		-0.683283, -0.671638, 0.286402,
		0.728414, -0.599966, 0.330839,
		24.613100, 20.353863, 25.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995558, 20.333055, 25.952778>,  <24.103210, 20.773838, 25.326952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995558, 20.333055, 25.952778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.385914, 20.414721, 25.983654>,  <24.620127, 20.463720, 26.002180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.385914, 20.414721, 25.983654>,  <23.995558, 20.333055, 25.952778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385914, 20.414721, 25.983654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148709, 0.363051, 0.919826,
		0.159768, -0.909127, 0.384658,
		0.975889, 0.204161, 0.077192,
		24.678680, 20.475969, 26.006811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349085, 20.028482, 26.689075>,  <23.995558, 20.333055, 25.952778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349085, 20.028482, 26.689075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.255777, 20.195414, 27.040400>,  <24.199793, 20.295572, 27.251194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.255777, 20.195414, 27.040400>,  <24.349085, 20.028482, 26.689075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255777, 20.195414, 27.040400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848101, -0.354561, 0.393715,
		0.475721, 0.836735, -0.271226,
		-0.233269, 0.417326, 0.878308,
		24.185797, 20.320612, 27.303892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664255, 20.199472, 26.870403>,  <24.349085, 20.028482, 26.689075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664255, 20.199472, 26.870403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.327240, 20.378761, 26.989885>,  <23.125031, 20.486336, 27.061575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.327240, 20.378761, 26.989885>,  <23.664255, 20.199472, 26.870403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.327240, 20.378761, 26.989885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530215, -0.787825, -0.313374,
		0.094864, -0.422407, 0.901428,
		-0.842539, 0.448223, 0.298703,
		23.074478, 20.513227, 27.079496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.147635, 19.684174, 27.318350>,  <23.664255, 20.199472, 26.870403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.147635, 19.684174, 27.318350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.951220, 20.003202, 27.178202>,  <22.833370, 20.194620, 27.094112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.951220, 20.003202, 27.178202>,  <23.147635, 19.684174, 27.318350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951220, 20.003202, 27.178202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700985, -0.600548, -0.384658,
		-0.517206, 0.056722, 0.853979,
		-0.491037, 0.797574, -0.350368,
		22.803909, 20.242476, 27.073092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492128, 19.392044, 27.162092>,  <23.147635, 19.684174, 27.318350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492128, 19.392044, 27.162092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.510208, 19.724039, 26.939714>,  <22.521055, 19.923237, 26.806288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.510208, 19.724039, 26.939714>,  <22.492128, 19.392044, 27.162092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.510208, 19.724039, 26.939714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713059, -0.362956, -0.599842,
		-0.699646, 0.423533, 0.575426,
		0.045199, 0.829989, -0.555945,
		22.523767, 19.973036, 26.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824924, 19.631813, 27.119608>,  <22.492128, 19.392044, 27.162092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824924, 19.631813, 27.119608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.039694, 19.759983, 26.807444>,  <22.168556, 19.836885, 26.620146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.039694, 19.759983, 26.807444>,  <21.824924, 19.631813, 27.119608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039694, 19.759983, 26.807444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664921, -0.408606, -0.625237,
		-0.519222, 0.854616, -0.006333,
		0.536925, 0.320425, -0.780410,
		22.200771, 19.856112, 26.573320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386076, 19.825703, 26.573153>,  <21.824924, 19.631813, 27.119608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386076, 19.825703, 26.573153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.730227, 19.764856, 26.378582>,  <21.936718, 19.728348, 26.261839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.730227, 19.764856, 26.378582>,  <21.386076, 19.825703, 26.573153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730227, 19.764856, 26.378582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462491, -0.634027, -0.619768,
		-0.214130, 0.758202, -0.615856,
		0.860378, -0.152117, -0.486426,
		21.988340, 19.719221, 26.232655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.825737, 19.586252, 27.035524>,  <21.386076, 19.825703, 26.573153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.825737, 19.586252, 27.035524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.447683, 19.521135, 27.148815>,  <20.220850, 19.482065, 27.216789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.447683, 19.521135, 27.148815>,  <20.825737, 19.586252, 27.035524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447683, 19.521135, 27.148815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165811, 0.507957, 0.845273,
		-0.281469, 0.845860, -0.453096,
		-0.945136, -0.162790, 0.283227,
		20.164143, 19.472298, 27.233784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508886, 20.234509, 27.333910>,  <20.825737, 19.586252, 27.035524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508886, 20.234509, 27.333910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.285038, 19.942703, 27.491205>,  <20.150730, 19.767620, 27.585583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.285038, 19.942703, 27.491205>,  <20.508886, 20.234509, 27.333910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285038, 19.942703, 27.491205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046897, 0.501612, 0.863820,
		-0.827421, 0.464969, -0.314924,
		-0.559620, -0.729512, 0.393239,
		20.117151, 19.723850, 27.609177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109509, 20.562763, 27.797737>,  <20.508886, 20.234509, 27.333910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109509, 20.562763, 27.797737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.079990, 20.181431, 27.914846>,  <20.062279, 19.952631, 27.985111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.079990, 20.181431, 27.914846>,  <20.109509, 20.562763, 27.797737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079990, 20.181431, 27.914846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066347, 0.297617, 0.952377,
		-0.995064, 0.050857, -0.085214,
		-0.073796, -0.953330, 0.292774,
		20.057852, 19.895432, 28.002678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440758, 20.578634, 28.165188>,  <20.109509, 20.562763, 27.797737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440758, 20.578634, 28.165188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.678654, 20.280460, 28.285595>,  <19.821390, 20.101555, 28.357840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.678654, 20.280460, 28.285595>,  <19.440758, 20.578634, 28.165188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678654, 20.280460, 28.285595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016570, 0.385723, 0.922466,
		-0.803748, -0.543638, 0.241756,
		0.594739, -0.745437, 0.301016,
		19.857075, 20.056829, 28.375900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188070, 20.340214, 28.760836>,  <19.440758, 20.578634, 28.165188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188070, 20.340214, 28.760836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.548613, 20.169130, 28.788042>,  <19.764938, 20.066481, 28.804367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.548613, 20.169130, 28.788042>,  <19.188070, 20.340214, 28.760836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548613, 20.169130, 28.788042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110299, 0.378588, 0.918970,
		-0.418801, -0.820815, 0.388418,
		0.901354, -0.427708, 0.068018,
		19.819019, 20.040817, 28.808447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288816, 20.109369, 29.510412>,  <19.188070, 20.340214, 28.760836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288816, 20.109369, 29.510412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.662680, 20.109331, 29.368193>,  <19.886997, 20.109308, 29.282860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.662680, 20.109331, 29.368193>,  <19.288816, 20.109369, 29.510412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662680, 20.109331, 29.368193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349376, 0.185779, 0.918380,
		0.065967, -0.982591, 0.173673,
		0.934657, -0.000094, -0.355550,
		19.943077, 20.109303, 29.261528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706865, 19.614464, 29.858101>,  <19.288816, 20.109369, 29.510412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706865, 19.614464, 29.858101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.956612, 19.878309, 29.690733>,  <20.106461, 20.036617, 29.590313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.956612, 19.878309, 29.690733>,  <19.706865, 19.614464, 29.858101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956612, 19.878309, 29.690733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365980, 0.226203, 0.902713,
		0.690090, -0.716757, -0.100173,
		0.624367, 0.659615, -0.418419,
		20.143921, 20.076193, 29.565207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370955, 19.477089, 30.119349>,  <19.706865, 19.614464, 29.858101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370955, 19.477089, 30.119349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.408386, 19.845798, 29.968842>,  <20.430845, 20.067024, 29.878538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.408386, 19.845798, 29.968842>,  <20.370955, 19.477089, 30.119349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408386, 19.845798, 29.968842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381838, 0.315798, 0.868603,
		0.919480, -0.224955, -0.322417,
		0.093578, 0.921774, -0.376266,
		20.436460, 20.122330, 29.855963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993721, 19.677324, 30.510960>,  <20.370955, 19.477089, 30.119349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993721, 19.677324, 30.510960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.827974, 20.017267, 30.380703>,  <20.728527, 20.221233, 30.302549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.827974, 20.017267, 30.380703>,  <20.993721, 19.677324, 30.510960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827974, 20.017267, 30.380703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334389, 0.474945, 0.814010,
		0.846454, 0.228408, -0.480984,
		-0.414367, 0.849857, -0.325642,
		20.703665, 20.272224, 30.283010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.447933, 20.173727, 30.707788>,  <20.993721, 19.677324, 30.510960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.447933, 20.173727, 30.707788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.128021, 20.401226, 30.630980>,  <20.936073, 20.537725, 30.584894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.128021, 20.401226, 30.630980>,  <21.447933, 20.173727, 30.707788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128021, 20.401226, 30.630980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210949, 0.565768, 0.797124,
		0.562005, 0.597019, -0.572468,
		-0.799782, 0.568749, -0.192024,
		20.888086, 20.571850, 30.573372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684494, 20.915257, 30.496189>,  <21.447933, 20.173727, 30.707788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684494, 20.915257, 30.496189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308292, 20.903965, 30.631632>,  <21.082571, 20.897190, 30.712896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308292, 20.903965, 30.631632>,  <21.684494, 20.915257, 30.496189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308292, 20.903965, 30.631632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190280, 0.781868, 0.593697,
		-0.281502, 0.622804, -0.729980,
		-0.940505, -0.028226, 0.338605,
		21.026140, 20.895496, 30.733213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.516329, 21.621059, 30.375298>,  <21.684494, 20.915257, 30.496189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.516329, 21.621059, 30.375298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.260048, 21.472780, 30.644247>,  <21.106279, 21.383812, 30.805616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.260048, 21.472780, 30.644247>,  <21.516329, 21.621059, 30.375298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260048, 21.472780, 30.644247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341839, 0.646415, 0.682125,
		-0.687493, 0.666882, -0.287441,
		-0.640703, -0.370697, 0.672372,
		21.067837, 21.361570, 30.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079962, 22.157797, 30.567204>,  <21.516329, 21.621059, 30.375298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079962, 22.157797, 30.567204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.083345, 21.886328, 30.860960>,  <21.085375, 21.723446, 31.037214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.083345, 21.886328, 30.860960>,  <21.079962, 22.157797, 30.567204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083345, 21.886328, 30.860960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308804, 0.700295, 0.643604,
		-0.951088, 0.221339, 0.215501,
		0.008459, -0.678672, 0.734393,
		21.085884, 21.682726, 31.081278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738815, 22.399256, 31.059263>,  <21.079962, 22.157797, 30.567204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738815, 22.399256, 31.059263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.948002, 22.121653, 31.257196>,  <21.073515, 21.955091, 31.375956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.948002, 22.121653, 31.257196>,  <20.738815, 22.399256, 31.059263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948002, 22.121653, 31.257196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075744, 0.616093, 0.784023,
		-0.848981, -0.372538, 0.374763,
		0.522967, -0.694007, 0.494834,
		21.104893, 21.913450, 31.405647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932886, 22.972553, 30.719858>,  <20.738815, 22.399256, 31.059263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932886, 22.972553, 30.719858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.929813, 23.371582, 30.747538>,  <20.927969, 23.611000, 30.764145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.929813, 23.371582, 30.747538>,  <20.932886, 22.972553, 30.719858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929813, 23.371582, 30.747538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700386, 0.044022, -0.712406,
		-0.713723, -0.053938, 0.698348,
		-0.007683, 0.997574, 0.069197,
		20.927507, 23.670855, 30.768297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231358, 23.193340, 30.901117>,  <20.932886, 22.972553, 30.719858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231358, 23.193340, 30.901117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.427483, 23.470875, 30.690145>,  <20.545158, 23.637396, 30.563562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.427483, 23.470875, 30.690145>,  <20.231358, 23.193340, 30.901117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427483, 23.470875, 30.690145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693589, -0.055815, -0.718205,
		-0.527755, 0.717967, 0.453870,
		0.490314, 0.693836, -0.527431,
		20.574577, 23.679026, 30.531916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766430, 23.482584, 30.447634>,  <20.231358, 23.193340, 30.901117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766430, 23.482584, 30.447634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.091896, 23.623657, 30.262783>,  <20.287176, 23.708302, 30.151873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.091896, 23.623657, 30.262783>,  <19.766430, 23.482584, 30.447634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091896, 23.623657, 30.262783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462836, -0.087986, -0.882066,
		-0.351752, 0.931597, 0.091644,
		0.813666, 0.352685, -0.462126,
		20.335997, 23.729464, 30.124146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530708, 24.065283, 30.032276>,  <19.766430, 23.482584, 30.447634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530708, 24.065283, 30.032276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.857363, 23.879196, 29.895643>,  <20.053356, 23.767544, 29.813663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.857363, 23.879196, 29.895643>,  <19.530708, 24.065283, 30.032276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857363, 23.879196, 29.895643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435909, -0.109270, -0.893333,
		0.378269, 0.878427, -0.292026,
		0.816637, -0.465217, -0.341580,
		20.102354, 23.739632, 29.793169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813698, 24.535410, 29.502270>,  <19.530708, 24.065283, 30.032276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813698, 24.535410, 29.502270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.939873, 24.158924, 29.453917>,  <20.015577, 23.933033, 29.424904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.939873, 24.158924, 29.453917>,  <19.813698, 24.535410, 29.502270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939873, 24.158924, 29.453917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386573, -0.011115, -0.922192,
		0.866638, 0.337622, -0.367354,
		0.315435, -0.941216, -0.120883,
		20.034504, 23.876558, 29.417652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711823, 24.486696, 28.758547>,  <19.813698, 24.535410, 29.502270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711823, 24.486696, 28.758547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.813257, 24.112469, 28.856859>,  <19.874117, 23.887932, 28.915846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.813257, 24.112469, 28.856859>,  <19.711823, 24.486696, 28.758547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813257, 24.112469, 28.856859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484528, -0.342765, -0.804826,
		0.837214, 0.085004, -0.540229,
		0.253585, -0.935568, 0.245781,
		19.889332, 23.831799, 28.930593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855095, 24.070515, 28.083960>,  <19.711823, 24.486696, 28.758547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855095, 24.070515, 28.083960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.780592, 23.804108, 28.372883>,  <19.735889, 23.644264, 28.546236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.780592, 23.804108, 28.372883>,  <19.855095, 24.070515, 28.083960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780592, 23.804108, 28.372883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540220, -0.544643, -0.641503,
		0.820652, -0.509691, -0.258350,
		-0.186260, -0.666017, 0.722308,
		19.724714, 23.604303, 28.589575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380358, 24.010118, 27.436432>,  <19.855095, 24.070515, 28.083960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380358, 24.010118, 27.436432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.306133, 24.397701, 27.371088>,  <20.261599, 24.630251, 27.331882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.306133, 24.397701, 27.371088>,  <20.380358, 24.010118, 27.436432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306133, 24.397701, 27.371088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785751, 0.246145, 0.567457,
		0.590052, -0.023060, -0.807036,
		-0.185562, 0.968959, -0.163358,
		20.250465, 24.688389, 27.322081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000046, 24.232512, 27.639338>,  <20.380358, 24.010118, 27.436432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000046, 24.232512, 27.639338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.789938, 24.565964, 27.571047>,  <20.663874, 24.766035, 27.530071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.789938, 24.565964, 27.571047>,  <21.000046, 24.232512, 27.639338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789938, 24.565964, 27.571047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748398, 0.548063, 0.373534,
		0.404960, 0.068434, -0.911770,
		-0.525270, 0.833633, -0.170728,
		20.632357, 24.816053, 27.519829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539034, 24.782736, 27.573059>,  <21.000046, 24.232512, 27.639338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539034, 24.782736, 27.573059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.188194, 24.958685, 27.650219>,  <20.977692, 25.064255, 27.696514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.188194, 24.958685, 27.650219>,  <21.539034, 24.782736, 27.573059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188194, 24.958685, 27.650219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461382, 0.659959, 0.592943,
		0.133514, 0.609069, -0.781798,
		-0.877098, 0.439873, 0.192900,
		20.925064, 25.090647, 27.708090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658520, 25.521870, 27.441730>,  <21.539034, 24.782736, 27.573059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658520, 25.521870, 27.441730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.372814, 25.468111, 27.716471>,  <21.201391, 25.435856, 27.881315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.372814, 25.468111, 27.716471>,  <21.658520, 25.521870, 27.441730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372814, 25.468111, 27.716471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382840, 0.746517, 0.544194,
		-0.585882, 0.651652, -0.481759,
		-0.714266, -0.134396, 0.686849,
		21.158535, 25.427792, 27.922525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500725, 26.186428, 27.774406>,  <21.658520, 25.521870, 27.441730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500725, 26.186428, 27.774406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.385345, 25.904144, 28.033257>,  <21.316118, 25.734774, 28.188566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.385345, 25.904144, 28.033257>,  <21.500725, 26.186428, 27.774406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385345, 25.904144, 28.033257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388435, 0.531495, 0.752749,
		-0.875167, 0.468494, 0.120814,
		-0.288447, -0.705710, 0.647126,
		21.298811, 25.692430, 28.227394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241161, 26.601246, 28.370384>,  <21.500725, 26.186428, 27.774406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241161, 26.601246, 28.370384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.305696, 26.240871, 28.531523>,  <21.344418, 26.024647, 28.628206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.305696, 26.240871, 28.531523>,  <21.241161, 26.601246, 28.370384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305696, 26.240871, 28.531523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269238, 0.432889, 0.860301,
		-0.949463, -0.030338, 0.312408,
		0.161338, -0.900936, 0.402844,
		21.354097, 25.970591, 28.652376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803574, 26.450794, 28.839819>,  <21.241161, 26.601246, 28.370384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803574, 26.450794, 28.839819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.142759, 26.258528, 28.929188>,  <21.346272, 26.143167, 28.982809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.142759, 26.258528, 28.929188>,  <20.803574, 26.450794, 28.839819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142759, 26.258528, 28.929188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016571, 0.445345, 0.895206,
		-0.529795, -0.755400, 0.385601,
		0.847964, -0.480665, 0.223424,
		21.397148, 26.114328, 28.996216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680895, 26.461628, 29.470123>,  <20.803574, 26.450794, 28.839819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680895, 26.461628, 29.470123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.067183, 26.361483, 29.442682>,  <21.298956, 26.301395, 29.426218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.067183, 26.361483, 29.442682>,  <20.680895, 26.461628, 29.470123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067183, 26.361483, 29.442682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199466, 0.546532, 0.813337,
		-0.166135, -0.799138, 0.577734,
		0.965719, -0.250362, -0.068603,
		21.356897, 26.286375, 29.422102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938742, 26.416149, 30.156744>,  <20.680895, 26.461628, 29.470123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938742, 26.416149, 30.156744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.298149, 26.421843, 29.981262>,  <21.513794, 26.425259, 29.875973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.298149, 26.421843, 29.981262>,  <20.938742, 26.416149, 30.156744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298149, 26.421843, 29.981262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336321, 0.619916, 0.708937,
		0.282049, -0.784539, 0.552220,
		0.898519, 0.014232, -0.438704,
		21.567705, 26.426113, 29.849651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.619678, 17.042131, 17.727114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903967, 17.262680, 17.552362>,  <16.074539, 17.395010, 17.447512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903967, 17.262680, 17.552362>,  <15.619678, 17.042131, 17.727114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903967, 17.262680, 17.552362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033469, 0.646832, 0.761898,
		0.702678, -0.526874, 0.478170,
		0.710720, 0.551372, -0.436881,
		16.117184, 17.428091, 17.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104919, 17.252417, 18.262737>,  <15.619678, 17.042131, 17.727114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104919, 17.252417, 18.262737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169998, 17.511038, 17.964611>,  <16.209045, 17.666210, 17.785734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169998, 17.511038, 17.964611>,  <16.104919, 17.252417, 18.262737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169998, 17.511038, 17.964611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113632, 0.738078, 0.665078,
		0.980111, -0.192897, 0.046613,
		0.162695, 0.646554, -0.745317,
		16.218807, 17.705004, 17.741016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744308, 17.654707, 18.456602>,  <16.104919, 17.252417, 18.262737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744308, 17.654707, 18.456602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554476, 17.850149, 18.163742>,  <16.440577, 17.967415, 17.988026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554476, 17.850149, 18.163742>,  <16.744308, 17.654707, 18.456602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554476, 17.850149, 18.163742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179581, 0.868037, 0.462884,
		0.861699, 0.088195, -0.499697,
		-0.474579, 0.488603, -0.732148,
		16.412102, 17.996731, 17.944098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159853, 18.116383, 18.151907>,  <16.744308, 17.654707, 18.456602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159853, 18.116383, 18.151907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797411, 18.268873, 18.078545>,  <16.579945, 18.360367, 18.034527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.797411, 18.268873, 18.078545>,  <17.159853, 18.116383, 18.151907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.797411, 18.268873, 18.078545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318861, 0.900347, 0.296146,
		0.278028, 0.209859, -0.937369,
		-0.906106, 0.381227, -0.183406,
		16.525579, 18.383242, 18.023523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253088, 18.921089, 18.014885>,  <17.159853, 18.116383, 18.151907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253088, 18.921089, 18.014885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860722, 18.897514, 18.089003>,  <16.625301, 18.883369, 18.133474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860722, 18.897514, 18.089003>,  <17.253088, 18.921089, 18.014885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860722, 18.897514, 18.089003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032150, 0.890678, 0.453497,
		-0.191766, 0.450799, -0.871783,
		-0.980914, -0.058938, 0.185295,
		16.566448, 18.879833, 18.144590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039249, 19.623037, 17.963261>,  <17.253088, 18.921089, 18.014885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039249, 19.623037, 17.963261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746199, 19.438618, 18.163536>,  <16.570368, 19.327967, 18.283701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746199, 19.438618, 18.163536>,  <17.039249, 19.623037, 17.963261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746199, 19.438618, 18.163536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115661, 0.809261, 0.575951,
		-0.670730, 0.364048, -0.646213,
		-0.732628, -0.461049, 0.500689,
		16.526411, 19.300303, 18.313744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461443, 20.101458, 18.078907>,  <17.039249, 19.623037, 17.963261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461443, 20.101458, 18.078907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437284, 19.827105, 18.368988>,  <16.422789, 19.662493, 18.543037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437284, 19.827105, 18.368988>,  <16.461443, 20.101458, 18.078907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437284, 19.827105, 18.368988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181279, 0.706910, 0.683678,
		-0.981575, 0.172756, 0.081641,
		-0.060397, -0.685881, 0.725203,
		16.419165, 19.621340, 18.586550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276215, 20.482071, 18.634022>,  <16.461443, 20.101458, 18.078907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276215, 20.482071, 18.634022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313614, 20.128813, 18.817896>,  <16.336054, 19.916857, 18.928221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313614, 20.128813, 18.817896>,  <16.276215, 20.482071, 18.634022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313614, 20.128813, 18.817896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054337, 0.456492, 0.888067,
		-0.994135, -0.108011, -0.005307,
		0.093499, -0.883147, 0.459684,
		16.341663, 19.863869, 18.955801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758822, 20.444904, 19.207373>,  <16.276215, 20.482071, 18.634022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758822, 20.444904, 19.207373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058044, 20.194418, 19.295250>,  <16.237577, 20.044127, 19.347977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058044, 20.194418, 19.295250>,  <15.758822, 20.444904, 19.207373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058044, 20.194418, 19.295250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114874, 0.448233, 0.886505,
		-0.653620, -0.637916, 0.407239,
		0.748054, -0.626218, 0.219694,
		16.282461, 20.006552, 19.361158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666347, 20.176003, 19.868336>,  <15.758822, 20.444904, 19.207373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666347, 20.176003, 19.868336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057899, 20.112631, 19.816660>,  <16.292831, 20.074608, 19.785654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057899, 20.112631, 19.816660>,  <15.666347, 20.176003, 19.868336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057899, 20.112631, 19.816660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196887, 0.560654, 0.804302,
		-0.054994, -0.812753, 0.580007,
		0.978883, -0.158427, -0.129188,
		16.351564, 20.065104, 19.777903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953532, 19.953798, 20.518757>,  <15.666347, 20.176003, 19.868336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953532, 19.953798, 20.518757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255505, 20.095909, 20.298264>,  <16.436687, 20.181175, 20.165968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255505, 20.095909, 20.298264>,  <15.953532, 19.953798, 20.518757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255505, 20.095909, 20.298264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339575, 0.507323, 0.792030,
		0.561042, -0.785113, 0.262351,
		0.754930, 0.355274, -0.551234,
		16.481983, 20.202492, 20.132893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503506, 19.849604, 20.843382>,  <15.953532, 19.953798, 20.518757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503506, 19.849604, 20.843382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604424, 20.156284, 20.607241>,  <16.664974, 20.340292, 20.465555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604424, 20.156284, 20.607241>,  <16.503506, 19.849604, 20.843382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604424, 20.156284, 20.607241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322840, 0.508439, 0.798288,
		0.912207, -0.391994, -0.119246,
		0.252295, 0.766701, -0.590353,
		16.680113, 20.386295, 20.430136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177471, 19.418480, 21.456116>,  <16.503506, 19.849604, 20.843382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177471, 19.418480, 21.456116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848007, 19.505394, 21.665638>,  <15.650330, 19.557543, 21.791351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848007, 19.505394, 21.665638>,  <16.177471, 19.418480, 21.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848007, 19.505394, 21.665638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530262, -0.622526, -0.575573,
		0.201021, -0.751831, 0.627966,
		-0.823659, 0.217284, 0.523808,
		15.600909, 19.570580, 21.822781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874848, 18.856266, 21.423567>,  <16.177471, 19.418480, 21.456116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874848, 18.856266, 21.423567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.562679, 19.092813, 21.504782>,  <15.375378, 19.234741, 21.553511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.562679, 19.092813, 21.504782>,  <15.874848, 18.856266, 21.423567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.562679, 19.092813, 21.504782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576625, -0.555170, -0.599408,
		-0.241751, -0.584867, 0.774265,
		-0.780422, 0.591369, 0.203036,
		15.328552, 19.270224, 21.565693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201501, 18.405451, 21.662601>,  <15.874848, 18.856266, 21.423567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201501, 18.405451, 21.662601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.083214, 18.752172, 21.502003>,  <15.012241, 18.960205, 21.405643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.083214, 18.752172, 21.502003>,  <15.201501, 18.405451, 21.662601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083214, 18.752172, 21.502003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642106, -0.491548, -0.588286,
		-0.707285, 0.083837, 0.701940,
		-0.295717, 0.866806, -0.401497,
		14.994498, 19.012215, 21.381554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573959, 18.422592, 21.646544>,  <15.201501, 18.405451, 21.662601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573959, 18.422592, 21.646544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623381, 18.704967, 21.367577>,  <14.653033, 18.874392, 21.200197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623381, 18.704967, 21.367577>,  <14.573959, 18.422592, 21.646544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623381, 18.704967, 21.367577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693270, -0.441442, -0.569654,
		-0.710008, 0.553880, 0.434864,
		0.123553, 0.705937, -0.697416,
		14.660446, 18.916748, 21.158352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867223, 18.542799, 21.505405>,  <14.573959, 18.422592, 21.646544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867223, 18.542799, 21.505405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080310, 18.685953, 21.198647>,  <14.208162, 18.771845, 21.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080310, 18.685953, 21.198647>,  <13.867223, 18.542799, 21.505405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080310, 18.685953, 21.198647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756988, -0.203664, -0.620879,
		-0.378393, 0.911284, 0.162419,
		0.532718, 0.357886, -0.766896,
		14.240126, 18.793320, 20.968578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389783, 18.740326, 20.996740>,  <13.867223, 18.542799, 21.505405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.389783, 18.740326, 20.996740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713285, 18.732986, 20.761597>,  <13.907387, 18.728582, 20.620510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713285, 18.732986, 20.761597>,  <13.389783, 18.740326, 20.996740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713285, 18.732986, 20.761597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565174, -0.300858, -0.768156,
		-0.162766, 0.953493, -0.253691,
		0.808756, -0.018350, -0.587858,
		13.955913, 18.727482, 20.585239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131441, 19.046349, 20.434711>,  <13.389783, 18.740326, 20.996740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131441, 19.046349, 20.434711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426860, 18.810266, 20.304356>,  <13.604111, 18.668617, 20.226143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426860, 18.810266, 20.304356>,  <13.131441, 19.046349, 20.434711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.426860, 18.810266, 20.304356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626644, -0.422600, -0.654772,
		0.248730, 0.687797, -0.681960,
		0.738546, -0.590207, -0.325890,
		13.648424, 18.633204, 20.206589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994650, 18.957245, 19.713108>,  <13.131441, 19.046349, 20.434711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994650, 18.957245, 19.713108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276931, 18.677094, 19.755920>,  <13.446300, 18.509003, 19.781607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276931, 18.677094, 19.755920>,  <12.994650, 18.957245, 19.713108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276931, 18.677094, 19.755920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385594, -0.506392, -0.771287,
		0.594390, 0.503031, -0.627424,
		0.705703, -0.700377, 0.107029,
		13.488642, 18.466980, 19.788029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308557, 18.831196, 19.124979>,  <12.994650, 18.957245, 19.713108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308557, 18.831196, 19.124979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410601, 18.494944, 19.316086>,  <13.471827, 18.293192, 19.430750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410601, 18.494944, 19.316086>,  <13.308557, 18.831196, 19.124979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410601, 18.494944, 19.316086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430064, -0.541199, -0.722599,
		0.866005, -0.021128, -0.499589,
		0.255110, -0.840629, 0.477767,
		13.487134, 18.242754, 19.459415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265032, 18.361490, 18.575672>,  <13.308557, 18.831196, 19.124979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265032, 18.361490, 18.575672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.283315, 18.131266, 18.902264>,  <13.294285, 17.993132, 19.098219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.283315, 18.131266, 18.902264>,  <13.265032, 18.361490, 18.575672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283315, 18.131266, 18.902264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390450, -0.762609, -0.515729,
		0.919489, -0.295222, -0.259584,
		0.045707, -0.575561, 0.816480,
		13.297027, 17.958597, 19.147207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649113, 17.771801, 18.355417>,  <13.265032, 18.361490, 18.575672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.649113, 17.771801, 18.355417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404609, 17.695923, 18.662762>,  <13.257906, 17.650396, 18.847168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404609, 17.695923, 18.662762>,  <13.649113, 17.771801, 18.355417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404609, 17.695923, 18.662762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447282, -0.718132, -0.533127,
		0.652916, -0.669553, 0.354118,
		-0.611260, -0.189697, 0.768359,
		13.221231, 17.639013, 18.893269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757452, 17.071054, 18.583443>,  <13.649113, 17.771801, 18.355417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757452, 17.071054, 18.583443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388160, 17.158173, 18.710068>,  <13.166585, 17.210443, 18.786043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388160, 17.158173, 18.710068>,  <13.757452, 17.071054, 18.583443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388160, 17.158173, 18.710068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358716, -0.783827, -0.506891,
		0.137731, -0.581533, 0.801779,
		-0.923230, 0.217796, 0.316562,
		13.111191, 17.223511, 18.805037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463192, 16.446878, 18.574863>,  <13.757452, 17.071054, 18.583443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463192, 16.446878, 18.574863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130461, 16.656425, 18.648212>,  <12.930822, 16.782154, 18.692221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130461, 16.656425, 18.648212>,  <13.463192, 16.446878, 18.574863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130461, 16.656425, 18.648212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546455, -0.715125, -0.435872,
		-0.097206, -0.462774, 0.881131,
		-0.831828, 0.523867, 0.183371,
		12.880912, 16.813585, 18.703224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046671, 16.035978, 18.966686>,  <13.463192, 16.446878, 18.574863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046671, 16.035978, 18.966686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.817492, 16.285496, 18.754042>,  <12.679984, 16.435205, 18.626455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.817492, 16.285496, 18.754042>,  <13.046671, 16.035978, 18.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.817492, 16.285496, 18.754042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597437, -0.761908, -0.250130,
		-0.561070, 0.174294, 0.809211,
		-0.572948, 0.623793, -0.531613,
		12.645607, 16.472633, 18.594557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624674, 16.323036, 19.459459>,  <13.046671, 16.035978, 18.966686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624674, 16.323036, 19.459459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416492, 15.985099, 19.509050>,  <13.291584, 15.782337, 19.538805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416492, 15.985099, 19.509050>,  <13.624674, 16.323036, 19.459459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416492, 15.985099, 19.509050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521718, -0.199683, 0.829420,
		-0.675972, 0.496356, 0.544695,
		-0.520454, -0.844842, 0.123978,
		13.260357, 15.731647, 19.546244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251737, 16.202894, 20.069939>,  <13.624674, 16.323036, 19.459459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251737, 16.202894, 20.069939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395205, 15.845603, 19.961496>,  <13.481285, 15.631228, 19.896431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395205, 15.845603, 19.961496>,  <13.251737, 16.202894, 20.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395205, 15.845603, 19.961496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702328, 0.066916, 0.708701,
		-0.614890, -0.444596, 0.651340,
		0.358670, -0.893228, -0.271106,
		13.502806, 15.577635, 19.880165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249319, 15.760832, 20.630390>,  <13.251737, 16.202894, 20.069939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249319, 15.760832, 20.630390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551366, 15.632135, 20.401907>,  <13.732594, 15.554917, 20.264816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551366, 15.632135, 20.401907>,  <13.249319, 15.760832, 20.630390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551366, 15.632135, 20.401907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598406, -0.017632, 0.800999,
		-0.267787, -0.946663, 0.179218,
		0.755117, -0.321742, -0.571210,
		13.777901, 15.535613, 20.230543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451834, 15.241208, 20.974445>,  <13.249319, 15.760832, 20.630390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451834, 15.241208, 20.974445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764865, 15.322241, 20.738977>,  <13.952683, 15.370860, 20.597696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764865, 15.322241, 20.738977>,  <13.451834, 15.241208, 20.974445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764865, 15.322241, 20.738977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608079, -0.046016, 0.792542,
		0.133466, -0.978184, -0.159197,
		0.782577, 0.202582, -0.588671,
		13.999638, 15.383015, 20.562376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924558, 14.801867, 21.234070>,  <13.451834, 15.241208, 20.974445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.924558, 14.801867, 21.234070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141484, 15.064800, 21.024765>,  <14.271641, 15.222560, 20.899181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141484, 15.064800, 21.024765>,  <13.924558, 14.801867, 21.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141484, 15.064800, 21.024765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779787, -0.161952, 0.604734,
		0.312768, -0.735992, -0.600410,
		0.542317, 0.657333, -0.523264,
		14.304179, 15.262000, 20.867786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691487, 14.553636, 21.093857>,  <13.924558, 14.801867, 21.234070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691487, 14.553636, 21.093857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.669089, 14.952040, 21.066057>,  <14.655650, 15.191082, 21.049377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.669089, 14.952040, 21.066057>,  <14.691487, 14.553636, 21.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669089, 14.952040, 21.066057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752403, 0.087852, 0.652818,
		0.656318, -0.015736, -0.754320,
		-0.055996, 0.996009, -0.069499,
		14.652290, 15.250842, 21.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448228, 14.833045, 20.936724>,  <14.691487, 14.553636, 21.093857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448228, 14.833045, 20.936724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217699, 15.113945, 21.103910>,  <15.079382, 15.282485, 21.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217699, 15.113945, 21.103910>,  <15.448228, 14.833045, 20.936724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217699, 15.113945, 21.103910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573594, -0.016701, 0.818969,
		0.582102, 0.711734, -0.393182,
		-0.576321, 0.702251, 0.417968,
		15.044803, 15.324620, 21.229301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848676, 15.373987, 21.079411>,  <15.448228, 14.833045, 20.936724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848676, 15.373987, 21.079411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543744, 15.421244, 21.333937>,  <15.360785, 15.449597, 21.486652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543744, 15.421244, 21.333937>,  <15.848676, 15.373987, 21.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543744, 15.421244, 21.333937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638319, 0.299484, 0.709125,
		-0.106790, 0.946759, -0.303716,
		-0.762328, 0.118140, 0.636316,
		15.315045, 15.456686, 21.524832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010967, 16.005098, 21.435949>,  <15.848676, 15.373987, 21.079411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010967, 16.005098, 21.435949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721325, 15.861204, 21.671324>,  <15.547539, 15.774867, 21.812548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721325, 15.861204, 21.671324>,  <16.010967, 16.005098, 21.435949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721325, 15.861204, 21.671324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471978, 0.363651, 0.803115,
		-0.502896, 0.859271, -0.093535,
		-0.724108, -0.359737, 0.588436,
		15.504092, 15.753284, 21.847855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955801, 16.577627, 21.861935>,  <16.010967, 16.005098, 21.435949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955801, 16.577627, 21.861935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804288, 16.264526, 22.059446>,  <15.713380, 16.076666, 22.177954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804288, 16.264526, 22.059446>,  <15.955801, 16.577627, 21.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804288, 16.264526, 22.059446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442992, 0.315099, 0.839327,
		-0.812577, 0.536665, 0.227400,
		-0.378784, -0.782754, 0.493781,
		15.690653, 16.029699, 22.207581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662951, 16.844330, 22.409010>,  <15.955801, 16.577627, 21.861935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662951, 16.844330, 22.409010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774077, 16.465137, 22.471178>,  <15.840753, 16.237623, 22.508478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774077, 16.465137, 22.471178>,  <15.662951, 16.844330, 22.409010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774077, 16.465137, 22.471178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556011, 0.290613, 0.778714,
		-0.783371, -0.129923, 0.607823,
		0.277815, -0.947979, 0.155419,
		15.857422, 16.180744, 22.517803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644247, 16.811321, 23.099518>,  <15.662951, 16.844330, 22.409010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644247, 16.811321, 23.099518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869888, 16.493355, 23.010168>,  <16.005274, 16.302574, 22.956558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869888, 16.493355, 23.010168>,  <15.644247, 16.811321, 23.099518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869888, 16.493355, 23.010168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592546, 0.201320, 0.779974,
		-0.575045, -0.572344, 0.584590,
		0.564103, -0.794916, -0.223372,
		16.039120, 16.254879, 22.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773216, 16.586693, 23.672911>,  <15.644247, 16.811321, 23.099518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773216, 16.586693, 23.672911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059139, 16.394987, 23.469204>,  <16.230694, 16.279964, 23.346979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059139, 16.394987, 23.469204>,  <15.773216, 16.586693, 23.672911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059139, 16.394987, 23.469204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645616, 0.172392, 0.743949,
		-0.268755, -0.860573, 0.432649,
		0.714808, -0.479265, -0.509268,
		16.273582, 16.251207, 23.316423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084980, 16.080378, 24.151224>,  <15.773216, 16.586693, 23.672911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084980, 16.080378, 24.151224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344988, 16.110821, 23.848785>,  <16.500992, 16.129087, 23.667322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344988, 16.110821, 23.848785>,  <16.084980, 16.080378, 24.151224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344988, 16.110821, 23.848785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743161, 0.144132, 0.653404,
		0.158711, -0.986627, 0.037124,
		0.650017, 0.076113, -0.756098,
		16.539993, 16.133654, 23.621956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715990, 15.687823, 24.360580>,  <16.084980, 16.080378, 24.151224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715990, 15.687823, 24.360580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812532, 15.981783, 24.107071>,  <16.870457, 16.158159, 23.954966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812532, 15.981783, 24.107071>,  <16.715990, 15.687823, 24.360580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812532, 15.981783, 24.107071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726519, 0.296136, 0.620059,
		0.643365, -0.610103, -0.462445,
		0.241354, 0.734899, -0.633775,
		16.884939, 16.202253, 23.916939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433325, 15.799003, 24.576571>,  <16.715990, 15.687823, 24.360580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433325, 15.799003, 24.576571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338589, 16.114454, 24.349600>,  <17.281748, 16.303724, 24.213417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338589, 16.114454, 24.349600>,  <17.433325, 15.799003, 24.576571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338589, 16.114454, 24.349600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674097, 0.553976, 0.488573,
		0.699643, -0.266788, -0.662815,
		-0.236839, 0.788628, -0.567426,
		17.267536, 16.351044, 24.179373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078993, 16.047646, 24.354696>,  <17.433325, 15.799003, 24.576571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078993, 16.047646, 24.354696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819324, 16.349258, 24.314672>,  <17.663523, 16.530226, 24.290659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819324, 16.349258, 24.314672>,  <18.078993, 16.047646, 24.354696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819324, 16.349258, 24.314672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580996, 0.576447, 0.574589,
		0.490938, 0.314872, -0.812303,
		-0.649172, 0.754032, -0.100060,
		17.624573, 16.575468, 24.284655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516596, 16.569395, 24.154602>,  <18.078993, 16.047646, 24.354696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516596, 16.569395, 24.154602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.189995, 16.753855, 24.293549>,  <17.994034, 16.864531, 24.376917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.189995, 16.753855, 24.293549>,  <18.516596, 16.569395, 24.154602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189995, 16.753855, 24.293549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576883, 0.675674, 0.458989,
		-0.023045, 0.575156, -0.817719,
		-0.816502, 0.461151, 0.347369,
		17.945044, 16.892200, 24.397758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654970, 17.332424, 24.170010>,  <18.516596, 16.569395, 24.154602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654970, 17.332424, 24.170010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330431, 17.301516, 24.401783>,  <18.135708, 17.282970, 24.540848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330431, 17.301516, 24.401783>,  <18.654970, 17.332424, 24.170010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330431, 17.301516, 24.401783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349154, 0.730930, 0.586372,
		-0.468835, 0.678064, -0.566059,
		-0.811348, -0.077270, 0.579434,
		18.087027, 17.278336, 24.575613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469515, 18.084129, 24.281963>,  <18.654970, 17.332424, 24.170010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469515, 18.084129, 24.281963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293018, 17.861752, 24.563738>,  <18.187120, 17.728325, 24.732803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293018, 17.861752, 24.563738>,  <18.469515, 18.084129, 24.281963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293018, 17.861752, 24.563738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274615, 0.663675, 0.695789,
		-0.854337, 0.500460, -0.140170,
		-0.441243, -0.555946, 0.704436,
		18.160646, 17.694967, 24.775068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038666, 18.529594, 24.724480>,  <18.469515, 18.084129, 24.281963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.038666, 18.529594, 24.724480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132681, 18.212225, 24.949062>,  <18.189091, 18.021803, 25.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132681, 18.212225, 24.949062>,  <18.038666, 18.529594, 24.724480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132681, 18.212225, 24.949062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277076, 0.608364, 0.743722,
		-0.931658, -0.019237, 0.362827,
		0.235038, -0.793425, 0.561457,
		18.203192, 17.974197, 25.117500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913506, 18.828890, 25.392262>,  <18.038666, 18.529594, 24.724480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913506, 18.828890, 25.392262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122355, 18.489805, 25.429724>,  <18.247663, 18.286354, 25.452202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122355, 18.489805, 25.429724>,  <17.913506, 18.828890, 25.392262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122355, 18.489805, 25.429724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525449, 0.406227, 0.747584,
		-0.671784, -0.341117, 0.657530,
		0.522121, -0.847714, 0.093657,
		18.278992, 18.235491, 25.457821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940704, 18.850695, 26.064577>,  <17.913506, 18.828890, 25.392262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940704, 18.850695, 26.064577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227375, 18.594442, 25.954329>,  <18.399378, 18.440691, 25.888180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227375, 18.594442, 25.954329>,  <17.940704, 18.850695, 26.064577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227375, 18.594442, 25.954329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593273, 0.352279, 0.723828,
		-0.366610, -0.682270, 0.632539,
		0.716676, -0.640631, -0.275623,
		18.442377, 18.402254, 25.871641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156532, 18.489859, 26.689285>,  <17.940704, 18.850695, 26.064577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156532, 18.489859, 26.689285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450628, 18.428940, 26.425095>,  <18.627085, 18.392389, 26.266581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450628, 18.428940, 26.425095>,  <18.156532, 18.489859, 26.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450628, 18.428940, 26.425095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647625, 0.445391, 0.618230,
		0.200017, -0.882288, 0.426099,
		0.735238, -0.152296, -0.660478,
		18.671200, 18.383251, 26.226952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701647, 18.236868, 27.114351>,  <18.156532, 18.489859, 26.689285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701647, 18.236868, 27.114351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861248, 18.391590, 26.781801>,  <18.957008, 18.484423, 26.582272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861248, 18.391590, 26.781801>,  <18.701647, 18.236868, 27.114351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861248, 18.391590, 26.781801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699561, 0.457745, 0.548711,
		0.592801, -0.800532, -0.087952,
		0.399001, 0.386804, -0.831373,
		18.980947, 18.507631, 26.532389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433039, 18.063616, 27.180899>,  <18.701647, 18.236868, 27.114351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433039, 18.063616, 27.180899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423195, 18.360689, 26.913221>,  <19.417290, 18.538933, 26.752615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423195, 18.360689, 26.913221>,  <19.433039, 18.063616, 27.180899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423195, 18.360689, 26.913221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647785, 0.521694, 0.555166,
		0.761425, -0.419831, -0.493936,
		-0.024607, 0.742682, -0.669192,
		19.415813, 18.583494, 26.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148308, 18.300135, 27.170971>,  <19.433039, 18.063616, 27.180899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148308, 18.300135, 27.170971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939369, 18.589523, 26.990421>,  <19.814007, 18.763157, 26.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939369, 18.589523, 26.990421>,  <20.148308, 18.300135, 27.170971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939369, 18.589523, 26.990421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523858, 0.689917, 0.499588,
		0.672850, 0.024501, -0.739373,
		-0.522347, 0.723474, -0.451375,
		19.782665, 18.806566, 26.855009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.644894, 18.879219, 27.026152>,  <20.148308, 18.300135, 27.170971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.644894, 18.879219, 27.026152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259796, 18.985891, 27.044054>,  <20.028738, 19.049894, 27.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259796, 18.985891, 27.044054>,  <20.644894, 18.879219, 27.026152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259796, 18.985891, 27.044054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237962, 0.756923, 0.608639,
		0.128437, 0.596614, -0.792184,
		-0.962745, 0.266682, 0.044754,
		19.970972, 19.065895, 27.057480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
