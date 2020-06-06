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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.411894, 16.876890, -2.184533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377575, 17.154003, -1.898125>,  <23.356983, 17.320271, -1.726279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377575, 17.154003, -1.898125>,  <23.411894, 16.876890, -2.184533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.377575, 17.154003, -1.898125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874187, -0.397107, 0.279468,
		0.477949, -0.601959, 0.639695,
		-0.085799, 0.692785, 0.716022,
		23.351835, 17.361839, -1.683318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299585, 16.805975, -1.372796>,  <23.411894, 16.876890, -2.184533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299585, 16.805975, -1.372796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088127, 17.130470, -1.472739>,  <22.961252, 17.325167, -1.532706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088127, 17.130470, -1.472739>,  <23.299585, 16.805975, -1.372796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088127, 17.130470, -1.472739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824311, -0.420364, 0.379217,
		0.202603, 0.406432, 0.890935,
		-0.528643, 0.811238, -0.249859,
		22.929535, 17.373842, -1.547697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.929026, 17.083458, -0.751393>,  <23.299585, 16.805975, -1.372796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.929026, 17.083458, -0.751393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722729, 17.160240, -1.085379>,  <22.598951, 17.206310, -1.285770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722729, 17.160240, -1.085379>,  <22.929026, 17.083458, -0.751393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722729, 17.160240, -1.085379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833130, -0.339606, 0.436534,
		-0.199763, 0.920772, 0.335073,
		-0.515741, 0.191956, -0.834964,
		22.568007, 17.217827, -1.335868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.354040, 17.596382, -0.532120>,  <22.929026, 17.083458, -0.751393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.354040, 17.596382, -0.532120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301296, 17.354923, -0.846629>,  <22.269650, 17.210049, -1.035334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301296, 17.354923, -0.846629>,  <22.354040, 17.596382, -0.532120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301296, 17.354923, -0.846629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762993, -0.444562, 0.469261,
		-0.632815, 0.661798, -0.401957,
		-0.131861, -0.603646, -0.786272,
		22.261738, 17.173830, -1.082511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739225, 17.749958, -0.850707>,  <22.354040, 17.596382, -0.532120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739225, 17.749958, -0.850707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.849129, 17.370735, -0.914826>,  <21.915070, 17.143202, -0.953298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.849129, 17.370735, -0.914826>,  <21.739225, 17.749958, -0.850707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849129, 17.370735, -0.914826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872276, -0.315908, 0.373279,
		-0.404530, 0.037263, -0.913765,
		0.274757, -0.948058, -0.160298,
		21.931555, 17.086317, -0.962916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274027, 17.349232, -1.355700>,  <21.739225, 17.749958, -0.850707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274027, 17.349232, -1.355700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426037, 17.161308, -1.036987>,  <21.517242, 17.048553, -0.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426037, 17.161308, -1.036987>,  <21.274027, 17.349232, -1.355700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426037, 17.161308, -1.036987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924541, -0.219387, 0.311599,
		0.028411, -0.855072, -0.517730,
		0.380023, -0.469810, 0.796782,
		21.540043, 17.020365, -0.797953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028769, 16.621943, -1.182074>,  <21.274027, 17.349232, -1.355700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028769, 16.621943, -1.182074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153782, 16.789864, -0.841231>,  <21.228790, 16.890617, -0.636725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153782, 16.789864, -0.841231>,  <21.028769, 16.621943, -1.182074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153782, 16.789864, -0.841231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890418, -0.182992, 0.416738,
		0.330878, -0.888976, 0.316611,
		0.312532, 0.419805, 0.852108,
		21.247541, 16.915806, -0.585599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842459, 16.083521, -0.619962>,  <21.028769, 16.621943, -1.182074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842459, 16.083521, -0.619962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889580, 16.454033, -0.476784>,  <20.917852, 16.676340, -0.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889580, 16.454033, -0.476784>,  <20.842459, 16.083521, -0.619962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889580, 16.454033, -0.476784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811429, -0.118004, 0.572415,
		0.572456, -0.357880, 0.737710,
		0.117804, 0.926281, 0.357946,
		20.924921, 16.731916, -0.369400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670862, 16.092997, 0.151346>,  <20.842459, 16.083521, -0.619962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670862, 16.092997, 0.151346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639778, 16.456955, -0.011651>,  <20.621128, 16.675331, -0.109449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639778, 16.456955, -0.011651>,  <20.670862, 16.092997, 0.151346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639778, 16.456955, -0.011651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754459, 0.213519, 0.620645,
		0.651730, 0.355665, 0.669888,
		-0.077708, 0.909896, -0.407492,
		20.616467, 16.729923, -0.133898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735052, 16.645599, 0.679929>,  <20.670862, 16.092997, 0.151346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735052, 16.645599, 0.679929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510468, 16.757500, 0.368417>,  <20.375717, 16.824640, 0.181509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510468, 16.757500, 0.368417>,  <20.735052, 16.645599, 0.679929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510468, 16.757500, 0.368417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802094, 0.047441, 0.595311,
		0.203485, 0.958900, 0.197751,
		-0.561462, 0.279751, -0.778781,
		20.342030, 16.841425, 0.134782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517841, 17.357798, 0.634825>,  <20.735052, 16.645599, 0.679929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517841, 17.357798, 0.634825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264584, 17.093643, 0.473322>,  <20.112629, 16.935150, 0.376421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264584, 17.093643, 0.473322>,  <20.517841, 17.357798, 0.634825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264584, 17.093643, 0.473322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661676, 0.191102, 0.725028,
		-0.401639, 0.726204, -0.557956,
		-0.633144, -0.660385, -0.403757,
		20.074640, 16.895527, 0.352195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803083, 17.563892, 0.312372>,  <20.517841, 17.357798, 0.634825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803083, 17.563892, 0.312372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739746, 17.183510, 0.418659>,  <19.701744, 16.955280, 0.482432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739746, 17.183510, 0.418659>,  <19.803083, 17.563892, 0.312372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739746, 17.183510, 0.418659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674811, 0.300682, 0.673959,
		-0.720803, -0.072591, -0.689329,
		-0.158345, -0.950958, 0.265718,
		19.692242, 16.898222, 0.498375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113958, 17.383671, 0.278510>,  <19.803083, 17.563892, 0.312372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113958, 17.383671, 0.278510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275574, 17.153496, 0.562939>,  <19.372543, 17.015390, 0.733597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275574, 17.153496, 0.562939>,  <19.113958, 17.383671, 0.278510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275574, 17.153496, 0.562939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651270, 0.364901, 0.665353,
		-0.642341, -0.731928, -0.227331,
		0.404037, -0.575437, 0.711074,
		19.396786, 16.980865, 0.776262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714594, 16.924032, 0.694344>,  <19.113958, 17.383671, 0.278510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714594, 16.924032, 0.694344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.012894, 17.142658, 0.846725>,  <19.191874, 17.273834, 0.938154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.012894, 17.142658, 0.846725>,  <18.714594, 16.924032, 0.694344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012894, 17.142658, 0.846725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662516, 0.548135, 0.510510,
		0.070212, -0.633101, 0.770879,
		0.745750, 0.546563, 0.380954,
		19.236618, 17.306627, 0.961011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496866, 17.127306, 1.378477>,  <18.714594, 16.924032, 0.694344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496866, 17.127306, 1.378477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746574, 17.408215, 1.241599>,  <18.896400, 17.576759, 1.159472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746574, 17.408215, 1.241599>,  <18.496866, 17.127306, 1.378477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746574, 17.408215, 1.241599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538524, 0.704183, 0.462729,
		0.565930, -0.104588, 0.817792,
		0.624272, 0.702273, -0.342196,
		18.933855, 17.618896, 1.138940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742350, 17.431479, 1.912833>,  <18.496866, 17.127306, 1.378477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742350, 17.431479, 1.912833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.735901, 17.671173, 1.592670>,  <18.732031, 17.814991, 1.400572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.735901, 17.671173, 1.592670>,  <18.742350, 17.431479, 1.912833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735901, 17.671173, 1.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563384, 0.655896, 0.502395,
		0.826038, 0.459038, 0.327025,
		-0.016124, 0.599238, -0.800409,
		18.731064, 17.850945, 1.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135052, 18.095783, 1.965182>,  <18.742350, 17.431479, 1.912833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135052, 18.095783, 1.965182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822571, 18.104469, 1.715622>,  <18.635082, 18.109680, 1.565886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822571, 18.104469, 1.715622>,  <19.135052, 18.095783, 1.965182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822571, 18.104469, 1.715622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445681, 0.680408, 0.581733,
		0.437139, 0.732512, -0.521858,
		-0.781203, 0.021716, -0.623899,
		18.588209, 18.110985, 1.528452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885519, 18.818541, 1.787703>,  <19.135052, 18.095783, 1.965182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885519, 18.818541, 1.787703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588978, 18.550213, 1.795669>,  <18.411053, 18.389215, 1.800449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588978, 18.550213, 1.795669>,  <18.885519, 18.818541, 1.787703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588978, 18.550213, 1.795669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464619, 0.534433, 0.706053,
		-0.484278, 0.514182, -0.707879,
		-0.741354, -0.670819, 0.019915,
		18.366571, 18.348967, 1.801643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389524, 19.170061, 1.762477>,  <18.885519, 18.818541, 1.787703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389524, 19.170061, 1.762477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246819, 18.828136, 1.913217>,  <18.161196, 18.622982, 2.003661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246819, 18.828136, 1.913217>,  <18.389524, 19.170061, 1.762477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246819, 18.828136, 1.913217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427718, 0.508094, 0.747594,
		-0.830528, 0.105530, -0.546888,
		-0.356764, -0.854812, 0.376850,
		18.139790, 18.571693, 2.026272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559261, 19.167843, 1.902618>,  <18.389524, 19.170061, 1.762477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559261, 19.167843, 1.902618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757996, 18.914280, 2.139707>,  <17.877235, 18.762142, 2.281960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757996, 18.914280, 2.139707>,  <17.559261, 19.167843, 1.902618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757996, 18.914280, 2.139707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378887, 0.456015, 0.805292,
		-0.780770, -0.624671, -0.013615,
		0.496833, -0.633906, 0.592722,
		17.907045, 18.724108, 2.317524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050735, 19.054726, 2.418119>,  <17.559261, 19.167843, 1.902618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050735, 19.054726, 2.418119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412529, 18.959282, 2.559528>,  <17.629604, 18.902016, 2.644374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412529, 18.959282, 2.559528>,  <17.050735, 19.054726, 2.418119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412529, 18.959282, 2.559528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239562, 0.401562, 0.883945,
		-0.352879, -0.884202, 0.306044,
		0.904481, -0.238609, 0.353523,
		17.683874, 18.887699, 2.665585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889540, 18.654516, 3.006263>,  <17.050735, 19.054726, 2.418119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889540, 18.654516, 3.006263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.251801, 18.810905, 3.071915>,  <17.469156, 18.904739, 3.111307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.251801, 18.810905, 3.071915>,  <16.889540, 18.654516, 3.006263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251801, 18.810905, 3.071915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287782, 0.282466, 0.915093,
		0.311423, -0.875984, 0.368331,
		0.905648, 0.390980, 0.164126,
		17.523497, 18.928196, 3.121154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321404, 18.256239, 3.515450>,  <16.889540, 18.654516, 3.006263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321404, 18.256239, 3.515450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434216, 18.639740, 3.501297>,  <17.501904, 18.869841, 3.492805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434216, 18.639740, 3.501297>,  <17.321404, 18.256239, 3.515450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434216, 18.639740, 3.501297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318959, 0.128481, 0.939019,
		0.904834, -0.253546, 0.342038,
		0.282030, 0.958753, -0.035383,
		17.518824, 18.927366, 3.490682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527540, 18.405426, 4.203908>,  <17.321404, 18.256239, 3.515450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527540, 18.405426, 4.203908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454445, 18.761574, 4.037126>,  <17.410587, 18.975262, 3.937056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454445, 18.761574, 4.037126>,  <17.527540, 18.405426, 4.203908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454445, 18.761574, 4.037126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292706, 0.355596, 0.887623,
		0.938579, 0.284247, 0.195635,
		-0.182737, 0.890368, -0.416956,
		17.399624, 19.028685, 3.912039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850983, 18.853323, 4.569876>,  <17.527540, 18.405426, 4.203908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850983, 18.853323, 4.569876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556133, 19.059525, 4.395106>,  <17.379223, 19.183247, 4.290245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556133, 19.059525, 4.395106>,  <17.850983, 18.853323, 4.569876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556133, 19.059525, 4.395106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360397, 0.247043, 0.899491,
		0.571631, 0.820502, 0.003685,
		-0.737124, 0.515505, -0.436924,
		17.334995, 19.214176, 4.264029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112698, 18.069801, 4.808986>,  <17.850983, 18.853323, 4.569876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112698, 18.069801, 4.808986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012978, 17.685539, 4.760005>,  <17.953146, 17.454983, 4.730617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012978, 17.685539, 4.760005>,  <18.112698, 18.069801, 4.808986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012978, 17.685539, 4.760005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190639, -0.172652, 0.966358,
		-0.949477, 0.217567, 0.226179,
		-0.249298, -0.960654, -0.122452,
		17.938189, 17.397343, 4.723269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477974, 17.766741, 5.161445>,  <18.112698, 18.069801, 4.808986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477974, 17.766741, 5.161445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756687, 17.479908, 5.154694>,  <17.923916, 17.307808, 5.150642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756687, 17.479908, 5.154694>,  <17.477974, 17.766741, 5.161445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756687, 17.479908, 5.154694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125351, -0.144905, 0.981473,
		-0.706243, -0.681759, -0.190854,
		0.696784, -0.717083, -0.016879,
		17.965723, 17.264784, 5.149630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325455, 16.910192, 5.319249>,  <17.477974, 17.766741, 5.161445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325455, 16.910192, 5.319249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.696732, 17.020889, 5.418749>,  <17.919497, 17.087307, 5.478448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.696732, 17.020889, 5.418749>,  <17.325455, 16.910192, 5.319249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696732, 17.020889, 5.418749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240871, -0.062683, 0.968531,
		0.283627, -0.958897, 0.008478,
		0.928190, 0.276744, 0.248749,
		17.975189, 17.103912, 5.493373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539885, 16.474733, 5.892303>,  <17.325455, 16.910192, 5.319249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539885, 16.474733, 5.892303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640388, 16.861053, 5.866699>,  <17.700691, 17.092846, 5.851336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640388, 16.861053, 5.866699>,  <17.539885, 16.474733, 5.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640388, 16.861053, 5.866699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291661, 0.138604, 0.946426,
		0.922931, -0.219130, 0.316512,
		0.251260, 0.965801, -0.064011,
		17.715767, 17.150793, 5.847496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002989, 16.707987, 6.377419>,  <17.539885, 16.474733, 5.892303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002989, 16.707987, 6.377419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778576, 17.028572, 6.294569>,  <17.643929, 17.220922, 6.244859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778576, 17.028572, 6.294569>,  <18.002989, 16.707987, 6.377419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778576, 17.028572, 6.294569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272276, 0.057627, 0.960492,
		0.781733, 0.595263, 0.185889,
		-0.561034, 0.801461, -0.207125,
		17.610266, 17.269011, 6.232431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162811, 17.206312, 6.776763>,  <18.002989, 16.707987, 6.377419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162811, 17.206312, 6.776763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.777012, 17.264709, 6.688739>,  <17.545532, 17.299747, 6.635924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.777012, 17.264709, 6.688739>,  <18.162811, 17.206312, 6.776763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.777012, 17.264709, 6.688739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219556, 0.019771, 0.975400,
		0.146754, 0.989088, 0.012985,
		-0.964499, 0.145995, -0.220062,
		17.487661, 17.308508, 6.622720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779774, 17.521402, 6.629480>,  <18.162811, 17.206312, 6.776763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779774, 17.521402, 6.629480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.131851, 17.389313, 6.493120>,  <19.343098, 17.310059, 6.411304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.131851, 17.389313, 6.493120>,  <18.779774, 17.521402, 6.629480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131851, 17.389313, 6.493120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435001, 0.274016, 0.857723,
		-0.189831, -0.903253, 0.384836,
		0.880192, -0.330226, -0.340899,
		19.395908, 17.290245, 6.390851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135263, 16.980371, 7.084867>,  <18.779774, 17.521402, 6.629480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135263, 16.980371, 7.084867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415268, 17.201519, 6.904059>,  <19.583271, 17.334208, 6.795575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415268, 17.201519, 6.904059>,  <19.135263, 16.980371, 7.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415268, 17.201519, 6.904059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489256, 0.089796, 0.867505,
		0.520205, -0.828417, -0.207635,
		0.700011, 0.552867, -0.452020,
		19.625271, 17.367378, 6.768454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787689, 16.722410, 7.358829>,  <19.135263, 16.980371, 7.084867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787689, 16.722410, 7.358829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.811359, 17.095524, 7.216611>,  <19.825562, 17.319391, 7.131280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.811359, 17.095524, 7.216611>,  <19.787689, 16.722410, 7.358829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811359, 17.095524, 7.216611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403328, 0.303463, 0.863271,
		0.913140, -0.194487, -0.358260,
		0.059177, 0.932783, -0.355546,
		19.829113, 17.375359, 7.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086617, 16.997843, 7.860676>,  <19.787689, 16.722410, 7.358829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086617, 16.997843, 7.860676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059181, 17.330544, 7.640318>,  <20.042721, 17.530163, 7.508103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059181, 17.330544, 7.640318>,  <20.086617, 16.997843, 7.860676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059181, 17.330544, 7.640318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487397, 0.509748, 0.708943,
		0.870483, -0.219881, -0.440355,
		-0.068587, 0.831751, -0.550896,
		20.038605, 17.580069, 7.475049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760708, 17.264658, 7.819462>,  <20.086617, 16.997843, 7.860676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760708, 17.264658, 7.819462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490807, 17.557014, 7.778461>,  <20.328867, 17.732430, 7.753860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490807, 17.557014, 7.778461>,  <20.760708, 17.264658, 7.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490807, 17.557014, 7.778461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577858, 0.609578, 0.542674,
		0.459120, 0.306938, -0.833665,
		-0.674751, 0.730893, -0.102503,
		20.288382, 17.776281, 7.747709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.066584, 17.955204, 7.728652>,  <20.760708, 17.264658, 7.819462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.066584, 17.955204, 7.728652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.711803, 18.082775, 7.862281>,  <20.498936, 18.159317, 7.942458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.711803, 18.082775, 7.862281>,  <21.066584, 17.955204, 7.728652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.711803, 18.082775, 7.862281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459177, 0.686811, 0.563425,
		-0.049753, 0.653128, -0.755611,
		-0.886951, 0.318927, 0.334072,
		20.445719, 18.178453, 7.962502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.031590, 18.699808, 7.658172>,  <21.066584, 17.955204, 7.728652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.031590, 18.699808, 7.658172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801563, 18.563961, 7.955886>,  <20.663548, 18.482452, 8.134515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801563, 18.563961, 7.955886>,  <21.031590, 18.699808, 7.658172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801563, 18.563961, 7.955886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435740, 0.642834, 0.629996,
		-0.692411, 0.686602, -0.221685,
		-0.575063, -0.339620, 0.744285,
		20.629044, 18.462074, 8.179172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136887, 19.269066, 8.076559>,  <21.031590, 18.699808, 7.658172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136887, 19.269066, 8.076559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.924732, 19.037327, 8.324122>,  <20.797440, 18.898283, 8.472661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.924732, 19.037327, 8.324122>,  <21.136887, 19.269066, 8.076559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924732, 19.037327, 8.324122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425713, 0.449317, 0.785418,
		-0.733116, 0.680053, 0.008324,
		-0.530386, -0.579346, 0.618909,
		20.765615, 18.863523, 8.509795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950485, 19.770536, 8.608396>,  <21.136887, 19.269066, 8.076559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950485, 19.770536, 8.608396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895035, 19.405750, 8.762852>,  <20.861765, 19.186878, 8.855526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895035, 19.405750, 8.762852>,  <20.950485, 19.770536, 8.608396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895035, 19.405750, 8.762852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078537, 0.378554, 0.922241,
		-0.987226, 0.158175, 0.019145,
		-0.138629, -0.911964, 0.386141,
		20.853447, 19.132162, 8.878694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454458, 19.882196, 9.028579>,  <20.950485, 19.770536, 8.608396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454458, 19.882196, 9.028579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654053, 19.556721, 9.147860>,  <20.773809, 19.361435, 9.219428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654053, 19.556721, 9.147860>,  <20.454458, 19.882196, 9.028579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654053, 19.556721, 9.147860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046826, 0.368915, 0.928283,
		-0.865344, -0.449237, 0.222186,
		0.498987, -0.813688, 0.298203,
		20.803749, 19.312614, 9.237320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030291, 19.719347, 9.545964>,  <20.454458, 19.882196, 9.028579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030291, 19.719347, 9.545964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374058, 19.521461, 9.597592>,  <20.580318, 19.402731, 9.628569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374058, 19.521461, 9.597592>,  <20.030291, 19.719347, 9.545964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374058, 19.521461, 9.597592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003656, 0.246494, 0.969137,
		-0.511259, -0.833367, 0.210033,
		0.859419, -0.494712, 0.129069,
		20.631884, 19.373049, 9.636313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957417, 19.258848, 10.123367>,  <20.030291, 19.719347, 9.545964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957417, 19.258848, 10.123367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350838, 19.317471, 10.081146>,  <20.586891, 19.352644, 10.055814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350838, 19.317471, 10.081146>,  <19.957417, 19.258848, 10.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.350838, 19.317471, 10.081146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079121, 0.175734, 0.981253,
		0.162352, -0.973468, 0.161249,
		0.983556, 0.146550, -0.105552,
		20.645905, 19.361437, 10.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255175, 18.818779, 10.645582>,  <19.957417, 19.258848, 10.123367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255175, 18.818779, 10.645582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509644, 19.111683, 10.548354>,  <20.662325, 19.287424, 10.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509644, 19.111683, 10.548354>,  <20.255175, 18.818779, 10.645582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509644, 19.111683, 10.548354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142966, 0.197709, 0.969779,
		0.758186, -0.651697, 0.021089,
		0.636172, 0.732258, -0.243071,
		20.700495, 19.331360, 10.475433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.929344, 18.625250, 10.956566>,  <20.255175, 18.818779, 10.645582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.929344, 18.625250, 10.956566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.942497, 19.017624, 10.879951>,  <20.950390, 19.253048, 10.833982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.942497, 19.017624, 10.879951>,  <20.929344, 18.625250, 10.956566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.942497, 19.017624, 10.879951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276076, 0.175271, 0.945020,
		0.960573, -0.083956, -0.265048,
		0.032885, 0.980934, -0.191539,
		20.952362, 19.311905, 10.822489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.576235, 18.871498, 11.278699>,  <20.929344, 18.625250, 10.956566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.576235, 18.871498, 11.278699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353725, 19.200199, 11.229246>,  <21.220221, 19.397419, 11.199574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353725, 19.200199, 11.229246>,  <21.576235, 18.871498, 11.278699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353725, 19.200199, 11.229246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288349, 0.330404, 0.898715,
		0.779369, 0.464281, -0.420746,
		-0.556273, 0.821752, -0.123632,
		21.186844, 19.446724, 11.192157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066978, 19.319475, 11.474335>,  <21.576235, 18.871498, 11.278699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066978, 19.319475, 11.474335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703861, 19.479336, 11.525226>,  <21.485991, 19.575253, 11.555760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703861, 19.479336, 11.525226>,  <22.066978, 19.319475, 11.474335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703861, 19.479336, 11.525226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237505, 0.239818, 0.941318,
		0.345687, 0.884741, -0.312624,
		-0.907795, 0.399651, 0.127228,
		21.431522, 19.599232, 11.563395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178812, 20.013342, 11.823867>,  <22.066978, 19.319475, 11.474335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178812, 20.013342, 11.823867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785484, 19.978329, 11.887646>,  <21.549488, 19.957321, 11.925913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785484, 19.978329, 11.887646>,  <22.178812, 20.013342, 11.823867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785484, 19.978329, 11.887646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110963, 0.405915, 0.907150,
		-0.144126, 0.909710, -0.389430,
		-0.983318, -0.087531, 0.159447,
		21.490488, 19.952070, 11.935480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932989, 20.689030, 12.107707>,  <22.178812, 20.013342, 11.823867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932989, 20.689030, 12.107707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650185, 20.422241, 12.201757>,  <21.480503, 20.262167, 12.258188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650185, 20.422241, 12.201757>,  <21.932989, 20.689030, 12.107707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650185, 20.422241, 12.201757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173472, 0.485876, 0.856640,
		-0.685597, 0.564865, -0.459220,
		-0.707010, -0.666972, 0.235127,
		21.438082, 20.222149, 12.272295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419796, 21.148516, 12.213887>,  <21.932989, 20.689030, 12.107707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419796, 21.148516, 12.213887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.349651, 20.799366, 12.396025>,  <21.307566, 20.589876, 12.505307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.349651, 20.799366, 12.396025>,  <21.419796, 21.148516, 12.213887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.349651, 20.799366, 12.396025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190393, 0.483847, 0.854191,
		-0.965919, 0.063097, -0.251037,
		-0.175360, -0.872875, 0.455344,
		21.297043, 20.537504, 12.532628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783876, 21.184374, 12.607126>,  <21.419796, 21.148516, 12.213887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783876, 21.184374, 12.607126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.999191, 20.886845, 12.765606>,  <21.128380, 20.708326, 12.860694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.999191, 20.886845, 12.765606>,  <20.783876, 21.184374, 12.607126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999191, 20.886845, 12.765606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027865, 0.454154, 0.890487,
		-0.842301, -0.490377, 0.223739,
		0.538287, -0.743824, 0.396199,
		21.160677, 20.663698, 12.884465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523863, 21.205301, 13.204579>,  <20.783876, 21.184374, 12.607126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523863, 21.205301, 13.204579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854511, 20.989029, 13.267013>,  <21.052900, 20.859266, 13.304473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854511, 20.989029, 13.267013>,  <20.523863, 21.205301, 13.204579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854511, 20.989029, 13.267013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024514, 0.311686, 0.949869,
		-0.562226, -0.781355, 0.270900,
		0.826620, -0.540682, 0.156084,
		21.102497, 20.826824, 13.313838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303764, 20.822304, 13.801614>,  <20.523863, 21.205301, 13.204579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303764, 20.822304, 13.801614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.699390, 20.831722, 13.743375>,  <20.936766, 20.837374, 13.708431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.699390, 20.831722, 13.743375>,  <20.303764, 20.822304, 13.801614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699390, 20.831722, 13.743375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140244, 0.155479, 0.977833,
		0.045661, -0.987558, 0.150477,
		0.989064, 0.023545, -0.145598,
		20.996109, 20.838787, 13.699696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552933, 20.430162, 14.342747>,  <20.303764, 20.822304, 13.801614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552933, 20.430162, 14.342747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841347, 20.674328, 14.211593>,  <21.014395, 20.820827, 14.132900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841347, 20.674328, 14.211593>,  <20.552933, 20.430162, 14.342747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841347, 20.674328, 14.211593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207906, 0.260813, 0.942736,
		0.660974, -0.747913, 0.061147,
		0.721033, 0.610411, -0.327886,
		21.057657, 20.857450, 14.113227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109194, 20.456238, 14.917261>,  <20.552933, 20.430162, 14.342747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109194, 20.456238, 14.917261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.229847, 20.762177, 14.689567>,  <21.302238, 20.945740, 14.552950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.229847, 20.762177, 14.689567>,  <21.109194, 20.456238, 14.917261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.229847, 20.762177, 14.689567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400412, 0.440217, 0.803666,
		0.865268, -0.470340, -0.173470,
		0.301632, 0.764845, -0.569236,
		21.320337, 20.991631, 14.518796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666296, 20.694641, 15.301350>,  <21.109194, 20.456238, 14.917261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666296, 20.694641, 15.301350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606125, 20.978016, 15.025527>,  <21.570023, 21.148041, 14.860034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606125, 20.978016, 15.025527>,  <21.666296, 20.694641, 15.301350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606125, 20.978016, 15.025527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458171, 0.668024, 0.586365,
		0.876043, -0.227729, -0.425075,
		-0.150428, 0.708438, -0.689556,
		21.560997, 21.190548, 14.818660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287739, 20.930098, 15.073812>,  <21.666296, 20.694641, 15.301350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287739, 20.930098, 15.073812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031387, 21.230297, 15.009284>,  <21.877577, 21.410416, 14.970567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031387, 21.230297, 15.009284>,  <22.287739, 20.930098, 15.073812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031387, 21.230297, 15.009284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570428, 0.606231, 0.554162,
		0.513695, 0.263130, -0.816627,
		-0.640881, 0.750498, -0.161321,
		21.839123, 21.455446, 14.960888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641218, 21.414700, 14.744070>,  <22.287739, 20.930098, 15.073812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641218, 21.414700, 14.744070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337559, 21.608429, 14.918023>,  <22.155363, 21.724667, 15.022395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337559, 21.608429, 14.918023>,  <22.641218, 21.414700, 14.744070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337559, 21.608429, 14.918023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649377, 0.609449, 0.454842,
		-0.044747, 0.627695, -0.777172,
		-0.759149, 0.484325, 0.434882,
		22.109814, 21.753727, 15.048488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.890844, 22.038624, 14.979688>,  <22.641218, 21.414700, 14.744070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.890844, 22.038624, 14.979688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536541, 22.075493, 15.161649>,  <22.323959, 22.097614, 15.270825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536541, 22.075493, 15.161649>,  <22.890844, 22.038624, 14.979688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536541, 22.075493, 15.161649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395958, 0.661431, 0.636966,
		-0.242176, 0.744321, -0.622365,
		-0.885759, 0.092172, 0.454902,
		22.270813, 22.103144, 15.298120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.797943, 22.827562, 15.121717>,  <22.890844, 22.038624, 14.979688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.797943, 22.827562, 15.121717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563999, 22.635925, 15.383529>,  <22.423632, 22.520943, 15.540615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563999, 22.635925, 15.383529>,  <22.797943, 22.827562, 15.121717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563999, 22.635925, 15.383529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259617, 0.653916, 0.710629,
		-0.768464, 0.585545, -0.258069,
		-0.584861, -0.479094, 0.654528,
		22.388540, 22.492197, 15.579887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275417, 23.290670, 15.509394>,  <22.797943, 22.827562, 15.121717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275417, 23.290670, 15.509394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318909, 22.963573, 15.735482>,  <22.345003, 22.767315, 15.871135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318909, 22.963573, 15.735482>,  <22.275417, 23.290670, 15.509394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318909, 22.963573, 15.735482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509241, 0.534136, 0.674813,
		-0.853729, 0.214463, 0.474503,
		0.108727, -0.817743, 0.565221,
		22.351526, 22.718250, 15.905048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.972332, 23.476364, 16.109266>,  <22.275417, 23.290670, 15.509394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.972332, 23.476364, 16.109266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203224, 23.163773, 16.204000>,  <22.341761, 22.976217, 16.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203224, 23.163773, 16.204000>,  <21.972332, 23.476364, 16.109266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.203224, 23.163773, 16.204000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395421, 0.521263, 0.756259,
		-0.714455, -0.342888, 0.609903,
		0.577232, -0.781481, 0.236834,
		22.376394, 22.929329, 16.275051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686058, 23.200262, 16.709961>,  <21.972332, 23.476364, 16.109266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686058, 23.200262, 16.709961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069397, 23.088554, 16.733898>,  <22.299400, 23.021530, 16.748260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069397, 23.088554, 16.733898>,  <21.686058, 23.200262, 16.709961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069397, 23.088554, 16.733898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054996, 0.386045, 0.920839,
		-0.280265, -0.879191, 0.385324,
		0.958346, -0.279270, 0.059843,
		22.356901, 23.004774, 16.751850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689684, 23.106176, 17.400770>,  <21.686058, 23.200262, 16.709961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689684, 23.106176, 17.400770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069958, 23.077644, 17.280031>,  <22.298122, 23.060526, 17.207588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069958, 23.077644, 17.280031>,  <21.689684, 23.106176, 17.400770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069958, 23.077644, 17.280031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308431, 0.114720, 0.944304,
		-0.032729, -0.990834, 0.131062,
		0.950683, -0.071330, -0.301849,
		22.355164, 23.056246, 17.189476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018572, 22.600370, 17.868853>,  <21.689684, 23.106176, 17.400770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018572, 22.600370, 17.868853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.281815, 22.855648, 17.709051>,  <22.439760, 23.008816, 17.613171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.281815, 22.855648, 17.709051>,  <22.018572, 22.600370, 17.868853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.281815, 22.855648, 17.709051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328457, 0.234108, 0.915046,
		0.677506, -0.733417, -0.055553,
		0.658105, 0.638196, -0.399505,
		22.479246, 23.047108, 17.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735531, 22.486658, 18.230722>,  <22.018572, 22.600370, 17.868853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735531, 22.486658, 18.230722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694397, 22.850204, 18.069038>,  <22.669716, 23.068333, 17.972027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694397, 22.850204, 18.069038>,  <22.735531, 22.486658, 18.230722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694397, 22.850204, 18.069038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168841, 0.416418, 0.893358,
		0.980264, 0.023622, -0.196277,
		-0.102836, 0.908866, -0.404211,
		22.663546, 23.122864, 17.947775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.235920, 22.859211, 18.574167>,  <22.735531, 22.486658, 18.230722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.235920, 22.859211, 18.574167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.986481, 23.136536, 18.429699>,  <22.836817, 23.302931, 18.343018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.986481, 23.136536, 18.429699>,  <23.235920, 22.859211, 18.574167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.986481, 23.136536, 18.429699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075949, 0.513550, 0.854692,
		0.778047, 0.505553, -0.372905,
		-0.623598, 0.693313, -0.361170,
		22.799402, 23.344530, 18.321348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.540003, 23.599546, 18.447939>,  <23.235920, 22.859211, 18.574167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.540003, 23.599546, 18.447939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146057, 23.660957, 18.480120>,  <22.909689, 23.697803, 18.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146057, 23.660957, 18.480120>,  <23.540003, 23.599546, 18.447939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146057, 23.660957, 18.480120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163293, 0.666183, 0.727692,
		0.058125, 0.729815, -0.681169,
		-0.984864, 0.153528, 0.080451,
		22.850597, 23.707016, 18.504255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600399, 24.136122, 18.870495>,  <23.540003, 23.599546, 18.447939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600399, 24.136122, 18.870495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209011, 24.055161, 18.854338>,  <22.974178, 24.006584, 18.844645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209011, 24.055161, 18.854338>,  <23.600399, 24.136122, 18.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209011, 24.055161, 18.854338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139421, 0.503888, 0.852443,
		-0.152183, 0.839721, -0.521258,
		-0.978469, -0.202401, -0.040392,
		22.915470, 23.994440, 18.842220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171270, 24.756998, 18.986126>,  <23.600399, 24.136122, 18.870495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171270, 24.756998, 18.986126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.939995, 24.453125, 19.105173>,  <22.801229, 24.270802, 19.176601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.939995, 24.453125, 19.105173>,  <23.171270, 24.756998, 18.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.939995, 24.453125, 19.105173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225544, 0.499376, 0.836512,
		-0.784110, 0.416536, -0.460076,
		-0.578188, -0.759685, 0.297619,
		22.766539, 24.225220, 19.194458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636309, 25.057251, 19.116756>,  <23.171270, 24.756998, 18.986126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636309, 25.057251, 19.116756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608639, 24.713619, 19.319614>,  <22.592037, 24.507441, 19.441330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608639, 24.713619, 19.319614>,  <22.636309, 25.057251, 19.116756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608639, 24.713619, 19.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237502, 0.507930, 0.828010,
		-0.968921, -0.063170, -0.239170,
		-0.069176, -0.859079, 0.507146,
		22.587887, 24.455896, 19.471758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.937387, 25.030895, 19.359770>,  <22.636309, 25.057251, 19.116756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.937387, 25.030895, 19.359770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147106, 24.784115, 19.594542>,  <22.272938, 24.636047, 19.735405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147106, 24.784115, 19.594542>,  <21.937387, 25.030895, 19.359770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147106, 24.784115, 19.594542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434059, 0.399361, 0.807529,
		-0.732601, -0.678147, -0.058409,
		0.524298, -0.616950, 0.586928,
		22.304396, 24.599030, 19.770620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545864, 24.950249, 19.886034>,  <21.937387, 25.030895, 19.359770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545864, 24.950249, 19.886034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891457, 24.823860, 20.042850>,  <22.098812, 24.748028, 20.136940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891457, 24.823860, 20.042850>,  <21.545864, 24.950249, 19.886034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891457, 24.823860, 20.042850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334544, 0.221682, 0.915935,
		-0.376319, -0.922507, 0.085822,
		0.863982, -0.315972, 0.392042,
		22.150652, 24.729069, 20.160463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310640, 24.728828, 20.569881>,  <21.545864, 24.950249, 19.886034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310640, 24.728828, 20.569881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709213, 24.742332, 20.600817>,  <21.948357, 24.750435, 20.619377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709213, 24.742332, 20.600817>,  <21.310640, 24.728828, 20.569881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709213, 24.742332, 20.600817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084140, 0.467300, 0.880086,
		-0.006430, -0.883454, 0.468474,
		0.996434, 0.033759, 0.077338,
		22.008142, 24.752460, 20.624018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439537, 24.560812, 21.275057>,  <21.310640, 24.728828, 20.569881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439537, 24.560812, 21.275057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.742485, 24.784729, 21.140583>,  <21.924253, 24.919079, 21.059898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.742485, 24.784729, 21.140583>,  <21.439537, 24.560812, 21.275057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.742485, 24.784729, 21.140583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055756, 0.568406, 0.820857,
		0.650601, -0.602948, 0.461706,
		0.757370, 0.559793, -0.336187,
		21.969696, 24.952667, 21.039726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.892431, 24.615473, 21.844742>,  <21.439537, 24.560812, 21.275057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.892431, 24.615473, 21.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969284, 24.933857, 21.615122>,  <22.015396, 25.124887, 21.477350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969284, 24.933857, 21.615122>,  <21.892431, 24.615473, 21.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969284, 24.933857, 21.615122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160927, 0.602583, 0.781662,
		0.968085, -0.057802, 0.243867,
		0.192132, 0.795960, -0.574050,
		22.026924, 25.172646, 21.442907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.311890, 24.924635, 22.307579>,  <21.892431, 24.615473, 21.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.311890, 24.924635, 22.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202000, 25.202438, 22.041592>,  <22.136065, 25.369120, 21.882000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202000, 25.202438, 22.041592>,  <22.311890, 24.924635, 22.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.202000, 25.202438, 22.041592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127569, 0.659137, 0.741123,
		0.953022, 0.288436, -0.092485,
		-0.274727, 0.694508, -0.664968,
		22.119581, 25.410791, 21.842102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807062, 25.540459, 22.330750>,  <22.311890, 24.924635, 22.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807062, 25.540459, 22.330750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.441147, 25.649414, 22.211439>,  <22.221598, 25.714788, 22.139853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.441147, 25.649414, 22.211439>,  <22.807062, 25.540459, 22.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.441147, 25.649414, 22.211439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012180, 0.756690, 0.653661,
		0.403753, 0.594327, -0.695527,
		-0.914787, 0.272390, -0.298277,
		22.166710, 25.731131, 22.121956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.878267, 26.150383, 22.151333>,  <22.807062, 25.540459, 22.330750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.878267, 26.150383, 22.151333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538837, 26.018406, 22.316769>,  <22.335180, 25.939219, 22.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538837, 26.018406, 22.316769>,  <22.878267, 26.150383, 22.151333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538837, 26.018406, 22.316769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149353, 0.600544, 0.785519,
		-0.507557, 0.728343, -0.460328,
		-0.848575, -0.329944, 0.413591,
		22.284266, 25.919422, 22.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453598, 26.762177, 22.211529>,  <22.878267, 26.150383, 22.151333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453598, 26.762177, 22.211529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.370354, 26.507256, 22.508322>,  <22.320408, 26.354303, 22.686398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.370354, 26.507256, 22.508322>,  <22.453598, 26.762177, 22.211529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.370354, 26.507256, 22.508322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037448, 0.752843, 0.657134,
		-0.977389, 0.164541, -0.132807,
		-0.208109, -0.637301, 0.741982,
		22.307920, 26.316065, 22.730917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894180, 27.145071, 22.585625>,  <22.453598, 26.762177, 22.211529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894180, 27.145071, 22.585625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076004, 26.868950, 22.810787>,  <22.185099, 26.703278, 22.945885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076004, 26.868950, 22.810787>,  <21.894180, 27.145071, 22.585625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076004, 26.868950, 22.810787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054164, 0.652220, 0.756092,
		-0.889069, -0.313199, 0.333862,
		0.454558, -0.690301, 0.562904,
		22.212372, 26.661860, 22.979658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559763, 27.086622, 23.217306>,  <21.894180, 27.145071, 22.585625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559763, 27.086622, 23.217306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947475, 26.993584, 23.249289>,  <22.180103, 26.937759, 23.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947475, 26.993584, 23.249289>,  <21.559763, 27.086622, 23.217306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947475, 26.993584, 23.249289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134690, 0.773964, 0.618739,
		-0.205799, -0.588963, 0.781518,
		0.969281, -0.232598, 0.079954,
		22.238260, 26.923803, 23.273275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.804859, 26.935707, 23.000736>,  <21.559763, 27.086622, 23.217306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.804859, 26.935707, 23.000736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479458, 26.716270, 23.077942>,  <20.284216, 26.584608, 23.124266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479458, 26.716270, 23.077942>,  <20.804859, 26.935707, 23.000736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479458, 26.716270, 23.077942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184882, -0.070714, -0.980213,
		0.551388, -0.833093, -0.043899,
		-0.813504, -0.548594, 0.193015,
		20.235407, 26.551693, 23.135847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816004, 26.150875, 22.748930>,  <20.804859, 26.935707, 23.000736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816004, 26.150875, 22.748930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487492, 26.379044, 22.744572>,  <20.290384, 26.515945, 22.741957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487492, 26.379044, 22.744572>,  <20.816004, 26.150875, 22.748930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487492, 26.379044, 22.744572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065952, -0.113890, -0.991302,
		-0.566700, -0.813418, 0.131156,
		-0.821281, 0.570421, -0.010895,
		20.241108, 26.550169, 22.741302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395693, 25.777880, 22.256374>,  <20.816004, 26.150875, 22.748930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395693, 25.777880, 22.256374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256718, 26.151833, 22.285448>,  <20.173332, 26.376204, 22.302893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256718, 26.151833, 22.285448>,  <20.395693, 25.777880, 22.256374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256718, 26.151833, 22.285448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179407, 0.009809, -0.983726,
		-0.920381, -0.354824, 0.164316,
		-0.347437, 0.934882, 0.072686,
		20.152487, 26.432297, 22.307255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665812, 25.966190, 22.055796>,  <20.395693, 25.777880, 22.256374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665812, 25.966190, 22.055796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906502, 26.278591, 21.988911>,  <20.050915, 26.466032, 21.948780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906502, 26.278591, 21.988911>,  <19.665812, 25.966190, 22.055796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906502, 26.278591, 21.988911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241391, -0.021736, -0.970184,
		-0.761352, 0.624148, 0.175449,
		0.601725, 0.781004, -0.167212,
		20.087019, 26.512892, 21.938747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343561, 26.619589, 21.638351>,  <19.665812, 25.966190, 22.055796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343561, 26.619589, 21.638351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734562, 26.561966, 21.576729>,  <19.969162, 26.527391, 21.539755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734562, 26.561966, 21.576729>,  <19.343561, 26.619589, 21.638351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734562, 26.561966, 21.576729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159620, -0.027808, -0.986787,
		0.137871, 0.989178, -0.050177,
		0.977504, -0.144058, -0.154059,
		20.027813, 26.518749, 21.530512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541782, 26.970671, 21.002905>,  <19.343561, 26.619589, 21.638351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541782, 26.970671, 21.002905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871243, 26.746140, 21.035175>,  <20.068918, 26.611420, 21.054537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871243, 26.746140, 21.035175>,  <19.541782, 26.970671, 21.002905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871243, 26.746140, 21.035175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214487, 0.176658, -0.960618,
		0.524971, 0.808518, 0.265902,
		0.823651, -0.561329, 0.080676,
		20.118338, 26.577742, 21.059378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127327, 27.295290, 20.701006>,  <19.541782, 26.970671, 21.002905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127327, 27.295290, 20.701006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219593, 26.906082, 20.702904>,  <20.274954, 26.672558, 20.704042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219593, 26.906082, 20.702904>,  <20.127327, 27.295290, 20.701006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.219593, 26.906082, 20.702904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178919, 0.037622, -0.983144,
		0.956442, 0.227628, 0.182770,
		0.230667, -0.973021, 0.004743,
		20.288794, 26.614176, 20.704327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.720343, 27.295771, 20.381912>,  <20.127327, 27.295290, 20.701006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.720343, 27.295771, 20.381912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.588421, 26.921921, 20.328686>,  <20.509268, 26.697611, 20.296749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.588421, 26.921921, 20.328686>,  <20.720343, 27.295771, 20.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588421, 26.921921, 20.328686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298704, 0.030400, -0.953861,
		0.895548, -0.354335, 0.269150,
		-0.329804, -0.934624, -0.133066,
		20.489479, 26.641533, 20.288767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288683, 27.046379, 19.970476>,  <20.720343, 27.295771, 20.381912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288683, 27.046379, 19.970476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972279, 26.802185, 19.954433>,  <20.782436, 26.655668, 19.944809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972279, 26.802185, 19.954433>,  <21.288683, 27.046379, 19.970476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972279, 26.802185, 19.954433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207335, -0.205818, -0.956374,
		0.575598, -0.764818, 0.289380,
		-0.791012, -0.610485, -0.040105,
		20.734976, 26.619040, 19.942402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527460, 26.439491, 19.618923>,  <21.288683, 27.046379, 19.970476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527460, 26.439491, 19.618923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127941, 26.421726, 19.610645>,  <20.888229, 26.411068, 19.605679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127941, 26.421726, 19.610645>,  <21.527460, 26.439491, 19.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127941, 26.421726, 19.610645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035176, -0.355942, -0.933846,
		0.034109, -0.933452, 0.357077,
		-0.998799, -0.044413, -0.020694,
		20.828302, 26.408401, 19.604437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405521, 25.890812, 19.255400>,  <21.527460, 26.439491, 19.618923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405521, 25.890812, 19.255400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057476, 26.078571, 19.195312>,  <20.848648, 26.191227, 19.159260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057476, 26.078571, 19.195312>,  <21.405521, 25.890812, 19.255400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057476, 26.078571, 19.195312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055799, -0.396663, -0.916267,
		-0.489681, -0.788875, 0.371334,
		-0.870114, 0.469399, -0.150220,
		20.796442, 26.219391, 19.150248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002983, 25.379316, 18.877398>,  <21.405521, 25.890812, 19.255400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002983, 25.379316, 18.877398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.788006, 25.713280, 18.829929>,  <20.659019, 25.913658, 18.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.788006, 25.713280, 18.829929>,  <21.002983, 25.379316, 18.877398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788006, 25.713280, 18.829929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269018, -0.303110, -0.914196,
		-0.799239, -0.459405, 0.387510,
		-0.537444, 0.834908, -0.118669,
		20.626772, 25.963753, 18.794329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432856, 25.149712, 18.541670>,  <21.002983, 25.379316, 18.877398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432856, 25.149712, 18.541670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.462776, 25.542896, 18.474514>,  <20.480728, 25.778807, 18.434221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.462776, 25.542896, 18.474514>,  <20.432856, 25.149712, 18.541670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.462776, 25.542896, 18.474514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253682, -0.144065, -0.956499,
		-0.964391, 0.114137, 0.238584,
		0.074800, 0.982964, -0.167889,
		20.485216, 25.837786, 18.424147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735388, 25.411970, 18.342546>,  <20.432856, 25.149712, 18.541670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735388, 25.411970, 18.342546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019253, 25.638077, 18.174330>,  <20.189571, 25.773741, 18.073400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019253, 25.638077, 18.174330>,  <19.735388, 25.411970, 18.342546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019253, 25.638077, 18.174330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375013, -0.202250, -0.904688,
		-0.596444, 0.799730, 0.068453,
		0.709661, 0.565267, -0.420540,
		20.232151, 25.807657, 18.048168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387148, 25.598970, 17.760277>,  <19.735388, 25.411970, 18.342546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387148, 25.598970, 17.760277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767010, 25.685925, 17.670031>,  <19.994926, 25.738098, 17.615883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767010, 25.685925, 17.670031>,  <19.387148, 25.598970, 17.760277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767010, 25.685925, 17.670031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144070, -0.336459, -0.930612,
		-0.278213, 0.916263, -0.288200,
		0.949653, 0.217387, -0.225613,
		20.051907, 25.751141, 17.602346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342152, 25.963766, 17.170488>,  <19.387148, 25.598970, 17.760277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342152, 25.963766, 17.170488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.710838, 25.809708, 17.188835>,  <19.932051, 25.717272, 17.199842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.710838, 25.809708, 17.188835>,  <19.342152, 25.963766, 17.170488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710838, 25.809708, 17.188835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086916, -0.320342, -0.943306,
		0.378006, 0.865472, -0.328739,
		0.921714, -0.385148, 0.045867,
		19.987352, 25.694162, 17.202595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610712, 26.019999, 16.540644>,  <19.342152, 25.963766, 17.170488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610712, 26.019999, 16.540644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874851, 25.752357, 16.677019>,  <20.033335, 25.591772, 16.758844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874851, 25.752357, 16.677019>,  <19.610712, 26.019999, 16.540644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874851, 25.752357, 16.677019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196879, -0.283872, -0.938432,
		0.724691, 0.686818, -0.055723,
		0.660350, -0.669102, 0.340940,
		20.072956, 25.551626, 16.779301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201782, 26.022503, 16.002804>,  <19.610712, 26.019999, 16.540644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201782, 26.022503, 16.002804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.226765, 25.678234, 16.204929>,  <20.241755, 25.471672, 16.326204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.226765, 25.678234, 16.204929>,  <20.201782, 26.022503, 16.002804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.226765, 25.678234, 16.204929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224749, -0.481169, -0.847328,
		0.972413, 0.166488, 0.163384,
		0.062454, -0.860673, 0.505313,
		20.245501, 25.420033, 16.356524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815187, 25.649727, 15.824314>,  <20.201782, 26.022503, 16.002804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815187, 25.649727, 15.824314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573269, 25.372784, 15.981727>,  <20.428118, 25.206617, 16.076174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573269, 25.372784, 15.981727>,  <20.815187, 25.649727, 15.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573269, 25.372784, 15.981727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169967, -0.594981, -0.785563,
		0.778032, -0.408217, 0.477519,
		-0.604795, -0.692356, 0.393531,
		20.391830, 25.165077, 16.099785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122026, 24.971115, 15.723782>,  <20.815187, 25.649727, 15.824314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122026, 24.971115, 15.723782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726292, 24.923656, 15.757565>,  <20.488850, 24.895182, 15.777836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726292, 24.923656, 15.757565>,  <21.122026, 24.971115, 15.723782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726292, 24.923656, 15.757565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002464, -0.593480, -0.804845,
		0.145618, -0.796055, 0.587445,
		-0.989338, -0.118648, 0.084460,
		20.429491, 24.888062, 15.782904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024088, 24.287474, 15.463267>,  <21.122026, 24.971115, 15.723782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024088, 24.287474, 15.463267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651009, 24.430763, 15.479981>,  <20.427160, 24.516737, 15.490010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651009, 24.430763, 15.479981>,  <21.024088, 24.287474, 15.463267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651009, 24.430763, 15.479981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256057, -0.576152, -0.776198,
		-0.253976, -0.734660, 0.629103,
		-0.932701, 0.358222, 0.041786,
		20.371199, 24.538231, 15.492517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595343, 23.652334, 15.425168>,  <21.024088, 24.287474, 15.463267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595343, 23.652334, 15.425168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373219, 23.960022, 15.298720>,  <20.239944, 24.144634, 15.222852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373219, 23.960022, 15.298720>,  <20.595343, 23.652334, 15.425168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373219, 23.960022, 15.298720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271327, -0.526889, -0.805462,
		-0.786136, -0.361512, 0.501298,
		-0.555312, 0.769218, -0.316119,
		20.206625, 24.190788, 15.203885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145868, 23.381153, 15.060618>,  <20.595343, 23.652334, 15.425168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145868, 23.381153, 15.060618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085255, 23.749668, 14.917361>,  <20.048887, 23.970778, 14.831408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085255, 23.749668, 14.917361>,  <20.145868, 23.381153, 15.060618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085255, 23.749668, 14.917361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148254, -0.379411, -0.913273,
		-0.977271, -0.085295, 0.194078,
		-0.151533, 0.921288, -0.358142,
		20.039795, 24.026054, 14.809918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562019, 23.269611, 14.617245>,  <20.145868, 23.381153, 15.060618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562019, 23.269611, 14.617245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731659, 23.620213, 14.526134>,  <19.833443, 23.830572, 14.471467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731659, 23.620213, 14.526134>,  <19.562019, 23.269611, 14.617245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731659, 23.620213, 14.526134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075357, -0.216491, -0.973372,
		-0.902474, 0.429973, -0.025763,
		0.424101, 0.876502, -0.227779,
		19.858889, 23.883163, 14.457800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090279, 23.721308, 14.180414>,  <19.562019, 23.269611, 14.617245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090279, 23.721308, 14.180414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459461, 23.833412, 14.074883>,  <19.680971, 23.900675, 14.011565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459461, 23.833412, 14.074883>,  <19.090279, 23.721308, 14.180414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459461, 23.833412, 14.074883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231490, -0.143437, -0.962205,
		-0.307513, 0.949146, -0.067508,
		0.922956, 0.280263, -0.263826,
		19.736347, 23.917492, 13.995735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975266, 24.221621, 13.641870>,  <19.090279, 23.721308, 14.180414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975266, 24.221621, 13.641870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362667, 24.124588, 13.619388>,  <19.595108, 24.066368, 13.605898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362667, 24.124588, 13.619388>,  <18.975266, 24.221621, 13.641870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362667, 24.124588, 13.619388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129742, -0.298941, -0.945411,
		0.212535, 0.922925, -0.320997,
		0.968502, -0.242580, -0.056206,
		19.653217, 24.051815, 13.602526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174191, 24.452988, 12.942365>,  <18.975266, 24.221621, 13.641870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.174191, 24.452988, 12.942365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420963, 24.157764, 13.051668>,  <19.569027, 23.980631, 13.117250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420963, 24.157764, 13.051668>,  <19.174191, 24.452988, 12.942365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420963, 24.157764, 13.051668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042711, -0.315297, -0.948031,
		0.785858, 0.596540, -0.162993,
		0.616930, -0.738057, 0.273258,
		19.606043, 23.936348, 13.133646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721676, 24.532806, 12.458292>,  <19.174191, 24.452988, 12.942365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721676, 24.532806, 12.458292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732967, 24.168995, 12.624163>,  <19.739742, 23.950708, 12.723685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732967, 24.168995, 12.624163>,  <19.721676, 24.532806, 12.458292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732967, 24.168995, 12.624163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026266, -0.415373, -0.909272,
		0.999256, 0.014776, -0.035616,
		0.028229, -0.909531, 0.414676,
		19.741436, 23.896135, 12.748566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259352, 24.169113, 12.160527>,  <19.721676, 24.532806, 12.458292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259352, 24.169113, 12.160527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.014114, 23.888535, 12.305903>,  <19.866972, 23.720186, 12.393129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.014114, 23.888535, 12.305903>,  <20.259352, 24.169113, 12.160527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014114, 23.888535, 12.305903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135814, -0.359611, -0.923165,
		0.778250, -0.615345, 0.125208,
		-0.613091, -0.701448, 0.363440,
		19.830187, 23.678101, 12.414935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473372, 23.600958, 11.746981>,  <20.259352, 24.169113, 12.160527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473372, 23.600958, 11.746981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122780, 23.480751, 11.897431>,  <19.912424, 23.408627, 11.987702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122780, 23.480751, 11.897431>,  <20.473372, 23.600958, 11.746981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122780, 23.480751, 11.897431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234620, -0.415588, -0.878772,
		0.420401, -0.858473, 0.293747,
		-0.876480, -0.300517, 0.376128,
		19.859837, 23.390596, 12.010270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356897, 23.012667, 11.430587>,  <20.473372, 23.600958, 11.746981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356897, 23.012667, 11.430587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992264, 23.084732, 11.578403>,  <19.773483, 23.127972, 11.667092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992264, 23.084732, 11.578403>,  <20.356897, 23.012667, 11.430587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992264, 23.084732, 11.578403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410890, -0.429202, -0.804335,
		0.013698, -0.885058, 0.465280,
		-0.911582, 0.180161, 0.369540,
		19.718790, 23.138781, 11.689264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.024021, 22.416212, 11.276853>,  <20.356897, 23.012667, 11.430587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.024021, 22.416212, 11.276853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.742168, 22.694187, 11.334205>,  <19.573057, 22.860971, 11.368616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.742168, 22.694187, 11.334205>,  <20.024021, 22.416212, 11.276853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.742168, 22.694187, 11.334205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485010, -0.324201, -0.812194,
		-0.517941, -0.641836, 0.565494,
		-0.704629, 0.694939, 0.143380,
		19.530779, 22.902668, 11.377218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403217, 22.066086, 11.339660>,  <20.024021, 22.416212, 11.276853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403217, 22.066086, 11.339660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330627, 22.441105, 11.220954>,  <19.287073, 22.666117, 11.149731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330627, 22.441105, 11.220954>,  <19.403217, 22.066086, 11.339660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330627, 22.441105, 11.220954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344459, -0.343259, -0.873797,
		-0.921095, -0.056347, 0.385239,
		-0.181473, 0.937549, -0.296764,
		19.276186, 22.722370, 11.131925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683765, 22.138119, 11.154707>,  <19.403217, 22.066086, 11.339660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.683765, 22.138119, 11.154707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841118, 22.458191, 10.973615>,  <18.935530, 22.650234, 10.864960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841118, 22.458191, 10.973615>,  <18.683765, 22.138119, 11.154707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841118, 22.458191, 10.973615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394928, -0.297612, -0.869171,
		-0.830231, 0.520711, 0.198938,
		0.393381, 0.800179, -0.452730,
		18.959131, 22.698244, 10.837795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071936, 22.385592, 10.715104>,  <18.683765, 22.138119, 11.154707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071936, 22.385592, 10.715104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400837, 22.532246, 10.540990>,  <18.598179, 22.620239, 10.436522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400837, 22.532246, 10.540990>,  <18.071936, 22.385592, 10.715104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400837, 22.532246, 10.540990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243141, -0.465224, -0.851146,
		-0.514567, 0.805695, -0.293388,
		0.822255, 0.366637, -0.435286,
		18.647514, 22.642237, 10.410404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878809, 22.668650, 10.051685>,  <18.071936, 22.385592, 10.715104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878809, 22.668650, 10.051685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271648, 22.608639, 10.006120>,  <18.507351, 22.572632, 9.978780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271648, 22.608639, 10.006120>,  <17.878809, 22.668650, 10.051685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.271648, 22.608639, 10.006120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167684, -0.420717, -0.891560,
		0.085833, 0.894700, -0.438343,
		0.982097, -0.150028, -0.113915,
		18.566278, 22.563631, 9.971945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180332, 23.040648, 9.414602>,  <17.878809, 22.668650, 10.051685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180332, 23.040648, 9.414602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407333, 22.726849, 9.514602>,  <18.543535, 22.538568, 9.574601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407333, 22.726849, 9.514602>,  <18.180332, 23.040648, 9.414602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.407333, 22.726849, 9.514602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058591, -0.341337, -0.938113,
		0.821282, 0.517736, -0.239676,
		0.567505, -0.784499, 0.250000,
		18.577585, 22.491499, 9.589602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437311, 22.833090, 8.815489>,  <18.180332, 23.040648, 9.414602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437311, 22.833090, 8.815489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532711, 22.509556, 9.030487>,  <18.589951, 22.315435, 9.159486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532711, 22.509556, 9.030487>,  <18.437311, 22.833090, 8.815489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532711, 22.509556, 9.030487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187742, -0.581427, -0.791641,
		0.952822, 0.087896, -0.290523,
		0.238500, -0.808837, 0.537495,
		18.604261, 22.266905, 9.191735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834312, 22.476992, 8.311007>,  <18.437311, 22.833090, 8.815489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834312, 22.476992, 8.311007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752636, 22.203781, 8.591516>,  <18.703630, 22.039854, 8.759820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752636, 22.203781, 8.591516>,  <18.834312, 22.476992, 8.311007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752636, 22.203781, 8.591516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175273, -0.679278, -0.712643,
		0.963112, -0.268429, 0.018986,
		-0.204191, -0.683028, 0.701270,
		18.691380, 21.998873, 8.801896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266953, 21.829967, 8.268665>,  <18.834312, 22.476992, 8.311007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266953, 21.829967, 8.268665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.943882, 21.713737, 8.473886>,  <18.750038, 21.643999, 8.597017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.943882, 21.713737, 8.473886>,  <19.266953, 21.829967, 8.268665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.943882, 21.713737, 8.473886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056949, -0.827621, -0.558391,
		0.586867, -0.480218, 0.651904,
		-0.807678, -0.290576, 0.513051,
		18.701578, 21.626564, 8.627801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434864, 21.113241, 8.383018>,  <19.266953, 21.829967, 8.268665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434864, 21.113241, 8.383018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041553, 21.169384, 8.429431>,  <18.805567, 21.203070, 8.457278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041553, 21.169384, 8.429431>,  <19.434864, 21.113241, 8.383018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041553, 21.169384, 8.429431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179738, -0.850423, -0.494443,
		0.029277, -0.507031, 0.861431,
		-0.983279, 0.140356, 0.116031,
		18.746571, 21.211491, 8.464240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154808, 20.520628, 8.777178>,  <19.434864, 21.113241, 8.383018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154808, 20.520628, 8.777178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827759, 20.688801, 8.619835>,  <18.631529, 20.789705, 8.525429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827759, 20.688801, 8.619835>,  <19.154808, 20.520628, 8.777178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827759, 20.688801, 8.619835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271714, -0.884102, -0.380179,
		-0.507608, -0.203962, 0.837099,
		-0.817622, 0.420433, -0.393358,
		18.582472, 20.814930, 8.501827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653940, 20.006121, 8.796186>,  <19.154808, 20.520628, 8.777178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653940, 20.006121, 8.796186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506084, 20.239414, 8.506856>,  <18.417370, 20.379391, 8.333258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506084, 20.239414, 8.506856>,  <18.653940, 20.006121, 8.796186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506084, 20.239414, 8.506856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267874, -0.812300, -0.518085,
		-0.889724, 0.002255, 0.456493,
		-0.369641, 0.583236, -0.723327,
		18.395191, 20.414385, 8.289858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105616, 19.649920, 8.678582>,  <18.653940, 20.006121, 8.796186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105616, 19.649920, 8.678582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149609, 19.891109, 8.362525>,  <18.176004, 20.035824, 8.172891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149609, 19.891109, 8.362525>,  <18.105616, 19.649920, 8.678582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149609, 19.891109, 8.362525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118324, -0.781368, -0.612750,
		-0.986865, 0.160885, -0.014590,
		0.109983, 0.602975, -0.790142,
		18.182604, 20.072002, 8.125483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663305, 19.487667, 8.253607>,  <18.105616, 19.649920, 8.678582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663305, 19.487667, 8.253607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929268, 19.663017, 8.011706>,  <18.088846, 19.768229, 7.866566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929268, 19.663017, 8.011706>,  <17.663305, 19.487667, 8.253607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929268, 19.663017, 8.011706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133974, -0.726525, -0.673953,
		-0.734812, 0.529138, -0.424341,
		0.664908, 0.438378, -0.604750,
		18.128740, 19.794531, 7.830281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401630, 20.278751, 8.381338>,  <17.663305, 19.487667, 8.253607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401630, 20.278751, 8.381338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.046703, 20.095444, 8.360726>,  <16.833748, 19.985458, 8.348359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.046703, 20.095444, 8.360726>,  <17.401630, 20.278751, 8.381338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.046703, 20.095444, 8.360726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318074, 0.527268, 0.787919,
		-0.333910, 0.715525, -0.613618,
		-0.887318, -0.458270, -0.051530,
		16.780508, 19.957962, 8.345267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013870, 20.786909, 8.405822>,  <17.401630, 20.278751, 8.381338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013870, 20.786909, 8.405822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806923, 20.466534, 8.526374>,  <16.682755, 20.274309, 8.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806923, 20.466534, 8.526374>,  <17.013870, 20.786909, 8.405822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806923, 20.466534, 8.526374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402806, 0.538646, 0.740005,
		-0.755035, 0.261457, -0.601301,
		-0.517368, -0.800937, 0.301380,
		16.651712, 20.226252, 8.616788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339596, 20.959974, 8.575199>,  <17.013870, 20.786909, 8.405822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339596, 20.959974, 8.575199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385242, 20.635975, 8.805288>,  <16.412630, 20.441576, 8.943341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385242, 20.635975, 8.805288>,  <16.339596, 20.959974, 8.575199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385242, 20.635975, 8.805288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203714, 0.547622, 0.811548,
		-0.972357, -0.209790, -0.102517,
		0.114115, -0.809999, 0.575222,
		16.419477, 20.392975, 8.977855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814067, 20.940443, 9.091779>,  <16.339596, 20.959974, 8.575199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814067, 20.940443, 9.091779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068287, 20.686356, 9.267312>,  <16.220819, 20.533903, 9.372632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068287, 20.686356, 9.267312>,  <15.814067, 20.940443, 9.091779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068287, 20.686356, 9.267312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212124, 0.402850, 0.890346,
		-0.742347, -0.658947, 0.121286,
		0.635551, -0.635217, 0.438833,
		16.258951, 20.495790, 9.398962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465744, 20.638529, 9.732550>,  <15.814067, 20.940443, 9.091779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465744, 20.638529, 9.732550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854800, 20.563816, 9.787807>,  <16.088234, 20.518988, 9.820962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854800, 20.563816, 9.787807>,  <15.465744, 20.638529, 9.732550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854800, 20.563816, 9.787807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086993, 0.258544, 0.962074,
		-0.215414, -0.947770, 0.235222,
		0.972640, -0.186781, 0.138143,
		16.146593, 20.507782, 9.829250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488379, 20.125034, 10.328362>,  <15.465744, 20.638529, 9.732550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488379, 20.125034, 10.328362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842330, 20.307316, 10.289741>,  <16.054701, 20.416685, 10.266567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842330, 20.307316, 10.289741>,  <15.488379, 20.125034, 10.328362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842330, 20.307316, 10.289741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003215, 0.201300, 0.979524,
		0.465811, -0.867070, 0.176661,
		0.884879, 0.455705, -0.096555,
		16.107794, 20.444027, 10.260774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.949094, 19.863644, 10.896948>,  <15.488379, 20.125034, 10.328362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.949094, 19.863644, 10.896948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077950, 20.219860, 10.768474>,  <16.155262, 20.433590, 10.691389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077950, 20.219860, 10.768474>,  <15.949094, 19.863644, 10.896948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077950, 20.219860, 10.768474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048566, 0.323280, 0.945056,
		0.945446, -0.320038, 0.060891,
		0.322139, 0.890542, -0.321186,
		16.174591, 20.487022, 10.672117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513542, 20.067907, 11.253825>,  <15.949094, 19.863644, 10.896948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513542, 20.067907, 11.253825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378391, 20.425461, 11.135972>,  <16.297300, 20.639994, 11.065260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378391, 20.425461, 11.135972>,  <16.513542, 20.067907, 11.253825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378391, 20.425461, 11.135972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021909, 0.320428, 0.947019,
		0.940936, 0.313520, -0.127849,
		-0.337876, 0.893885, -0.294633,
		16.277029, 20.693626, 11.047582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772795, 20.485052, 11.750591>,  <16.513542, 20.067907, 11.253825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772795, 20.485052, 11.750591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545364, 20.739323, 11.541733>,  <16.408907, 20.891886, 11.416418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545364, 20.739323, 11.541733>,  <16.772795, 20.485052, 11.750591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545364, 20.739323, 11.541733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092785, 0.581122, 0.808510,
		0.817381, 0.508147, -0.271431,
		-0.568576, 0.635677, -0.522146,
		16.374792, 20.930025, 11.385089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011967, 21.241436, 11.857532>,  <16.772795, 20.485052, 11.750591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011967, 21.241436, 11.857532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643929, 21.296818, 11.710968>,  <16.423105, 21.330046, 11.623030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643929, 21.296818, 11.710968>,  <17.011967, 21.241436, 11.857532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643929, 21.296818, 11.710968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175834, 0.689898, 0.702227,
		0.350011, 0.710543, -0.610427,
		-0.920095, 0.138453, -0.366410,
		16.367901, 21.338354, 11.601046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940552, 21.985455, 11.745360>,  <17.011967, 21.241436, 11.857532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940552, 21.985455, 11.745360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.584507, 21.813313, 11.805356>,  <16.370880, 21.710028, 11.841353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.584507, 21.813313, 11.805356>,  <16.940552, 21.985455, 11.745360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584507, 21.813313, 11.805356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143528, 0.577072, 0.803983,
		-0.432551, 0.694107, -0.575426,
		-0.890112, -0.430353, 0.149989,
		16.317474, 21.684206, 11.850353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467283, 22.534451, 11.906899>,  <16.940552, 21.985455, 11.745360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467283, 22.534451, 11.906899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.306541, 22.197628, 12.050817>,  <16.210096, 21.995535, 12.137167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.306541, 22.197628, 12.050817>,  <16.467283, 22.534451, 11.906899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306541, 22.197628, 12.050817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231882, 0.473686, 0.849619,
		-0.885857, 0.257995, -0.385611,
		-0.401856, -0.842057, 0.359794,
		16.185984, 21.945011, 12.158754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888779, 22.787676, 12.140357>,  <16.467283, 22.534451, 11.906899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888779, 22.787676, 12.140357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.966500, 22.443565, 12.328896>,  <16.013134, 22.237099, 12.442019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.966500, 22.443565, 12.328896>,  <15.888779, 22.787676, 12.140357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966500, 22.443565, 12.328896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144529, 0.450153, 0.881177,
		-0.970236, -0.239339, -0.036869,
		0.194304, -0.860278, 0.471346,
		16.024792, 22.185482, 12.470300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470069, 22.793062, 12.769143>,  <15.888779, 22.787676, 12.140357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470069, 22.793062, 12.769143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754609, 22.518955, 12.831611>,  <15.925333, 22.354490, 12.869091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754609, 22.518955, 12.831611>,  <15.470069, 22.793062, 12.769143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754609, 22.518955, 12.831611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033365, 0.254873, 0.966399,
		-0.702046, -0.682236, 0.204168,
		0.711349, -0.685269, 0.156170,
		15.968014, 22.313375, 12.878462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179840, 22.328558, 13.374186>,  <15.470069, 22.793062, 12.769143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179840, 22.328558, 13.374186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578639, 22.340897, 13.345771>,  <15.817918, 22.348299, 13.328722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578639, 22.340897, 13.345771>,  <15.179840, 22.328558, 13.374186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578639, 22.340897, 13.345771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064513, 0.176658, 0.982156,
		0.042842, -0.983789, 0.174138,
		0.996997, 0.030843, -0.071036,
		15.877738, 22.350151, 13.324460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519214, 22.048132, 14.103695>,  <15.179840, 22.328558, 13.374186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519214, 22.048132, 14.103695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.824233, 22.207157, 13.899552>,  <16.007244, 22.302572, 13.777067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.824233, 22.207157, 13.899552>,  <15.519214, 22.048132, 14.103695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.824233, 22.207157, 13.899552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393600, 0.340969, 0.853709,
		0.513421, -0.851870, 0.103523,
		0.762547, 0.397566, -0.510357,
		16.052998, 22.326427, 13.746446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215212, 21.835926, 14.440421>,  <15.519214, 22.048132, 14.103695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215212, 21.835926, 14.440421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238979, 22.191353, 14.258470>,  <16.253241, 22.404610, 14.149299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238979, 22.191353, 14.258470>,  <16.215212, 21.835926, 14.440421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238979, 22.191353, 14.258470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565066, 0.345708, 0.749124,
		0.822904, -0.301548, -0.481558,
		0.059418, 0.888569, -0.454879,
		16.256805, 22.457924, 14.122005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826880, 21.993130, 14.593261>,  <16.215212, 21.835926, 14.440421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826880, 21.993130, 14.593261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670948, 22.348385, 14.495900>,  <16.577389, 22.561539, 14.437484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670948, 22.348385, 14.495900>,  <16.826880, 21.993130, 14.593261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670948, 22.348385, 14.495900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436343, 0.410902, 0.800478,
		0.810948, 0.205844, -0.547714,
		-0.389831, 0.888137, -0.243402,
		16.553999, 22.614826, 14.422879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341333, 22.430037, 14.822533>,  <16.826880, 21.993130, 14.593261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341333, 22.430037, 14.822533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037975, 22.683136, 14.759973>,  <16.855961, 22.834995, 14.722437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037975, 22.683136, 14.759973>,  <17.341333, 22.430037, 14.822533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037975, 22.683136, 14.759973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418262, 0.656484, 0.627762,
		0.499891, 0.410677, -0.762531,
		-0.758397, 0.632750, -0.156400,
		16.810455, 22.872961, 14.713053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712889, 22.957544, 14.732398>,  <17.341333, 22.430037, 14.822533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712889, 22.957544, 14.732398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.353920, 23.098927, 14.838006>,  <17.138538, 23.183756, 14.901371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.353920, 23.098927, 14.838006>,  <17.712889, 22.957544, 14.732398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353920, 23.098927, 14.838006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416412, 0.480943, 0.771554,
		0.145730, 0.802349, -0.578790,
		-0.897421, 0.353454, 0.264020,
		17.084694, 23.204962, 14.917212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862041, 23.652275, 14.961927>,  <17.712889, 22.957544, 14.732398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862041, 23.652275, 14.961927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496319, 23.567059, 15.099711>,  <17.276884, 23.515928, 15.182382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496319, 23.567059, 15.099711>,  <17.862041, 23.652275, 14.961927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496319, 23.567059, 15.099711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268903, 0.316683, 0.909617,
		-0.302873, 0.924297, -0.232258,
		-0.914308, -0.213044, 0.344461,
		17.222027, 23.503145, 15.203050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680017, 24.184788, 15.277971>,  <17.862041, 23.652275, 14.961927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680017, 24.184788, 15.277971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449615, 23.915409, 15.463307>,  <17.311375, 23.753782, 15.574510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449615, 23.915409, 15.463307>,  <17.680017, 24.184788, 15.277971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449615, 23.915409, 15.463307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268633, 0.379391, 0.885381,
		-0.772045, 0.634453, -0.037621,
		-0.576006, -0.673448, 0.463342,
		17.276814, 23.713375, 15.602310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222990, 24.540911, 15.834397>,  <17.680017, 24.184788, 15.277971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222990, 24.540911, 15.834397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272575, 24.151882, 15.913129>,  <17.302326, 23.918465, 15.960368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272575, 24.151882, 15.913129>,  <17.222990, 24.540911, 15.834397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272575, 24.151882, 15.913129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333112, 0.227636, 0.914996,
		-0.934703, -0.047860, 0.352193,
		0.123964, -0.972569, 0.196829,
		17.309765, 23.860111, 15.972178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943560, 24.459297, 16.511065>,  <17.222990, 24.540911, 15.834397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943560, 24.459297, 16.511065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212341, 24.172459, 16.437037>,  <17.373611, 24.000357, 16.392620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212341, 24.172459, 16.437037>,  <16.943560, 24.459297, 16.511065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212341, 24.172459, 16.437037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351939, 0.089316, 0.931752,
		-0.651625, -0.691229, 0.312390,
		0.671956, -0.717095, -0.185070,
		17.413929, 23.957331, 16.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286299, 24.297770, 17.171329>,  <16.943560, 24.459297, 16.511065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286299, 24.297770, 17.171329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498737, 24.003345, 17.003447>,  <17.626200, 23.826691, 16.902718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498737, 24.003345, 17.003447>,  <17.286299, 24.297770, 17.171329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498737, 24.003345, 17.003447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606075, -0.016145, 0.795243,
		-0.592123, -0.676724, 0.437532,
		0.531096, -0.736059, -0.419706,
		17.658066, 23.782528, 16.877535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347622, 23.667681, 17.606184>,  <17.286299, 24.297770, 17.171329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.347622, 23.667681, 17.606184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675358, 23.729721, 17.385412>,  <17.872000, 23.766945, 17.252949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675358, 23.729721, 17.385412>,  <17.347622, 23.667681, 17.606184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675358, 23.729721, 17.385412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547295, 0.075108, 0.833563,
		0.170743, -0.985039, -0.023349,
		0.819338, 0.155104, -0.551931,
		17.921160, 23.776251, 17.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816259, 23.280024, 17.881773>,  <17.347622, 23.667681, 17.606184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816259, 23.280024, 17.881773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046326, 23.526951, 17.667072>,  <18.184366, 23.675106, 17.538252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046326, 23.526951, 17.667072>,  <17.816259, 23.280024, 17.881773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046326, 23.526951, 17.667072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567277, 0.171762, 0.805416,
		0.589391, -0.767735, -0.251398,
		0.575165, 0.617317, -0.536754,
		18.218876, 23.712147, 17.506046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502134, 23.019026, 17.893942>,  <17.816259, 23.280024, 17.881773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502134, 23.019026, 17.893942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573399, 23.404453, 17.814146>,  <18.616158, 23.635710, 17.766270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573399, 23.404453, 17.814146>,  <18.502134, 23.019026, 17.893942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573399, 23.404453, 17.814146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593804, 0.056377, 0.802632,
		0.784638, -0.261453, -0.562126,
		0.178160, 0.963568, -0.199487,
		18.626846, 23.693523, 17.754299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200300, 23.108229, 17.953690>,  <18.502134, 23.019026, 17.893942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200300, 23.108229, 17.953690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026905, 23.465614, 18.000700>,  <18.922867, 23.680046, 18.028906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026905, 23.465614, 18.000700>,  <19.200300, 23.108229, 17.953690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026905, 23.465614, 18.000700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573447, 0.172888, 0.800793,
		0.695159, 0.414531, -0.587298,
		-0.433490, 0.893462, 0.117527,
		18.896858, 23.733652, 18.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681477, 23.398792, 18.125616>,  <19.200300, 23.108229, 17.953690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681477, 23.398792, 18.125616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379517, 23.631813, 18.246122>,  <19.198341, 23.771626, 18.318426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379517, 23.631813, 18.246122>,  <19.681477, 23.398792, 18.125616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379517, 23.631813, 18.246122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466407, 0.153921, 0.871076,
		0.461075, 0.798087, -0.387901,
		-0.754900, 0.582551, 0.301264,
		19.153046, 23.806578, 18.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000408, 23.921717, 18.490551>,  <19.681477, 23.398792, 18.125616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000408, 23.921717, 18.490551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629505, 23.931118, 18.640026>,  <19.406963, 23.936758, 18.729712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629505, 23.931118, 18.640026>,  <20.000408, 23.921717, 18.490551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629505, 23.931118, 18.640026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374097, 0.100025, 0.921980,
		-0.015708, 0.994707, -0.101541,
		-0.927257, 0.023504, 0.373688,
		19.351328, 23.938169, 18.752132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090525, 24.461374, 18.997087>,  <20.000408, 23.921717, 18.490551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090525, 24.461374, 18.997087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754295, 24.264755, 19.088139>,  <19.552557, 24.146784, 19.142769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754295, 24.264755, 19.088139>,  <20.090525, 24.461374, 18.997087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754295, 24.264755, 19.088139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192418, 0.121862, 0.973717,
		-0.506369, 0.862281, -0.007851,
		-0.840575, -0.491549, 0.227626,
		19.502123, 24.117290, 19.156425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819094, 24.870035, 19.613550>,  <20.090525, 24.461374, 18.997087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819094, 24.870035, 19.613550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624241, 24.520706, 19.612646>,  <19.507328, 24.311108, 19.612103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624241, 24.520706, 19.612646>,  <19.819094, 24.870035, 19.613550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624241, 24.520706, 19.612646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219797, -0.125107, 0.967490,
		-0.845216, 0.470800, 0.252898,
		-0.487134, -0.873324, -0.002262,
		19.478100, 24.258709, 19.611967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360304, 24.853088, 20.153433>,  <19.819094, 24.870035, 19.613550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360304, 24.853088, 20.153433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423447, 24.466900, 20.070541>,  <19.461332, 24.235186, 20.020805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423447, 24.466900, 20.070541>,  <19.360304, 24.853088, 20.153433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423447, 24.466900, 20.070541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254954, -0.162896, 0.953133,
		-0.953981, -0.203294, 0.220437,
		0.157858, -0.965472, -0.207230,
		19.470804, 24.177258, 20.008371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082035, 24.524778, 20.646875>,  <19.360304, 24.853088, 20.153433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082035, 24.524778, 20.646875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325275, 24.241806, 20.502789>,  <19.471220, 24.072023, 20.416336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325275, 24.241806, 20.502789>,  <19.082035, 24.524778, 20.646875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325275, 24.241806, 20.502789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220563, -0.285330, 0.932705,
		-0.762604, -0.646629, -0.017477,
		0.608101, -0.707430, -0.360216,
		19.507706, 24.029577, 20.394724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972610, 23.976830, 21.111917>,  <19.082035, 24.524778, 20.646875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972610, 23.976830, 21.111917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314198, 23.871384, 20.932476>,  <19.519150, 23.808115, 20.824810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314198, 23.871384, 20.932476>,  <18.972610, 23.976830, 21.111917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314198, 23.871384, 20.932476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394709, -0.233571, 0.888622,
		-0.339039, -0.935922, -0.095408,
		0.853966, -0.263619, -0.448606,
		19.570387, 23.792299, 20.797894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180576, 23.295992, 21.422894>,  <18.972610, 23.976830, 21.111917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180576, 23.295992, 21.422894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523762, 23.438652, 21.275002>,  <19.729673, 23.524248, 21.186266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523762, 23.438652, 21.275002>,  <19.180576, 23.295992, 21.422894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523762, 23.438652, 21.275002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473015, -0.267710, 0.839397,
		0.200390, -0.895060, -0.398386,
		0.857963, 0.356650, -0.369731,
		19.781151, 23.545647, 21.164082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758615, 22.744545, 21.554184>,  <19.180576, 23.295992, 21.422894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758615, 22.744545, 21.554184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.903511, 23.115677, 21.518595>,  <19.990448, 23.338356, 21.497242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.903511, 23.115677, 21.518595>,  <19.758615, 22.744545, 21.554184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903511, 23.115677, 21.518595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328938, -0.037939, 0.943589,
		0.872114, -0.371070, -0.318941,
		0.362238, 0.927829, -0.088972,
		20.012182, 23.394026, 21.491903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323708, 22.275827, 21.974110>,  <19.758615, 22.744545, 21.554184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323708, 22.275827, 21.974110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.129677, 22.050297, 22.241482>,  <19.013258, 21.914978, 22.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.129677, 22.050297, 22.241482>,  <19.323708, 22.275827, 21.974110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.129677, 22.050297, 22.241482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451833, -0.492840, -0.743610,
		0.748697, -0.662726, -0.015692,
		-0.485076, -0.563829, 0.668430,
		18.984154, 21.881147, 22.442011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455418, 21.595274, 21.794291>,  <19.323708, 22.275827, 21.974110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455418, 21.595274, 21.794291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.104839, 21.646339, 21.979996>,  <18.894491, 21.676979, 22.091419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.104839, 21.646339, 21.979996>,  <19.455418, 21.595274, 21.794291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104839, 21.646339, 21.979996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474614, -0.391521, -0.788323,
		0.081128, -0.911270, 0.403739,
		-0.876448, 0.127665, 0.464265,
		18.841906, 21.684639, 22.119276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236490, 20.984438, 21.720840>,  <19.455418, 21.595274, 21.794291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236490, 20.984438, 21.720840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927525, 21.228912, 21.789927>,  <18.742146, 21.375597, 21.831379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927525, 21.228912, 21.789927>,  <19.236490, 20.984438, 21.720840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927525, 21.228912, 21.789927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563705, -0.534442, -0.629768,
		-0.292598, -0.583803, 0.757338,
		-0.772414, 0.611184, 0.172716,
		18.695801, 21.412268, 21.841742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690964, 20.563938, 21.730345>,  <19.236490, 20.984438, 21.720840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690964, 20.563938, 21.730345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543938, 20.930138, 21.664915>,  <18.455723, 21.149858, 21.625658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543938, 20.930138, 21.664915>,  <18.690964, 20.563938, 21.730345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543938, 20.930138, 21.664915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609099, -0.369896, -0.701553,
		-0.702777, -0.158232, 0.693590,
		-0.367564, 0.915500, -0.163575,
		18.433668, 21.204788, 21.615843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022017, 20.341433, 21.459909>,  <18.690964, 20.563938, 21.730345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022017, 20.341433, 21.459909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052120, 20.731972, 21.378838>,  <18.070183, 20.966295, 21.330194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052120, 20.731972, 21.378838>,  <18.022017, 20.341433, 21.459909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052120, 20.731972, 21.378838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660918, -0.103359, -0.743306,
		-0.746675, 0.189896, 0.637508,
		0.075259, 0.976348, -0.202681,
		18.074697, 21.024876, 21.318033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368454, 20.609640, 21.358097>,  <18.022017, 20.341433, 21.459909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368454, 20.609640, 21.358097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592102, 20.887478, 21.177023>,  <17.726292, 21.054180, 21.068378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592102, 20.887478, 21.177023>,  <17.368454, 20.609640, 21.358097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592102, 20.887478, 21.177023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575872, -0.067445, -0.814753,
		-0.596453, 0.716235, 0.362287,
		0.559120, 0.694593, -0.452687,
		17.759838, 21.095856, 21.041216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976711, 21.104973, 21.001764>,  <17.368454, 20.609640, 21.358097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976711, 21.104973, 21.001764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336555, 21.162724, 20.836908>,  <17.552462, 21.197374, 20.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336555, 21.162724, 20.836908>,  <16.976711, 21.104973, 21.001764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336555, 21.162724, 20.836908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418741, 0.017346, -0.907940,
		-0.123934, 0.989371, 0.076060,
		0.899609, 0.144374, -0.412140,
		17.606438, 21.206036, 20.713266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928175, 21.730648, 20.494133>,  <16.976711, 21.104973, 21.001764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928175, 21.730648, 20.494133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212261, 21.466709, 20.395996>,  <17.382713, 21.308346, 20.337114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212261, 21.466709, 20.395996>,  <16.928175, 21.730648, 20.494133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212261, 21.466709, 20.395996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312512, 0.016773, -0.949766,
		0.630816, 0.751212, -0.194299,
		0.710216, -0.659848, -0.245343,
		17.425325, 21.268755, 20.322393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437166, 21.946819, 19.909542>,  <16.928175, 21.730648, 20.494133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437166, 21.946819, 19.909542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416920, 21.547558, 19.896105>,  <17.404772, 21.308001, 19.888042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416920, 21.547558, 19.896105>,  <17.437166, 21.946819, 19.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416920, 21.547558, 19.896105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287292, 0.046765, -0.956701,
		0.956505, -0.038774, -0.289129,
		-0.050616, -0.998153, -0.033591,
		17.401735, 21.248112, 19.886028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348429, 21.892904, 19.236347>,  <17.437166, 21.946819, 19.909542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348429, 21.892904, 19.236347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368935, 21.508873, 19.346346>,  <17.381239, 21.278454, 19.412346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368935, 21.508873, 19.346346>,  <17.348429, 21.892904, 19.236347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368935, 21.508873, 19.346346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244123, -0.279053, -0.928727,
		0.968388, -0.019522, -0.248683,
		0.051265, -0.960077, 0.274998,
		17.384314, 21.220850, 19.428844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871820, 21.503479, 18.906591>,  <17.348429, 21.892904, 19.236347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871820, 21.503479, 18.906591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.582310, 21.246841, 19.008184>,  <17.408604, 21.092859, 19.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.582310, 21.246841, 19.008184>,  <17.871820, 21.503479, 18.906591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.582310, 21.246841, 19.008184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055000, -0.313265, -0.948072,
		0.687840, -0.700160, 0.191446,
		-0.723776, -0.641593, 0.253985,
		17.365177, 21.054363, 19.084379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.113617, 20.989164, 18.582710>,  <17.871820, 21.503479, 18.906591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.113617, 20.989164, 18.582710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745106, 20.860302, 18.669857>,  <17.524000, 20.782986, 18.722145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745106, 20.860302, 18.669857>,  <18.113617, 20.989164, 18.582710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745106, 20.860302, 18.669857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032250, -0.621554, -0.782707,
		0.387568, -0.714064, 0.583013,
		-0.921277, -0.322154, 0.217866,
		17.468723, 20.763657, 18.735216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074574, 20.229225, 18.597849>,  <18.113617, 20.989164, 18.582710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074574, 20.229225, 18.597849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.704906, 20.361778, 18.521851>,  <17.483107, 20.441311, 18.476252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.704906, 20.361778, 18.521851>,  <18.074574, 20.229225, 18.597849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704906, 20.361778, 18.521851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006539, -0.511040, -0.859532,
		-0.381928, -0.793110, 0.474455,
		-0.924169, 0.331381, -0.189994,
		17.427656, 20.461193, 18.464851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796175, 19.688322, 18.321968>,  <18.074574, 20.229225, 18.597849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796175, 19.688322, 18.321968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550873, 19.981583, 18.204388>,  <17.403692, 20.157539, 18.133839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550873, 19.981583, 18.204388>,  <17.796175, 19.688322, 18.321968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550873, 19.981583, 18.204388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083623, -0.430314, -0.898797,
		-0.785447, -0.526610, 0.325200,
		-0.613254, 0.733152, -0.293953,
		17.366896, 20.201529, 18.116201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220667, 19.342567, 17.935553>,  <17.796175, 19.688322, 18.321968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220667, 19.342567, 17.935553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242615, 19.721184, 17.808401>,  <17.255783, 19.948355, 17.732109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242615, 19.721184, 17.808401>,  <17.220667, 19.342567, 17.935553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242615, 19.721184, 17.808401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425408, -0.265859, -0.865070,
		-0.903337, 0.182693, 0.388080,
		0.054868, 0.946542, -0.317880,
		17.259075, 20.005146, 17.713037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543156, 19.497065, 17.683651>,  <17.220667, 19.342567, 17.935553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543156, 19.497065, 17.683651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777828, 19.771973, 17.512320>,  <16.918633, 19.936918, 17.409521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777828, 19.771973, 17.512320>,  <16.543156, 19.497065, 17.683651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777828, 19.771973, 17.512320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458097, -0.154510, -0.875370,
		-0.667797, 0.709780, 0.224188,
		0.586681, 0.687269, -0.428330,
		16.953833, 19.978153, 17.383821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071089, 19.783133, 17.243753>,  <16.543156, 19.497065, 17.683651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071089, 19.783133, 17.243753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430019, 19.899933, 17.111368>,  <16.645378, 19.970013, 17.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430019, 19.899933, 17.111368>,  <16.071089, 19.783133, 17.243753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430019, 19.899933, 17.111368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327153, -0.063307, -0.942848,
		-0.296267, 0.954320, 0.038722,
		0.897328, 0.292003, -0.330964,
		16.699217, 19.987534, 17.012079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936287, 20.205666, 16.719124>,  <16.071089, 19.783133, 17.243753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936287, 20.205666, 16.719124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318645, 20.109249, 16.652002>,  <16.548061, 20.051399, 16.611729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318645, 20.109249, 16.652002>,  <15.936287, 20.205666, 16.719124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318645, 20.109249, 16.652002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195595, -0.096241, -0.975951,
		0.219095, 0.965731, -0.139143,
		0.955898, -0.241042, -0.167806,
		16.605415, 20.036936, 16.601660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108816, 20.590635, 16.136072>,  <15.936287, 20.205666, 16.719124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108816, 20.590635, 16.136072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350021, 20.272224, 16.156908>,  <16.494745, 20.081177, 16.169409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350021, 20.272224, 16.156908>,  <16.108816, 20.590635, 16.136072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350021, 20.272224, 16.156908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234742, -0.239472, -0.942098,
		0.762411, 0.555870, -0.331266,
		0.603013, -0.796029, 0.052090,
		16.530926, 20.033415, 16.172535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557594, 20.670574, 15.598384>,  <16.108816, 20.590635, 16.136072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557594, 20.670574, 15.598384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551182, 20.280315, 15.685884>,  <16.547335, 20.046160, 15.738383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551182, 20.280315, 15.685884>,  <16.557594, 20.670574, 15.598384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551182, 20.280315, 15.685884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068553, -0.217190, -0.973719,
		0.997519, -0.030608, -0.063402,
		-0.016033, -0.975649, 0.218750,
		16.546371, 19.987621, 15.751509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065981, 20.357353, 15.155491>,  <16.557594, 20.670574, 15.598384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065981, 20.357353, 15.155491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843307, 20.054832, 15.292958>,  <16.709703, 19.873320, 15.375439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843307, 20.054832, 15.292958>,  <17.065981, 20.357353, 15.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843307, 20.054832, 15.292958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165103, -0.304717, -0.938024,
		0.814152, -0.578924, 0.044763,
		-0.556685, -0.756303, 0.343668,
		16.676302, 19.827942, 15.396059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333334, 19.715494, 14.810347>,  <17.065981, 20.357353, 15.155491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333334, 19.715494, 14.810347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950111, 19.644619, 14.900445>,  <16.720179, 19.602093, 14.954504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950111, 19.644619, 14.900445>,  <17.333334, 19.715494, 14.810347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950111, 19.644619, 14.900445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185168, -0.217152, -0.958414,
		0.218735, -0.959921, 0.175233,
		-0.958054, -0.177191, 0.225246,
		16.662695, 19.591461, 14.968019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982786, 19.308950, 14.335140>,  <17.333334, 19.715494, 14.810347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982786, 19.308950, 14.335140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.641472, 19.433929, 14.502126>,  <16.436684, 19.508917, 14.602317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.641472, 19.433929, 14.502126>,  <16.982786, 19.308950, 14.335140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641472, 19.433929, 14.502126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454622, -0.053676, -0.889066,
		-0.255379, -0.948417, 0.187847,
		-0.853288, 0.312448, 0.417463,
		16.385485, 19.527664, 14.627364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469200, 18.897127, 14.026794>,  <16.982786, 19.308950, 14.335140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.469200, 18.897127, 14.026794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263874, 19.208782, 14.170711>,  <16.140678, 19.395775, 14.257060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263874, 19.208782, 14.170711>,  <16.469200, 18.897127, 14.026794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263874, 19.208782, 14.170711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532631, 0.039490, -0.845425,
		-0.672912, -0.625606, 0.394723,
		-0.513315, 0.779139, 0.359791,
		16.109879, 19.442524, 14.278647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776234, 18.802891, 13.876175>,  <16.469200, 18.897127, 14.026794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776234, 18.802891, 13.876175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712348, 19.187004, 13.967694>,  <15.674016, 19.417473, 14.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712348, 19.187004, 13.967694>,  <15.776234, 18.802891, 13.876175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712348, 19.187004, 13.967694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722626, 0.044171, -0.689826,
		-0.672534, -0.275511, 0.686870,
		-0.159715, 0.960283, 0.228798,
		15.664433, 19.475088, 14.036334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039976, 18.922276, 13.971299>,  <15.776234, 18.802891, 13.876175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039976, 18.922276, 13.971299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211627, 19.270996, 13.876801>,  <15.314617, 19.480228, 13.820103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211627, 19.270996, 13.876801>,  <15.039976, 18.922276, 13.971299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211627, 19.270996, 13.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663416, 0.126717, -0.737443,
		-0.612968, 0.473184, 0.632745,
		0.429126, 0.871802, -0.236244,
		15.340364, 19.532537, 13.805928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544326, 19.335190, 13.690159>,  <15.039976, 18.922276, 13.971299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544326, 19.335190, 13.690159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.878800, 19.499020, 13.544259>,  <15.079485, 19.597317, 13.456719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.878800, 19.499020, 13.544259>,  <14.544326, 19.335190, 13.690159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878800, 19.499020, 13.544259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425300, 0.064332, -0.902763,
		-0.346283, 0.910006, 0.227986,
		0.836186, 0.409574, -0.364749,
		15.129656, 19.621891, 13.434834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336884, 19.784254, 13.282024>,  <14.544326, 19.335190, 13.690159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336884, 19.784254, 13.282024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711263, 19.741844, 13.147704>,  <14.935890, 19.716398, 13.067112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711263, 19.741844, 13.147704>,  <14.336884, 19.784254, 13.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711263, 19.741844, 13.147704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349705, -0.167857, -0.921700,
		0.041355, 0.980093, -0.194182,
		0.935947, -0.106024, -0.335801,
		14.992046, 19.710037, 13.046964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400471, 20.074787, 12.524720>,  <14.336884, 19.784254, 13.282024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400471, 20.074787, 12.524720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724746, 19.844067, 12.564884>,  <14.919312, 19.705633, 12.588983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724746, 19.844067, 12.564884>,  <14.400471, 20.074787, 12.524720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724746, 19.844067, 12.564884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203833, -0.438832, -0.875145,
		0.548850, 0.689003, -0.473327,
		0.810689, -0.576803, 0.100411,
		14.967953, 19.671026, 12.595008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.726515, 20.029818, 11.843358>,  <14.400471, 20.074787, 12.524720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.726515, 20.029818, 11.843358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895034, 19.717731, 12.028301>,  <14.996145, 19.530479, 12.139267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895034, 19.717731, 12.028301>,  <14.726515, 20.029818, 11.843358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895034, 19.717731, 12.028301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120695, -0.553510, -0.824051,
		0.898856, 0.291366, -0.327360,
		0.421297, -0.780213, 0.462359,
		15.021423, 19.483667, 12.167009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245495, 19.715654, 11.402162>,  <14.726515, 20.029818, 11.843358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245495, 19.715654, 11.402162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140836, 19.424362, 11.655529>,  <15.078040, 19.249586, 11.807549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140836, 19.424362, 11.655529>,  <15.245495, 19.715654, 11.402162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140836, 19.424362, 11.655529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008007, -0.657895, -0.753067,
		0.965130, -0.191966, 0.177968,
		-0.261647, -0.728233, 0.633418,
		15.062342, 19.205893, 11.845554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484878, 19.056379, 11.087535>,  <15.245495, 19.715654, 11.402162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484878, 19.056379, 11.087535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199922, 18.963688, 11.352504>,  <15.028948, 18.908073, 11.511485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199922, 18.963688, 11.352504>,  <15.484878, 19.056379, 11.087535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199922, 18.963688, 11.352504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142100, -0.876727, -0.459518,
		0.687247, -0.421486, 0.591643,
		-0.712390, -0.231729, 0.662421,
		14.986204, 18.894169, 11.551230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635867, 18.449879, 11.397859>,  <15.484878, 19.056379, 11.087535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635867, 18.449879, 11.397859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245400, 18.489132, 11.475285>,  <15.011120, 18.512684, 11.521740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245400, 18.489132, 11.475285>,  <15.635867, 18.449879, 11.397859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245400, 18.489132, 11.475285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162119, -0.922689, -0.349803,
		0.144273, -0.372847, 0.916608,
		-0.976167, 0.098132, 0.193565,
		14.952550, 18.518572, 11.533354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435403, 17.793802, 11.651880>,  <15.635867, 18.449879, 11.397859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435403, 17.793802, 11.651880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102239, 17.978554, 11.529943>,  <14.902340, 18.089405, 11.456780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102239, 17.978554, 11.529943>,  <15.435403, 17.793802, 11.651880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102239, 17.978554, 11.529943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254405, -0.808758, -0.530272,
		-0.491464, -0.364116, 0.791127,
		-0.832911, 0.461876, -0.304843,
		14.852365, 18.117117, 11.438490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942778, 17.219980, 11.721574>,  <15.435403, 17.793802, 11.651880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942778, 17.219980, 11.721574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781024, 17.489632, 11.474340>,  <14.683972, 17.651423, 11.326000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781024, 17.489632, 11.474340>,  <14.942778, 17.219980, 11.721574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781024, 17.489632, 11.474340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218101, -0.727386, -0.650648,
		-0.888204, -0.128307, 0.441171,
		-0.404384, 0.674127, -0.618083,
		14.659709, 17.691870, 11.288916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298625, 16.886913, 11.521723>,  <14.942778, 17.219980, 11.721574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.298625, 16.886913, 11.521723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357184, 17.169163, 11.244403>,  <14.392321, 17.338512, 11.078011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357184, 17.169163, 11.244403>,  <14.298625, 16.886913, 11.521723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357184, 17.169163, 11.244403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121073, -0.682801, -0.720503,
		-0.981788, 0.189421, -0.014530,
		0.146400, 0.705622, -0.693300,
		14.401104, 17.380850, 11.036413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806477, 16.701641, 11.069809>,  <14.298625, 16.886913, 11.521723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806477, 16.701641, 11.069809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060487, 16.934223, 10.866378>,  <14.212893, 17.073772, 10.744319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060487, 16.934223, 10.866378>,  <13.806477, 16.701641, 11.069809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.060487, 16.934223, 10.866378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097690, -0.592629, -0.799529,
		-0.766289, 0.557404, -0.319532,
		0.635026, 0.581456, -0.508578,
		14.250995, 17.108660, 10.713804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507508, 16.921118, 10.513617>,  <13.806477, 16.701641, 11.069809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507508, 16.921118, 10.513617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891242, 16.964878, 10.409532>,  <14.121482, 16.991135, 10.347081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891242, 16.964878, 10.409532>,  <13.507508, 16.921118, 10.513617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891242, 16.964878, 10.409532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173814, -0.497404, -0.849928,
		-0.222412, 0.860593, -0.458161,
		0.959334, 0.109400, -0.260212,
		14.179042, 16.997698, 10.331468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607818, 17.175459, 9.771811>,  <13.507508, 16.921118, 10.513617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607818, 17.175459, 9.771811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955745, 17.001026, 9.864117>,  <14.164501, 16.896366, 9.919499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955745, 17.001026, 9.864117>,  <13.607818, 17.175459, 9.771811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955745, 17.001026, 9.864117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109992, -0.284553, -0.952329,
		0.480957, 0.853734, -0.199544,
		0.869817, -0.436081, 0.230762,
		14.216690, 16.870201, 9.933346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069589, 17.395937, 9.242978>,  <13.607818, 17.175459, 9.771811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.069589, 17.395937, 9.242978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230895, 17.066570, 9.402659>,  <14.327679, 16.868950, 9.498468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230895, 17.066570, 9.402659>,  <14.069589, 17.395937, 9.242978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230895, 17.066570, 9.402659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148940, -0.371369, -0.916462,
		0.902881, 0.429035, -0.027121,
		0.403266, -0.823416, 0.399202,
		14.351874, 16.819546, 9.522420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780787, 17.110447, 9.045831>,  <14.069589, 17.395937, 9.242978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780787, 17.110447, 9.045831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.510402, 16.827423, 9.128228>,  <14.348170, 16.657608, 9.177667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.510402, 16.827423, 9.128228>,  <14.780787, 17.110447, 9.045831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.510402, 16.827423, 9.128228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208296, -0.084681, -0.974393,
		0.706886, -0.701561, -0.090141,
		-0.675962, -0.707560, 0.205993,
		14.307613, 16.615154, 9.190026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903360, 16.376968, 8.651190>,  <14.780787, 17.110447, 9.045831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.903360, 16.376968, 8.651190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518758, 16.437592, 8.742872>,  <14.287996, 16.473965, 8.797882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518758, 16.437592, 8.742872>,  <14.903360, 16.376968, 8.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518758, 16.437592, 8.742872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265375, -0.295795, -0.917650,
		-0.071278, -0.943152, 0.324628,
		-0.961507, 0.151556, 0.229206,
		14.230306, 16.483059, 8.811634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629871, 15.816116, 8.460567>,  <14.903360, 16.376968, 8.651190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629871, 15.816116, 8.460567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.330789, 16.081615, 8.452832>,  <14.151339, 16.240915, 8.448192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.330789, 16.081615, 8.452832>,  <14.629871, 15.816116, 8.460567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.330789, 16.081615, 8.452832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330488, -0.397233, -0.856144,
		-0.575945, -0.633754, 0.516375,
		-0.747706, 0.663748, -0.019337,
		14.106477, 16.280739, 8.447031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214360, 15.451638, 8.050391>,  <14.629871, 15.816116, 8.460567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214360, 15.451638, 8.050391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105323, 15.835793, 8.073541>,  <14.039900, 16.066286, 8.087430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105323, 15.835793, 8.073541>,  <14.214360, 15.451638, 8.050391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105323, 15.835793, 8.073541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484053, -0.084911, -0.870909,
		-0.831496, -0.265419, 0.488025,
		-0.272594, 0.960387, 0.057874,
		14.023544, 16.123909, 8.090903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737447, 15.357770, 7.570833>,  <14.214360, 15.451638, 8.050391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737447, 15.357770, 7.570833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706801, 15.749969, 7.643222>,  <13.688415, 15.985290, 7.686656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706801, 15.749969, 7.643222>,  <13.737447, 15.357770, 7.570833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706801, 15.749969, 7.643222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651521, 0.088166, -0.753489,
		-0.754752, -0.175635, 0.632062,
		-0.076613, 0.980499, 0.180973,
		13.683818, 16.044119, 7.697514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137630, 15.054255, 7.069016>,  <13.737447, 15.357770, 7.570833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137630, 15.054255, 7.069016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267867, 14.897903, 6.724643>,  <14.346009, 14.804092, 6.518019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267867, 14.897903, 6.724643>,  <14.137630, 15.054255, 7.069016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267867, 14.897903, 6.724643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874072, -0.222778, 0.431704,
		-0.360540, -0.893076, 0.269121,
		0.325590, -0.390878, -0.860933,
		14.365544, 14.780640, 6.466363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529255, 14.348721, 7.245766>,  <14.137630, 15.054255, 7.069016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529255, 14.348721, 7.245766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646083, 14.549934, 6.920398>,  <14.716180, 14.670663, 6.725177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646083, 14.549934, 6.920398>,  <14.529255, 14.348721, 7.245766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646083, 14.549934, 6.920398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935428, 0.026869, 0.352494,
		0.199172, -0.863849, -0.462706,
		0.292069, 0.503035, -0.813420,
		14.733704, 14.700845, 6.676372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180933, 14.006309, 6.912674>,  <14.529255, 14.348721, 7.245766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180933, 14.006309, 6.912674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137153, 14.401497, 6.868975>,  <15.110885, 14.638610, 6.842755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137153, 14.401497, 6.868975>,  <15.180933, 14.006309, 6.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137153, 14.401497, 6.868975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830691, 0.151274, 0.535788,
		0.545869, -0.032110, -0.837255,
		-0.109451, 0.987970, -0.109250,
		15.104318, 14.697888, 6.836200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783232, 14.258492, 6.608759>,  <15.180933, 14.006309, 6.912674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783232, 14.258492, 6.608759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598968, 14.552380, 6.807949>,  <15.488409, 14.728712, 6.927463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598968, 14.552380, 6.807949>,  <15.783232, 14.258492, 6.608759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598968, 14.552380, 6.807949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886594, 0.354507, 0.297113,
		0.041760, 0.578369, -0.814706,
		-0.460660, 0.734721, 0.497974,
		15.460770, 14.772796, 6.957341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167233, 14.916599, 6.506666>,  <15.783232, 14.258492, 6.608759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167233, 14.916599, 6.506666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971704, 14.912258, 6.855592>,  <15.854385, 14.909654, 7.064947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971704, 14.912258, 6.855592>,  <16.167233, 14.916599, 6.506666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971704, 14.912258, 6.855592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691207, 0.605239, 0.394866,
		-0.532244, 0.795970, -0.288354,
		-0.488824, -0.010853, 0.872315,
		15.825056, 14.909002, 7.117286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432947, 14.379639, 6.010156>,  <16.167233, 14.916599, 6.506666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432947, 14.379639, 6.010156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142593, 14.510056, 5.767903>,  <15.968381, 14.588305, 5.622552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142593, 14.510056, 5.767903>,  <16.432947, 14.379639, 6.010156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142593, 14.510056, 5.767903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687497, 0.370798, -0.624385,
		0.020991, -0.869600, -0.493310,
		-0.725884, 0.326043, -0.605631,
		15.924829, 14.607868, 5.586214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462397, 15.124937, 5.686549>,  <16.432947, 14.379639, 6.010156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462397, 15.124937, 5.686549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372414, 14.801266, 5.469432>,  <16.318424, 14.607062, 5.339162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372414, 14.801266, 5.469432>,  <16.462397, 15.124937, 5.686549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372414, 14.801266, 5.469432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324708, 0.462970, -0.824757,
		0.918672, -0.361784, 0.158598,
		-0.224958, -0.809179, -0.542791,
		16.304926, 14.558512, 5.306594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010044, 15.012265, 5.216726>,  <16.462397, 15.124937, 5.686549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010044, 15.012265, 5.216726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690605, 14.841549, 5.046979>,  <16.498941, 14.739119, 4.945130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690605, 14.841549, 5.046979>,  <17.010044, 15.012265, 5.216726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690605, 14.841549, 5.046979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210364, 0.462687, -0.861202,
		0.563902, -0.777027, -0.279720,
		-0.798600, -0.426791, -0.424368,
		16.451025, 14.713511, 4.919668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198385, 14.818638, 4.584178>,  <17.010044, 15.012265, 5.216726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198385, 14.818638, 4.584178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799873, 14.842495, 4.559306>,  <16.560766, 14.856810, 4.544383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799873, 14.842495, 4.559306>,  <17.198385, 14.818638, 4.584178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799873, 14.842495, 4.559306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084864, 0.554538, -0.827820,
		-0.014892, -0.830018, -0.557538,
		-0.996281, 0.059643, -0.062181,
		16.500988, 14.860388, 4.540652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097994, 14.455742, 3.906233>,  <17.198385, 14.818638, 4.584178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097994, 14.455742, 3.906233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813320, 14.728443, 3.974016>,  <16.642515, 14.892064, 4.014687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813320, 14.728443, 3.974016>,  <17.097994, 14.455742, 3.906233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813320, 14.728443, 3.974016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030070, 0.270567, -0.962231,
		-0.701854, -0.679711, -0.213059,
		-0.711686, 0.681753, 0.169460,
		16.599813, 14.932969, 4.024854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599276, 14.473899, 3.326172>,  <17.097994, 14.455742, 3.906233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599276, 14.473899, 3.326172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647385, 14.828300, 3.505295>,  <16.676250, 15.040941, 3.612769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647385, 14.828300, 3.505295>,  <16.599276, 14.473899, 3.326172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647385, 14.828300, 3.505295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139124, 0.431587, -0.891279,
		-0.982944, 0.169498, -0.071356,
		0.120274, 0.886004, 0.447807,
		16.683466, 15.094102, 3.639637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056950, 15.037768, 3.176851>,  <16.599276, 14.473899, 3.326172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056950, 15.037768, 3.176851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400112, 15.218151, 3.275349>,  <16.606009, 15.326381, 3.334448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400112, 15.218151, 3.275349>,  <16.056950, 15.037768, 3.176851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400112, 15.218151, 3.275349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033714, 0.428816, -0.902763,
		-0.512701, 0.782786, 0.352680,
		0.857905, 0.450957, 0.246246,
		16.657484, 15.353438, 3.349223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029945, 15.734647, 2.865852>,  <16.056950, 15.037768, 3.176851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029945, 15.734647, 2.865852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404743, 15.598423, 2.896980>,  <16.629623, 15.516688, 2.915657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404743, 15.598423, 2.896980>,  <16.029945, 15.734647, 2.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404743, 15.598423, 2.896980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267319, 0.555579, -0.787319,
		0.224894, 0.758519, 0.611614,
		0.936997, -0.340560, 0.077820,
		16.685843, 15.496255, 2.920326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573111, 16.329243, 3.080285>,  <16.029945, 15.734647, 2.865852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573111, 16.329243, 3.080285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638668, 16.020027, 2.835157>,  <16.678001, 15.834497, 2.688080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638668, 16.020027, 2.835157>,  <16.573111, 16.329243, 3.080285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638668, 16.020027, 2.835157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172585, 0.634109, -0.753738,
		0.971264, 0.017769, 0.237341,
		0.163893, -0.773040, -0.612821,
		16.687836, 15.788116, 2.651311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227928, 16.345100, 2.790006>,  <16.573111, 16.329243, 3.080285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227928, 16.345100, 2.790006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025864, 16.131565, 2.518763>,  <16.904625, 16.003443, 2.356018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025864, 16.131565, 2.518763>,  <17.227928, 16.345100, 2.790006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025864, 16.131565, 2.518763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331096, 0.605727, -0.723512,
		0.796987, -0.590008, -0.129237,
		-0.505160, -0.533840, -0.678106,
		16.874315, 15.971413, 2.315331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668068, 16.011703, 2.343361>,  <17.227928, 16.345100, 2.790006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668068, 16.011703, 2.343361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321819, 16.102470, 2.164830>,  <17.114071, 16.156931, 2.057711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321819, 16.102470, 2.164830>,  <17.668068, 16.011703, 2.343361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321819, 16.102470, 2.164830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497312, 0.493180, -0.713761,
		0.058154, -0.839810, -0.539756,
		-0.865621, 0.226919, -0.446328,
		17.062134, 16.170546, 2.030931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726967, 15.848680, 1.663734>,  <17.668068, 16.011703, 2.343361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726967, 15.848680, 1.663734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446648, 16.132866, 1.689410>,  <17.278456, 16.303377, 1.704816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446648, 16.132866, 1.689410>,  <17.726967, 15.848680, 1.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446648, 16.132866, 1.689410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461086, 0.519791, -0.719178,
		-0.544317, -0.474401, -0.691855,
		-0.700799, 0.710465, 0.064191,
		17.236408, 16.346004, 1.708667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468094, 16.029188, 0.969614>,  <17.726967, 15.848680, 1.663734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468094, 16.029188, 0.969614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.422546, 16.343124, 1.213272>,  <17.395218, 16.531487, 1.359467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.422546, 16.343124, 1.213272>,  <17.468094, 16.029188, 0.969614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422546, 16.343124, 1.213272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410209, 0.595570, -0.690670,
		-0.904855, 0.171232, -0.389765,
		-0.113868, 0.784841, 0.609146,
		17.388386, 16.578577, 1.396016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056959, 16.525820, 0.695891>,  <17.468094, 16.029188, 0.969614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056959, 16.525820, 0.695891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302994, 16.696377, 0.961177>,  <17.450615, 16.798712, 1.120349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302994, 16.696377, 0.961177>,  <17.056959, 16.525820, 0.695891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302994, 16.696377, 0.961177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292276, 0.657922, -0.694056,
		-0.732284, 0.620748, 0.280056,
		0.615089, 0.426392, 0.663216,
		17.487520, 16.824295, 1.160142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804853, 17.228897, 0.950907>,  <17.056959, 16.525820, 0.695891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804853, 17.228897, 0.950907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.196068, 17.159683, 0.904420>,  <17.430796, 17.118155, 0.876527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.196068, 17.159683, 0.904420>,  <16.804853, 17.228897, 0.950907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196068, 17.159683, 0.904420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026698, 0.448981, -0.893143,
		0.206723, 0.876628, 0.434499,
		0.978035, -0.173032, -0.116219,
		17.489479, 17.107773, 0.869554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986168, 17.709452, 0.593791>,  <16.804853, 17.228897, 0.950907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986168, 17.709452, 0.593791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.348003, 17.539024, 0.599297>,  <17.565104, 17.436768, 0.602600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.348003, 17.539024, 0.599297>,  <16.986168, 17.709452, 0.593791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348003, 17.539024, 0.599297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306743, 0.628144, -0.715083,
		0.296028, 0.651077, 0.698904,
		0.904586, -0.426068, 0.013765,
		17.619379, 17.411203, 0.603426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509342, 18.227551, 0.755649>,  <16.986168, 17.709452, 0.593791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509342, 18.227551, 0.755649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832561, 18.438194, 0.861283>,  <17.026493, 18.564581, 0.924664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832561, 18.438194, 0.861283>,  <16.509342, 18.227551, 0.755649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832561, 18.438194, 0.861283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230528, 0.695179, -0.680870,
		-0.542139, 0.489296, 0.683136,
		0.808048, 0.526608, 0.264087,
		17.074976, 18.596176, 0.940509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334932, 18.923178, 0.992176>,  <16.509342, 18.227551, 0.755649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334932, 18.923178, 0.992176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701633, 18.891335, 0.835600>,  <16.921654, 18.872229, 0.741654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701633, 18.891335, 0.835600>,  <16.334932, 18.923178, 0.992176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701633, 18.891335, 0.835600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290273, 0.540433, -0.789730,
		0.274415, 0.837612, 0.472337,
		0.916754, -0.079607, -0.391439,
		16.976660, 18.867453, 0.718168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490665, 19.508410, 0.639783>,  <16.334932, 18.923178, 0.992176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490665, 19.508410, 0.639783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722034, 19.229069, 0.471150>,  <16.860855, 19.061464, 0.369970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722034, 19.229069, 0.471150>,  <16.490665, 19.508410, 0.639783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722034, 19.229069, 0.471150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337186, 0.265909, -0.903105,
		0.742787, 0.664529, -0.081666,
		0.578423, -0.698351, -0.421583,
		16.895561, 19.019564, 0.344675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794673, 19.514771, 1.065909>,  <16.490665, 19.508410, 0.639783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794673, 19.514771, 1.065909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526071, 19.333141, 0.831679>,  <15.364909, 19.224165, 0.691140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.526071, 19.333141, 0.831679>,  <15.794673, 19.514771, 1.065909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526071, 19.333141, 0.831679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599863, 0.797049, 0.069836,
		0.435022, 0.398161, -0.807603,
		-0.671505, -0.454071, -0.585576,
		15.324619, 19.196920, 0.656006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595906, 20.006668, 0.513786>,  <15.794673, 19.514771, 1.065909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595906, 20.006668, 0.513786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.318070, 19.723793, 0.566594>,  <15.151369, 19.554068, 0.598278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.318070, 19.723793, 0.566594>,  <15.595906, 20.006668, 0.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318070, 19.723793, 0.566594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719286, 0.679308, -0.145496,
		0.013211, -0.196020, -0.980511,
		-0.694588, -0.707190, 0.132020,
		15.109694, 19.511637, 0.606200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027242, 19.946259, -0.016518>,  <15.595906, 20.006668, 0.513786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027242, 19.946259, -0.016518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910863, 19.841042, 0.351429>,  <14.841036, 19.777910, 0.572198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910863, 19.841042, 0.351429>,  <15.027242, 19.946259, -0.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910863, 19.841042, 0.351429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748621, 0.661281, -0.047684,
		-0.595748, -0.702507, -0.389318,
		-0.290947, -0.263044, 0.919868,
		14.823579, 19.762129, 0.627390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750373, 19.377634, -0.246452>,  <15.027242, 19.946259, -0.016518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750373, 19.377634, -0.246452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462537, 19.540958, -0.471120>,  <14.289835, 19.638954, -0.605920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462537, 19.540958, -0.471120>,  <14.750373, 19.377634, -0.246452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462537, 19.540958, -0.471120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543708, 0.834438, -0.089974,
		0.431940, -0.370129, -0.822455,
		-0.719590, 0.408312, -0.561669,
		14.246660, 19.663452, -0.639620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034798, 19.645475, -0.971391>,  <14.750373, 19.377634, -0.246452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034798, 19.645475, -0.971391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733651, 19.862686, -0.822629>,  <14.552963, 19.993011, -0.733372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733651, 19.862686, -0.822629>,  <15.034798, 19.645475, -0.971391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.733651, 19.862686, -0.822629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520678, 0.837034, -0.168135,
		-0.402599, 0.067060, -0.912917,
		-0.752867, 0.543026, 0.371905,
		14.507791, 20.025595, -0.711057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760807, 20.059053, -1.532156>,  <15.034798, 19.645475, -0.971391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760807, 20.059053, -1.532156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708222, 20.239021, -1.178820>,  <14.676672, 20.347002, -0.966819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708222, 20.239021, -1.178820>,  <14.760807, 20.059053, -1.532156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708222, 20.239021, -1.178820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487705, 0.805130, -0.337504,
		-0.863054, 0.386440, -0.325272,
		-0.131462, 0.449921, 0.883340,
		14.668784, 20.373997, -0.913818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.515202, 18.649582, 17.245321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.857899, 18.807373, 17.112429>,  <21.063517, 18.902048, 17.032694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.857899, 18.807373, 17.112429>,  <20.515202, 18.649582, 17.245321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857899, 18.807373, 17.112429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189245, -0.358790, -0.914033,
		-0.479765, 0.845966, -0.232739,
		0.856745, 0.394476, -0.332230,
		21.114922, 18.925716, 17.012760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361792, 19.081753, 16.766804>,  <20.515202, 18.649582, 17.245321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361792, 19.081753, 16.766804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.743034, 19.002792, 16.675043>,  <20.971779, 18.955416, 16.619987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.743034, 19.002792, 16.675043>,  <20.361792, 19.081753, 16.766804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743034, 19.002792, 16.675043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279579, -0.284080, -0.917133,
		0.115875, 0.938260, -0.325947,
		0.953105, -0.197401, -0.229400,
		21.028965, 18.943573, 16.606222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440897, 19.334448, 16.190704>,  <20.361792, 19.081753, 16.766804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440897, 19.334448, 16.190704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.751862, 19.083626, 16.210442>,  <20.938440, 18.933132, 16.222284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.751862, 19.083626, 16.210442>,  <20.440897, 19.334448, 16.190704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751862, 19.083626, 16.210442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117217, -0.221500, -0.968090,
		0.617976, 0.746819, -0.245698,
		0.777410, -0.627056, 0.049342,
		20.985085, 18.895510, 16.225245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957012, 19.513546, 15.673588>,  <20.440897, 19.334448, 16.190704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957012, 19.513546, 15.673588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.985588, 19.127747, 15.775285>,  <21.002733, 18.896267, 15.836303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.985588, 19.127747, 15.775285>,  <20.957012, 19.513546, 15.673588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.985588, 19.127747, 15.775285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136485, -0.261947, -0.955382,
		0.988063, 0.033551, -0.150353,
		0.071439, -0.964499, 0.254241,
		21.007019, 18.838396, 15.851557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251686, 19.284658, 15.114180>,  <20.957012, 19.513546, 15.673588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251686, 19.284658, 15.114180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.147263, 18.938061, 15.284371>,  <21.084608, 18.730103, 15.386486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.147263, 18.938061, 15.284371>,  <21.251686, 19.284658, 15.114180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147263, 18.938061, 15.284371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073185, -0.421730, -0.903763,
		0.962545, -0.267073, 0.046681,
		-0.261058, -0.866496, 0.425479,
		21.068945, 18.678112, 15.412015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563648, 18.777626, 14.757950>,  <21.251686, 19.284658, 15.114180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563648, 18.777626, 14.757950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.256645, 18.576366, 14.916835>,  <21.072443, 18.455610, 15.012166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.256645, 18.576366, 14.916835>,  <21.563648, 18.777626, 14.757950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.256645, 18.576366, 14.916835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263293, -0.317535, -0.910960,
		0.584477, -0.803750, 0.111234,
		-0.767505, -0.503147, 0.397213,
		21.026394, 18.425423, 15.035998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697166, 18.179226, 14.494391>,  <21.563648, 18.777626, 14.757950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697166, 18.179226, 14.494391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.311596, 18.195011, 14.599683>,  <21.080254, 18.204481, 14.662858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.311596, 18.195011, 14.599683>,  <21.697166, 18.179226, 14.494391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311596, 18.195011, 14.599683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258157, -0.379433, -0.888474,
		0.064818, -0.924378, 0.375932,
		-0.963926, 0.039461, 0.263229,
		21.022419, 18.206850, 14.678651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398842, 17.478531, 14.216182>,  <21.697166, 18.179226, 14.494391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398842, 17.478531, 14.216182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.095821, 17.735123, 14.264546>,  <20.914009, 17.889078, 14.293565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.095821, 17.735123, 14.264546>,  <21.398842, 17.478531, 14.216182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095821, 17.735123, 14.264546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386009, -0.290845, -0.875446,
		-0.526414, -0.709869, 0.467947,
		-0.757552, 0.641479, 0.120911,
		20.868555, 17.927567, 14.300819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931093, 17.080364, 13.914939>,  <21.398842, 17.478531, 14.216182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931093, 17.080364, 13.914939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.782269, 17.451515, 13.924838>,  <20.692974, 17.674206, 13.930778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.782269, 17.451515, 13.924838>,  <20.931093, 17.080364, 13.914939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782269, 17.451515, 13.924838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383400, -0.129345, -0.914480,
		-0.845326, -0.349730, 0.403873,
		-0.372060, 0.927879, 0.024748,
		20.670650, 17.729879, 13.932262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266766, 16.985895, 13.728463>,  <20.931093, 17.080364, 13.914939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266766, 16.985895, 13.728463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.302692, 17.377632, 13.655993>,  <20.324249, 17.612675, 13.612512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.302692, 17.377632, 13.655993>,  <20.266766, 16.985895, 13.728463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302692, 17.377632, 13.655993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397110, -0.131609, -0.908286,
		-0.913365, 0.153527, 0.377085,
		0.089819, 0.979341, -0.181174,
		20.329638, 17.671434, 13.601642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.677671, 17.250681, 13.384222>,  <20.266766, 16.985895, 13.728463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.677671, 17.250681, 13.384222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.963821, 17.516144, 13.296768>,  <20.135511, 17.675421, 13.244296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.963821, 17.516144, 13.296768>,  <19.677671, 17.250681, 13.384222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963821, 17.516144, 13.296768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337470, 0.054170, -0.939776,
		-0.611846, 0.746073, 0.262716,
		0.715373, 0.663657, -0.218634,
		20.178432, 17.715240, 13.231178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356098, 17.912731, 13.176831>,  <19.677671, 17.250681, 13.384222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356098, 17.912731, 13.176831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711178, 17.875282, 12.996508>,  <19.924225, 17.852814, 12.888313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711178, 17.875282, 12.996508>,  <19.356098, 17.912731, 13.176831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711178, 17.875282, 12.996508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460344, -0.199180, -0.865108,
		-0.008800, 0.975481, -0.219909,
		0.887697, -0.093621, -0.450809,
		19.977488, 17.847197, 12.861265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235258, 18.160376, 12.551809>,  <19.356098, 17.912731, 13.176831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235258, 18.160376, 12.551809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.592758, 18.003761, 12.464253>,  <19.807259, 17.909794, 12.411719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.592758, 18.003761, 12.464253>,  <19.235258, 18.160376, 12.551809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592758, 18.003761, 12.464253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330999, -0.246309, -0.910918,
		0.302740, 0.886585, -0.349736,
		0.893750, -0.391533, -0.218891,
		19.860884, 17.886301, 12.398586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.395672, 18.352861, 11.953336>,  <19.235258, 18.160376, 12.551809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.395672, 18.352861, 11.953336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.605221, 18.012352, 11.965274>,  <19.730949, 17.808046, 11.972437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.605221, 18.012352, 11.965274>,  <19.395672, 18.352861, 11.953336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605221, 18.012352, 11.965274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192454, -0.152423, -0.969396,
		0.829772, 0.502094, -0.243681,
		0.523870, -0.851275, 0.029846,
		19.762383, 17.756969, 11.974228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744366, 18.329815, 11.412042>,  <19.395672, 18.352861, 11.953336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744366, 18.329815, 11.412042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.754990, 17.939777, 11.500121>,  <19.761364, 17.705755, 11.552969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.754990, 17.939777, 11.500121>,  <19.744366, 18.329815, 11.412042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754990, 17.939777, 11.500121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274630, -0.218918, -0.936298,
		0.961183, -0.035604, -0.273605,
		0.026561, -0.975094, 0.220198,
		19.762959, 17.647249, 11.566180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.951626, 18.065649, 10.793756>,  <19.744366, 18.329815, 11.412042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.951626, 18.065649, 10.793756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.799927, 17.774536, 11.022319>,  <19.708908, 17.599869, 11.159457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.799927, 17.774536, 11.022319>,  <19.951626, 18.065649, 10.793756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799927, 17.774536, 11.022319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481605, -0.372042, -0.793499,
		0.790081, -0.576125, -0.209407,
		-0.379247, -0.727780, 0.571408,
		19.686153, 17.556202, 11.193742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070972, 17.552195, 10.335400>,  <19.951626, 18.065649, 10.793756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070972, 17.552195, 10.335400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.803268, 17.394615, 10.587398>,  <19.642645, 17.300068, 10.738596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.803268, 17.394615, 10.587398>,  <20.070972, 17.552195, 10.335400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803268, 17.394615, 10.587398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361048, -0.568626, -0.739127,
		0.649409, -0.722128, 0.238325,
		-0.669262, -0.393949, 0.629994,
		19.602489, 17.276430, 10.776396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108755, 16.778463, 10.132815>,  <20.070972, 17.552195, 10.335400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108755, 16.778463, 10.132815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.754566, 16.865925, 10.296829>,  <19.542053, 16.918402, 10.395237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.754566, 16.865925, 10.296829>,  <20.108755, 16.778463, 10.132815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754566, 16.865925, 10.296829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464529, -0.439849, -0.768600,
		0.012295, -0.871047, 0.491046,
		-0.885473, 0.218654, 0.410034,
		19.488924, 16.931522, 10.419840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676937, 16.216309, 9.890777>,  <20.108755, 16.778463, 10.132815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676937, 16.216309, 9.890777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.400097, 16.472294, 10.024310>,  <19.233994, 16.625885, 10.104430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.400097, 16.472294, 10.024310>,  <19.676937, 16.216309, 9.890777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400097, 16.472294, 10.024310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643340, -0.337220, -0.687311,
		-0.327261, -0.690472, 0.645096,
		-0.692108, 0.639946, 0.333849,
		19.192467, 16.664284, 10.124460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031824, 15.821056, 9.852608>,  <19.676937, 16.216309, 9.890777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031824, 15.821056, 9.852608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.926773, 16.206474, 9.873032>,  <18.863743, 16.437725, 9.885286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.926773, 16.206474, 9.873032>,  <19.031824, 15.821056, 9.852608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926773, 16.206474, 9.873032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756572, -0.172793, -0.630667,
		-0.598853, -0.204261, 0.774372,
		-0.262627, 0.963546, 0.051060,
		18.847984, 16.495539, 9.888350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316109, 15.824129, 9.813414>,  <19.031824, 15.821056, 9.852608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316109, 15.824129, 9.813414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.409458, 16.197247, 9.703554>,  <18.465467, 16.421118, 9.637638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.409458, 16.197247, 9.703554>,  <18.316109, 15.824129, 9.813414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409458, 16.197247, 9.703554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760882, -0.000694, -0.648890,
		-0.605471, 0.360410, 0.709584,
		0.233374, 0.932794, -0.274649,
		18.479471, 16.477085, 9.621160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777302, 15.936390, 9.541979>,  <18.316109, 15.824129, 9.813414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777302, 15.936390, 9.541979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.985378, 16.253490, 9.414889>,  <18.110224, 16.443750, 9.338635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.985378, 16.253490, 9.414889>,  <17.777302, 15.936390, 9.541979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985378, 16.253490, 9.414889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501929, -0.017217, -0.864737,
		-0.690992, 0.609301, 0.388949,
		0.520189, 0.792752, -0.317723,
		18.141436, 16.491316, 9.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216364, 15.514462, 9.876747>,  <17.777302, 15.936390, 9.541979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216364, 15.514462, 9.876747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.870605, 15.422901, 10.055822>,  <16.663151, 15.367964, 10.163267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.870605, 15.422901, 10.055822>,  <17.216364, 15.514462, 9.876747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870605, 15.422901, 10.055822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337117, 0.396767, 0.853773,
		-0.373060, 0.888920, -0.265796,
		-0.864395, -0.228904, 0.447688,
		16.611286, 15.354230, 10.190128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970978, 16.159948, 10.165285>,  <17.216364, 15.514462, 9.876747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970978, 16.159948, 10.165285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.825577, 15.841343, 10.358545>,  <16.738337, 15.650180, 10.474502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.825577, 15.841343, 10.358545>,  <16.970978, 16.159948, 10.165285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825577, 15.841343, 10.358545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309245, 0.386051, 0.869099,
		-0.878769, 0.465330, 0.105987,
		-0.363501, -0.796513, 0.483151,
		16.716526, 15.602389, 10.503490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464848, 16.340179, 10.709942>,  <16.970978, 16.159948, 10.165285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464848, 16.340179, 10.709942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.630409, 15.992363, 10.817704>,  <16.729746, 15.783673, 10.882361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.630409, 15.992363, 10.817704>,  <16.464848, 16.340179, 10.709942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630409, 15.992363, 10.817704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242104, 0.390437, 0.888226,
		-0.877535, -0.302418, 0.372123,
		0.413906, -0.869541, 0.269406,
		16.754581, 15.731501, 10.898526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280531, 16.273699, 11.452663>,  <16.464848, 16.340179, 10.709942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280531, 16.273699, 11.452663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581478, 16.018642, 11.386499>,  <16.762047, 15.865609, 11.346801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581478, 16.018642, 11.386499>,  <16.280531, 16.273699, 11.452663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581478, 16.018642, 11.386499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281011, 0.083560, 0.956060,
		-0.595801, -0.765789, 0.242052,
		0.752366, -0.637640, -0.165410,
		16.807188, 15.827351, 11.336877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248491, 15.874919, 12.086348>,  <16.280531, 16.273699, 11.452663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248491, 15.874919, 12.086348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.605255, 15.776627, 11.934499>,  <16.819313, 15.717651, 11.843390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.605255, 15.776627, 11.934499>,  <16.248491, 15.874919, 12.086348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605255, 15.776627, 11.934499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375755, -0.064357, 0.924482,
		-0.251607, -0.967199, 0.034935,
		0.891909, -0.245733, -0.379622,
		16.872828, 15.702908, 11.820612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.527678, 15.314126, 12.383941>,  <16.248491, 15.874919, 12.086348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.527678, 15.314126, 12.383941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.866516, 15.487877, 12.261469>,  <17.069818, 15.592128, 12.187986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.866516, 15.487877, 12.261469>,  <16.527678, 15.314126, 12.383941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866516, 15.487877, 12.261469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246081, 0.190041, 0.950436,
		0.471034, -0.880455, 0.054091,
		0.847095, 0.434377, -0.306179,
		17.120646, 15.618190, 12.169615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967716, 15.067386, 12.888492>,  <16.527678, 15.314126, 12.383941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967716, 15.067386, 12.888492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189178, 15.351738, 12.715003>,  <17.322056, 15.522349, 12.610909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189178, 15.351738, 12.715003>,  <16.967716, 15.067386, 12.888492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189178, 15.351738, 12.715003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501283, 0.131391, 0.855250,
		0.664968, -0.690929, -0.283608,
		0.553654, 0.710882, -0.433722,
		17.355274, 15.565002, 12.584887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712257, 14.918706, 13.012699>,  <16.967716, 15.067386, 12.888492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712257, 14.918706, 13.012699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676620, 15.308197, 12.928873>,  <17.655239, 15.541891, 12.878577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676620, 15.308197, 12.928873>,  <17.712257, 14.918706, 13.012699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676620, 15.308197, 12.928873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440238, 0.227232, 0.868652,
		0.893450, -0.014868, -0.448917,
		-0.089093, 0.973727, -0.209566,
		17.649893, 15.600315, 12.866003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326431, 15.290560, 13.128551>,  <17.712257, 14.918706, 13.012699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326431, 15.290560, 13.128551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.038025, 15.566605, 13.153476>,  <17.864981, 15.732232, 13.168431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.038025, 15.566605, 13.153476>,  <18.326431, 15.290560, 13.128551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038025, 15.566605, 13.153476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418044, 0.361511, 0.833396,
		0.552610, 0.626940, -0.549151,
		-0.721014, 0.690113, 0.062314,
		17.821720, 15.773639, 13.172170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749672, 15.893004, 13.312957>,  <18.326431, 15.290560, 13.128551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749672, 15.893004, 13.312957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.369728, 15.973289, 13.408856>,  <18.141762, 16.021460, 13.466396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.369728, 15.973289, 13.408856>,  <18.749672, 15.893004, 13.312957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369728, 15.973289, 13.408856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307412, 0.459390, 0.833342,
		0.057123, 0.865260, -0.498058,
		-0.949861, 0.200712, 0.239749,
		18.084770, 16.033503, 13.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839672, 16.642866, 13.564248>,  <18.749672, 15.893004, 13.312957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839672, 16.642866, 13.564248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.512722, 16.463947, 13.709479>,  <18.316553, 16.356596, 13.796618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.512722, 16.463947, 13.709479>,  <18.839672, 16.642866, 13.564248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512722, 16.463947, 13.709479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182765, 0.396346, 0.899726,
		-0.546350, 0.801770, -0.242213,
		-0.817373, -0.447297, 0.363079,
		18.267509, 16.329758, 13.818403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433750, 17.215870, 13.883213>,  <18.839672, 16.642866, 13.564248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433750, 17.215870, 13.883213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308540, 16.861305, 14.019618>,  <18.233416, 16.648565, 14.101460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308540, 16.861305, 14.019618>,  <18.433750, 17.215870, 13.883213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308540, 16.861305, 14.019618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146813, 0.309579, 0.939472,
		-0.938329, 0.344142, 0.033231,
		-0.313024, -0.886413, 0.341012,
		18.214634, 16.595381, 14.121922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030931, 17.357376, 14.325958>,  <18.433750, 17.215870, 13.883213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030931, 17.357376, 14.325958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.174900, 16.991314, 14.398568>,  <18.261282, 16.771677, 14.442134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.174900, 16.991314, 14.398568>,  <18.030931, 17.357376, 14.325958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174900, 16.991314, 14.398568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053714, 0.214566, 0.975231,
		-0.931435, -0.341257, 0.126383,
		0.359922, -0.915153, 0.181524,
		18.282877, 16.716768, 14.453025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635567, 17.026180, 14.783565>,  <18.030931, 17.357376, 14.325958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635567, 17.026180, 14.783565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.987354, 16.838749, 14.816962>,  <18.198427, 16.726290, 14.837001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.987354, 16.838749, 14.816962>,  <17.635567, 17.026180, 14.783565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.987354, 16.838749, 14.816962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023990, 0.131560, 0.991018,
		-0.475354, -0.873571, 0.104461,
		0.879467, -0.468578, 0.083495,
		18.251194, 16.698175, 14.842010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548553, 16.586258, 15.435266>,  <17.635567, 17.026180, 14.783565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548553, 16.586258, 15.435266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.945080, 16.619080, 15.394164>,  <18.182997, 16.638773, 15.369503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.945080, 16.619080, 15.394164>,  <17.548553, 16.586258, 15.435266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945080, 16.619080, 15.394164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077049, 0.270792, 0.959549,
		0.106558, -0.959135, 0.262118,
		0.991317, 0.082051, -0.102755,
		18.242476, 16.643696, 15.363338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754253, 16.405434, 16.076366>,  <17.548553, 16.586258, 15.435266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754253, 16.405434, 16.076366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.071331, 16.591373, 15.918607>,  <18.261578, 16.702938, 15.823951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.071331, 16.591373, 15.918607>,  <17.754253, 16.405434, 16.076366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071331, 16.591373, 15.918607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225090, 0.378064, 0.897999,
		0.566545, -0.800612, 0.195055,
		0.792692, 0.464852, -0.394400,
		18.309139, 16.730829, 15.800286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342730, 16.330513, 16.584566>,  <17.754253, 16.405434, 16.076366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342730, 16.330513, 16.584566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.484966, 16.625889, 16.355391>,  <18.570309, 16.803114, 16.217884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.484966, 16.625889, 16.355391>,  <18.342730, 16.330513, 16.584566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484966, 16.625889, 16.355391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447246, 0.403827, 0.798057,
		0.820685, -0.540030, -0.186665,
		0.355594, 0.738439, -0.572941,
		18.591644, 16.847420, 16.183508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038868, 16.289524, 16.721455>,  <18.342730, 16.330513, 16.584566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038868, 16.289524, 16.721455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.956234, 16.663162, 16.604982>,  <18.906654, 16.887346, 16.535099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.956234, 16.663162, 16.604982>,  <19.038868, 16.289524, 16.721455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956234, 16.663162, 16.604982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562940, 0.356883, 0.745475,
		0.800264, -0.009915, -0.599566,
		-0.206583, 0.934096, -0.291182,
		18.894258, 16.943392, 16.517628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.720743, 16.729136, 16.824566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.419205, 16.989525, 16.788906>,  <19.238281, 17.145758, 16.767511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.419205, 16.989525, 16.788906>,  <19.720743, 16.729136, 16.824566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419205, 16.989525, 16.788906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441599, 0.602437, 0.664876,
		0.486522, 0.461847, -0.741615,
		-0.753848, 0.650973, -0.089148,
		19.193050, 17.184816, 16.762161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961540, 17.390442, 16.678530>,  <19.720743, 16.729136, 16.824566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961540, 17.390442, 16.678530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.609280, 17.418705, 16.865915>,  <19.397923, 17.435663, 16.978346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.609280, 17.418705, 16.865915>,  <19.961540, 17.390442, 16.678530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609280, 17.418705, 16.865915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421805, 0.567159, 0.707398,
		-0.215708, 0.820572, -0.529275,
		-0.880653, 0.070660, 0.468462,
		19.345083, 17.439903, 17.006454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980576, 18.058054, 16.937748>,  <19.961540, 17.390442, 16.678530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980576, 18.058054, 16.937748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.660660, 17.915817, 17.131197>,  <19.468710, 17.830475, 17.247267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.660660, 17.915817, 17.131197>,  <19.980576, 18.058054, 16.937748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660660, 17.915817, 17.131197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205666, 0.594573, 0.777293,
		-0.563949, 0.721135, -0.402400,
		-0.799789, -0.355594, 0.483622,
		19.420723, 17.809139, 17.276283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578722, 18.648945, 17.092731>,  <19.980576, 18.058054, 16.937748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578722, 18.648945, 17.092731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.491997, 18.348301, 17.341915>,  <19.439962, 18.167915, 17.491425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.491997, 18.348301, 17.341915>,  <19.578722, 18.648945, 17.092731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491997, 18.348301, 17.341915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157790, 0.602765, 0.782162,
		-0.963377, 0.267879, -0.012091,
		-0.216813, -0.751608, 0.622958,
		19.426952, 18.122818, 17.528803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056780, 18.901217, 17.473869>,  <19.578722, 18.648945, 17.092731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056780, 18.901217, 17.473869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.245476, 18.617458, 17.683334>,  <19.358692, 18.447203, 17.809013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.245476, 18.617458, 17.683334>,  <19.056780, 18.901217, 17.473869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245476, 18.617458, 17.683334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242374, 0.675346, 0.696536,
		-0.847773, -0.201660, 0.490525,
		0.471738, -0.709395, 0.523663,
		19.386997, 18.404640, 17.840433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783966, 18.982903, 18.185549>,  <19.056780, 18.901217, 17.473869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783966, 18.982903, 18.185549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.109535, 18.754597, 18.228918>,  <19.304876, 18.617613, 18.254940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.109535, 18.754597, 18.228918>,  <18.783966, 18.982903, 18.185549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109535, 18.754597, 18.228918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184206, 0.430531, 0.883579,
		-0.550997, -0.699192, 0.455558,
		0.813923, -0.570766, 0.108425,
		19.353712, 18.583366, 18.261446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788120, 18.723383, 18.904610>,  <18.783966, 18.982903, 18.185549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788120, 18.723383, 18.904610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.173969, 18.696262, 18.802704>,  <19.405479, 18.679989, 18.741560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.173969, 18.696262, 18.802704>,  <18.788120, 18.723383, 18.904610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173969, 18.696262, 18.802704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262174, 0.348244, 0.899995,
		0.027697, -0.934949, 0.353701,
		0.964623, -0.067804, -0.254764,
		19.463356, 18.675920, 18.726274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223862, 18.295374, 19.370495>,  <18.788120, 18.723383, 18.904610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.223862, 18.295374, 19.370495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.520203, 18.498516, 19.194666>,  <19.698008, 18.620401, 19.089169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.520203, 18.498516, 19.194666>,  <19.223862, 18.295374, 19.370495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520203, 18.498516, 19.194666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414929, 0.168589, 0.894098,
		0.528181, -0.844784, -0.085825,
		0.740851, 0.507856, -0.439571,
		19.742458, 18.650873, 19.062796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839981, 17.994083, 19.620714>,  <19.223862, 18.295374, 19.370495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839981, 17.994083, 19.620714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.909348, 18.370918, 19.505892>,  <19.950968, 18.597019, 19.436998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.909348, 18.370918, 19.505892>,  <19.839981, 17.994083, 19.620714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909348, 18.370918, 19.505892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463758, 0.179020, 0.867687,
		0.868824, -0.283596, -0.405855,
		0.173416, 0.942086, -0.287056,
		19.961372, 18.653543, 19.419775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468674, 18.018782, 19.898962>,  <19.839981, 17.994083, 19.620714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468674, 18.018782, 19.898962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.393887, 18.400005, 19.803698>,  <20.349014, 18.628740, 19.746538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.393887, 18.400005, 19.803698>,  <20.468674, 18.018782, 19.898962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393887, 18.400005, 19.803698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588246, 0.302783, 0.749859,
		0.786772, 0.000103, -0.617244,
		-0.186969, 0.953060, -0.238160,
		20.337795, 18.685923, 19.732250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093506, 18.364248, 19.953098>,  <20.468674, 18.018782, 19.898962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093506, 18.364248, 19.953098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.794971, 18.628658, 19.984146>,  <20.615850, 18.787304, 20.002775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.794971, 18.628658, 19.984146>,  <21.093506, 18.364248, 19.953098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794971, 18.628658, 19.984146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441555, 0.404500, 0.800880,
		0.498004, 0.632001, -0.593773,
		-0.746338, 0.661025, 0.077620,
		20.571070, 18.826965, 20.007433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512571, 18.876545, 20.333139>,  <21.093506, 18.364248, 19.953098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512571, 18.876545, 20.333139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.131351, 18.995731, 20.354746>,  <20.902620, 19.067244, 20.367710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.131351, 18.995731, 20.354746>,  <21.512571, 18.876545, 20.333139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131351, 18.995731, 20.354746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193024, 0.460312, 0.866519,
		0.233328, 0.836260, -0.496213,
		-0.953048, 0.297964, 0.054014,
		20.845438, 19.085121, 20.370951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474859, 19.602282, 20.337662>,  <21.512571, 18.876545, 20.333139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474859, 19.602282, 20.337662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.173565, 19.434761, 20.540539>,  <20.992788, 19.334248, 20.662264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.173565, 19.434761, 20.540539>,  <21.474859, 19.602282, 20.337662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173565, 19.434761, 20.540539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226028, 0.559333, 0.797533,
		-0.617697, 0.715368, -0.326648,
		-0.753234, -0.418802, 0.507192,
		20.947596, 19.309120, 20.692696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201181, 20.198708, 20.717243>,  <21.474859, 19.602282, 20.337662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201181, 20.198708, 20.717243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052895, 19.868637, 20.887724>,  <20.963923, 19.670595, 20.990013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052895, 19.868637, 20.887724>,  <21.201181, 20.198708, 20.717243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052895, 19.868637, 20.887724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236887, 0.359713, 0.902492,
		-0.898027, 0.435531, 0.062123,
		-0.370717, -0.825178, 0.426204,
		20.941679, 19.621084, 21.015585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826120, 20.416309, 21.267294>,  <21.201181, 20.198708, 20.717243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826120, 20.416309, 21.267294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.849247, 20.025723, 21.350403>,  <20.863123, 19.791370, 21.400269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.849247, 20.025723, 21.350403>,  <20.826120, 20.416309, 21.267294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849247, 20.025723, 21.350403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021586, 0.209294, 0.977615,
		-0.998094, -0.052038, 0.033179,
		0.057817, -0.976467, 0.207771,
		20.866592, 19.732782, 21.412735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350681, 20.349276, 21.781301>,  <20.826120, 20.416309, 21.267294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350681, 20.349276, 21.781301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.606319, 20.044300, 21.821779>,  <20.759703, 19.861315, 21.846066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.606319, 20.044300, 21.821779>,  <20.350681, 20.349276, 21.781301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606319, 20.044300, 21.821779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038221, 0.099923, 0.994261,
		-0.768176, -0.639297, 0.034719,
		0.639097, -0.762440, 0.101193,
		20.798048, 19.815569, 21.852137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040966, 19.910643, 22.235584>,  <20.350681, 20.349276, 21.781301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040966, 19.910643, 22.235584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.430267, 19.825424, 22.269960>,  <20.663849, 19.774294, 22.290586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.430267, 19.825424, 22.269960>,  <20.040966, 19.910643, 22.235584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430267, 19.825424, 22.269960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042086, 0.202410, 0.978396,
		-0.225839, -0.955846, 0.188030,
		0.973255, -0.213046, 0.085940,
		20.722244, 19.761511, 22.295742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.133709, 19.632374, 22.912123>,  <20.040966, 19.910643, 22.235584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.133709, 19.632374, 22.912123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.491810, 19.771374, 22.800575>,  <20.706671, 19.854774, 22.733646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.491810, 19.771374, 22.800575>,  <20.133709, 19.632374, 22.912123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491810, 19.771374, 22.800575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160939, 0.331424, 0.929654,
		0.415482, -0.877154, 0.240781,
		0.895251, 0.347503, -0.278869,
		20.760386, 19.875624, 22.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486296, 19.474010, 23.511265>,  <20.133709, 19.632374, 22.912123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486296, 19.474010, 23.511265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.713905, 19.741497, 23.319838>,  <20.850471, 19.901989, 23.204981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.713905, 19.741497, 23.319838>,  <20.486296, 19.474010, 23.511265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.713905, 19.741497, 23.319838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166870, 0.475966, 0.863488,
		0.805211, -0.571205, 0.159248,
		0.569025, 0.668716, -0.478570,
		20.884613, 19.942112, 23.176268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156105, 19.623270, 23.911465>,  <20.486296, 19.474010, 23.511265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156105, 19.623270, 23.911465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.119831, 19.954071, 23.689529>,  <21.098066, 20.152552, 23.556368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.119831, 19.954071, 23.689529>,  <21.156105, 19.623270, 23.911465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119831, 19.954071, 23.689529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187200, 0.561356, 0.806124,
		0.978127, -0.030762, -0.205721,
		-0.090684, 0.827002, -0.554836,
		21.092627, 20.202171, 23.523079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594496, 20.026598, 24.183167>,  <21.156105, 19.623270, 23.911465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594496, 20.026598, 24.183167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.375465, 20.291672, 23.978809>,  <21.244047, 20.450716, 23.856195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.375465, 20.291672, 23.978809>,  <21.594496, 20.026598, 24.183167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375465, 20.291672, 23.978809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114867, 0.664315, 0.738574,
		0.828834, 0.345741, -0.439884,
		-0.547576, 0.662683, -0.510892,
		21.211193, 20.490477, 23.825542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894794, 20.680805, 24.381105>,  <21.594496, 20.026598, 24.183167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894794, 20.680805, 24.381105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.547283, 20.788918, 24.215132>,  <21.338776, 20.853785, 24.115547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.547283, 20.788918, 24.215132>,  <21.894794, 20.680805, 24.381105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547283, 20.788918, 24.215132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021740, 0.816290, 0.577234,
		0.494724, 0.510509, -0.703299,
		-0.868778, 0.270282, -0.414936,
		21.286650, 20.870003, 24.090651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897959, 21.274017, 24.030886>,  <21.894794, 20.680805, 24.381105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897959, 21.274017, 24.030886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.525169, 21.208267, 24.160131>,  <21.301495, 21.168818, 24.237679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.525169, 21.208267, 24.160131>,  <21.897959, 21.274017, 24.030886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.525169, 21.208267, 24.160131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049477, 0.825279, 0.562553,
		-0.359129, 0.540272, -0.761007,
		-0.931975, -0.164377, 0.323113,
		21.245577, 21.158955, 24.257065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621986, 21.922262, 24.151129>,  <21.897959, 21.274017, 24.030886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621986, 21.922262, 24.151129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.467239, 21.649754, 24.399710>,  <21.374392, 21.486248, 24.548859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.467239, 21.649754, 24.399710>,  <21.621986, 21.922262, 24.151129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467239, 21.649754, 24.399710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142818, 0.621530, 0.770262,
		-0.911008, 0.386745, -0.143152,
		-0.386868, -0.681270, 0.621453,
		21.351179, 21.445372, 24.586145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124523, 22.452944, 23.939583>,  <21.621986, 21.922262, 24.151129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124523, 22.452944, 23.939583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.371555, 22.755539, 23.853495>,  <22.519775, 22.937096, 23.801842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.371555, 22.755539, 23.853495>,  <22.124523, 22.452944, 23.939583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371555, 22.755539, 23.853495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125325, -0.175494, -0.976471,
		-0.776459, 0.630022, -0.013575,
		0.617580, 0.756488, -0.215221,
		22.556829, 22.982485, 23.788929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732782, 22.912884, 23.450985>,  <22.124523, 22.452944, 23.939583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732782, 22.912884, 23.450985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.124966, 22.976120, 23.404154>,  <22.360275, 23.014061, 23.376055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.124966, 22.976120, 23.404154>,  <21.732782, 22.912884, 23.450985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.124966, 22.976120, 23.404154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097142, -0.128457, -0.986946,
		-0.171067, 0.979034, -0.110589,
		0.980459, 0.158091, -0.117080,
		22.419104, 23.023548, 23.369030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.733440, 23.288200, 22.834543>,  <21.732782, 22.912884, 23.450985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.733440, 23.288200, 22.834543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.107693, 23.147774, 22.849255>,  <22.332243, 23.063519, 22.858082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.107693, 23.147774, 22.849255>,  <21.733440, 23.288200, 22.834543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.107693, 23.147774, 22.849255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015130, -0.143982, -0.989465,
		0.352661, 0.925215, -0.140026,
		0.935629, -0.351064, 0.036778,
		22.388382, 23.042454, 22.860289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161718, 23.620209, 22.308714>,  <21.733440, 23.288200, 22.834543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161718, 23.620209, 22.308714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.354916, 23.278179, 22.384150>,  <22.470835, 23.072962, 22.429411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.354916, 23.278179, 22.384150>,  <22.161718, 23.620209, 22.308714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354916, 23.278179, 22.384150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043959, -0.238782, -0.970078,
		0.874520, 0.460250, -0.152918,
		0.482993, -0.855075, 0.188588,
		22.499813, 23.021656, 22.440725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551729, 23.459595, 21.645872>,  <22.161718, 23.620209, 22.308714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551729, 23.459595, 21.645872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.567104, 23.116497, 21.850927>,  <22.576330, 22.910639, 21.973961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.567104, 23.116497, 21.850927>,  <22.551729, 23.459595, 21.645872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.567104, 23.116497, 21.850927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073156, -0.509225, -0.857518,
		0.996579, 0.070464, 0.043175,
		0.038438, -0.857744, 0.512638,
		22.578636, 22.859175, 22.004719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119526, 23.058500, 21.351248>,  <22.551729, 23.459595, 21.645872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119526, 23.058500, 21.351248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.874153, 22.805065, 21.539829>,  <22.726929, 22.653004, 21.652979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.874153, 22.805065, 21.539829>,  <23.119526, 23.058500, 21.351248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.874153, 22.805065, 21.539829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083591, -0.541526, -0.836518,
		0.785312, -0.552556, 0.279227,
		-0.613432, -0.633587, 0.471455,
		22.690125, 22.614988, 21.681265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.423784, 22.382307, 21.105759>,  <23.119526, 23.058500, 21.351248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.423784, 22.382307, 21.105759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.039013, 22.361786, 21.213135>,  <22.808149, 22.349472, 21.277561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.039013, 22.361786, 21.213135>,  <23.423784, 22.382307, 21.105759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039013, 22.361786, 21.213135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181767, -0.613402, -0.768570,
		0.204094, -0.788103, 0.580723,
		-0.961929, -0.051304, 0.268442,
		22.750435, 22.346395, 21.293667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.303696, 21.660536, 20.920019>,  <23.423784, 22.382307, 21.105759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.303696, 21.660536, 20.920019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.944168, 21.828476, 20.970377>,  <22.728451, 21.929239, 21.000591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.944168, 21.828476, 20.970377>,  <23.303696, 21.660536, 20.920019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.944168, 21.828476, 20.970377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372484, -0.580246, -0.724272,
		-0.231035, -0.697883, 0.677924,
		-0.898821, 0.419848, 0.125893,
		22.674522, 21.954430, 21.008144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847786, 21.133734, 20.996111>,  <23.303696, 21.660536, 20.920019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847786, 21.133734, 20.996111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.647598, 21.452248, 20.860191>,  <22.527487, 21.643356, 20.778641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.647598, 21.452248, 20.860191>,  <22.847786, 21.133734, 20.996111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.647598, 21.452248, 20.860191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455500, -0.575955, -0.678819,
		-0.736242, -0.184948, 0.650954,
		-0.500467, 0.796285, -0.339798,
		22.497458, 21.691133, 20.758251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150148, 20.848091, 20.843796>,  <22.847786, 21.133734, 20.996111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150148, 20.848091, 20.843796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.169468, 21.198898, 20.652586>,  <22.181061, 21.409382, 20.537859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.169468, 21.198898, 20.652586>,  <22.150148, 20.848091, 20.843796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169468, 21.198898, 20.652586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427614, -0.414353, -0.803404,
		-0.902670, 0.243215, 0.355011,
		0.048300, 0.877016, -0.478026,
		22.183958, 21.462004, 20.509178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535662, 20.975077, 20.535418>,  <22.150148, 20.848091, 20.843796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535662, 20.975077, 20.535418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.804485, 21.189140, 20.330696>,  <21.965778, 21.317579, 20.207863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.804485, 21.189140, 20.330696>,  <21.535662, 20.975077, 20.535418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804485, 21.189140, 20.330696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350124, -0.379372, -0.856440,
		-0.652497, 0.754771, -0.067588,
		0.672058, 0.535160, -0.511803,
		22.006104, 21.349688, 20.177155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204336, 21.303057, 20.069138>,  <21.535662, 20.975077, 20.535418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204336, 21.303057, 20.069138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.574291, 21.287136, 19.917875>,  <21.796265, 21.277584, 19.827118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.574291, 21.287136, 19.917875>,  <21.204336, 21.303057, 20.069138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574291, 21.287136, 19.917875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368743, -0.336645, -0.866428,
		-0.092817, 0.940790, -0.326036,
		0.924886, -0.039804, -0.378156,
		21.851757, 21.275194, 19.804428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124376, 21.522867, 19.409290>,  <21.204336, 21.303057, 20.069138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124376, 21.522867, 19.409290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.470665, 21.322666, 19.407413>,  <21.678438, 21.202545, 19.406286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.470665, 21.322666, 19.407413>,  <21.124376, 21.522867, 19.409290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470665, 21.322666, 19.407413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264688, -0.449835, -0.852988,
		0.424809, 0.739694, -0.521909,
		0.865724, -0.500501, -0.004694,
		21.730383, 21.172516, 19.406006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308661, 21.412361, 18.662708>,  <21.124376, 21.522867, 19.409290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308661, 21.412361, 18.662708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.539608, 21.144020, 18.848873>,  <21.678177, 20.983015, 18.960571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.539608, 21.144020, 18.848873>,  <21.308661, 21.412361, 18.662708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539608, 21.144020, 18.848873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075497, -0.523711, -0.848544,
		0.812986, 0.525059, -0.251727,
		0.577368, -0.670851, 0.465410,
		21.712818, 20.942764, 18.988497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938736, 21.315933, 18.205301>,  <21.308661, 21.412361, 18.662708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938736, 21.315933, 18.205301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.912071, 20.993172, 18.440065>,  <21.896072, 20.799515, 18.580923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.912071, 20.993172, 18.440065>,  <21.938736, 21.315933, 18.205301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.912071, 20.993172, 18.440065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086775, -0.590678, -0.802228,
		0.993995, -0.002550, 0.109396,
		-0.066664, -0.806903, 0.586910,
		21.892073, 20.751101, 18.616138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.434322, 20.902529, 17.952394>,  <21.938736, 21.315933, 18.205301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.434322, 20.902529, 17.952394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.194603, 20.650970, 18.150517>,  <22.050772, 20.500034, 18.269390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.194603, 20.650970, 18.150517>,  <22.434322, 20.902529, 17.952394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194603, 20.650970, 18.150517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085238, -0.665340, -0.741658,
		0.795974, -0.402257, 0.452344,
		-0.599300, -0.628897, 0.495306,
		22.014812, 20.462301, 18.299109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.715187, 20.250055, 17.767271>,  <22.434322, 20.902529, 17.952394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.715187, 20.250055, 17.767271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.343475, 20.176693, 17.895523>,  <22.120449, 20.132675, 17.972473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.343475, 20.176693, 17.895523>,  <22.715187, 20.250055, 17.767271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.343475, 20.176693, 17.895523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059318, -0.782659, -0.619617,
		0.364585, -0.594816, 0.716429,
		-0.929279, -0.183406, 0.320629,
		22.064692, 20.121672, 17.991713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.666138, 19.589201, 17.710033>,  <22.715187, 20.250055, 17.767271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.666138, 19.589201, 17.710033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.278851, 19.672630, 17.765238>,  <22.046478, 19.722687, 17.798361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.278851, 19.672630, 17.765238>,  <22.666138, 19.589201, 17.710033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.278851, 19.672630, 17.765238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248806, -0.747221, -0.616244,
		-0.025406, -0.630998, 0.775368,
		-0.968220, 0.208572, 0.138012,
		21.988384, 19.735203, 17.806641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336973, 18.889793, 17.852436>,  <22.666138, 19.589201, 17.710033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336973, 18.889793, 17.852436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.079231, 19.158791, 17.706800>,  <21.924585, 19.320189, 17.619419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.079231, 19.158791, 17.706800>,  <22.336973, 18.889793, 17.852436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079231, 19.158791, 17.706800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274704, -0.647874, -0.710491,
		-0.713684, -0.357791, 0.602197,
		-0.644355, 0.672492, -0.364090,
		21.885925, 19.360538, 17.597574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717947, 18.589033, 17.964685>,  <22.336973, 18.889793, 17.852436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717947, 18.589033, 17.964685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.656849, 18.844879, 17.663340>,  <21.620190, 18.998386, 17.482533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.656849, 18.844879, 17.663340>,  <21.717947, 18.589033, 17.964685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656849, 18.844879, 17.663340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522214, -0.699430, -0.487945,
		-0.839024, 0.318886, 0.440853,
		-0.152747, 0.639617, -0.753365,
		21.611025, 19.036764, 17.437330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.701778, 15.405540, 14.512641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.840569, 15.770348, 14.425164>,  <17.923843, 15.989232, 14.372678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.840569, 15.770348, 14.425164>,  <17.701778, 15.405540, 14.512641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840569, 15.770348, 14.425164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471346, -0.032018, -0.881367,
		-0.810826, 0.408894, 0.418768,
		0.346977, 0.912020, -0.218692,
		17.944662, 16.043953, 14.359556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073908, 15.975609, 14.244756>,  <17.701778, 15.405540, 14.512641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073908, 15.975609, 14.244756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.432468, 16.081501, 14.102555>,  <17.647606, 16.145037, 14.017235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.432468, 16.081501, 14.102555>,  <17.073908, 15.975609, 14.244756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432468, 16.081501, 14.102555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370311, 0.006530, -0.928885,
		-0.243582, 0.964301, 0.103886,
		0.896402, 0.264730, -0.355501,
		17.701389, 16.160919, 13.995905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873264, 16.518213, 13.793438>,  <17.073908, 15.975609, 14.244756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873264, 16.518213, 13.793438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.231380, 16.373955, 13.688834>,  <17.446251, 16.287399, 13.626072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.231380, 16.373955, 13.688834>,  <16.873264, 16.518213, 13.793438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231380, 16.373955, 13.688834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284590, -0.011404, -0.958582,
		0.342724, 0.932634, -0.112846,
		0.895292, -0.360644, -0.261510,
		17.499968, 16.265762, 13.610381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060389, 16.836296, 13.183551>,  <16.873264, 16.518213, 13.793438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060389, 16.836296, 13.183551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.269146, 16.495228, 13.193218>,  <17.394400, 16.290586, 13.199018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.269146, 16.495228, 13.193218>,  <17.060389, 16.836296, 13.183551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269146, 16.495228, 13.193218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072567, -0.072612, -0.994717,
		0.849919, 0.517381, -0.099772,
		0.521892, -0.852669, 0.024169,
		17.425713, 16.239428, 13.200469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533840, 16.877834, 12.611973>,  <17.060389, 16.836296, 13.183551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533840, 16.877834, 12.611973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.608109, 16.488811, 12.668057>,  <17.652670, 16.255398, 12.701708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.608109, 16.488811, 12.668057>,  <17.533840, 16.877834, 12.611973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.608109, 16.488811, 12.668057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080670, -0.157298, -0.984251,
		0.979295, 0.171436, -0.107662,
		0.185671, -0.972557, 0.140211,
		17.663811, 16.197044, 12.710121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988138, 16.622799, 12.040806>,  <17.533840, 16.877834, 12.611973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988138, 16.622799, 12.040806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.821800, 16.293194, 12.194728>,  <17.721998, 16.095430, 12.287081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.821800, 16.293194, 12.194728>,  <17.988138, 16.622799, 12.040806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821800, 16.293194, 12.194728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105939, -0.376353, -0.920400,
		0.903244, -0.423510, 0.069209,
		-0.415845, -0.824013, 0.384804,
		17.697046, 16.045990, 12.310169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.254557, 16.000175, 11.736387>,  <17.988138, 16.622799, 12.040806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.254557, 16.000175, 11.736387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.899406, 15.884670, 11.879658>,  <17.686316, 15.815368, 11.965620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.899406, 15.884670, 11.879658>,  <18.254557, 16.000175, 11.736387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899406, 15.884670, 11.879658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257071, -0.334269, -0.906741,
		0.381560, -0.897152, 0.222557,
		-0.887878, -0.288763, 0.358175,
		17.633043, 15.798041, 11.987110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080524, 15.486067, 11.281325>,  <18.254557, 16.000175, 11.736387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080524, 15.486067, 11.281325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.719631, 15.542709, 11.444258>,  <17.503096, 15.576694, 11.542017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.719631, 15.542709, 11.444258>,  <18.080524, 15.486067, 11.281325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719631, 15.542709, 11.444258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429208, -0.386553, -0.816307,
		0.041861, -0.911331, 0.409540,
		-0.902235, 0.141606, 0.407332,
		17.448961, 15.585192, 11.566458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717009, 14.917706, 11.147701>,  <18.080524, 15.486067, 11.281325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717009, 14.917706, 11.147701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.440540, 15.199913, 11.210344>,  <17.274660, 15.369238, 11.247931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.440540, 15.199913, 11.210344>,  <17.717009, 14.917706, 11.147701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.440540, 15.199913, 11.210344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533918, -0.352456, -0.768574,
		-0.487048, -0.614830, 0.620297,
		-0.691170, 0.705520, 0.156606,
		17.233189, 15.411569, 11.257326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029852, 14.555176, 11.314916>,  <17.717009, 14.917706, 11.147701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029852, 14.555176, 11.314916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.931656, 14.923691, 11.194275>,  <16.872738, 15.144800, 11.121891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.931656, 14.923691, 11.194275>,  <17.029852, 14.555176, 11.314916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931656, 14.923691, 11.194275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465336, -0.384926, -0.797054,
		-0.850410, -0.055323, 0.523203,
		-0.245490, 0.921288, -0.301601,
		16.858009, 15.200077, 11.103795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287664, 14.583488, 11.178734>,  <17.029852, 14.555176, 11.314916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287664, 14.583488, 11.178734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.441185, 14.880962, 10.959781>,  <16.533298, 15.059446, 10.828408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.441185, 14.880962, 10.959781>,  <16.287664, 14.583488, 11.178734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441185, 14.880962, 10.959781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601731, -0.248223, -0.759148,
		-0.700440, 0.620741, 0.352229,
		0.383803, 0.743684, -0.547384,
		16.556326, 15.104068, 10.795566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686712, 14.853186, 10.875837>,  <16.287664, 14.583488, 11.178734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686712, 14.853186, 10.875837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.992934, 15.002659, 10.666347>,  <16.176666, 15.092342, 10.540652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.992934, 15.002659, 10.666347>,  <15.686712, 14.853186, 10.875837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992934, 15.002659, 10.666347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520440, -0.118893, -0.845581,
		-0.378246, 0.919905, 0.103460,
		0.765554, 0.373682, -0.523726,
		16.222601, 15.114763, 10.509229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487082, 15.271290, 10.325151>,  <15.686712, 14.853186, 10.875837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487082, 15.271290, 10.325151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.840669, 15.119446, 10.215973>,  <16.052820, 15.028339, 10.150466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.840669, 15.119446, 10.215973>,  <15.487082, 15.271290, 10.325151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840669, 15.119446, 10.215973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325704, -0.081133, -0.941984,
		0.335442, 0.921582, -0.195360,
		0.883966, -0.379610, -0.272948,
		16.105858, 15.005563, 10.134089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822853, 15.733496, 9.867392>,  <15.487082, 15.271290, 10.325151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822853, 15.733496, 9.867392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.931672, 15.353355, 9.806964>,  <15.996964, 15.125271, 9.770707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.931672, 15.353355, 9.806964>,  <15.822853, 15.733496, 9.867392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931672, 15.353355, 9.806964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348213, 0.049128, -0.936127,
		0.897072, 0.307276, -0.317559,
		0.272048, -0.950352, -0.151068,
		16.013287, 15.068250, 9.761643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072750, 15.824464, 10.065330>,  <15.822853, 15.733496, 9.867392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072750, 15.824464, 10.065330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.883719, 16.142155, 9.912556>,  <14.770301, 16.332769, 9.820891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.883719, 16.142155, 9.912556>,  <15.072750, 15.824464, 10.065330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883719, 16.142155, 9.912556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116297, 0.373390, 0.920356,
		0.873583, 0.479356, -0.084089,
		-0.472576, 0.794228, -0.381935,
		14.741946, 16.380423, 9.797976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406861, 16.477932, 10.247276>,  <15.072750, 15.824464, 10.065330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406861, 16.477932, 10.247276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.038146, 16.585869, 10.135927>,  <14.816916, 16.650631, 10.069118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.038146, 16.585869, 10.135927>,  <15.406861, 16.477932, 10.247276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038146, 16.585869, 10.135927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003768, 0.724224, 0.689554,
		0.387674, 0.634575, -0.668599,
		-0.921789, 0.269841, -0.278372,
		14.761609, 16.666821, 10.052416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439955, 17.209482, 10.148068>,  <15.406861, 16.477932, 10.247276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439955, 17.209482, 10.148068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.050858, 17.140572, 10.210157>,  <14.817401, 17.099224, 10.247411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.050858, 17.140572, 10.210157>,  <15.439955, 17.209482, 10.148068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050858, 17.140572, 10.210157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026733, 0.748219, 0.662913,
		-0.230345, 0.640694, -0.732429,
		-0.972742, -0.172279, 0.155221,
		14.759036, 17.088888, 10.256723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178699, 17.872919, 10.139709>,  <15.439955, 17.209482, 10.148068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178699, 17.872919, 10.139709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.893695, 17.643948, 10.302020>,  <14.722692, 17.506565, 10.399407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.893695, 17.643948, 10.302020>,  <15.178699, 17.872919, 10.139709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.893695, 17.643948, 10.302020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115787, 0.666305, 0.736635,
		-0.692043, 0.477876, -0.541028,
		-0.712510, -0.572427, 0.405779,
		14.679942, 17.472219, 10.423754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691841, 18.371050, 10.222035>,  <15.178699, 17.872919, 10.139709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691841, 18.371050, 10.222035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.593087, 18.073223, 10.470122>,  <14.533835, 17.894527, 10.618975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.593087, 18.073223, 10.470122>,  <14.691841, 18.371050, 10.222035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593087, 18.073223, 10.470122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101375, 0.656362, 0.747604,
		-0.963728, 0.121697, -0.237526,
		-0.246884, -0.744566, 0.620217,
		14.519022, 17.849854, 10.656187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019702, 18.541563, 10.531283>,  <14.691841, 18.371050, 10.222035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019702, 18.541563, 10.531283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.234874, 18.305119, 10.771689>,  <14.363976, 18.163252, 10.915933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.234874, 18.305119, 10.771689>,  <14.019702, 18.541563, 10.531283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234874, 18.305119, 10.771689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019914, 0.703847, 0.710073,
		-0.842755, -0.393937, 0.366848,
		0.537929, -0.591112, 0.601015,
		14.396253, 18.127785, 10.951994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736071, 18.614649, 11.158162>,  <14.019702, 18.541563, 10.531283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736071, 18.614649, 11.158162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.091187, 18.461487, 11.260306>,  <14.304257, 18.369591, 11.321592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.091187, 18.461487, 11.260306>,  <13.736071, 18.614649, 11.158162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091187, 18.461487, 11.260306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059673, 0.645918, 0.761070,
		-0.456358, -0.660435, 0.596291,
		0.887793, -0.382903, 0.255360,
		14.357526, 18.346617, 11.336914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665854, 18.530693, 11.887748>,  <13.736071, 18.614649, 11.158162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665854, 18.530693, 11.887748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.045081, 18.544876, 11.761312>,  <14.272617, 18.553387, 11.685452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.045081, 18.544876, 11.761312>,  <13.665854, 18.530693, 11.887748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045081, 18.544876, 11.761312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171147, 0.780770, 0.600921,
		0.268099, -0.623811, 0.734154,
		0.948067, 0.035458, -0.316088,
		14.329501, 18.555513, 11.666486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084550, 18.665718, 12.466944>,  <13.665854, 18.530693, 11.887748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084550, 18.665718, 12.466944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.369620, 18.714054, 12.190541>,  <14.540663, 18.743055, 12.024699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.369620, 18.714054, 12.190541>,  <14.084550, 18.665718, 12.466944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.369620, 18.714054, 12.190541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421679, 0.713417, 0.559663,
		0.560607, -0.690241, 0.457479,
		0.712675, 0.120841, -0.691007,
		14.583423, 18.750307, 11.983239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750751, 18.328991, 12.716154>,  <14.084550, 18.665718, 12.466944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750751, 18.328991, 12.716154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.841556, 18.610497, 12.446878>,  <14.896039, 18.779400, 12.285314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.841556, 18.610497, 12.446878>,  <14.750751, 18.328991, 12.716154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841556, 18.610497, 12.446878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567496, 0.466162, 0.678705,
		0.791463, -0.536107, -0.293558,
		0.227013, 0.703763, -0.673188,
		14.909659, 18.821625, 12.244922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435713, 18.495718, 12.841025>,  <14.750751, 18.328991, 12.716154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435713, 18.495718, 12.841025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.299283, 18.807667, 12.631085>,  <15.217425, 18.994837, 12.505121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.299283, 18.807667, 12.631085>,  <15.435713, 18.495718, 12.841025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299283, 18.807667, 12.631085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466407, 0.625153, 0.625818,
		0.816170, -0.031343, -0.576961,
		-0.341074, 0.779873, -0.524850,
		15.196961, 19.041628, 12.473630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.987746, 18.920889, 12.765464>,  <15.435713, 18.495718, 12.841025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.987746, 18.920889, 12.765464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.648290, 19.127834, 12.721386>,  <15.444615, 19.252001, 12.694939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.648290, 19.127834, 12.721386>,  <15.987746, 18.920889, 12.765464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648290, 19.127834, 12.721386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333959, 0.685580, 0.646878,
		0.410219, 0.512166, -0.754590,
		-0.848641, 0.517364, -0.110195,
		15.393698, 19.283043, 12.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200069, 19.610790, 12.611199>,  <15.987746, 18.920889, 12.765464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200069, 19.610790, 12.611199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.835118, 19.649178, 12.770374>,  <15.616147, 19.672211, 12.865879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.835118, 19.649178, 12.770374>,  <16.200069, 19.610790, 12.611199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835118, 19.649178, 12.770374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360295, 0.649697, 0.669388,
		-0.194297, 0.754111, -0.627348,
		-0.912379, 0.095970, 0.397937,
		15.561404, 19.677969, 12.889755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116049, 20.172935, 12.818090>,  <16.200069, 19.610790, 12.611199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116049, 20.172935, 12.818090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.794524, 20.052162, 13.023116>,  <15.601609, 19.979698, 13.146132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.794524, 20.052162, 13.023116>,  <16.116049, 20.172935, 12.818090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794524, 20.052162, 13.023116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329235, 0.491841, 0.806037,
		-0.495470, 0.816657, -0.295941,
		-0.803812, -0.301933, 0.512565,
		15.553381, 19.961582, 13.176886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705418, 20.824499, 12.548746>,  <16.116049, 20.172935, 12.818090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705418, 20.824499, 12.548746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.833402, 21.184525, 12.430420>,  <15.910192, 21.400539, 12.359425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.833402, 21.184525, 12.430420>,  <15.705418, 20.824499, 12.548746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833402, 21.184525, 12.430420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021632, -0.305207, -0.952040,
		-0.947184, 0.311015, -0.078184,
		0.319961, 0.900066, -0.295815,
		15.929390, 21.454544, 12.341676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239014, 20.997761, 12.000008>,  <15.705418, 20.824499, 12.548746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239014, 20.997761, 12.000008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.571017, 21.212883, 11.940883>,  <15.770220, 21.341957, 11.905408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.571017, 21.212883, 11.940883>,  <15.239014, 20.997761, 12.000008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571017, 21.212883, 11.940883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081869, -0.379623, -0.921512,
		-0.551709, 0.752761, -0.359121,
		0.830009, 0.537808, -0.147813,
		15.820020, 21.374226, 11.896539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149364, 21.510515, 11.325213>,  <15.239014, 20.997761, 12.000008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149364, 21.510515, 11.325213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.536361, 21.437489, 11.395214>,  <15.768559, 21.393673, 11.437215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.536361, 21.437489, 11.395214>,  <15.149364, 21.510515, 11.325213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536361, 21.437489, 11.395214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125839, -0.252702, -0.959326,
		0.219364, 0.950164, -0.221513,
		0.967494, -0.182566, 0.175002,
		15.826609, 21.382719, 11.447715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526154, 21.705433, 10.742839>,  <15.149364, 21.510515, 11.325213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526154, 21.705433, 10.742839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.789405, 21.470490, 10.931254>,  <15.947356, 21.329523, 11.044304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.789405, 21.470490, 10.931254>,  <15.526154, 21.705433, 10.742839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789405, 21.470490, 10.931254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238068, -0.431187, -0.870288,
		0.714276, 0.684901, -0.143946,
		0.658129, -0.587357, 0.471040,
		15.986843, 21.294283, 11.072566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177475, 21.830935, 10.464570>,  <15.526154, 21.705433, 10.742839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177475, 21.830935, 10.464570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.211376, 21.474491, 10.642893>,  <16.231716, 21.260626, 10.749887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.211376, 21.474491, 10.642893>,  <16.177475, 21.830935, 10.464570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211376, 21.474491, 10.642893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280849, -0.407912, -0.868753,
		0.956002, 0.198835, 0.215695,
		0.084754, -0.891108, 0.445807,
		16.236803, 21.207159, 10.776635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742989, 21.570564, 10.238650>,  <16.177475, 21.830935, 10.464570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742989, 21.570564, 10.238650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.568081, 21.237877, 10.375494>,  <16.463137, 21.038265, 10.457601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.568081, 21.237877, 10.375494>,  <16.742989, 21.570564, 10.238650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568081, 21.237877, 10.375494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060052, -0.406559, -0.911649,
		0.897323, -0.378092, 0.227722,
		-0.437269, -0.831719, 0.342110,
		16.436899, 20.988361, 10.478127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256992, 21.043152, 10.019662>,  <16.742989, 21.570564, 10.238650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256992, 21.043152, 10.019662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.912823, 20.864731, 10.118215>,  <16.706320, 20.757677, 10.177346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.912823, 20.864731, 10.118215>,  <17.256992, 21.043152, 10.019662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912823, 20.864731, 10.118215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039538, -0.540483, -0.840425,
		0.508040, -0.713382, 0.482682,
		-0.860426, -0.446054, 0.246381,
		16.654696, 20.730915, 10.192129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408115, 20.405964, 10.001434>,  <17.256992, 21.043152, 10.019662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408115, 20.405964, 10.001434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.011749, 20.422798, 9.950341>,  <16.773930, 20.432899, 9.919685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.011749, 20.422798, 9.950341>,  <17.408115, 20.405964, 10.001434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011749, 20.422798, 9.950341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071953, -0.636509, -0.767906,
		-0.113621, -0.770120, 0.627698,
		-0.990915, 0.042086, -0.127734,
		16.714476, 20.435425, 9.912021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170620, 19.723227, 9.880661>,  <17.408115, 20.405964, 10.001434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170620, 19.723227, 9.880661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.877922, 19.955212, 9.737445>,  <16.702303, 20.094402, 9.651515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.877922, 19.955212, 9.737445>,  <17.170620, 19.723227, 9.880661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877922, 19.955212, 9.737445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047530, -0.480611, -0.875645,
		-0.679918, -0.657767, 0.324120,
		-0.731746, 0.579962, -0.358040,
		16.658398, 20.129200, 9.630033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702341, 19.295422, 9.621675>,  <17.170620, 19.723227, 9.880661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702341, 19.295422, 9.621675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.603874, 19.633591, 9.432081>,  <16.544794, 19.836493, 9.318325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.603874, 19.633591, 9.432081>,  <16.702341, 19.295422, 9.621675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603874, 19.633591, 9.432081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232475, -0.526260, -0.817928,
		-0.940934, -0.091157, 0.326087,
		-0.246167, 0.845424, -0.473985,
		16.530024, 19.887218, 9.289886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075525, 19.149940, 9.090261>,  <16.702341, 19.295422, 9.621675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075525, 19.149940, 9.090261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.251095, 19.480118, 8.948283>,  <16.356436, 19.678225, 8.863096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.251095, 19.480118, 8.948283>,  <16.075525, 19.149940, 9.090261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251095, 19.480118, 8.948283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101749, -0.438150, -0.893124,
		-0.892744, 0.355899, -0.276303,
		0.438924, 0.825446, -0.354944,
		16.382772, 19.727751, 8.841800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677387, 19.326279, 8.594875>,  <16.075525, 19.149940, 9.090261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677387, 19.326279, 8.594875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.029350, 19.494785, 8.506967>,  <16.240528, 19.595888, 8.454222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.029350, 19.494785, 8.506967>,  <15.677387, 19.326279, 8.594875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029350, 19.494785, 8.506967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069089, -0.344184, -0.936357,
		-0.470096, 0.839091, -0.273745,
		0.879907, 0.421265, -0.219771,
		16.293322, 19.621164, 8.441035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.104588, 23.236292, 15.844155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439079, 23.299034, 15.633967>,  <16.639774, 23.336679, 15.507854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439079, 23.299034, 15.633967>,  <16.104588, 23.236292, 15.844155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439079, 23.299034, 15.633967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503810, -0.158657, -0.849119,
		-0.216560, 0.974794, -0.053648,
		0.836228, 0.156857, -0.525470,
		16.689947, 23.346092, 15.476326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938934, 23.749094, 15.340753>,  <16.104588, 23.236292, 15.844155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938934, 23.749094, 15.340753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271606, 23.562725, 15.219941>,  <16.471210, 23.450903, 15.147454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271606, 23.562725, 15.219941>,  <15.938934, 23.749094, 15.340753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271606, 23.562725, 15.219941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417620, -0.166419, -0.893252,
		0.365925, 0.869033, -0.332987,
		0.831681, -0.465925, -0.302029,
		16.521111, 23.422947, 15.129333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781261, 23.667698, 14.593956>,  <15.938934, 23.749094, 15.340753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781261, 23.667698, 14.593956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104115, 23.431995, 14.608464>,  <16.297827, 23.290573, 14.617169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104115, 23.431995, 14.608464>,  <15.781261, 23.667698, 14.593956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104115, 23.431995, 14.608464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259557, -0.409367, -0.874671,
		0.530254, 0.696560, -0.483358,
		0.807132, -0.589256, 0.036271,
		16.346254, 23.255219, 14.619346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125975, 23.742367, 13.961968>,  <15.781261, 23.667698, 14.593956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125975, 23.742367, 13.961968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268173, 23.394623, 14.099275>,  <16.353493, 23.185976, 14.181659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268173, 23.394623, 14.099275>,  <16.125975, 23.742367, 13.961968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268173, 23.394623, 14.099275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116350, -0.405560, -0.906633,
		0.927407, 0.282368, -0.245326,
		0.355498, -0.869362, 0.343266,
		16.374823, 23.133814, 14.202254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717285, 23.543938, 13.595205>,  <16.125975, 23.742367, 13.961968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717285, 23.543938, 13.595205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539333, 23.220024, 13.748221>,  <16.432562, 23.025677, 13.840031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539333, 23.220024, 13.748221>,  <16.717285, 23.543938, 13.595205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539333, 23.220024, 13.748221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072519, -0.458306, -0.885831,
		0.892650, -0.366346, 0.262615,
		-0.444878, -0.809782, 0.382540,
		16.405870, 22.977089, 13.862984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181513, 22.838091, 13.411936>,  <16.717285, 23.543938, 13.595205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181513, 22.838091, 13.411936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827339, 22.671360, 13.494168>,  <16.614836, 22.571321, 13.543508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827339, 22.671360, 13.494168>,  <17.181513, 22.838091, 13.411936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827339, 22.671360, 13.494168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034686, -0.500363, -0.865120,
		0.463469, -0.758876, 0.457497,
		-0.885434, -0.416825, 0.205581,
		16.561708, 22.546312, 13.555842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172167, 22.110424, 13.402201>,  <17.181513, 22.838091, 13.411936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172167, 22.110424, 13.402201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782764, 22.192200, 13.361223>,  <16.549124, 22.241264, 13.336637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782764, 22.192200, 13.361223>,  <17.172167, 22.110424, 13.402201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782764, 22.192200, 13.361223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046507, -0.615645, -0.786650,
		-0.223891, -0.761043, 0.608841,
		-0.973504, 0.204439, -0.102443,
		16.490713, 22.253532, 13.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847479, 21.418938, 13.245533>,  <17.172167, 22.110424, 13.402201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847479, 21.418938, 13.245533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585648, 21.694073, 13.120053>,  <16.428549, 21.859154, 13.044765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585648, 21.694073, 13.120053>,  <16.847479, 21.418938, 13.245533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585648, 21.694073, 13.120053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160407, -0.531868, -0.831496,
		-0.738783, -0.493958, 0.458482,
		-0.654576, 0.687839, -0.313701,
		16.389275, 21.900425, 13.025943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319025, 21.032938, 13.054487>,  <16.847479, 21.418938, 13.245533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319025, 21.032938, 13.054487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256809, 21.386795, 12.878661>,  <16.219479, 21.599110, 12.773166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256809, 21.386795, 12.878661>,  <16.319025, 21.032938, 13.054487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.256809, 21.386795, 12.878661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073632, -0.454127, -0.887890,
		-0.985082, -0.105737, 0.135773,
		-0.155541, 0.884641, -0.439566,
		16.210148, 21.652187, 12.746792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885448, 20.703733, 13.574917>,  <16.319025, 21.032938, 13.054487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885448, 20.703733, 13.574917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721982, 20.343357, 13.633288>,  <15.623902, 20.127131, 13.668311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721982, 20.343357, 13.633288>,  <15.885448, 20.703733, 13.574917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721982, 20.343357, 13.633288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259826, 0.038430, 0.964890,
		-0.874919, 0.432233, 0.218383,
		-0.408665, -0.900943, 0.145928,
		15.599382, 20.073074, 13.677067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466267, 20.691936, 14.248202>,  <15.885448, 20.703733, 13.574917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466267, 20.691936, 14.248202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547975, 20.306671, 14.178243>,  <15.596999, 20.075512, 14.136267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547975, 20.306671, 14.178243>,  <15.466267, 20.691936, 14.248202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547975, 20.306671, 14.178243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217467, -0.129552, 0.967432,
		-0.954454, -0.235653, 0.182993,
		0.204271, -0.963164, -0.174898,
		15.609256, 20.017721, 14.125773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604745, 20.492334, 14.881524>,  <15.466267, 20.691936, 14.248202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604745, 20.492334, 14.881524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711753, 20.154713, 14.695617>,  <15.775957, 19.952141, 14.584072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711753, 20.154713, 14.695617>,  <15.604745, 20.492334, 14.881524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711753, 20.154713, 14.695617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311180, -0.380821, 0.870713,
		-0.911922, -0.377558, 0.160775,
		0.267519, -0.844052, -0.464768,
		15.792008, 19.901497, 14.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294246, 19.809443, 15.177396>,  <15.604745, 20.492334, 14.881524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.294246, 19.809443, 15.177396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652099, 19.744049, 15.011067>,  <15.866810, 19.704813, 14.911270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652099, 19.744049, 15.011067>,  <15.294246, 19.809443, 15.177396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652099, 19.744049, 15.011067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329278, -0.387827, 0.860910,
		-0.302009, -0.907119, -0.293131,
		0.894632, -0.163481, -0.415821,
		15.920488, 19.695005, 14.886321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494735, 19.209003, 15.492481>,  <15.294246, 19.809443, 15.177396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494735, 19.209003, 15.492481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835547, 19.351654, 15.339192>,  <16.040035, 19.437244, 15.247219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835547, 19.351654, 15.339192>,  <15.494735, 19.209003, 15.492481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835547, 19.351654, 15.339192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407797, 0.006854, 0.913047,
		0.328245, -0.934221, -0.139592,
		0.852031, 0.356628, -0.383223,
		16.091156, 19.458643, 15.224226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980346, 18.863287, 15.861840>,  <15.494735, 19.209003, 15.492481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980346, 18.863287, 15.861840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192299, 19.165840, 15.708421>,  <16.319471, 19.347372, 15.616369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192299, 19.165840, 15.708421>,  <15.980346, 18.863287, 15.861840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192299, 19.165840, 15.708421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533113, 0.054648, 0.844277,
		0.659557, -0.651843, -0.374281,
		0.529882, 0.756383, -0.383549,
		16.351263, 19.392756, 15.593356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650320, 18.749271, 16.100447>,  <15.980346, 18.863287, 15.861840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650320, 18.749271, 16.100447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624149, 19.133831, 15.993537>,  <16.608448, 19.364567, 15.929391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624149, 19.133831, 15.993537>,  <16.650320, 18.749271, 16.100447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624149, 19.133831, 15.993537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467964, 0.266129, 0.842725,
		0.881322, -0.069939, -0.467310,
		-0.065425, 0.961397, -0.267275,
		16.604523, 19.422251, 15.913355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385614, 19.048103, 16.160723>,  <16.650320, 18.749271, 16.100447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385614, 19.048103, 16.160723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115715, 19.343296, 16.164761>,  <16.953775, 19.520411, 16.167183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115715, 19.343296, 16.164761>,  <17.385614, 19.048103, 16.160723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115715, 19.343296, 16.164761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413508, 0.366678, 0.833402,
		0.611333, 0.566509, -0.552576,
		-0.674747, 0.737980, 0.010094,
		16.913292, 19.564690, 16.167789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781507, 19.612825, 16.307028>,  <17.385614, 19.048103, 16.160723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781507, 19.612825, 16.307028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405094, 19.712830, 16.398201>,  <17.179247, 19.772831, 16.452906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405094, 19.712830, 16.398201>,  <17.781507, 19.612825, 16.307028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405094, 19.712830, 16.398201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321552, 0.451474, 0.832332,
		0.105184, 0.856543, -0.505242,
		-0.941032, 0.250010, 0.227935,
		17.122784, 19.787832, 16.466581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872824, 20.226471, 16.500208>,  <17.781507, 19.612825, 16.307028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872824, 20.226471, 16.500208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510254, 20.172192, 16.660198>,  <17.292711, 20.139624, 16.756191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510254, 20.172192, 16.660198>,  <17.872824, 20.226471, 16.500208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510254, 20.172192, 16.660198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290056, 0.488370, 0.823020,
		-0.307020, 0.862021, -0.403310,
		-0.906425, -0.135701, 0.399974,
		17.238327, 20.131481, 16.780190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656685, 20.900551, 16.828022>,  <17.872824, 20.226471, 16.500208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656685, 20.900551, 16.828022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439625, 20.616261, 17.007086>,  <17.309389, 20.445686, 17.114525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439625, 20.616261, 17.007086>,  <17.656685, 20.900551, 16.828022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439625, 20.616261, 17.007086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250098, 0.372068, 0.893878,
		-0.801861, 0.597022, -0.024152,
		-0.542651, -0.710725, 0.447661,
		17.276829, 20.403044, 17.141384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240805, 21.207397, 17.380455>,  <17.656685, 20.900551, 16.828022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.240805, 21.207397, 17.380455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235882, 20.819553, 17.478193>,  <17.232927, 20.586847, 17.536837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235882, 20.819553, 17.478193>,  <17.240805, 21.207397, 17.380455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235882, 20.819553, 17.478193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071602, 0.242882, 0.967410,
		-0.997357, 0.029403, 0.066436,
		-0.012308, -0.969610, 0.244345,
		17.232189, 20.528671, 17.551497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578243, 21.149597, 17.748241>,  <17.240805, 21.207397, 17.380455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578243, 21.149597, 17.748241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830521, 20.860264, 17.860680>,  <16.981888, 20.686665, 17.928143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830521, 20.860264, 17.860680>,  <16.578243, 21.149597, 17.748241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830521, 20.860264, 17.860680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053309, 0.320984, 0.945583,
		-0.774199, -0.611358, 0.163883,
		0.630694, -0.723333, 0.281096,
		17.019730, 20.643265, 17.945009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251322, 20.872074, 18.246277>,  <16.578243, 21.149597, 17.748241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251322, 20.872074, 18.246277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614712, 20.723663, 18.323233>,  <16.832745, 20.634617, 18.369406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614712, 20.723663, 18.323233>,  <16.251322, 20.872074, 18.246277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614712, 20.723663, 18.323233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086325, 0.283820, 0.954984,
		-0.408931, -0.884185, 0.225814,
		0.908473, -0.371029, 0.192391,
		16.887253, 20.612354, 18.380949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.531944, 22.540350, 16.589378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.170052, 22.690372, 16.670168>,  <22.952915, 22.780386, 16.718641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.170052, 22.690372, 16.670168>,  <23.531944, 22.540350, 16.589378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.170052, 22.690372, 16.670168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406018, -0.615796, -0.675236,
		-0.128878, -0.692912, 0.709410,
		-0.904732, 0.375057, 0.201972,
		22.898632, 22.802889, 16.730759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085690, 21.981173, 16.753462>,  <23.531944, 22.540350, 16.589378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085690, 21.981173, 16.753462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.855316, 22.268219, 16.596836>,  <22.717093, 22.440447, 16.502861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.855316, 22.268219, 16.596836>,  <23.085690, 21.981173, 16.753462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.855316, 22.268219, 16.596836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369472, -0.655767, -0.658377,
		-0.729239, -0.234510, 0.642818,
		-0.575935, 0.717618, -0.391566,
		22.682535, 22.483505, 16.479366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442524, 21.661352, 16.579168>,  <23.085690, 21.981173, 16.753462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442524, 21.661352, 16.579168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.413006, 22.008846, 16.383270>,  <22.395294, 22.217342, 16.265732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.413006, 22.008846, 16.383270>,  <22.442524, 21.661352, 16.579168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413006, 22.008846, 16.383270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540795, -0.447469, -0.712259,
		-0.837911, 0.212290, 0.502830,
		-0.073795, 0.868737, -0.489744,
		22.390867, 22.269468, 16.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.738979, 21.645964, 16.362701>,  <22.442524, 21.661352, 16.579168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.738979, 21.645964, 16.362701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.924091, 21.911186, 16.127348>,  <22.035158, 22.070320, 15.986136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.924091, 21.911186, 16.127348>,  <21.738979, 21.645964, 16.362701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924091, 21.911186, 16.127348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487230, -0.364238, -0.793686,
		-0.740569, 0.653979, 0.154498,
		0.462780, 0.663055, -0.588381,
		22.062925, 22.110104, 15.950833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217775, 22.030695, 16.058550>,  <21.738979, 21.645964, 16.362701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217775, 22.030695, 16.058550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.546398, 22.055309, 15.831832>,  <21.743572, 22.070078, 15.695801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.546398, 22.055309, 15.831832>,  <21.217775, 22.030695, 16.058550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546398, 22.055309, 15.831832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541336, -0.227730, -0.809379,
		-0.178883, 0.971778, -0.153781,
		0.821558, 0.061537, -0.566795,
		21.792866, 22.073771, 15.661794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048685, 22.338627, 15.489582>,  <21.217775, 22.030695, 16.058550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048685, 22.338627, 15.489582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.381866, 22.165154, 15.352113>,  <21.581776, 22.061069, 15.269631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.381866, 22.165154, 15.352113>,  <21.048685, 22.338627, 15.489582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.381866, 22.165154, 15.352113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447924, -0.163785, -0.878942,
		0.324892, 0.886056, -0.330681,
		0.832952, -0.433681, -0.343673,
		21.631752, 22.035049, 15.249011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.068310, 22.460100, 14.766614>,  <21.048685, 22.338627, 15.489582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.068310, 22.460100, 14.766614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.298714, 22.138264, 14.824363>,  <21.436956, 21.945162, 14.859013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.298714, 22.138264, 14.824363>,  <21.068310, 22.460100, 14.766614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298714, 22.138264, 14.824363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359325, -0.407855, -0.839368,
		0.734232, 0.431609, -0.524039,
		0.576011, -0.804592, 0.144372,
		21.471518, 21.896887, 14.867675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034056, 22.175924, 14.145926>,  <21.068310, 22.460100, 14.766614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034056, 22.175924, 14.145926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.230740, 21.878448, 14.327100>,  <21.348749, 21.699963, 14.435803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.230740, 21.878448, 14.327100>,  <21.034056, 22.175924, 14.145926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230740, 21.878448, 14.327100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117029, -0.571881, -0.811946,
		0.862859, 0.346235, -0.368232,
		0.491709, -0.743689, 0.452933,
		21.378252, 21.655342, 14.462979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614037, 21.984097, 13.740448>,  <21.034056, 22.175924, 14.145926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614037, 21.984097, 13.740448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.519073, 21.679943, 13.982261>,  <21.462095, 21.497452, 14.127348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.519073, 21.679943, 13.982261>,  <21.614037, 21.984097, 13.740448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519073, 21.679943, 13.982261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013896, -0.624918, -0.780567,
		0.971311, -0.176911, 0.158926,
		-0.237407, -0.760382, 0.604531,
		21.447851, 21.451828, 14.163620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026657, 21.506506, 13.563015>,  <21.614037, 21.984097, 13.740448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026657, 21.506506, 13.563015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.736031, 21.305367, 13.750308>,  <21.561655, 21.184683, 13.862684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.736031, 21.305367, 13.750308>,  <22.026657, 21.506506, 13.563015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736031, 21.305367, 13.750308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082389, -0.612791, -0.785939,
		0.682138, -0.609614, 0.403805,
		-0.726568, -0.502850, 0.468233,
		21.518061, 21.154512, 13.890778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356749, 20.877121, 13.718016>,  <22.026657, 21.506506, 13.563015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356749, 20.877121, 13.718016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.956829, 20.871250, 13.712554>,  <21.716877, 20.867727, 13.709277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.956829, 20.871250, 13.712554>,  <22.356749, 20.877121, 13.718016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956829, 20.871250, 13.712554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019956, -0.664188, -0.747299,
		0.001899, -0.747422, 0.664347,
		-0.999799, -0.014677, -0.013654,
		21.656889, 20.866848, 13.708458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223801, 20.149250, 13.633304>,  <22.356749, 20.877121, 13.718016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223801, 20.149250, 13.633304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.889465, 20.347321, 13.538497>,  <21.688864, 20.466164, 13.481613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.889465, 20.347321, 13.538497>,  <22.223801, 20.149250, 13.633304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.889465, 20.347321, 13.538497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008880, -0.443880, -0.896042,
		-0.548907, -0.746840, 0.375409,
		-0.835836, 0.495177, -0.237017,
		21.638714, 20.495874, 13.467392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813158, 19.672878, 13.372735>,  <22.223801, 20.149250, 13.633304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813158, 19.672878, 13.372735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.597912, 19.984238, 13.243413>,  <21.468763, 20.171053, 13.165820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.597912, 19.984238, 13.243413>,  <21.813158, 19.672878, 13.372735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597912, 19.984238, 13.243413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240665, -0.509503, -0.826127,
		-0.807781, -0.366746, 0.461506,
		-0.538117, 0.778398, -0.323304,
		21.436476, 20.217756, 13.146421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171537, 19.321539, 13.162504>,  <21.813158, 19.672878, 13.372735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171537, 19.321539, 13.162504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.199734, 19.668056, 12.964690>,  <21.216652, 19.875967, 12.846002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.199734, 19.668056, 12.964690>,  <21.171537, 19.321539, 13.162504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199734, 19.668056, 12.964690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307317, -0.452793, -0.836980,
		-0.948993, 0.210978, 0.234310,
		0.070491, 0.866295, -0.494534,
		21.220881, 19.927944, 12.816330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595100, 18.931751, 13.479708>,  <21.171537, 19.321539, 13.162504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595100, 18.931751, 13.479708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.493488, 18.546906, 13.519311>,  <20.432522, 18.315998, 13.543073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.493488, 18.546906, 13.519311>,  <20.595100, 18.931751, 13.479708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.493488, 18.546906, 13.519311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122457, 0.069548, 0.990034,
		-0.959413, 0.263622, 0.100150,
		-0.254030, -0.962115, 0.099008,
		20.417280, 18.258270, 13.549013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062361, 18.924593, 13.969567>,  <20.595100, 18.931751, 13.479708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062361, 18.924593, 13.969567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.249870, 18.571724, 13.951575>,  <20.362377, 18.360003, 13.940781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.249870, 18.571724, 13.951575>,  <20.062361, 18.924593, 13.969567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249870, 18.571724, 13.951575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097647, 0.001145, 0.995220,
		-0.877903, -0.470927, 0.086678,
		0.468776, -0.882171, -0.044980,
		20.390503, 18.307072, 13.938082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855234, 18.707130, 14.505099>,  <20.062361, 18.924593, 13.969567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855234, 18.707130, 14.505099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.167561, 18.466530, 14.437545>,  <20.354956, 18.322170, 14.397012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.167561, 18.466530, 14.437545>,  <19.855234, 18.707130, 14.505099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.167561, 18.466530, 14.437545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200337, -0.014991, 0.979612,
		-0.591771, -0.798730, 0.108798,
		0.780815, -0.601503, -0.168886,
		20.401806, 18.286079, 14.386879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743464, 18.182306, 14.965155>,  <19.855234, 18.707130, 14.505099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743464, 18.182306, 14.965155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.133030, 18.214088, 14.880141>,  <20.366770, 18.233158, 14.829133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.133030, 18.214088, 14.880141>,  <19.743464, 18.182306, 14.965155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133030, 18.214088, 14.880141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218014, -0.068109, 0.973566,
		0.062881, -0.994509, -0.083655,
		0.973918, 0.079457, -0.212534,
		20.425205, 18.237925, 14.816381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971903, 17.831636, 15.543823>,  <19.743464, 18.182306, 14.965155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971903, 17.831636, 15.543823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.295761, 18.001869, 15.382155>,  <20.490076, 18.104010, 15.285154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.295761, 18.001869, 15.382155>,  <19.971903, 17.831636, 15.543823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295761, 18.001869, 15.382155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437185, 0.022142, 0.899099,
		0.391590, -0.904649, -0.168131,
		0.809646, 0.425583, -0.404169,
		20.538654, 18.129543, 15.260904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.651421, 17.551472, 15.888340>,  <19.971903, 17.831636, 15.543823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.651421, 17.551472, 15.888340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.784908, 17.898216, 15.740186>,  <20.865002, 18.106262, 15.651294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.784908, 17.898216, 15.740186>,  <20.651421, 17.551472, 15.888340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784908, 17.898216, 15.740186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503819, 0.168070, 0.847301,
		0.796742, -0.469368, -0.380652,
		0.333719, 0.866860, -0.370385,
		20.885025, 18.158274, 15.629070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313461, 17.625717, 16.232021>,  <20.651421, 17.551472, 15.888340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313461, 17.625717, 16.232021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195400, 17.987816, 16.109764>,  <21.124563, 18.205074, 16.036409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195400, 17.987816, 16.109764>,  <21.313461, 17.625717, 16.232021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195400, 17.987816, 16.109764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526425, 0.421033, 0.738653,
		0.797347, 0.057118, -0.600813,
		-0.295152, 0.905245, -0.305641,
		21.106855, 18.259390, 16.018072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938593, 18.000376, 16.285307>,  <21.313461, 17.625717, 16.232021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938593, 18.000376, 16.285307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.657524, 18.284477, 16.268373>,  <21.488884, 18.454939, 16.258213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.657524, 18.284477, 16.268373>,  <21.938593, 18.000376, 16.285307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657524, 18.284477, 16.268373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415533, 0.457936, 0.785892,
		0.577569, 0.534633, -0.616913,
		-0.702671, 0.710255, -0.042332,
		21.446722, 18.497553, 16.255674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264442, 18.684938, 16.243605>,  <21.938593, 18.000376, 16.285307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264442, 18.684938, 16.243605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.893875, 18.761433, 16.373331>,  <21.671535, 18.807329, 16.451168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.893875, 18.761433, 16.373331>,  <22.264442, 18.684938, 16.243605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893875, 18.761433, 16.373331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375432, 0.534080, 0.757502,
		-0.028350, 0.823521, -0.566576,
		-0.926416, 0.191236, 0.324317,
		21.615950, 18.818804, 16.470627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.203760, 19.412348, 16.435730>,  <22.264442, 18.684938, 16.243605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.203760, 19.412348, 16.435730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.884380, 19.258621, 16.621107>,  <21.692753, 19.166386, 16.732332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.884380, 19.258621, 16.621107>,  <22.203760, 19.412348, 16.435730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884380, 19.258621, 16.621107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072339, 0.702943, 0.707558,
		-0.597698, 0.598475, -0.533464,
		-0.798451, -0.384316, 0.463441,
		21.644846, 19.143326, 16.760139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.533024, 19.913685, 16.512978>,  <22.203760, 19.412348, 16.435730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.533024, 19.913685, 16.512978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.567520, 19.633801, 16.796658>,  <21.588219, 19.465870, 16.966866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.567520, 19.633801, 16.796658>,  <21.533024, 19.913685, 16.512978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567520, 19.633801, 16.796658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039594, 0.713699, 0.699332,
		-0.995487, -0.032232, 0.089256,
		0.086243, -0.699710, 0.709202,
		21.593393, 19.423887, 17.009418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.105400, 20.210083, 16.979897>,  <21.533024, 19.913685, 16.512978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.105400, 20.210083, 16.979897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.340126, 19.953495, 17.177547>,  <21.480963, 19.799543, 17.296139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.340126, 19.953495, 17.177547>,  <21.105400, 20.210083, 16.979897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340126, 19.953495, 17.177547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113284, 0.669285, 0.734319,
		-0.801756, -0.374933, 0.465416,
		0.586817, -0.641469, 0.494130,
		21.516171, 19.761055, 17.325787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796347, 20.159647, 17.613174>,  <21.105400, 20.210083, 16.979897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796347, 20.159647, 17.613174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.166180, 20.028687, 17.691101>,  <21.388081, 19.950109, 17.737858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.166180, 20.028687, 17.691101>,  <20.796347, 20.159647, 17.613174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.166180, 20.028687, 17.691101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070731, 0.649981, 0.756651,
		-0.374355, -0.685808, 0.624120,
		0.924584, -0.327401, 0.194816,
		21.443554, 19.930466, 17.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816189, 19.929121, 18.274717>,  <20.796347, 20.159647, 17.613174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816189, 19.929121, 18.274717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.203091, 19.987007, 18.191311>,  <21.435232, 20.021738, 18.141268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.203091, 19.987007, 18.191311>,  <20.816189, 19.929121, 18.274717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203091, 19.987007, 18.191311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090346, 0.571414, 0.815673,
		0.237188, -0.807801, 0.539628,
		0.967254, 0.144715, -0.208514,
		21.493267, 20.030422, 18.128757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609974, 19.201860, 18.318550>,  <20.816189, 19.929121, 18.274717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609974, 19.201860, 18.318550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.344204, 19.034729, 18.566408>,  <20.184742, 18.934450, 18.715122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.344204, 19.034729, 18.566408>,  <20.609974, 19.201860, 18.318550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344204, 19.034729, 18.566408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283307, -0.626418, -0.726180,
		0.691575, -0.658042, 0.297834,
		-0.664425, -0.417830, 0.619643,
		20.144876, 18.909380, 18.752300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.621864, 18.419828, 18.256134>,  <20.609974, 19.201860, 18.318550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.621864, 18.419828, 18.256134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.264965, 18.480621, 18.426214>,  <20.050825, 18.517097, 18.528261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.264965, 18.480621, 18.426214>,  <20.621864, 18.419828, 18.256134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264965, 18.480621, 18.426214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414553, -0.648982, -0.637940,
		0.178991, -0.745468, 0.642058,
		-0.892249, 0.151982, 0.425198,
		19.997290, 18.526217, 18.553774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.353321, 17.764629, 18.376741>,  <20.621864, 18.419828, 18.256134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.353321, 17.764629, 18.376741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.056866, 18.029472, 18.332336>,  <19.878992, 18.188379, 18.305695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.056866, 18.029472, 18.332336>,  <20.353321, 17.764629, 18.376741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056866, 18.029472, 18.332336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405339, -0.573128, -0.712197,
		-0.535172, -0.482843, 0.693147,
		-0.741142, 0.662108, -0.111007,
		19.834524, 18.228106, 18.299034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825823, 17.414762, 18.525644>,  <20.353321, 17.764629, 18.376741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825823, 17.414762, 18.525644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.698967, 17.725693, 18.308319>,  <19.622854, 17.912251, 18.177923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.698967, 17.725693, 18.308319>,  <19.825823, 17.414762, 18.525644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698967, 17.725693, 18.308319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423309, -0.628676, -0.652362,
		-0.848666, 0.023101, 0.528425,
		-0.317138, 0.777324, -0.543314,
		19.603825, 17.958891, 18.145325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035341, 17.295012, 18.449072>,  <19.825823, 17.414762, 18.525644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035341, 17.295012, 18.449072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.176083, 17.532650, 18.159727>,  <19.260529, 17.675232, 17.986120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.176083, 17.532650, 18.159727>,  <19.035341, 17.295012, 18.449072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176083, 17.532650, 18.159727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516743, -0.521072, -0.679309,
		-0.780496, 0.612810, 0.123652,
		0.351855, 0.594094, -0.723360,
		19.281639, 17.710878, 17.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486784, 17.290966, 17.956846>,  <19.035341, 17.295012, 18.449072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486784, 17.290966, 17.956846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.786564, 17.438477, 17.736908>,  <18.966433, 17.526983, 17.604946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.786564, 17.438477, 17.736908>,  <18.486784, 17.290966, 17.956846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786564, 17.438477, 17.736908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534355, -0.153402, -0.831223,
		-0.390884, 0.916772, 0.082091,
		0.749449, 0.368778, -0.549844,
		19.011398, 17.549110, 17.571955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103140, 17.554638, 17.372107>,  <18.486784, 17.290966, 17.956846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103140, 17.554638, 17.372107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.485291, 17.555161, 17.253954>,  <18.714581, 17.555473, 17.183062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.485291, 17.555161, 17.253954>,  <18.103140, 17.554638, 17.372107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485291, 17.555161, 17.253954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288280, -0.213872, -0.933356,
		-0.064394, 0.976861, -0.203952,
		0.955379, 0.001307, -0.295381,
		18.771904, 17.555553, 17.165340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241377, 18.083603, 16.826454>,  <18.103140, 17.554638, 17.372107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241377, 18.083603, 16.826454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.514462, 17.793823, 16.788336>,  <18.678312, 17.619955, 16.765465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.514462, 17.793823, 16.788336>,  <18.241377, 18.083603, 16.826454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514462, 17.793823, 16.788336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228945, -0.088236, -0.969432,
		0.693895, 0.683659, -0.226099,
		0.682711, -0.724448, -0.095294,
		18.719275, 17.576488, 16.759748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565735, 18.132605, 16.121344>,  <18.241377, 18.083603, 16.826454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565735, 18.132605, 16.121344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.679867, 17.764996, 16.230145>,  <18.748346, 17.544430, 16.295425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.679867, 17.764996, 16.230145>,  <18.565735, 18.132605, 16.121344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679867, 17.764996, 16.230145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203729, -0.335471, -0.919757,
		0.936526, 0.207022, -0.282952,
		0.285332, -0.919022, 0.272001,
		18.765467, 17.489288, 16.311745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050259, 17.856672, 15.548138>,  <18.565735, 18.132605, 16.121344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050259, 17.856672, 15.548138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.894115, 17.545483, 15.745065>,  <18.800430, 17.358768, 15.863221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.894115, 17.545483, 15.745065>,  <19.050259, 17.856672, 15.548138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894115, 17.545483, 15.745065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147620, -0.474934, -0.867552,
		0.908752, -0.411331, 0.070549,
		-0.390357, -0.777975, 0.492317,
		18.777008, 17.312090, 15.892760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161333, 17.328590, 15.090703>,  <19.050259, 17.856672, 15.548138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161333, 17.328590, 15.090703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.939407, 17.114731, 15.345679>,  <18.806252, 16.986414, 15.498665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.939407, 17.114731, 15.345679>,  <19.161333, 17.328590, 15.090703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.939407, 17.114731, 15.345679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248530, -0.624688, -0.740268,
		0.793988, -0.569133, 0.213708,
		-0.554812, -0.534651, 0.637442,
		18.772964, 16.954336, 15.536912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510868, 16.728363, 15.061435>,  <19.161333, 17.328590, 15.090703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510868, 16.728363, 15.061435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.119385, 16.721928, 15.143287>,  <18.884495, 16.718067, 15.192398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.119385, 16.721928, 15.143287>,  <19.510868, 16.728363, 15.061435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119385, 16.721928, 15.143287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154660, -0.597656, -0.786694,
		0.134954, -0.801591, 0.582442,
		-0.978707, -0.016087, 0.204630,
		18.825773, 16.717102, 15.204676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359535, 15.976505, 14.999731>,  <19.510868, 16.728363, 15.061435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359535, 15.976505, 14.999731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.028427, 16.196289, 14.954324>,  <18.829762, 16.328159, 14.927079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.028427, 16.196289, 14.954324>,  <19.359535, 15.976505, 14.999731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028427, 16.196289, 14.954324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207841, -0.488231, -0.847604,
		-0.521153, -0.678026, 0.518343,
		-0.827769, 0.549465, -0.113522,
		18.780096, 16.361128, 14.920268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843273, 15.550932, 14.824471>,  <19.359535, 15.976505, 14.999731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843273, 15.550932, 14.824471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.686615, 15.892460, 14.687297>,  <18.592621, 16.097376, 14.604992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.686615, 15.892460, 14.687297>,  <18.843273, 15.550932, 14.824471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686615, 15.892460, 14.687297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180003, -0.436606, -0.881461,
		-0.902338, -0.283489, 0.324684,
		-0.391644, 0.853820, -0.342937,
		18.569122, 16.148605, 14.584415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.230003, 20.550486, 18.994114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.622276, 20.603676, 18.936735>,  <16.857641, 20.635590, 18.902308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.622276, 20.603676, 18.936735>,  <16.230003, 20.550486, 18.994114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622276, 20.603676, 18.936735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094094, 0.322211, 0.941980,
		0.171480, -0.937282, 0.303475,
		0.980684, 0.132975, -0.143445,
		16.916481, 20.643568, 18.893702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566544, 20.096308, 19.499350>,  <16.230003, 20.550486, 18.994114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566544, 20.096308, 19.499350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.818592, 20.374638, 19.361492>,  <16.969820, 20.541636, 19.278778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.818592, 20.374638, 19.361492>,  <16.566544, 20.096308, 19.499350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818592, 20.374638, 19.361492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377481, 0.113373, 0.919051,
		0.678570, -0.709209, -0.191222,
		0.630120, 0.695823, -0.344644,
		17.007627, 20.583384, 19.258099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324900, 19.928288, 19.771727>,  <16.566544, 20.096308, 19.499350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324900, 19.928288, 19.771727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.320023, 20.315655, 19.672113>,  <17.317097, 20.548075, 19.612345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.320023, 20.315655, 19.672113>,  <17.324900, 19.928288, 19.771727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.320023, 20.315655, 19.672113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446487, 0.228118, 0.865223,
		0.894707, -0.100642, -0.435167,
		-0.012192, 0.968418, -0.249034,
		17.316364, 20.606180, 19.597403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903893, 20.171152, 20.128780>,  <17.324900, 19.928288, 19.771727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903893, 20.171152, 20.128780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.711605, 20.504097, 20.018450>,  <17.596231, 20.703865, 19.952251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.711605, 20.504097, 20.018450>,  <17.903893, 20.171152, 20.128780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711605, 20.504097, 20.018450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433248, 0.498938, 0.750571,
		0.762368, 0.241313, -0.600469,
		-0.480720, 0.832363, -0.275826,
		17.567389, 20.753805, 19.935701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430180, 20.600868, 19.958145>,  <17.903893, 20.171152, 20.128780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430180, 20.600868, 19.958145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118721, 20.827374, 20.066261>,  <17.931847, 20.963276, 20.131132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118721, 20.827374, 20.066261>,  <18.430180, 20.600868, 19.958145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118721, 20.827374, 20.066261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522715, 0.347100, 0.778647,
		0.347100, 0.747576, -0.566261,
		-0.778647, 0.566261, 0.270291,
		17.885126, 20.997252, 20.147348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712227, 21.166071, 20.096685>,  <18.430180, 20.600868, 19.958145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712227, 21.166071, 20.096685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.351551, 21.191029, 20.267830>,  <18.135145, 21.206003, 20.370516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.351551, 21.191029, 20.267830>,  <18.712227, 21.166071, 20.096685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.351551, 21.191029, 20.267830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425482, 0.304165, 0.852320,
		-0.076960, 0.950574, -0.300810,
		-0.901689, 0.062395, 0.427860,
		18.081045, 21.209747, 20.396189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650816, 21.812096, 20.501076>,  <18.712227, 21.166071, 20.096685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650816, 21.812096, 20.501076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.350399, 21.610119, 20.671238>,  <18.170149, 21.488934, 20.773336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.350399, 21.610119, 20.671238>,  <18.650816, 21.812096, 20.501076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350399, 21.610119, 20.671238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316369, 0.290307, 0.903123,
		-0.579522, 0.812869, -0.058285,
		-0.751042, -0.504941, 0.425407,
		18.125086, 21.458637, 20.798861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251850, 22.279333, 20.966970>,  <18.650816, 21.812096, 20.501076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251850, 22.279333, 20.966970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218086, 21.897511, 21.081305>,  <18.197828, 21.668417, 21.149904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218086, 21.897511, 21.081305>,  <18.251850, 22.279333, 20.966970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218086, 21.897511, 21.081305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256248, 0.256415, 0.931981,
		-0.962918, 0.151913, 0.222959,
		-0.084410, -0.954554, 0.285834,
		18.192762, 21.611145, 21.167055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847471, 22.335855, 21.538261>,  <18.251850, 22.279333, 20.966970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847471, 22.335855, 21.538261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.052475, 21.993134, 21.560949>,  <18.175478, 21.787500, 21.574562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.052475, 21.993134, 21.560949>,  <17.847471, 22.335855, 21.538261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052475, 21.993134, 21.560949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210208, 0.189234, 0.959168,
		-0.832554, -0.479660, 0.277091,
		0.512510, -0.856806, 0.056719,
		18.206228, 21.736092, 21.577965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673120, 22.206247, 22.127167>,  <17.847471, 22.335855, 21.538261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673120, 22.206247, 22.127167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.985317, 21.972603, 22.038040>,  <18.172636, 21.832417, 21.984564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.985317, 21.972603, 22.038040>,  <17.673120, 22.206247, 22.127167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985317, 21.972603, 22.038040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294682, 0.029406, 0.955143,
		-0.551358, -0.811141, 0.195079,
		0.780492, -0.584112, -0.222815,
		18.219465, 21.797369, 21.971195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649817, 21.810156, 22.758314>,  <17.673120, 22.206247, 22.127167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649817, 21.810156, 22.758314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.006126, 21.801502, 22.576744>,  <18.219913, 21.796310, 22.467802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.006126, 21.801502, 22.576744>,  <17.649817, 21.810156, 22.758314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.006126, 21.801502, 22.576744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454442, 0.043846, 0.889697,
		0.000656, -0.998804, 0.048888,
		0.890776, -0.021634, -0.453927,
		18.273359, 21.795013, 22.440565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031836, 21.272472, 23.043646>,  <17.649817, 21.810156, 22.758314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031836, 21.272472, 23.043646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330498, 21.478996, 22.875868>,  <18.509695, 21.602911, 22.775202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330498, 21.478996, 22.875868>,  <18.031836, 21.272472, 23.043646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330498, 21.478996, 22.875868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561053, -0.150017, 0.814073,
		0.357389, -0.843161, -0.401687,
		0.746655, 0.516308, -0.419444,
		18.554495, 21.633888, 22.750034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651991, 20.984797, 23.339237>,  <18.031836, 21.272472, 23.043646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651991, 20.984797, 23.339237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.764828, 21.355099, 23.238516>,  <18.832529, 21.577280, 23.178083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.764828, 21.355099, 23.238516>,  <18.651991, 20.984797, 23.339237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764828, 21.355099, 23.238516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469642, 0.095615, 0.877664,
		0.836577, -0.365839, -0.407800,
		0.282092, 0.925754, -0.251803,
		18.849455, 21.632824, 23.162975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236118, 21.011484, 23.594467>,  <18.651991, 20.984797, 23.339237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236118, 21.011484, 23.594467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.252705, 21.402439, 23.511522>,  <19.262657, 21.637012, 23.461756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.252705, 21.402439, 23.511522>,  <19.236118, 21.011484, 23.594467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252705, 21.402439, 23.511522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392341, 0.174940, 0.903031,
		0.918885, -0.118803, -0.376214,
		0.041467, 0.977385, -0.207361,
		19.265144, 21.695654, 23.449314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.001213, 21.191084, 23.806549>,  <19.236118, 21.011484, 23.594467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.001213, 21.191084, 23.806549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.382637, 21.096115, 23.880686>,  <20.611492, 21.039133, 23.925167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.382637, 21.096115, 23.880686>,  <20.001213, 21.191084, 23.806549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382637, 21.096115, 23.880686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049578, -0.483229, -0.874089,
		0.297092, 0.842686, -0.449018,
		0.953561, -0.237423, 0.185342,
		20.668705, 21.024889, 23.936289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374668, 21.285307, 23.188395>,  <20.001213, 21.191084, 23.806549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374668, 21.285307, 23.188395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.636559, 21.053280, 23.382242>,  <20.793694, 20.914064, 23.498550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.636559, 21.053280, 23.382242>,  <20.374668, 21.285307, 23.188395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636559, 21.053280, 23.382242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222632, -0.464712, -0.857017,
		0.722337, 0.669002, -0.175117,
		0.654725, -0.580068, 0.484620,
		20.832975, 20.879259, 23.527628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139067, 21.285639, 22.878372>,  <20.374668, 21.285307, 23.188395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139067, 21.285639, 22.878372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.104664, 20.936958, 23.071344>,  <21.084023, 20.727751, 23.187128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.104664, 20.936958, 23.071344>,  <21.139067, 21.285639, 22.878372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104664, 20.936958, 23.071344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159579, -0.490028, -0.856976,
		0.983431, 0.003279, 0.181252,
		-0.086009, -0.871701, 0.482432,
		21.078861, 20.675447, 23.216074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.583427, 20.839151, 22.579288>,  <21.139067, 21.285639, 22.878372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.583427, 20.839151, 22.579288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.395588, 20.534943, 22.758657>,  <21.282885, 20.352417, 22.866280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.395588, 20.534943, 22.758657>,  <21.583427, 20.839151, 22.579288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395588, 20.534943, 22.758657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167822, -0.575544, -0.800366,
		0.866783, -0.300596, 0.397907,
		-0.469599, -0.760521, 0.448425,
		21.254707, 20.306786, 22.893185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.995646, 20.200451, 22.431923>,  <21.583427, 20.839151, 22.579288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.995646, 20.200451, 22.431923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.627796, 20.080963, 22.533949>,  <21.407085, 20.009272, 22.595163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.627796, 20.080963, 22.533949>,  <21.995646, 20.200451, 22.431923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.627796, 20.080963, 22.533949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018600, -0.615506, -0.787913,
		0.392357, -0.729328, 0.560479,
		-0.919625, -0.298718, 0.255064,
		21.351908, 19.991348, 22.610468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962914, 19.435486, 22.274614>,  <21.995646, 20.200451, 22.431923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962914, 19.435486, 22.274614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.570690, 19.510845, 22.296570>,  <21.335356, 19.556061, 22.309744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.570690, 19.510845, 22.296570>,  <21.962914, 19.435486, 22.274614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570690, 19.510845, 22.296570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142032, -0.488388, -0.860990,
		-0.135404, -0.852046, 0.505651,
		-0.980557, 0.188400, 0.054889,
		21.276524, 19.567366, 22.313036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541174, 18.768377, 22.101854>,  <21.962914, 19.435486, 22.274614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541174, 18.768377, 22.101854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.306953, 19.082184, 22.020208>,  <21.166422, 19.270468, 21.971220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.306953, 19.082184, 22.020208>,  <21.541174, 18.768377, 22.101854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306953, 19.082184, 22.020208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155555, -0.355860, -0.921502,
		-0.795572, -0.507833, 0.330409,
		-0.585549, 0.784518, -0.204116,
		21.131289, 19.317539, 21.958973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930271, 18.426830, 21.727934>,  <21.541174, 18.768377, 22.101854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930271, 18.426830, 21.727934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.917877, 18.817581, 21.643316>,  <20.910440, 19.052032, 21.592545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.917877, 18.817581, 21.643316>,  <20.930271, 18.426830, 21.727934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917877, 18.817581, 21.643316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371585, -0.207736, -0.904859,
		-0.927882, 0.050573, 0.369429,
		-0.030983, 0.976877, -0.211546,
		20.908583, 19.110643, 21.579853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.286676, 18.612928, 21.525108>,  <20.930271, 18.426830, 21.727934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.286676, 18.612928, 21.525108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.491211, 18.916359, 21.363569>,  <20.613932, 19.098417, 21.266645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.491211, 18.916359, 21.363569>,  <20.286676, 18.612928, 21.525108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491211, 18.916359, 21.363569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502696, -0.117123, -0.856492,
		-0.697016, 0.640970, 0.321445,
		0.511337, 0.758578, -0.403850,
		20.644611, 19.143932, 21.242414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772739, 18.969234, 21.230169>,  <20.286676, 18.612928, 21.525108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772739, 18.969234, 21.230169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.133175, 19.057129, 21.080635>,  <20.349436, 19.109865, 20.990915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.133175, 19.057129, 21.080635>,  <19.772739, 18.969234, 21.230169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133175, 19.057129, 21.080635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374856, -0.038665, -0.926277,
		-0.217990, 0.974793, 0.047528,
		0.901090, 0.219735, -0.373835,
		20.403502, 19.123049, 20.968485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522713, 19.211851, 20.630039>,  <19.772739, 18.969234, 21.230169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522713, 19.211851, 20.630039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.916237, 19.198574, 20.559593>,  <20.152351, 19.190607, 20.517326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.916237, 19.198574, 20.559593>,  <19.522713, 19.211851, 20.630039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916237, 19.198574, 20.559593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176561, -0.011086, -0.984227,
		0.030718, 0.999388, -0.016767,
		0.983810, -0.033194, -0.176113,
		20.211380, 19.188616, 20.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742483, 19.798088, 20.144577>,  <19.522713, 19.211851, 20.630039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742483, 19.798088, 20.144577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.990334, 19.486267, 20.107992>,  <20.139044, 19.299175, 20.086040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.990334, 19.486267, 20.107992>,  <19.742483, 19.798088, 20.144577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990334, 19.486267, 20.107992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310336, -0.136286, -0.940807,
		0.720942, 0.611332, -0.326369,
		0.619625, -0.779551, -0.091464,
		20.176222, 19.252401, 20.080553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090467, 19.936815, 19.553171>,  <19.742483, 19.798088, 20.144577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090467, 19.936815, 19.553171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.172516, 19.547993, 19.598841>,  <20.221745, 19.314699, 19.626242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.172516, 19.547993, 19.598841>,  <20.090467, 19.936815, 19.553171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.172516, 19.547993, 19.598841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358687, -0.183196, -0.915305,
		0.910642, 0.146795, -0.386241,
		0.205120, -0.972055, 0.114172,
		20.234053, 19.256376, 19.633093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438797, 19.738590, 18.898634>,  <20.090467, 19.936815, 19.553171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438797, 19.738590, 18.898634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.311584, 19.391842, 19.052198>,  <20.235256, 19.183792, 19.144337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.311584, 19.391842, 19.052198>,  <20.438797, 19.738590, 18.898634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311584, 19.391842, 19.052198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157895, -0.350850, -0.923024,
		0.934839, -0.354170, -0.025293,
		-0.318033, -0.866873, 0.383910,
		20.216175, 19.131781, 19.167372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165220, 19.706198, 18.925699>,  <20.438797, 19.738590, 18.898634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165220, 19.706198, 18.925699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.434113, 19.924404, 18.725492>,  <21.595448, 20.055328, 18.605370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.434113, 19.924404, 18.725492>,  <21.165220, 19.706198, 18.925699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.434113, 19.924404, 18.725492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162816, 0.550577, 0.818753,
		0.722216, -0.631883, 0.281296,
		0.672231, 0.545517, -0.500517,
		21.635782, 20.088058, 18.575338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867020, 19.670073, 19.313675>,  <21.165220, 19.706198, 18.925699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867020, 19.670073, 19.313675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.863579, 20.012325, 19.106670>,  <21.861515, 20.217676, 18.982468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.863579, 20.012325, 19.106670>,  <21.867020, 19.670073, 19.313675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863579, 20.012325, 19.106670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230266, 0.505319, 0.831643,
		0.973090, -0.112012, -0.201370,
		-0.008602, 0.855632, -0.517514,
		21.860998, 20.269014, 18.951416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498743, 20.083330, 19.480742>,  <21.867020, 19.670073, 19.313675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498743, 20.083330, 19.480742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.264374, 20.370392, 19.330185>,  <22.123753, 20.542629, 19.239851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.264374, 20.370392, 19.330185>,  <22.498743, 20.083330, 19.480742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264374, 20.370392, 19.330185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234496, 0.594748, 0.768952,
		0.775697, 0.362284, -0.516763,
		-0.585923, 0.717652, -0.376390,
		22.088596, 20.585688, 19.217268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863939, 20.633007, 19.369751>,  <22.498743, 20.083330, 19.480742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863939, 20.633007, 19.369751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.497433, 20.790714, 19.398071>,  <22.277529, 20.885338, 19.415064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.497433, 20.790714, 19.398071>,  <22.863939, 20.633007, 19.369751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497433, 20.790714, 19.398071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351528, 0.706669, 0.614041,
		0.192062, 0.587513, -0.786092,
		-0.916264, 0.394267, 0.070803,
		22.222553, 20.908995, 19.419312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.040085, 21.279053, 19.373547>,  <22.863939, 20.633007, 19.369751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.040085, 21.279053, 19.373547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.663467, 21.284393, 19.508198>,  <22.437498, 21.287598, 19.588989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.663467, 21.284393, 19.508198>,  <23.040085, 21.279053, 19.373547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.663467, 21.284393, 19.508198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252821, 0.688417, 0.679826,
		-0.222665, 0.725192, -0.651549,
		-0.941542, 0.013351, 0.336630,
		22.381004, 21.288399, 19.609186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886583, 22.030624, 19.544712>,  <23.040085, 21.279053, 19.373547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886583, 22.030624, 19.544712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.609463, 21.818417, 19.740088>,  <22.443190, 21.691092, 19.857313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.609463, 21.818417, 19.740088>,  <22.886583, 22.030624, 19.544712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609463, 21.818417, 19.740088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108739, 0.592728, 0.798029,
		-0.712881, 0.605989, -0.352956,
		-0.692803, -0.530520, 0.488439,
		22.401621, 21.659260, 19.886620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.424347, 22.558594, 19.815508>,  <22.886583, 22.030624, 19.544712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.424347, 22.558594, 19.815508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.341270, 22.227612, 20.024193>,  <22.291426, 22.029022, 20.149403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.341270, 22.227612, 20.024193>,  <22.424347, 22.558594, 19.815508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341270, 22.227612, 20.024193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056929, 0.522213, 0.850913,
		-0.976537, 0.206426, -0.061352,
		-0.207690, -0.827455, 0.521711,
		22.278963, 21.979376, 20.180706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005266, 23.170813, 19.388844>,  <22.424347, 22.558594, 19.815508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005266, 23.170813, 19.388844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.233253, 23.497265, 19.350765>,  <22.370047, 23.693136, 19.327917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.233253, 23.497265, 19.350765>,  <22.005266, 23.170813, 19.388844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233253, 23.497265, 19.350765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110929, -0.191229, -0.975257,
		-0.814143, 0.545307, -0.199528,
		0.569970, 0.816132, -0.095197,
		22.404245, 23.742104, 19.322206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645691, 23.647999, 18.919720>,  <22.005266, 23.170813, 19.388844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645691, 23.647999, 18.919720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.033928, 23.742008, 18.898901>,  <22.266870, 23.798414, 18.886410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.033928, 23.742008, 18.898901>,  <21.645691, 23.647999, 18.919720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033928, 23.742008, 18.898901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042152, -0.046939, -0.998008,
		-0.236999, 0.970855, -0.035652,
		0.970595, 0.235025, -0.052048,
		22.325106, 23.812515, 18.883286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629787, 24.013042, 18.364153>,  <21.645691, 23.647999, 18.919720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629787, 24.013042, 18.364153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018749, 23.942207, 18.424911>,  <22.252127, 23.899706, 18.461367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018749, 23.942207, 18.424911>,  <21.629787, 24.013042, 18.364153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018749, 23.942207, 18.424911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123378, -0.162256, -0.979005,
		0.198015, 0.970728, -0.135929,
		0.972403, -0.177087, 0.151896,
		22.310471, 23.889082, 18.470480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.138344, 24.400375, 17.898031>,  <21.629787, 24.013042, 18.364153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.138344, 24.400375, 17.898031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.329681, 24.070999, 18.020102>,  <22.444485, 23.873373, 18.093344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.329681, 24.070999, 18.020102>,  <22.138344, 24.400375, 17.898031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329681, 24.070999, 18.020102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125807, -0.279672, -0.951817,
		0.869115, 0.493689, -0.030184,
		0.478343, -0.823441, 0.305177,
		22.473185, 23.823967, 18.111654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631168, 24.305698, 17.390507>,  <22.138344, 24.400375, 17.898031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631168, 24.305698, 17.390507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.626251, 23.953747, 17.580521>,  <22.623301, 23.742575, 17.694529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.626251, 23.953747, 17.580521>,  <22.631168, 24.305698, 17.390507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.626251, 23.953747, 17.580521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118893, -0.472987, -0.873011,
		0.992831, 0.045748, 0.110425,
		-0.012291, -0.879881, 0.475035,
		22.622564, 23.689783, 17.723032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329660, 23.986570, 17.165594>,  <22.631168, 24.305698, 17.390507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329660, 23.986570, 17.165594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.099125, 23.681339, 17.282587>,  <22.960804, 23.498201, 17.352783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.099125, 23.681339, 17.282587>,  <23.329660, 23.986570, 17.165594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099125, 23.681339, 17.282587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085428, -0.412201, -0.907079,
		0.812733, -0.497799, 0.302756,
		-0.576340, -0.763077, 0.292483,
		22.926224, 23.452415, 17.370333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595097, 23.253702, 16.897644>,  <23.329660, 23.986570, 17.165594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595097, 23.253702, 16.897644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.206928, 23.185322, 16.965834>,  <22.974028, 23.144295, 17.006748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.206928, 23.185322, 16.965834>,  <23.595097, 23.253702, 16.897644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206928, 23.185322, 16.965834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050904, -0.545366, -0.836651,
		0.235996, -0.820580, 0.520532,
		-0.970420, -0.170949, 0.170475,
		22.915802, 23.134037, 17.016975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.690380, 24.527414, 21.223938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.501286, 24.183540, 21.301361>,  <20.387829, 23.977217, 21.347815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.501286, 24.183540, 21.301361>,  <20.690380, 24.527414, 21.223938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501286, 24.183540, 21.301361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298282, -0.050575, -0.953137,
		0.829185, -0.508318, -0.232519,
		-0.472737, -0.859683, 0.193558,
		20.359465, 23.925636, 21.359428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893539, 24.080202, 20.653639>,  <20.690380, 24.527414, 21.223938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893539, 24.080202, 20.653639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.575310, 23.903442, 20.819427>,  <20.384371, 23.797386, 20.918901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.575310, 23.903442, 20.819427>,  <20.893539, 24.080202, 20.653639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575310, 23.903442, 20.819427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325965, -0.264453, -0.907641,
		0.510693, -0.857199, 0.066349,
		-0.795575, -0.441898, 0.414471,
		20.336637, 23.770872, 20.943769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752670, 23.448053, 20.400284>,  <20.893539, 24.080202, 20.653639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752670, 23.448053, 20.400284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.387081, 23.575508, 20.500780>,  <20.167728, 23.651981, 20.561079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.387081, 23.575508, 20.500780>,  <20.752670, 23.448053, 20.400284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387081, 23.575508, 20.500780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310311, -0.149903, -0.938742,
		-0.261460, -0.935947, 0.235885,
		-0.913972, 0.318641, 0.251241,
		20.112888, 23.671099, 20.576153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290009, 23.150576, 19.882212>,  <20.752670, 23.448053, 20.400284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290009, 23.150576, 19.882212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.032791, 23.399517, 20.060726>,  <19.878460, 23.548882, 20.167835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.032791, 23.399517, 20.060726>,  <20.290009, 23.150576, 19.882212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032791, 23.399517, 20.060726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536142, 0.050277, -0.842629,
		-0.546850, -0.781121, 0.301339,
		-0.643045, 0.622353, 0.446286,
		19.839878, 23.586224, 20.194613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613012, 22.865290, 19.756754>,  <20.290009, 23.150576, 19.882212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613012, 22.865290, 19.756754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571056, 23.256756, 19.827427>,  <19.545883, 23.491634, 19.869831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571056, 23.256756, 19.827427>,  <19.613012, 22.865290, 19.756754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571056, 23.256756, 19.827427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635566, 0.070679, -0.768805,
		-0.764889, -0.192932, 0.614592,
		-0.104888, 0.978663, 0.176682,
		19.539591, 23.550354, 19.880432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013327, 23.076668, 19.509724>,  <19.613012, 22.865290, 19.756754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013327, 23.076668, 19.509724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.145355, 23.453449, 19.534302>,  <19.224571, 23.679518, 19.549047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.145355, 23.453449, 19.534302>,  <19.013327, 23.076668, 19.509724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145355, 23.453449, 19.534302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452412, 0.214986, -0.865508,
		-0.828479, 0.257881, 0.497112,
		0.330070, 0.941955, 0.061443,
		19.244375, 23.736036, 19.552734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.369936, 23.529572, 19.495226>,  <19.013327, 23.076668, 19.509724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.369936, 23.529572, 19.495226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.707668, 23.715660, 19.388889>,  <18.910309, 23.827314, 19.325089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.707668, 23.715660, 19.388889>,  <18.369936, 23.529572, 19.495226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707668, 23.715660, 19.388889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378712, 0.167159, -0.910294,
		-0.379053, 0.869267, 0.317323,
		0.844332, 0.465223, -0.265840,
		18.960968, 23.855227, 19.309137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147688, 24.059008, 19.136646>,  <18.369936, 23.529572, 19.495226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147688, 24.059008, 19.136646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.529148, 24.023708, 19.021572>,  <18.758024, 24.002529, 18.952528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.529148, 24.023708, 19.021572>,  <18.147688, 24.059008, 19.136646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529148, 24.023708, 19.021572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259247, 0.244447, -0.934364,
		0.152782, 0.965638, 0.210238,
		0.953650, -0.088251, -0.287686,
		18.815243, 23.997232, 18.935266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239695, 24.630672, 18.632437>,  <18.147688, 24.059008, 19.136646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239695, 24.630672, 18.632437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.523884, 24.360607, 18.553055>,  <18.694397, 24.198568, 18.505426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.523884, 24.360607, 18.553055>,  <18.239695, 24.630672, 18.632437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523884, 24.360607, 18.553055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165933, 0.113328, -0.979603,
		0.683882, 0.728911, -0.031516,
		0.710472, -0.675163, -0.198453,
		18.737026, 24.158058, 18.493519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500788, 24.963535, 18.107796>,  <18.239695, 24.630672, 18.632437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.500788, 24.963535, 18.107796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.623520, 24.583141, 18.092392>,  <18.697159, 24.354904, 18.083149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.623520, 24.583141, 18.092392>,  <18.500788, 24.963535, 18.107796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623520, 24.583141, 18.092392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089846, 0.011340, -0.995891,
		0.947513, 0.309032, -0.081962,
		0.306833, -0.950984, -0.038510,
		18.715570, 24.297846, 18.080839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864542, 24.940519, 17.382940>,  <18.500788, 24.963535, 18.107796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864542, 24.940519, 17.382940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.805527, 24.562363, 17.499193>,  <18.770117, 24.335468, 17.568945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.805527, 24.562363, 17.499193>,  <18.864542, 24.940519, 17.382940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805527, 24.562363, 17.499193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345166, -0.226158, -0.910886,
		0.926873, -0.234706, -0.292950,
		-0.147538, -0.945392, 0.290632,
		18.761265, 24.278746, 17.586382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919579, 24.539818, 16.801636>,  <18.864542, 24.940519, 17.382940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919579, 24.539818, 16.801636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.712330, 24.299927, 17.045561>,  <18.587980, 24.155993, 17.191916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.712330, 24.299927, 17.045561>,  <18.919579, 24.539818, 16.801636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712330, 24.299927, 17.045561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539224, -0.324394, -0.777179,
		0.663917, -0.731500, -0.155313,
		-0.518124, -0.599730, 0.609813,
		18.556892, 24.120008, 17.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662033, 24.319407, 16.723034>,  <18.919579, 24.539818, 16.801636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662033, 24.319407, 16.723034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.902889, 24.574959, 16.531511>,  <20.047403, 24.728291, 16.416597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.902889, 24.574959, 16.531511>,  <19.662033, 24.319407, 16.723034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902889, 24.574959, 16.531511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236846, 0.429776, 0.871318,
		0.762450, -0.638059, 0.107469,
		0.602141, 0.638883, -0.478805,
		20.083532, 24.766624, 16.387869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318932, 24.345079, 17.091204>,  <19.662033, 24.319407, 16.723034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318932, 24.345079, 17.091204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.312374, 24.679886, 16.872431>,  <20.308439, 24.880770, 16.741167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.312374, 24.679886, 16.872431>,  <20.318932, 24.345079, 17.091204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312374, 24.679886, 16.872431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149153, 0.542932, 0.826425,
		0.988678, -0.068026, -0.133746,
		-0.016396, 0.837017, -0.546931,
		20.307455, 24.930990, 16.708351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894810, 24.705437, 17.247355>,  <20.318932, 24.345079, 17.091204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894810, 24.705437, 17.247355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.644833, 24.981789, 17.101955>,  <20.494846, 25.147600, 17.014715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.644833, 24.981789, 17.101955>,  <20.894810, 24.705437, 17.247355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644833, 24.981789, 17.101955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139579, 0.557007, 0.818695,
		0.768091, 0.460901, -0.444530,
		-0.624943, 0.690879, -0.363500,
		20.457350, 25.189053, 16.992905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.219439, 25.338509, 17.309498>,  <20.894810, 24.705437, 17.247355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.219439, 25.338509, 17.309498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.835976, 25.446476, 17.273457>,  <20.605898, 25.511257, 17.251833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.835976, 25.446476, 17.273457>,  <21.219439, 25.338509, 17.309498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835976, 25.446476, 17.273457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100245, 0.616675, 0.780809,
		0.266318, 0.739497, -0.618239,
		-0.958658, 0.269918, -0.090101,
		20.548378, 25.527451, 17.246426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272369, 26.110949, 17.283897>,  <21.219439, 25.338509, 17.309498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272369, 26.110949, 17.283897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.904343, 25.991817, 17.385698>,  <20.683527, 25.920338, 17.446779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.904343, 25.991817, 17.385698>,  <21.272369, 26.110949, 17.283897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904343, 25.991817, 17.385698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012509, 0.626981, 0.778935,
		-0.391559, 0.719856, -0.573139,
		-0.920068, -0.297829, 0.254504,
		20.628323, 25.902470, 17.462049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055401, 26.642725, 17.518387>,  <21.272369, 26.110949, 17.283897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055401, 26.642725, 17.518387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.821358, 26.368984, 17.692427>,  <20.680931, 26.204741, 17.796850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.821358, 26.368984, 17.692427>,  <21.055401, 26.642725, 17.518387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821358, 26.368984, 17.692427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080314, 0.484987, 0.870826,
		-0.806967, 0.544473, -0.228808,
		-0.585110, -0.684352, 0.435097,
		20.645824, 26.163679, 17.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.668512, 27.085106, 18.021626>,  <21.055401, 26.642725, 17.518387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.668512, 27.085106, 18.021626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.603901, 26.704506, 18.126358>,  <20.565134, 26.476147, 18.189198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.603901, 26.704506, 18.126358>,  <20.668512, 27.085106, 18.021626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.603901, 26.704506, 18.126358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003744, 0.264724, 0.964317,
		-0.986861, 0.156746, -0.039198,
		-0.161529, -0.951500, 0.261833,
		20.555443, 26.419056, 18.204908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036127, 27.058939, 18.491909>,  <20.668512, 27.085106, 18.021626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036127, 27.058939, 18.491909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.236366, 26.727180, 18.591108>,  <20.356510, 26.528126, 18.650627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.236366, 26.727180, 18.591108>,  <20.036127, 27.058939, 18.491909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236366, 26.727180, 18.591108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084268, 0.238427, 0.967497,
		-0.861568, -0.505227, 0.049465,
		0.500599, -0.829396, 0.247996,
		20.386547, 26.478361, 18.665506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839291, 27.069342, 19.175632>,  <20.036127, 27.058939, 18.491909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839291, 27.069342, 19.175632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113701, 26.779465, 19.149752>,  <20.278347, 26.605537, 19.134224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113701, 26.779465, 19.149752>,  <19.839291, 27.069342, 19.175632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113701, 26.779465, 19.149752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051978, -0.039884, 0.997851,
		-0.725717, -0.687916, 0.010307,
		0.686027, -0.724693, -0.064701,
		20.319510, 26.562057, 19.130341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526327, 26.516056, 19.449247>,  <19.839291, 27.069342, 19.175632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526327, 26.516056, 19.449247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.920860, 26.467201, 19.493484>,  <20.157579, 26.437887, 19.520027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.920860, 26.467201, 19.493484>,  <19.526327, 26.516056, 19.449247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920860, 26.467201, 19.493484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116651, -0.043596, 0.992216,
		-0.116372, -0.991555, -0.057249,
		0.986332, -0.122144, 0.110592,
		20.216761, 26.430559, 19.526663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620735, 25.890455, 19.805471>,  <19.526327, 26.516056, 19.449247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620735, 25.890455, 19.805471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.958294, 26.101292, 19.845503>,  <20.160830, 26.227793, 19.869522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.958294, 26.101292, 19.845503>,  <19.620735, 25.890455, 19.805471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958294, 26.101292, 19.845503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032993, -0.135196, 0.990269,
		0.535490, -0.838987, -0.096701,
		0.843896, 0.527089, 0.100077,
		20.211462, 26.259418, 19.875526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148041, 25.386459, 20.200502>,  <19.620735, 25.890455, 19.805471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148041, 25.386459, 20.200502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.233295, 25.775253, 20.240139>,  <20.284449, 26.008530, 20.263920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.233295, 25.775253, 20.240139>,  <20.148041, 25.386459, 20.200502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233295, 25.775253, 20.240139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039403, -0.109889, 0.993163,
		0.976228, -0.207775, -0.061720,
		0.213136, 0.971985, 0.099090,
		20.297235, 26.066849, 20.269867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819229, 25.403206, 20.702036>,  <20.148041, 25.386459, 20.200502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819229, 25.403206, 20.702036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.616356, 25.747795, 20.692049>,  <20.494631, 25.954550, 20.686056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.616356, 25.747795, 20.692049>,  <20.819229, 25.403206, 20.702036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616356, 25.747795, 20.692049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023918, 0.014891, 0.999603,
		0.861505, 0.507581, 0.013053,
		-0.507185, 0.861475, -0.024969,
		20.464201, 26.006237, 20.684559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092136, 25.722040, 21.225906>,  <20.819229, 25.403206, 20.702036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092136, 25.722040, 21.225906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.788097, 25.970901, 21.150881>,  <20.605675, 26.120218, 21.105865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.788097, 25.970901, 21.150881>,  <21.092136, 25.722040, 21.225906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788097, 25.970901, 21.150881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050931, 0.230717, 0.971687,
		0.647811, 0.748129, -0.143681,
		-0.760097, 0.622152, -0.187564,
		20.560068, 26.157547, 21.094612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647579, 26.213633, 20.976011>,  <21.092136, 25.722040, 21.225906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647579, 26.213633, 20.976011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.808205, 25.964592, 21.244671>,  <21.904581, 25.815168, 21.405867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.808205, 25.964592, 21.244671>,  <21.647579, 26.213633, 20.976011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808205, 25.964592, 21.244671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242906, -0.634708, -0.733582,
		0.883030, 0.457730, -0.103644,
		0.401566, -0.622599, 0.671651,
		21.928675, 25.777813, 21.446167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327032, 26.193550, 20.733240>,  <21.647579, 26.213633, 20.976011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327032, 26.193550, 20.733240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.221237, 25.873135, 20.948046>,  <22.157761, 25.680885, 21.076929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.221237, 25.873135, 20.948046>,  <22.327032, 26.193550, 20.733240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221237, 25.873135, 20.948046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361630, -0.598593, -0.714780,
		0.894018, 0.005149, 0.448001,
		-0.264489, -0.801037, 0.537015,
		22.141890, 25.632824, 21.109150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005201, 25.734921, 20.814447>,  <22.327032, 26.193550, 20.733240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005201, 25.734921, 20.814447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.680397, 25.505001, 20.854937>,  <22.485516, 25.367048, 20.879230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.680397, 25.505001, 20.854937>,  <23.005201, 25.734921, 20.814447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680397, 25.505001, 20.854937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422920, -0.699001, -0.576659,
		0.402218, -0.425444, 0.810690,
		-0.812009, -0.574800, 0.101222,
		22.436794, 25.332561, 20.885303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217396, 25.019920, 20.962523>,  <23.005201, 25.734921, 20.814447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217396, 25.019920, 20.962523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.849476, 24.956699, 20.818863>,  <22.628723, 24.918768, 20.732668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.849476, 24.956699, 20.818863>,  <23.217396, 25.019920, 20.962523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.849476, 24.956699, 20.818863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380212, -0.585238, -0.716195,
		-0.096992, -0.795309, 0.598395,
		-0.919800, -0.158052, -0.359149,
		22.573536, 24.909285, 20.711119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232647, 24.285583, 20.801931>,  <23.217396, 25.019920, 20.962523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232647, 24.285583, 20.801931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.902969, 24.411636, 20.613722>,  <22.705162, 24.487268, 20.500795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.902969, 24.411636, 20.613722>,  <23.232647, 24.285583, 20.801931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902969, 24.411636, 20.613722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180696, -0.641096, -0.745885,
		-0.536702, -0.699778, 0.471447,
		-0.824196, 0.315130, -0.470524,
		22.655710, 24.506176, 20.472565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.004141, 23.703279, 20.413742>,  <23.232647, 24.285583, 20.801931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.004141, 23.703279, 20.413742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.779343, 23.985580, 20.241198>,  <22.644464, 24.154961, 20.137671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.779343, 23.985580, 20.241198>,  <23.004141, 23.703279, 20.413742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.779343, 23.985580, 20.241198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045194, -0.546932, -0.835956,
		-0.825904, -0.450309, 0.339270,
		-0.561996, 0.705753, -0.431362,
		22.610744, 24.197306, 20.111790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.486696, 23.303686, 20.138510>,  <23.004141, 23.703279, 20.413742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.486696, 23.303686, 20.138510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.515427, 23.650318, 19.940971>,  <22.532665, 23.858297, 19.822449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.515427, 23.650318, 19.940971>,  <22.486696, 23.303686, 20.138510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515427, 23.650318, 19.940971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045717, -0.491743, -0.869539,
		-0.996369, 0.085033, 0.004297,
		0.071826, 0.866579, -0.493845,
		22.536974, 23.910292, 19.792818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963871, 22.799599, 20.351257>,  <22.486696, 23.303686, 20.138510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963871, 22.799599, 20.351257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.118908, 22.447285, 20.460062>,  <22.211929, 22.235897, 20.525345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.118908, 22.447285, 20.460062>,  <21.963871, 22.799599, 20.351257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118908, 22.447285, 20.460062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310859, 0.402680, 0.860939,
		-0.867836, -0.249136, 0.429875,
		0.387593, -0.880784, 0.272014,
		22.235186, 22.183050, 20.541666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536837, 22.609066, 21.009537>,  <21.963871, 22.799599, 20.351257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536837, 22.609066, 21.009537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.864407, 22.379505, 21.009031>,  <22.060947, 22.241768, 21.008728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.864407, 22.379505, 21.009031>,  <21.536837, 22.609066, 21.009537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864407, 22.379505, 21.009031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289962, 0.411853, 0.863886,
		-0.495265, -0.707823, 0.503686,
		0.818923, -0.573902, -0.001266,
		22.110083, 22.207335, 21.008652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535275, 22.111750, 21.644464>,  <21.536837, 22.609066, 21.009537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535275, 22.111750, 21.644464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.910213, 22.190819, 21.529711>,  <22.135178, 22.238260, 21.460859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.910213, 22.190819, 21.529711>,  <21.535275, 22.111750, 21.644464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910213, 22.190819, 21.529711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217489, 0.311285, 0.925095,
		0.272166, -0.929531, 0.248792,
		0.937350, 0.197670, -0.286884,
		22.191418, 22.250120, 21.443645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779963, 21.786963, 22.195009>,  <21.535275, 22.111750, 21.644464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779963, 21.786963, 22.195009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.042690, 22.045338, 22.039394>,  <22.200327, 22.200363, 21.946026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.042690, 22.045338, 22.039394>,  <21.779963, 21.786963, 22.195009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042690, 22.045338, 22.039394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195891, 0.352048, 0.915254,
		0.728158, -0.677366, 0.104699,
		0.656820, 0.645939, -0.389036,
		22.239737, 22.239119, 21.922684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.393806, 21.801723, 22.659700>,  <21.779963, 21.786963, 22.195009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.393806, 21.801723, 22.659700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.475986, 22.129562, 22.445766>,  <22.525295, 22.326265, 22.317406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.475986, 22.129562, 22.445766>,  <22.393806, 21.801723, 22.659700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.475986, 22.129562, 22.445766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267693, 0.478591, 0.836237,
		0.941345, -0.314979, -0.121073,
		0.205453, 0.819597, -0.534836,
		22.537622, 22.375441, 22.285316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109581, 21.897333, 22.885559>,  <22.393806, 21.801723, 22.659700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109581, 21.897333, 22.885559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.941814, 22.235603, 22.753544>,  <22.841154, 22.438564, 22.674335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.941814, 22.235603, 22.753544>,  <23.109581, 21.897333, 22.885559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.941814, 22.235603, 22.753544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341858, 0.483931, 0.805570,
		0.840965, 0.225045, -0.492070,
		-0.419418, 0.845674, -0.330036,
		22.815989, 22.489305, 22.654533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584028, 22.550722, 22.918768>,  <23.109581, 21.897333, 22.885559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584028, 22.550722, 22.918768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.211845, 22.696507, 22.903687>,  <22.988537, 22.783978, 22.894638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.211845, 22.696507, 22.903687>,  <23.584028, 22.550722, 22.918768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.211845, 22.696507, 22.903687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150379, 0.473677, 0.867765,
		0.334125, 0.801747, -0.495543,
		-0.930455, 0.364461, -0.037702,
		22.932709, 22.805845, 22.892376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696095, 23.163874, 23.253397>,  <23.584028, 22.550722, 22.918768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696095, 23.163874, 23.253397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.297932, 23.130791, 23.272676>,  <23.059034, 23.110941, 23.284245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.297932, 23.130791, 23.272676>,  <23.696095, 23.163874, 23.253397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.297932, 23.130791, 23.272676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004718, 0.460514, 0.887640,
		-0.095609, 0.883791, -0.458009,
		-0.995408, -0.082706, 0.048199,
		22.999310, 23.105980, 23.287136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.383623, 23.865461, 23.319477>,  <23.696095, 23.163874, 23.253397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.383623, 23.865461, 23.319477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.165390, 23.571354, 23.480337>,  <23.034451, 23.394890, 23.576853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.165390, 23.571354, 23.480337>,  <23.383623, 23.865461, 23.319477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.165390, 23.571354, 23.480337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055936, 0.510736, 0.857916,
		-0.836189, 0.445568, -0.319776,
		-0.545581, -0.735267, 0.402149,
		23.001715, 23.350775, 23.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.777819, 17.419672, 8.719298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.567379, 17.150066, 8.926732>,  <18.441116, 16.988304, 9.051192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.567379, 17.150066, 8.926732>,  <18.777819, 17.419672, 8.719298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567379, 17.150066, 8.926732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416852, 0.327131, 0.848068,
		-0.741253, 0.662339, 0.108861,
		-0.526097, -0.674012, 0.518584,
		18.409550, 16.947863, 9.082307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564938, 17.770927, 9.280555>,  <18.777819, 17.419672, 8.719298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564938, 17.770927, 9.280555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.537815, 17.388981, 9.396231>,  <18.521542, 17.159813, 9.465636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.537815, 17.388981, 9.396231>,  <18.564938, 17.770927, 9.280555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537815, 17.388981, 9.396231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501592, 0.217937, 0.837203,
		-0.862443, 0.201822, 0.464177,
		-0.067805, -0.954867, 0.289191,
		18.517473, 17.102520, 9.482987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656767, 17.780933, 9.927354>,  <18.564938, 17.770927, 9.280555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656767, 17.780933, 9.927354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695591, 17.382824, 9.928330>,  <18.718885, 17.143957, 9.928917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695591, 17.382824, 9.928330>,  <18.656767, 17.780933, 9.927354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695591, 17.382824, 9.928330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352370, 0.036657, 0.935143,
		-0.930814, -0.089903, 0.354263,
		0.097058, -0.995276, 0.002442,
		18.724709, 17.084242, 9.929063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360819, 17.556557, 10.514104>,  <18.656767, 17.780933, 9.927354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.360819, 17.556557, 10.514104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.635975, 17.291058, 10.396634>,  <18.801069, 17.131758, 10.326152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.635975, 17.291058, 10.396634>,  <18.360819, 17.556557, 10.514104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635975, 17.291058, 10.396634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467067, 0.095101, 0.879093,
		-0.555569, -0.741884, 0.375435,
		0.687889, -0.663749, -0.293674,
		18.842342, 17.091932, 10.308532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352766, 17.175323, 11.011711>,  <18.360819, 17.556557, 10.514104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352766, 17.175323, 11.011711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.704639, 17.098698, 10.837604>,  <18.915764, 17.052723, 10.733139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.704639, 17.098698, 10.837604>,  <18.352766, 17.175323, 11.011711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704639, 17.098698, 10.837604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471529, 0.232465, 0.850658,
		-0.061772, -0.953553, 0.294825,
		0.879684, -0.191565, -0.435268,
		18.968544, 17.041227, 10.707023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.664320, 16.775230, 11.480936>,  <18.352766, 17.175323, 11.011711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.664320, 16.775230, 11.480936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.959843, 16.937027, 11.265325>,  <19.137156, 17.034105, 11.135958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.959843, 16.937027, 11.265325>,  <18.664320, 16.775230, 11.480936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959843, 16.937027, 11.265325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508638, 0.190026, 0.839748,
		0.442100, -0.894583, -0.065346,
		0.738806, 0.404490, -0.539029,
		19.181484, 17.058374, 11.103616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221497, 16.485430, 11.705795>,  <18.664320, 16.775230, 11.480936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221497, 16.485430, 11.705795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.375515, 16.818523, 11.546652>,  <19.467926, 17.018379, 11.451166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.375515, 16.818523, 11.546652>,  <19.221497, 16.485430, 11.705795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375515, 16.818523, 11.546652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473694, 0.191655, 0.859582,
		0.792056, -0.519442, -0.320666,
		0.385046, 0.832736, -0.397858,
		19.491030, 17.068344, 11.427295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912388, 16.402189, 11.841301>,  <19.221497, 16.485430, 11.705795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912388, 16.402189, 11.841301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839653, 16.789875, 11.774897>,  <19.796013, 17.022486, 11.735054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839653, 16.789875, 11.774897>,  <19.912388, 16.402189, 11.841301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839653, 16.789875, 11.774897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590818, 0.242639, 0.769454,
		0.786047, 0.041831, -0.616750,
		-0.181835, 0.969214, -0.166011,
		19.785103, 17.080639, 11.725093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555950, 16.757797, 11.984694>,  <19.912388, 16.402189, 11.841301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555950, 16.757797, 11.984694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.318600, 17.079254, 12.002864>,  <20.176189, 17.272129, 12.013766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.318600, 17.079254, 12.002864>,  <20.555950, 16.757797, 11.984694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318600, 17.079254, 12.002864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487944, 0.314246, 0.814346,
		0.640167, 0.505380, -0.578599,
		-0.593377, 0.803642, 0.045427,
		20.140587, 17.320347, 12.016492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029337, 17.334974, 12.114798>,  <20.555950, 16.757797, 11.984694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029337, 17.334974, 12.114798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.674904, 17.486050, 12.222287>,  <20.462244, 17.576694, 12.286780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.674904, 17.486050, 12.222287>,  <21.029337, 17.334974, 12.114798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.674904, 17.486050, 12.222287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400899, 0.333424, 0.853292,
		0.232678, 0.863818, -0.446855,
		-0.886082, 0.377686, 0.268723,
		20.409079, 17.599356, 12.302904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193644, 17.929642, 12.506871>,  <21.029337, 17.334974, 12.114798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193644, 17.929642, 12.506871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.806229, 17.880333, 12.593352>,  <20.573780, 17.850748, 12.645241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.806229, 17.880333, 12.593352>,  <21.193644, 17.929642, 12.506871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.806229, 17.880333, 12.593352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158481, 0.364328, 0.917687,
		-0.191894, 0.923076, -0.333328,
		-0.968535, -0.123272, 0.216202,
		20.515669, 17.843351, 12.658213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.943844, 18.605059, 12.749183>,  <21.193644, 17.929642, 12.506871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.943844, 18.605059, 12.749183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708366, 18.322689, 12.906718>,  <20.567080, 18.153267, 13.001240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708366, 18.322689, 12.906718>,  <20.943844, 18.605059, 12.749183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708366, 18.322689, 12.906718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372040, 0.195932, 0.907302,
		-0.717652, 0.680648, 0.147288,
		-0.588695, -0.705924, 0.393839,
		20.531757, 18.110912, 13.024870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738899, 19.248775, 12.600816>,  <20.943844, 18.605059, 12.749183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738899, 19.248775, 12.600816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.896866, 19.598583, 12.488204>,  <20.991646, 19.808468, 12.420637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.896866, 19.598583, 12.488204>,  <20.738899, 19.248775, 12.600816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896866, 19.598583, 12.488204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285558, -0.174415, -0.942357,
		-0.873212, 0.452543, 0.180847,
		0.394915, 0.874519, -0.281529,
		21.015341, 19.860939, 12.403746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282358, 19.553925, 12.117767>,  <20.738899, 19.248775, 12.600816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282358, 19.553925, 12.117767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640305, 19.717304, 12.045787>,  <20.855072, 19.815332, 12.002599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640305, 19.717304, 12.045787>,  <20.282358, 19.553925, 12.117767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640305, 19.717304, 12.045787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159794, -0.083268, -0.983632,
		-0.416748, 0.908975, -0.009246,
		0.894867, 0.408449, -0.179951,
		20.908764, 19.839838, 11.991801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222618, 20.209618, 11.590068>,  <20.282358, 19.553925, 12.117767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222618, 20.209618, 11.590068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.585472, 20.041462, 11.582294>,  <20.803185, 19.940569, 11.577631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.585472, 20.041462, 11.582294>,  <20.222618, 20.209618, 11.590068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585472, 20.041462, 11.582294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011191, 0.070259, -0.997466,
		0.420687, 0.904621, 0.068439,
		0.907137, -0.420387, -0.019433,
		20.857613, 19.915346, 11.576465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494019, 20.558289, 11.043133>,  <20.222618, 20.209618, 11.590068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494019, 20.558289, 11.043133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708458, 20.224304, 11.092839>,  <20.837122, 20.023914, 11.122663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.708458, 20.224304, 11.092839>,  <20.494019, 20.558289, 11.043133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708458, 20.224304, 11.092839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137278, -0.059018, -0.988773,
		0.832919, 0.547138, 0.082982,
		0.536098, -0.834959, 0.124267,
		20.869287, 19.973816, 11.130119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102140, 20.567869, 10.555482>,  <20.494019, 20.558289, 11.043133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102140, 20.567869, 10.555482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.016003, 20.188202, 10.647311>,  <20.964319, 19.960402, 10.702409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.016003, 20.188202, 10.647311>,  <21.102140, 20.567869, 10.555482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016003, 20.188202, 10.647311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064967, -0.248494, -0.966452,
		0.974375, -0.193205, 0.115176,
		-0.215344, -0.949170, 0.229574,
		20.951399, 19.903452, 10.716184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.613815, 20.234585, 10.140663>,  <21.102140, 20.567869, 10.555482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.613815, 20.234585, 10.140663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.343315, 19.955711, 10.235847>,  <21.181015, 19.788387, 10.292956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.343315, 19.955711, 10.235847>,  <21.613815, 20.234585, 10.140663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343315, 19.955711, 10.235847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046045, -0.282383, -0.958196,
		0.735233, -0.658935, 0.158859,
		-0.676248, -0.697183, 0.237958,
		21.140440, 19.746557, 10.307234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914423, 19.539679, 9.938080>,  <21.613815, 20.234585, 10.140663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914423, 19.539679, 9.938080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.519245, 19.490910, 9.976235>,  <21.282139, 19.461649, 9.999128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.519245, 19.490910, 9.976235>,  <21.914423, 19.539679, 9.938080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519245, 19.490910, 9.976235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005936, -0.645581, -0.763669,
		0.154690, -0.753897, 0.638522,
		-0.987945, -0.121922, 0.095389,
		21.222862, 19.454332, 10.004852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780037, 18.839235, 9.825733>,  <21.914423, 19.539679, 9.938080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780037, 18.839235, 9.825733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.425308, 19.014961, 9.768389>,  <21.212471, 19.120396, 9.733982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.425308, 19.014961, 9.768389>,  <21.780037, 18.839235, 9.825733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425308, 19.014961, 9.768389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178284, -0.611469, -0.770922,
		-0.426336, -0.658111, 0.620586,
		-0.886821, 0.439312, -0.143361,
		21.159262, 19.146755, 9.725380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.372766, 18.246901, 9.710125>,  <21.780037, 18.839235, 9.825733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.372766, 18.246901, 9.710125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.173492, 18.560440, 9.561859>,  <21.053928, 18.748564, 9.472899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.173492, 18.560440, 9.561859>,  <21.372766, 18.246901, 9.710125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173492, 18.560440, 9.561859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121447, -0.486358, -0.865278,
		-0.858524, -0.386051, 0.337492,
		-0.498183, 0.783850, -0.370666,
		21.024038, 18.795595, 9.450660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687187, 18.061974, 9.526308>,  <21.372766, 18.246901, 9.710125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687187, 18.061974, 9.526308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.734795, 18.395428, 9.310573>,  <20.763359, 18.595501, 9.181131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.734795, 18.395428, 9.310573>,  <20.687187, 18.061974, 9.526308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734795, 18.395428, 9.310573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479639, -0.427342, -0.766371,
		-0.869357, 0.349899, 0.348983,
		0.119017, 0.833636, -0.539338,
		20.770500, 18.645519, 9.148771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121450, 18.002449, 9.190445>,  <20.687187, 18.061974, 9.526308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121450, 18.002449, 9.190445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313309, 18.296322, 8.998534>,  <20.428423, 18.472645, 8.883388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.313309, 18.296322, 8.998534>,  <20.121450, 18.002449, 9.190445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313309, 18.296322, 8.998534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474043, -0.243160, -0.846260,
		-0.738393, 0.633339, 0.231640,
		0.479644, 0.734680, -0.479778,
		20.457203, 18.516726, 8.854601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549950, 18.453527, 8.957751>,  <20.121450, 18.002449, 9.190445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549950, 18.453527, 8.957751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.880276, 18.447720, 8.732251>,  <20.078472, 18.444235, 8.596951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.880276, 18.447720, 8.732251>,  <19.549950, 18.453527, 8.957751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880276, 18.447720, 8.732251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543656, -0.286189, -0.789009,
		-0.149883, 0.958063, -0.244233,
		0.825817, -0.014520, -0.563751,
		20.128021, 18.443363, 8.563126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336390, 18.681334, 8.286421>,  <19.549950, 18.453527, 8.957751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336390, 18.681334, 8.286421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.686012, 18.509312, 8.196023>,  <19.895786, 18.406097, 8.141784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.686012, 18.509312, 8.196023>,  <19.336390, 18.681334, 8.286421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686012, 18.509312, 8.196023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424597, -0.450158, -0.785542,
		0.236094, 0.782566, -0.576065,
		0.874058, -0.430057, -0.225995,
		19.948229, 18.380295, 8.128224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509859, 18.772781, 7.593639>,  <19.336390, 18.681334, 8.286421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509859, 18.772781, 7.593639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.717007, 18.439957, 7.673123>,  <19.841295, 18.240261, 7.720814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.717007, 18.439957, 7.673123>,  <19.509859, 18.772781, 7.593639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717007, 18.439957, 7.673123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507823, -0.485941, -0.711320,
		0.688423, 0.267461, -0.674194,
		0.517869, -0.832061, 0.198711,
		19.872368, 18.190338, 7.732737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834734, 19.166323, 7.552383>,  <19.509859, 18.772781, 7.593639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834734, 19.166323, 7.552383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.652302, 19.327942, 7.235212>,  <18.542843, 19.424913, 7.044909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.652302, 19.327942, 7.235212>,  <18.834734, 19.166323, 7.552383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652302, 19.327942, 7.235212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078164, 0.905736, 0.416572,
		0.886499, 0.128012, -0.444672,
		-0.456082, 0.404048, -0.792928,
		18.515478, 19.449156, 6.997334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209940, 19.758400, 7.334967>,  <18.834734, 19.166323, 7.552383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209940, 19.758400, 7.334967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.819962, 19.762108, 7.246070>,  <18.585974, 19.764332, 7.192731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.819962, 19.762108, 7.246070>,  <19.209940, 19.758400, 7.334967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819962, 19.762108, 7.246070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139355, 0.753297, 0.642747,
		0.173373, 0.657615, -0.733133,
		-0.974947, 0.009269, -0.222244,
		18.527477, 19.764889, 7.179397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949072, 20.369722, 7.024150>,  <19.209940, 19.758400, 7.334967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949072, 20.369722, 7.024150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683163, 20.197315, 7.268214>,  <18.523617, 20.093870, 7.414653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683163, 20.197315, 7.268214>,  <18.949072, 20.369722, 7.024150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683163, 20.197315, 7.268214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055984, 0.843215, 0.534653,
		-0.744943, 0.321265, -0.584678,
		-0.664775, -0.431019, 0.610161,
		18.483730, 20.068010, 7.451262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307011, 20.771015, 7.015320>,  <18.949072, 20.369722, 7.024150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307011, 20.771015, 7.015320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.305431, 20.575089, 7.364047>,  <18.304483, 20.457533, 7.573283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.305431, 20.575089, 7.364047>,  <18.307011, 20.771015, 7.015320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305431, 20.575089, 7.364047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262277, 0.841810, 0.471770,
		-0.964985, -0.226796, -0.131789,
		-0.003946, -0.489816, 0.871817,
		18.304247, 20.428144, 7.625592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976992, 21.212923, 7.386714>,  <18.307011, 20.771015, 7.015320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976992, 21.212923, 7.386714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.083801, 20.956760, 7.674763>,  <18.147886, 20.803062, 7.847592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.083801, 20.956760, 7.674763>,  <17.976992, 21.212923, 7.386714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083801, 20.956760, 7.674763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121139, 0.719023, 0.684348,
		-0.956046, -0.269971, 0.114417,
		0.267022, -0.640408, 0.720123,
		18.163908, 20.764639, 7.890800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508678, 21.331543, 7.956332>,  <17.976992, 21.212923, 7.386714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508678, 21.331543, 7.956332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.843006, 21.174740, 8.110079>,  <18.043602, 21.080658, 8.202327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.843006, 21.174740, 8.110079>,  <17.508678, 21.331543, 7.956332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843006, 21.174740, 8.110079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016815, 0.681509, 0.731617,
		-0.548749, -0.617962, 0.563026,
		0.835818, -0.392007, 0.384368,
		18.093752, 21.057138, 8.225389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409578, 21.498568, 8.663817>,  <17.508678, 21.331543, 7.956332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409578, 21.498568, 8.663817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788727, 21.377048, 8.625342>,  <18.016216, 21.304138, 8.602257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788727, 21.377048, 8.625342>,  <17.409578, 21.498568, 8.663817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788727, 21.377048, 8.625342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272746, 0.617361, 0.737886,
		-0.164784, -0.725654, 0.668036,
		0.947869, -0.303796, -0.096188,
		18.073088, 21.285910, 8.596486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692335, 21.070942, 9.286373>,  <17.409578, 21.498568, 8.663817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692335, 21.070942, 9.286373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.986698, 21.258549, 9.091043>,  <18.163317, 21.371113, 8.973845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.986698, 21.258549, 9.091043>,  <17.692335, 21.070942, 9.286373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986698, 21.258549, 9.091043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219899, 0.516562, 0.827531,
		0.640378, -0.716368, 0.277005,
		0.735908, 0.469020, -0.488324,
		18.207470, 21.399254, 8.944547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289673, 21.058914, 9.691415>,  <17.692335, 21.070942, 9.286373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289673, 21.058914, 9.691415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.406994, 21.359062, 9.454463>,  <18.477386, 21.539152, 9.312292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.406994, 21.359062, 9.454463>,  <18.289673, 21.058914, 9.691415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406994, 21.359062, 9.454463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552174, 0.372863, 0.745706,
		0.780433, -0.545816, -0.304974,
		0.293305, 0.750372, -0.592380,
		18.494986, 21.584173, 9.276749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.897989, 21.224543, 9.892944>,  <18.289673, 21.058914, 9.691415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.897989, 21.224543, 9.892944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.797127, 21.552845, 9.687898>,  <18.736610, 21.749826, 9.564870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.797127, 21.552845, 9.687898>,  <18.897989, 21.224543, 9.892944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797127, 21.552845, 9.687898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539917, 0.558941, 0.629344,
		0.803061, -0.118079, -0.584080,
		-0.252154, 0.820757, -0.512617,
		18.721481, 21.799072, 9.534113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490723, 21.600901, 9.744011>,  <18.897989, 21.224543, 9.892944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490723, 21.600901, 9.744011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.195107, 21.869053, 9.717444>,  <19.017736, 22.029945, 9.701505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.195107, 21.869053, 9.717444>,  <19.490723, 21.600901, 9.744011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195107, 21.869053, 9.717444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524757, 0.634698, 0.567264,
		0.422437, 0.384378, -0.820854,
		-0.739038, 0.670382, -0.066415,
		18.973394, 22.070168, 9.697520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822754, 22.217257, 9.999986>,  <19.490723, 21.600901, 9.744011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822754, 22.217257, 9.999986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446915, 22.351871, 9.975025>,  <19.221411, 22.432640, 9.960049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446915, 22.351871, 9.975025>,  <19.822754, 22.217257, 9.999986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446915, 22.351871, 9.975025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212589, 0.716691, 0.664199,
		0.268252, 0.610815, -0.744947,
		-0.939599, 0.336540, -0.062401,
		19.165035, 22.452833, 9.956305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742393, 22.980564, 9.730473>,  <19.822754, 22.217257, 9.999986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742393, 22.980564, 9.730473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.438461, 22.869408, 9.965568>,  <19.256102, 22.802713, 10.106625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.438461, 22.869408, 9.965568>,  <19.742393, 22.980564, 9.730473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438461, 22.869408, 9.965568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268962, 0.688681, 0.673333,
		-0.591879, 0.669697, -0.448537,
		-0.759829, -0.277892, 0.587739,
		19.210512, 22.786039, 10.141890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523359, 23.589602, 10.096645>,  <19.742393, 22.980564, 9.730473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523359, 23.589602, 10.096645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.359482, 23.302402, 10.321725>,  <19.261156, 23.130083, 10.456773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.359482, 23.302402, 10.321725>,  <19.523359, 23.589602, 10.096645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359482, 23.302402, 10.321725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216310, 0.522787, 0.824562,
		-0.886206, 0.459536, -0.058873,
		-0.409694, -0.717997, 0.562699,
		19.236574, 23.087004, 10.490535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182112, 23.937975, 10.701770>,  <19.523359, 23.589602, 10.096645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182112, 23.937975, 10.701770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.203556, 23.562302, 10.837451>,  <19.216423, 23.336897, 10.918859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.203556, 23.562302, 10.837451>,  <19.182112, 23.937975, 10.701770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.203556, 23.562302, 10.837451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080953, 0.342661, 0.935965,
		-0.995275, -0.022720, 0.094400,
		0.053612, -0.939185, 0.339202,
		19.219639, 23.280546, 10.939212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656193, 23.859154, 11.313966>,  <19.182112, 23.937975, 10.701770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656193, 23.859154, 11.313966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.921314, 23.561996, 11.351497>,  <19.080387, 23.383703, 11.374015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.921314, 23.561996, 11.351497>,  <18.656193, 23.859154, 11.313966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921314, 23.561996, 11.351497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031447, 0.152808, 0.987755,
		-0.748133, -0.651737, 0.124643,
		0.662803, -0.742891, 0.093826,
		19.120155, 23.339128, 11.379644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435812, 23.375078, 11.880124>,  <18.656193, 23.859154, 11.313966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435812, 23.375078, 11.880124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834484, 23.359131, 11.851726>,  <19.073687, 23.349564, 11.834686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834484, 23.359131, 11.851726>,  <18.435812, 23.375078, 11.880124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834484, 23.359131, 11.851726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072732, 0.043915, 0.996384,
		-0.036608, -0.998239, 0.046669,
		0.996680, -0.039870, -0.070996,
		19.133488, 23.347170, 11.830427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660423, 23.111851, 12.525263>,  <18.435812, 23.375078, 11.880124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660423, 23.111851, 12.525263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.019211, 23.200855, 12.372457>,  <19.234484, 23.254257, 12.280772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.019211, 23.200855, 12.372457>,  <18.660423, 23.111851, 12.525263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019211, 23.200855, 12.372457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352089, 0.163033, 0.921658,
		0.267361, -0.961202, 0.067891,
		0.896968, 0.222512, -0.382017,
		19.288301, 23.267609, 12.257852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166960, 22.740168, 12.958354>,  <18.660423, 23.111851, 12.525263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166960, 22.740168, 12.958354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.368187, 23.031464, 12.772197>,  <19.488924, 23.206242, 12.660502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.368187, 23.031464, 12.772197>,  <19.166960, 22.740168, 12.958354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.368187, 23.031464, 12.772197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408939, 0.273820, 0.870512,
		0.761374, -0.628245, -0.160055,
		0.503069, 0.728238, -0.465393,
		19.519108, 23.249935, 12.632579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801174, 22.690248, 13.280172>,  <19.166960, 22.740168, 12.958354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801174, 22.690248, 13.280172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.791634, 23.055958, 13.118413>,  <19.785910, 23.275383, 13.021358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.791634, 23.055958, 13.118413>,  <19.801174, 22.690248, 13.280172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791634, 23.055958, 13.118413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239345, 0.397972, 0.885625,
		0.970642, -0.075667, -0.228318,
		-0.023851, 0.914271, -0.404399,
		19.784479, 23.330238, 12.997093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459967, 23.025297, 13.532372>,  <19.801174, 22.690248, 13.280172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459967, 23.025297, 13.532372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.184738, 23.294987, 13.425056>,  <20.019600, 23.456800, 13.360667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.184738, 23.294987, 13.425056>,  <20.459967, 23.025297, 13.532372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184738, 23.294987, 13.425056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241205, 0.561212, 0.791746,
		0.684379, 0.480067, -0.548781,
		-0.688073, 0.674223, -0.268287,
		19.978315, 23.497253, 13.344570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838713, 23.581823, 13.486589>,  <20.459967, 23.025297, 13.532372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838713, 23.581823, 13.486589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.471027, 23.734013, 13.527164>,  <20.250416, 23.825327, 13.551508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.471027, 23.734013, 13.527164>,  <20.838713, 23.581823, 13.486589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471027, 23.734013, 13.527164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277094, 0.441997, 0.853145,
		0.279766, 0.812328, -0.511716,
		-0.919212, 0.380475, 0.101436,
		20.195265, 23.848156, 13.557594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928953, 24.292688, 13.690573>,  <20.838713, 23.581823, 13.486589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928953, 24.292688, 13.690573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.555588, 24.184433, 13.784802>,  <20.331568, 24.119480, 13.841340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.555588, 24.184433, 13.784802>,  <20.928953, 24.292688, 13.690573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.555588, 24.184433, 13.784802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062171, 0.524629, 0.849058,
		-0.353375, 0.807168, -0.472870,
		-0.933413, -0.270637, 0.235573,
		20.275564, 24.103241, 13.855474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670231, 24.894478, 14.059608>,  <20.928953, 24.292688, 13.690573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670231, 24.894478, 14.059608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.413536, 24.605206, 14.161733>,  <20.259520, 24.431643, 14.223008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.413536, 24.605206, 14.161733>,  <20.670231, 24.894478, 14.059608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413536, 24.605206, 14.161733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126804, 0.428376, 0.894659,
		-0.756371, 0.541759, -0.366606,
		-0.641735, -0.723181, 0.255314,
		20.221016, 24.388250, 14.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065451, 25.244057, 14.466428>,  <20.670231, 24.894478, 14.059608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065451, 25.244057, 14.466428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031769, 24.858849, 14.568799>,  <20.011560, 24.627724, 14.630222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031769, 24.858849, 14.568799>,  <20.065451, 25.244057, 14.466428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031769, 24.858849, 14.568799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165856, 0.266804, 0.949372,
		-0.982549, 0.037494, -0.182189,
		-0.084204, -0.963022, 0.255929,
		20.006508, 24.569942, 14.645577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476627, 25.185284, 14.862129>,  <20.065451, 25.244057, 14.466428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476627, 25.185284, 14.862129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.698051, 24.869442, 14.968028>,  <19.830906, 24.679937, 15.031568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.698051, 24.869442, 14.968028>,  <19.476627, 25.185284, 14.862129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698051, 24.869442, 14.968028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236000, 0.156136, 0.959127,
		-0.798669, -0.593417, -0.099916,
		0.553562, -0.789606, 0.264748,
		19.864120, 24.632561, 15.047452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181589, 25.088139, 15.520165>,  <19.476627, 25.185284, 14.862129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181589, 25.088139, 15.520165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.534157, 24.899239, 15.523759>,  <19.745697, 24.785898, 15.525915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.534157, 24.899239, 15.523759>,  <19.181589, 25.088139, 15.520165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534157, 24.899239, 15.523759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084350, 0.176091, 0.980753,
		-0.464744, -0.863696, 0.195044,
		0.881419, -0.472251, 0.008985,
		19.798582, 24.757563, 15.526454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200788, 24.565075, 16.118244>,  <19.181589, 25.088139, 15.520165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200788, 24.565075, 16.118244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572903, 24.664574, 16.010395>,  <19.796171, 24.724274, 15.945685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572903, 24.664574, 16.010395>,  <19.200788, 24.565075, 16.118244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572903, 24.664574, 16.010395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212099, 0.234964, 0.948581,
		0.299313, -0.939635, 0.165823,
		0.930283, 0.248752, -0.269623,
		19.851988, 24.739199, 15.929508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965107, 23.897856, 16.486200>,  <19.200788, 24.565075, 16.118244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965107, 23.897856, 16.486200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637348, 23.863266, 16.712868>,  <18.440693, 23.842512, 16.848869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637348, 23.863266, 16.712868>,  <18.965107, 23.897856, 16.486200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637348, 23.863266, 16.712868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552118, -0.146760, -0.820748,
		0.154138, -0.985385, 0.072511,
		-0.819394, -0.086474, 0.566670,
		18.391529, 23.837324, 16.882868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552080, 23.373310, 16.131014>,  <18.965107, 23.897856, 16.486200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552080, 23.373310, 16.131014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.256363, 23.476067, 16.379997>,  <18.078934, 23.537720, 16.529387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.256363, 23.476067, 16.379997>,  <18.552080, 23.373310, 16.131014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256363, 23.476067, 16.379997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673320, -0.269176, -0.688610,
		-0.009346, -0.928198, 0.371968,
		-0.739292, 0.256889, 0.622459,
		18.034575, 23.553133, 16.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071653, 22.851006, 16.214769>,  <18.552080, 23.373310, 16.131014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071653, 22.851006, 16.214769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.883530, 23.202538, 16.246941>,  <17.770655, 23.413456, 16.266243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.883530, 23.202538, 16.246941>,  <18.071653, 22.851006, 16.214769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883530, 23.202538, 16.246941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609359, -0.257471, -0.749927,
		-0.638349, -0.401708, 0.656614,
		-0.470310, 0.878828, 0.080428,
		17.742437, 23.466187, 16.271069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358719, 22.634966, 16.249014>,  <18.071653, 22.851006, 16.214769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358719, 22.634966, 16.249014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.382847, 23.018009, 16.136337>,  <17.397324, 23.247835, 16.068731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.382847, 23.018009, 16.136337>,  <17.358719, 22.634966, 16.249014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382847, 23.018009, 16.136337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653646, -0.175386, -0.736198,
		-0.754393, 0.228535, 0.615356,
		0.060322, 0.957607, -0.281690,
		17.400944, 23.305292, 16.051830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678436, 22.692032, 16.103729>,  <17.358719, 22.634966, 16.249014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678436, 22.692032, 16.103729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.879772, 22.998997, 15.944871>,  <17.000574, 23.183176, 15.849555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.879772, 22.998997, 15.944871>,  <16.678436, 22.692032, 16.103729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879772, 22.998997, 15.944871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577300, -0.043325, -0.815382,
		-0.642940, 0.639690, 0.421219,
		0.503342, 0.767411, -0.397148,
		17.030775, 23.229219, 15.825727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
