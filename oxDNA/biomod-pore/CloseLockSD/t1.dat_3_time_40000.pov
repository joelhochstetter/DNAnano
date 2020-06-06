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
	<4.657713, 15.086367, 14.959704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310846, 14.888122, 14.940159>,  <4.102726, 14.769175, 14.928432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310846, 14.888122, 14.940159>,  <4.657713, 15.086367, 14.959704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.310846, 14.888122, 14.940159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471837, 0.786228, 0.399018,
		-0.159341, 0.369071, -0.915640,
		-0.867168, -0.495613, -0.048863,
		4.050695, 14.739438, 14.925500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.357105, 15.239415, 15.175518>,  <4.657713, 15.086367, 14.959704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.357105, 15.239415, 15.175518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.488291, 15.148462, 14.808751>,  <5.567003, 15.093891, 14.588691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.488291, 15.148462, 14.808751>,  <5.357105, 15.239415, 15.175518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.488291, 15.148462, 14.808751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915885, 0.314387, 0.249633,
		0.231505, -0.921661, 0.311363,
		0.327965, -0.227381, -0.916917,
		5.586681, 15.080248, 14.533676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.944243, 14.725927, 15.132961>,  <5.357105, 15.239415, 15.175518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.944243, 14.725927, 15.132961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.948420, 14.985048, 14.828266>,  <5.950925, 15.140521, 14.645449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.948420, 14.985048, 14.828266>,  <5.944243, 14.725927, 15.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.948420, 14.985048, 14.828266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956205, 0.216371, 0.197115,
		0.292509, -0.730436, -0.617172,
		0.010441, 0.647802, -0.761737,
		5.951552, 15.179389, 14.599745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.663113, 14.597622, 15.074390>,  <5.944243, 14.725927, 15.132961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.663113, 14.597622, 15.074390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.043845, 14.680712, 14.984172>,  <7.272284, 14.730566, 14.930040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.043845, 14.680712, 14.984172>,  <6.663113, 14.597622, 15.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.043845, 14.680712, 14.984172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230177, -0.970017, 0.078004,
		-0.202581, -0.126162, -0.971105,
		0.951830, 0.207724, -0.225546,
		7.329393, 14.743029, 14.916508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.037780, 14.266084, 14.430892>,  <6.663113, 14.597622, 15.074390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.037780, 14.266084, 14.430892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302524, 14.322358, 14.725415>,  <7.461370, 14.356123, 14.902129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302524, 14.322358, 14.725415>,  <7.037780, 14.266084, 14.430892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.302524, 14.322358, 14.725415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315177, -0.943422, -0.103050,
		0.680152, 0.300272, -0.668753,
		0.661859, 0.140686, 0.736309,
		7.501081, 14.364564, 14.946308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.736030, 14.140146, 14.223703>,  <7.037780, 14.266084, 14.430892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.736030, 14.140146, 14.223703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.707850, 14.070584, 14.616599>,  <7.690941, 14.028847, 14.852337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.707850, 14.070584, 14.616599>,  <7.736030, 14.140146, 14.223703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.707850, 14.070584, 14.616599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216741, -0.963829, -0.155100,
		0.973684, 0.201965, 0.105595,
		-0.070451, -0.173905, 0.982239,
		7.686714, 14.018413, 14.911271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.085550, 13.601089, 14.229083>,  <7.736030, 14.140146, 14.223703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.085550, 13.601089, 14.229083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939007, 13.593761, 14.601200>,  <7.851081, 13.589365, 14.824471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.939007, 13.593761, 14.601200>,  <8.085550, 13.601089, 14.229083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.939007, 13.593761, 14.601200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173195, -0.983676, 0.048835,
		0.914213, 0.179013, 0.363551,
		-0.366358, -0.018319, 0.930294,
		7.829099, 13.588265, 14.880288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.553647, 13.294311, 14.583776>,  <8.085550, 13.601089, 14.229083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.553647, 13.294311, 14.583776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208278, 13.226562, 14.773856>,  <8.001057, 13.185913, 14.887904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208278, 13.226562, 14.773856>,  <8.553647, 13.294311, 14.583776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.208278, 13.226562, 14.773856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258194, -0.957600, 0.127822,
		0.433402, 0.233058, 0.870544,
		-0.863423, -0.169371, 0.475200,
		7.949251, 13.175751, 14.916416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.733332, 12.817854, 15.026086>,  <8.553647, 13.294311, 14.583776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.733332, 12.817854, 15.026086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335944, 12.813866, 15.071551>,  <8.097511, 12.811473, 15.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335944, 12.813866, 15.071551>,  <8.733332, 12.817854, 15.026086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.335944, 12.813866, 15.071551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039767, -0.963973, 0.263013,
		0.106947, 0.265815, 0.958073,
		-0.993469, -0.009972, 0.113665,
		8.037904, 12.810874, 15.105651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.568175, 12.328617, 15.559021>,  <8.733332, 12.817854, 15.026086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.568175, 12.328617, 15.559021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.217055, 12.349996, 15.368606>,  <8.006384, 12.362823, 15.254356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.217055, 12.349996, 15.368606>,  <8.568175, 12.328617, 15.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.217055, 12.349996, 15.368606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080990, -0.996009, 0.037519,
		-0.472132, 0.071488, 0.878624,
		-0.877799, 0.053446, -0.476038,
		7.953715, 12.366030, 15.225794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.194909, 11.913147, 15.876498>,  <8.568175, 12.328617, 15.559021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.194909, 11.913147, 15.876498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.968351, 11.966074, 15.551122>,  <7.832417, 11.997830, 15.355896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.968351, 11.966074, 15.551122>,  <8.194909, 11.913147, 15.876498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.968351, 11.966074, 15.551122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274268, -0.961029, 0.034645,
		-0.777157, 0.242724, 0.580613,
		-0.566395, 0.132319, -0.813442,
		7.798433, 12.005770, 15.307089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.518922, 11.688626, 16.069824>,  <8.194909, 11.913147, 15.876498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.518922, 11.688626, 16.069824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.573083, 11.656940, 15.674777>,  <7.605580, 11.637928, 15.437749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.573083, 11.656940, 15.674777>,  <7.518922, 11.688626, 16.069824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.573083, 11.656940, 15.674777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251168, -0.966982, 0.043125,
		-0.958426, 0.242219, -0.150829,
		0.135403, -0.079216, -0.987619,
		7.613705, 11.633175, 15.378491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.895287, 11.303412, 15.828638>,  <7.518922, 11.688626, 16.069824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.895287, 11.303412, 15.828638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165201, 11.263508, 15.536142>,  <7.327149, 11.239565, 15.360644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165201, 11.263508, 15.536142>,  <6.895287, 11.303412, 15.828638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165201, 11.263508, 15.536142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166086, -0.985933, -0.018754,
		-0.719082, 0.134104, -0.681862,
		0.674786, -0.099762, -0.731240,
		7.367636, 11.233580, 15.316771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.564780, 10.835438, 15.282825>,  <6.895287, 11.303412, 15.828638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.564780, 10.835438, 15.282825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.957660, 10.860309, 15.211929>,  <7.193388, 10.875231, 15.169392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.957660, 10.860309, 15.211929>,  <6.564780, 10.835438, 15.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.957660, 10.860309, 15.211929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036759, -0.989004, -0.143245,
		-0.184197, 0.134180, -0.973687,
		0.982202, 0.062177, -0.177240,
		7.252321, 10.878962, 15.158757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.586545, 10.413679, 14.690821>,  <6.564780, 10.835438, 15.282825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.586545, 10.413679, 14.690821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.955448, 10.460837, 14.838085>,  <7.176789, 10.489133, 14.926444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.955448, 10.460837, 14.838085>,  <6.586545, 10.413679, 14.690821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.955448, 10.460837, 14.838085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229681, -0.933153, -0.276536,
		0.310948, 0.339597, -0.887685,
		0.922257, 0.117896, 0.368161,
		7.232125, 10.496206, 14.948534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.051671, 10.174553, 14.160260>,  <6.586545, 10.413679, 14.690821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.051671, 10.174553, 14.160260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.241399, 10.143452, 14.511024>,  <7.355237, 10.124791, 14.721483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.241399, 10.143452, 14.511024>,  <7.051671, 10.174553, 14.160260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.241399, 10.143452, 14.511024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360797, -0.891427, -0.274195,
		0.803022, 0.446443, -0.394771,
		0.474322, -0.077753, 0.876911,
		7.383696, 10.120126, 14.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.780597, 9.886166, 14.005828>,  <7.051671, 10.174553, 14.160260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.780597, 9.886166, 14.005828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.722242, 9.830412, 14.397601>,  <7.687230, 9.796960, 14.632665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.722242, 9.830412, 14.397601>,  <7.780597, 9.886166, 14.005828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.722242, 9.830412, 14.397601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385156, -0.919916, -0.073546,
		0.911247, 0.366505, 0.187889,
		-0.145887, -0.139385, 0.979433,
		7.678476, 9.788596, 14.691431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.403914, 9.502692, 14.262541>,  <7.780597, 9.886166, 14.005828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.403914, 9.502692, 14.262541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.118151, 9.446643, 14.536762>,  <7.946692, 9.413013, 14.701295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.118151, 9.446643, 14.536762>,  <8.403914, 9.502692, 14.262541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.118151, 9.446643, 14.536762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209042, -0.977741, 0.017995,
		0.667772, 0.156165, 0.727800,
		-0.714410, -0.140124, 0.685553,
		7.903828, 9.404606, 14.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.736111, 9.194825, 14.772708>,  <8.403914, 9.502692, 14.262541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.736111, 9.194825, 14.772708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.353890, 9.090965, 14.828569>,  <8.124558, 9.028649, 14.862086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.353890, 9.090965, 14.828569>,  <8.736111, 9.194825, 14.772708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.353890, 9.090965, 14.828569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268603, -0.961989, 0.049292,
		0.121547, 0.084613, 0.988973,
		-0.955551, -0.259650, 0.139654,
		8.067225, 9.013070, 14.870465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.679132, 8.874990, 15.419239>,  <8.736111, 9.194825, 14.772708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.679132, 8.874990, 15.419239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.364836, 8.749904, 15.205765>,  <8.176258, 8.674851, 15.077681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.364836, 8.749904, 15.205765>,  <8.679132, 8.874990, 15.419239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.364836, 8.749904, 15.205765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358334, -0.933393, 0.019359,
		-0.504192, -0.176026, 0.845461,
		-0.785740, -0.312718, -0.533685,
		8.129114, 8.656088, 15.045659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.436066, 8.184419, 15.801668>,  <8.679132, 8.874990, 15.419239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.436066, 8.184419, 15.801668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276151, 8.201223, 15.435410>,  <8.180202, 8.211307, 15.215655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276151, 8.201223, 15.435410>,  <8.436066, 8.184419, 15.801668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.276151, 8.201223, 15.435410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108723, -0.994070, 0.001860,
		-0.910138, 0.100296, 0.401984,
		-0.399787, 0.042012, -0.915645,
		8.156215, 8.213827, 15.160717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.903984, 7.628737, 15.888041>,  <8.436066, 8.184419, 15.801668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.903984, 7.628737, 15.888041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.957419, 7.682385, 15.495273>,  <7.989481, 7.714574, 15.259612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.957419, 7.682385, 15.495273>,  <7.903984, 7.628737, 15.888041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.957419, 7.682385, 15.495273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148737, -0.976865, -0.153665,
		-0.979812, 0.166575, -0.110550,
		0.133590, 0.134119, -0.981919,
		7.997496, 7.722621, 15.200697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.433887, 7.211502, 15.533206>,  <7.903984, 7.628737, 15.888041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.433887, 7.211502, 15.533206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738206, 7.261218, 15.278415>,  <7.920797, 7.291047, 15.125540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738206, 7.261218, 15.278415>,  <7.433887, 7.211502, 15.533206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738206, 7.261218, 15.278415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004822, -0.980381, -0.197053,
		-0.648973, 0.152989, -0.745271,
		0.760796, 0.124288, -0.636978,
		7.966445, 7.298504, 15.087321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.255295, 6.744391, 14.924786>,  <7.433887, 7.211502, 15.533206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.255295, 6.744391, 14.924786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.646042, 6.829869, 14.928050>,  <7.880490, 6.881155, 14.930009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.646042, 6.829869, 14.928050>,  <7.255295, 6.744391, 14.924786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.646042, 6.829869, 14.928050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213715, -0.974178, -0.072822,
		-0.007612, 0.072882, -0.997312,
		0.976866, 0.213695, 0.008160,
		7.939102, 6.893977, 14.930498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.571054, 6.433708, 14.366495>,  <7.255295, 6.744391, 14.924786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.571054, 6.433708, 14.366495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.865271, 6.474359, 14.634420>,  <8.041800, 6.498749, 14.795176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.865271, 6.474359, 14.634420>,  <7.571054, 6.433708, 14.366495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.865271, 6.474359, 14.634420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317716, -0.924966, -0.208552,
		0.598360, 0.366209, -0.712640,
		0.735542, 0.101627, 0.669814,
		8.085933, 6.504847, 14.835364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.300779, 6.323250, 14.034326>,  <7.571054, 6.433708, 14.366495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.300779, 6.323250, 14.034326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.229494, 6.206008, 14.410055>,  <8.186723, 6.135664, 14.635493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.229494, 6.206008, 14.410055>,  <8.300779, 6.323250, 14.034326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.229494, 6.206008, 14.410055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295403, -0.926510, -0.233059,
		0.938604, 0.235946, 0.251699,
		-0.178212, -0.293103, 0.939325,
		8.176030, 6.118077, 14.691853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.879374, 5.883852, 14.263167>,  <8.300779, 6.323250, 14.034326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.879374, 5.883852, 14.263167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533809, 5.780572, 14.436137>,  <8.326470, 5.718605, 14.539919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533809, 5.780572, 14.436137>,  <8.879374, 5.883852, 14.263167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.533809, 5.780572, 14.436137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231767, -0.966090, -0.113817,
		0.447149, 0.001894, 0.894458,
		-0.863911, -0.258199, 0.432425,
		8.274635, 5.703113, 14.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.998288, 6.072420, 13.535849>,  <8.879374, 5.883852, 14.263167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.998288, 6.072420, 13.535849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.715940, 5.898275, 13.312346>,  <8.546532, 5.793788, 13.178246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.715940, 5.898275, 13.312346>,  <8.998288, 6.072420, 13.535849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.715940, 5.898275, 13.312346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684822, -0.621024, -0.381247,
		-0.181020, -0.651758, 0.736508,
		-0.705869, -0.435363, -0.558756,
		8.504180, 5.767666, 13.144720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.669312, 6.263220, 13.549797>,  <8.998288, 6.072420, 13.535849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.669312, 6.263220, 13.549797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.562663, 5.979214, 13.289092>,  <9.498673, 5.808811, 13.132669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.562663, 5.979214, 13.289092>,  <9.669312, 6.263220, 13.549797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.562663, 5.979214, 13.289092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949104, -0.311065, -0.049392,
		-0.167671, -0.631759, 0.756814,
		-0.266622, -0.710014, -0.651762,
		9.482677, 5.766210, 13.093564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.017015, 5.631439, 13.607453>,  <9.669312, 6.263220, 13.549797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.017015, 5.631439, 13.607453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916622, 5.579298, 13.223783>,  <9.856386, 5.548013, 12.993582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916622, 5.579298, 13.223783>,  <10.017015, 5.631439, 13.607453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916622, 5.579298, 13.223783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819980, -0.555232, -0.139104,
		-0.514431, -0.821417, 0.246241,
		-0.250984, -0.130353, -0.959174,
		9.841327, 5.540192, 12.936031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.224077, 5.812861, 14.367833>,  <10.017015, 5.631439, 13.607453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.224077, 5.812861, 14.367833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346328, 5.940835, 14.726549>,  <10.419678, 6.017620, 14.941779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346328, 5.940835, 14.726549>,  <10.224077, 5.812861, 14.367833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346328, 5.940835, 14.726549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883733, -0.445896, -0.142100,
		0.354412, 0.835953, -0.419016,
		0.305626, 0.319937, 0.896791,
		10.438016, 6.036817, 14.995586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700413, 6.320436, 14.422138>,  <10.224077, 5.812861, 14.367833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700413, 6.320436, 14.422138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754264, 6.079961, 14.737213>,  <10.786574, 5.935677, 14.926258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754264, 6.079961, 14.737213>,  <10.700413, 6.320436, 14.422138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754264, 6.079961, 14.737213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868994, -0.310354, -0.385395,
		0.476155, 0.736380, 0.480645,
		0.134627, -0.601186, 0.787687,
		10.794652, 5.899605, 14.973519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.430285, 6.431181, 14.640088>,  <10.700413, 6.320436, 14.422138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.430285, 6.431181, 14.640088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.329785, 6.049687, 14.706139>,  <11.269486, 5.820791, 14.745769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.329785, 6.049687, 14.706139>,  <11.430285, 6.431181, 14.640088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.329785, 6.049687, 14.706139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852311, -0.298848, -0.429251,
		0.458738, 0.032891, 0.887962,
		-0.251247, -0.953734, 0.165126,
		11.254412, 5.763567, 14.755676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.940306, 6.180418, 15.001930>,  <11.430285, 6.431181, 14.640088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.940306, 6.180418, 15.001930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775365, 5.908147, 14.759726>,  <11.676400, 5.744785, 14.614403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775365, 5.908147, 14.759726>,  <11.940306, 6.180418, 15.001930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775365, 5.908147, 14.759726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833085, -0.012747, -0.552998,
		0.368695, -0.732472, 0.572319,
		-0.412351, -0.680678, -0.605512,
		11.651660, 5.703944, 14.578072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309138, 6.816743, 14.659758>,  <11.940306, 6.180418, 15.001930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309138, 6.816743, 14.659758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930104, 6.872365, 14.774821>,  <11.702684, 6.905737, 14.843860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930104, 6.872365, 14.774821>,  <12.309138, 6.816743, 14.659758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930104, 6.872365, 14.774821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125457, 0.989950, -0.065268,
		-0.293844, -0.025758, -0.955506,
		-0.947584, 0.139054, 0.287659,
		11.645829, 6.914081, 14.861119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927058, 7.457609, 14.316053>,  <12.309138, 6.816743, 14.659758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927058, 7.457609, 14.316053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705591, 7.621322, 14.025967>,  <11.572711, 7.719550, 13.851914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705591, 7.621322, 14.025967>,  <11.927058, 7.457609, 14.316053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705591, 7.621322, 14.025967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411927, 0.891479, 0.188628,
		0.723718, -0.194300, -0.662178,
		-0.553668, 0.409282, -0.725217,
		11.539491, 7.744107, 13.808401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274589, 7.869626, 13.827548>,  <11.927058, 7.457609, 14.316053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274589, 7.869626, 13.827548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.902252, 8.013900, 13.804089>,  <11.678850, 8.100464, 13.790013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.902252, 8.013900, 13.804089>,  <12.274589, 7.869626, 13.827548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902252, 8.013900, 13.804089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348654, 0.924675, 0.153021,
		0.109423, 0.121990, -0.986481,
		-0.930842, 0.360685, -0.058649,
		11.622999, 8.122106, 13.786494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.284801, 8.520352, 13.459407>,  <12.274589, 7.869626, 13.827548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.284801, 8.520352, 13.459407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970509, 8.495686, 13.705601>,  <11.781933, 8.480886, 13.853317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970509, 8.495686, 13.705601>,  <12.284801, 8.520352, 13.459407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970509, 8.495686, 13.705601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091382, 0.972528, 0.214099,
		-0.611778, 0.224469, -0.758512,
		-0.785733, -0.061667, 0.615484,
		11.734789, 8.477185, 13.890245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916440, 9.166346, 13.313608>,  <12.284801, 8.520352, 13.459407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916440, 9.166346, 13.313608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787820, 9.040701, 13.670918>,  <11.710648, 8.965314, 13.885304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787820, 9.040701, 13.670918>,  <11.916440, 9.166346, 13.313608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787820, 9.040701, 13.670918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075072, 0.931949, 0.354733,
		-0.943912, 0.181124, -0.276087,
		-0.321550, -0.314111, 0.893275,
		11.691355, 8.946467, 13.938901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.251676, 9.461395, 13.364705>,  <11.916440, 9.166346, 13.313608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.251676, 9.461395, 13.364705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413262, 9.383013, 13.722121>,  <11.510214, 9.335983, 13.936571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413262, 9.383013, 13.722121>,  <11.251676, 9.461395, 13.364705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413262, 9.383013, 13.722121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205982, 0.932217, 0.297563,
		-0.891282, -0.304258, 0.336220,
		0.403966, -0.195957, 0.893539,
		11.534452, 9.324225, 13.990183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781311, 9.787913, 13.836365>,  <11.251676, 9.461395, 13.364705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781311, 9.787913, 13.836365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101069, 9.715892, 14.065641>,  <11.292924, 9.672679, 14.203207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101069, 9.715892, 14.065641>,  <10.781311, 9.787913, 13.836365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.101069, 9.715892, 14.065641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162331, 0.853826, 0.494601,
		-0.578460, -0.488428, 0.653316,
		0.799394, -0.180054, 0.573191,
		11.340888, 9.661876, 14.237598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561625, 9.965365, 14.452559>,  <10.781311, 9.787913, 13.836365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561625, 9.965365, 14.452559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958194, 9.949007, 14.502213>,  <11.196136, 9.939192, 14.532005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958194, 9.949007, 14.502213>,  <10.561625, 9.965365, 14.452559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.958194, 9.949007, 14.502213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026611, 0.866723, 0.498080,
		-0.127960, -0.497111, 0.858200,
		0.991422, -0.040897, 0.124135,
		11.255621, 9.936738, 14.539454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672269, 10.174296, 15.135875>,  <10.561625, 9.965365, 14.452559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672269, 10.174296, 15.135875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026958, 10.212979, 14.955047>,  <11.239773, 10.236189, 14.846550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026958, 10.212979, 14.955047>,  <10.672269, 10.174296, 15.135875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026958, 10.212979, 14.955047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206253, 0.792403, 0.574071,
		0.413738, -0.602284, 0.682697,
		0.886725, 0.096706, -0.452070,
		11.292975, 10.241991, 14.819426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.208753, 10.305542, 15.652487>,  <10.672269, 10.174296, 15.135875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.208753, 10.305542, 15.652487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367470, 10.456635, 15.317853>,  <11.462700, 10.547292, 15.117073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367470, 10.456635, 15.317853>,  <11.208753, 10.305542, 15.652487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.367470, 10.456635, 15.317853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128565, 0.879548, 0.458112,
		0.908861, -0.289330, 0.300433,
		0.396791, 0.377734, -0.836584,
		11.486507, 10.569956, 15.066877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714571, 10.768349, 15.868301>,  <11.208753, 10.305542, 15.652487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714571, 10.768349, 15.868301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636188, 10.875868, 15.491080>,  <11.589157, 10.940379, 15.264748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636188, 10.875868, 15.491080>,  <11.714571, 10.768349, 15.868301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.636188, 10.875868, 15.491080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023786, 0.962718, 0.269460,
		0.980324, 0.030372, -0.195047,
		-0.195959, 0.268798, -0.943052,
		11.577400, 10.956507, 15.208164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183213, 11.278006, 15.721325>,  <11.714571, 10.768349, 15.868301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183213, 11.278006, 15.721325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.906262, 11.327287, 15.436949>,  <11.740092, 11.356855, 15.266323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.906262, 11.327287, 15.436949>,  <12.183213, 11.278006, 15.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.906262, 11.327287, 15.436949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002934, 0.985787, 0.167975,
		0.721530, 0.114216, -0.682898,
		-0.692377, 0.123203, -0.710939,
		11.698549, 11.364247, 15.223667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369790, 11.878172, 15.276507>,  <12.183213, 11.278006, 15.721325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369790, 11.878172, 15.276507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974368, 11.841465, 15.228614>,  <11.737115, 11.819441, 15.199878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974368, 11.841465, 15.228614>,  <12.369790, 11.878172, 15.276507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.974368, 11.841465, 15.228614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108372, 0.984134, 0.140482,
		0.104942, 0.151850, -0.982817,
		-0.988556, -0.091767, -0.119733,
		11.677801, 11.813935, 15.192694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173871, 12.575245, 14.937045>,  <12.369790, 11.878172, 15.276507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173871, 12.575245, 14.937045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.858649, 12.398503, 15.108501>,  <11.669516, 12.292459, 15.211375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.858649, 12.398503, 15.108501>,  <12.173871, 12.575245, 14.937045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.858649, 12.398503, 15.108501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420157, 0.894954, 0.150086,
		-0.449931, -0.061821, -0.890921,
		-0.788055, -0.441855, 0.428641,
		11.622232, 12.265946, 15.237094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552069, 13.003215, 14.516911>,  <12.173871, 12.575245, 14.937045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552069, 13.003215, 14.516911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420004, 12.824280, 14.849387>,  <11.340765, 12.716919, 15.048874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420004, 12.824280, 14.849387>,  <11.552069, 13.003215, 14.516911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.420004, 12.824280, 14.849387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500163, 0.829699, 0.247863,
		-0.800519, -0.333897, -0.497678,
		-0.330162, -0.447339, 0.831193,
		11.320955, 12.690079, 15.098745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.771292, 13.091030, 14.536500>,  <11.552069, 13.003215, 14.516911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.771292, 13.091030, 14.536500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905425, 13.027766, 14.907991>,  <10.985905, 12.989808, 15.130886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905425, 13.027766, 14.907991>,  <10.771292, 13.091030, 14.536500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905425, 13.027766, 14.907991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600625, 0.723593, 0.340092,
		-0.725811, -0.671862, 0.147650,
		0.335333, -0.158160, 0.928729,
		11.006025, 12.980318, 15.186610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.107606, 12.971336, 15.022306>,  <10.771292, 13.091030, 14.536500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.107606, 12.971336, 15.022306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422534, 13.111785, 15.225024>,  <10.611491, 13.196054, 15.346655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422534, 13.111785, 15.225024>,  <10.107606, 12.971336, 15.022306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422534, 13.111785, 15.225024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586277, 0.680749, 0.439158,
		-0.190803, -0.642881, 0.741821,
		0.787320, 0.351120, 0.506796,
		10.658730, 13.217121, 15.377063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.873336, 13.142879, 15.791277>,  <10.107606, 12.971336, 15.022306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.873336, 13.142879, 15.791277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.209674, 13.350444, 15.729689>,  <10.411477, 13.474983, 15.692736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.209674, 13.350444, 15.729689>,  <9.873336, 13.142879, 15.791277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209674, 13.350444, 15.729689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433681, 0.816083, 0.382008,
		0.323883, -0.254435, 0.911242,
		0.840845, 0.518914, -0.153971,
		10.461927, 13.506118, 15.683497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.869464, 13.554000, 16.331528>,  <9.873336, 13.142879, 15.791277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.869464, 13.554000, 16.331528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.123272, 13.699761, 16.058884>,  <10.275557, 13.787218, 15.895297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.123272, 13.699761, 16.058884>,  <9.869464, 13.554000, 16.331528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.123272, 13.699761, 16.058884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258453, 0.931151, 0.257217,
		0.728413, 0.012955, 0.685016,
		0.634521, 0.364405, -0.681610,
		10.313628, 13.809083, 15.854401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.196653, 13.992472, 16.757561>,  <9.869464, 13.554000, 16.331528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.196653, 13.992472, 16.757561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247828, 14.102015, 16.376272>,  <10.278534, 14.167742, 16.147499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247828, 14.102015, 16.376272>,  <10.196653, 13.992472, 16.757561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.247828, 14.102015, 16.376272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239952, 0.941114, 0.238174,
		0.962317, 0.198256, 0.186118,
		0.127939, 0.273859, -0.953222,
		10.286210, 14.184173, 16.090305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.688146, 14.601241, 16.747475>,  <10.196653, 13.992472, 16.757561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.688146, 14.601241, 16.747475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485627, 14.606653, 16.402573>,  <10.364116, 14.609900, 16.195631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485627, 14.606653, 16.402573>,  <10.688146, 14.601241, 16.747475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.485627, 14.606653, 16.402573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218778, 0.965149, 0.143607,
		0.834146, 0.261350, -0.485692,
		-0.506297, 0.013531, -0.862253,
		10.333738, 14.610712, 16.143896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835919, 15.246016, 16.475771>,  <10.688146, 14.601241, 16.747475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835919, 15.246016, 16.475771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.505291, 15.132460, 16.281374>,  <10.306914, 15.064326, 16.164736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.505291, 15.132460, 16.281374>,  <10.835919, 15.246016, 16.475771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505291, 15.132460, 16.281374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242883, 0.958850, -0.147016,
		0.507728, -0.003480, -0.861510,
		-0.826571, -0.283890, -0.485990,
		10.257319, 15.047293, 16.135576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460178, 15.629845, 16.577866>,  <10.835919, 15.246016, 16.475771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460178, 15.629845, 16.577866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636046, 15.812190, 16.887415>,  <11.741568, 15.921597, 17.073145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.636046, 15.812190, 16.887415>,  <11.460178, 15.629845, 16.577866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.636046, 15.812190, 16.887415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012884, 0.864733, -0.502066,
		-0.898067, 0.210773, 0.386071,
		0.439670, 0.455863, 0.773873,
		11.767947, 15.948949, 17.119577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.954079, 15.534716, 16.156904>,  <11.460178, 15.629845, 16.577866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.954079, 15.534716, 16.156904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775785, 15.337487, 16.455755>,  <11.668810, 15.219150, 16.635067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775785, 15.337487, 16.455755>,  <11.954079, 15.534716, 16.156904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775785, 15.337487, 16.455755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886284, -0.125794, 0.445733,
		-0.125794, 0.860846, 0.493072,
		-0.445733, -0.493072, 0.747130,
		11.642066, 15.189566, 16.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.563663, 15.280731, 16.496103>,  <11.954079, 15.534716, 16.156904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.563663, 15.280731, 16.496103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250520, 15.188944, 16.727440>,  <12.062634, 15.133871, 16.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250520, 15.188944, 16.727440>,  <12.563663, 15.280731, 16.496103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.250520, 15.188944, 16.727440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618777, -0.384510, 0.685031,
		0.065185, 0.894145, 0.443006,
		-0.782858, -0.229468, 0.578341,
		12.015662, 15.120104, 16.900942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720845, 15.451435, 17.206736>,  <12.563663, 15.280731, 16.496103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720845, 15.451435, 17.206736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435238, 15.171718, 17.220390>,  <12.263873, 15.003887, 17.228582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435238, 15.171718, 17.220390>,  <12.720845, 15.451435, 17.206736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435238, 15.171718, 17.220390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513567, -0.489998, 0.704380,
		-0.475842, 0.520471, 0.709002,
		-0.714019, -0.699293, 0.034135,
		12.221032, 14.961929, 17.230631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.290358, 15.504060, 17.912235>,  <12.720845, 15.451435, 17.206736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.290358, 15.504060, 17.912235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327170, 15.144812, 17.740231>,  <12.349258, 14.929263, 17.637028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327170, 15.144812, 17.740231>,  <12.290358, 15.504060, 17.912235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.327170, 15.144812, 17.740231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523223, -0.323808, 0.788281,
		-0.847212, -0.297540, 0.440116,
		0.092032, -0.898119, -0.430014,
		12.354780, 14.875376, 17.611227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342994, 15.084629, 18.497379>,  <12.290358, 15.504060, 17.912235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342994, 15.084629, 18.497379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492078, 14.877945, 18.189068>,  <12.581528, 14.753934, 18.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492078, 14.877945, 18.189068>,  <12.342994, 15.084629, 18.497379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492078, 14.877945, 18.189068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645104, -0.452793, 0.615482,
		-0.667029, -0.726628, 0.164572,
		0.372709, -0.516711, -0.770777,
		12.603890, 14.722932, 17.957834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324215, 14.365573, 18.724424>,  <12.342994, 15.084629, 18.497379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324215, 14.365573, 18.724424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605417, 14.440784, 18.450073>,  <12.774138, 14.485911, 18.285463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605417, 14.440784, 18.450073>,  <12.324215, 14.365573, 18.724424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605417, 14.440784, 18.450073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686012, -0.433605, 0.584272,
		-0.187540, -0.881267, -0.433817,
		0.703005, 0.188030, -0.685878,
		12.816319, 14.497193, 18.244310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671559, 13.765791, 18.655836>,  <12.324215, 14.365573, 18.724424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671559, 13.765791, 18.655836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881680, 14.099952, 18.591139>,  <13.007753, 14.300448, 18.552320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881680, 14.099952, 18.591139>,  <12.671559, 13.765791, 18.655836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881680, 14.099952, 18.591139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595153, -0.224861, 0.771512,
		0.608154, -0.501538, -0.615312,
		0.525302, 0.835402, -0.161741,
		13.039271, 14.350573, 18.542616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436396, 13.618910, 18.639490>,  <12.671559, 13.765791, 18.655836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436396, 13.618910, 18.639490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431973, 14.009768, 18.724401>,  <13.429318, 14.244284, 18.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431973, 14.009768, 18.724401>,  <13.436396, 13.618910, 18.639490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431973, 14.009768, 18.724401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661832, -0.151986, 0.734084,
		0.749571, 0.148610, -0.645026,
		-0.011057, 0.977147, 0.212280,
		13.428656, 14.302913, 18.788086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158010, 13.765323, 18.732422>,  <13.436396, 13.618910, 18.639490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158010, 13.765323, 18.732422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949934, 14.056958, 18.910336>,  <13.825089, 14.231939, 19.017084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949934, 14.056958, 18.910336>,  <14.158010, 13.765323, 18.732422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949934, 14.056958, 18.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603562, -0.054632, 0.795442,
		0.604248, 0.682235, -0.411631,
		-0.520190, 0.729089, 0.444782,
		13.793877, 14.275685, 19.043770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654317, 14.239016, 19.098852>,  <14.158010, 13.765323, 18.732422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654317, 14.239016, 19.098852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303054, 14.302845, 19.279242>,  <14.092296, 14.341143, 19.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303054, 14.302845, 19.279242>,  <14.654317, 14.239016, 19.098852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303054, 14.302845, 19.279242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436744, -0.117192, 0.891920,
		0.195178, 0.980205, 0.033220,
		-0.878157, 0.159574, 0.450972,
		14.039607, 14.350718, 19.414534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817039, 14.715226, 19.702299>,  <14.654317, 14.239016, 19.098852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817039, 14.715226, 19.702299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460695, 14.560990, 19.798376>,  <14.246889, 14.468449, 19.856022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460695, 14.560990, 19.798376>,  <14.817039, 14.715226, 19.702299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460695, 14.560990, 19.798376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206855, 0.126427, 0.970169,
		-0.404453, 0.913968, -0.032868,
		-0.890859, -0.385589, 0.240193,
		14.193438, 14.445313, 19.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363418, 15.225920, 20.052034>,  <14.817039, 14.715226, 19.702299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363418, 15.225920, 20.052034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235134, 14.869364, 20.180141>,  <14.158164, 14.655430, 20.257006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235134, 14.869364, 20.180141>,  <14.363418, 15.225920, 20.052034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235134, 14.869364, 20.180141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432181, 0.163163, 0.886903,
		-0.842832, 0.422851, 0.332914,
		-0.320709, -0.891389, 0.320267,
		14.138922, 14.601947, 20.276222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227555, 15.305747, 20.746859>,  <14.363418, 15.225920, 20.052034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227555, 15.305747, 20.746859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216901, 14.906004, 20.737265>,  <14.210508, 14.666158, 20.731508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216901, 14.906004, 20.737265>,  <14.227555, 15.305747, 20.746859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216901, 14.906004, 20.737265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186937, -0.028547, 0.981957,
		-0.982011, 0.021673, 0.187578,
		-0.026637, -0.999357, -0.023983,
		14.208910, 14.606196, 20.730070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863901, 15.154634, 21.332708>,  <14.227555, 15.305747, 20.746859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863901, 15.154634, 21.332708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088529, 14.842405, 21.222912>,  <14.223306, 14.655067, 21.157034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088529, 14.842405, 21.222912>,  <13.863901, 15.154634, 21.332708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088529, 14.842405, 21.222912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299977, -0.117107, 0.946731,
		-0.771138, -0.613996, 0.168391,
		0.561569, -0.780574, -0.274490,
		14.257000, 14.608233, 21.140564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846334, 14.706146, 21.933212>,  <13.863901, 15.154634, 21.332708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846334, 14.706146, 21.933212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159906, 14.549836, 21.740236>,  <14.348049, 14.456050, 21.624451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159906, 14.549836, 21.740236>,  <13.846334, 14.706146, 21.933212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159906, 14.549836, 21.740236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439812, -0.198916, 0.875784,
		-0.438200, -0.898736, 0.015932,
		0.783930, -0.390776, -0.482440,
		14.395085, 14.432604, 21.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085341, 14.117139, 22.366976>,  <13.846334, 14.706146, 21.933212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085341, 14.117139, 22.366976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386107, 14.217519, 22.123123>,  <14.566566, 14.277746, 21.976812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386107, 14.217519, 22.123123>,  <14.085341, 14.117139, 22.366976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386107, 14.217519, 22.123123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652629, -0.152507, 0.742170,
		0.093274, -0.955911, -0.278450,
		0.751914, 0.250950, -0.609630,
		14.611682, 14.292804, 21.940233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443816, 13.575457, 22.544466>,  <14.085341, 14.117139, 22.366976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443816, 13.575457, 22.544466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653431, 13.883574, 22.399118>,  <14.779200, 14.068443, 22.311911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653431, 13.883574, 22.399118>,  <14.443816, 13.575457, 22.544466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653431, 13.883574, 22.399118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478960, 0.086254, 0.873589,
		0.704260, -0.631831, -0.323738,
		0.524037, 0.770291, -0.363367,
		14.810642, 14.114661, 22.290108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235645, 13.362116, 22.500931>,  <14.443816, 13.575457, 22.544466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235645, 13.362116, 22.500931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176803, 13.754697, 22.550100>,  <15.141498, 13.990246, 22.579601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176803, 13.754697, 22.550100>,  <15.235645, 13.362116, 22.500931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176803, 13.754697, 22.550100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658847, 0.004533, 0.752264,
		0.737754, 0.191650, -0.647294,
		-0.147106, 0.981453, 0.122924,
		15.132671, 14.049132, 22.586977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791835, 13.643666, 22.776190>,  <15.235645, 13.362116, 22.500931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791835, 13.643666, 22.776190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524455, 13.923940, 22.875963>,  <15.364027, 14.092104, 22.935827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524455, 13.923940, 22.875963>,  <15.791835, 13.643666, 22.776190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524455, 13.923940, 22.875963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507326, 0.184311, 0.841813,
		0.543871, 0.689255, -0.478678,
		-0.668449, 0.700683, 0.249436,
		15.323920, 14.134145, 22.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164520, 14.177177, 22.957842>,  <15.791835, 13.643666, 22.776190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164520, 14.177177, 22.957842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831154, 14.287163, 23.149597>,  <15.631134, 14.353154, 23.264650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831154, 14.287163, 23.149597>,  <16.164520, 14.177177, 22.957842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831154, 14.287163, 23.149597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533015, 0.170774, 0.828692,
		0.145993, 0.946167, -0.288885,
		-0.833415, 0.274963, 0.479389,
		15.581129, 14.369652, 23.293413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290659, 14.805304, 23.242151>,  <16.164520, 14.177177, 22.957842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290659, 14.805304, 23.242151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985743, 14.666025, 23.460388>,  <15.802793, 14.582458, 23.591330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985743, 14.666025, 23.460388>,  <16.290659, 14.805304, 23.242151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985743, 14.666025, 23.460388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413777, 0.386025, 0.824484,
		-0.497694, 0.854251, -0.150188,
		-0.762292, -0.348196, 0.545592,
		15.757055, 14.561566, 23.624065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226488, 15.287380, 23.848852>,  <16.290659, 14.805304, 23.242151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226488, 15.287380, 23.848852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992301, 14.979072, 23.949362>,  <15.851789, 14.794086, 24.009666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992301, 14.979072, 23.949362>,  <16.226488, 15.287380, 23.848852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992301, 14.979072, 23.949362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418925, -0.022284, 0.907747,
		-0.694066, 0.636723, 0.335942,
		-0.585469, -0.770771, 0.251273,
		15.816660, 14.747840, 24.024744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887751, 15.493405, 24.477850>,  <16.226488, 15.287380, 23.848852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887751, 15.493405, 24.477850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900187, 15.093637, 24.472315>,  <15.907649, 14.853777, 24.468994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900187, 15.093637, 24.472315>,  <15.887751, 15.493405, 24.477850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900187, 15.093637, 24.472315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388319, -0.000678, 0.921525,
		-0.921000, -0.034024, 0.388073,
		0.031091, -0.999421, -0.013836,
		15.909515, 14.793811, 24.468164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745020, 15.358717, 25.190290>,  <15.887751, 15.493405, 24.477850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745020, 15.358717, 25.190290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882439, 15.017586, 25.032984>,  <15.964890, 14.812907, 24.938599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882439, 15.017586, 25.032984>,  <15.745020, 15.358717, 25.190290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882439, 15.017586, 25.032984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285667, -0.304016, 0.908828,
		-0.894634, -0.424568, 0.139182,
		0.343546, -0.852829, -0.393268,
		15.985502, 14.761737, 24.915003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507732, 14.842142, 25.565474>,  <15.745020, 15.358717, 25.190290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507732, 14.842142, 25.565474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848176, 14.700356, 25.410570>,  <16.052443, 14.615285, 25.317629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848176, 14.700356, 25.410570>,  <15.507732, 14.842142, 25.565474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848176, 14.700356, 25.410570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279746, -0.317990, 0.905883,
		-0.444248, -0.879339, -0.171484,
		0.851109, -0.354465, -0.387258,
		16.103508, 14.594017, 25.294394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559607, 14.201976, 25.841936>,  <15.507732, 14.842142, 25.565474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559607, 14.201976, 25.841936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931289, 14.303476, 25.734463>,  <16.154297, 14.364377, 25.669979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931289, 14.303476, 25.734463>,  <15.559607, 14.201976, 25.841936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931289, 14.303476, 25.734463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321702, -0.197538, 0.926006,
		0.181900, -0.946884, -0.265185,
		0.929204, 0.253751, -0.268682,
		16.210051, 14.379601, 25.653858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971905, 13.794461, 26.292500>,  <15.559607, 14.201976, 25.841936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971905, 13.794461, 26.292500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.231142, 14.053816, 26.132715>,  <16.386684, 14.209429, 26.036844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.231142, 14.053816, 26.132715>,  <15.971905, 13.794461, 26.292500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231142, 14.053816, 26.132715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346755, 0.215763, 0.912802,
		0.678038, -0.730096, -0.084997,
		0.648094, 0.648388, -0.399460,
		16.425570, 14.248332, 26.012877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669483, 13.660541, 26.536257>,  <15.971905, 13.794461, 26.292500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669483, 13.660541, 26.536257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706448, 14.037971, 26.409060>,  <16.728626, 14.264430, 26.332741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706448, 14.037971, 26.409060>,  <16.669483, 13.660541, 26.536257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706448, 14.037971, 26.409060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494417, 0.233727, 0.837212,
		0.864299, -0.234590, -0.444922,
		0.092411, 0.943578, -0.317995,
		16.734171, 14.321045, 26.313662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324434, 13.790262, 26.718037>,  <16.669483, 13.660541, 26.536257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324434, 13.790262, 26.718037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.171900, 14.155619, 26.661047>,  <17.080379, 14.374832, 26.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.171900, 14.155619, 26.661047>,  <17.324434, 13.790262, 26.718037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.171900, 14.155619, 26.661047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542799, 0.345987, 0.765286,
		0.748299, 0.214498, -0.627726,
		-0.381337, 0.913391, -0.142472,
		17.057499, 14.429636, 26.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870127, 14.279593, 26.596735>,  <17.324434, 13.790262, 26.718037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870127, 14.279593, 26.596735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562086, 14.486248, 26.746418>,  <17.377262, 14.610241, 26.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562086, 14.486248, 26.746418>,  <17.870127, 14.279593, 26.596735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562086, 14.486248, 26.746418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559919, 0.266347, 0.784570,
		0.305669, 0.813723, -0.494389,
		-0.770102, 0.516637, 0.374206,
		17.331055, 14.641239, 26.858679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179245, 14.814235, 27.004883>,  <17.870127, 14.279593, 26.596735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179245, 14.814235, 27.004883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794037, 14.852537, 27.105618>,  <17.562912, 14.875519, 27.166058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794037, 14.852537, 27.105618>,  <18.179245, 14.814235, 27.004883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794037, 14.852537, 27.105618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269117, 0.386628, 0.882097,
		-0.012900, 0.917251, -0.398101,
		-0.963021, 0.095757, 0.251835,
		17.505131, 14.881264, 27.181168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131845, 15.444321, 27.248405>,  <18.179245, 14.814235, 27.004883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131845, 15.444321, 27.248405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837166, 15.228453, 27.411392>,  <17.660358, 15.098932, 27.509184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837166, 15.228453, 27.411392>,  <18.131845, 15.444321, 27.248405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837166, 15.228453, 27.411392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253478, 0.338245, 0.906278,
		-0.626913, 0.770940, -0.112391,
		-0.736701, -0.539669, 0.407466,
		17.616156, 15.066552, 27.533632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671909, 15.841719, 27.643688>,  <18.131845, 15.444321, 27.248405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671909, 15.841719, 27.643688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658218, 15.469927, 27.790600>,  <17.650003, 15.246851, 27.878746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658218, 15.469927, 27.790600>,  <17.671909, 15.841719, 27.643688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658218, 15.469927, 27.790600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167770, 0.356936, 0.918940,
		-0.985232, 0.093073, 0.143721,
		-0.034229, -0.929481, 0.367279,
		17.647949, 15.191083, 27.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271982, 15.895532, 28.277119>,  <17.671909, 15.841719, 27.643688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271982, 15.895532, 28.277119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460005, 15.545465, 28.322958>,  <17.572819, 15.335426, 28.350462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460005, 15.545465, 28.322958>,  <17.271982, 15.895532, 28.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460005, 15.545465, 28.322958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076346, 0.169663, 0.982540,
		-0.879327, -0.453102, 0.146567,
		0.470058, -0.875165, 0.114597,
		17.601023, 15.282916, 28.357338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996811, 15.493900, 28.865149>,  <17.271982, 15.895532, 28.277119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996811, 15.493900, 28.865149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372833, 15.363870, 28.823923>,  <17.598446, 15.285851, 28.799187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372833, 15.363870, 28.823923>,  <16.996811, 15.493900, 28.865149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372833, 15.363870, 28.823923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140861, 0.094900, 0.985470,
		-0.310572, -0.940914, 0.135002,
		0.940055, -0.325076, -0.103065,
		17.654850, 15.266347, 28.793003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974945, 14.970845, 29.388544>,  <16.996811, 15.493900, 28.865149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974945, 14.970845, 29.388544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.358728, 15.061893, 29.322054>,  <17.588999, 15.116521, 29.282160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.358728, 15.061893, 29.322054>,  <16.974945, 14.970845, 29.388544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358728, 15.061893, 29.322054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140224, 0.126098, 0.982057,
		0.244497, -0.965551, 0.089068,
		0.959457, 0.227620, -0.166224,
		17.646566, 15.130177, 29.272186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406694, 14.680336, 30.019800>,  <16.974945, 14.970845, 29.388544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406694, 14.680336, 30.019800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635170, 14.954823, 29.839645>,  <17.772255, 15.119516, 29.731552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635170, 14.954823, 29.839645>,  <17.406694, 14.680336, 30.019800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635170, 14.954823, 29.839645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354655, 0.288516, 0.889369,
		0.740246, -0.667729, -0.078574,
		0.571188, 0.686219, -0.450386,
		17.806526, 15.160689, 29.704529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082588, 14.479637, 30.079212>,  <17.406694, 14.680336, 30.019800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082588, 14.479637, 30.079212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055853, 14.876439, 30.036390>,  <18.039812, 15.114520, 30.010696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055853, 14.876439, 30.036390>,  <18.082588, 14.479637, 30.079212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055853, 14.876439, 30.036390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615131, 0.125447, 0.778382,
		0.785587, -0.013826, -0.618597,
		-0.066839, 0.992004, -0.107055,
		18.035801, 15.174040, 30.004274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587332, 14.654119, 30.509295>,  <18.082588, 14.479637, 30.079212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587332, 14.654119, 30.509295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448250, 15.022719, 30.440081>,  <18.364801, 15.243879, 30.398552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448250, 15.022719, 30.440081>,  <18.587332, 14.654119, 30.509295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448250, 15.022719, 30.440081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513170, 0.341490, 0.787426,
		0.784702, 0.184996, -0.591624,
		-0.347704, 0.921499, -0.173034,
		18.343939, 15.299170, 30.388170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147867, 15.084209, 30.621521>,  <18.587332, 14.654119, 30.509295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147867, 15.084209, 30.621521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834667, 15.331085, 30.652475>,  <18.646748, 15.479211, 30.671049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834667, 15.331085, 30.652475>,  <19.147867, 15.084209, 30.621521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834667, 15.331085, 30.652475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387835, 0.387143, 0.836483,
		0.486309, 0.684979, -0.542500,
		-0.782999, 0.617190, 0.077388,
		18.599768, 15.516242, 30.675692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371222, 15.735632, 30.625919>,  <19.147867, 15.084209, 30.621521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371222, 15.735632, 30.625919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001509, 15.761975, 30.776316>,  <18.779682, 15.777781, 30.866554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001509, 15.761975, 30.776316>,  <19.371222, 15.735632, 30.625919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.001509, 15.761975, 30.776316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378652, 0.282713, 0.881303,
		-0.048256, 0.956941, -0.286244,
		-0.924280, 0.065859, 0.375990,
		18.724224, 15.781733, 30.889112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371149, 16.313639, 31.063744>,  <19.371222, 15.735632, 30.625919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371149, 16.313639, 31.063744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076897, 16.079294, 31.199751>,  <18.900345, 15.938687, 31.281355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076897, 16.079294, 31.199751>,  <19.371149, 16.313639, 31.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076897, 16.079294, 31.199751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348382, 0.103259, 0.931648,
		-0.580925, 0.803807, 0.128143,
		-0.735633, -0.585860, 0.340018,
		18.856207, 15.903536, 31.301756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031193, 16.522022, 31.661100>,  <19.371149, 16.313639, 31.063744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031193, 16.522022, 31.661100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922110, 16.245140, 31.928377>,  <18.856659, 16.079012, 32.088745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922110, 16.245140, 31.928377>,  <19.031193, 16.522022, 31.661100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922110, 16.245140, 31.928377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915809, 0.026061, 0.400767,
		-0.294827, 0.721231, 0.626820,
		-0.272710, -0.692204, 0.668194,
		18.840296, 16.037479, 32.128834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271778, 16.788488, 32.263493>,  <19.031193, 16.522022, 31.661100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271778, 16.788488, 32.263493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228357, 16.402275, 32.358116>,  <19.202305, 16.170547, 32.414890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228357, 16.402275, 32.358116>,  <19.271778, 16.788488, 32.263493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228357, 16.402275, 32.358116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813733, 0.050383, 0.579051,
		-0.571013, 0.255348, 0.780219,
		-0.108550, -0.965536, 0.236555,
		19.195793, 16.112614, 32.429081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367680, 16.638548, 33.047676>,  <19.271778, 16.788488, 32.263493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.367680, 16.638548, 33.047676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415073, 16.271231, 32.896572>,  <19.443510, 16.050840, 32.805908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415073, 16.271231, 32.896572>,  <19.367680, 16.638548, 33.047676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415073, 16.271231, 32.896572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876150, -0.082338, 0.474955,
		-0.467251, -0.387250, 0.794805,
		0.118483, -0.918291, -0.377761,
		19.450619, 15.995744, 32.783245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535381, 16.160969, 33.650928>,  <19.367680, 16.638548, 33.047676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535381, 16.160969, 33.650928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694248, 15.960892, 33.343143>,  <19.789568, 15.840845, 33.158474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694248, 15.960892, 33.343143>,  <19.535381, 16.160969, 33.650928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694248, 15.960892, 33.343143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888594, -0.000055, 0.458695,
		-0.229478, -0.865914, 0.444447,
		0.397166, -0.500193, -0.769458,
		19.813398, 15.810834, 33.112305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074661, 15.833027, 33.965500>,  <19.535381, 16.160969, 33.650928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074661, 15.833027, 33.965500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178270, 15.762378, 33.585667>,  <20.240437, 15.719988, 33.357765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178270, 15.762378, 33.585667>,  <20.074661, 15.833027, 33.965500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178270, 15.762378, 33.585667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963905, -0.015440, 0.265800,
		-0.061608, -0.984158, 0.166249,
		0.259022, -0.176623, -0.949585,
		20.255978, 15.709391, 33.300793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513897, 15.267817, 33.952805>,  <20.074661, 15.833027, 33.965500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513897, 15.267817, 33.952805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.581705, 15.485368, 33.624058>,  <20.622389, 15.615899, 33.426811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.581705, 15.485368, 33.624058>,  <20.513897, 15.267817, 33.952805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581705, 15.485368, 33.624058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977142, -0.201307, 0.068330,
		-0.128284, -0.814660, -0.565573,
		0.169520, 0.543879, -0.821863,
		20.632561, 15.648532, 33.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003101, 14.948126, 33.498917>,  <20.513897, 15.267817, 33.952805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003101, 14.948126, 33.498917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028919, 15.342093, 33.434700>,  <21.044409, 15.578472, 33.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028919, 15.342093, 33.434700>,  <21.003101, 14.948126, 33.498917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028919, 15.342093, 33.434700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970566, -0.024551, 0.239581,
		0.232025, -0.171281, -0.957511,
		0.064544, 0.984916, -0.160543,
		21.048283, 15.637568, 33.386536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.585428, 15.211255, 33.032425>,  <21.003101, 14.948126, 33.498917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.585428, 15.211255, 33.032425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497131, 15.488178, 33.307228>,  <21.444153, 15.654332, 33.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497131, 15.488178, 33.307228>,  <21.585428, 15.211255, 33.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497131, 15.488178, 33.307228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966048, 0.058239, 0.251715,
		0.134253, 0.719248, -0.681658,
		-0.220744, 0.692308, 0.687009,
		21.430908, 15.695870, 33.513332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130562, 15.655509, 32.972794>,  <21.585428, 15.211255, 33.032425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130562, 15.655509, 32.972794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962595, 15.651597, 33.335796>,  <21.861814, 15.649250, 33.553600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962595, 15.651597, 33.335796>,  <22.130562, 15.655509, 32.972794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962595, 15.651597, 33.335796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907311, -0.028062, 0.419522,
		0.021364, 0.999558, 0.020657,
		-0.419916, -0.009780, 0.907510,
		21.836620, 15.648664, 33.608051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506361, 16.109211, 33.507519>,  <22.130562, 15.655509, 32.972794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506361, 16.109211, 33.507519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309458, 15.816177, 33.695564>,  <22.191317, 15.640357, 33.808392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309458, 15.816177, 33.695564>,  <22.506361, 16.109211, 33.507519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309458, 15.816177, 33.695564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797446, -0.163039, 0.580946,
		-0.348946, 0.660862, 0.664453,
		-0.492258, -0.732584, 0.470110,
		22.161781, 15.596402, 33.836597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767612, 16.228500, 34.183292>,  <22.506361, 16.109211, 33.507519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767612, 16.228500, 34.183292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605129, 15.867419, 34.126553>,  <22.507639, 15.650771, 34.092506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605129, 15.867419, 34.126553>,  <22.767612, 16.228500, 34.183292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605129, 15.867419, 34.126553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767902, -0.421368, 0.482469,
		-0.495299, 0.087054, 0.864350,
		-0.406210, -0.902702, -0.141854,
		22.483267, 15.596608, 34.083996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192612, 16.065706, 34.771854>,  <22.767612, 16.228500, 34.183292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192612, 16.065706, 34.771854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928417, 16.341539, 34.890671>,  <21.769901, 16.507040, 34.961960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928417, 16.341539, 34.890671>,  <22.192612, 16.065706, 34.771854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928417, 16.341539, 34.890671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337282, 0.625942, -0.703163,
		-0.670819, -0.364243, -0.646010,
		-0.660487, 0.689582, 0.297041,
		21.730270, 16.548414, 34.979782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720835, 16.261425, 34.153362>,  <22.192612, 16.065706, 34.771854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720835, 16.261425, 34.153362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813778, 16.545601, 34.419079>,  <21.869543, 16.716106, 34.578510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813778, 16.545601, 34.419079>,  <21.720835, 16.261425, 34.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813778, 16.545601, 34.419079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287411, 0.602334, -0.744707,
		-0.929196, 0.363964, -0.064230,
		0.232358, 0.710439, 0.664294,
		21.883486, 16.758732, 34.618366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345037, 16.778751, 34.094082>,  <21.720835, 16.261425, 34.153362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345037, 16.778751, 34.094082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693008, 16.913790, 34.237892>,  <21.901791, 16.994812, 34.324177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693008, 16.913790, 34.237892>,  <21.345037, 16.778751, 34.094082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693008, 16.913790, 34.237892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182336, 0.457179, -0.870483,
		-0.458240, 0.822810, 0.336156,
		0.869925, 0.337597, 0.359525,
		21.953985, 17.015068, 34.345749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373558, 17.551676, 33.927891>,  <21.345037, 16.778751, 34.094082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373558, 17.551676, 33.927891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.708233, 17.335793, 33.965134>,  <21.909039, 17.206263, 33.987480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.708233, 17.335793, 33.965134>,  <21.373558, 17.551676, 33.927891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708233, 17.335793, 33.965134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190982, 0.128183, -0.973188,
		0.513302, 0.832037, 0.210323,
		0.836688, -0.539707, 0.093107,
		21.959240, 17.173880, 33.993065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007431, 17.951715, 33.677071>,  <21.373558, 17.551676, 33.927891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007431, 17.951715, 33.677071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994154, 17.553707, 33.639484>,  <21.986187, 17.314901, 33.616932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994154, 17.553707, 33.639484>,  <22.007431, 17.951715, 33.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994154, 17.553707, 33.639484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176009, 0.086729, -0.980560,
		0.983829, -0.049088, 0.172254,
		-0.033195, -0.995022, -0.093966,
		21.984196, 17.255201, 33.611294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498075, 17.883217, 33.204735>,  <22.007431, 17.951715, 33.677071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498075, 17.883217, 33.204735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217957, 17.598932, 33.177971>,  <22.049885, 17.428362, 33.161915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217957, 17.598932, 33.177971>,  <22.498075, 17.883217, 33.204735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217957, 17.598932, 33.177971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004080, 0.089740, -0.995957,
		0.713841, -0.697737, -0.059945,
		-0.700296, -0.710711, -0.066907,
		22.007868, 17.385719, 33.157898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678232, 17.292820, 32.752701>,  <22.498075, 17.883217, 33.204735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678232, 17.292820, 32.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280355, 17.327311, 32.775158>,  <22.041630, 17.348005, 32.788631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280355, 17.327311, 32.775158>,  <22.678232, 17.292820, 32.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280355, 17.327311, 32.775158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032916, 0.250264, -0.967618,
		-0.097486, -0.964330, -0.246097,
		-0.994693, 0.086229, 0.056140,
		21.981947, 17.353180, 32.792000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.382114, 16.951097, 32.124622>,  <22.678232, 17.292820, 32.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.382114, 16.951097, 32.124622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110382, 17.208990, 32.264812>,  <21.947344, 17.363726, 32.348927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110382, 17.208990, 32.264812>,  <22.382114, 16.951097, 32.124622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110382, 17.208990, 32.264812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359591, 0.123864, -0.924852,
		-0.639693, -0.754307, 0.147696,
		-0.679328, 0.644732, 0.350477,
		21.906584, 17.402409, 32.369957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679455, 16.625799, 31.896891>,  <22.382114, 16.951097, 32.124622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679455, 16.625799, 31.896891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610718, 17.014666, 31.960596>,  <21.569475, 17.247986, 31.998819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610718, 17.014666, 31.960596>,  <21.679455, 16.625799, 31.896891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610718, 17.014666, 31.960596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404303, 0.077829, -0.911308,
		-0.898337, -0.220991, 0.379676,
		-0.171841, 0.972165, 0.159264,
		21.559166, 17.306314, 32.008377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027126, 16.757565, 31.689754>,  <21.679455, 16.625799, 31.896891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027126, 16.757565, 31.689754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.181528, 17.125380, 31.660208>,  <21.274168, 17.346067, 31.642481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.181528, 17.125380, 31.660208>,  <21.027126, 16.757565, 31.689754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181528, 17.125380, 31.660208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531617, 0.156294, -0.832440,
		-0.753913, 0.360592, 0.549170,
		0.386003, 0.919535, -0.073865,
		21.297329, 17.401239, 31.638048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521740, 17.171450, 31.314713>,  <21.027126, 16.757565, 31.689754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521740, 17.171450, 31.314713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791159, 17.467104, 31.315950>,  <20.952810, 17.644497, 31.316692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791159, 17.467104, 31.315950>,  <20.521740, 17.171450, 31.314713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791159, 17.467104, 31.315950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475410, 0.436418, -0.763887,
		-0.565968, 0.513044, 0.645342,
		0.673547, 0.739138, 0.003093,
		20.993223, 17.688845, 31.316877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188963, 17.718880, 31.232740>,  <20.521740, 17.171450, 31.314713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188963, 17.718880, 31.232740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552217, 17.808552, 31.091303>,  <20.770170, 17.862356, 31.006441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552217, 17.808552, 31.091303>,  <20.188963, 17.718880, 31.232740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552217, 17.808552, 31.091303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416627, 0.400534, -0.816085,
		-0.041326, 0.888434, 0.457141,
		0.908138, 0.224182, -0.353593,
		20.824659, 17.875807, 30.985226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.104618, 18.352402, 30.964119>,  <20.188963, 17.718880, 31.232740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.104618, 18.352402, 30.964119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.441824, 18.229837, 30.787285>,  <20.644148, 18.156298, 30.681185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.441824, 18.229837, 30.787285>,  <20.104618, 18.352402, 30.964119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.441824, 18.229837, 30.787285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319128, 0.376694, -0.869631,
		0.432997, 0.874193, 0.219773,
		0.843013, -0.306412, -0.442087,
		20.694727, 18.137913, 30.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259054, 18.861061, 30.573874>,  <20.104618, 18.352402, 30.964119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259054, 18.861061, 30.573874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452549, 18.543674, 30.426138>,  <20.568645, 18.353243, 30.337496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452549, 18.543674, 30.426138>,  <20.259054, 18.861061, 30.573874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.452549, 18.543674, 30.426138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215774, 0.300853, -0.928940,
		0.848198, 0.529056, -0.025675,
		0.483737, -0.793465, -0.369340,
		20.597670, 18.305635, 30.315336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672018, 19.113348, 29.987783>,  <20.259054, 18.861061, 30.573874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672018, 19.113348, 29.987783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589752, 18.727367, 29.922583>,  <20.540394, 18.495779, 29.883463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589752, 18.727367, 29.922583>,  <20.672018, 19.113348, 29.987783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589752, 18.727367, 29.922583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170088, 0.199272, -0.965070,
		0.963729, -0.170754, -0.205109,
		-0.205662, -0.964953, -0.163001,
		20.528053, 18.437881, 29.873682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829597, 18.977104, 29.298958>,  <20.672018, 19.113348, 29.987783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829597, 18.977104, 29.298958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628511, 18.640556, 29.378326>,  <20.507860, 18.438627, 29.425947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628511, 18.640556, 29.378326>,  <20.829597, 18.977104, 29.298958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628511, 18.640556, 29.378326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317158, -0.034011, -0.947763,
		0.804168, -0.539388, -0.249749,
		-0.502717, -0.841370, 0.198421,
		20.477695, 18.388145, 29.437853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766369, 18.739487, 28.643047>,  <20.829597, 18.977104, 29.298958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766369, 18.739487, 28.643047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492842, 18.525908, 28.841959>,  <20.328726, 18.397760, 28.961306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492842, 18.525908, 28.841959>,  <20.766369, 18.739487, 28.643047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492842, 18.525908, 28.841959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627514, 0.082604, -0.774211,
		0.372313, -0.841471, -0.391548,
		-0.683820, -0.533951, 0.497280,
		20.287695, 18.365723, 28.991142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631088, 18.170788, 28.218655>,  <20.766369, 18.739487, 28.643047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631088, 18.170788, 28.218655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307003, 18.199028, 28.451403>,  <20.112553, 18.215973, 28.591051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307003, 18.199028, 28.451403>,  <20.631088, 18.170788, 28.218655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307003, 18.199028, 28.451403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585851, -0.128591, -0.800152,
		0.018331, -0.989181, 0.145548,
		-0.810212, 0.070602, 0.581870,
		20.063940, 18.220209, 28.625963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226923, 17.567089, 28.114681>,  <20.631088, 18.170788, 28.218655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226923, 17.567089, 28.114681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009645, 17.877522, 28.242832>,  <19.879280, 18.063782, 28.319723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009645, 17.877522, 28.242832>,  <20.226923, 17.567089, 28.114681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009645, 17.877522, 28.242832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472871, 0.032524, -0.880531,
		-0.693784, -0.629794, 0.349319,
		-0.543192, 0.776081, 0.320376,
		19.846687, 18.110346, 28.338945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509541, 17.340546, 28.091702>,  <20.226923, 17.567089, 28.114681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509541, 17.340546, 28.091702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550714, 17.738235, 28.079542>,  <19.575418, 17.976849, 28.072247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550714, 17.738235, 28.079542>,  <19.509541, 17.340546, 28.091702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550714, 17.738235, 28.079542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509359, 0.026436, -0.860148,
		-0.854376, 0.104023, 0.509138,
		0.102935, 0.994224, -0.030399,
		19.581594, 18.036503, 28.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768209, 17.671600, 28.158800>,  <19.509541, 17.340546, 28.091702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768209, 17.671600, 28.158800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036139, 17.906857, 27.977503>,  <19.196896, 18.048010, 27.868725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036139, 17.906857, 27.977503>,  <18.768209, 17.671600, 28.158800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036139, 17.906857, 27.977503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548442, -0.019614, -0.835958,
		-0.500549, 0.808522, 0.309422,
		0.669822, 0.588139, -0.453245,
		19.237085, 18.083298, 27.841530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332760, 18.288456, 27.889475>,  <18.768209, 17.671600, 28.158800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332760, 18.288456, 27.889475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682442, 18.254515, 27.698238>,  <18.892250, 18.234150, 27.583496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682442, 18.254515, 27.698238>,  <18.332760, 18.288456, 27.889475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682442, 18.254515, 27.698238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468291, 0.112926, -0.876328,
		0.128348, 0.989973, 0.058984,
		0.874203, -0.084853, -0.478090,
		18.944702, 18.229059, 27.554811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129646, 18.521366, 27.318653>,  <18.332760, 18.288456, 27.889475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129646, 18.521366, 27.318653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491650, 18.367245, 27.246538>,  <18.708851, 18.274771, 27.203268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491650, 18.367245, 27.246538>,  <18.129646, 18.521366, 27.318653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491650, 18.367245, 27.246538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278149, -0.215310, -0.936095,
		0.321864, 0.897319, -0.302029,
		0.905006, -0.385304, -0.180288,
		18.763151, 18.251654, 27.192451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391283, 18.856260, 26.698046>,  <18.129646, 18.521366, 27.318653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391283, 18.856260, 26.698046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572659, 18.502279, 26.740479>,  <18.681484, 18.289890, 26.765938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572659, 18.502279, 26.740479>,  <18.391283, 18.856260, 26.698046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572659, 18.502279, 26.740479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335670, -0.279817, -0.899460,
		0.825662, 0.372242, -0.423932,
		0.453440, -0.884951, 0.106084,
		18.708691, 18.236794, 26.772305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698519, 18.772655, 26.047770>,  <18.391283, 18.856260, 26.698046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.698519, 18.772655, 26.047770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729202, 18.401190, 26.192932>,  <18.747612, 18.178310, 26.280029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729202, 18.401190, 26.192932>,  <18.698519, 18.772655, 26.047770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729202, 18.401190, 26.192932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176650, -0.370882, -0.911725,
		0.981280, 0.005832, -0.192499,
		0.076711, -0.928662, 0.362909,
		18.752216, 18.122591, 26.301805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099718, 18.440403, 25.525496>,  <18.698519, 18.772655, 26.047770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.099718, 18.440403, 25.525496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.901871, 18.160910, 25.732233>,  <18.783163, 17.993214, 25.856276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.901871, 18.160910, 25.732233>,  <19.099718, 18.440403, 25.525496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901871, 18.160910, 25.732233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340748, -0.391166, -0.854915,
		0.799529, -0.598969, -0.044614,
		-0.494616, -0.698731, 0.516846,
		18.753487, 17.951290, 25.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327034, 17.795132, 25.274048>,  <19.099718, 18.440403, 25.525496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327034, 17.795132, 25.274048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961746, 17.728817, 25.422932>,  <18.742573, 17.689028, 25.512262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961746, 17.728817, 25.422932>,  <19.327034, 17.795132, 25.274048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961746, 17.728817, 25.422932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286102, -0.389522, -0.875453,
		0.290126, -0.905972, 0.308287,
		-0.913221, -0.165790, 0.372211,
		18.687780, 17.679081, 25.534595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.203016, 17.093246, 24.956785>,  <19.327034, 17.795132, 25.274048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.203016, 17.093246, 24.956785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854198, 17.245596, 25.079733>,  <18.644909, 17.337006, 25.153502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854198, 17.245596, 25.079733>,  <19.203016, 17.093246, 24.956785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854198, 17.245596, 25.079733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465475, -0.451347, -0.761327,
		-0.151239, -0.806983, 0.570881,
		-0.872043, 0.380873, 0.307369,
		18.592585, 17.359858, 25.171944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783585, 16.454136, 24.932148>,  <19.203016, 17.093246, 24.956785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783585, 16.454136, 24.932148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538170, 16.769979, 24.936026>,  <18.390921, 16.959486, 24.938353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538170, 16.769979, 24.936026>,  <18.783585, 16.454136, 24.932148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538170, 16.769979, 24.936026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524221, -0.398084, -0.752809,
		-0.590566, -0.466956, 0.658167,
		-0.613534, 0.789608, 0.009694,
		18.354109, 17.006863, 24.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157267, 16.233488, 24.792683>,  <18.783585, 16.454136, 24.932148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157267, 16.233488, 24.792683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120211, 16.621017, 24.700768>,  <18.097977, 16.853535, 24.645618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120211, 16.621017, 24.700768>,  <18.157267, 16.233488, 24.792683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120211, 16.621017, 24.700768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594133, -0.238980, -0.768046,
		-0.799014, 0.065374, 0.597747,
		-0.092639, 0.968822, -0.229789,
		18.092419, 16.911663, 24.631830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388563, 16.329275, 24.448669>,  <18.157267, 16.233488, 24.792683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388563, 16.329275, 24.448669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609119, 16.642344, 24.333155>,  <17.741453, 16.830185, 24.263845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609119, 16.642344, 24.333155>,  <17.388563, 16.329275, 24.448669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609119, 16.642344, 24.333155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597947, 0.129383, -0.791024,
		-0.581748, 0.608840, 0.539336,
		0.551389, 0.782671, -0.288786,
		17.774536, 16.877144, 24.246519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985939, 16.796286, 24.178623>,  <17.388563, 16.329275, 24.448669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985939, 16.796286, 24.178623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314842, 16.895412, 23.973692>,  <17.512184, 16.954887, 23.850733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314842, 16.895412, 23.973692>,  <16.985939, 16.796286, 24.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314842, 16.895412, 23.973692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567439, 0.287983, -0.771413,
		-0.043627, 0.925015, 0.377417,
		0.822259, 0.247816, -0.512326,
		17.561520, 16.969757, 23.819994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770296, 17.350475, 23.765097>,  <16.985939, 16.796286, 24.178623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770296, 17.350475, 23.765097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111147, 17.224646, 23.597803>,  <17.315659, 17.149147, 23.497427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111147, 17.224646, 23.597803>,  <16.770296, 17.350475, 23.765097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111147, 17.224646, 23.597803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386874, 0.159531, -0.908228,
		0.352428, 0.935731, 0.014239,
		0.852129, -0.314576, -0.418233,
		17.366785, 17.130272, 23.472334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909361, 17.794701, 23.219732>,  <16.770296, 17.350475, 23.765097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909361, 17.794701, 23.219732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116735, 17.461372, 23.143002>,  <17.241159, 17.261375, 23.096964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116735, 17.461372, 23.143002>,  <16.909361, 17.794701, 23.219732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116735, 17.461372, 23.143002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320916, 0.018327, -0.946930,
		0.792614, 0.552483, -0.257925,
		0.518436, -0.833322, -0.191827,
		17.272266, 17.211376, 23.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191055, 17.767359, 22.542643>,  <16.909361, 17.794701, 23.219732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191055, 17.767359, 22.542643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244940, 17.372587, 22.578026>,  <17.277271, 17.135725, 22.599257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244940, 17.372587, 22.578026>,  <17.191055, 17.767359, 22.542643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244940, 17.372587, 22.578026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179305, -0.112078, -0.977389,
		0.974527, 0.115803, -0.192059,
		0.134711, -0.986929, 0.088459,
		17.285353, 17.076509, 22.604563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325014, 17.594799, 21.870329>,  <17.191055, 17.767359, 22.542643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325014, 17.594799, 21.870329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264669, 17.237982, 22.040739>,  <17.228462, 17.023891, 22.142984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264669, 17.237982, 22.040739>,  <17.325014, 17.594799, 21.870329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264669, 17.237982, 22.040739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292291, -0.371438, -0.881249,
		0.944355, -0.257471, -0.204700,
		-0.150862, -0.892044, 0.426025,
		17.219410, 16.970369, 22.168547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635540, 17.174929, 21.459862>,  <17.325014, 17.594799, 21.870329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635540, 17.174929, 21.459862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.354843, 16.961109, 21.648251>,  <17.186426, 16.832817, 21.761284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.354843, 16.961109, 21.648251>,  <17.635540, 17.174929, 21.459862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354843, 16.961109, 21.648251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278297, -0.402877, -0.871918,
		0.655829, -0.742930, 0.133951,
		-0.701740, -0.534551, 0.470974,
		17.144321, 16.800743, 21.789543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540974, 16.527916, 21.083548>,  <17.635540, 17.174929, 21.459862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540974, 16.527916, 21.083548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208462, 16.555803, 21.304132>,  <17.008955, 16.572536, 21.436483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208462, 16.555803, 21.304132>,  <17.540974, 16.527916, 21.083548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208462, 16.555803, 21.304132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535733, -0.364997, -0.761424,
		0.148197, -0.928395, 0.340766,
		-0.831280, 0.069719, 0.551463,
		16.959078, 16.576719, 21.469572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114004, 15.921300, 20.920210>,  <17.540974, 16.527916, 21.083548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.114004, 15.921300, 20.920210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851223, 16.174625, 21.083834>,  <16.693554, 16.326620, 21.182007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851223, 16.174625, 21.083834>,  <17.114004, 15.921300, 20.920210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851223, 16.174625, 21.083834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639633, -0.180971, -0.747073,
		-0.399106, -0.752436, 0.523979,
		-0.656950, 0.633316, 0.409056,
		16.654139, 16.364620, 21.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428278, 15.587455, 20.925816>,  <17.114004, 15.921300, 20.920210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428278, 15.587455, 20.925816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360861, 15.981269, 20.944929>,  <16.320412, 16.217558, 20.956396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360861, 15.981269, 20.944929>,  <16.428278, 15.587455, 20.925816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360861, 15.981269, 20.944929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733471, -0.092883, -0.673345,
		-0.658494, -0.148534, 0.737783,
		-0.168542, 0.984536, 0.047782,
		16.310299, 16.276630, 20.959265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699134, 15.678812, 21.084526>,  <16.428278, 15.587455, 20.925816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699134, 15.678812, 21.084526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870659, 15.998612, 20.916279>,  <15.973574, 16.190493, 20.815331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870659, 15.998612, 20.916279>,  <15.699134, 15.678812, 21.084526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870659, 15.998612, 20.916279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726156, 0.028068, -0.686957,
		-0.537416, 0.600010, 0.592597,
		0.428814, 0.799500, -0.420617,
		15.999303, 16.238462, 20.790094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164948, 15.819736, 20.581154>,  <15.699134, 15.678812, 21.084526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164948, 15.819736, 20.581154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431368, 16.101974, 20.484396>,  <15.591220, 16.271318, 20.426342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431368, 16.101974, 20.484396>,  <15.164948, 15.819736, 20.581154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431368, 16.101974, 20.484396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474640, 0.150750, -0.867175,
		-0.575410, 0.692393, 0.435311,
		0.666049, 0.705596, -0.241894,
		15.631183, 16.313654, 20.411827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831738, 16.457581, 20.383768>,  <15.164948, 15.819736, 20.581154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831738, 16.457581, 20.383768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.171938, 16.461639, 20.173416>,  <15.376058, 16.464075, 20.047205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.171938, 16.461639, 20.173416>,  <14.831738, 16.457581, 20.383768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171938, 16.461639, 20.173416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472876, 0.452527, -0.756047,
		0.230304, 0.891693, 0.389672,
		0.850499, 0.010145, -0.525879,
		15.427088, 16.464684, 20.015652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921257, 17.080048, 20.038246>,  <14.831738, 16.457581, 20.383768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921257, 17.080048, 20.038246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.130775, 16.816469, 19.822309>,  <15.256486, 16.658321, 19.692747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.130775, 16.816469, 19.822309>,  <14.921257, 17.080048, 20.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.130775, 16.816469, 19.822309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402069, 0.367453, -0.838641,
		0.750986, 0.656330, -0.072471,
		0.523795, -0.658946, -0.539842,
		15.287914, 16.618786, 19.660357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.417057, 17.395147, 19.466644>,  <14.921257, 17.080048, 20.038246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.417057, 17.395147, 19.466644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236979, 17.043207, 19.405733>,  <15.128933, 16.832043, 19.369186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236979, 17.043207, 19.405733>,  <15.417057, 17.395147, 19.466644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236979, 17.043207, 19.405733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438010, 0.366207, -0.820999,
		0.778121, -0.302910, -0.550248,
		-0.450194, -0.879851, -0.152276,
		15.101921, 16.779251, 19.360050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643679, 18.051353, 19.849276>,  <15.417057, 17.395147, 19.466644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643679, 18.051353, 19.849276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.758592, 18.362862, 19.626211>,  <15.827539, 18.549767, 19.492373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.758592, 18.362862, 19.626211>,  <15.643679, 18.051353, 19.849276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758592, 18.362862, 19.626211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025770, 0.588277, 0.808249,
		0.957499, -0.217825, 0.189070,
		0.287282, 0.778770, -0.557661,
		15.844776, 18.596493, 19.458912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425035, 18.294765, 19.915955>,  <15.643679, 18.051353, 19.849276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425035, 18.294765, 19.915955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145853, 18.570175, 19.837173>,  <15.978344, 18.735422, 19.789904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145853, 18.570175, 19.837173>,  <16.425035, 18.294765, 19.915955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145853, 18.570175, 19.837173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191883, 0.444764, 0.874852,
		0.689957, 0.572815, -0.442542,
		-0.697955, 0.688526, -0.196954,
		15.936466, 18.776733, 19.778088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713831, 18.974020, 20.072872>,  <16.425035, 18.294765, 19.915955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713831, 18.974020, 20.072872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318701, 19.017853, 20.117044>,  <16.081623, 19.044153, 20.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318701, 19.017853, 20.117044>,  <16.713831, 18.974020, 20.072872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318701, 19.017853, 20.117044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154618, 0.612954, 0.774842,
		0.017222, 0.782483, -0.622434,
		-0.987824, 0.109584, 0.110430,
		16.022354, 19.050728, 20.150173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570885, 19.775248, 20.174429>,  <16.713831, 18.974020, 20.072872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570885, 19.775248, 20.174429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265553, 19.573427, 20.335800>,  <16.082354, 19.452335, 20.432623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265553, 19.573427, 20.335800>,  <16.570885, 19.775248, 20.174429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265553, 19.573427, 20.335800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168298, 0.447615, 0.878246,
		-0.623699, 0.738290, -0.256764,
		-0.763331, -0.504549, 0.403430,
		16.036552, 19.422062, 20.456829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293755, 20.244503, 20.573103>,  <16.570885, 19.775248, 20.174429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293755, 20.244503, 20.573103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.153383, 19.902266, 20.725315>,  <16.069160, 19.696922, 20.816643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.153383, 19.902266, 20.725315>,  <16.293755, 20.244503, 20.573103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153383, 19.902266, 20.725315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123224, 0.360649, 0.924526,
		-0.928259, 0.371333, -0.021132,
		-0.350928, -0.855596, 0.380532,
		16.048105, 19.645586, 20.839476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.785487, 20.430094, 21.145338>,  <16.293755, 20.244503, 20.573103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.785487, 20.430094, 21.145338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927542, 20.061071, 21.205700>,  <16.012775, 19.839659, 21.241917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927542, 20.061071, 21.205700>,  <15.785487, 20.430094, 21.145338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927542, 20.061071, 21.205700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076530, 0.132193, 0.988265,
		-0.931676, -0.362518, -0.023657,
		0.355137, -0.922554, 0.150905,
		16.034082, 19.784306, 21.250971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330522, 20.192427, 21.567816>,  <15.785487, 20.430094, 21.145338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330522, 20.192427, 21.567816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675577, 19.996611, 21.618740>,  <15.882610, 19.879122, 21.649296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675577, 19.996611, 21.618740>,  <15.330522, 20.192427, 21.567816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675577, 19.996611, 21.618740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034374, 0.194375, 0.980325,
		-0.504653, -0.850042, 0.150848,
		0.862638, -0.489538, 0.127312,
		15.934368, 19.849749, 21.656933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188694, 19.699726, 22.162249>,  <15.330522, 20.192427, 21.567816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188694, 19.699726, 22.162249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585596, 19.698294, 22.112585>,  <15.823737, 19.697433, 22.082787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585596, 19.698294, 22.112585>,  <15.188694, 19.699726, 22.162249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585596, 19.698294, 22.112585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118445, 0.328246, 0.937137,
		0.037397, -0.944586, 0.326128,
		0.992256, -0.003582, -0.124157,
		15.883273, 19.697220, 22.075338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548154, 19.393702, 22.832561>,  <15.188694, 19.699726, 22.162249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548154, 19.393702, 22.832561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.836718, 19.606373, 22.655075>,  <16.009855, 19.733976, 22.548582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.836718, 19.606373, 22.655075>,  <15.548154, 19.393702, 22.832561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836718, 19.606373, 22.655075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370917, 0.244423, 0.895923,
		0.584797, -0.810911, -0.020879,
		0.721411, 0.531678, -0.443718,
		16.053141, 19.765877, 22.521959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.053860, 19.190563, 23.295311>,  <15.548154, 19.393702, 22.832561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.053860, 19.190563, 23.295311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213526, 19.500086, 23.098581>,  <16.309326, 19.685799, 22.980543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213526, 19.500086, 23.098581>,  <16.053860, 19.190563, 23.295311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213526, 19.500086, 23.098581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471235, 0.287000, 0.834008,
		0.786514, -0.564672, -0.250084,
		0.399167, 0.773807, -0.491822,
		16.333277, 19.732227, 22.951035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789246, 19.189980, 23.397476>,  <16.053860, 19.190563, 23.295311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789246, 19.189980, 23.397476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698093, 19.567493, 23.301695>,  <16.643402, 19.794003, 23.244226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698093, 19.567493, 23.301695>,  <16.789246, 19.189980, 23.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698093, 19.567493, 23.301695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489767, 0.323650, 0.809555,
		0.841546, 0.067205, -0.535989,
		-0.227879, 0.943787, -0.239452,
		16.629730, 19.850630, 23.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326881, 19.567196, 23.616844>,  <16.789246, 19.189980, 23.397476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326881, 19.567196, 23.616844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083704, 19.879576, 23.559544>,  <16.937798, 20.067003, 23.525164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083704, 19.879576, 23.559544>,  <17.326881, 19.567196, 23.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083704, 19.879576, 23.559544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445363, 0.484781, 0.752755,
		0.657309, 0.393834, -0.642526,
		-0.607945, 0.780949, -0.143252,
		16.901321, 20.113861, 23.516567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724562, 20.086668, 23.538170>,  <17.326881, 19.567196, 23.616844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.724562, 20.086668, 23.538170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.374378, 20.202003, 23.693312>,  <17.164268, 20.271206, 23.786396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.374378, 20.202003, 23.693312>,  <17.724562, 20.086668, 23.538170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374378, 20.202003, 23.693312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480513, 0.433397, 0.762413,
		0.051741, 0.853831, -0.517973,
		-0.875460, 0.288341, 0.387853,
		17.111740, 20.288506, 23.809668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714876, 20.878933, 23.681261>,  <17.724562, 20.086668, 23.538170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714876, 20.878933, 23.681261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444735, 20.701021, 23.916571>,  <17.282650, 20.594275, 24.057756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444735, 20.701021, 23.916571>,  <17.714876, 20.878933, 23.681261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444735, 20.701021, 23.916571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421918, 0.421218, 0.802845,
		-0.604879, 0.790410, -0.096812,
		-0.675356, -0.444778, 0.588274,
		17.242128, 20.567589, 24.093054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309046, 21.425779, 24.044592>,  <17.714876, 20.878933, 23.681261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309046, 21.425779, 24.044592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287298, 21.086937, 24.256044>,  <17.274250, 20.883631, 24.382915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287298, 21.086937, 24.256044>,  <17.309046, 21.425779, 24.044592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287298, 21.086937, 24.256044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454047, 0.450542, 0.768670,
		-0.889317, 0.281817, 0.360131,
		-0.054370, -0.847107, 0.528633,
		17.270987, 20.832806, 24.414635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968958, 21.732403, 24.798214>,  <17.309046, 21.425779, 24.044592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968958, 21.732403, 24.798214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117262, 21.366779, 24.863987>,  <17.206244, 21.147406, 24.903450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117262, 21.366779, 24.863987>,  <16.968958, 21.732403, 24.798214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117262, 21.366779, 24.863987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433796, 0.326990, 0.839583,
		-0.821194, -0.239952, 0.517748,
		0.370758, -0.914057, 0.164432,
		17.228489, 21.092562, 24.913317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776640, 21.607483, 25.407290>,  <16.968958, 21.732403, 24.798214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776640, 21.607483, 25.407290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.091986, 21.369478, 25.344755>,  <17.281193, 21.226675, 25.307234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.091986, 21.369478, 25.344755>,  <16.776640, 21.607483, 25.407290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091986, 21.369478, 25.344755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244175, 0.069381, 0.967246,
		-0.564676, -0.800717, 0.199984,
		0.788365, -0.595012, -0.156337,
		17.328495, 21.190975, 25.297853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597214, 21.005980, 25.812695>,  <16.776640, 21.607483, 25.407290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597214, 21.005980, 25.812695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990986, 21.008512, 25.742432>,  <17.227249, 21.010033, 25.700274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990986, 21.008512, 25.742432>,  <16.597214, 21.005980, 25.812695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990986, 21.008512, 25.742432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175333, -0.105857, 0.978802,
		-0.012393, -0.994361, -0.105320,
		0.984431, 0.006336, -0.175656,
		17.286316, 21.010412, 25.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854370, 20.531420, 26.344797>,  <16.597214, 21.005980, 25.812695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854370, 20.531420, 26.344797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179619, 20.734362, 26.230658>,  <17.374767, 20.856127, 26.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179619, 20.734362, 26.230658>,  <16.854370, 20.531420, 26.344797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179619, 20.734362, 26.230658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333878, -0.004953, 0.942603,
		0.476822, -0.861723, -0.173422,
		0.813122, 0.507355, -0.285348,
		17.423555, 20.886568, 26.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337536, 20.172869, 26.586124>,  <16.854370, 20.531420, 26.344797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337536, 20.172869, 26.586124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501904, 20.533815, 26.534153>,  <17.600525, 20.750383, 26.502970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501904, 20.533815, 26.534153>,  <17.337536, 20.172869, 26.586124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501904, 20.533815, 26.534153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270566, 0.015387, 0.962578,
		0.870596, -0.430697, -0.237826,
		0.410921, 0.902365, -0.129928,
		17.625179, 20.804525, 26.495174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981186, 20.062017, 26.921789>,  <17.337536, 20.172869, 26.586124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981186, 20.062017, 26.921789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935141, 20.457521, 26.883629>,  <17.907515, 20.694824, 26.860733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935141, 20.457521, 26.883629>,  <17.981186, 20.062017, 26.921789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935141, 20.457521, 26.883629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400648, 0.134095, 0.906366,
		0.908972, 0.066111, -0.411581,
		-0.115112, 0.988761, -0.095402,
		17.900608, 20.754150, 26.855009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581593, 20.326426, 27.242861>,  <17.981186, 20.062017, 26.921789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581593, 20.326426, 27.242861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305079, 20.615446, 27.240206>,  <18.139170, 20.788858, 27.238613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305079, 20.615446, 27.240206>,  <18.581593, 20.326426, 27.242861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305079, 20.615446, 27.240206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146341, 0.148991, 0.977950,
		0.707610, 0.675070, -0.208734,
		-0.691284, 0.722553, -0.006637,
		18.097692, 20.832212, 27.238214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925941, 20.905743, 27.485476>,  <18.581593, 20.326426, 27.242861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925941, 20.905743, 27.485476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530935, 20.933376, 27.542109>,  <18.293932, 20.949957, 27.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530935, 20.933376, 27.542109>,  <18.925941, 20.905743, 27.485476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530935, 20.933376, 27.542109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152104, 0.184118, 0.971064,
		0.041018, 0.980473, -0.192327,
		-0.987513, 0.069085, 0.141581,
		18.234682, 20.954102, 27.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966349, 21.459587, 28.035524>,  <18.925941, 20.905743, 27.485476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966349, 21.459587, 28.035524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617706, 21.265457, 28.063128>,  <18.408522, 21.148979, 28.079689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617706, 21.265457, 28.063128>,  <18.966349, 21.459587, 28.035524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617706, 21.265457, 28.063128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099686, -0.037651, 0.994306,
		-0.479965, 0.873522, 0.081197,
		-0.871606, -0.485326, 0.069007,
		18.356224, 21.119860, 28.083830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706148, 21.717228, 28.654552>,  <18.966349, 21.459587, 28.035524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.706148, 21.717228, 28.654552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538733, 21.365183, 28.564907>,  <18.438284, 21.153955, 28.511120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538733, 21.365183, 28.564907>,  <18.706148, 21.717228, 28.654552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538733, 21.365183, 28.564907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030385, -0.233060, 0.971987,
		-0.907691, 0.413623, 0.070803,
		-0.418538, -0.880113, -0.224114,
		18.413172, 21.101149, 28.497673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247028, 21.657951, 29.118959>,  <18.706148, 21.717228, 28.654552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247028, 21.657951, 29.118959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.283428, 21.278345, 28.998240>,  <18.305267, 21.050581, 28.925808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.283428, 21.278345, 28.998240>,  <18.247028, 21.657951, 29.118959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283428, 21.278345, 28.998240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258713, -0.270124, 0.927416,
		-0.961658, -0.162475, 0.220942,
		0.091000, -0.949018, -0.301802,
		18.310728, 20.993639, 28.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.036098, 21.285324, 29.673689>,  <18.247028, 21.657951, 29.118959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.036098, 21.285324, 29.673689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.211151, 21.011711, 29.440254>,  <18.316183, 20.847544, 29.300194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.211151, 21.011711, 29.440254>,  <18.036098, 21.285324, 29.673689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211151, 21.011711, 29.440254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295966, -0.503285, 0.811855,
		-0.849047, -0.528017, -0.017803,
		0.437633, -0.684034, -0.583588,
		18.342442, 20.806501, 29.265179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754036, 20.540997, 29.822365>,  <18.036098, 21.285324, 29.673689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754036, 20.540997, 29.822365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129341, 20.543125, 29.684010>,  <18.354525, 20.544403, 29.600996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129341, 20.543125, 29.684010>,  <17.754036, 20.540997, 29.822365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129341, 20.543125, 29.684010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303538, -0.492263, 0.815808,
		-0.165926, -0.870430, -0.463487,
		0.938261, 0.005322, -0.345887,
		18.410820, 20.544722, 29.580244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044884, 19.952023, 30.121832>,  <17.754036, 20.540997, 29.822365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044884, 19.952023, 30.121832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372549, 20.133801, 29.981857>,  <18.569147, 20.242868, 29.897873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372549, 20.133801, 29.981857>,  <18.044884, 19.952023, 30.121832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372549, 20.133801, 29.981857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547098, -0.435903, 0.714613,
		0.172216, -0.776832, -0.605701,
		0.819161, 0.454446, -0.349934,
		18.618298, 20.270134, 29.876877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453257, 19.365507, 30.074259>,  <18.044884, 19.952023, 30.121832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453257, 19.365507, 30.074259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681591, 19.693930, 30.075724>,  <18.818592, 19.890984, 30.076603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681591, 19.693930, 30.075724>,  <18.453257, 19.365507, 30.074259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681591, 19.693930, 30.075724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685719, -0.479189, 0.547875,
		0.451590, -0.310238, -0.836552,
		0.570838, 0.821055, 0.003661,
		18.852842, 19.940247, 30.076822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177734, 19.193213, 30.133574>,  <18.453257, 19.365507, 30.074259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177734, 19.193213, 30.133574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156086, 19.570320, 30.265186>,  <19.143097, 19.796585, 30.344154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156086, 19.570320, 30.265186>,  <19.177734, 19.193213, 30.133574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156086, 19.570320, 30.265186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646125, -0.218164, 0.731387,
		0.761310, 0.252180, -0.597338,
		-0.054123, 0.942767, 0.329031,
		19.139849, 19.853149, 30.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912239, 19.500111, 30.214209>,  <19.177734, 19.193213, 30.133574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912239, 19.500111, 30.214209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603338, 19.603935, 30.446159>,  <19.417997, 19.666229, 30.585329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603338, 19.603935, 30.446159>,  <19.912239, 19.500111, 30.214209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603338, 19.603935, 30.446159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449471, -0.421850, 0.787412,
		0.449002, 0.868718, 0.209110,
		-0.772252, 0.259561, 0.579875,
		19.371662, 19.681803, 30.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862364, 19.973639, 30.667078>,  <19.912239, 19.500111, 30.214209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862364, 19.973639, 30.667078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.616550, 19.688679, 30.802626>,  <19.469063, 19.517702, 30.883955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.616550, 19.688679, 30.802626>,  <19.862364, 19.973639, 30.667078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616550, 19.688679, 30.802626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744439, -0.381527, 0.547949,
		-0.261071, 0.589001, 0.764800,
		-0.614534, -0.712401, 0.338870,
		19.432190, 19.474958, 30.904287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.677195, 19.994967, 31.396313>,  <19.862364, 19.973639, 30.667078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.677195, 19.994967, 31.396313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720312, 19.637209, 31.222673>,  <19.746181, 19.422554, 31.118490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720312, 19.637209, 31.222673>,  <19.677195, 19.994967, 31.396313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720312, 19.637209, 31.222673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888055, -0.109665, 0.446466,
		-0.446922, -0.433629, 0.782449,
		0.107793, -0.894393, -0.434098,
		19.752649, 19.368891, 31.092443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778692, 19.442005, 31.907265>,  <19.677195, 19.994967, 31.396313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778692, 19.442005, 31.907265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974791, 19.362812, 31.567745>,  <20.092449, 19.315296, 31.364033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974791, 19.362812, 31.567745>,  <19.778692, 19.442005, 31.907265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974791, 19.362812, 31.567745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821974, -0.218847, 0.525799,
		-0.289856, -0.955462, 0.055448,
		0.490246, -0.197983, -0.848800,
		20.121864, 19.303417, 31.313105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069805, 19.196867, 31.643494>,  <19.778692, 19.442005, 31.907265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069805, 19.196867, 31.643494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164053, 19.206966, 32.032101>,  <19.220602, 19.213026, 32.265266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164053, 19.206966, 32.032101>,  <19.069805, 19.196867, 31.643494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164053, 19.206966, 32.032101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188369, 0.981891, 0.020164,
		-0.953416, -0.187754, 0.236107,
		0.235617, 0.025251, 0.971518,
		19.234737, 19.214542, 32.323555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489002, 19.468245, 32.039619>,  <19.069805, 19.196867, 31.643494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489002, 19.468245, 32.039619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838127, 19.540281, 32.221066>,  <19.047602, 19.583504, 32.329933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838127, 19.540281, 32.221066>,  <18.489002, 19.468245, 32.039619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838127, 19.540281, 32.221066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174252, 0.983161, -0.055052,
		-0.455890, -0.030993, 0.889496,
		0.872812, 0.180094, 0.453614,
		19.099970, 19.594309, 32.357151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337990, 19.780678, 32.743443>,  <18.489002, 19.468245, 32.039619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337990, 19.780678, 32.743443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212626, 19.940792, 33.087894>,  <18.137407, 20.036861, 33.294567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212626, 19.940792, 33.087894>,  <18.337990, 19.780678, 32.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212626, 19.940792, 33.087894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761807, 0.435406, -0.479658,
		-0.566942, -0.806345, 0.168479,
		-0.313413, 0.400287, 0.861129,
		18.118601, 20.060879, 33.346233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574175, 19.522081, 32.908592>,  <18.337990, 19.780678, 32.743443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574175, 19.522081, 32.908592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672804, 19.871403, 33.076660>,  <17.731981, 20.080996, 33.177502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672804, 19.871403, 33.076660>,  <17.574175, 19.522081, 32.908592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672804, 19.871403, 33.076660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728025, 0.453087, -0.514481,
		-0.639673, -0.179040, 0.747505,
		0.246572, 0.873302, 0.420174,
		17.746775, 20.133394, 33.202713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022032, 19.803614, 33.259464>,  <17.574175, 19.522081, 32.908592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022032, 19.803614, 33.259464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249489, 20.115370, 33.154240>,  <17.385963, 20.302423, 33.091106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249489, 20.115370, 33.154240>,  <17.022032, 19.803614, 33.259464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249489, 20.115370, 33.154240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765240, 0.383908, -0.516741,
		-0.301753, 0.495143, 0.814726,
		0.568641, 0.779390, -0.263058,
		17.420080, 20.349186, 33.075321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563675, 20.335089, 33.368191>,  <17.022032, 19.803614, 33.259464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563675, 20.335089, 33.368191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853075, 20.444193, 33.114529>,  <17.026714, 20.509655, 32.962334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853075, 20.444193, 33.114529>,  <16.563675, 20.335089, 33.368191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853075, 20.444193, 33.114529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688361, 0.215828, -0.692516,
		-0.052025, 0.937560, 0.343910,
		0.723500, 0.272763, -0.634151,
		17.070126, 20.526022, 32.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311310, 20.996317, 32.990124>,  <16.563675, 20.335089, 33.368191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311310, 20.996317, 32.990124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623360, 20.873144, 32.772285>,  <16.810591, 20.799240, 32.641582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623360, 20.873144, 32.772285>,  <16.311310, 20.996317, 32.990124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623360, 20.873144, 32.772285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437385, 0.353951, -0.826688,
		0.447323, 0.883117, 0.141442,
		0.780126, -0.307932, -0.544593,
		16.857397, 20.780764, 32.608906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596214, 21.570366, 32.645596>,  <16.311310, 20.996317, 32.990124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596214, 21.570366, 32.645596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710392, 21.255833, 32.426430>,  <16.778898, 21.067114, 32.294930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710392, 21.255833, 32.426430>,  <16.596214, 21.570366, 32.645596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710392, 21.255833, 32.426430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541183, 0.339582, -0.769289,
		0.790976, 0.516109, -0.328617,
		0.285444, -0.786331, -0.547911,
		16.796024, 21.019934, 32.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467344, 21.791428, 31.974981>,  <16.596214, 21.570366, 32.645596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467344, 21.791428, 31.974981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570318, 21.409906, 31.913029>,  <16.632103, 21.180994, 31.875856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570318, 21.409906, 31.913029>,  <16.467344, 21.791428, 31.974981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570318, 21.409906, 31.913029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305595, 0.071695, -0.949458,
		0.916700, 0.291753, -0.273021,
		0.257433, -0.953803, -0.154881,
		16.647549, 21.123766, 31.866564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956667, 21.742939, 31.433418>,  <16.467344, 21.791428, 31.974981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956667, 21.742939, 31.433418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775221, 21.387083, 31.454487>,  <16.666353, 21.173569, 31.467127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775221, 21.387083, 31.454487>,  <16.956667, 21.742939, 31.433418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775221, 21.387083, 31.454487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391873, 0.146033, -0.908355,
		0.800419, -0.432682, -0.414869,
		-0.453613, -0.889641, 0.052669,
		16.639137, 21.120192, 31.470287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167513, 21.309330, 30.855869>,  <16.956667, 21.742939, 31.433418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167513, 21.309330, 30.855869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.811497, 21.191748, 30.995251>,  <16.597887, 21.121199, 31.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.811497, 21.191748, 30.995251>,  <17.167513, 21.309330, 30.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811497, 21.191748, 30.995251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352548, -0.040791, -0.934904,
		0.289036, -0.954948, -0.067328,
		-0.890038, -0.293957, 0.348455,
		16.544485, 21.103561, 31.099787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952621, 20.789698, 30.375799>,  <17.167513, 21.309330, 30.855869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952621, 20.789698, 30.375799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.627523, 20.893099, 30.584652>,  <16.432465, 20.955139, 30.709965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.627523, 20.893099, 30.584652>,  <16.952621, 20.789698, 30.375799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627523, 20.893099, 30.584652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529750, 0.045146, -0.846951,
		-0.242512, -0.964955, 0.100250,
		-0.812744, 0.258503, 0.522134,
		16.383699, 20.970650, 30.741293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448345, 20.375040, 30.084572>,  <16.952621, 20.789698, 30.375799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448345, 20.375040, 30.084572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259178, 20.684765, 30.252756>,  <16.145678, 20.870600, 30.353666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259178, 20.684765, 30.252756>,  <16.448345, 20.375040, 30.084572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259178, 20.684765, 30.252756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511321, 0.147445, -0.846647,
		-0.717565, -0.615385, 0.326193,
		-0.472918, 0.774314, 0.420460,
		16.117302, 20.917059, 30.378895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817373, 20.225449, 29.803082>,  <16.448345, 20.375040, 30.084572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817373, 20.225449, 29.803082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804171, 20.598091, 29.947870>,  <15.796249, 20.821676, 30.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804171, 20.598091, 29.947870>,  <15.817373, 20.225449, 29.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804171, 20.598091, 29.947870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473711, 0.304325, -0.826429,
		-0.880062, -0.198748, 0.431266,
		-0.033006, 0.931604, 0.361973,
		15.794269, 20.877573, 30.056463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142449, 20.343105, 29.793695>,  <15.817373, 20.225449, 29.803082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142449, 20.343105, 29.793695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317862, 20.702375, 29.806175>,  <15.423109, 20.917936, 29.813663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317862, 20.702375, 29.806175>,  <15.142449, 20.343105, 29.793695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317862, 20.702375, 29.806175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323958, 0.190364, -0.926722,
		-0.838297, 0.396289, 0.374451,
		0.438532, 0.898174, 0.031201,
		15.449421, 20.971828, 29.815535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610385, 20.905638, 29.654533>,  <15.142449, 20.343105, 29.793695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610385, 20.905638, 29.654533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971766, 21.038607, 29.546263>,  <15.188596, 21.118387, 29.481300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971766, 21.038607, 29.546263>,  <14.610385, 20.905638, 29.654533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971766, 21.038607, 29.546263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371997, 0.294138, -0.880398,
		-0.213046, 0.896091, 0.389400,
		0.903454, 0.332421, -0.270678,
		15.242803, 21.138332, 29.465059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362726, 21.509163, 29.308594>,  <14.610385, 20.905638, 29.654533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362726, 21.509163, 29.308594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735601, 21.406982, 29.206013>,  <14.959327, 21.345675, 29.144464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735601, 21.406982, 29.206013>,  <14.362726, 21.509163, 29.308594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735601, 21.406982, 29.206013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176760, 0.297022, -0.938368,
		0.315882, 0.920066, 0.231726,
		0.932188, -0.255453, -0.256454,
		15.015258, 21.330347, 29.129076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.645236, 22.101212, 28.937948>,  <14.362726, 21.509163, 29.308594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.645236, 22.101212, 28.937948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.881493, 21.789812, 28.853018>,  <15.023247, 21.602972, 28.802059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.881493, 21.789812, 28.853018>,  <14.645236, 22.101212, 28.937948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.881493, 21.789812, 28.853018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004752, 0.259768, -0.965659,
		0.806919, 0.571368, 0.149731,
		0.590642, -0.778498, -0.212327,
		15.058685, 21.556263, 28.789320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230343, 22.355717, 28.567980>,  <14.645236, 22.101212, 28.937948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230343, 22.355717, 28.567980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210665, 21.970097, 28.463528>,  <15.198858, 21.738726, 28.400856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210665, 21.970097, 28.463528>,  <15.230343, 22.355717, 28.567980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210665, 21.970097, 28.463528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185394, 0.265717, -0.946057,
		0.981432, 0.001871, -0.191801,
		-0.049194, -0.964049, -0.261131,
		15.195907, 21.680882, 28.385189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559155, 22.299175, 27.842024>,  <15.230343, 22.355717, 28.567980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559155, 22.299175, 27.842024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391733, 21.936159, 27.855793>,  <15.291281, 21.718349, 27.864056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391733, 21.936159, 27.855793>,  <15.559155, 22.299175, 27.842024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391733, 21.936159, 27.855793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167331, 0.039805, -0.985097,
		0.892644, -0.418076, -0.168520,
		-0.418553, -0.907540, 0.034425,
		15.266167, 21.663897, 27.866121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006041, 21.875544, 27.445675>,  <15.559155, 22.299175, 27.842024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006041, 21.875544, 27.445675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650882, 21.691544, 27.448196>,  <15.437786, 21.581144, 27.449709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650882, 21.691544, 27.448196>,  <16.006041, 21.875544, 27.445675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650882, 21.691544, 27.448196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052084, 0.086904, -0.994854,
		0.457085, -0.883656, -0.101121,
		-0.887897, -0.459999, 0.006301,
		15.384513, 21.553543, 27.450087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009085, 21.222498, 27.022476>,  <16.006041, 21.875544, 27.445675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009085, 21.222498, 27.022476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646333, 21.388075, 27.054018>,  <15.428681, 21.487421, 27.072943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646333, 21.388075, 27.054018>,  <16.009085, 21.222498, 27.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646333, 21.388075, 27.054018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070270, 0.035949, -0.996880,
		-0.415484, -0.909594, -0.003514,
		-0.906882, 0.413941, 0.078853,
		15.374268, 21.512257, 27.077675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817885, 20.943155, 26.487192>,  <16.009085, 21.222498, 27.022476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817885, 20.943155, 26.487192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528946, 21.209810, 26.560736>,  <15.355582, 21.369804, 26.604862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528946, 21.209810, 26.560736>,  <15.817885, 20.943155, 26.487192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528946, 21.209810, 26.560736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189771, 0.064571, -0.979703,
		-0.664981, -0.742578, 0.079866,
		-0.722349, 0.666640, 0.183859,
		15.312242, 21.409801, 26.615892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373723, 20.753498, 25.985842>,  <15.817885, 20.943155, 26.487192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373723, 20.753498, 25.985842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234627, 21.110868, 26.099592>,  <15.151169, 21.325291, 26.167843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234627, 21.110868, 26.099592>,  <15.373723, 20.753498, 25.985842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234627, 21.110868, 26.099592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140313, 0.250299, -0.957947,
		-0.927032, -0.373019, 0.038319,
		-0.347741, 0.893424, 0.284375,
		15.130304, 21.378895, 26.184904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.796236, 20.872538, 25.515574>,  <15.373723, 20.753498, 25.985842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.796236, 20.872538, 25.515574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908014, 21.237848, 25.634119>,  <14.975081, 21.457035, 25.705246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908014, 21.237848, 25.634119>,  <14.796236, 20.872538, 25.515574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908014, 21.237848, 25.634119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054065, 0.293206, -0.954519,
		-0.958638, 0.282760, 0.032559,
		0.279447, 0.913278, 0.296366,
		14.991848, 21.511831, 25.723028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384525, 21.365993, 25.114218>,  <14.796236, 20.872538, 25.515574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384525, 21.365993, 25.114218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694509, 21.571501, 25.261448>,  <14.880499, 21.694805, 25.349787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694509, 21.571501, 25.261448>,  <14.384525, 21.365993, 25.114218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.694509, 21.571501, 25.261448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076108, 0.502286, -0.861345,
		-0.627412, 0.695521, 0.350149,
		0.774959, 0.513770, 0.368075,
		14.926996, 21.725632, 25.371870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194653, 22.090576, 24.953173>,  <14.384525, 21.365993, 25.114218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194653, 22.090576, 24.953173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588124, 22.045321, 25.009136>,  <14.824207, 22.018167, 25.042713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588124, 22.045321, 25.009136>,  <14.194653, 22.090576, 24.953173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588124, 22.045321, 25.009136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179243, 0.548351, -0.816812,
		0.015696, 0.828559, 0.559682,
		0.983680, -0.113140, 0.139907,
		14.883228, 22.011379, 25.051107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537371, 22.757282, 24.778618>,  <14.194653, 22.090576, 24.953173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537371, 22.757282, 24.778618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829217, 22.485626, 24.746538>,  <15.004325, 22.322634, 24.727289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829217, 22.485626, 24.746538>,  <14.537371, 22.757282, 24.778618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829217, 22.485626, 24.746538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272699, 0.396487, -0.876604,
		0.627134, 0.617712, 0.474483,
		0.729615, -0.679139, -0.080201,
		15.048101, 22.281885, 24.722477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763635, 23.256962, 24.229488>,  <14.537371, 22.757282, 24.778618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763635, 23.256962, 24.229488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829560, 22.882971, 24.103853>,  <14.869116, 22.658575, 24.028473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829560, 22.882971, 24.103853>,  <14.763635, 23.256962, 24.229488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829560, 22.882971, 24.103853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814276, -0.308680, 0.491601,
		-0.556589, 0.174730, -0.812206,
		0.164814, -0.934980, -0.314086,
		14.879004, 22.602476, 24.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607658, 23.204784, 23.519876>,  <14.763635, 23.256962, 24.229488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607658, 23.204784, 23.519876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883863, 22.915596, 23.510860>,  <15.049586, 22.742083, 23.505451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883863, 22.915596, 23.510860>,  <14.607658, 23.204784, 23.519876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883863, 22.915596, 23.510860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112588, 0.138211, -0.983983,
		0.714504, 0.676914, 0.176834,
		0.690513, -0.722969, -0.022541,
		15.091017, 22.698706, 23.504099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082059, 23.379560, 23.024208>,  <14.607658, 23.204784, 23.519876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082059, 23.379560, 23.024208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.149088, 22.987833, 23.069551>,  <15.189305, 22.752796, 23.096758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.149088, 22.987833, 23.069551>,  <15.082059, 23.379560, 23.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.149088, 22.987833, 23.069551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096310, -0.098173, -0.990498,
		0.981144, 0.176898, 0.077867,
		0.167573, -0.979321, 0.113359,
		15.199360, 22.694036, 23.103559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653910, 23.198795, 22.686481>,  <15.082059, 23.379560, 23.024208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653910, 23.198795, 22.686481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467543, 22.845045, 22.697836>,  <15.355722, 22.632795, 22.704649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467543, 22.845045, 22.697836>,  <15.653910, 23.198795, 22.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467543, 22.845045, 22.697836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170364, -0.121141, -0.977906,
		0.868273, -0.450787, 0.207107,
		-0.465917, -0.884373, 0.028386,
		15.327767, 22.579733, 22.706352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980368, 22.799425, 22.224329>,  <15.653910, 23.198795, 22.686481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980368, 22.799425, 22.224329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635435, 22.602983, 22.273647>,  <15.428475, 22.485119, 22.303238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635435, 22.602983, 22.273647>,  <15.980368, 22.799425, 22.224329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635435, 22.602983, 22.273647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035303, -0.184600, -0.982179,
		0.505113, -0.851316, 0.141849,
		-0.862331, -0.491104, 0.123298,
		15.376736, 22.455652, 22.310637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074352, 22.162027, 21.923420>,  <15.980368, 22.799425, 22.224329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074352, 22.162027, 21.923420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677399, 22.210203, 21.933781>,  <15.439227, 22.239109, 21.939997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677399, 22.210203, 21.933781>,  <16.074352, 22.162027, 21.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677399, 22.210203, 21.933781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057806, -0.269563, -0.961246,
		-0.108788, -0.955422, 0.274471,
		-0.992383, 0.120438, 0.025903,
		15.379683, 22.246334, 21.941551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873516, 21.559853, 21.615931>,  <16.074352, 22.162027, 21.923420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873516, 21.559853, 21.615931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544609, 21.784889, 21.581606>,  <15.347265, 21.919912, 21.561010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544609, 21.784889, 21.581606>,  <15.873516, 21.559853, 21.615931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544609, 21.784889, 21.581606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206621, -0.435623, -0.876094,
		-0.530269, -0.702651, 0.474443,
		-0.822267, 0.562595, -0.085815,
		15.297929, 21.953667, 21.555862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238976, 21.113001, 21.552876>,  <15.873516, 21.559853, 21.615931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238976, 21.113001, 21.552876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139168, 21.465038, 21.391294>,  <15.079283, 21.676260, 21.294346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139168, 21.465038, 21.391294>,  <15.238976, 21.113001, 21.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139168, 21.465038, 21.391294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311277, -0.467904, -0.827147,
		-0.916976, -0.080650, 0.390704,
		-0.249522, 0.880091, -0.403953,
		15.064311, 21.729065, 21.270109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487356, 21.080744, 21.207260>,  <15.238976, 21.113001, 21.552876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487356, 21.080744, 21.207260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663768, 21.391897, 21.028200>,  <14.769615, 21.578588, 20.920763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663768, 21.391897, 21.028200>,  <14.487356, 21.080744, 21.207260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663768, 21.391897, 21.028200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309289, -0.336498, -0.889443,
		-0.842516, 0.530724, 0.092185,
		0.441029, 0.777882, -0.447652,
		14.796077, 21.625261, 20.893904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948375, 21.280005, 20.765770>,  <14.487356, 21.080744, 21.207260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948375, 21.280005, 20.765770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271646, 21.466389, 20.621700>,  <14.465609, 21.578220, 20.535257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271646, 21.466389, 20.621700>,  <13.948375, 21.280005, 20.765770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271646, 21.466389, 20.621700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310984, -0.181714, -0.932882,
		-0.500137, 0.865944, -0.001950,
		0.808178, 0.465963, -0.360176,
		14.514099, 21.606178, 20.513647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754107, 21.538399, 20.172819>,  <13.948375, 21.280005, 20.765770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754107, 21.538399, 20.172819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152574, 21.544014, 20.138287>,  <14.391654, 21.547382, 20.117567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152574, 21.544014, 20.138287>,  <13.754107, 21.538399, 20.172819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152574, 21.544014, 20.138287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072751, -0.414944, -0.906934,
		-0.048553, 0.909739, -0.412332,
		0.996168, 0.014037, -0.086331,
		14.451424, 21.548225, 20.112387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889348, 21.935902, 19.616592>,  <13.754107, 21.538399, 20.172819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889348, 21.935902, 19.616592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180413, 21.668226, 19.676846>,  <14.355052, 21.507620, 19.712997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180413, 21.668226, 19.676846>,  <13.889348, 21.935902, 19.616592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180413, 21.668226, 19.676846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217703, -0.433557, -0.874433,
		0.650470, 0.603500, -0.461168,
		0.727663, -0.669190, 0.150633,
		14.398712, 21.467468, 19.722036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229985, 21.900984, 19.016066>,  <13.889348, 21.935902, 19.616592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229985, 21.900984, 19.016066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319966, 21.552490, 19.190580>,  <14.373955, 21.343393, 19.295290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319966, 21.552490, 19.190580>,  <14.229985, 21.900984, 19.016066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319966, 21.552490, 19.190580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129183, -0.470480, -0.872903,
		0.965768, 0.140001, -0.218385,
		0.224953, -0.871234, 0.436289,
		14.387452, 21.291121, 19.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395553, 21.449265, 18.517319>,  <14.229985, 21.900984, 19.016066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395553, 21.449265, 18.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378212, 21.170816, 18.803965>,  <14.367807, 21.003748, 18.975952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378212, 21.170816, 18.803965>,  <14.395553, 21.449265, 18.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378212, 21.170816, 18.803965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499421, -0.606135, -0.619015,
		0.865274, -0.384727, -0.321381,
		-0.043352, -0.696122, 0.716613,
		14.365207, 20.961979, 19.018950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510654, 20.786865, 18.130716>,  <14.395553, 21.449265, 18.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510654, 20.786865, 18.130716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376781, 20.658312, 18.485050>,  <14.296456, 20.581181, 18.697651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376781, 20.658312, 18.485050>,  <14.510654, 20.786865, 18.130716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376781, 20.658312, 18.485050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136973, -0.913470, -0.383160,
		0.932322, -0.249573, 0.261705,
		-0.334686, -0.321382, 0.885833,
		14.276375, 20.561897, 18.750799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826830, 20.094116, 18.172867>,  <14.510654, 20.786865, 18.130716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826830, 20.094116, 18.172867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487123, 20.137451, 18.379559>,  <14.283299, 20.163452, 18.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487123, 20.137451, 18.379559>,  <14.826830, 20.094116, 18.172867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487123, 20.137451, 18.379559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353340, -0.843855, -0.403807,
		0.392298, -0.525521, 0.754938,
		-0.849266, 0.108337, 0.516730,
		14.232344, 20.169952, 18.534578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.616192, 19.334084, 18.392206>,  <14.826830, 20.094116, 18.172867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.616192, 19.334084, 18.392206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276772, 19.543346, 18.423887>,  <14.073121, 19.668903, 18.442896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276772, 19.543346, 18.423887>,  <14.616192, 19.334084, 18.392206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276772, 19.543346, 18.423887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525567, -0.816052, -0.240497,
		-0.061185, -0.245699, 0.967413,
		-0.848549, 0.523155, 0.079201,
		14.022207, 19.700293, 18.447647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906380, 18.710726, 18.338707>,  <14.616192, 19.334084, 18.392206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906380, 18.710726, 18.338707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.115498, 18.547831, 18.638264>,  <15.240969, 18.450092, 18.817999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.115498, 18.547831, 18.638264>,  <14.906380, 18.710726, 18.338707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115498, 18.547831, 18.638264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847889, 0.339245, -0.407427,
		-0.088138, 0.847979, 0.522650,
		0.522796, -0.407239, 0.748893,
		15.272336, 18.425659, 18.862932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511553, 19.192486, 18.476704>,  <14.906380, 18.710726, 18.338707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511553, 19.192486, 18.476704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605099, 18.830725, 18.619457>,  <15.661226, 18.613668, 18.705109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605099, 18.830725, 18.619457>,  <15.511553, 19.192486, 18.476704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605099, 18.830725, 18.619457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874199, 0.034944, -0.484309,
		0.425539, 0.425249, 0.798799,
		0.233865, -0.904402, 0.356882,
		15.675259, 18.559404, 18.726522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221107, 19.150867, 18.744032>,  <15.511553, 19.192486, 18.476704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221107, 19.150867, 18.744032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138226, 18.792675, 18.586460>,  <16.088495, 18.577761, 18.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138226, 18.792675, 18.586460>,  <16.221107, 19.150867, 18.744032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138226, 18.792675, 18.586460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739537, 0.120227, -0.662292,
		0.640431, -0.428558, 0.637328,
		-0.207206, -0.895480, -0.393931,
		16.076063, 18.524031, 18.468281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875122, 18.643263, 18.719891>,  <16.221107, 19.150867, 18.744032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875122, 18.643263, 18.719891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602816, 18.568579, 18.436569>,  <16.439432, 18.523769, 18.266577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602816, 18.568579, 18.436569>,  <16.875122, 18.643263, 18.719891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602816, 18.568579, 18.436569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725593, -0.039407, -0.686995,
		0.100356, -0.981625, 0.162302,
		-0.680767, -0.186709, -0.708305,
		16.398586, 18.512566, 18.224077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961554, 17.949162, 18.432640>,  <16.875122, 18.643263, 18.719891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961554, 17.949162, 18.432640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787851, 18.192553, 18.166956>,  <16.683630, 18.338587, 18.007545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787851, 18.192553, 18.166956>,  <16.961554, 17.949162, 18.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787851, 18.192553, 18.166956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798157, -0.081900, -0.596857,
		-0.417572, -0.789334, -0.450095,
		-0.434257, 0.608477, -0.664211,
		16.657574, 18.375095, 17.967693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705276, 17.587034, 17.777555>,  <16.961554, 17.949162, 18.432640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705276, 17.587034, 17.777555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856394, 17.951952, 17.714321>,  <16.947065, 18.170902, 17.676380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856394, 17.951952, 17.714321>,  <16.705276, 17.587034, 17.777555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856394, 17.951952, 17.714321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755237, -0.402407, -0.517383,
		-0.535620, 0.076074, -0.841026,
		0.377794, 0.912295, -0.158083,
		16.969732, 18.225641, 17.666897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588766, 17.409428, 17.138586>,  <16.705276, 17.587034, 17.777555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588766, 17.409428, 17.138586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940023, 17.347656, 16.957470>,  <17.150778, 17.310593, 16.848801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940023, 17.347656, 16.957470>,  <16.588766, 17.409428, 17.138586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940023, 17.347656, 16.957470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405562, 0.261710, -0.875801,
		0.253748, 0.952712, 0.167188,
		0.878141, -0.154428, -0.452792,
		17.203466, 17.301329, 16.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755562, 18.046757, 16.754671>,  <16.588766, 17.409428, 17.138586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.755562, 18.046757, 16.754671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.926538, 17.717278, 16.605637>,  <17.029123, 17.519590, 16.516216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.926538, 17.717278, 16.605637>,  <16.755562, 18.046757, 16.754671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926538, 17.717278, 16.605637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409423, 0.191071, -0.892113,
		0.806020, 0.533869, -0.255569,
		0.427440, -0.823696, -0.372585,
		17.054770, 17.470169, 16.493860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958509, 18.188025, 16.025055>,  <16.755562, 18.046757, 16.754671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958509, 18.188025, 16.025055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934734, 17.788889, 16.036282>,  <16.920469, 17.549408, 16.043016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934734, 17.788889, 16.036282>,  <16.958509, 18.188025, 16.025055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934734, 17.788889, 16.036282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344175, -0.005906, -0.938887,
		0.937022, -0.065465, -0.343080,
		-0.059438, -0.997837, 0.028065,
		16.916903, 17.489538, 16.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974199, 18.074097, 15.314548>,  <16.958509, 18.188025, 16.025055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974199, 18.074097, 15.314548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892653, 17.712477, 15.464820>,  <16.843725, 17.495504, 15.554983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892653, 17.712477, 15.464820>,  <16.974199, 18.074097, 15.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892653, 17.712477, 15.464820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349949, -0.291093, -0.890393,
		0.914316, -0.312989, -0.257027,
		-0.203865, -0.904048, 0.375682,
		16.831493, 17.441263, 15.577524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385786, 17.596409, 15.024746>,  <16.974199, 18.074097, 15.314548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385786, 17.596409, 15.024746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054935, 17.403454, 15.140098>,  <16.856424, 17.287682, 15.209309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054935, 17.403454, 15.140098>,  <17.385786, 17.596409, 15.024746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054935, 17.403454, 15.140098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196334, -0.232780, -0.952505,
		0.526606, -0.844462, 0.097830,
		-0.827127, -0.482388, 0.288380,
		16.806797, 17.258738, 15.226611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447420, 16.986216, 14.706721>,  <17.385786, 17.596409, 15.024746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447420, 16.986216, 14.706721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061451, 17.005756, 14.809902>,  <16.829870, 17.017481, 14.871811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061451, 17.005756, 14.809902>,  <17.447420, 16.986216, 14.706721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061451, 17.005756, 14.809902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262313, -0.219931, -0.939586,
		0.010831, -0.974292, 0.225030,
		-0.964922, 0.048851, 0.257952,
		16.771975, 17.020412, 14.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095163, 16.383308, 14.482922>,  <17.447420, 16.986216, 14.706721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095163, 16.383308, 14.482922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824675, 16.676968, 14.507415>,  <16.662382, 16.853163, 14.522111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824675, 16.676968, 14.507415>,  <17.095163, 16.383308, 14.482922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824675, 16.676968, 14.507415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179421, -0.083506, -0.980222,
		-0.714516, -0.673834, 0.188190,
		-0.676221, 0.734149, 0.061234,
		16.621809, 16.897213, 14.525784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573643, 16.244968, 13.925383>,  <17.095163, 16.383308, 14.482922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573643, 16.244968, 13.925383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528477, 16.627253, 14.034099>,  <16.501377, 16.856623, 14.099328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528477, 16.627253, 14.034099>,  <16.573643, 16.244968, 13.925383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528477, 16.627253, 14.034099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215339, 0.243500, -0.945694,
		-0.969989, -0.165311, 0.178306,
		-0.112916, 0.955709, 0.271791,
		16.494602, 16.913965, 14.115636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892669, 16.489790, 13.576858>,  <16.573643, 16.244968, 13.925383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892669, 16.489790, 13.576858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159866, 16.774044, 13.665203>,  <16.320185, 16.944597, 13.718210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159866, 16.774044, 13.665203>,  <15.892669, 16.489790, 13.576858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159866, 16.774044, 13.665203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144851, 0.415282, -0.898086,
		-0.729933, 0.567924, 0.380342,
		0.667994, 0.710636, 0.220864,
		16.360264, 16.987234, 13.731462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603630, 17.044418, 13.229508>,  <15.892669, 16.489790, 13.576858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603630, 17.044418, 13.229508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965593, 17.190739, 13.316532>,  <16.182772, 17.278530, 13.368747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965593, 17.190739, 13.316532>,  <15.603630, 17.044418, 13.229508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965593, 17.190739, 13.316532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023790, 0.466902, -0.883989,
		-0.424941, 0.805105, 0.413801,
		0.904908, 0.365799, 0.217560,
		16.237066, 17.300478, 13.381800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595325, 17.754402, 13.026201>,  <15.603630, 17.044418, 13.229508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595325, 17.754402, 13.026201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978546, 17.640602, 13.040034>,  <16.208479, 17.572323, 13.048334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978546, 17.640602, 13.040034>,  <15.595325, 17.754402, 13.026201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978546, 17.640602, 13.040034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137478, 0.350342, -0.926477,
		0.251466, 0.892368, 0.374758,
		0.958053, -0.284499, 0.034582,
		16.265963, 17.555252, 13.050409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042631, 18.390640, 12.878688>,  <15.595325, 17.754402, 13.026201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042631, 18.390640, 12.878688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242476, 18.057501, 12.783399>,  <16.362383, 17.857616, 12.726225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242476, 18.057501, 12.783399>,  <16.042631, 18.390640, 12.878688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242476, 18.057501, 12.783399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065328, 0.310446, -0.948344,
		0.863783, 0.458240, 0.209510,
		0.499611, -0.832850, -0.238222,
		16.392359, 17.807646, 12.711932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389687, 18.637941, 12.313241>,  <16.042631, 18.390640, 12.878688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389687, 18.637941, 12.313241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453918, 18.243679, 12.292484>,  <16.492458, 18.007122, 12.280030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453918, 18.243679, 12.292484>,  <16.389687, 18.637941, 12.313241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453918, 18.243679, 12.292484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382430, 0.110599, -0.917341,
		0.909924, 0.127462, 0.394705,
		0.160580, -0.985658, -0.051891,
		16.502092, 17.947981, 12.276917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057793, 18.684578, 12.100749>,  <16.389687, 18.637941, 12.313241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057793, 18.684578, 12.100749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907354, 18.323210, 12.018397>,  <16.817091, 18.106388, 11.968987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907354, 18.323210, 12.018397>,  <17.057793, 18.684578, 12.100749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907354, 18.323210, 12.018397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389243, 0.047594, -0.919905,
		0.840859, -0.426107, 0.333750,
		-0.376093, -0.903420, -0.205879,
		16.794527, 18.052183, 11.956634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605431, 18.328733, 11.758281>,  <17.057793, 18.684578, 12.100749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605431, 18.328733, 11.758281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262045, 18.147387, 11.662369>,  <17.056013, 18.038578, 11.604821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262045, 18.147387, 11.662369>,  <17.605431, 18.328733, 11.758281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262045, 18.147387, 11.662369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291799, -0.047280, -0.955310,
		0.421769, -0.890069, 0.172881,
		-0.858466, -0.453367, -0.239780,
		17.004505, 18.011377, 11.590435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.789318, 17.878370, 11.218823>,  <17.605431, 18.328733, 11.758281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.789318, 17.878370, 11.218823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397154, 17.948654, 11.183228>,  <17.161856, 17.990826, 11.161870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397154, 17.948654, 11.183228>,  <17.789318, 17.878370, 11.218823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397154, 17.948654, 11.183228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110233, 0.115079, -0.987221,
		-0.163226, -0.977692, -0.132194,
		-0.980411, 0.175713, -0.088990,
		17.103031, 18.001368, 11.156530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505297, 17.362152, 10.865492>,  <17.789318, 17.878370, 11.218823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.505297, 17.362152, 10.865492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220850, 17.632586, 10.788321>,  <17.050182, 17.794846, 10.742018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220850, 17.632586, 10.788321>,  <17.505297, 17.362152, 10.865492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220850, 17.632586, 10.788321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169479, -0.101477, -0.980295,
		-0.682341, -0.729802, -0.042420,
		-0.711117, 0.676085, -0.192928,
		17.007515, 17.835411, 10.730442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998850, 17.044735, 10.299903>,  <17.505297, 17.362152, 10.865492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998850, 17.044735, 10.299903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028849, 17.443249, 10.316852>,  <17.046848, 17.682356, 10.327021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028849, 17.443249, 10.316852>,  <16.998850, 17.044735, 10.299903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028849, 17.443249, 10.316852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282705, 0.019505, -0.959008,
		-0.956270, 0.083900, -0.280192,
		0.074996, 0.996283, 0.042371,
		17.051348, 17.742134, 10.329563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846182, 17.235189, 9.609100>,  <16.998850, 17.044735, 10.299903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846182, 17.235189, 9.609100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025570, 17.552895, 9.773061>,  <17.133204, 17.743517, 9.871437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025570, 17.552895, 9.773061>,  <16.846182, 17.235189, 9.609100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025570, 17.552895, 9.773061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617039, 0.056660, -0.784890,
		-0.646635, 0.604926, -0.464680,
		0.448472, 0.794263, 0.409902,
		17.160112, 17.791174, 9.896031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723438, 17.700230, 9.138410>,  <16.846182, 17.235189, 9.609100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723438, 17.700230, 9.138410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030746, 17.851513, 9.344991>,  <17.215132, 17.942282, 9.468940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030746, 17.851513, 9.344991>,  <16.723438, 17.700230, 9.138410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030746, 17.851513, 9.344991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416401, 0.317500, -0.851941,
		-0.486183, 0.869571, 0.086440,
		0.768268, 0.378206, 0.516453,
		17.261227, 17.964975, 9.499927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880848, 18.435207, 8.854882>,  <16.723438, 17.700230, 9.138410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880848, 18.435207, 8.854882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201075, 18.284353, 9.041158>,  <17.393209, 18.193842, 9.152924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201075, 18.284353, 9.041158>,  <16.880848, 18.435207, 8.854882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201075, 18.284353, 9.041158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558787, 0.189104, -0.807463,
		0.216458, 0.906648, 0.362127,
		0.800565, -0.377133, 0.465690,
		17.441244, 18.171213, 9.180864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425764, 18.928070, 9.010476>,  <16.880848, 18.435207, 8.854882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425764, 18.928070, 9.010476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605545, 18.572449, 8.975657>,  <17.713413, 18.359076, 8.954764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605545, 18.572449, 8.975657>,  <17.425764, 18.928070, 9.010476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605545, 18.572449, 8.975657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596823, 0.371361, -0.711261,
		0.664675, 0.267726, 0.697517,
		0.449454, -0.889052, -0.087049,
		17.740381, 18.305733, 8.949542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138533, 18.896856, 9.185955>,  <17.425764, 18.928070, 9.010476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138533, 18.896856, 9.185955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.062540, 18.608631, 8.919212>,  <18.016945, 18.435696, 8.759167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.062540, 18.608631, 8.919212>,  <18.138533, 18.896856, 9.185955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062540, 18.608631, 8.919212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605458, 0.448704, -0.657332,
		0.772869, -0.528636, 0.351023,
		-0.189984, -0.720562, -0.666856,
		18.005545, 18.392462, 8.719155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502180, 19.563833, 9.512882>,  <18.138533, 18.896856, 9.185955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502180, 19.563833, 9.512882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.864344, 19.670244, 9.380542>,  <19.081642, 19.734091, 9.301138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.864344, 19.670244, 9.380542>,  <18.502180, 19.563833, 9.512882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.864344, 19.670244, 9.380542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405101, -0.774485, 0.485866,
		-0.126986, -0.573936, -0.808994,
		0.905411, 0.266026, -0.330850,
		19.135967, 19.750051, 9.281286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058315, 19.552715, 10.006734>,  <18.502180, 19.563833, 9.512882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058315, 19.552715, 10.006734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350691, 19.280884, 9.981751>,  <19.526117, 19.117785, 9.966762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350691, 19.280884, 9.981751>,  <19.058315, 19.552715, 10.006734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350691, 19.280884, 9.981751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482916, 0.450398, 0.750955,
		-0.482203, -0.579064, 0.657393,
		0.730940, -0.679578, -0.062456,
		19.569973, 19.077011, 9.963015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270823, 19.467758, 10.651752>,  <19.058315, 19.552715, 10.006734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270823, 19.467758, 10.651752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590603, 19.398159, 10.421760>,  <19.782471, 19.356400, 10.283765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590603, 19.398159, 10.421760>,  <19.270823, 19.467758, 10.651752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.590603, 19.398159, 10.421760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596270, 0.346249, 0.724275,
		0.073064, -0.921866, 0.380559,
		0.799452, -0.173998, -0.574979,
		19.830439, 19.345961, 10.249266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672541, 18.899885, 10.912580>,  <19.270823, 19.467758, 10.651752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672541, 18.899885, 10.912580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862051, 19.194855, 10.720022>,  <19.975758, 19.371838, 10.604487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862051, 19.194855, 10.720022>,  <19.672541, 18.899885, 10.912580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862051, 19.194855, 10.720022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544953, 0.183909, 0.818048,
		0.691783, -0.649908, -0.314731,
		0.473774, 0.737426, -0.481395,
		20.004183, 19.416082, 10.575603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479103, 18.828695, 10.736666>,  <19.672541, 18.899885, 10.912580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479103, 18.828695, 10.736666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355976, 19.203905, 10.800361>,  <20.282101, 19.429031, 10.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355976, 19.203905, 10.800361>,  <20.479103, 18.828695, 10.736666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355976, 19.203905, 10.800361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655327, 0.087689, 0.750238,
		0.689779, 0.335289, -0.641706,
		-0.307817, 0.938026, 0.159238,
		20.263632, 19.485313, 10.848132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970686, 19.127069, 11.195290>,  <20.479103, 18.828695, 10.736666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970686, 19.127069, 11.195290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697670, 19.419104, 11.181958>,  <20.533859, 19.594324, 11.173960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697670, 19.419104, 11.181958>,  <20.970686, 19.127069, 11.195290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.697670, 19.419104, 11.181958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406544, 0.417174, 0.812827,
		0.607338, 0.541239, -0.581551,
		-0.682541, 0.730087, -0.033328,
		20.492908, 19.638130, 11.171960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279249, 19.694519, 11.508060>,  <20.970686, 19.127069, 11.195290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279249, 19.694519, 11.508060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.900898, 19.824327, 11.508039>,  <20.673887, 19.902212, 11.508025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.900898, 19.824327, 11.508039>,  <21.279249, 19.694519, 11.508060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900898, 19.824327, 11.508039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182318, 0.531542, 0.827178,
		0.268464, 0.782400, -0.561940,
		-0.945879, 0.324519, -0.000055,
		20.617134, 19.921684, 11.508022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.303549, 20.433729, 11.713586>,  <21.279249, 19.694519, 11.508060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.303549, 20.433729, 11.713586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939466, 20.301159, 11.812929>,  <20.721018, 20.221617, 11.872535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939466, 20.301159, 11.812929>,  <21.303549, 20.433729, 11.713586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939466, 20.301159, 11.812929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045879, 0.515291, 0.855786,
		-0.411607, 0.790336, -0.453816,
		-0.910206, -0.331428, 0.248357,
		20.666405, 20.201731, 11.887436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933004, 20.981386, 11.963301>,  <21.303549, 20.433729, 11.713586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933004, 20.981386, 11.963301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715981, 20.683193, 12.118161>,  <20.585766, 20.504278, 12.211078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715981, 20.683193, 12.118161>,  <20.933004, 20.981386, 11.963301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715981, 20.683193, 12.118161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171641, 0.549545, 0.817643,
		-0.822294, 0.377169, -0.426116,
		-0.542560, -0.745482, 0.387150,
		20.553213, 20.459549, 12.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120060, 21.209671, 12.248991>,  <20.933004, 20.981386, 11.963301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120060, 21.209671, 12.248991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264856, 20.889343, 12.439841>,  <20.351734, 20.697145, 12.554351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264856, 20.889343, 12.439841>,  <20.120060, 21.209671, 12.248991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264856, 20.889343, 12.439841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223454, 0.422368, 0.878449,
		-0.905003, -0.424607, -0.026053,
		0.361992, -0.800821, 0.477125,
		20.373453, 20.649097, 12.582978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746281, 21.081755, 12.845192>,  <20.120060, 21.209671, 12.248991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746281, 21.081755, 12.845192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119068, 20.950148, 12.906095>,  <20.342741, 20.871183, 12.942636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119068, 20.950148, 12.906095>,  <19.746281, 21.081755, 12.845192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119068, 20.950148, 12.906095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073213, 0.582120, 0.809800,
		-0.355071, -0.743560, 0.566606,
		0.931968, -0.329020, 0.152255,
		20.398659, 20.851442, 12.951771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912125, 20.910883, 13.550483>,  <19.746281, 21.081755, 12.845192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912125, 20.910883, 13.550483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266775, 20.996347, 13.386412>,  <20.479565, 21.047626, 13.287969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266775, 20.996347, 13.386412>,  <19.912125, 20.910883, 13.550483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266775, 20.996347, 13.386412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202005, 0.618916, 0.759037,
		0.416041, -0.755839, 0.505587,
		0.886625, 0.213660, -0.410177,
		20.532763, 21.060446, 13.263358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431217, 20.710529, 14.071954>,  <19.912125, 20.910883, 13.550483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431217, 20.710529, 14.071954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520378, 21.024170, 13.840265>,  <20.573874, 21.212355, 13.701252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520378, 21.024170, 13.840265>,  <20.431217, 20.710529, 14.071954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520378, 21.024170, 13.840265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126240, 0.565949, 0.814718,
		0.966633, -0.254722, 0.027165,
		0.222901, 0.784103, -0.579221,
		20.587248, 21.259401, 13.666499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561085, 20.096441, 14.381814>,  <20.431217, 20.710529, 14.071954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561085, 20.096441, 14.381814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.538834, 20.413979, 14.624043>,  <20.525482, 20.604502, 14.769380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.538834, 20.413979, 14.624043>,  <20.561085, 20.096441, 14.381814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538834, 20.413979, 14.624043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454929, -0.560048, 0.692377,
		0.888789, -0.236975, 0.392298,
		-0.055630, 0.793845, 0.605571,
		20.522144, 20.652132, 14.805714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819824, 19.969276, 15.045361>,  <20.561085, 20.096441, 14.381814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819824, 19.969276, 15.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.541937, 20.253176, 15.092052>,  <20.375204, 20.423515, 15.120066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.541937, 20.253176, 15.092052>,  <20.819824, 19.969276, 15.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.541937, 20.253176, 15.092052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449335, -0.554955, 0.700087,
		0.561665, 0.433912, 0.704452,
		-0.694716, 0.709749, 0.116727,
		20.333523, 20.466101, 15.127069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947063, 19.918749, 15.837760>,  <20.819824, 19.969276, 15.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947063, 19.918749, 15.837760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323717, 20.023375, 15.922528>,  <21.549709, 20.086149, 15.973389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323717, 20.023375, 15.922528>,  <20.947063, 19.918749, 15.837760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323717, 20.023375, 15.922528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298209, 0.940203, 0.164592,
		-0.156197, -0.218181, 0.963327,
		0.941634, 0.261564, 0.211920,
		21.606207, 20.101843, 15.986104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177433, 19.223288, 15.795048>,  <20.947063, 19.918749, 15.837760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177433, 19.223288, 15.795048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531372, 19.172546, 15.615738>,  <21.743736, 19.142101, 15.508152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531372, 19.172546, 15.615738>,  <21.177433, 19.223288, 15.795048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531372, 19.172546, 15.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069242, -0.915720, 0.395806,
		-0.460702, -0.381268, -0.801491,
		0.884850, -0.126852, -0.448274,
		21.796827, 19.134491, 15.481256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190737, 18.559824, 15.637438>,  <21.177433, 19.223288, 15.795048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190737, 18.559824, 15.637438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.573502, 18.675974, 15.636813>,  <21.803160, 18.745663, 15.636438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.573502, 18.675974, 15.636813>,  <21.190737, 18.559824, 15.637438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.573502, 18.675974, 15.636813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259682, -0.853341, 0.452079,
		0.129939, -0.433005, -0.891976,
		0.956912, 0.290372, -0.001562,
		21.860575, 18.763086, 15.636345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564425, 17.968950, 15.465227>,  <21.190737, 18.559824, 15.637438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564425, 17.968950, 15.465227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.843319, 18.202566, 15.631486>,  <22.010654, 18.342735, 15.731241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.843319, 18.202566, 15.631486>,  <21.564425, 17.968950, 15.465227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.843319, 18.202566, 15.631486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398820, -0.797852, 0.452077,
		0.595656, -0.149436, -0.789217,
		0.697235, 0.584038, 0.415648,
		22.052490, 18.377777, 15.756180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092077, 17.578867, 15.459201>,  <21.564425, 17.968950, 15.465227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092077, 17.578867, 15.459201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.159405, 17.854027, 15.741609>,  <22.199800, 18.019123, 15.911054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.159405, 17.854027, 15.741609>,  <22.092077, 17.578867, 15.459201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159405, 17.854027, 15.741609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223147, -0.724236, 0.652447,
		0.960143, 0.047728, -0.275405,
		0.168318, 0.687898, 0.706020,
		22.209900, 18.060396, 15.953415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769754, 17.411922, 15.747881>,  <22.092077, 17.578867, 15.459201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769754, 17.411922, 15.747881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.569063, 17.630337, 16.016243>,  <22.448648, 17.761385, 16.177261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.569063, 17.630337, 16.016243>,  <22.769754, 17.411922, 15.747881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.569063, 17.630337, 16.016243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330154, -0.596000, 0.731972,
		0.799543, 0.588752, 0.118754,
		-0.501727, 0.546035, 0.670906,
		22.418545, 17.794147, 16.217514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145519, 17.270061, 16.258390>,  <22.769754, 17.411922, 15.747881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145519, 17.270061, 16.258390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850060, 17.447487, 16.461426>,  <22.672783, 17.553942, 16.583248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850060, 17.447487, 16.461426>,  <23.145519, 17.270061, 16.258390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850060, 17.447487, 16.461426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217513, -0.555887, 0.802295,
		0.638033, 0.703022, 0.314124,
		-0.738649, 0.443565, 0.507591,
		22.628466, 17.580557, 16.613703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.338339, 17.240698, 16.993654>,  <23.145519, 17.270061, 16.258390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.338339, 17.240698, 16.993654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952305, 17.343439, 16.973127>,  <22.720684, 17.405085, 16.960812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952305, 17.343439, 16.973127>,  <23.338339, 17.240698, 16.993654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952305, 17.343439, 16.973127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163181, -0.436347, 0.884858,
		0.204888, 0.862339, 0.463026,
		-0.965087, 0.256854, -0.051315,
		22.662779, 17.420496, 16.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525274, 16.643284, 17.412565>,  <23.338339, 17.240698, 16.993654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525274, 16.643284, 17.412565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778419, 16.789642, 17.139624>,  <23.930305, 16.877457, 16.975859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778419, 16.789642, 17.139624>,  <23.525274, 16.643284, 17.412565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.778419, 16.789642, 17.139624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715126, 0.061582, 0.696278,
		0.296786, -0.928616, -0.222688,
		0.632861, 0.365896, -0.682354,
		23.968277, 16.899410, 16.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030750, 16.304062, 17.483673>,  <23.525274, 16.643284, 17.412565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030750, 16.304062, 17.483673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176304, 16.638483, 17.319427>,  <24.263636, 16.839136, 17.220881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176304, 16.638483, 17.319427>,  <24.030750, 16.304062, 17.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176304, 16.638483, 17.319427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706975, 0.039114, 0.706157,
		0.606446, -0.547251, -0.576836,
		0.363883, 0.836054, -0.410613,
		24.285469, 16.889299, 17.196243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890932, 16.415728, 17.309933>,  <24.030750, 16.304062, 17.483673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890932, 16.415728, 17.309933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685528, 16.736881, 17.431053>,  <24.562284, 16.929573, 17.503725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685528, 16.736881, 17.431053>,  <24.890932, 16.415728, 17.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685528, 16.736881, 17.431053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606321, 0.089802, 0.790133,
		0.607192, 0.589335, -0.532918,
		-0.513510, 0.802882, 0.302799,
		24.531475, 16.977745, 17.521893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146940, 15.754772, 17.282230>,  <24.890932, 16.415728, 17.309933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146940, 15.754772, 17.282230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818686, 15.528523, 17.249664>,  <24.621733, 15.392775, 17.230125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818686, 15.528523, 17.249664>,  <25.146940, 15.754772, 17.282230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818686, 15.528523, 17.249664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441419, -0.536958, -0.718905,
		0.362913, -0.625897, 0.690324,
		-0.820636, -0.565622, -0.081414,
		24.572495, 15.358837, 17.225241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428097, 15.111948, 17.136757>,  <25.146940, 15.754772, 17.282230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428097, 15.111948, 17.136757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043144, 15.115708, 17.028141>,  <24.812172, 15.117965, 16.962973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043144, 15.115708, 17.028141>,  <25.428097, 15.111948, 17.136757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043144, 15.115708, 17.028141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243723, -0.411846, -0.878056,
		-0.120085, -0.911205, 0.394063,
		-0.962381, 0.009399, -0.271538,
		24.754429, 15.118528, 16.946680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581802, 15.120880, 16.339634>,  <25.428097, 15.111948, 17.136757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581802, 15.120880, 16.339634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817276, 15.430963, 16.247976>,  <25.958559, 15.617012, 16.192982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817276, 15.430963, 16.247976>,  <25.581802, 15.120880, 16.339634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817276, 15.430963, 16.247976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445694, 0.547747, 0.708047,
		0.674396, -0.314688, 0.667954,
		0.588683, 0.775207, -0.229144,
		25.993881, 15.663525, 16.179234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140684, 15.139348, 15.811584>,  <25.581802, 15.120880, 16.339634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140684, 15.139348, 15.811584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182983, 14.779301, 15.642537>,  <26.208363, 14.563272, 15.541109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182983, 14.779301, 15.642537>,  <26.140684, 15.139348, 15.811584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182983, 14.779301, 15.642537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060957, 0.418334, -0.906245,
		0.992523, 0.121593, -0.010631,
		0.105746, -0.900117, -0.422619,
		26.214706, 14.509266, 15.515752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527954, 15.173284, 15.225077>,  <26.140684, 15.139348, 15.811584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527954, 15.173284, 15.225077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312231, 14.837688, 15.196110>,  <26.182796, 14.636332, 15.178730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312231, 14.837688, 15.196110>,  <26.527954, 15.173284, 15.225077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312231, 14.837688, 15.196110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200416, 0.211401, -0.956631,
		0.817912, -0.501405, -0.282157,
		-0.539308, -0.838989, -0.072418,
		26.150438, 14.585992, 15.174384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825911, 14.802693, 14.680767>,  <26.527954, 15.173284, 15.225077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825911, 14.802693, 14.680767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436260, 14.745090, 14.750440>,  <26.202471, 14.710527, 14.792243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436260, 14.745090, 14.750440>,  <26.825911, 14.802693, 14.680767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436260, 14.745090, 14.750440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215852, 0.364420, -0.905873,
		0.066979, -0.920032, -0.386075,
		-0.974126, -0.144010, 0.174183,
		26.144022, 14.701886, 14.802694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.361787, 16.856333, 28.281237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.441615, 16.489275, 28.418701>,  <14.489512, 16.269041, 28.501181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.441615, 16.489275, 28.418701>,  <14.361787, 16.856333, 28.281237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.441615, 16.489275, 28.418701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067720, -0.336962, -0.939080,
		0.977540, 0.210686, -0.005105,
		0.199571, -0.917643, 0.343661,
		14.501487, 16.213982, 28.521799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931267, 16.695108, 27.902372>,  <14.361787, 16.856333, 28.281237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931267, 16.695108, 27.902372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.759911, 16.357267, 28.030827>,  <14.657097, 16.154562, 28.107899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.759911, 16.357267, 28.030827>,  <14.931267, 16.695108, 27.902372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.759911, 16.357267, 28.030827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070625, -0.323013, -0.943756,
		0.900830, -0.426975, 0.078725,
		-0.428389, -0.844604, 0.321134,
		14.631393, 16.103886, 28.127167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215736, 16.172516, 27.474867>,  <14.931267, 16.695108, 27.902372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215736, 16.172516, 27.474867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.874353, 16.000053, 27.591976>,  <14.669524, 15.896576, 27.662243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.874353, 16.000053, 27.591976>,  <15.215736, 16.172516, 27.474867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874353, 16.000053, 27.591976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131056, -0.366167, -0.921274,
		0.504417, -0.824637, 0.256003,
		-0.853457, -0.431155, 0.292774,
		14.618317, 15.870707, 27.679808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287072, 15.575948, 27.203720>,  <15.215736, 16.172516, 27.474867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287072, 15.575948, 27.203720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.893003, 15.610409, 27.263069>,  <14.656562, 15.631085, 27.298679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.893003, 15.610409, 27.263069>,  <15.287072, 15.575948, 27.203720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.893003, 15.610409, 27.263069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171503, -0.469908, -0.865894,
		-0.004878, -0.878501, 0.477715,
		-0.985171, 0.086153, 0.148374,
		14.597452, 15.636255, 27.307581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988604, 14.956915, 26.896475>,  <15.287072, 15.575948, 27.203720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988604, 14.956915, 26.896475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659088, 15.183216, 26.910866>,  <14.461379, 15.318996, 26.919500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659088, 15.183216, 26.910866>,  <14.988604, 14.956915, 26.896475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659088, 15.183216, 26.910866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262547, -0.324508, -0.908715,
		-0.502435, -0.758035, 0.415863,
		-0.823789, 0.565754, 0.035976,
		14.411951, 15.352942, 26.921659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501952, 14.494221, 26.469322>,  <14.988604, 14.956915, 26.896475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501952, 14.494221, 26.469322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.373001, 14.872348, 26.489105>,  <14.295630, 15.099224, 26.500975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.373001, 14.872348, 26.489105>,  <14.501952, 14.494221, 26.469322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373001, 14.872348, 26.489105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280131, -0.045366, -0.958889,
		-0.904212, -0.322979, 0.279438,
		-0.322378, 0.945318, 0.049456,
		14.276287, 15.155943, 26.503942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779608, 14.483570, 26.297197>,  <14.501952, 14.494221, 26.469322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779608, 14.483570, 26.297197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.898650, 14.858799, 26.226259>,  <13.970076, 15.083936, 26.183697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.898650, 14.858799, 26.226259>,  <13.779608, 14.483570, 26.297197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898650, 14.858799, 26.226259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302122, -0.083674, -0.949590,
		-0.905623, 0.336185, 0.258510,
		0.297607, 0.938072, -0.177346,
		13.987932, 15.140221, 26.173056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149385, 14.844913, 26.096020>,  <13.779608, 14.483570, 26.297197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149385, 14.844913, 26.096020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.448197, 15.075848, 25.964184>,  <13.627484, 15.214409, 25.885082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.448197, 15.075848, 25.964184>,  <13.149385, 14.844913, 26.096020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448197, 15.075848, 25.964184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418343, 0.022946, -0.907999,
		-0.516659, 0.816183, 0.258666,
		0.747029, 0.577337, -0.329589,
		13.672306, 15.249049, 25.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852897, 15.350911, 25.663305>,  <13.149385, 14.844913, 26.096020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852897, 15.350911, 25.663305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.234525, 15.374151, 25.545748>,  <13.463502, 15.388095, 25.475212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.234525, 15.374151, 25.545748>,  <12.852897, 15.350911, 25.663305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.234525, 15.374151, 25.545748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299345, 0.224057, -0.927465,
		0.011963, 0.972843, 0.231158,
		0.954070, 0.058100, -0.293896,
		13.520745, 15.391582, 25.457579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.885500, 16.013720, 25.271458>,  <12.852897, 15.350911, 25.663305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.885500, 16.013720, 25.271458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.199297, 15.786832, 25.171190>,  <13.387575, 15.650700, 25.111031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.199297, 15.786832, 25.171190>,  <12.885500, 16.013720, 25.271458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199297, 15.786832, 25.171190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164087, 0.199943, -0.965970,
		0.598036, 0.798927, 0.063780,
		0.784492, -0.567220, -0.250667,
		13.434645, 15.616666, 25.095989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299541, 16.380209, 24.805082>,  <12.885500, 16.013720, 25.271458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299541, 16.380209, 24.805082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.435314, 16.010763, 24.733839>,  <13.516777, 15.789096, 24.691093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.435314, 16.010763, 24.733839>,  <13.299541, 16.380209, 24.805082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.435314, 16.010763, 24.733839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017626, 0.183070, -0.982942,
		0.940466, 0.336780, 0.045860,
		0.339431, -0.923615, -0.178107,
		13.537144, 15.733679, 24.680407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897499, 16.462772, 24.467169>,  <13.299541, 16.380209, 24.805082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897499, 16.462772, 24.467169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.725189, 16.111851, 24.382530>,  <13.621803, 15.901298, 24.331747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.725189, 16.111851, 24.382530>,  <13.897499, 16.462772, 24.467169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.725189, 16.111851, 24.382530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023968, 0.245506, -0.969099,
		0.902142, -0.412390, -0.126785,
		-0.430773, -0.877303, -0.211597,
		13.595957, 15.848660, 24.319052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164859, 16.252262, 23.765354>,  <13.897499, 16.462772, 24.467169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164859, 16.252262, 23.765354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.849630, 16.009367, 23.805769>,  <13.660494, 15.863630, 23.830017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.849630, 16.009367, 23.805769>,  <14.164859, 16.252262, 23.765354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849630, 16.009367, 23.805769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271385, 0.195392, -0.942429,
		0.552536, -0.770120, -0.318778,
		-0.788070, -0.607237, 0.101038,
		13.613210, 15.827196, 23.836081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171741, 15.756413, 23.111141>,  <14.164859, 16.252262, 23.765354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171741, 15.756413, 23.111141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.802742, 15.755609, 23.265541>,  <13.581343, 15.755125, 23.358181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.802742, 15.755609, 23.265541>,  <14.171741, 15.756413, 23.111141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802742, 15.755609, 23.265541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383963, 0.107541, -0.917065,
		-0.039668, -0.994199, -0.099978,
		-0.922496, -0.002009, 0.386001,
		13.525993, 15.755005, 23.381342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820565, 15.238018, 22.709652>,  <14.171741, 15.756413, 23.111141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820565, 15.238018, 22.709652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.551473, 15.493860, 22.858427>,  <13.390017, 15.647366, 22.947691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.551473, 15.493860, 22.858427>,  <13.820565, 15.238018, 22.709652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551473, 15.493860, 22.858427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467402, 0.022306, -0.883763,
		-0.573556, -0.768380, 0.283947,
		-0.672733, 0.639605, 0.371936,
		13.349653, 15.685741, 22.970007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178472, 14.979520, 22.481926>,  <13.820565, 15.238018, 22.709652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178472, 14.979520, 22.481926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.075141, 15.350676, 22.589474>,  <13.013143, 15.573369, 22.654003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.075141, 15.350676, 22.589474>,  <13.178472, 14.979520, 22.481926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075141, 15.350676, 22.589474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411786, 0.146003, -0.899508,
		-0.873899, -0.343083, 0.344375,
		-0.258326, 0.927889, 0.268869,
		12.997643, 15.629042, 22.670134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453566, 14.966611, 22.301025>,  <13.178472, 14.979520, 22.481926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453566, 14.966611, 22.301025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.568063, 15.349463, 22.318754>,  <12.636761, 15.579175, 22.329391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.568063, 15.349463, 22.318754>,  <12.453566, 14.966611, 22.301025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568063, 15.349463, 22.318754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495970, 0.187586, -0.847836,
		-0.819804, 0.220705, 0.528403,
		0.286242, 0.957132, 0.044321,
		12.653935, 15.636603, 22.332050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861130, 15.275454, 22.202950>,  <12.453566, 14.966611, 22.301025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861130, 15.275454, 22.202950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.150757, 15.541946, 22.131554>,  <12.324533, 15.701842, 22.088717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.150757, 15.541946, 22.131554>,  <11.861130, 15.275454, 22.202950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150757, 15.541946, 22.131554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453397, 0.264741, -0.851084,
		-0.519765, 0.697170, 0.493759,
		0.724068, 0.666232, -0.178492,
		12.367977, 15.741817, 22.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.508425, 15.805069, 22.115883>,  <11.861130, 15.275454, 22.202950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.508425, 15.805069, 22.115883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.844536, 15.903062, 21.922424>,  <12.046203, 15.961858, 21.806349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.844536, 15.903062, 21.922424>,  <11.508425, 15.805069, 22.115883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844536, 15.903062, 21.922424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534016, 0.220000, -0.816350,
		-0.093589, 0.944237, 0.315685,
		0.840279, 0.244982, -0.483648,
		12.096620, 15.976557, 21.777330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320289, 16.466469, 21.702194>,  <11.508425, 15.805069, 22.115883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320289, 16.466469, 21.702194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.650518, 16.314983, 21.534861>,  <11.848656, 16.224092, 21.434460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.650518, 16.314983, 21.534861>,  <11.320289, 16.466469, 21.702194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650518, 16.314983, 21.534861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329252, 0.278781, -0.902150,
		0.458280, 0.882529, 0.105462,
		0.825574, -0.378713, -0.418335,
		11.898190, 16.201370, 21.409361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.730817, 17.053837, 21.351830>,  <11.320289, 16.466469, 21.702194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.730817, 17.053837, 21.351830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.853390, 16.717785, 21.172819>,  <11.926933, 16.516153, 21.065413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.853390, 16.717785, 21.172819>,  <11.730817, 17.053837, 21.351830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853390, 16.717785, 21.172819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371521, 0.327298, -0.868820,
		0.876397, 0.432500, -0.211831,
		0.306433, -0.840131, -0.447526,
		11.945320, 16.465746, 21.038561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226800, 17.222546, 20.824652>,  <11.730817, 17.053837, 21.351830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226800, 17.222546, 20.824652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.066224, 16.870607, 20.722891>,  <11.969878, 16.659445, 20.661835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.066224, 16.870607, 20.722891>,  <12.226800, 17.222546, 20.824652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.066224, 16.870607, 20.722891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244834, 0.370750, -0.895880,
		0.882555, -0.297355, -0.364249,
		-0.401440, -0.879843, -0.254405,
		11.945792, 16.606655, 20.646570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790430, 17.504522, 20.322723>,  <12.226800, 17.222546, 20.824652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790430, 17.504522, 20.322723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.733382, 17.899740, 20.299318>,  <12.699154, 18.136871, 20.285275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.733382, 17.899740, 20.299318>,  <12.790430, 17.504522, 20.322723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733382, 17.899740, 20.299318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178770, 0.083859, 0.980311,
		0.973499, 0.129351, -0.188593,
		-0.142619, 0.988047, -0.058513,
		12.690597, 18.196154, 20.281765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378934, 17.844582, 20.714043>,  <12.790430, 17.504522, 20.322723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378934, 17.844582, 20.714043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065028, 18.091663, 20.693699>,  <12.876685, 18.239912, 20.681492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065028, 18.091663, 20.693699>,  <13.378934, 17.844582, 20.714043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065028, 18.091663, 20.693699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031633, 0.121871, 0.992042,
		0.618987, 0.776909, -0.115180,
		-0.784764, 0.617705, -0.050861,
		12.829599, 18.276976, 20.678440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453095, 18.198624, 21.254074>,  <13.378934, 17.844582, 20.714043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453095, 18.198624, 21.254074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.074917, 18.289070, 21.160261>,  <12.848010, 18.343338, 21.103973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.074917, 18.289070, 21.160261>,  <13.453095, 18.198624, 21.254074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.074917, 18.289070, 21.160261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187902, 0.209610, 0.959561,
		0.266130, 0.951281, -0.155687,
		-0.945446, 0.226114, -0.234531,
		12.791283, 18.356905, 21.089901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378425, 18.828146, 21.540190>,  <13.453095, 18.198624, 21.254074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378425, 18.828146, 21.540190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.005350, 18.689081, 21.501766>,  <12.781506, 18.605642, 21.478712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.005350, 18.689081, 21.501766>,  <13.378425, 18.828146, 21.540190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005350, 18.689081, 21.501766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198661, 0.272871, 0.941316,
		-0.301047, 0.897036, -0.323569,
		-0.932687, -0.347661, -0.096059,
		12.725544, 18.584784, 21.472948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957356, 19.398090, 21.657578>,  <13.378425, 18.828146, 21.540190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957356, 19.398090, 21.657578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.737365, 19.069374, 21.717154>,  <12.605370, 18.872145, 21.752899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.737365, 19.069374, 21.717154>,  <12.957356, 19.398090, 21.657578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737365, 19.069374, 21.717154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165698, 0.282156, 0.944951,
		-0.818576, 0.495024, -0.291349,
		-0.549980, -0.821790, 0.148941,
		12.572371, 18.822838, 21.761835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329959, 19.594093, 22.053244>,  <12.957356, 19.398090, 21.657578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329959, 19.594093, 22.053244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375094, 19.201744, 22.116682>,  <12.402176, 18.966333, 22.154745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375094, 19.201744, 22.116682>,  <12.329959, 19.594093, 22.053244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375094, 19.201744, 22.116682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175360, 0.137453, 0.974862,
		-0.978016, -0.137814, -0.156496,
		0.112839, -0.980874, 0.158598,
		12.408946, 18.907482, 22.164261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728590, 19.363626, 22.588600>,  <12.329959, 19.594093, 22.053244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728590, 19.363626, 22.588600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.011182, 19.080620, 22.581608>,  <12.180737, 18.910816, 22.577414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.011182, 19.080620, 22.581608>,  <11.728590, 19.363626, 22.588600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.011182, 19.080620, 22.581608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161490, -0.185200, 0.969341,
		-0.689064, -0.681996, -0.245097,
		0.706479, -0.707518, -0.017479,
		12.223125, 18.868364, 22.576365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.387438, 18.839870, 22.929989>,  <11.728590, 19.363626, 22.588600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.387438, 18.839870, 22.929989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.780259, 18.770071, 22.958614>,  <12.015952, 18.728191, 22.975790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.780259, 18.770071, 22.958614>,  <11.387438, 18.839870, 22.929989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.780259, 18.770071, 22.958614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076291, -0.020524, 0.996874,
		-0.172488, -0.984443, -0.033469,
		0.982053, -0.174502, 0.071564,
		12.074875, 18.717722, 22.980083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.445414, 18.337494, 23.388721>,  <11.387438, 18.839870, 22.929989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.445414, 18.337494, 23.388721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.821798, 18.472843, 23.392567>,  <12.047629, 18.554052, 23.394875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.821798, 18.472843, 23.392567>,  <11.445414, 18.337494, 23.388721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.821798, 18.472843, 23.392567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027702, -0.105278, 0.994057,
		0.337375, -0.935104, -0.108436,
		0.940963, 0.338373, 0.009614,
		12.104087, 18.574354, 23.395451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.807428, 17.848768, 23.787495>,  <11.445414, 18.337494, 23.388721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.807428, 17.848768, 23.787495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019707, 18.187212, 23.807352>,  <12.147074, 18.390278, 23.819267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019707, 18.187212, 23.807352>,  <11.807428, 17.848768, 23.787495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.019707, 18.187212, 23.807352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112689, -0.128491, 0.985287,
		0.840038, -0.517293, -0.163537,
		0.530696, 0.846107, 0.049644,
		12.178915, 18.441044, 23.822245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446906, 17.530451, 24.097143>,  <11.807428, 17.848768, 23.787495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446906, 17.530451, 24.097143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.473088, 17.927000, 24.142569>,  <12.488797, 18.164928, 24.169825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.473088, 17.927000, 24.142569>,  <12.446906, 17.530451, 24.097143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473088, 17.927000, 24.142569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221321, -0.125399, 0.967105,
		0.973002, -0.038168, -0.227619,
		0.065455, 0.991372, 0.113566,
		12.492724, 18.224411, 24.176638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063841, 17.702501, 24.582739>,  <12.446906, 17.530451, 24.097143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063841, 17.702501, 24.582739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.820151, 18.019098, 24.602282>,  <12.673938, 18.209057, 24.614006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.820151, 18.019098, 24.602282>,  <13.063841, 17.702501, 24.582739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.820151, 18.019098, 24.602282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054282, -0.019842, 0.998329,
		0.791139, 0.610857, -0.030875,
		-0.609223, 0.791492, 0.048856,
		12.637384, 18.256546, 24.616938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396542, 18.407356, 24.892143>,  <13.063841, 17.702501, 24.582739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396542, 18.407356, 24.892143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.002586, 18.354424, 24.936832>,  <12.766213, 18.322664, 24.963646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.002586, 18.354424, 24.936832>,  <13.396542, 18.407356, 24.892143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002586, 18.354424, 24.936832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114684, -0.014945, 0.993290,
		-0.129775, 0.991092, 0.029896,
		-0.984889, -0.132333, 0.111723,
		12.707120, 18.314724, 24.970350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170284, 19.033825, 25.276115>,  <13.396542, 18.407356, 24.892143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170284, 19.033825, 25.276115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.903886, 18.746758, 25.357506>,  <12.744047, 18.574516, 25.406340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.903886, 18.746758, 25.357506>,  <13.170284, 19.033825, 25.276115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903886, 18.746758, 25.357506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161424, 0.127654, 0.978594,
		-0.728281, 0.684585, 0.030832,
		-0.665995, -0.717668, 0.203476,
		12.704087, 18.531458, 25.418549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618358, 19.282269, 25.773518>,  <13.170284, 19.033825, 25.276115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618358, 19.282269, 25.773518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.655375, 18.887493, 25.826265>,  <12.677586, 18.650627, 25.857914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.655375, 18.887493, 25.826265>,  <12.618358, 19.282269, 25.773518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.655375, 18.887493, 25.826265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081177, 0.139473, 0.986893,
		-0.992394, -0.080626, 0.093025,
		0.092544, -0.986938, 0.131867,
		12.683139, 18.591412, 25.865826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403858, 19.197485, 26.508886>,  <12.618358, 19.282269, 25.773518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403858, 19.197485, 26.508886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.553224, 18.834539, 26.431683>,  <12.642842, 18.616772, 26.385361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.553224, 18.834539, 26.431683>,  <12.403858, 19.197485, 26.508886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553224, 18.834539, 26.431683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250750, -0.101589, 0.962706,
		-0.893133, -0.407884, 0.189588,
		0.373413, -0.907365, -0.193009,
		12.665247, 18.562330, 26.373779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.294065, 18.775112, 27.094891>,  <12.403858, 19.197485, 26.508886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.294065, 18.775112, 27.094891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.606388, 18.591900, 26.924929>,  <12.793782, 18.481972, 26.822950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.606388, 18.591900, 26.924929>,  <12.294065, 18.775112, 27.094891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.606388, 18.591900, 26.924929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458412, -0.042083, 0.887743,
		-0.424495, -0.887940, 0.177108,
		0.780809, -0.458031, -0.424906,
		12.840631, 18.454491, 26.797457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334589, 18.079399, 27.346247>,  <12.294065, 18.775112, 27.094891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334589, 18.079399, 27.346247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.698434, 18.176556, 27.211422>,  <12.916740, 18.234850, 27.130527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.698434, 18.176556, 27.211422>,  <12.334589, 18.079399, 27.346247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.698434, 18.176556, 27.211422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364993, -0.079642, 0.927598,
		0.198462, -0.966778, -0.161097,
		0.909611, 0.242892, -0.337061,
		12.971317, 18.249424, 27.110304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.759254, 17.624474, 27.691097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990640, 17.932997, 27.584917>,  <13.129471, 18.118111, 27.521210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990640, 17.932997, 27.584917>,  <12.759254, 17.624474, 27.691097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990640, 17.932997, 27.584917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428846, -0.010746, 0.903314,
		0.693881, -0.636371, -0.336988,
		0.578464, 0.771308, -0.265449,
		13.164179, 18.164389, 27.505281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433831, 17.426739, 27.811752>,  <12.759254, 17.624474, 27.691097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433831, 17.426739, 27.811752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.433753, 17.826672, 27.804379>,  <13.433706, 18.066631, 27.799953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.433753, 17.826672, 27.804379>,  <13.433831, 17.426739, 27.811752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433753, 17.826672, 27.804379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450383, 0.016547, 0.892682,
		0.892836, -0.008128, -0.450309,
		-0.000195, 0.999830, -0.018434,
		13.433695, 18.126621, 27.798849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164367, 17.556561, 27.896240>,  <13.433831, 17.426739, 27.811752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164367, 17.556561, 27.896240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.936869, 17.873613, 27.984114>,  <13.800370, 18.063845, 28.036839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.936869, 17.873613, 27.984114>,  <14.164367, 17.556561, 27.896240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936869, 17.873613, 27.984114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428048, 0.057159, 0.901947,
		0.702356, 0.607014, -0.371794,
		-0.568745, 0.792633, 0.219685,
		13.766245, 18.111403, 28.050018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682009, 17.943483, 28.229748>,  <14.164367, 17.556561, 27.896240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682009, 17.943483, 28.229748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.333052, 18.111544, 28.329672>,  <14.123677, 18.212379, 28.389627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.333052, 18.111544, 28.329672>,  <14.682009, 17.943483, 28.229748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333052, 18.111544, 28.329672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315975, 0.094791, 0.944021,
		0.372949, 0.902491, -0.215451,
		-0.872393, 0.420148, 0.249812,
		14.071334, 18.237589, 28.404615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903704, 18.610386, 28.526863>,  <14.682009, 17.943483, 28.229748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.903704, 18.610386, 28.526863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.540174, 18.498100, 28.650305>,  <14.322056, 18.430729, 28.724371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.540174, 18.498100, 28.650305>,  <14.903704, 18.610386, 28.526863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540174, 18.498100, 28.650305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295033, 0.090519, 0.951190,
		-0.294946, 0.955514, 0.000553,
		-0.908825, -0.280712, 0.308607,
		14.267526, 18.413887, 28.742887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563059, 19.166761, 28.882793>,  <14.903704, 18.610386, 28.526863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563059, 19.166761, 28.882793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373959, 18.833155, 28.996582>,  <14.260498, 18.632992, 29.064856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373959, 18.833155, 28.996582>,  <14.563059, 19.166761, 28.882793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373959, 18.833155, 28.996582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283893, 0.161463, 0.945164,
		-0.834213, 0.527587, 0.160440,
		-0.472751, -0.834016, 0.284473,
		14.232134, 18.582951, 29.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248828, 19.402332, 29.426701>,  <14.563059, 19.166761, 28.882793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248828, 19.402332, 29.426701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.256884, 19.003401, 29.454788>,  <14.261717, 18.764042, 29.471642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.256884, 19.003401, 29.454788>,  <14.248828, 19.402332, 29.426701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.256884, 19.003401, 29.454788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214299, 0.072907, 0.974043,
		-0.976561, -0.004567, 0.215194,
		0.020138, -0.997328, 0.070219,
		14.262925, 18.704203, 29.475855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864504, 19.363419, 29.974352>,  <14.248828, 19.402332, 29.426701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864504, 19.363419, 29.974352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075476, 19.023806, 29.961914>,  <14.202059, 18.820038, 29.954451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075476, 19.023806, 29.961914>,  <13.864504, 19.363419, 29.974352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075476, 19.023806, 29.961914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033382, -0.015862, 0.999317,
		-0.848943, -0.528106, 0.019976,
		0.527429, -0.849030, -0.031095,
		14.233705, 18.769096, 29.952585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.596041, 18.986959, 30.468168>,  <13.864504, 19.363419, 29.974352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.596041, 18.986959, 30.468168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.939336, 18.802378, 30.378292>,  <14.145313, 18.691629, 30.324366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.939336, 18.802378, 30.378292>,  <13.596041, 18.986959, 30.468168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939336, 18.802378, 30.378292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288574, 0.071816, 0.954760,
		-0.424442, -0.884252, 0.194799,
		0.858239, -0.461455, -0.224691,
		14.196808, 18.663940, 30.310884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635024, 18.380302, 30.931458>,  <13.596041, 18.986959, 30.468168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635024, 18.380302, 30.931458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.016416, 18.479422, 30.862785>,  <14.245251, 18.538893, 30.821583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.016416, 18.479422, 30.862785>,  <13.635024, 18.380302, 30.931458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016416, 18.479422, 30.862785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175611, 0.006326, 0.984439,
		0.245027, -0.968791, -0.037484,
		0.953479, 0.247797, -0.171681,
		14.302460, 18.553761, 30.811281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960553, 18.075462, 31.501595>,  <13.635024, 18.380302, 30.931458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.960553, 18.075462, 31.501595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.249395, 18.309700, 31.354275>,  <14.422701, 18.450243, 31.265882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.249395, 18.309700, 31.354275>,  <13.960553, 18.075462, 31.501595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249395, 18.309700, 31.354275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304434, 0.209068, 0.929307,
		0.621196, -0.783179, -0.027305,
		0.722105, 0.585594, -0.368298,
		14.466027, 18.485378, 31.243786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598231, 17.718498, 31.731462>,  <13.960553, 18.075462, 31.501595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.598231, 17.718498, 31.731462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.719201, 18.091618, 31.653051>,  <14.791783, 18.315489, 31.606005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.719201, 18.091618, 31.653051>,  <14.598231, 17.718498, 31.731462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719201, 18.091618, 31.653051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502623, 0.018677, 0.864304,
		0.809883, -0.359914, -0.463198,
		0.302424, 0.932799, -0.196027,
		14.809928, 18.371458, 31.594244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319274, 17.760132, 31.839493>,  <14.598231, 17.718498, 31.731462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319274, 17.760132, 31.839493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.211183, 18.144543, 31.862827>,  <15.146328, 18.375189, 31.876827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.211183, 18.144543, 31.862827>,  <15.319274, 17.760132, 31.839493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211183, 18.144543, 31.862827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532484, 0.098697, 0.840666,
		0.802145, 0.258235, -0.538402,
		-0.270228, 0.961027, 0.058337,
		15.130115, 18.432852, 31.880329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948177, 18.136112, 32.067688>,  <15.319274, 17.760132, 31.839493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948177, 18.136112, 32.067688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.645685, 18.384644, 32.149734>,  <15.464190, 18.533762, 32.198963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.645685, 18.384644, 32.149734>,  <15.948177, 18.136112, 32.067688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645685, 18.384644, 32.149734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514440, 0.370899, 0.773166,
		0.404312, 0.690208, -0.600120,
		-0.756230, 0.621326, 0.205112,
		15.418817, 18.571041, 32.211269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269794, 18.801901, 32.132111>,  <15.948177, 18.136112, 32.067688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269794, 18.801901, 32.132111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.907109, 18.808544, 32.300678>,  <15.689498, 18.812531, 32.401821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.907109, 18.808544, 32.300678>,  <16.269794, 18.801901, 32.132111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907109, 18.808544, 32.300678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375416, 0.487111, 0.788534,
		-0.192183, 0.873182, -0.447905,
		-0.906713, 0.016608, 0.421421,
		15.635096, 18.813526, 32.427105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069256, 19.507986, 32.379318>,  <16.269794, 18.801901, 32.132111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069256, 19.507986, 32.379318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.867954, 19.233738, 32.589710>,  <15.747173, 19.069189, 32.715946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.867954, 19.233738, 32.589710>,  <16.069256, 19.507986, 32.379318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867954, 19.233738, 32.589710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213453, 0.491188, 0.844496,
		-0.837360, 0.537269, -0.100844,
		-0.503255, -0.685622, 0.525983,
		15.716978, 19.028051, 32.747505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736685, 19.889620, 32.950848>,  <16.069256, 19.507986, 32.379318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736685, 19.889620, 32.950848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.776114, 19.505293, 33.054474>,  <15.799771, 19.274696, 33.116650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.776114, 19.505293, 33.054474>,  <15.736685, 19.889620, 32.950848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776114, 19.505293, 33.054474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242213, 0.275668, 0.930237,
		-0.965203, -0.028947, 0.259895,
		0.098572, -0.960817, 0.259064,
		15.805685, 19.217049, 33.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766167, 19.872858, 33.732040>,  <15.736685, 19.889620, 32.950848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766167, 19.872858, 33.732040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835034, 19.484531, 33.665260>,  <15.876355, 19.251535, 33.625195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835034, 19.484531, 33.665260>,  <15.766167, 19.872858, 33.732040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835034, 19.484531, 33.665260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516647, -0.055305, 0.854410,
		-0.838709, -0.233357, 0.492048,
		0.172170, -0.970817, -0.166949,
		15.886685, 19.193287, 33.615177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.584023, 19.613947, 34.366833>,  <15.766167, 19.872858, 33.732040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.584023, 19.613947, 34.366833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821015, 19.356798, 34.172642>,  <15.963210, 19.202509, 34.056129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821015, 19.356798, 34.172642>,  <15.584023, 19.613947, 34.366833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821015, 19.356798, 34.172642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602513, -0.046400, 0.796759,
		-0.534740, -0.764567, 0.359848,
		0.592479, -0.642872, -0.485473,
		15.998759, 19.163937, 34.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660748, 19.036324, 34.829693>,  <15.584023, 19.613947, 34.366833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660748, 19.036324, 34.829693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.970028, 18.990103, 34.580273>,  <16.155596, 18.962370, 34.430622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.970028, 18.990103, 34.580273>,  <15.660748, 19.036324, 34.829693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970028, 18.990103, 34.580273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576756, -0.280674, 0.767187,
		-0.263654, -0.952823, -0.150378,
		0.773201, -0.115541, -0.623547,
		16.201986, 18.955437, 34.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878311, 18.379681, 34.950558>,  <15.660748, 19.036324, 34.829693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878311, 18.379681, 34.950558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193110, 18.560497, 34.782608>,  <16.381989, 18.668987, 34.681839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193110, 18.560497, 34.782608>,  <15.878311, 18.379681, 34.950558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193110, 18.560497, 34.782608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501160, -0.071472, 0.862398,
		0.359830, -0.889129, -0.282793,
		0.786995, 0.452041, -0.419878,
		16.429209, 18.696110, 34.656643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463600, 17.892067, 35.045181>,  <15.878311, 18.379681, 34.950558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463600, 17.892067, 35.045181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.589094, 18.268967, 34.998299>,  <16.664391, 18.495106, 34.970169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.589094, 18.268967, 34.998299>,  <16.463600, 17.892067, 35.045181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589094, 18.268967, 34.998299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615853, -0.107978, 0.780426,
		0.722699, -0.317032, -0.614163,
		0.313736, 0.942248, -0.117209,
		16.683214, 18.551641, 34.963135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192827, 17.870321, 34.904942>,  <16.463600, 17.892067, 35.045181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192827, 17.870321, 34.904942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.030399, 18.189514, 35.083080>,  <16.932943, 18.381031, 35.189964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.030399, 18.189514, 35.083080>,  <17.192827, 17.870321, 34.904942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030399, 18.189514, 35.083080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561644, -0.166500, 0.810453,
		0.720877, 0.579224, -0.380572,
		-0.406069, 0.797983, 0.445344,
		16.908579, 18.428909, 35.216682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736322, 18.142702, 35.232006>,  <17.192827, 17.870321, 34.904942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736322, 18.142702, 35.232006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.714529, 18.333878, 35.582687>,  <17.701452, 18.448584, 35.793095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.714529, 18.333878, 35.582687>,  <17.736322, 18.142702, 35.232006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714529, 18.333878, 35.582687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872505, -0.449744, 0.190958,
		0.485558, -0.754521, 0.441510,
		-0.054485, 0.477941, 0.876701,
		17.698183, 18.477261, 35.845699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192640, 17.525829, 35.203568>,  <17.736322, 18.142702, 35.232006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192640, 17.525829, 35.203568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.193682, 17.133471, 35.281368>,  <18.194307, 16.898054, 35.328049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.193682, 17.133471, 35.281368>,  <18.192640, 17.525829, 35.203568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193682, 17.133471, 35.281368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329228, -0.184500, -0.926050,
		0.944247, -0.061625, -0.323419,
		0.002603, -0.980899, 0.194502,
		18.194462, 16.839201, 35.339718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418150, 17.318748, 34.599537>,  <18.192640, 17.525829, 35.203568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418150, 17.318748, 34.599537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.306929, 16.973255, 34.767654>,  <18.240196, 16.765959, 34.868526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.306929, 16.973255, 34.767654>,  <18.418150, 17.318748, 34.599537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306929, 16.973255, 34.767654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098052, -0.409744, -0.906916,
		0.955548, -0.293381, 0.029240,
		-0.278052, -0.863735, 0.420297,
		18.223513, 16.714134, 34.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796167, 16.743998, 34.338638>,  <18.418150, 17.318748, 34.599537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796167, 16.743998, 34.338638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.442007, 16.612072, 34.469654>,  <18.229511, 16.532917, 34.548264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.442007, 16.612072, 34.469654>,  <18.796167, 16.743998, 34.338638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442007, 16.612072, 34.469654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261721, -0.228611, -0.937678,
		0.384140, -0.915947, 0.116093,
		-0.885403, -0.329816, 0.327541,
		18.176386, 16.513126, 34.567917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593761, 16.063711, 33.984013>,  <18.796167, 16.743998, 34.338638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593761, 16.063711, 33.984013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.258133, 16.204979, 34.149532>,  <18.056755, 16.289740, 34.248844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.258133, 16.204979, 34.149532>,  <18.593761, 16.063711, 33.984013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258133, 16.204979, 34.149532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517155, -0.281732, -0.808194,
		-0.168849, -0.892132, 0.419037,
		-0.839071, 0.353169, 0.413800,
		18.006413, 16.310930, 34.273674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054325, 15.462410, 33.829967>,  <18.593761, 16.063711, 33.984013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054325, 15.462410, 33.829967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.852341, 15.798140, 33.910519>,  <17.731150, 15.999578, 33.958851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.852341, 15.798140, 33.910519>,  <18.054325, 15.462410, 33.829967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852341, 15.798140, 33.910519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569287, -0.148487, -0.808619,
		-0.648791, -0.522961, 0.552796,
		-0.504959, 0.839323, 0.201378,
		17.700853, 16.049936, 33.970932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319202, 15.280409, 33.833160>,  <18.054325, 15.462410, 33.829967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319202, 15.280409, 33.833160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.354301, 15.676519, 33.789986>,  <17.375360, 15.914186, 33.764080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.354301, 15.676519, 33.789986>,  <17.319202, 15.280409, 33.833160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354301, 15.676519, 33.789986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613459, -0.031653, -0.789092,
		-0.784836, 0.135457, 0.604717,
		0.087747, 0.990277, -0.107940,
		17.380625, 15.973602, 33.757603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654438, 15.461266, 33.780056>,  <17.319202, 15.280409, 33.833160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.654438, 15.461266, 33.780056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.874350, 15.747408, 33.607540>,  <17.006296, 15.919093, 33.504032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.874350, 15.747408, 33.607540>,  <16.654438, 15.461266, 33.780056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874350, 15.747408, 33.607540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711161, 0.130012, -0.690903,
		-0.438170, 0.686558, 0.580212,
		0.549779, 0.715357, -0.431285,
		17.039284, 15.962015, 33.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190952, 15.956408, 33.537216>,  <16.654438, 15.461266, 33.780056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190952, 15.956408, 33.537216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.504189, 16.057104, 33.309742>,  <16.692129, 16.117521, 33.173260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.504189, 16.057104, 33.309742>,  <16.190952, 15.956408, 33.537216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504189, 16.057104, 33.309742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612457, 0.153338, -0.775489,
		-0.108022, 0.955570, 0.274258,
		0.783088, 0.251741, -0.568682,
		16.739115, 16.132626, 33.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955123, 16.475473, 33.102112>,  <16.190952, 15.956408, 33.537216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955123, 16.475473, 33.102112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.271908, 16.334278, 32.902836>,  <16.461979, 16.249561, 32.783268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.271908, 16.334278, 32.902836>,  <15.955123, 16.475473, 33.102112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271908, 16.334278, 32.902836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481035, 0.141806, -0.865157,
		0.376036, 0.924820, -0.057494,
		0.791961, -0.352987, -0.498194,
		16.509497, 16.228382, 32.753376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976611, 16.998878, 32.604538>,  <15.955123, 16.475473, 33.102112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976611, 16.998878, 32.604538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193344, 16.700420, 32.449780>,  <16.323383, 16.521345, 32.356926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193344, 16.700420, 32.449780>,  <15.976611, 16.998878, 32.604538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193344, 16.700420, 32.449780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323069, 0.240065, -0.915421,
		0.775916, 0.620998, -0.110981,
		0.541832, -0.746144, -0.386895,
		16.355894, 16.476578, 32.333710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321701, 17.272184, 32.035168>,  <15.976611, 16.998878, 32.604538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321701, 17.272184, 32.035168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.289850, 16.880610, 31.959967>,  <16.270741, 16.645664, 31.914846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.289850, 16.880610, 31.959967>,  <16.321701, 17.272184, 32.035168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289850, 16.880610, 31.959967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244903, 0.202032, -0.948265,
		0.966272, -0.029465, -0.255831,
		-0.079627, -0.978936, -0.188002,
		16.265963, 16.586929, 31.903566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562035, 17.227922, 31.372896>,  <16.321701, 17.272184, 32.035168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562035, 17.227922, 31.372896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.389111, 16.874231, 31.443605>,  <16.285357, 16.662016, 31.486031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.389111, 16.874231, 31.443605>,  <16.562035, 17.227922, 31.372896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389111, 16.874231, 31.443605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300693, -0.043452, -0.952731,
		0.850112, -0.465031, -0.247096,
		-0.432312, -0.884227, 0.176771,
		16.259417, 16.608963, 31.496637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621122, 16.796158, 30.797232>,  <16.562035, 17.227922, 31.372896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621122, 16.796158, 30.797232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.316698, 16.607092, 30.974939>,  <16.134043, 16.493652, 31.081564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.316698, 16.607092, 30.974939>,  <16.621122, 16.796158, 30.797232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316698, 16.607092, 30.974939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500662, -0.007465, -0.865610,
		0.412460, -0.881211, -0.230964,
		-0.761061, -0.472664, 0.444268,
		16.088379, 16.465292, 31.108219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502863, 16.324186, 30.332018>,  <16.621122, 16.796158, 30.797232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502863, 16.324186, 30.332018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.197113, 16.369350, 30.585941>,  <16.013662, 16.396448, 30.738295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.197113, 16.369350, 30.585941>,  <16.502863, 16.324186, 30.332018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197113, 16.369350, 30.585941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642959, -0.059695, -0.763571,
		-0.048299, -0.991814, 0.118208,
		-0.764376, 0.112882, 0.634812,
		15.967800, 16.403223, 30.776384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078556, 15.729219, 30.258097>,  <16.502863, 16.324186, 30.332018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078556, 15.729219, 30.258097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.862952, 16.024923, 30.419571>,  <15.733590, 16.202347, 30.516455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.862952, 16.024923, 30.419571>,  <16.078556, 15.729219, 30.258097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862952, 16.024923, 30.419571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687740, -0.109566, -0.717641,
		-0.486294, -0.664446, 0.567477,
		-0.539010, 0.739261, 0.403685,
		15.701249, 16.246702, 30.540676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360147, 15.418510, 30.442171>,  <16.078556, 15.729219, 30.258097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360147, 15.418510, 30.442171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.308300, 15.814028, 30.412535>,  <15.277192, 16.051338, 30.394753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.308300, 15.814028, 30.412535>,  <15.360147, 15.418510, 30.442171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308300, 15.814028, 30.412535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741353, -0.146258, -0.654984,
		-0.658479, -0.029971, 0.752002,
		-0.129617, 0.988792, -0.074089,
		15.269415, 16.110666, 30.390308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634633, 15.467842, 30.396595>,  <15.360147, 15.418510, 30.442171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634633, 15.467842, 30.396595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.789968, 15.801256, 30.239414>,  <14.883170, 16.001305, 30.145105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.789968, 15.801256, 30.239414>,  <14.634633, 15.467842, 30.396595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789968, 15.801256, 30.239414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538144, -0.141025, -0.830971,
		-0.748060, 0.534163, 0.393797,
		0.388339, 0.833536, -0.392952,
		14.906470, 16.051317, 30.121529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065678, 15.882284, 30.107262>,  <14.634633, 15.467842, 30.396595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065678, 15.882284, 30.107262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.392998, 16.028091, 29.929493>,  <14.589390, 16.115576, 29.822832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.392998, 16.028091, 29.929493>,  <14.065678, 15.882284, 30.107262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392998, 16.028091, 29.929493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429671, -0.125652, -0.894200,
		-0.381794, 0.922680, 0.053802,
		0.818300, 0.364518, -0.444422,
		14.638488, 16.137447, 29.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874959, 16.314350, 29.513428>,  <14.065678, 15.882284, 30.107262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874959, 16.314350, 29.513428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.260257, 16.265417, 29.417767>,  <14.491436, 16.236057, 29.360371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.260257, 16.265417, 29.417767>,  <13.874959, 16.314350, 29.513428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260257, 16.265417, 29.417767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238356, 0.021325, -0.970944,
		0.123877, 0.992260, -0.008617,
		0.963245, -0.122331, -0.239152,
		14.549231, 16.228718, 29.346022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017365, 16.832859, 28.905611>,  <13.874959, 16.314350, 29.513428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017365, 16.832859, 28.905611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.275780, 16.527578, 28.900585>,  <14.430829, 16.344410, 28.897570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.275780, 16.527578, 28.900585>,  <14.017365, 16.832859, 28.905611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.275780, 16.527578, 28.900585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179822, -0.136176, -0.974228,
		0.741821, 0.631649, -0.225216,
		0.646038, -0.763201, -0.012567,
		14.469591, 16.298618, 28.896814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.824593, 21.183014, 7.355082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.816254, 20.866020, 7.111267>,  <17.811251, 20.675825, 6.964977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.816254, 20.866020, 7.111267>,  <17.824593, 21.183014, 7.355082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816254, 20.866020, 7.111267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519914, -0.529345, 0.670435,
		-0.853964, -0.302930, 0.423059,
		-0.020849, -0.792482, -0.609539,
		17.809999, 20.628275, 6.928405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610289, 20.596859, 7.766181>,  <17.824593, 21.183014, 7.355082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610289, 20.596859, 7.766181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.879728, 20.549301, 7.474393>,  <18.041393, 20.520767, 7.299321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.879728, 20.549301, 7.474393>,  <17.610289, 20.596859, 7.766181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879728, 20.549301, 7.474393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653225, -0.365971, 0.662844,
		-0.345771, -0.923000, -0.168855,
		0.673602, -0.118892, -0.729470,
		18.081808, 20.513634, 7.255552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340729, 20.421368, 7.868990>,  <17.610289, 20.596859, 7.766181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340729, 20.421368, 7.868990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.570663, 20.181698, 8.091899>,  <18.708624, 20.037897, 8.225644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.570663, 20.181698, 8.091899>,  <18.340729, 20.421368, 7.868990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570663, 20.181698, 8.091899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094024, 0.628162, 0.772380,
		-0.812848, -0.496390, 0.304755,
		0.574837, -0.599173, 0.557273,
		18.743114, 20.001945, 8.259081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376062, 19.674217, 8.034052>,  <18.340729, 20.421368, 7.868990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376062, 19.674217, 8.034052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.350231, 19.446224, 8.361697>,  <18.334732, 19.309427, 8.558285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.350231, 19.446224, 8.361697>,  <18.376062, 19.674217, 8.034052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350231, 19.446224, 8.361697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981165, 0.186014, 0.052087,
		-0.182055, -0.800323, -0.571261,
		-0.064576, -0.569985, 0.819114,
		18.330858, 19.275229, 8.607431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476351, 18.925064, 7.944548>,  <18.376062, 19.674217, 8.034052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476351, 18.925064, 7.944548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.756212, 18.643555, 7.993839>,  <18.924129, 18.474649, 8.023415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.756212, 18.643555, 7.993839>,  <18.476351, 18.925064, 7.944548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756212, 18.643555, 7.993839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628736, -0.524535, 0.574068,
		-0.339376, -0.479128, -0.809482,
		0.699653, -0.703775, 0.123231,
		18.966108, 18.432423, 8.030808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227716, 18.233767, 7.831881>,  <18.476351, 18.925064, 7.944548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227716, 18.233767, 7.831881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536909, 18.214005, 8.084883>,  <18.722424, 18.202147, 8.236684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536909, 18.214005, 8.084883>,  <18.227716, 18.233767, 7.831881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536909, 18.214005, 8.084883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571718, -0.486434, 0.660697,
		0.275029, -0.872319, -0.404250,
		0.772980, -0.049407, 0.632504,
		18.768803, 18.199183, 8.274634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387943, 17.577829, 8.117096>,  <18.227716, 18.233767, 7.831881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387943, 17.577829, 8.117096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.542160, 17.830095, 8.386501>,  <18.634689, 17.981455, 8.548144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.542160, 17.830095, 8.386501>,  <18.387943, 17.577829, 8.117096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542160, 17.830095, 8.386501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599544, -0.383618, 0.702413,
		0.701359, -0.674610, 0.230211,
		0.385541, 0.630666, 0.673512,
		18.657822, 18.019295, 8.588555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418327, 17.216045, 8.673956>,  <18.387943, 17.577829, 8.117096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418327, 17.216045, 8.673956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440845, 17.597933, 8.790812>,  <18.454357, 17.827065, 8.860927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440845, 17.597933, 8.790812>,  <18.418327, 17.216045, 8.673956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440845, 17.597933, 8.790812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735988, -0.158037, 0.658290,
		0.674650, -0.252071, 0.693763,
		0.056295, 0.954717, 0.292141,
		18.457735, 17.884348, 8.878455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221668, 17.235518, 9.381153>,  <18.418327, 17.216045, 8.673956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221668, 17.235518, 9.381153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.122583, 17.599897, 9.249209>,  <18.063131, 17.818525, 9.170043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.122583, 17.599897, 9.249209>,  <18.221668, 17.235518, 9.381153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122583, 17.599897, 9.249209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708996, 0.061588, 0.702518,
		0.660274, 0.407893, 0.630604,
		-0.247714, 0.910950, -0.329860,
		18.048269, 17.873182, 9.150251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426363, 17.624846, 9.838966>,  <18.221668, 17.235518, 9.381153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426363, 17.624846, 9.838966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.136087, 17.822655, 9.647623>,  <17.961922, 17.941339, 9.532817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.136087, 17.822655, 9.647623>,  <18.426363, 17.624846, 9.838966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.136087, 17.822655, 9.647623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549004, 0.002856, 0.835815,
		0.414696, 0.869160, 0.269422,
		-0.725687, 0.494523, -0.478357,
		17.918381, 17.971012, 9.504116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310608, 18.256081, 10.184384>,  <18.426363, 17.624846, 9.838966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310608, 18.256081, 10.184384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972185, 18.163176, 9.992452>,  <17.769131, 18.107431, 9.877293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972185, 18.163176, 9.992452>,  <18.310608, 18.256081, 10.184384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972185, 18.163176, 9.992452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510023, 0.090766, 0.855359,
		-0.155117, 0.968408, -0.195253,
		-0.846059, -0.232264, -0.479831,
		17.718367, 18.093496, 9.848502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816612, 18.718271, 10.436623>,  <18.310608, 18.256081, 10.184384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816612, 18.718271, 10.436623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.604383, 18.433149, 10.253144>,  <17.477045, 18.262075, 10.143057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.604383, 18.433149, 10.253144>,  <17.816612, 18.718271, 10.436623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604383, 18.433149, 10.253144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660573, 0.008603, 0.750713,
		-0.531165, 0.701310, -0.475424,
		-0.530573, -0.712804, -0.458696,
		17.445211, 18.219309, 10.115536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039047, 19.052872, 10.434813>,  <17.816612, 18.718271, 10.436623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039047, 19.052872, 10.434813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.048708, 18.654354, 10.401801>,  <17.054504, 18.415243, 10.381994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.048708, 18.654354, 10.401801>,  <17.039047, 19.052872, 10.434813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048708, 18.654354, 10.401801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584097, -0.081060, 0.807626,
		-0.811325, 0.028699, -0.583891,
		0.024152, -0.996296, -0.082529,
		17.055954, 18.355465, 10.377043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346060, 18.910820, 10.627108>,  <17.039047, 19.052872, 10.434813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346060, 18.910820, 10.627108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.550476, 18.567501, 10.645700>,  <16.673126, 18.361509, 10.656855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.550476, 18.567501, 10.645700>,  <16.346060, 18.910820, 10.627108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550476, 18.567501, 10.645700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384285, -0.179769, 0.905543,
		-0.768871, -0.480631, -0.421700,
		0.511040, -0.858299, 0.046480,
		16.703789, 18.310011, 10.659643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847302, 18.325956, 11.009286>,  <16.346060, 18.910820, 10.627108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847302, 18.325956, 11.009286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.237030, 18.238144, 11.029325>,  <16.470867, 18.185457, 11.041348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.237030, 18.238144, 11.029325>,  <15.847302, 18.325956, 11.009286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237030, 18.238144, 11.029325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092631, -0.187983, 0.977794,
		-0.205243, -0.957323, -0.203491,
		0.974318, -0.219535, 0.050095,
		16.529325, 18.172285, 11.044353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817520, 17.620686, 11.287487>,  <15.847302, 18.325956, 11.009286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817520, 17.620686, 11.287487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.196276, 17.729273, 11.356431>,  <16.423529, 17.794426, 11.397798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.196276, 17.729273, 11.356431>,  <15.817520, 17.620686, 11.287487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196276, 17.729273, 11.356431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089217, -0.293175, 0.951887,
		0.308939, -0.916708, -0.253384,
		0.946888, 0.271468, 0.172359,
		16.480343, 17.810713, 11.408138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188984, 16.993006, 11.611778>,  <15.817520, 17.620686, 11.287487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188984, 16.993006, 11.611778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.402012, 17.318989, 11.703177>,  <16.529829, 17.514578, 11.758017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.402012, 17.318989, 11.703177>,  <16.188984, 16.993006, 11.611778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402012, 17.318989, 11.703177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010169, -0.276111, 0.961072,
		0.846323, -0.509516, -0.155337,
		0.532572, 0.814958, 0.228498,
		16.561783, 17.563477, 11.771727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600224, 16.691900, 12.165198>,  <16.188984, 16.993006, 11.611778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600224, 16.691900, 12.165198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.601341, 17.089893, 12.205198>,  <16.602011, 17.328690, 12.229198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.601341, 17.089893, 12.205198>,  <16.600224, 16.691900, 12.165198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601341, 17.089893, 12.205198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079082, -0.099906, 0.991849,
		0.996864, 0.005139, -0.078964,
		0.002792, 0.994983, 0.099999,
		16.602179, 17.388388, 12.235198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177328, 16.775963, 12.633424>,  <16.600224, 16.691900, 12.165198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177328, 16.775963, 12.633424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.934961, 17.093935, 12.645728>,  <16.789541, 17.284719, 12.653111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.934961, 17.093935, 12.645728>,  <17.177328, 16.775963, 12.633424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934961, 17.093935, 12.645728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059540, 0.006757, 0.998203,
		0.793296, 0.606660, -0.051424,
		-0.605917, 0.794933, 0.030760,
		16.753185, 17.332415, 12.654956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485849, 17.237967, 13.184992>,  <17.177328, 16.775963, 12.633424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485849, 17.237967, 13.184992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100643, 17.336157, 13.140559>,  <16.869518, 17.395071, 13.113900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100643, 17.336157, 13.140559>,  <17.485849, 17.237967, 13.184992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100643, 17.336157, 13.140559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155196, -0.168352, 0.973433,
		0.220255, 0.954672, 0.200222,
		-0.963017, 0.245477, -0.111081,
		16.811737, 17.409800, 13.107235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365759, 17.935093, 13.550661>,  <17.485849, 17.237967, 13.184992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.365759, 17.935093, 13.550661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041824, 17.704374, 13.507821>,  <16.847464, 17.565943, 13.482117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041824, 17.704374, 13.507821>,  <17.365759, 17.935093, 13.550661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041824, 17.704374, 13.507821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075181, -0.079017, 0.994034,
		-0.581818, 0.813058, 0.020627,
		-0.809837, -0.576796, -0.107100,
		16.798874, 17.531336, 13.475691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928713, 18.118269, 14.075473>,  <17.365759, 17.935093, 13.550661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928713, 18.118269, 14.075473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.736332, 17.778666, 13.987956>,  <16.620903, 17.574903, 13.935446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.736332, 17.778666, 13.987956>,  <16.928713, 18.118269, 14.075473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736332, 17.778666, 13.987956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198960, -0.137349, 0.970335,
		-0.853875, 0.510213, -0.102860,
		-0.480950, -0.849010, -0.218791,
		16.592047, 17.523962, 13.922318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324589, 18.134382, 14.520506>,  <16.928713, 18.118269, 14.075473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324589, 18.134382, 14.520506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.368452, 17.761364, 14.382905>,  <16.394770, 17.537554, 14.300344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.368452, 17.761364, 14.382905>,  <16.324589, 18.134382, 14.520506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368452, 17.761364, 14.382905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010939, -0.344936, 0.938562,
		-0.993909, -0.106685, -0.027624,
		0.109659, -0.932543, -0.344002,
		16.401350, 17.481602, 14.279704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.778225, 17.776096, 14.865775>,  <16.324589, 18.134382, 14.520506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.778225, 17.776096, 14.865775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.019611, 17.493219, 14.718422>,  <16.164444, 17.323494, 14.630010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.019611, 17.493219, 14.718422>,  <15.778225, 17.776096, 14.865775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019611, 17.493219, 14.718422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062602, -0.502581, 0.862261,
		-0.794927, -0.497284, -0.347562,
		0.603467, -0.707193, -0.368384,
		16.200651, 17.281061, 14.607906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482174, 17.088346, 15.210501>,  <15.778225, 17.776096, 14.865775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482174, 17.088346, 15.210501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.868950, 17.045431, 15.117968>,  <16.101015, 17.019682, 15.062448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.868950, 17.045431, 15.117968>,  <15.482174, 17.088346, 15.210501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868950, 17.045431, 15.117968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196641, -0.263855, 0.944306,
		-0.162352, -0.958577, -0.234034,
		0.966941, -0.107289, -0.231333,
		16.159033, 17.013245, 15.048568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801552, 16.503605, 15.602590>,  <15.482174, 17.088346, 15.210501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801552, 16.503605, 15.602590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.112312, 16.734337, 15.501638>,  <16.298769, 16.872776, 15.441068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.112312, 16.734337, 15.501638>,  <15.801552, 16.503605, 15.602590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112312, 16.734337, 15.501638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361401, -0.080314, 0.928945,
		0.515572, -0.812908, -0.270862,
		0.776901, 0.576828, -0.252378,
		16.345383, 16.907385, 15.425925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288574, 16.357889, 16.089544>,  <15.801552, 16.503605, 15.602590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288574, 16.357889, 16.089544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453699, 16.678940, 15.917323>,  <16.552774, 16.871571, 15.813991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453699, 16.678940, 15.917323>,  <16.288574, 16.357889, 16.089544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453699, 16.678940, 15.917323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682650, 0.040291, 0.729634,
		0.602971, -0.595120, -0.531280,
		0.412814, 0.802626, -0.430553,
		16.577543, 16.919727, 15.788157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969067, 16.216164, 16.063433>,  <16.288574, 16.357889, 16.089544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969067, 16.216164, 16.063433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.933155, 16.614187, 16.046474>,  <16.911608, 16.853001, 16.036299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.933155, 16.614187, 16.046474>,  <16.969067, 16.216164, 16.063433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933155, 16.614187, 16.046474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716487, 0.094095, 0.691225,
		0.691799, 0.031682, -0.721395,
		-0.089779, 0.995059, -0.042395,
		16.906221, 16.912704, 16.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.642654, 16.365196, 15.991954>,  <16.969067, 16.216164, 16.063433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.642654, 16.365196, 15.991954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.455055, 16.685255, 16.141518>,  <17.342497, 16.877291, 16.231256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.455055, 16.685255, 16.141518>,  <17.642654, 16.365196, 15.991954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455055, 16.685255, 16.141518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787514, 0.187204, 0.587176,
		0.399829, 0.569842, -0.717925,
		-0.468996, 0.800146, 0.373909,
		17.314356, 16.925299, 16.253691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067129, 16.870033, 16.048361>,  <17.642654, 16.365196, 15.991954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067129, 16.870033, 16.048361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.800184, 16.994953, 16.318796>,  <17.640017, 17.069904, 16.481058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.800184, 16.994953, 16.318796>,  <18.067129, 16.870033, 16.048361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800184, 16.994953, 16.318796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699327, -0.049354, 0.713096,
		0.256066, 0.948701, -0.185461,
		-0.667362, 0.312298, 0.676091,
		17.599976, 17.088642, 16.521624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362192, 17.327852, 16.520670>,  <18.067129, 16.870033, 16.048361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.362192, 17.327852, 16.520670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.083353, 17.131586, 16.729784>,  <17.916050, 17.013826, 16.855251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.083353, 17.131586, 16.729784>,  <18.362192, 17.327852, 16.520670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083353, 17.131586, 16.729784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687759, -0.251589, 0.680948,
		-0.202592, 0.834236, 0.512842,
		-0.697097, -0.490666, 0.522783,
		17.874224, 16.984386, 16.886620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381630, 17.565935, 17.256691>,  <18.362192, 17.327852, 16.520670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381630, 17.565935, 17.256691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.243576, 17.196774, 17.188417>,  <18.160744, 16.975277, 17.147453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.243576, 17.196774, 17.188417>,  <18.381630, 17.565935, 17.256691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243576, 17.196774, 17.188417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520870, -0.339629, 0.783165,
		-0.780753, 0.181395, 0.597930,
		-0.345136, -0.922902, -0.170683,
		18.140036, 16.919903, 17.137213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155621, 17.355747, 17.271976>,  <18.381630, 17.565935, 17.256691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155621, 17.355747, 17.271976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.344231, 17.505951, 17.591139>,  <19.457397, 17.596073, 17.782637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.344231, 17.505951, 17.591139>,  <19.155621, 17.355747, 17.271976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344231, 17.505951, 17.591139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781068, -0.597879, -0.180202,
		0.409384, 0.708189, -0.575216,
		0.471527, 0.375511, 0.797906,
		19.485689, 17.618605, 17.830511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855627, 17.381662, 17.029074>,  <19.155621, 17.355747, 17.271976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855627, 17.381662, 17.029074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.899530, 17.425852, 17.424194>,  <19.925873, 17.452366, 17.661266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.899530, 17.425852, 17.424194>,  <19.855627, 17.381662, 17.029074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899530, 17.425852, 17.424194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854793, -0.517643, -0.037088,
		0.507230, 0.848435, -0.151250,
		0.109760, 0.110475, 0.987800,
		19.932459, 17.458994, 17.720533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504786, 17.369640, 17.495913>,  <19.855627, 17.381662, 17.029074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504786, 17.369640, 17.495913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821953, 17.554914, 17.654276>,  <21.012253, 17.666079, 17.749294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821953, 17.554914, 17.654276>,  <20.504786, 17.369640, 17.495913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821953, 17.554914, 17.654276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597877, -0.716793, -0.358817,
		0.117584, 0.521216, -0.845286,
		0.792917, 0.463186, 0.395906,
		21.059828, 17.693871, 17.773048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114904, 17.422459, 16.967657>,  <20.504786, 17.369640, 17.495913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114904, 17.422459, 16.967657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.262642, 17.426836, 17.339348>,  <21.351284, 17.429462, 17.562363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.262642, 17.426836, 17.339348>,  <21.114904, 17.422459, 16.967657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262642, 17.426836, 17.339348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590281, -0.775062, -0.225492,
		0.717742, 0.631790, -0.292725,
		0.369344, 0.010945, 0.929228,
		21.373446, 17.430120, 17.618116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808708, 17.416574, 16.949434>,  <21.114904, 17.422459, 16.967657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808708, 17.416574, 16.949434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.706364, 17.279755, 17.311106>,  <21.644957, 17.197662, 17.528109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.706364, 17.279755, 17.311106>,  <21.808708, 17.416574, 16.949434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.706364, 17.279755, 17.311106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620172, -0.775556, -0.117896,
		0.741566, 0.530580, 0.410566,
		-0.255863, -0.342050, 0.904177,
		21.629604, 17.177139, 17.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520573, 18.008951, 17.208366>,  <21.808708, 17.416574, 16.949434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520573, 18.008951, 17.208366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.863895, 17.888308, 17.042311>,  <22.069889, 17.815922, 16.942677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.863895, 17.888308, 17.042311>,  <21.520573, 18.008951, 17.208366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863895, 17.888308, 17.042311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010084, 0.798954, -0.601308,
		0.513039, 0.520293, 0.682705,
		0.858306, -0.301610, -0.415141,
		22.121387, 17.797825, 16.917768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900351, 18.583015, 17.119274>,  <21.520573, 18.008951, 17.208366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900351, 18.583015, 17.119274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068508, 18.353460, 16.838156>,  <22.169403, 18.215727, 16.669485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068508, 18.353460, 16.838156>,  <21.900351, 18.583015, 17.119274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068508, 18.353460, 16.838156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010884, 0.777701, -0.628540,
		0.907277, 0.256584, 0.333186,
		0.420393, -0.573887, -0.702797,
		22.194626, 18.181293, 16.627317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.450153, 18.973484, 16.846277>,  <21.900351, 18.583015, 17.119274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.450153, 18.973484, 16.846277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375919, 18.687464, 16.576681>,  <22.331379, 18.515852, 16.414925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375919, 18.687464, 16.576681>,  <22.450153, 18.973484, 16.846277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375919, 18.687464, 16.576681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169892, 0.652226, -0.738741,
		0.967829, -0.251607, 0.000436,
		-0.185587, -0.715049, -0.673989,
		22.320244, 18.472948, 16.374485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943111, 19.190355, 16.284664>,  <22.450153, 18.973484, 16.846277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943111, 19.190355, 16.284664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.676529, 18.935654, 16.129549>,  <22.516579, 18.782833, 16.036480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.676529, 18.935654, 16.129549>,  <22.943111, 19.190355, 16.284664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.676529, 18.935654, 16.129549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010745, 0.511882, -0.858988,
		0.745467, -0.576645, -0.334305,
		-0.666457, -0.636755, -0.387787,
		22.476591, 18.744627, 16.013212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163038, 19.115021, 15.713521>,  <22.943111, 19.190355, 16.284664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163038, 19.115021, 15.713521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.778059, 19.016272, 15.668366>,  <22.547071, 18.957022, 15.641273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.778059, 19.016272, 15.668366>,  <23.163038, 19.115021, 15.713521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778059, 19.016272, 15.668366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109143, 0.732676, -0.671770,
		0.248550, -0.634224, -0.732108,
		-0.962450, -0.246873, -0.112885,
		22.489325, 18.942209, 15.634501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.014219, 19.057249, 14.978210>,  <23.163038, 19.115021, 15.713521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.014219, 19.057249, 14.978210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.664143, 19.109598, 15.164504>,  <22.454096, 19.141006, 15.276280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.664143, 19.109598, 15.164504>,  <23.014219, 19.057249, 14.978210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664143, 19.109598, 15.164504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265426, 0.674974, -0.688447,
		-0.404457, -0.726142, -0.555997,
		-0.875194, 0.130871, 0.465735,
		22.401585, 19.148859, 15.304224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453196, 18.906076, 14.427112>,  <23.014219, 19.057249, 14.978210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453196, 18.906076, 14.427112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.339945, 19.145464, 14.726892>,  <22.271996, 19.289097, 14.906759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.339945, 19.145464, 14.726892>,  <22.453196, 18.906076, 14.427112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339945, 19.145464, 14.726892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357916, 0.659038, -0.661486,
		-0.889796, -0.455523, 0.027613,
		-0.283125, 0.598471, 0.749449,
		22.255007, 19.325005, 14.951726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.898691, 18.300213, 14.317458>,  <22.453196, 18.906076, 14.427112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.898691, 18.300213, 14.317458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.558270, 18.347038, 14.112714>,  <22.354015, 18.375134, 13.989867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.558270, 18.347038, 14.112714>,  <22.898691, 18.300213, 14.317458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558270, 18.347038, 14.112714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266728, 0.936072, -0.229400,
		0.452284, -0.331760, -0.827874,
		-0.851056, 0.117063, -0.511860,
		22.302952, 18.382156, 13.959156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947241, 18.753929, 13.657934>,  <22.898691, 18.300213, 14.317458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947241, 18.753929, 13.657934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564785, 18.770821, 13.773875>,  <22.335312, 18.780956, 13.843440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564785, 18.770821, 13.773875>,  <22.947241, 18.753929, 13.657934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.564785, 18.770821, 13.773875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045514, 0.956114, -0.289438,
		-0.289356, -0.289935, -0.912256,
		-0.956139, 0.042230, 0.289853,
		22.277943, 18.783489, 13.860831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.361811, 18.879049, 13.141456>,  <22.947241, 18.753929, 13.657934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.361811, 18.879049, 13.141456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320883, 19.053041, 13.499298>,  <22.296326, 19.157436, 13.714004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320883, 19.053041, 13.499298>,  <22.361811, 18.879049, 13.141456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320883, 19.053041, 13.499298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148881, 0.882501, -0.446124,
		-0.983547, -0.178837, -0.025535,
		-0.102318, 0.434982, 0.894607,
		22.290188, 19.183537, 13.767680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848967, 19.323713, 13.105458>,  <22.361811, 18.879049, 13.141456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848967, 19.323713, 13.105458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.075182, 19.467863, 13.402186>,  <22.210911, 19.554354, 13.580223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.075182, 19.467863, 13.402186>,  <21.848967, 19.323713, 13.105458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075182, 19.467863, 13.402186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024812, 0.891637, -0.452070,
		-0.824349, 0.274068, 0.495313,
		0.565537, 0.360374, 0.741821,
		22.244843, 19.575975, 13.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539694, 19.772884, 13.514005>,  <21.848967, 19.323713, 13.105458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539694, 19.772884, 13.514005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.926079, 19.876329, 13.516292>,  <22.157909, 19.938396, 13.517664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.926079, 19.876329, 13.516292>,  <21.539694, 19.772884, 13.514005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.926079, 19.876329, 13.516292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231975, 0.875827, -0.423219,
		-0.114457, 0.407488, 0.906010,
		0.965964, 0.258612, 0.005717,
		22.215868, 19.953913, 13.518007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805731, 19.620892, 13.173009>,  <21.539694, 19.772884, 13.514005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805731, 19.620892, 13.173009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637197, 19.932339, 12.987005>,  <20.536077, 20.119207, 12.875403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637197, 19.932339, 12.987005>,  <20.805731, 19.620892, 13.173009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637197, 19.932339, 12.987005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117897, -0.555417, -0.823172,
		-0.899209, -0.292008, 0.325813,
		-0.421335, 0.778616, -0.465010,
		20.510798, 20.165924, 12.847503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175644, 19.380234, 12.737740>,  <20.805731, 19.620892, 13.173009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175644, 19.380234, 12.737740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.307343, 19.723091, 12.579298>,  <20.386362, 19.928806, 12.484233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.307343, 19.723091, 12.579298>,  <20.175644, 19.380234, 12.737740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307343, 19.723091, 12.579298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214579, -0.340599, -0.915396,
		-0.919539, 0.386388, 0.071783,
		0.329249, 0.857145, -0.396104,
		20.406116, 19.980234, 12.460466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.547939, 19.680317, 12.325671>,  <20.175644, 19.380234, 12.737740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.547939, 19.680317, 12.325671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898165, 19.822756, 12.195084>,  <20.108301, 19.908218, 12.116732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898165, 19.822756, 12.195084>,  <19.547939, 19.680317, 12.325671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898165, 19.822756, 12.195084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185559, -0.376046, -0.907831,
		-0.446042, 0.855444, -0.263176,
		0.875565, 0.356096, -0.326468,
		20.160835, 19.929585, 12.097143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<11.886208, 19.328184, 24.614998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118855, 19.002840, 24.609880>,  <12.258444, 18.807634, 24.606810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118855, 19.002840, 24.609880>,  <11.886208, 19.328184, 24.614998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.118855, 19.002840, 24.609880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162332, 0.131463, -0.977940,
		0.797099, 0.566712, 0.208496,
		0.581620, -0.813360, -0.012794,
		12.293342, 18.758833, 24.606043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468488, 19.544287, 24.393227>,  <11.886208, 19.328184, 24.614998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468488, 19.544287, 24.393227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457319, 19.150475, 24.324036>,  <12.450619, 18.914188, 24.282520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457319, 19.150475, 24.324036>,  <12.468488, 19.544287, 24.393227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457319, 19.150475, 24.324036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233050, 0.161867, -0.958899,
		0.972064, -0.067086, 0.224925,
		-0.027920, -0.984530, -0.172979,
		12.448943, 18.855116, 24.272142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993311, 19.434628, 23.934711>,  <12.468488, 19.544287, 24.393227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993311, 19.434628, 23.934711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730027, 19.138004, 23.882784>,  <12.572057, 18.960032, 23.851627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730027, 19.138004, 23.882784>,  <12.993311, 19.434628, 23.934711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.730027, 19.138004, 23.882784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198922, -0.005001, -0.980002,
		0.726078, -0.670872, 0.150804,
		-0.658210, -0.741557, -0.129820,
		12.532564, 18.915537, 23.843838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348989, 18.993546, 23.503443>,  <12.993311, 19.434628, 23.934711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348989, 18.993546, 23.503443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970229, 18.868860, 23.471912>,  <12.742973, 18.794048, 23.452993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970229, 18.868860, 23.471912>,  <13.348989, 18.993546, 23.503443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.970229, 18.868860, 23.471912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123142, -0.125113, -0.984471,
		0.297011, -0.941903, 0.156855,
		-0.946900, -0.311714, -0.078827,
		12.686159, 18.775347, 23.448265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374760, 18.493353, 23.031483>,  <13.348989, 18.993546, 23.503443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374760, 18.493353, 23.031483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981146, 18.564461, 23.034964>,  <12.744978, 18.607124, 23.037052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981146, 18.564461, 23.034964>,  <13.374760, 18.493353, 23.031483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981146, 18.564461, 23.034964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043487, -0.192734, -0.980287,
		-0.172572, -0.965017, 0.197387,
		-0.984036, 0.177754, 0.008706,
		12.685936, 18.617790, 23.037575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140312, 17.926014, 22.580952>,  <13.374760, 18.493353, 23.031483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140312, 17.926014, 22.580952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.855475, 18.206818, 22.585056>,  <12.684573, 18.375299, 22.587519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.855475, 18.206818, 22.585056>,  <13.140312, 17.926014, 22.580952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855475, 18.206818, 22.585056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057209, -0.043453, -0.997416,
		-0.699752, -0.710839, 0.071104,
		-0.712092, 0.702011, 0.010260,
		12.641848, 18.417421, 22.588135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.598765, 17.593721, 22.203270>,  <13.140312, 17.926014, 22.580952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.598765, 17.593721, 22.203270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540966, 17.989515, 22.200668>,  <12.506287, 18.226992, 22.199108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540966, 17.989515, 22.200668>,  <12.598765, 17.593721, 22.203270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540966, 17.989515, 22.200668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344652, -0.056489, -0.937029,
		-0.927542, -0.133158, 0.349191,
		-0.144499, 0.989484, -0.006503,
		12.497617, 18.286360, 22.198717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850997, 17.772068, 22.062086>,  <12.598765, 17.593721, 22.203270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850997, 17.772068, 22.062086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.071862, 18.083746, 21.943445>,  <12.204382, 18.270752, 21.872261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.071862, 18.083746, 21.943445>,  <11.850997, 17.772068, 22.062086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.071862, 18.083746, 21.943445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278728, -0.162765, -0.946477,
		-0.785764, 0.605282, 0.127310,
		0.552164, 0.779193, -0.296604,
		12.237512, 18.317503, 21.854464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.543288, 18.010000, 21.416813>,  <11.850997, 17.772068, 22.062086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.543288, 18.010000, 21.416813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.894809, 18.200722, 21.424442>,  <12.105721, 18.315155, 21.429020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.894809, 18.200722, 21.424442>,  <11.543288, 18.010000, 21.416813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.894809, 18.200722, 21.424442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105932, -0.155956, -0.982067,
		-0.465279, 0.865064, -0.187563,
		0.878802, 0.476805, 0.019075,
		12.158449, 18.343763, 21.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554515, 18.703987, 21.054087>,  <11.543288, 18.010000, 21.416813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554515, 18.703987, 21.054087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941771, 18.604292, 21.044409>,  <12.174124, 18.544476, 21.038603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941771, 18.604292, 21.044409>,  <11.554515, 18.703987, 21.054087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941771, 18.604292, 21.044409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034313, 0.227754, -0.973114,
		0.248046, 0.941281, 0.229050,
		0.968140, -0.249237, -0.024195,
		12.232213, 18.529520, 21.037149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973717, 19.231512, 20.692305>,  <11.554515, 18.703987, 21.054087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973717, 19.231512, 20.692305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223250, 18.919603, 20.671192>,  <12.372971, 18.732458, 20.658525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223250, 18.919603, 20.671192>,  <11.973717, 19.231512, 20.692305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223250, 18.919603, 20.671192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078768, 0.129917, -0.988391,
		0.777577, 0.612436, 0.142468,
		0.623835, -0.779772, -0.052780,
		12.410400, 18.685671, 20.655357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390018, 19.457357, 20.211525>,  <11.973717, 19.231512, 20.692305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390018, 19.457357, 20.211525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.466318, 19.065044, 20.227924>,  <12.512098, 18.829657, 20.237764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.466318, 19.065044, 20.227924>,  <12.390018, 19.457357, 20.211525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.466318, 19.065044, 20.227924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028495, -0.036214, -0.998938,
		0.981225, 0.191715, 0.021039,
		0.190749, -0.980782, 0.040997,
		12.523543, 18.770809, 20.240223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.940296, 19.738487, 19.957003>,  <12.390018, 19.457357, 20.211525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.940296, 19.738487, 19.957003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219626, 19.457495, 19.902067>,  <13.387224, 19.288898, 19.869106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219626, 19.457495, 19.902067>,  <12.940296, 19.738487, 19.957003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.219626, 19.457495, 19.902067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588031, 0.672432, -0.449505,
		0.408120, 0.233141, 0.882657,
		0.698325, -0.702481, -0.137339,
		13.429124, 19.246750, 19.860865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151935, 20.195827, 19.340250>,  <12.940296, 19.738487, 19.957003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151935, 20.195827, 19.340250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509202, 20.167439, 19.162615>,  <13.723562, 20.150406, 19.056034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509202, 20.167439, 19.162615>,  <13.151935, 20.195827, 19.340250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509202, 20.167439, 19.162615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347271, 0.736274, 0.580778,
		0.285753, -0.672951, 0.682262,
		0.893168, -0.070971, -0.444089,
		13.777152, 20.146147, 19.029388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616451, 20.203037, 19.831285>,  <13.151935, 20.195827, 19.340250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616451, 20.203037, 19.831285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844792, 20.283676, 19.512918>,  <13.981797, 20.332060, 19.321898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844792, 20.283676, 19.512918>,  <13.616451, 20.203037, 19.831285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844792, 20.283676, 19.512918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545931, 0.630859, 0.551342,
		0.613256, -0.749252, 0.250075,
		0.570856, 0.201590, -0.795918,
		14.016047, 20.344154, 19.274143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306349, 20.116182, 20.066959>,  <13.616451, 20.203037, 19.831285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306349, 20.116182, 20.066959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299971, 20.376091, 19.762974>,  <14.296144, 20.532036, 19.580584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299971, 20.376091, 19.762974>,  <14.306349, 20.116182, 20.066959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299971, 20.376091, 19.762974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562381, 0.634267, 0.530503,
		0.826725, -0.418929, -0.375532,
		-0.015945, 0.649772, -0.759962,
		14.295187, 20.571022, 19.534985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982574, 20.209389, 19.919819>,  <14.306349, 20.116182, 20.066959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982574, 20.209389, 19.919819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792995, 20.511379, 19.738541>,  <14.679248, 20.692574, 19.629774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792995, 20.511379, 19.738541>,  <14.982574, 20.209389, 19.919819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792995, 20.511379, 19.738541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579385, 0.654940, 0.485146,
		0.663089, -0.032641, -0.747829,
		-0.473948, 0.754976, -0.453195,
		14.650811, 20.737871, 19.602583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397304, 20.734552, 19.965736>,  <14.982574, 20.209389, 19.919819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397304, 20.734552, 19.965736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067814, 20.945663, 19.882860>,  <14.870120, 21.072330, 19.833136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067814, 20.945663, 19.882860>,  <15.397304, 20.734552, 19.965736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067814, 20.945663, 19.882860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326213, 0.740028, 0.588169,
		0.463750, 0.416901, -0.781748,
		-0.823724, 0.527780, -0.207189,
		14.820697, 21.103998, 19.820704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724187, 21.570038, 19.887152>,  <15.397304, 20.734552, 19.965736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724187, 21.570038, 19.887152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329874, 21.571892, 19.954338>,  <15.093287, 21.573004, 19.994650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329874, 21.571892, 19.954338>,  <15.724187, 21.570038, 19.887152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329874, 21.571892, 19.954338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119931, 0.719546, 0.684010,
		-0.117690, 0.694429, -0.709871,
		-0.985782, 0.004634, 0.167967,
		15.034140, 21.573282, 20.004728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653955, 22.183891, 20.017923>,  <15.724187, 21.570038, 19.887152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653955, 22.183891, 20.017923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328288, 22.008078, 20.169682>,  <15.132888, 21.902590, 20.260736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328288, 22.008078, 20.169682>,  <15.653955, 22.183891, 20.017923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.328288, 22.008078, 20.169682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068241, 0.576458, 0.814272,
		-0.576608, 0.688843, -0.439339,
		-0.814166, -0.439535, 0.379398,
		15.084038, 21.876217, 20.283501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204335, 22.757822, 20.366165>,  <15.653955, 22.183891, 20.017923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204335, 22.757822, 20.366165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060691, 22.423632, 20.532549>,  <14.974504, 22.223118, 20.632380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060691, 22.423632, 20.532549>,  <15.204335, 22.757822, 20.366165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060691, 22.423632, 20.532549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043181, 0.460083, 0.886825,
		-0.932295, 0.300507, -0.201298,
		-0.359111, -0.835475, 0.415957,
		14.952957, 22.172989, 20.657335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727512, 22.934519, 20.929064>,  <15.204335, 22.757822, 20.366165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727512, 22.934519, 20.929064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841063, 22.566324, 21.036482>,  <14.909193, 22.345407, 21.100933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841063, 22.566324, 21.036482>,  <14.727512, 22.934519, 20.929064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841063, 22.566324, 21.036482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037981, 0.269055, 0.962376,
		-0.958108, -0.283396, 0.041417,
		0.283876, -0.920487, 0.268547,
		14.926226, 22.290178, 21.117046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324222, 22.766706, 21.425247>,  <14.727512, 22.934519, 20.929064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324222, 22.766706, 21.425247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623492, 22.507002, 21.479935>,  <14.803055, 22.351179, 21.512747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623492, 22.507002, 21.479935>,  <14.324222, 22.766706, 21.425247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623492, 22.507002, 21.479935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066052, 0.132151, 0.989026,
		-0.660204, -0.748996, 0.055987,
		0.748176, -0.649262, 0.136719,
		14.847945, 22.312223, 21.520950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111000, 22.465101, 22.066021>,  <14.324222, 22.766706, 21.425247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111000, 22.465101, 22.066021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500278, 22.387768, 22.016205>,  <14.733846, 22.341368, 21.986315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500278, 22.387768, 22.016205>,  <14.111000, 22.465101, 22.066021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500278, 22.387768, 22.016205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142096, 0.079713, 0.986638,
		-0.180826, -0.977889, 0.105048,
		0.973196, -0.193337, -0.124540,
		14.792237, 22.329767, 21.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248209, 21.865683, 22.413544>,  <14.111000, 22.465101, 22.066021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248209, 21.865683, 22.413544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592589, 22.067211, 22.385475>,  <14.799218, 22.188129, 22.368635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592589, 22.067211, 22.385475>,  <14.248209, 21.865683, 22.413544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592589, 22.067211, 22.385475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177460, -0.168202, 0.969647,
		0.476728, -0.847272, -0.234223,
		0.860952, 0.503823, -0.070170,
		14.850875, 22.218359, 22.364424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659680, 21.448465, 22.868238>,  <14.248209, 21.865683, 22.413544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659680, 21.448465, 22.868238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847075, 21.796726, 22.808258>,  <14.959511, 22.005682, 22.772270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847075, 21.796726, 22.808258>,  <14.659680, 21.448465, 22.868238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847075, 21.796726, 22.808258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261166, 0.025665, 0.964953,
		0.843987, -0.491228, -0.215361,
		0.468484, 0.870653, -0.149953,
		14.987619, 22.057922, 22.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303627, 21.387209, 23.209301>,  <14.659680, 21.448465, 22.868238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303627, 21.387209, 23.209301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279207, 21.783987, 23.164909>,  <15.264555, 22.022055, 23.138275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279207, 21.783987, 23.164909>,  <15.303627, 21.387209, 23.209301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279207, 21.783987, 23.164909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384784, 0.125980, 0.914369,
		0.920986, 0.013120, -0.389376,
		-0.061050, 0.991946, -0.110977,
		15.260892, 22.081572, 23.131617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916919, 21.698818, 23.538420>,  <15.303627, 21.387209, 23.209301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916919, 21.698818, 23.538420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635094, 21.982521, 23.547770>,  <15.465999, 22.152742, 23.553379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635094, 21.982521, 23.547770>,  <15.916919, 21.698818, 23.538420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635094, 21.982521, 23.547770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191158, 0.157966, 0.968765,
		0.683411, 0.687023, -0.246877,
		-0.704562, 0.709257, 0.023374,
		15.423725, 22.195299, 23.554781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954968, 20.988041, 23.365185>,  <15.916919, 21.698818, 23.538420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954968, 20.988041, 23.365185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222410, 20.696753, 23.425398>,  <16.382875, 20.521978, 23.461525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222410, 20.696753, 23.425398>,  <15.954968, 20.988041, 23.365185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.222410, 20.696753, 23.425398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105891, -0.293608, -0.950043,
		0.736040, 0.619263, -0.273420,
		0.668605, -0.728223, 0.150533,
		16.422991, 20.478287, 23.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359333, 21.055866, 22.846525>,  <15.954968, 20.988041, 23.365185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359333, 21.055866, 22.846525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444910, 20.682373, 22.961329>,  <16.496256, 20.458277, 23.030210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444910, 20.682373, 22.961329>,  <16.359333, 21.055866, 22.846525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444910, 20.682373, 22.961329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081652, -0.309876, -0.947265,
		0.973428, 0.179224, -0.142536,
		0.213941, -0.933732, 0.287008,
		16.509092, 20.402254, 23.047430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729246, 20.750786, 22.269592>,  <16.359333, 21.055866, 22.846525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729246, 20.750786, 22.269592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632023, 20.428251, 22.485273>,  <16.573689, 20.234730, 22.614683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632023, 20.428251, 22.485273>,  <16.729246, 20.750786, 22.269592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632023, 20.428251, 22.485273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000613, -0.556001, -0.831181,
		0.970012, -0.201694, 0.135635,
		-0.243058, -0.806339, 0.539204,
		16.559105, 20.186350, 22.647034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135351, 20.258423, 22.074265>,  <16.729246, 20.750786, 22.269592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135351, 20.258423, 22.074265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796024, 20.095577, 22.209686>,  <16.592428, 19.997869, 22.290939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796024, 20.095577, 22.209686>,  <17.135351, 20.258423, 22.074265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796024, 20.095577, 22.209686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100226, -0.504371, -0.857651,
		0.519919, -0.761491, 0.387062,
		-0.848316, -0.407115, 0.338553,
		16.541529, 19.973442, 22.311253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212418, 19.544556, 21.920469>,  <17.135351, 20.258423, 22.074265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212418, 19.544556, 21.920469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819023, 19.607292, 21.956593>,  <16.582987, 19.644934, 21.978266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819023, 19.607292, 21.956593>,  <17.212418, 19.544556, 21.920469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819023, 19.607292, 21.956593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150057, -0.427715, -0.891371,
		-0.101177, -0.890203, 0.444187,
		-0.983487, 0.156839, 0.090307,
		16.523977, 19.654345, 21.983685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979675, 19.015814, 21.705330>,  <17.212418, 19.544556, 21.920469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979675, 19.015814, 21.705330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660168, 19.255989, 21.690121>,  <16.468464, 19.400093, 21.680996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660168, 19.255989, 21.690121>,  <16.979675, 19.015814, 21.705330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.660168, 19.255989, 21.690121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336753, -0.498565, -0.798768,
		-0.498565, -0.625226, 0.600437,
		0.798768, -0.600437, 0.038021,
		16.420538, 19.436121, 21.678715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404949, 18.578873, 21.454834>,  <16.979675, 19.015814, 21.705330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404949, 18.578873, 21.454834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248577, 18.944813, 21.414394>,  <16.154755, 19.164377, 21.390131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248577, 18.944813, 21.414394>,  <16.404949, 18.578873, 21.454834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248577, 18.944813, 21.414394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445891, -0.284326, -0.848728,
		-0.805205, -0.286713, 0.519076,
		-0.390928, 0.914852, -0.101098,
		16.131298, 19.219269, 21.384066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667317, 18.509560, 21.341028>,  <16.404949, 18.578873, 21.454834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667317, 18.509560, 21.341028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767920, 18.865490, 21.188736>,  <15.828280, 19.079048, 21.097361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767920, 18.865490, 21.188736>,  <15.667317, 18.509560, 21.341028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767920, 18.865490, 21.188736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466540, -0.233196, -0.853206,
		-0.847989, 0.392212, 0.356489,
		0.251506, 0.889826, -0.380730,
		15.843371, 19.132437, 21.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101881, 18.756372, 21.078144>,  <15.667317, 18.509560, 21.341028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101881, 18.756372, 21.078144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392418, 18.942045, 20.875378>,  <15.566740, 19.053450, 20.753717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392418, 18.942045, 20.875378>,  <15.101881, 18.756372, 21.078144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392418, 18.942045, 20.875378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415723, -0.290630, -0.861806,
		-0.547359, 0.836702, -0.018126,
		0.726342, 0.464182, -0.506915,
		15.610320, 19.081301, 20.723303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.758521, 19.042458, 20.479769>,  <15.101881, 18.756372, 21.078144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.758521, 19.042458, 20.479769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147951, 19.013527, 20.393126>,  <15.381609, 18.996168, 20.341139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147951, 19.013527, 20.393126>,  <14.758521, 19.042458, 20.479769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147951, 19.013527, 20.393126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218298, -0.573245, -0.789770,
		-0.067050, 0.816186, -0.573886,
		0.973576, -0.072324, -0.216608,
		15.440024, 18.991829, 20.328142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364014, 18.644091, 19.914152>,  <14.758521, 19.042458, 20.479769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364014, 18.644091, 19.914152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299590, 18.769053, 20.288630>,  <14.260936, 18.844030, 20.513317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299590, 18.769053, 20.288630>,  <14.364014, 18.644091, 19.914152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299590, 18.769053, 20.288630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783904, 0.616813, -0.070969,
		-0.599629, 0.722457, -0.344240,
		-0.161059, 0.312407, 0.936195,
		14.251272, 18.862774, 20.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745442, 18.279808, 20.247185>,  <14.364014, 18.644091, 19.914152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.745442, 18.279808, 20.247185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893890, 18.278481, 20.618616>,  <13.982959, 18.277683, 20.841475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893890, 18.278481, 20.618616>,  <13.745442, 18.279808, 20.247185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893890, 18.278481, 20.618616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315733, -0.940865, 0.122824,
		0.873260, -0.338765, -0.350222,
		0.371120, -0.003319, 0.928579,
		14.005226, 18.277485, 20.897190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.088814, 19.725754, 28.585466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.169722, 20.115782, 28.621971>,  <18.218266, 20.349798, 28.643873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.169722, 20.115782, 28.621971>,  <18.088814, 19.725754, 28.585466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169722, 20.115782, 28.621971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526816, 0.186891, -0.829178,
		-0.825561, 0.119639, 0.551485,
		0.202270, 0.975068, 0.091262,
		18.230402, 20.408302, 28.649349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600899, 20.127026, 28.248144>,  <18.088814, 19.725754, 28.585466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600899, 20.127026, 28.248144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.852110, 20.429390, 28.322098>,  <18.002836, 20.610807, 28.366470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.852110, 20.429390, 28.322098>,  <17.600899, 20.127026, 28.248144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852110, 20.429390, 28.322098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255841, 0.424936, -0.868317,
		-0.734932, 0.498028, 0.460265,
		0.628029, 0.755909, 0.184883,
		18.040518, 20.656162, 28.377563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165398, 20.610151, 28.263084>,  <17.600899, 20.127026, 28.248144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165398, 20.610151, 28.263084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.531452, 20.736126, 28.162416>,  <17.751085, 20.811710, 28.102016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.531452, 20.736126, 28.162416>,  <17.165398, 20.610151, 28.263084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531452, 20.736126, 28.162416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352768, 0.323415, -0.878042,
		-0.195132, 0.892311, 0.407068,
		0.915138, 0.314934, -0.251670,
		17.805994, 20.830606, 28.086916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046286, 21.213770, 27.870718>,  <17.165398, 20.610151, 28.263084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046286, 21.213770, 27.870718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.426548, 21.141359, 27.769938>,  <17.654705, 21.097914, 27.709469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.426548, 21.141359, 27.769938>,  <17.046286, 21.213770, 27.870718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426548, 21.141359, 27.769938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223467, 0.163777, -0.960854,
		0.215202, 0.969746, 0.115243,
		0.950658, -0.181024, -0.251951,
		17.711746, 21.087051, 27.694353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203480, 21.714077, 27.278627>,  <17.046286, 21.213770, 27.870718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203480, 21.714077, 27.278627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.486355, 21.431316, 27.283873>,  <17.656080, 21.261660, 27.287020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.486355, 21.431316, 27.283873>,  <17.203480, 21.714077, 27.278627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486355, 21.431316, 27.283873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036132, 0.017608, -0.999192,
		0.706100, 0.707092, 0.037994,
		0.707189, -0.706903, 0.013115,
		17.698511, 21.219246, 27.287807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748425, 22.051857, 26.823690>,  <17.203480, 21.714077, 27.278627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748425, 22.051857, 26.823690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.775482, 21.652840, 26.831024>,  <17.791718, 21.413429, 26.835424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.775482, 21.652840, 26.831024>,  <17.748425, 22.051857, 26.823690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775482, 21.652840, 26.831024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137944, -0.008851, -0.990400,
		0.988127, 0.069524, 0.137006,
		0.067644, -0.997541, 0.018337,
		17.795774, 21.353577, 26.836525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330896, 21.877399, 26.397676>,  <17.748425, 22.051857, 26.823690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330896, 21.877399, 26.397676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.091078, 21.558559, 26.426451>,  <17.947187, 21.367254, 26.443716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.091078, 21.558559, 26.426451>,  <18.330896, 21.877399, 26.397676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091078, 21.558559, 26.426451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004075, -0.086841, -0.996214,
		0.800331, -0.597567, 0.048817,
		-0.599544, -0.797102, 0.071936,
		17.911215, 21.319429, 26.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339998, 21.713390, 25.796707>,  <18.330896, 21.877399, 26.397676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339998, 21.713390, 25.796707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.068701, 21.439837, 25.904249>,  <17.905922, 21.275703, 25.968775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.068701, 21.439837, 25.904249>,  <18.339998, 21.713390, 25.796707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068701, 21.439837, 25.904249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075786, -0.298821, -0.951295,
		0.730918, -0.665586, 0.150845,
		-0.678245, -0.683887, 0.268855,
		17.865227, 21.234671, 25.984905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573441, 20.936535, 25.551056>,  <18.339998, 21.713390, 25.796707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573441, 20.936535, 25.551056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.178360, 20.990692, 25.582321>,  <17.941311, 21.023186, 25.601080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.178360, 20.990692, 25.582321>,  <18.573441, 20.936535, 25.551056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178360, 20.990692, 25.582321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130969, -0.443562, -0.886623,
		-0.085371, -0.885958, 0.455840,
		-0.987704, 0.135393, 0.078165,
		17.882050, 21.031311, 25.605770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331169, 20.418320, 25.113844>,  <18.573441, 20.936535, 25.551056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331169, 20.418320, 25.113844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.010477, 20.643291, 25.194742>,  <17.818062, 20.778275, 25.243282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.010477, 20.643291, 25.194742>,  <18.331169, 20.418320, 25.113844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010477, 20.643291, 25.194742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498513, -0.442575, -0.745394,
		-0.329723, -0.698426, 0.635204,
		-0.801728, 0.562431, 0.202247,
		17.769958, 20.812021, 25.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783165, 19.910458, 25.169886>,  <18.331169, 20.418320, 25.113844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783165, 19.910458, 25.169886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.610641, 20.257444, 25.070711>,  <17.507128, 20.465637, 25.011208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.610641, 20.257444, 25.070711>,  <17.783165, 19.910458, 25.169886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.610641, 20.257444, 25.070711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605786, -0.482101, -0.632931,
		-0.668577, -0.122794, 0.733435,
		-0.431310, 0.867468, -0.247935,
		17.481249, 20.517685, 24.996330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048483, 19.788040, 25.127966>,  <17.783165, 19.910458, 25.169886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048483, 19.788040, 25.127966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.101315, 20.117649, 24.907587>,  <17.133013, 20.315414, 24.775360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.101315, 20.117649, 24.907587>,  <17.048483, 19.788040, 25.127966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101315, 20.117649, 24.907587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773859, -0.261615, -0.576802,
		-0.619433, 0.502537, 0.603124,
		0.132079, 0.824023, -0.550946,
		17.140938, 20.364857, 24.742304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365664, 20.181688, 24.938200>,  <17.048483, 19.788040, 25.127966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365664, 20.181688, 24.938200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.617050, 20.323154, 24.661085>,  <16.767881, 20.408033, 24.494816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.617050, 20.323154, 24.661085>,  <16.365664, 20.181688, 24.938200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.617050, 20.323154, 24.661085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650186, -0.250028, -0.717457,
		-0.426955, 0.901337, 0.072813,
		0.628465, 0.353663, -0.692787,
		16.805590, 20.429253, 24.453249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029942, 20.629892, 24.438982>,  <16.365664, 20.181688, 24.938200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029942, 20.629892, 24.438982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.354797, 20.520365, 24.232893>,  <16.549711, 20.454649, 24.109240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.354797, 20.520365, 24.232893>,  <16.029942, 20.629892, 24.438982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354797, 20.520365, 24.232893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557465, -0.103499, -0.823724,
		0.172227, 0.956196, -0.236700,
		0.812140, -0.273819, -0.515221,
		16.598440, 20.438219, 24.078327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625584, 21.300795, 24.484575>,  <16.029942, 20.629892, 24.438982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625584, 21.300795, 24.484575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.580218, 21.689089, 24.399906>,  <15.552999, 21.922066, 24.349104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.580218, 21.689089, 24.399906>,  <15.625584, 21.300795, 24.484575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580218, 21.689089, 24.399906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325807, 0.164931, 0.930939,
		0.938609, 0.174545, 0.297568,
		-0.113413, 0.970738, -0.211674,
		15.546195, 21.980310, 24.336405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203281, 21.704914, 24.798717>,  <15.625584, 21.300795, 24.484575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203281, 21.704914, 24.798717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.844196, 21.876755, 24.759623>,  <15.628745, 21.979858, 24.736166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.844196, 21.876755, 24.759623>,  <16.203281, 21.704914, 24.798717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844196, 21.876755, 24.759623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138220, -0.063974, 0.988333,
		0.418336, 0.900750, 0.116810,
		-0.897714, 0.429601, -0.097739,
		15.574883, 22.005634, 24.730301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170231, 22.165989, 25.304789>,  <16.203281, 21.704914, 24.798717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170231, 22.165989, 25.304789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.782744, 22.087708, 25.243742>,  <15.550253, 22.040739, 25.207115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.782744, 22.087708, 25.243742>,  <16.170231, 22.165989, 25.304789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782744, 22.087708, 25.243742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130250, -0.122532, 0.983881,
		-0.211251, 0.972978, 0.093207,
		-0.968715, -0.195705, -0.152616,
		15.492130, 22.028996, 25.197958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802311, 22.617178, 25.727514>,  <16.170231, 22.165989, 25.304789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802311, 22.617178, 25.727514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.568581, 22.303972, 25.642239>,  <15.428343, 22.116049, 25.591074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.568581, 22.303972, 25.642239>,  <15.802311, 22.617178, 25.727514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568581, 22.303972, 25.642239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206821, -0.110340, 0.972137,
		-0.784722, 0.612136, -0.097470,
		-0.584325, -0.783016, -0.213188,
		15.393283, 22.069067, 25.578281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364172, 22.710938, 26.196159>,  <15.802311, 22.617178, 25.727514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364172, 22.710938, 26.196159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.233438, 22.351255, 26.079809>,  <15.154999, 22.135447, 26.010000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.233438, 22.351255, 26.079809>,  <15.364172, 22.710938, 26.196159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233438, 22.351255, 26.079809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268306, -0.206830, 0.940868,
		-0.906196, 0.385551, -0.173664,
		-0.326834, -0.899206, -0.290875,
		15.135388, 22.081493, 25.992546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708868, 22.566153, 26.489679>,  <15.364172, 22.710938, 26.196159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708868, 22.566153, 26.489679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.847579, 22.200975, 26.403624>,  <14.930805, 21.981869, 26.351990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.847579, 22.200975, 26.403624>,  <14.708868, 22.566153, 26.489679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847579, 22.200975, 26.403624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175018, -0.288327, 0.941401,
		-0.921475, -0.288802, -0.259766,
		0.346776, -0.912941, -0.215141,
		14.951612, 21.927094, 26.339081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279104, 22.159660, 26.928686>,  <14.708868, 22.566153, 26.489679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279104, 22.159660, 26.928686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.578294, 21.917915, 26.818937>,  <14.757808, 21.772867, 26.753088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.578294, 21.917915, 26.818937>,  <14.279104, 22.159660, 26.928686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578294, 21.917915, 26.818937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065511, -0.478583, 0.875595,
		-0.660487, -0.636948, -0.397560,
		0.747974, -0.604363, -0.274371,
		14.802686, 21.736607, 26.736626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073730, 21.522541, 27.107441>,  <14.279104, 22.159660, 26.928686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073730, 21.522541, 27.107441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.473207, 21.515408, 27.088259>,  <14.712893, 21.511127, 27.076750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.473207, 21.515408, 27.088259>,  <14.073730, 21.522541, 27.107441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473207, 21.515408, 27.088259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043471, -0.198484, 0.979140,
		-0.026980, -0.979942, -0.197449,
		0.998690, -0.017833, -0.047954,
		14.772814, 21.510057, 27.073872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.157446, 21.094152, 27.639215>,  <14.073730, 21.522541, 27.107441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.157446, 21.094152, 27.639215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.531258, 21.217068, 27.567408>,  <14.755545, 21.290817, 27.524323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.531258, 21.217068, 27.567408>,  <14.157446, 21.094152, 27.639215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.531258, 21.217068, 27.567408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257687, -0.236360, 0.936873,
		0.245462, -0.921795, -0.300070,
		0.934530, 0.307291, -0.179518,
		14.811617, 21.309256, 27.513552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.585711, 20.562544, 27.883488>,  <14.157446, 21.094152, 27.639215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.585711, 20.562544, 27.883488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.799557, 20.900581, 27.884262>,  <14.927864, 21.103403, 27.884727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.799557, 20.900581, 27.884262>,  <14.585711, 20.562544, 27.883488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799557, 20.900581, 27.884262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394827, -0.251798, 0.883578,
		0.747194, -0.471608, -0.468281,
		0.534614, 0.845094, 0.001938,
		14.959941, 21.154110, 27.884844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244269, 20.444347, 28.134455>,  <14.585711, 20.562544, 27.883488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244269, 20.444347, 28.134455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.242001, 20.836834, 28.211580>,  <15.240640, 21.072327, 28.257856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.242001, 20.836834, 28.211580>,  <15.244269, 20.444347, 28.134455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242001, 20.836834, 28.211580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397650, -0.174705, 0.900751,
		0.917520, 0.081783, -0.389190,
		-0.005672, 0.981218, 0.192816,
		15.240299, 21.131199, 28.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793055, 20.497419, 28.512156>,  <15.244269, 20.444347, 28.134455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793055, 20.497419, 28.512156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.585957, 20.833197, 28.578213>,  <15.461698, 21.034664, 28.617847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.585957, 20.833197, 28.578213>,  <15.793055, 20.497419, 28.512156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585957, 20.833197, 28.578213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154812, -0.097917, 0.983079,
		0.841411, 0.534552, -0.079260,
		-0.517746, 0.839444, 0.165144,
		15.430633, 21.085030, 28.627756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231947, 20.952709, 28.903185>,  <15.793055, 20.497419, 28.512156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231947, 20.952709, 28.903185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.866698, 21.107630, 28.954105>,  <15.647549, 21.200583, 28.984657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.866698, 21.107630, 28.954105>,  <16.231947, 20.952709, 28.903185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866698, 21.107630, 28.954105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213468, 0.188184, 0.958654,
		0.347330, 0.902544, -0.254511,
		-0.913123, 0.387299, 0.127303,
		15.592761, 21.223820, 28.992296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350386, 21.683037, 29.074514>,  <16.231947, 20.952709, 28.903185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350386, 21.683037, 29.074514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009121, 21.516052, 29.199631>,  <15.804361, 21.415861, 29.274700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009121, 21.516052, 29.199631>,  <16.350386, 21.683037, 29.074514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.009121, 21.516052, 29.199631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371160, -0.064467, 0.926328,
		-0.366541, 0.906405, 0.209945,
		-0.853163, -0.417461, 0.312792,
		15.753172, 21.390814, 29.293468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.172384, 14.088943, 28.270567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.988146, 14.439095, 28.329296>,  <17.877604, 14.649187, 28.364532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.988146, 14.439095, 28.329296>,  <18.172384, 14.088943, 28.270567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988146, 14.439095, 28.329296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624947, -0.202366, -0.753982,
		-0.630312, -0.439036, 0.640277,
		-0.460595, 0.875383, 0.146820,
		17.849968, 14.701711, 28.373343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365824, 14.013947, 28.349470>,  <18.172384, 14.088943, 28.270567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.365824, 14.013947, 28.349470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.454533, 14.380836, 28.217096>,  <17.507759, 14.600969, 28.137672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.454533, 14.380836, 28.217096>,  <17.365824, 14.013947, 28.349470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454533, 14.380836, 28.217096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582263, -0.147668, -0.799477,
		-0.782167, 0.369994, 0.501317,
		0.221773, 0.917223, -0.330935,
		17.521065, 14.656003, 28.117815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679922, 14.310287, 28.025356>,  <17.365824, 14.013947, 28.349470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679922, 14.310287, 28.025356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.987240, 14.523617, 27.883772>,  <17.171631, 14.651614, 27.798820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.987240, 14.523617, 27.883772>,  <16.679922, 14.310287, 28.025356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987240, 14.523617, 27.883772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332324, -0.140267, -0.932677,
		-0.547066, 0.834202, 0.069469,
		0.768296, 0.533323, -0.353961,
		17.217730, 14.683614, 27.777584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336800, 14.797334, 27.696781>,  <16.679922, 14.310287, 28.025356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336800, 14.797334, 27.696781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.700119, 14.793395, 27.529501>,  <16.918112, 14.791032, 27.429132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.700119, 14.793395, 27.529501>,  <16.336800, 14.797334, 27.696781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.700119, 14.793395, 27.529501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418072, -0.055719, -0.906704,
		-0.014373, 0.998398, -0.054727,
		0.908300, -0.009848, -0.418203,
		16.972609, 14.790441, 27.404039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349070, 15.332220, 27.259985>,  <16.336800, 14.797334, 27.696781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349070, 15.332220, 27.259985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667379, 15.130628, 27.125675>,  <16.858366, 15.009672, 27.045090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667379, 15.130628, 27.125675>,  <16.349070, 15.332220, 27.259985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667379, 15.130628, 27.125675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419853, -0.059566, -0.905635,
		0.436422, 0.861658, -0.258999,
		0.795776, -0.503981, -0.335774,
		16.906113, 14.979433, 27.024942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478758, 15.576201, 26.646971>,  <16.349070, 15.332220, 27.259985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478758, 15.576201, 26.646971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.668726, 15.224545, 26.631144>,  <16.782707, 15.013552, 26.621647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.668726, 15.224545, 26.631144>,  <16.478758, 15.576201, 26.646971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668726, 15.224545, 26.631144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267503, -0.101381, -0.958209,
		0.838387, 0.465657, -0.283320,
		0.474920, -0.879139, -0.039568,
		16.811201, 14.960804, 26.619272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844688, 15.590170, 25.975021>,  <16.478758, 15.576201, 26.646971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844688, 15.590170, 25.975021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.805931, 15.202541, 26.065805>,  <16.782677, 14.969964, 26.120275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.805931, 15.202541, 26.065805>,  <16.844688, 15.590170, 25.975021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805931, 15.202541, 26.065805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060702, -0.221854, -0.973189,
		0.993442, -0.108074, -0.037328,
		-0.096895, -0.969072, 0.226960,
		16.776863, 14.911819, 26.133894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331022, 15.099225, 25.543674>,  <16.844688, 15.590170, 25.975021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331022, 15.099225, 25.543674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.034851, 14.861450, 25.669159>,  <16.857149, 14.718785, 25.744450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.034851, 14.861450, 25.669159>,  <17.331022, 15.099225, 25.543674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034851, 14.861450, 25.669159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072135, -0.393760, -0.916378,
		0.668255, -0.701140, 0.248671,
		-0.740426, -0.594437, 0.313709,
		16.812723, 14.683119, 25.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.382401, 14.523396, 25.094507>,  <17.331022, 15.099225, 25.543674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.382401, 14.523396, 25.094507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.023281, 14.477324, 25.264538>,  <16.807810, 14.449681, 25.366556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.023281, 14.477324, 25.264538>,  <17.382401, 14.523396, 25.094507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023281, 14.477324, 25.264538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366177, -0.341032, -0.865801,
		0.244688, -0.932969, 0.264002,
		-0.897799, -0.115180, 0.425079,
		16.753941, 14.442771, 25.392061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087980, 13.893880, 24.881397>,  <17.382401, 14.523396, 25.094507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087980, 13.893880, 24.881397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.775949, 14.118956, 24.990839>,  <16.588730, 14.254001, 25.056503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.775949, 14.118956, 24.990839>,  <17.087980, 13.893880, 24.881397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775949, 14.118956, 24.990839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450956, -0.202503, -0.869271,
		-0.433724, -0.801482, 0.411716,
		-0.780078, 0.562689, 0.273603,
		16.541925, 14.287762, 25.072920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570366, 13.601278, 24.538378>,  <17.087980, 13.893880, 24.881397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570366, 13.601278, 24.538378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.400133, 13.945270, 24.651031>,  <16.297995, 14.151665, 24.718624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.400133, 13.945270, 24.651031>,  <16.570366, 13.601278, 24.538378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400133, 13.945270, 24.651031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503086, 0.033846, -0.863573,
		-0.752187, -0.509205, 0.418240,
		-0.425580, 0.859979, 0.281633,
		16.272459, 14.203263, 24.735521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967349, 13.498208, 24.256155>,  <16.570366, 13.601278, 24.538378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967349, 13.498208, 24.256155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933590, 13.888022, 24.339251>,  <15.913335, 14.121911, 24.389109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933590, 13.888022, 24.339251>,  <15.967349, 13.498208, 24.256155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933590, 13.888022, 24.339251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672177, 0.098220, -0.733847,
		-0.735565, -0.201572, 0.646771,
		-0.084397, 0.974536, 0.207739,
		15.908271, 14.180384, 24.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224752, 13.660078, 24.416220>,  <15.967349, 13.498208, 24.256155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224752, 13.660078, 24.416220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.379815, 14.012105, 24.306528>,  <15.472853, 14.223321, 24.240713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.379815, 14.012105, 24.306528>,  <15.224752, 13.660078, 24.416220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.379815, 14.012105, 24.306528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586078, 0.005691, -0.810234,
		-0.711501, 0.474813, 0.517995,
		0.387658, 0.880068, -0.274229,
		15.496113, 14.276126, 24.224260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723562, 14.243732, 24.297079>,  <15.224752, 13.660078, 24.416220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723562, 14.243732, 24.297079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.043990, 14.347874, 24.081486>,  <15.236247, 14.410358, 23.952129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.043990, 14.347874, 24.081486>,  <14.723562, 14.243732, 24.297079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043990, 14.347874, 24.081486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574733, 0.082975, -0.814124,
		-0.167237, 0.961942, 0.216102,
		0.801071, 0.260353, -0.538983,
		15.284311, 14.425980, 23.919790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437665, 14.819136, 24.708111>,  <14.723562, 14.243732, 24.297079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437665, 14.819136, 24.708111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.145020, 15.070436, 24.813974>,  <13.969432, 15.221215, 24.877493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.145020, 15.070436, 24.813974>,  <14.437665, 14.819136, 24.708111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145020, 15.070436, 24.813974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407829, 0.092260, 0.908385,
		0.546275, 0.772523, -0.323717,
		-0.731614, 0.628249, 0.264658,
		13.925535, 15.258910, 24.893372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749913, 15.438084, 25.073605>,  <14.437665, 14.819136, 24.708111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749913, 15.438084, 25.073605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.364887, 15.447930, 25.181578>,  <14.133872, 15.453838, 25.246361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.364887, 15.447930, 25.181578>,  <14.749913, 15.438084, 25.073605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364887, 15.447930, 25.181578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268923, 0.211257, 0.939708,
		-0.033892, 0.977121, -0.209968,
		-0.962565, 0.024616, 0.269931,
		14.076118, 15.455316, 25.262556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605590, 16.039083, 25.456116>,  <14.749913, 15.438084, 25.073605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605590, 16.039083, 25.456116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.333429, 15.769646, 25.571579>,  <14.170133, 15.607983, 25.640858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.333429, 15.769646, 25.571579>,  <14.605590, 16.039083, 25.456116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333429, 15.769646, 25.571579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165953, 0.242034, 0.955970,
		-0.713801, 0.698348, -0.052895,
		-0.680402, -0.673595, 0.288658,
		14.129309, 15.567567, 25.658176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473490, 16.296444, 26.058849>,  <14.605590, 16.039083, 25.456116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473490, 16.296444, 26.058849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268397, 15.953859, 26.082779>,  <14.145342, 15.748308, 26.097137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268397, 15.953859, 26.082779>,  <14.473490, 16.296444, 26.058849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268397, 15.953859, 26.082779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074005, 0.113512, 0.990776,
		-0.855353, 0.503576, -0.121584,
		-0.512732, -0.856462, 0.059826,
		14.114577, 15.696920, 26.100727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980321, 16.457390, 26.516087>,  <14.473490, 16.296444, 26.058849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980321, 16.457390, 26.516087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.040870, 16.062010, 26.518948>,  <14.077199, 15.824781, 26.520664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.040870, 16.062010, 26.518948>,  <13.980321, 16.457390, 26.516087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040870, 16.062010, 26.518948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021836, 0.010577, 0.999706,
		-0.988236, -0.151172, 0.023185,
		0.151372, -0.988451, 0.007152,
		14.086282, 15.765474, 26.521093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397426, 16.129768, 26.932203>,  <13.980321, 16.457390, 26.516087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397426, 16.129768, 26.932203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.722006, 15.896257, 26.921232>,  <13.916754, 15.756150, 26.914650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.722006, 15.896257, 26.921232>,  <13.397426, 16.129768, 26.932203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.722006, 15.896257, 26.921232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119206, 0.119384, 0.985666,
		-0.572136, -0.803087, 0.166464,
		0.811449, -0.583779, -0.027429,
		13.965441, 15.721124, 26.913004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340361, 15.917492, 27.612175>,  <13.397426, 16.129768, 26.932203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340361, 15.917492, 27.612175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.708084, 15.790321, 27.519400>,  <13.928718, 15.714019, 27.463734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.708084, 15.790321, 27.519400>,  <13.340361, 15.917492, 27.612175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708084, 15.790321, 27.519400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283063, 0.124744, 0.950954,
		-0.273401, -0.939873, 0.204672,
		0.919308, -0.317927, -0.231938,
		13.983876, 15.694943, 27.449818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532191, 15.423193, 28.062614>,  <13.340361, 15.917492, 27.612175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532191, 15.423193, 28.062614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.883999, 15.569860, 27.941286>,  <14.095083, 15.657860, 27.868490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.883999, 15.569860, 27.941286>,  <13.532191, 15.423193, 28.062614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883999, 15.569860, 27.941286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279322, 0.118254, 0.952888,
		0.385261, -0.922806, 0.001588,
		0.879519, 0.366667, -0.303319,
		14.147855, 15.679859, 27.850290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951387, 15.098076, 28.559811>,  <13.532191, 15.423193, 28.062614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951387, 15.098076, 28.559811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.181781, 15.389160, 28.410851>,  <14.320017, 15.563810, 28.321474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.181781, 15.389160, 28.410851>,  <13.951387, 15.098076, 28.559811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181781, 15.389160, 28.410851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342367, 0.198929, 0.918266,
		0.742313, -0.656402, -0.134564,
		0.575983, 0.727711, -0.372398,
		14.354576, 15.607473, 28.299131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688813, 14.982063, 28.752480>,  <13.951387, 15.098076, 28.559811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688813, 14.982063, 28.752480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.652142, 15.375412, 28.689772>,  <14.630138, 15.611421, 28.652147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.652142, 15.375412, 28.689772>,  <14.688813, 14.982063, 28.752480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652142, 15.375412, 28.689772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465071, 0.181491, 0.866470,
		0.880514, 0.006528, -0.473976,
		-0.091679, 0.983371, -0.156769,
		14.624638, 15.670424, 28.642740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359957, 15.309304, 28.865097>,  <14.688813, 14.982063, 28.752480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359957, 15.309304, 28.865097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.068685, 15.581855, 28.894709>,  <14.893921, 15.745385, 28.912476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.068685, 15.581855, 28.894709>,  <15.359957, 15.309304, 28.865097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068685, 15.581855, 28.894709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436089, 0.377281, 0.816998,
		0.528753, 0.627205, -0.571869,
		-0.728180, 0.681376, 0.074029,
		14.850230, 15.786267, 28.916918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781940, 15.875742, 29.052486>,  <15.359957, 15.309304, 28.865097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781940, 15.875742, 29.052486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.406427, 15.983681, 29.138161>,  <15.181120, 16.048443, 29.189566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.406427, 15.983681, 29.138161>,  <15.781940, 15.875742, 29.052486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406427, 15.983681, 29.138161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330989, 0.533910, 0.778066,
		0.095601, 0.801326, -0.590540,
		-0.938780, 0.269846, 0.214187,
		15.124793, 16.064634, 29.202417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744398, 16.561855, 29.270903>,  <15.781940, 15.875742, 29.052486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744398, 16.561855, 29.270903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.391092, 16.444342, 29.417072>,  <15.179109, 16.373835, 29.504774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.391092, 16.444342, 29.417072>,  <15.744398, 16.561855, 29.270903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391092, 16.444342, 29.417072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218521, 0.431619, 0.875188,
		-0.414838, 0.852876, -0.317036,
		-0.883265, -0.293782, 0.365423,
		15.126113, 16.356207, 29.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445907, 17.165098, 29.744188>,  <15.744398, 16.561855, 29.270903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445907, 17.165098, 29.744188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.265349, 16.839710, 29.890890>,  <15.157015, 16.644478, 29.978910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.265349, 16.839710, 29.890890>,  <15.445907, 17.165098, 29.744188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265349, 16.839710, 29.890890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419058, 0.169612, 0.891977,
		-0.787803, 0.556324, 0.264330,
		-0.451394, -0.813471, 0.366753,
		15.129931, 16.595669, 30.000916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.836239, 17.624109, 29.661650>,  <15.445907, 17.165098, 29.744188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.836239, 17.624109, 29.661650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.648518, 17.956709, 29.780556>,  <14.535885, 18.156269, 29.851900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.648518, 17.956709, 29.780556>,  <14.836239, 17.624109, 29.661650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648518, 17.956709, 29.780556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657694, -0.104506, -0.746000,
		-0.589231, -0.545610, 0.595916,
		-0.469302, 0.831497, 0.297266,
		14.507727, 18.206158, 29.869736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117386, 17.462667, 29.693153>,  <14.836239, 17.624109, 29.661650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117386, 17.462667, 29.693153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.170339, 17.851738, 29.616865>,  <14.202110, 18.085180, 29.571093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.170339, 17.851738, 29.616865>,  <14.117386, 17.462667, 29.693153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170339, 17.851738, 29.616865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619633, -0.068973, -0.781855,
		-0.773647, 0.221680, 0.593572,
		0.132381, 0.972677, -0.190721,
		14.210053, 18.143541, 29.559649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377277, 17.660284, 29.502293>,  <14.117386, 17.462667, 29.693153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377277, 17.660284, 29.502293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.643623, 17.930695, 29.376047>,  <13.803432, 18.092941, 29.300301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.643623, 17.930695, 29.376047>,  <13.377277, 17.660284, 29.502293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643623, 17.930695, 29.376047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547591, 0.155519, -0.822167,
		-0.506722, 0.720280, 0.473740,
		0.665866, 0.676026, -0.315614,
		13.843383, 18.133503, 29.281363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.024416, 18.066088, 29.116079>,  <13.377277, 17.660284, 29.502293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.024416, 18.066088, 29.116079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.395780, 18.170584, 29.010393>,  <13.618598, 18.233282, 28.946981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.395780, 18.170584, 29.010393>,  <13.024416, 18.066088, 29.116079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395780, 18.170584, 29.010393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346700, 0.353353, -0.868873,
		-0.133624, 0.898273, 0.418629,
		0.928409, 0.261241, -0.264215,
		13.674302, 18.248957, 28.931129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994404, 18.803942, 28.844816>,  <13.024416, 18.066088, 29.116079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994404, 18.803942, 28.844816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320437, 18.628939, 28.692907>,  <13.516057, 18.523937, 28.601761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320437, 18.628939, 28.692907>,  <12.994404, 18.803942, 28.844816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320437, 18.628939, 28.692907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290426, 0.258638, -0.921281,
		0.501290, 0.861217, 0.083748,
		0.815083, -0.437506, -0.379773,
		13.564962, 18.497686, 28.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350932, 19.334675, 28.460379>,  <12.994404, 18.803942, 28.844816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350932, 19.334675, 28.460379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.434116, 18.963060, 28.337976>,  <13.484027, 18.740091, 28.264534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.434116, 18.963060, 28.337976>,  <13.350932, 19.334675, 28.460379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434116, 18.963060, 28.337976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190664, 0.268344, -0.944266,
		0.959374, 0.254716, -0.121329,
		0.207962, -0.929038, -0.306007,
		13.496505, 18.684349, 28.246174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449360, 19.356815, 27.637991>,  <13.350932, 19.334675, 28.460379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449360, 19.356815, 27.637991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514100, 18.964605, 27.682486>,  <13.552944, 18.729279, 27.709183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514100, 18.964605, 27.682486>,  <13.449360, 19.356815, 27.637991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514100, 18.964605, 27.682486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197024, -0.142562, -0.969978,
		0.966947, 0.135075, -0.216261,
		0.161850, -0.980526, 0.111237,
		13.562655, 18.670448, 27.715857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019806, 19.078028, 27.197443>,  <13.449360, 19.356815, 27.637991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019806, 19.078028, 27.197443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760574, 18.786011, 27.284191>,  <13.605036, 18.610802, 27.336241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760574, 18.786011, 27.284191>,  <14.019806, 19.078028, 27.197443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760574, 18.786011, 27.284191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156054, -0.151425, -0.976073,
		0.745413, -0.666416, -0.015791,
		-0.648079, -0.730042, 0.216871,
		13.566151, 18.566998, 27.349253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144095, 18.569592, 26.617855>,  <14.019806, 19.078028, 27.197443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144095, 18.569592, 26.617855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.791114, 18.462414, 26.772505>,  <13.579325, 18.398108, 26.865295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.791114, 18.462414, 26.772505>,  <14.144095, 18.569592, 26.617855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791114, 18.462414, 26.772505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375480, -0.093860, -0.922066,
		0.283353, -0.958851, -0.017781,
		-0.882455, -0.267946, 0.386624,
		13.526378, 18.382030, 26.888493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891124, 17.933393, 26.283554>,  <14.144095, 18.569592, 26.617855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891124, 17.933393, 26.283554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.561921, 18.108000, 26.428944>,  <13.364399, 18.212763, 26.516176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.561921, 18.108000, 26.428944>,  <13.891124, 17.933393, 26.283554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561921, 18.108000, 26.428944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426881, -0.053157, -0.902744,
		-0.374742, -0.898124, 0.230089,
		-0.823007, 0.436517, 0.363472,
		13.315019, 18.238955, 26.537985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283782, 17.470505, 26.102343>,  <13.891124, 17.933393, 26.283554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283782, 17.470505, 26.102343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.101747, 17.816782, 26.185741>,  <12.992525, 18.024548, 26.235781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.101747, 17.816782, 26.185741>,  <13.283782, 17.470505, 26.102343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.101747, 17.816782, 26.185741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592566, -0.119655, -0.796585,
		-0.664651, -0.486064, 0.567434,
		-0.455088, 0.865693, 0.208496,
		12.965220, 18.076490, 26.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.637731, 17.324387, 25.965357>,  <13.283782, 17.470505, 26.102343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.637731, 17.324387, 25.965357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.616826, 17.721924, 25.926270>,  <12.604283, 17.960445, 25.902817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.616826, 17.721924, 25.926270>,  <12.637731, 17.324387, 25.965357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616826, 17.721924, 25.926270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490730, -0.110782, -0.864241,
		-0.869743, 0.002788, 0.493497,
		-0.052261, 0.993841, -0.097721,
		12.601148, 18.020077, 25.896954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934683, 17.490686, 25.700491>,  <12.637731, 17.324387, 25.965357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934683, 17.490686, 25.700491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.153878, 17.814846, 25.617580>,  <12.285395, 18.009342, 25.567835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.153878, 17.814846, 25.617580>,  <11.934683, 17.490686, 25.700491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.153878, 17.814846, 25.617580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412449, 0.046194, -0.909809,
		-0.727733, 0.584054, 0.359562,
		0.547987, 0.810399, -0.207276,
		12.318274, 18.057966, 25.555397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467515, 18.057877, 25.330454>,  <11.934683, 17.490686, 25.700491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467515, 18.057877, 25.330454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.851760, 18.124762, 25.241673>,  <12.082307, 18.164892, 25.188404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.851760, 18.124762, 25.241673>,  <11.467515, 18.057877, 25.330454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.851760, 18.124762, 25.241673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255428, 0.216723, -0.942225,
		-0.109451, 0.961806, 0.250898,
		0.960613, 0.167214, -0.221951,
		12.139944, 18.174925, 25.175087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.862463, 3.312210, 15.243074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.203193, 3.288154, 15.034930>,  <6.407631, 3.273721, 14.910044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.203193, 3.288154, 15.034930>,  <5.862463, 3.312210, 15.243074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.203193, 3.288154, 15.034930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309387, -0.859367, -0.407146,
		-0.422695, 0.507810, -0.750638,
		0.851827, -0.060139, -0.520360,
		6.458741, 3.270112, 14.878822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.780911, 3.260030, 14.506712>,  <5.862463, 3.312210, 15.243074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.780911, 3.260030, 14.506712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120473, 3.074914, 14.608837>,  <6.324211, 2.963845, 14.670113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120473, 3.074914, 14.608837>,  <5.780911, 3.260030, 14.506712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.120473, 3.074914, 14.608837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293448, -0.814440, -0.500576,
		0.439599, 0.350020, -0.827187,
		0.848906, -0.462789, 0.255314,
		6.375145, 2.936078, 14.685431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.918315, 4.072556, 14.114872>,  <5.780911, 3.260030, 14.506712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.918315, 4.072556, 14.114872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.256318, 4.282477, 14.155940>,  <6.459120, 4.408431, 14.180581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.256318, 4.282477, 14.155940>,  <5.918315, 4.072556, 14.114872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.256318, 4.282477, 14.155940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385966, 0.465663, 0.796359,
		0.370121, -0.712559, 0.596046,
		0.845010, 0.524803, 0.102672,
		6.509820, 4.439919, 14.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.513995, 3.822118, 14.670138>,  <5.918315, 4.072556, 14.114872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.513995, 3.822118, 14.670138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.464477, 4.213929, 14.606639>,  <6.434766, 4.449015, 14.568539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.464477, 4.213929, 14.606639>,  <6.513995, 3.822118, 14.670138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.464477, 4.213929, 14.606639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187329, 0.134034, 0.973110,
		0.974465, 0.150204, 0.166901,
		-0.123795, 0.979527, -0.158749,
		6.427339, 4.507787, 14.559014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.015574, 4.334685, 15.033879>,  <6.513995, 3.822118, 14.670138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.015574, 4.334685, 15.033879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.641429, 4.467037, 14.983885>,  <6.416943, 4.546447, 14.953888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.641429, 4.467037, 14.983885>,  <7.015574, 4.334685, 15.033879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.641429, 4.467037, 14.983885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076259, 0.156400, 0.984745,
		0.345378, 0.930623, -0.121058,
		-0.935360, 0.330878, -0.124986,
		6.360821, 4.566300, 14.946389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.918196, 5.085352, 15.267208>,  <7.015574, 4.334685, 15.033879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.918196, 5.085352, 15.267208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.590484, 4.866256, 15.335043>,  <6.393857, 4.734798, 15.375744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.590484, 4.866256, 15.335043>,  <6.918196, 5.085352, 15.267208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.590484, 4.866256, 15.335043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071525, 0.195827, 0.978027,
		-0.568915, 0.813408, -0.121260,
		-0.819280, -0.547741, 0.169588,
		6.344699, 4.701933, 15.385920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594886, 5.277542, 15.337988>,  <6.918196, 5.085352, 15.267208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594886, 5.277542, 15.337988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918176, 5.444600, 15.171928>,  <8.112149, 5.544834, 15.072293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918176, 5.444600, 15.171928>,  <7.594886, 5.277542, 15.337988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.918176, 5.444600, 15.171928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318266, 0.902951, 0.288768,
		0.495460, -0.101262, 0.862708,
		0.808224, 0.417644, -0.415148,
		8.160643, 5.569893, 15.047384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949554, 5.567910, 15.866059>,  <7.594886, 5.277542, 15.337988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949554, 5.567910, 15.866059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.007398, 5.753570, 15.516511>,  <8.042104, 5.864966, 15.306782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.007398, 5.753570, 15.516511>,  <7.949554, 5.567910, 15.866059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.007398, 5.753570, 15.516511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384573, 0.840087, 0.382567,
		0.911697, 0.280745, 0.299984,
		0.144609, 0.464151, -0.873872,
		8.050780, 5.892816, 15.254350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.081367, 6.236434, 16.010002>,  <7.949554, 5.567910, 15.866059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.081367, 6.236434, 16.010002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.411209, 6.125461, 15.812799>,  <8.609115, 6.058877, 15.694476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.411209, 6.125461, 15.812799>,  <8.081367, 6.236434, 16.010002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.411209, 6.125461, 15.812799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023780, 0.853719, -0.520191,
		0.565209, 0.440675, 0.697383,
		0.824605, -0.277433, -0.493009,
		8.658590, 6.042231, 15.664896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.687531, 6.749753, 16.076195>,  <8.081367, 6.236434, 16.010002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.687531, 6.749753, 16.076195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.677205, 6.533752, 15.739688>,  <8.671010, 6.404151, 15.537784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.677205, 6.533752, 15.739688>,  <8.687531, 6.749753, 16.076195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.677205, 6.533752, 15.739688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065676, 0.840646, -0.537588,
		0.997507, 0.041374, -0.057165,
		-0.025813, -0.540002, -0.841268,
		8.669461, 6.371751, 15.487308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.123301, 7.017680, 15.529765>,  <8.687531, 6.749753, 16.076195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.123301, 7.017680, 15.529765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850988, 6.848428, 15.290600>,  <8.687601, 6.746877, 15.147100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850988, 6.848428, 15.290600>,  <9.123301, 7.017680, 15.529765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.850988, 6.848428, 15.290600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121781, 0.870299, -0.477231,
		0.722293, -0.252075, -0.644012,
		-0.680781, -0.423129, -0.597913,
		8.646754, 6.721489, 15.111226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.222953, 7.318459, 14.839215>,  <9.123301, 7.017680, 15.529765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.222953, 7.318459, 14.839215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.842677, 7.199070, 14.872928>,  <8.614511, 7.127438, 14.893155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.842677, 7.199070, 14.872928>,  <9.222953, 7.318459, 14.839215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.842677, 7.199070, 14.872928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308988, 0.888095, -0.340314,
		0.026725, -0.349575, -0.936527,
		-0.950690, -0.298471, 0.084280,
		8.557470, 7.109529, 14.898211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.914899, 7.600220, 14.252931>,  <9.222953, 7.318459, 14.839215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.914899, 7.600220, 14.252931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.616730, 7.514186, 14.505305>,  <8.437828, 7.462566, 14.656731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.616730, 7.514186, 14.505305>,  <8.914899, 7.600220, 14.252931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.616730, 7.514186, 14.505305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372769, 0.919183, -0.127063,
		-0.552618, -0.329910, -0.765358,
		-0.745424, -0.215085, 0.630937,
		8.393103, 7.449661, 14.694587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.240406, 7.801157, 13.968188>,  <8.914899, 7.600220, 14.252931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.240406, 7.801157, 13.968188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.163471, 7.785637, 14.360413>,  <8.117311, 7.776326, 14.595747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.163471, 7.785637, 14.360413>,  <8.240406, 7.801157, 13.968188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.163471, 7.785637, 14.360413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328234, 0.944210, -0.027024,
		-0.924808, -0.327051, -0.194340,
		-0.192336, -0.038797, 0.980562,
		8.105770, 7.773998, 14.654581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.526164, 8.099326, 14.078676>,  <8.240406, 7.801157, 13.968188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.526164, 8.099326, 14.078676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.726143, 8.147163, 14.421780>,  <7.846131, 8.175865, 14.627642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.726143, 8.147163, 14.421780>,  <7.526164, 8.099326, 14.078676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.726143, 8.147163, 14.421780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380355, 0.920112, 0.093406,
		-0.778063, -0.372951, 0.505496,
		0.499948, 0.119592, 0.857759,
		7.876128, 8.183041, 14.679107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.038930, 8.288244, 14.539979>,  <7.526164, 8.099326, 14.078676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.038930, 8.288244, 14.539979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.391365, 8.413393, 14.681850>,  <7.602826, 8.488482, 14.766973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.391365, 8.413393, 14.681850>,  <7.038930, 8.288244, 14.539979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.391365, 8.413393, 14.681850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395003, 0.899233, 0.188023,
		-0.260112, -0.305764, 0.915888,
		0.881087, 0.312871, 0.354679,
		7.655691, 8.507255, 14.788254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.762406, 8.770293, 15.023828>,  <7.038930, 8.288244, 14.539979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.762406, 8.770293, 15.023828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154430, 8.838821, 14.983568>,  <7.389645, 8.879938, 14.959413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154430, 8.838821, 14.983568>,  <6.762406, 8.770293, 15.023828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.154430, 8.838821, 14.983568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154241, 0.975288, 0.158190,
		0.125263, -0.139511, 0.982265,
		0.980061, 0.171321, -0.100649,
		7.448449, 8.890218, 14.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.929115, 9.238058, 15.552507>,  <6.762406, 8.770293, 15.023828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.929115, 9.238058, 15.552507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.234959, 9.284779, 15.298978>,  <7.418465, 9.312811, 15.146860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.234959, 9.284779, 15.298978>,  <6.929115, 9.238058, 15.552507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.234959, 9.284779, 15.298978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006306, 0.984750, 0.173861,
		0.644464, -0.128939, 0.753685,
		0.764609, 0.116800, -0.633823,
		7.464341, 9.319818, 15.108831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.472121, 9.648854, 15.969111>,  <6.929115, 9.238058, 15.552507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.472121, 9.648854, 15.969111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.554688, 9.674539, 15.578569>,  <7.604229, 9.689949, 15.344244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.554688, 9.674539, 15.578569>,  <7.472121, 9.648854, 15.969111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.554688, 9.674539, 15.578569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061969, 0.994983, 0.078536,
		0.976499, -0.076715, 0.201406,
		0.206420, 0.064210, -0.976354,
		7.616614, 9.693802, 15.285663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.059952, 10.135980, 15.881358>,  <7.472121, 9.648854, 15.969111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.059952, 10.135980, 15.881358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860521, 10.121493, 15.534923>,  <7.740863, 10.112802, 15.327062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860521, 10.121493, 15.534923>,  <8.059952, 10.135980, 15.881358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.860521, 10.121493, 15.534923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050250, 0.998654, -0.012833,
		0.865388, 0.037122, -0.499726,
		-0.498577, -0.036217, -0.866089,
		7.710948, 10.110628, 15.275096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.459258, 10.536878, 15.484662>,  <8.059952, 10.135980, 15.881358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.459258, 10.536878, 15.484662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.099678, 10.532200, 15.309504>,  <7.883930, 10.529393, 15.204409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.099678, 10.532200, 15.309504>,  <8.459258, 10.536878, 15.484662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.099678, 10.532200, 15.309504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027050, 0.996254, -0.082133,
		0.437216, -0.085679, -0.895266,
		-0.898950, -0.011694, -0.437896,
		7.829993, 10.528692, 15.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.495832, 11.015198, 14.956451>,  <8.459258, 10.536878, 15.484662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.495832, 11.015198, 14.956451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.104901, 10.968964, 15.027412>,  <7.870343, 10.941223, 15.069989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.104901, 10.968964, 15.027412>,  <8.495832, 11.015198, 14.956451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.104901, 10.968964, 15.027412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134239, 0.986191, -0.096994,
		-0.163742, -0.118609, -0.979347,
		-0.977327, -0.115584, 0.177402,
		7.811703, 10.934288, 15.080633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.180892, 11.208401, 14.364998>,  <8.495832, 11.015198, 14.956451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.180892, 11.208401, 14.364998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.910542, 11.247135, 14.657248>,  <7.748331, 11.270375, 14.832599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.910542, 11.247135, 14.657248>,  <8.180892, 11.208401, 14.364998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.910542, 11.247135, 14.657248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038353, 0.994609, -0.096343,
		-0.736016, -0.037094, -0.675947,
		-0.675877, 0.096835, 0.730626,
		7.707778, 11.276186, 14.876436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.761140, 11.614457, 14.091267>,  <8.180892, 11.208401, 14.364998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.761140, 11.614457, 14.091267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.699477, 11.619068, 14.486458>,  <7.662478, 11.621835, 14.723573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.699477, 11.619068, 14.486458>,  <7.761140, 11.614457, 14.091267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.699477, 11.619068, 14.486458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238235, 0.969996, -0.048491,
		-0.958894, -0.242847, -0.146787,
		-0.154159, 0.011528, 0.987979,
		7.653229, 11.622526, 14.782851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.307425, 12.114192, 14.148320>,  <7.761140, 11.614457, 14.091267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.307425, 12.114192, 14.148320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463275, 12.063362, 14.513186>,  <7.556785, 12.032865, 14.732106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463275, 12.063362, 14.513186>,  <7.307425, 12.114192, 14.148320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.463275, 12.063362, 14.513186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149642, 0.968539, 0.198847,
		-0.908736, -0.213974, 0.358350,
		0.389624, -0.127075, 0.912165,
		7.580162, 12.025240, 14.786836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.866729, 12.434974, 14.537637>,  <7.307425, 12.114192, 14.148320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.866729, 12.434974, 14.537637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.210330, 12.426534, 14.742250>,  <7.416492, 12.421470, 14.865019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.210330, 12.426534, 14.742250>,  <6.866729, 12.434974, 14.537637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.210330, 12.426534, 14.742250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132332, 0.956046, 0.261655,
		-0.494572, -0.292455, 0.818455,
		0.859004, -0.021100, 0.511535,
		7.468031, 12.420204, 14.895711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.772402, 12.811004, 15.005668>,  <6.866729, 12.434974, 14.537637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.772402, 12.811004, 15.005668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.163841, 12.814008, 15.087926>,  <7.398704, 12.815810, 15.137280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.163841, 12.814008, 15.087926>,  <6.772402, 12.811004, 15.005668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.163841, 12.814008, 15.087926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066212, 0.957683, 0.280106,
		-0.194839, -0.287727, 0.937684,
		0.978598, 0.007510, 0.205645,
		7.457420, 12.816260, 15.149619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.899574, 13.120629, 15.695468>,  <6.772402, 12.811004, 15.005668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.899574, 13.120629, 15.695468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219900, 13.143970, 15.457043>,  <7.412095, 13.157973, 15.313988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219900, 13.143970, 15.457043>,  <6.899574, 13.120629, 15.695468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.219900, 13.143970, 15.457043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010588, 0.996466, 0.083321,
		0.598819, -0.060414, 0.798603,
		0.800815, 0.058350, -0.596063,
		7.460144, 13.161474, 15.278224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.378172, 13.575658, 16.054766>,  <6.899574, 13.120629, 15.695468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.378172, 13.575658, 16.054766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.502812, 13.573427, 15.674686>,  <7.577597, 13.572089, 15.446639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.502812, 13.573427, 15.674686>,  <7.378172, 13.575658, 16.054766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.502812, 13.573427, 15.674686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016153, 0.999869, -0.000571,
		0.950076, -0.015171, 0.311650,
		0.311601, -0.005576, -0.950197,
		7.596292, 13.571754, 15.389627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.968213, 13.943871, 16.130796>,  <7.378172, 13.575658, 16.054766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.968213, 13.943871, 16.130796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.843717, 13.961754, 15.751085>,  <7.769019, 13.972484, 15.523258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.843717, 13.961754, 15.751085>,  <7.968213, 13.943871, 16.130796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.843717, 13.961754, 15.751085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108680, 0.994014, 0.011182,
		0.944097, -0.099688, -0.314235,
		-0.311240, 0.044708, -0.949279,
		7.750345, 13.975166, 15.466302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.375451, 14.469557, 15.895170>,  <7.968213, 13.943871, 16.130796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.375451, 14.469557, 15.895170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.111534, 14.431015, 15.597073>,  <7.953184, 14.407890, 15.418214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.111534, 14.431015, 15.597073>,  <8.375451, 14.469557, 15.895170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.111534, 14.431015, 15.597073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158215, 0.951701, -0.263122,
		0.734602, -0.291515, -0.612682,
		-0.659794, -0.096354, -0.745244,
		7.913596, 14.402109, 15.373499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.102932, 14.650147, 15.622401>,  <8.375451, 14.469557, 15.895170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.102932, 14.650147, 15.622401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.451627, 14.778918, 15.770151>,  <9.660844, 14.856181, 15.858801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.451627, 14.778918, 15.770151>,  <9.102932, 14.650147, 15.622401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.451627, 14.778918, 15.770151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431076, -0.862263, -0.265850,
		0.232915, 0.390980, -0.890441,
		0.871736, 0.321927, 0.369376,
		9.713148, 14.875497, 15.880964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.615948, 14.668283, 15.020296>,  <9.102932, 14.650147, 15.622401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.615948, 14.668283, 15.020296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.830857, 14.641332, 15.356581>,  <9.959803, 14.625161, 15.558352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.830857, 14.641332, 15.356581>,  <9.615948, 14.668283, 15.020296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.830857, 14.641332, 15.356581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448014, -0.821742, -0.352168,
		0.714577, 0.565862, -0.411315,
		0.537274, -0.067376, 0.840712,
		9.992040, 14.621119, 15.608794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.367542, 14.444319, 14.810671>,  <9.615948, 14.668283, 15.020296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.367542, 14.444319, 14.810671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.350618, 14.391735, 15.206839>,  <10.340464, 14.360185, 15.444539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.350618, 14.391735, 15.206839>,  <10.367542, 14.444319, 14.810671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.350618, 14.391735, 15.206839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608467, -0.789656, -0.078819,
		0.792451, 0.599302, 0.113398,
		-0.042309, -0.131459, 0.990418,
		10.337926, 14.352298, 15.503964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.160912, 14.336449, 15.063507>,  <10.367542, 14.444319, 14.810671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.160912, 14.336449, 15.063507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.887910, 14.186637, 15.314558>,  <10.724109, 14.096750, 15.465188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.887910, 14.186637, 15.314558>,  <11.160912, 14.336449, 15.063507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887910, 14.186637, 15.314558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402559, -0.909364, -0.104895,
		0.610028, 0.181065, 0.771415,
		-0.682505, -0.374529, 0.627627,
		10.683159, 14.074278, 15.502846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.608335, 14.051606, 15.658230>,  <11.160912, 14.336449, 15.063507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.608335, 14.051606, 15.658230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.245408, 13.883445, 15.655677>,  <11.027653, 13.782548, 15.654145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.245408, 13.883445, 15.655677>,  <11.608335, 14.051606, 15.658230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245408, 13.883445, 15.655677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415876, -0.895107, -0.160718,
		0.061854, -0.148476, 0.986980,
		-0.907315, -0.420403, -0.006381,
		10.973213, 13.757324, 15.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728273, 13.540751, 16.093699>,  <11.608335, 14.051606, 15.658230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728273, 13.540751, 16.093699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.405043, 13.453440, 15.874841>,  <11.211104, 13.401053, 15.743526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.405043, 13.453440, 15.874841>,  <11.728273, 13.540751, 16.093699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405043, 13.453440, 15.874841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392096, -0.892475, -0.223045,
		-0.439627, -0.394771, 0.806773,
		-0.808077, -0.218276, -0.547144,
		11.162620, 13.387957, 15.710697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338552, 12.895311, 16.418699>,  <11.728273, 13.540751, 16.093699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.338552, 12.895311, 16.418699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.248485, 12.923370, 16.029984>,  <11.194445, 12.940206, 15.796754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.248485, 12.923370, 16.029984>,  <11.338552, 12.895311, 16.418699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.248485, 12.923370, 16.029984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196764, -0.973580, -0.115868,
		-0.954245, -0.217303, 0.205416,
		-0.225167, 0.070148, -0.971792,
		11.180934, 12.944415, 15.738446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.829053, 12.255930, 16.261681>,  <11.338552, 12.895311, 16.418699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.829053, 12.255930, 16.261681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.993795, 12.393157, 15.923999>,  <11.092641, 12.475493, 15.721390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.993795, 12.393157, 15.923999>,  <10.829053, 12.255930, 16.261681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993795, 12.393157, 15.923999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240427, -0.934507, -0.262471,
		-0.878959, -0.094870, -0.467365,
		0.411855, 0.343068, -0.844203,
		11.117352, 12.496078, 15.670738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.557975, 11.715346, 15.742823>,  <10.829053, 12.255930, 16.261681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.557975, 11.715346, 15.742823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.878358, 11.891788, 15.580888>,  <11.070588, 11.997654, 15.483727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.878358, 11.891788, 15.580888>,  <10.557975, 11.715346, 15.742823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.878358, 11.891788, 15.580888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252315, -0.861877, -0.439892,
		-0.542957, 0.250188, -0.801625,
		0.800958, 0.441105, -0.404836,
		11.118646, 12.024120, 15.459436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418326, 11.657735, 15.082417>,  <10.557975, 11.715346, 15.742823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418326, 11.657735, 15.082417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.813871, 11.702994, 15.121092>,  <11.051198, 11.730150, 15.144297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.813871, 11.702994, 15.121092>,  <10.418326, 11.657735, 15.082417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.813871, 11.702994, 15.121092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145507, -0.871533, -0.468250,
		0.031283, 0.477103, -0.878290,
		0.988862, 0.113150, 0.096686,
		11.110530, 11.736939, 15.150098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655552, 11.435753, 14.394934>,  <10.418326, 11.657735, 15.082417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655552, 11.435753, 14.394934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.969087, 11.437685, 14.643312>,  <11.157207, 11.438845, 14.792340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.969087, 11.437685, 14.643312>,  <10.655552, 11.435753, 14.394934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969087, 11.437685, 14.643312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248730, -0.918688, -0.306831,
		0.568976, 0.394954, -0.721303,
		0.783837, 0.004830, 0.620948,
		11.204238, 11.439135, 14.829597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.156476, 11.279725, 13.997285>,  <10.655552, 11.435753, 14.394934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.156476, 11.279725, 13.997285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.280542, 11.191427, 14.367165>,  <11.354982, 11.138449, 14.589092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.280542, 11.191427, 14.367165>,  <11.156476, 11.279725, 13.997285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280542, 11.191427, 14.367165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405856, -0.848833, -0.338767,
		0.859697, 0.480368, -0.173689,
		0.310166, -0.220744, 0.924699,
		11.373592, 11.125204, 14.644574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889841, 11.127216, 13.974659>,  <11.156476, 11.279725, 13.997285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889841, 11.127216, 13.974659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.751744, 10.932453, 14.295589>,  <11.668886, 10.815596, 14.488148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.751744, 10.932453, 14.295589>,  <11.889841, 11.127216, 13.974659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.751744, 10.932453, 14.295589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227735, -0.872804, -0.431683,
		0.910464, 0.033683, 0.412216,
		-0.345243, -0.486907, 0.802327,
		11.648171, 10.786381, 14.536287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352263, 10.519921, 14.078914>,  <11.889841, 11.127216, 13.974659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352263, 10.519921, 14.078914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.029691, 10.441967, 14.302229>,  <11.836147, 10.395195, 14.436218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.029691, 10.441967, 14.302229>,  <12.352263, 10.519921, 14.078914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.029691, 10.441967, 14.302229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151611, -0.980714, -0.123345,
		0.571560, -0.014827, 0.820427,
		-0.806433, -0.194885, 0.558289,
		11.787761, 10.383502, 14.469715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541362, 10.013013, 14.562099>,  <12.352263, 10.519921, 14.078914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541362, 10.013013, 14.562099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.142314, 9.990784, 14.545765>,  <11.902885, 9.977447, 14.535964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.142314, 9.990784, 14.545765>,  <12.541362, 10.013013, 14.562099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.142314, 9.990784, 14.545765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060684, -0.988708, -0.137020,
		-0.032761, -0.139171, 0.989726,
		-0.997619, -0.055572, -0.040837,
		11.843028, 9.974113, 14.533514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529653, 9.419335, 14.755173>,  <12.541362, 10.013013, 14.562099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529653, 9.419335, 14.755173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.168034, 9.495328, 14.602017>,  <11.951062, 9.540924, 14.510124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.168034, 9.495328, 14.602017>,  <12.529653, 9.419335, 14.755173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168034, 9.495328, 14.602017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101295, -0.965501, -0.239892,
		-0.415254, -0.178089, 0.892103,
		-0.904048, 0.189982, -0.382889,
		11.896819, 9.552322, 14.487151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033794, 8.976063, 15.052880>,  <12.529653, 9.419335, 14.755173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033794, 8.976063, 15.052880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.795926, 9.067900, 14.744684>,  <11.653205, 9.123002, 14.559767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.795926, 9.067900, 14.744684>,  <12.033794, 8.976063, 15.052880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795926, 9.067900, 14.744684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153616, -0.973148, -0.171420,
		-0.789158, 0.016421, 0.613971,
		-0.594670, 0.229593, -0.770490,
		11.617525, 9.136778, 14.513537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289043, 8.572810, 15.078646>,  <12.033794, 8.976063, 15.052880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289043, 8.572810, 15.078646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.400567, 8.681159, 14.710104>,  <11.467481, 8.746168, 14.488978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.400567, 8.681159, 14.710104>,  <11.289043, 8.572810, 15.078646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400567, 8.681159, 14.710104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228922, -0.912996, -0.337687,
		-0.932663, 0.305069, -0.192543,
		0.278808, 0.270871, -0.921355,
		11.484209, 8.762421, 14.433698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.743129, 8.406177, 14.696283>,  <11.289043, 8.572810, 15.078646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.743129, 8.406177, 14.696283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.066003, 8.424371, 14.460866>,  <11.259727, 8.435287, 14.319615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.066003, 8.424371, 14.460866>,  <10.743129, 8.406177, 14.696283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.066003, 8.424371, 14.460866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299903, -0.827164, -0.475244,
		-0.508439, 0.560116, -0.654034,
		0.807185, 0.045486, -0.588543,
		11.308159, 8.438017, 14.284303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.458849, 8.537256, 14.086099>,  <10.743129, 8.406177, 14.696283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.458849, 8.537256, 14.086099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.826320, 8.387798, 14.034838>,  <11.046803, 8.298124, 14.004081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.826320, 8.387798, 14.034838>,  <10.458849, 8.537256, 14.086099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.826320, 8.387798, 14.034838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384062, -0.769050, -0.510938,
		0.092352, 0.518606, -0.850011,
		0.918677, -0.373644, -0.128153,
		11.101923, 8.275705, 13.996391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591705, 8.380019, 13.340772>,  <10.458849, 8.537256, 14.086099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591705, 8.380019, 13.340772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.819192, 8.147320, 13.573367>,  <10.955684, 8.007700, 13.712924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.819192, 8.147320, 13.573367>,  <10.591705, 8.380019, 13.340772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.819192, 8.147320, 13.573367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312649, -0.806779, -0.501357,
		0.760796, 0.103328, -0.640712,
		0.568717, -0.581749, 0.581489,
		10.989807, 7.972795, 13.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.238729, 21.962852, 29.771820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.976233, 21.661167, 29.780811>,  <15.818734, 21.480156, 29.786207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.976233, 21.661167, 29.780811>,  <16.238729, 21.962852, 29.771820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976233, 21.661167, 29.780811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263405, -0.201066, 0.943499,
		-0.707082, 0.625085, 0.330612,
		-0.656242, -0.754215, 0.022480,
		15.779360, 21.434902, 29.787556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787095, 22.088655, 30.365734>,  <16.238729, 21.962852, 29.771820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787095, 22.088655, 30.365734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.755140, 21.698540, 30.283344>,  <15.735968, 21.464470, 30.233912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.755140, 21.698540, 30.283344>,  <15.787095, 22.088655, 30.365734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755140, 21.698540, 30.283344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144254, -0.215770, 0.965730,
		-0.986311, 0.047437, 0.157926,
		-0.079887, -0.975291, -0.205973,
		15.731174, 21.405952, 30.221552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406843, 21.847286, 30.942963>,  <15.787095, 22.088655, 30.365734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406843, 21.847286, 30.942963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597411, 21.547026, 30.759857>,  <15.711752, 21.366869, 30.649994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597411, 21.547026, 30.759857>,  <15.406843, 21.847286, 30.942963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597411, 21.547026, 30.759857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438839, -0.248135, 0.863626,
		-0.761869, -0.612333, 0.211199,
		0.476421, -0.750651, -0.457762,
		15.740337, 21.321831, 30.622528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275905, 21.300577, 31.295889>,  <15.406843, 21.847286, 30.942963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275905, 21.300577, 31.295889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.608133, 21.151865, 31.130032>,  <15.807470, 21.062637, 31.030518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.608133, 21.151865, 31.130032>,  <15.275905, 21.300577, 31.295889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608133, 21.151865, 31.130032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339782, -0.251613, 0.906222,
		-0.441247, -0.893571, -0.082658,
		0.830572, -0.371782, -0.414643,
		15.857305, 21.040331, 31.005638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427588, 20.669718, 31.596962>,  <15.275905, 21.300577, 31.295889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427588, 20.669718, 31.596962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.764679, 20.790276, 31.418537>,  <15.966933, 20.862610, 31.311483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.764679, 20.790276, 31.418537>,  <15.427588, 20.669718, 31.596962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.764679, 20.790276, 31.418537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522637, -0.259387, 0.812138,
		0.129073, -0.917539, -0.376113,
		0.842728, 0.301396, -0.446060,
		16.017498, 20.880693, 31.284719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968349, 20.000845, 31.611395>,  <15.427588, 20.669718, 31.596962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968349, 20.000845, 31.611395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.160944, 20.348150, 31.563580>,  <16.276501, 20.556534, 31.534889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.160944, 20.348150, 31.563580>,  <15.968349, 20.000845, 31.611395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160944, 20.348150, 31.563580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568201, -0.205383, 0.796847,
		0.667321, -0.451593, -0.592237,
		0.481486, 0.868263, -0.119540,
		16.305389, 20.608629, 31.527718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643730, 19.823118, 31.674667>,  <15.968349, 20.000845, 31.611395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643730, 19.823118, 31.674667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.607063, 20.215725, 31.741867>,  <16.585062, 20.451288, 31.782187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.607063, 20.215725, 31.741867>,  <16.643730, 19.823118, 31.674667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607063, 20.215725, 31.741867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720699, -0.051028, 0.691368,
		0.687161, 0.184455, -0.702699,
		-0.091669, 0.981515, 0.168001,
		16.579563, 20.510180, 31.792267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373207, 20.034853, 31.649015>,  <16.643730, 19.823118, 31.674667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373207, 20.034853, 31.649015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.189844, 20.345484, 31.821894>,  <17.079826, 20.531862, 31.925621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.189844, 20.345484, 31.821894>,  <17.373207, 20.034853, 31.649015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189844, 20.345484, 31.821894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670154, -0.017378, 0.742019,
		0.583744, 0.629784, -0.512459,
		-0.458407, 0.776575, 0.432197,
		17.052322, 20.578457, 31.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915091, 20.396500, 31.923910>,  <17.373207, 20.034853, 31.649015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915091, 20.396500, 31.923910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.585085, 20.507484, 32.120834>,  <17.387081, 20.574076, 32.238987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.585085, 20.507484, 32.120834>,  <17.915091, 20.396500, 31.923910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585085, 20.507484, 32.120834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519814, 0.030846, 0.853722,
		0.221690, 0.960241, -0.169677,
		-0.825013, 0.277462, 0.492309,
		17.337582, 20.590723, 32.268528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053976, 21.051548, 32.136635>,  <17.915091, 20.396500, 31.923910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053976, 21.051548, 32.136635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.775539, 20.909203, 32.386055>,  <17.608477, 20.823795, 32.535709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.775539, 20.909203, 32.386055>,  <18.053976, 21.051548, 32.136635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775539, 20.909203, 32.386055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691196, -0.097271, 0.716091,
		-0.194177, 0.929462, 0.313682,
		-0.696091, -0.355864, 0.623552,
		17.566711, 20.802443, 32.573120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174091, 21.386280, 32.893349>,  <18.053976, 21.051548, 32.136635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174091, 21.386280, 32.893349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.948536, 21.056602, 32.914253>,  <17.813202, 20.858795, 32.926796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.948536, 21.056602, 32.914253>,  <18.174091, 21.386280, 32.893349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.948536, 21.056602, 32.914253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570259, -0.342821, 0.746511,
		-0.597356, 0.450749, 0.663318,
		-0.563889, -0.824196, 0.052257,
		17.779369, 20.809343, 32.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039034, 21.371325, 33.589256>,  <18.174091, 21.386280, 32.893349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039034, 21.371325, 33.589256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.994095, 20.998520, 33.451427>,  <17.967133, 20.774837, 33.368729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.994095, 20.998520, 33.451427>,  <18.039034, 21.371325, 33.589256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994095, 20.998520, 33.451427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577213, -0.343475, 0.740844,
		-0.808829, -0.115661, 0.576558,
		-0.112346, -0.932013, -0.344573,
		17.960390, 20.718916, 33.348057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888050, 20.923485, 34.176216>,  <18.039034, 21.371325, 33.589256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888050, 20.923485, 34.176216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.007734, 20.687021, 33.876614>,  <18.079544, 20.545143, 33.696854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.007734, 20.687021, 33.876614>,  <17.888050, 20.923485, 34.176216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007734, 20.687021, 33.876614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658533, -0.440117, 0.610436,
		-0.690513, -0.675890, 0.257611,
		0.299209, -0.591160, -0.749002,
		18.097496, 20.509674, 33.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927755, 20.217510, 34.543518>,  <17.888050, 20.923485, 34.176216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927755, 20.217510, 34.543518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.157732, 20.263096, 34.219429>,  <18.295717, 20.290447, 34.024975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.157732, 20.263096, 34.219429>,  <17.927755, 20.217510, 34.543518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157732, 20.263096, 34.219429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796766, -0.303140, 0.522752,
		-0.186034, -0.946106, -0.265092,
		0.574940, 0.113967, -0.810220,
		18.330214, 20.297285, 33.976364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370373, 19.610090, 34.765312>,  <17.927755, 20.217510, 34.543518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370373, 19.610090, 34.765312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.161160, 19.269934, 34.788185>,  <17.035631, 19.065840, 34.801910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.161160, 19.269934, 34.788185>,  <17.370373, 19.610090, 34.765312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161160, 19.269934, 34.788185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404681, 0.188729, -0.894770,
		0.750114, -0.491134, -0.442849,
		-0.523031, -0.850393, 0.057185,
		17.004250, 19.014816, 34.805340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381550, 19.347321, 34.061272>,  <17.370373, 19.610090, 34.765312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381550, 19.347321, 34.061272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090549, 19.134699, 34.234795>,  <16.915949, 19.007126, 34.338909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090549, 19.134699, 34.234795>,  <17.381550, 19.347321, 34.061272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090549, 19.134699, 34.234795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563456, 0.102107, -0.819812,
		0.391481, -0.840846, -0.373792,
		-0.727502, -0.531556, 0.433807,
		16.872299, 18.975233, 34.364937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105961, 18.844307, 33.525806>,  <17.381550, 19.347321, 34.061272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105961, 18.844307, 33.525806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814987, 18.874233, 33.798641>,  <16.640404, 18.892189, 33.962341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814987, 18.874233, 33.798641>,  <17.105961, 18.844307, 33.525806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814987, 18.874233, 33.798641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684298, -0.152646, -0.713047,
		0.050771, -0.985445, 0.162237,
		-0.727433, 0.074816, 0.682088,
		16.596758, 18.896679, 34.003269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734060, 18.290138, 33.372246>,  <17.105961, 18.844307, 33.525806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734060, 18.290138, 33.372246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.535925, 18.577997, 33.566875>,  <16.417044, 18.750713, 33.683651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.535925, 18.577997, 33.566875>,  <16.734060, 18.290138, 33.372246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535925, 18.577997, 33.566875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777416, -0.117286, -0.617955,
		-0.387642, -0.684362, 0.617561,
		-0.495336, 0.719647, 0.486570,
		16.387323, 18.793892, 33.712845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193150, 17.940228, 33.460098>,  <16.734060, 18.290138, 33.372246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193150, 17.940228, 33.460098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.093582, 18.326548, 33.489143>,  <16.033842, 18.558340, 33.506569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.093582, 18.326548, 33.489143>,  <16.193150, 17.940228, 33.460098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093582, 18.326548, 33.489143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711361, -0.131436, -0.690428,
		-0.657270, -0.223514, 0.719748,
		-0.248921, 0.965798, 0.072610,
		16.018906, 18.616287, 33.510925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514297, 17.979633, 33.430981>,  <16.193150, 17.940228, 33.460098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514297, 17.979633, 33.430981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605230, 18.359446, 33.344528>,  <15.659790, 18.587332, 33.292656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605230, 18.359446, 33.344528>,  <15.514297, 17.979633, 33.430981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605230, 18.359446, 33.344528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809744, 0.061024, -0.583602,
		-0.540958, 0.307687, 0.782748,
		0.227333, 0.949529, -0.216136,
		15.673430, 18.644304, 33.279686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883389, 18.401855, 33.457985>,  <15.514297, 17.979633, 33.430981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883389, 18.401855, 33.457985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.167691, 18.574963, 33.236160>,  <15.338272, 18.678827, 33.103065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.167691, 18.574963, 33.236160>,  <14.883389, 18.401855, 33.457985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167691, 18.574963, 33.236160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639807, 0.070056, -0.765336,
		-0.292363, 0.898779, 0.326681,
		0.710754, 0.432769, -0.554563,
		15.380918, 18.704794, 33.069790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492387, 18.643950, 33.063129>,  <14.883389, 18.401855, 33.457985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492387, 18.643950, 33.063129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.832882, 18.741713, 32.877373>,  <15.037179, 18.800371, 32.765919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.832882, 18.741713, 32.877373>,  <14.492387, 18.643950, 33.063129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.832882, 18.741713, 32.877373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484871, 0.027803, -0.874144,
		-0.200738, 0.969273, 0.142174,
		0.851237, 0.244410, -0.464391,
		15.088253, 18.815035, 32.738056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287373, 19.218954, 32.486221>,  <14.492387, 18.643950, 33.063129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287373, 19.218954, 32.486221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.631197, 19.031975, 32.403614>,  <14.837492, 18.919788, 32.354050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.631197, 19.031975, 32.403614>,  <14.287373, 19.218954, 32.486221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.631197, 19.031975, 32.403614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205039, 0.054699, -0.977224,
		0.468096, 0.882327, -0.048827,
		0.859561, -0.467446, -0.206516,
		14.889065, 18.891741, 32.341660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654471, 19.635288, 31.958559>,  <14.287373, 19.218954, 32.486221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654471, 19.635288, 31.958559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791705, 19.260141, 31.937780>,  <14.874045, 19.035053, 31.925312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791705, 19.260141, 31.937780>,  <14.654471, 19.635288, 31.958559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791705, 19.260141, 31.937780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169451, -0.007400, -0.985511,
		0.923893, 0.346917, -0.161461,
		0.343085, -0.937867, -0.051949,
		14.894630, 18.978781, 31.922195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013509, 19.634731, 31.304718>,  <14.654471, 19.635288, 31.958559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.013509, 19.634731, 31.304718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.994429, 19.244425, 31.390137>,  <14.982981, 19.010241, 31.441389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.994429, 19.244425, 31.390137>,  <15.013509, 19.634731, 31.304718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994429, 19.244425, 31.390137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222501, -0.198041, -0.954606,
		0.973765, -0.093050, -0.207663,
		-0.047700, -0.975767, 0.213549,
		14.980119, 18.951694, 31.454201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345878, 19.343475, 30.839800>,  <15.013509, 19.634731, 31.304718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345878, 19.343475, 30.839800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083419, 19.066353, 30.959457>,  <14.925943, 18.900080, 31.031252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083419, 19.066353, 30.959457>,  <15.345878, 19.343475, 30.839800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083419, 19.066353, 30.959457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159859, -0.259806, -0.952337,
		0.737507, -0.672694, 0.059719,
		-0.656147, -0.692809, 0.299144,
		14.886575, 18.858511, 31.049200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551167, 18.713097, 30.458387>,  <15.345878, 19.343475, 30.839800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551167, 18.713097, 30.458387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.164367, 18.699993, 30.559454>,  <14.932287, 18.692131, 30.620094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.164367, 18.699993, 30.559454>,  <15.551167, 18.713097, 30.458387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.164367, 18.699993, 30.559454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216152, -0.419511, -0.881640,
		0.134878, -0.907159, 0.398586,
		-0.966999, -0.032759, 0.252667,
		14.874268, 18.690165, 30.635254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403042, 18.114426, 30.177240>,  <15.551167, 18.713097, 30.458387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.403042, 18.114426, 30.177240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046456, 18.291262, 30.216936>,  <14.832505, 18.397364, 30.240753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046456, 18.291262, 30.216936>,  <15.403042, 18.114426, 30.177240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046456, 18.291262, 30.216936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280782, -0.367131, -0.886778,
		-0.355600, -0.818397, 0.451415,
		-0.891465, 0.442087, 0.099239,
		14.779016, 18.423889, 30.246708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130083, 17.390423, 30.353794>,  <15.403042, 18.114426, 30.177240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130083, 17.390423, 30.353794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173178, 16.992985, 30.367432>,  <15.199035, 16.754522, 30.375614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173178, 16.992985, 30.367432>,  <15.130083, 17.390423, 30.353794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173178, 16.992985, 30.367432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412419, 0.075870, 0.907830,
		-0.904601, -0.083745, 0.417951,
		0.107736, -0.993595, 0.034094,
		15.205499, 16.694906, 30.377661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.934518, 17.167542, 31.060875>,  <15.130083, 17.390423, 30.353794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.934518, 17.167542, 31.060875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138894, 16.859655, 30.907785>,  <15.261519, 16.674923, 30.815931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138894, 16.859655, 30.907785>,  <14.934518, 17.167542, 31.060875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138894, 16.859655, 30.907785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422748, -0.162669, 0.891528,
		-0.748481, -0.617313, 0.242282,
		0.510940, -0.769716, -0.382723,
		15.292176, 16.628740, 30.792969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957772, 16.648161, 31.562769>,  <14.934518, 17.167542, 31.060875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.957772, 16.648161, 31.562769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.261569, 16.558828, 31.318377>,  <15.443847, 16.505228, 31.171741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.261569, 16.558828, 31.318377>,  <14.957772, 16.648161, 31.562769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261569, 16.558828, 31.318377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506612, -0.386104, 0.770887,
		-0.408066, -0.895012, -0.180100,
		0.759491, -0.223332, -0.610980,
		15.489416, 16.491829, 31.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089334, 15.870446, 31.523560>,  <14.957772, 16.648161, 31.562769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089334, 15.870446, 31.523560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.429425, 16.057814, 31.427483>,  <15.633480, 16.170235, 31.369837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.429425, 16.057814, 31.427483>,  <15.089334, 15.870446, 31.523560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429425, 16.057814, 31.427483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458746, -0.435520, 0.774516,
		0.258187, -0.768705, -0.585177,
		0.850230, 0.468418, -0.240194,
		15.684494, 16.198339, 31.355425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624358, 15.492489, 31.716700>,  <15.089334, 15.870446, 31.523560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624358, 15.492489, 31.716700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.822665, 15.834967, 31.658537>,  <15.941649, 16.040453, 31.623640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.822665, 15.834967, 31.658537>,  <15.624358, 15.492489, 31.716700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822665, 15.834967, 31.658537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649929, -0.254729, 0.716035,
		0.576027, -0.449491, -0.682753,
		0.495768, 0.856196, -0.145406,
		15.971395, 16.091825, 31.614916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318762, 15.311260, 31.770416>,  <15.624358, 15.492489, 31.716700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318762, 15.311260, 31.770416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300699, 15.709541, 31.802752>,  <16.289862, 15.948510, 31.822153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300699, 15.709541, 31.802752>,  <16.318762, 15.311260, 31.770416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300699, 15.709541, 31.802752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762012, -0.017993, 0.647313,
		0.645987, 0.090829, -0.757926,
		-0.045157, 0.995704, 0.080836,
		16.287151, 16.008253, 31.827002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001499, 15.537647, 31.812925>,  <16.318762, 15.311260, 31.770416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001499, 15.537647, 31.812925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782040, 15.830784, 31.973886>,  <16.650364, 16.006666, 32.070465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782040, 15.830784, 31.973886>,  <17.001499, 15.537647, 31.812925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782040, 15.830784, 31.973886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684471, 0.117338, 0.719536,
		0.480088, 0.670206, -0.565986,
		-0.548649, 0.732841, 0.402404,
		16.617445, 16.050636, 32.094608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551805, 15.914348, 31.441841>,  <17.001499, 15.537647, 31.812925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.551805, 15.914348, 31.441841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.914051, 15.890066, 31.273949>,  <18.131399, 15.875498, 31.173212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.914051, 15.890066, 31.273949>,  <17.551805, 15.914348, 31.441841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914051, 15.890066, 31.273949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416393, -0.315081, -0.852843,
		-0.080480, 0.947122, -0.310619,
		0.905616, -0.060703, -0.419732,
		18.185736, 15.871856, 31.148029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549644, 16.238705, 30.847546>,  <17.551805, 15.914348, 31.441841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549644, 16.238705, 30.847546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.868238, 16.010967, 30.766098>,  <18.059395, 15.874325, 30.717230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.868238, 16.010967, 30.766098>,  <17.549644, 16.238705, 30.847546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868238, 16.010967, 30.766098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369918, -0.192429, -0.908918,
		0.478304, 0.799262, -0.363877,
		0.796484, -0.569343, -0.203621,
		18.107183, 15.840164, 30.705011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700533, 16.383465, 30.193327>,  <17.549644, 16.238705, 30.847546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.700533, 16.383465, 30.193327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.926212, 16.058430, 30.251818>,  <18.061619, 15.863409, 30.286913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.926212, 16.058430, 30.251818>,  <17.700533, 16.383465, 30.193327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926212, 16.058430, 30.251818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101598, -0.244090, -0.964416,
		0.819365, 0.529265, -0.220272,
		0.564197, -0.812588, 0.146226,
		18.095472, 15.814653, 30.295685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208668, 16.454966, 29.713827>,  <17.700533, 16.383465, 30.193327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.208668, 16.454966, 29.713827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.143150, 16.073004, 29.812887>,  <18.103840, 15.843827, 29.872324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.143150, 16.073004, 29.812887>,  <18.208668, 16.454966, 29.713827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.143150, 16.073004, 29.812887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074785, -0.238301, -0.968308,
		0.983656, -0.177124, -0.032380,
		-0.163794, -0.954903, 0.247652,
		18.094011, 15.786532, 29.887182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606478, 16.043701, 29.239202>,  <18.208668, 16.454966, 29.713827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606478, 16.043701, 29.239202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.377258, 15.752069, 29.388903>,  <18.239727, 15.577090, 29.478722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.377258, 15.752069, 29.388903>,  <18.606478, 16.043701, 29.239202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377258, 15.752069, 29.388903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058724, -0.418962, -0.906103,
		0.817416, -0.541217, 0.197270,
		-0.573047, -0.729079, 0.374249,
		18.205345, 15.533346, 29.501177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884537, 15.426879, 28.993191>,  <18.606478, 16.043701, 29.239202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884537, 15.426879, 28.993191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.504095, 15.336389, 29.077307>,  <18.275829, 15.282094, 29.127777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.504095, 15.336389, 29.077307>,  <18.884537, 15.426879, 28.993191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504095, 15.336389, 29.077307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096187, -0.430042, -0.897670,
		0.293510, -0.874006, 0.387255,
		-0.951105, -0.226226, 0.210290,
		18.218763, 15.268521, 29.140394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813702, 14.759181, 28.629980>,  <18.884537, 15.426879, 28.993191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813702, 14.759181, 28.629980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.447229, 14.913148, 28.674608>,  <18.227346, 15.005528, 28.701385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.447229, 14.913148, 28.674608>,  <18.813702, 14.759181, 28.629980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447229, 14.913148, 28.674608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269910, -0.386857, -0.881754,
		-0.296238, -0.837963, 0.458324,
		-0.916183, 0.384915, 0.111573,
		18.172375, 15.028624, 28.708080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<21.331549, 22.778225, 33.762569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.222387, 22.394804, 33.729832>,  <21.156891, 22.164751, 33.710190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.222387, 22.394804, 33.729832>,  <21.331549, 22.778225, 33.762569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222387, 22.394804, 33.729832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723676, 0.260594, -0.639049,
		0.633890, -0.115173, -0.764799,
		-0.272903, -0.958554, -0.081840,
		21.140516, 22.107237, 33.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.408524, 22.514383, 33.048950>,  <21.331549, 22.778225, 33.762569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.408524, 22.514383, 33.048950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.104158, 22.337162, 33.238567>,  <20.921539, 22.230829, 33.352337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.104158, 22.337162, 33.238567>,  <21.408524, 22.514383, 33.048950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104158, 22.337162, 33.238567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623993, 0.299362, -0.721814,
		0.177892, -0.845036, -0.504251,
		-0.760912, -0.443054, 0.474042,
		20.875885, 22.204245, 33.380779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941500, 22.034960, 32.600735>,  <21.408524, 22.514383, 33.048950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941500, 22.034960, 32.600735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.730177, 22.191818, 32.901962>,  <20.603384, 22.285933, 33.082699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.730177, 22.191818, 32.901962>,  <20.941500, 22.034960, 32.600735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730177, 22.191818, 32.901962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597803, 0.458043, -0.657897,
		-0.602930, -0.797758, -0.007561,
		-0.528306, 0.392146, 0.753070,
		20.571686, 22.309462, 33.127884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470318, 21.405832, 32.702892>,  <20.941500, 22.034960, 32.600735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470318, 21.405832, 32.702892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.476881, 21.314775, 33.092335>,  <20.480818, 21.260141, 33.326000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.476881, 21.314775, 33.092335>,  <20.470318, 21.405832, 32.702892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.476881, 21.314775, 33.092335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992631, 0.120633, 0.011478,
		-0.120062, 0.966244, 0.227944,
		0.016407, -0.227642, 0.973607,
		20.481804, 21.246483, 33.384418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.966547, 21.292746, 32.127338>,  <20.470318, 21.405832, 32.702892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.966547, 21.292746, 32.127338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.094343, 21.087276, 31.808826>,  <20.171021, 20.963995, 31.617718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.094343, 21.087276, 31.808826>,  <19.966547, 21.292746, 32.127338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094343, 21.087276, 31.808826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855903, 0.204177, -0.475123,
		0.406640, 0.833338, -0.374422,
		0.319490, -0.513674, -0.796283,
		20.190189, 20.933174, 31.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885744, 21.648533, 31.594667>,  <19.966547, 21.292746, 32.127338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885744, 21.648533, 31.594667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.860449, 21.258190, 31.511044>,  <19.845272, 21.023985, 31.460869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.860449, 21.258190, 31.511044>,  <19.885744, 21.648533, 31.594667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860449, 21.258190, 31.511044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932952, 0.132196, -0.334851,
		0.354403, 0.173869, -0.918786,
		-0.063240, -0.975855, -0.209062,
		19.841476, 20.965433, 31.448324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750359, 21.564674, 30.853914>,  <19.885744, 21.648533, 31.594667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750359, 21.564674, 30.853914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.605057, 21.303930, 31.120186>,  <19.517876, 21.147484, 31.279949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.605057, 21.303930, 31.120186>,  <19.750359, 21.564674, 30.853914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605057, 21.303930, 31.120186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913565, 0.108966, -0.391824,
		0.182877, -0.750472, -0.635096,
		-0.363257, -0.651857, 0.665678,
		19.496080, 21.108374, 31.319889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195509, 21.114092, 30.636194>,  <19.750359, 21.564674, 30.853914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195509, 21.114092, 30.636194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.174408, 20.720163, 30.570047>,  <19.161747, 20.483807, 30.530359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.174408, 20.720163, 30.570047>,  <19.195509, 21.114092, 30.636194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174408, 20.720163, 30.570047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363797, 0.173171, -0.915240,
		0.929983, 0.011878, -0.367410,
		-0.052754, -0.984820, -0.165368,
		19.158581, 20.424717, 30.520437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639053, 21.010817, 30.074131>,  <19.195509, 21.114092, 30.636194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639053, 21.010817, 30.074131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.379879, 20.706264, 30.082888>,  <19.224375, 20.523533, 30.088142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.379879, 20.706264, 30.082888>,  <19.639053, 21.010817, 30.074131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379879, 20.706264, 30.082888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299671, 0.228386, -0.926303,
		0.700270, -0.606744, -0.376143,
		-0.647934, -0.761381, 0.021891,
		19.185499, 20.477850, 30.089455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709402, 20.762974, 29.421589>,  <19.639053, 21.010817, 30.074131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709402, 20.762974, 29.421589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.368736, 20.599308, 29.552586>,  <19.164337, 20.501108, 29.631184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.368736, 20.599308, 29.552586>,  <19.709402, 20.762974, 29.421589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.368736, 20.599308, 29.552586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420910, 0.161704, -0.892573,
		0.312255, -0.898017, -0.309940,
		-0.851664, -0.409167, 0.327491,
		19.113237, 20.476559, 29.650833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498568, 20.376932, 28.933725>,  <19.709402, 20.762974, 29.421589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498568, 20.376932, 28.933725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.172653, 20.455662, 29.151857>,  <18.977104, 20.502899, 29.282738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.172653, 20.455662, 29.151857>,  <19.498568, 20.376932, 28.933725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172653, 20.455662, 29.151857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530205, 0.127552, -0.838220,
		-0.234540, -0.972106, 0.000429,
		-0.814784, 0.196823, 0.545332,
		18.928217, 20.514708, 29.315456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977556, 19.827810, 28.768717>,  <19.498568, 20.376932, 28.933725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977556, 19.827810, 28.768717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.793711, 20.154316, 28.908699>,  <18.683403, 20.350220, 28.992689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.793711, 20.154316, 28.908699>,  <18.977556, 19.827810, 28.768717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793711, 20.154316, 28.908699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563267, 0.036738, -0.825458,
		-0.686647, -0.576512, 0.442888,
		-0.459616, 0.816263, 0.349956,
		18.655827, 20.399195, 29.013685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082027, 19.034763, 28.837433>,  <18.977556, 19.827810, 28.768717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082027, 19.034763, 28.837433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.292097, 18.729286, 28.687252>,  <19.418139, 18.546000, 28.597143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.292097, 18.729286, 28.687252>,  <19.082027, 19.034763, 28.837433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292097, 18.729286, 28.687252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345522, -0.211834, 0.914189,
		-0.777694, -0.609835, 0.152623,
		0.525173, -0.763694, -0.375453,
		19.449650, 18.500177, 28.574615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000469, 18.473255, 29.277309>,  <19.082027, 19.034763, 28.837433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000469, 18.473255, 29.277309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.345154, 18.384336, 29.094866>,  <19.551964, 18.330986, 28.985399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.345154, 18.384336, 29.094866>,  <19.000469, 18.473255, 29.277309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345154, 18.384336, 29.094866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383916, -0.302096, 0.872552,
		-0.331764, -0.926994, -0.174972,
		0.861708, -0.222307, -0.456113,
		19.603668, 18.317648, 28.958033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293627, 17.972172, 29.643414>,  <19.000469, 18.473255, 29.277309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293627, 17.972172, 29.643414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.609890, 18.038891, 29.407774>,  <19.799648, 18.078922, 29.266390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.609890, 18.038891, 29.407774>,  <19.293627, 17.972172, 29.643414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609890, 18.038891, 29.407774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606398, -0.346137, 0.715870,
		-0.084503, -0.923238, -0.374822,
		0.790658, 0.166798, -0.589099,
		19.847088, 18.088930, 29.231045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757566, 17.333069, 29.637161>,  <19.293627, 17.972172, 29.643414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757566, 17.333069, 29.637161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.987329, 17.659267, 29.608824>,  <20.125187, 17.854986, 29.591822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.987329, 17.659267, 29.608824>,  <19.757566, 17.333069, 29.637161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987329, 17.659267, 29.608824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568676, -0.335306, 0.751118,
		0.588780, -0.471736, -0.656356,
		0.574409, 0.815497, -0.070843,
		20.159653, 17.903917, 29.587570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451828, 17.127872, 29.834333>,  <19.757566, 17.333069, 29.637161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451828, 17.127872, 29.834333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.470955, 17.527308, 29.843578>,  <20.482431, 17.766970, 29.849125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.470955, 17.527308, 29.843578>,  <20.451828, 17.127872, 29.834333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470955, 17.527308, 29.843578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616320, -0.047705, 0.786049,
		0.786043, -0.023341, -0.617732,
		0.047816, 0.998589, 0.023112,
		20.485300, 17.826883, 29.850512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.222811, 17.261419, 29.787249>,  <20.451828, 17.127872, 29.834333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.222811, 17.261419, 29.787249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.053391, 17.594114, 29.930815>,  <20.951738, 17.793732, 30.016954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.053391, 17.594114, 29.930815>,  <21.222811, 17.261419, 29.787249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053391, 17.594114, 29.930815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614911, -0.026964, 0.788136,
		0.665199, 0.554516, -0.500023,
		-0.423551, 0.831736, 0.358915,
		20.926325, 17.843636, 30.038488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685852, 17.649971, 30.002989>,  <21.222811, 17.261419, 29.787249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685852, 17.649971, 30.002989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.375994, 17.805927, 30.202150>,  <21.190079, 17.899502, 30.321648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.375994, 17.805927, 30.202150>,  <21.685852, 17.649971, 30.002989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375994, 17.805927, 30.202150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446579, -0.220199, 0.867225,
		0.447762, 0.894146, -0.003542,
		-0.774646, 0.389892, 0.497903,
		21.143600, 17.922895, 30.351521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949976, 18.119047, 30.449812>,  <21.685852, 17.649971, 30.002989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949976, 18.119047, 30.449812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.602190, 17.987535, 30.597290>,  <21.393518, 17.908628, 30.685778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.602190, 17.987535, 30.597290>,  <21.949976, 18.119047, 30.449812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602190, 17.987535, 30.597290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447673, -0.208858, 0.869464,
		-0.208858, 0.921022, 0.328781,
		-0.869464, -0.328781, 0.368695,
		21.341351, 17.888901, 30.707899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.698643, 18.502647, 31.076967>,  <21.949976, 18.119047, 30.449812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.698643, 18.502647, 31.076967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.582977, 18.119875, 31.066622>,  <21.513578, 17.890211, 31.060413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.582977, 18.119875, 31.066622>,  <21.698643, 18.502647, 31.076967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.582977, 18.119875, 31.066622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469066, -0.165191, 0.867576,
		-0.834483, 0.238738, 0.496631,
		-0.289163, -0.956930, -0.025865,
		21.496229, 17.832796, 31.058863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885626, 18.518652, 31.890440>,  <21.698643, 18.502647, 31.076967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885626, 18.518652, 31.890440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.653294, 18.207445, 31.794670>,  <21.513893, 18.020721, 31.737207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.653294, 18.207445, 31.794670>,  <21.885626, 18.518652, 31.890440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653294, 18.207445, 31.794670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009855, -0.287385, 0.957764,
		-0.813963, 0.558660, 0.159255,
		-0.580833, -0.778015, -0.239427,
		21.479044, 17.974041, 31.722841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.289026, 18.518520, 32.387672>,  <21.885626, 18.518652, 31.890440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.289026, 18.518520, 32.387672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.357182, 18.145992, 32.258919>,  <21.398075, 17.922476, 32.181667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.357182, 18.145992, 32.258919>,  <21.289026, 18.518520, 32.387672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357182, 18.145992, 32.258919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277213, -0.268164, 0.922627,
		-0.945580, -0.246433, 0.212483,
		0.170386, -0.931321, -0.321885,
		21.408297, 17.866596, 32.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907005, 18.081182, 32.718693>,  <21.289026, 18.518520, 32.387672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907005, 18.081182, 32.718693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.193659, 17.825293, 32.607563>,  <21.365652, 17.671759, 32.540886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.193659, 17.825293, 32.607563>,  <20.907005, 18.081182, 32.718693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193659, 17.825293, 32.607563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080693, -0.471719, 0.878049,
		-0.692765, -0.606822, -0.389672,
		0.716635, -0.639725, -0.277824,
		21.408649, 17.633375, 32.524216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657610, 17.312775, 32.887596>,  <20.907005, 18.081182, 32.718693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657610, 17.312775, 32.887596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.054291, 17.343727, 32.846535>,  <21.292299, 17.362299, 32.821899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.054291, 17.343727, 32.846535>,  <20.657610, 17.312775, 32.887596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054291, 17.343727, 32.846535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127010, -0.466578, 0.875313,
		0.019839, -0.881089, -0.472535,
		0.991703, 0.077381, -0.102650,
		21.351801, 17.366941, 32.815739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.916334, 16.720491, 32.977886>,  <20.657610, 17.312775, 32.887596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.916334, 16.720491, 32.977886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.248642, 16.931973, 33.047504>,  <21.448027, 17.058861, 33.089275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.248642, 16.931973, 33.047504>,  <20.916334, 16.720491, 32.977886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248642, 16.931973, 33.047504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178422, -0.549140, 0.816463,
		0.527245, -0.647238, -0.550541,
		0.830770, 0.528704, 0.174050,
		21.497873, 17.090584, 33.099720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719524, 16.498566, 32.413467>,  <20.916334, 16.720491, 32.977886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719524, 16.498566, 32.413467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.714746, 16.211073, 32.691540>,  <20.711880, 16.038578, 32.858383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.714746, 16.211073, 32.691540>,  <20.719524, 16.498566, 32.413467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714746, 16.211073, 32.691540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843816, -0.365775, -0.392662,
		0.536500, -0.591298, -0.602108,
		-0.011944, -0.718732, 0.695185,
		20.711163, 15.995454, 32.900097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686174, 15.848546, 32.135246>,  <20.719524, 16.498566, 32.413467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686174, 15.848546, 32.135246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.521162, 15.825524, 32.498894>,  <20.422153, 15.811711, 32.717083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.521162, 15.825524, 32.498894>,  <20.686174, 15.848546, 32.135246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521162, 15.825524, 32.498894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888676, -0.193882, -0.415529,
		0.200178, -0.979335, 0.028834,
		-0.412532, -0.057555, 0.909123,
		20.397402, 15.808258, 32.771629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334122, 15.251759, 32.087009>,  <20.686174, 15.848546, 32.135246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334122, 15.251759, 32.087009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.174469, 15.436742, 32.403698>,  <20.078678, 15.547731, 32.593712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.174469, 15.436742, 32.403698>,  <20.334122, 15.251759, 32.087009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174469, 15.436742, 32.403698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910979, -0.297935, -0.285224,
		0.103979, -0.835086, 0.540204,
		-0.399132, 0.462457, 0.791724,
		20.054729, 15.575480, 32.641216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710497, 14.884392, 32.212624>,  <20.334122, 15.251759, 32.087009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710497, 14.884392, 32.212624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.644688, 15.231059, 32.401012>,  <19.605202, 15.439059, 32.514046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.644688, 15.231059, 32.401012>,  <19.710497, 14.884392, 32.212624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644688, 15.231059, 32.401012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966114, -0.045314, -0.254107,
		-0.198885, -0.496822, 0.844756,
		-0.164525, 0.866668, 0.470975,
		19.595329, 15.491059, 32.542305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155172, 14.801687, 32.627045>,  <19.710497, 14.884392, 32.212624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155172, 14.801687, 32.627045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.160736, 15.194727, 32.552959>,  <19.164074, 15.430551, 32.508507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.160736, 15.194727, 32.552959>,  <19.155172, 14.801687, 32.627045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160736, 15.194727, 32.552959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897288, -0.069470, -0.435945,
		-0.441226, 0.172255, 0.880709,
		0.013911, 0.982600, -0.185214,
		19.164909, 15.489507, 32.497395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462168, 15.212905, 32.720299>,  <19.155172, 14.801687, 32.627045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462168, 15.212905, 32.720299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687834, 15.381199, 32.436131>,  <18.823235, 15.482175, 32.265629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687834, 15.381199, 32.436131>,  <18.462168, 15.212905, 32.720299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687834, 15.381199, 32.436131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777112, -0.020117, -0.629041,
		-0.278951, 0.906961, 0.315609,
		0.564167, 0.420734, -0.710421,
		18.857084, 15.507420, 32.223003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205093, 15.880043, 32.603268>,  <18.462168, 15.212905, 32.720299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205093, 15.880043, 32.603268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.369946, 15.726171, 32.272892>,  <18.468857, 15.633847, 32.074669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.369946, 15.726171, 32.272892>,  <18.205093, 15.880043, 32.603268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369946, 15.726171, 32.272892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888639, 0.030439, -0.457596,
		0.201169, 0.922547, -0.329298,
		0.412131, -0.384682, -0.825935,
		18.493586, 15.610766, 32.025112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602606, 15.882830, 32.205856>,  <18.205093, 15.880043, 32.603268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602606, 15.882830, 32.205856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.258377, 16.011948, 32.363449>,  <17.051840, 16.089418, 32.458004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.258377, 16.011948, 32.363449>,  <17.602606, 15.882830, 32.205856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258377, 16.011948, 32.363449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427934, 0.038750, 0.902979,
		0.276210, 0.945675, -0.171481,
		-0.860570, 0.322795, 0.393984,
		17.000206, 16.108786, 32.481644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.729153, 16.559813, 32.426197>,  <17.602606, 15.882830, 32.205856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.729153, 16.559813, 32.426197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.433395, 16.414408, 32.652878>,  <17.255941, 16.327164, 32.788887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.433395, 16.414408, 32.652878>,  <17.729153, 16.559813, 32.426197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433395, 16.414408, 32.652878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481685, 0.302472, 0.822490,
		-0.470399, 0.881117, -0.048547,
		-0.739394, -0.363514, 0.566704,
		17.211576, 16.305353, 32.822887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677664, 16.974581, 32.966030>,  <17.729153, 16.559813, 32.426197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677664, 16.974581, 32.966030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.461637, 16.687136, 33.141266>,  <17.332022, 16.514669, 33.246407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.461637, 16.687136, 33.141266>,  <17.677664, 16.974581, 32.966030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461637, 16.687136, 33.141266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359965, 0.273289, 0.892042,
		-0.760758, 0.639459, 0.111081,
		-0.540067, -0.718613, 0.438089,
		17.299618, 16.471552, 33.272694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364847, 17.295767, 33.632011>,  <17.677664, 16.974581, 32.966030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364847, 17.295767, 33.632011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.379303, 16.897774, 33.669334>,  <17.387978, 16.658978, 33.691730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.379303, 16.897774, 33.669334>,  <17.364847, 17.295767, 33.632011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379303, 16.897774, 33.669334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341882, 0.100048, 0.934402,
		-0.939048, -0.001869, 0.343782,
		0.036141, -0.994981, 0.093311,
		17.390144, 16.599279, 33.697327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140112, 17.184332, 34.315273>,  <17.364847, 17.295767, 33.632011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140112, 17.184332, 34.315273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.313772, 16.836805, 34.220047>,  <17.417969, 16.628290, 34.162910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.313772, 16.836805, 34.220047>,  <17.140112, 17.184332, 34.315273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313772, 16.836805, 34.220047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475672, -0.003328, 0.879617,
		-0.765016, -0.495127, 0.411826,
		0.434151, -0.868814, -0.238063,
		17.444017, 16.576160, 34.148628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877766, 16.686066, 34.842934>,  <17.140112, 17.184332, 34.315273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877766, 16.686066, 34.842934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.214983, 16.572063, 34.660484>,  <17.417313, 16.503662, 34.551014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.214983, 16.572063, 34.660484>,  <16.877766, 16.686066, 34.842934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214983, 16.572063, 34.660484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453829, -0.078180, 0.887653,
		-0.288646, -0.955332, 0.063435,
		0.843044, -0.285006, -0.456123,
		17.467896, 16.486563, 34.523647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177792, 16.162443, 35.166710>,  <16.877766, 16.686066, 34.842934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177792, 16.162443, 35.166710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.477644, 16.321869, 34.955353>,  <17.657557, 16.417524, 34.828537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.477644, 16.321869, 34.955353>,  <17.177792, 16.162443, 35.166710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477644, 16.321869, 34.955353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528204, 0.120793, 0.840481,
		0.398811, -0.909151, -0.119973,
		0.749633, 0.398564, -0.528391,
		17.702534, 16.441439, 34.796837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699652, 15.635019, 35.262329>,  <17.177792, 16.162443, 35.166710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699652, 15.635019, 35.262329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.866379, 15.982362, 35.154835>,  <17.966415, 16.190767, 35.090340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.866379, 15.982362, 35.154835>,  <17.699652, 15.635019, 35.262329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866379, 15.982362, 35.154835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330609, 0.130569, 0.934692,
		0.846735, -0.478442, -0.232663,
		0.416817, 0.868357, -0.268735,
		17.991425, 16.242868, 35.074215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216015, 15.571239, 35.625412>,  <17.699652, 15.635019, 35.262329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216015, 15.571239, 35.625412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.195353, 15.961976, 35.542355>,  <18.182955, 16.196417, 35.492519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.195353, 15.961976, 35.542355>,  <18.216015, 15.571239, 35.625412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195353, 15.961976, 35.542355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329391, 0.212948, 0.919867,
		0.942780, -0.020879, -0.332762,
		-0.051655, 0.976840, -0.207641,
		18.179855, 16.255028, 35.480061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.636160, 15.365294, 20.315701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739382, 15.738768, 20.415010>,  <11.801314, 15.962852, 20.474596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739382, 15.738768, 20.415010>,  <11.636160, 15.365294, 20.315701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739382, 15.738768, 20.415010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646701, -0.357851, 0.673588,
		0.717765, -0.013261, -0.696159,
		0.258054, 0.933685, 0.248277,
		11.816798, 16.018873, 20.489494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.325481, 15.399940, 20.431684>,  <11.636160, 15.365294, 20.315701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.325481, 15.399940, 20.431684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215221, 15.737329, 20.616104>,  <12.149065, 15.939764, 20.726755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215221, 15.737329, 20.616104>,  <12.325481, 15.399940, 20.431684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215221, 15.737329, 20.616104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535746, -0.263423, 0.802237,
		0.798118, 0.468143, -0.379276,
		-0.275651, 0.843475, 0.461049,
		12.132526, 15.990372, 20.754419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909976, 15.718442, 20.793306>,  <12.325481, 15.399940, 20.431684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909976, 15.718442, 20.793306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603007, 15.879718, 20.992706>,  <12.418826, 15.976483, 21.112347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603007, 15.879718, 20.992706>,  <12.909976, 15.718442, 20.793306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.603007, 15.879718, 20.992706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480245, -0.153630, 0.863575,
		0.424769, 0.902129, -0.075730,
		-0.767422, 0.403189, 0.498500,
		12.372781, 16.000675, 21.142256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234056, 16.155510, 21.227884>,  <12.909976, 15.718442, 20.793306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234056, 16.155510, 21.227884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.874367, 16.130096, 21.401024>,  <12.658553, 16.114849, 21.504908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.874367, 16.130096, 21.401024>,  <13.234056, 16.155510, 21.227884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.874367, 16.130096, 21.401024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427965, 0.077584, 0.900459,
		-0.090791, 0.994959, -0.042576,
		-0.899224, -0.063532, 0.432851,
		12.604600, 16.111036, 21.530880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347287, 16.568729, 21.835814>,  <13.234056, 16.155510, 21.227884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347287, 16.568729, 21.835814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037651, 16.325153, 21.905066>,  <12.851870, 16.179007, 21.946617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037651, 16.325153, 21.905066>,  <13.347287, 16.568729, 21.835814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037651, 16.325153, 21.905066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318923, -0.138858, 0.937553,
		-0.546876, 0.780966, 0.301695,
		-0.774090, -0.608942, 0.173130,
		12.805424, 16.142471, 21.957005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033761, 16.856159, 22.446077>,  <13.347287, 16.568729, 21.835814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033761, 16.856159, 22.446077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923495, 16.473309, 22.410492>,  <12.857336, 16.243597, 22.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923495, 16.473309, 22.410492>,  <13.033761, 16.856159, 22.446077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923495, 16.473309, 22.410492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206265, -0.149291, 0.967040,
		-0.938863, 0.248228, 0.238576,
		-0.275664, -0.957128, -0.088963,
		12.840796, 16.186171, 22.383802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609033, 16.779507, 23.088606>,  <13.033761, 16.856159, 22.446077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609033, 16.779507, 23.088606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.688908, 16.405943, 22.969988>,  <12.736833, 16.181805, 22.898817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.688908, 16.405943, 22.969988>,  <12.609033, 16.779507, 23.088606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.688908, 16.405943, 22.969988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124984, -0.275890, 0.953029,
		-0.971856, -0.227370, 0.061632,
		0.199687, -0.933910, -0.296543,
		12.748814, 16.125771, 22.881025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420101, 16.332325, 23.650852>,  <12.609033, 16.779507, 23.088606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420101, 16.332325, 23.650852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696885, 16.140047, 23.435400>,  <12.862955, 16.024681, 23.306128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696885, 16.140047, 23.435400>,  <12.420101, 16.332325, 23.650852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696885, 16.140047, 23.435400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346433, -0.433488, 0.831909,
		-0.633385, -0.762247, -0.133427,
		0.691959, -0.480695, -0.538632,
		12.904473, 15.995838, 23.273809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337061, 15.744003, 23.881405>,  <12.420101, 16.332325, 23.650852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337061, 15.744003, 23.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708330, 15.752702, 23.732801>,  <12.931092, 15.757921, 23.643639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708330, 15.752702, 23.732801>,  <12.337061, 15.744003, 23.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.708330, 15.752702, 23.732801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327812, -0.520331, 0.788540,
		-0.176160, -0.853688, -0.490087,
		0.928174, 0.021747, -0.371510,
		12.986782, 15.759226, 23.621349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597176, 15.073011, 24.085075>,  <12.337061, 15.744003, 23.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597176, 15.073011, 24.085075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922709, 15.284290, 23.988180>,  <13.118030, 15.411057, 23.930042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922709, 15.284290, 23.988180>,  <12.597176, 15.073011, 24.085075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.922709, 15.284290, 23.988180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515985, -0.465131, 0.719315,
		0.267269, -0.710394, -0.651082,
		0.813835, 0.528199, -0.242238,
		13.166860, 15.442750, 23.915508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263274, 14.573911, 23.974152>,  <12.597176, 15.073011, 24.085075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263274, 14.573911, 23.974152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360897, 14.946847, 24.080868>,  <13.419471, 15.170609, 24.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360897, 14.946847, 24.080868>,  <13.263274, 14.573911, 23.974152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360897, 14.946847, 24.080868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369752, -0.343791, 0.863187,
		0.896504, -0.112021, -0.428639,
		0.244057, 0.932341, 0.266790,
		13.434114, 15.226549, 24.160904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859213, 14.522653, 24.387779>,  <13.263274, 14.573911, 23.974152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859213, 14.522653, 24.387779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771508, 14.903138, 24.474606>,  <13.718885, 15.131430, 24.526701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771508, 14.903138, 24.474606>,  <13.859213, 14.522653, 24.387779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771508, 14.903138, 24.474606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335824, -0.135305, 0.932156,
		0.916049, 0.277282, -0.289773,
		-0.219263, 0.951214, 0.217064,
		13.705729, 15.188502, 24.539724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427722, 14.659007, 23.758015>,  <13.859213, 14.522653, 24.387779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427722, 14.659007, 23.758015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794211, 14.565855, 23.627600>,  <15.014105, 14.509964, 23.549351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794211, 14.565855, 23.627600>,  <14.427722, 14.659007, 23.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794211, 14.565855, 23.627600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329393, 0.025474, -0.943849,
		0.228110, 0.972171, -0.053369,
		0.916224, -0.232881, -0.326037,
		15.069078, 14.495991, 23.529789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468929, 15.048981, 23.096279>,  <14.427722, 14.659007, 23.758015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468929, 15.048981, 23.096279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758228, 14.774513, 23.065069>,  <14.931808, 14.609833, 23.046343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758228, 14.774513, 23.065069>,  <14.468929, 15.048981, 23.096279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758228, 14.774513, 23.065069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074708, 0.034578, -0.996606,
		0.686537, 0.726621, -0.026254,
		0.723247, -0.686168, -0.078023,
		14.975203, 14.568663, 23.041662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927336, 15.384436, 22.515108>,  <14.468929, 15.048981, 23.096279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927336, 15.384436, 22.515108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015261, 14.994893, 22.538034>,  <15.068016, 14.761168, 22.551790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015261, 14.994893, 22.538034>,  <14.927336, 15.384436, 22.515108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015261, 14.994893, 22.538034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050210, -0.047381, -0.997614,
		0.974249, 0.222166, 0.038482,
		0.219812, -0.973857, 0.057316,
		15.081204, 14.702736, 22.555229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437959, 15.228026, 22.011217>,  <14.927336, 15.384436, 22.515108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437959, 15.228026, 22.011217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258652, 14.875841, 22.072981>,  <15.151068, 14.664530, 22.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258652, 14.875841, 22.072981>,  <15.437959, 15.228026, 22.011217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258652, 14.875841, 22.072981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245901, -0.044614, -0.968268,
		0.859413, -0.472011, -0.196508,
		-0.448266, -0.880463, 0.154410,
		15.124172, 14.611702, 22.119305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680824, 14.792323, 21.450941>,  <15.437959, 15.228026, 22.011217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680824, 14.792323, 21.450941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330282, 14.644809, 21.574875>,  <15.119957, 14.556300, 21.649235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330282, 14.644809, 21.574875>,  <15.680824, 14.792323, 21.450941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330282, 14.644809, 21.574875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265523, -0.166807, -0.949565,
		0.401869, -0.914425, 0.048261,
		-0.876355, -0.368786, 0.309835,
		15.067375, 14.534173, 21.667826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508111, 14.043164, 21.079794>,  <15.680824, 14.792323, 21.450941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508111, 14.043164, 21.079794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155396, 14.183536, 21.205843>,  <14.943768, 14.267758, 21.281473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155396, 14.183536, 21.205843>,  <15.508111, 14.043164, 21.079794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155396, 14.183536, 21.205843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404555, -0.219285, -0.887834,
		-0.242475, -0.910360, 0.335336,
		-0.881783, 0.350939, 0.315120,
		14.890861, 14.288815, 21.300381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008137, 13.558076, 20.703465>,  <15.508111, 14.043164, 21.079794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008137, 13.558076, 20.703465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771747, 13.848696, 20.843678>,  <14.629912, 14.023067, 20.927805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771747, 13.848696, 20.843678>,  <15.008137, 13.558076, 20.703465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.771747, 13.848696, 20.843678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468325, 0.044798, -0.882420,
		-0.656825, -0.685652, 0.313787,
		-0.590975, 0.726550, 0.350533,
		14.594454, 14.066661, 20.948837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323794, 13.335878, 20.620150>,  <15.008137, 13.558076, 20.703465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323794, 13.335878, 20.620150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243364, 13.723352, 20.678413>,  <14.195107, 13.955837, 20.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243364, 13.723352, 20.678413>,  <14.323794, 13.335878, 20.620150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243364, 13.723352, 20.678413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603983, -0.005530, -0.796978,
		-0.771215, -0.248230, 0.586181,
		-0.201076, 0.968685, 0.145662,
		14.183042, 14.013958, 20.722113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531754, 13.488586, 20.595346>,  <14.323794, 13.335878, 20.620150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531754, 13.488586, 20.595346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739002, 13.818403, 20.504412>,  <13.863351, 14.016294, 20.449850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739002, 13.818403, 20.504412>,  <13.531754, 13.488586, 20.595346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739002, 13.818403, 20.504412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518713, 0.091581, -0.850029,
		-0.680066, 0.558338, 0.475151,
		0.518119, 0.824543, -0.227336,
		13.894438, 14.065766, 20.436211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086987, 13.976091, 20.240322>,  <13.531754, 13.488586, 20.595346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086987, 13.976091, 20.240322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444196, 14.102456, 20.112129>,  <13.658522, 14.178275, 20.035213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444196, 14.102456, 20.112129>,  <13.086987, 13.976091, 20.240322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444196, 14.102456, 20.112129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393227, 0.201519, -0.897086,
		-0.218817, 0.927140, 0.304187,
		0.893024, 0.315912, -0.320480,
		13.712103, 14.197229, 20.015985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910617, 14.669424, 19.931570>,  <13.086987, 13.976091, 20.240322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910617, 14.669424, 19.931570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275498, 14.601563, 19.782383>,  <13.494428, 14.560847, 19.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275498, 14.601563, 19.782383>,  <12.910617, 14.669424, 19.931570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275498, 14.601563, 19.782383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284109, 0.393999, -0.874098,
		0.295240, 0.903318, 0.311208,
		0.912203, -0.169652, -0.372965,
		13.549159, 14.550668, 19.670494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075830, 15.241671, 19.669771>,  <12.910617, 14.669424, 19.931570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075830, 15.241671, 19.669771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287641, 14.950513, 19.495520>,  <13.414726, 14.775818, 19.390968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287641, 14.950513, 19.495520>,  <13.075830, 15.241671, 19.669771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287641, 14.950513, 19.495520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213724, 0.382493, -0.898900,
		0.820930, 0.569094, 0.046971,
		0.529524, -0.727895, -0.435629,
		13.446498, 14.732144, 19.364830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398194, 15.570128, 19.108768>,  <13.075830, 15.241671, 19.669771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398194, 15.570128, 19.108768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390746, 15.181034, 19.016304>,  <13.386277, 14.947577, 18.960825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390746, 15.181034, 19.016304>,  <13.398194, 15.570128, 19.108768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390746, 15.181034, 19.016304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327068, 0.224409, -0.917969,
		0.944817, 0.058513, -0.322329,
		-0.018620, -0.972737, -0.231163,
		13.385160, 14.889213, 18.946955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811824, 15.362438, 18.462296>,  <13.398194, 15.570128, 19.108768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.811824, 15.362438, 18.462296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.515738, 15.095252, 18.493032>,  <13.338087, 14.934940, 18.511475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.515738, 15.095252, 18.493032>,  <13.811824, 15.362438, 18.462296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.515738, 15.095252, 18.493032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226284, 0.139866, -0.963968,
		0.633151, -0.730930, -0.254680,
		-0.740214, -0.667966, 0.076841,
		13.293674, 14.894862, 18.516085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136269, 16.054338, 18.574223>,  <13.811824, 15.362438, 18.462296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136269, 16.054338, 18.574223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182993, 15.803554, 18.882320>,  <14.211028, 15.653083, 19.067179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182993, 15.803554, 18.882320>,  <14.136269, 16.054338, 18.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182993, 15.803554, 18.882320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781144, -0.420946, -0.461106,
		0.613326, 0.655533, 0.440576,
		0.116812, -0.626962, 0.770243,
		14.218037, 15.615465, 19.113394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655311, 15.942280, 19.173109>,  <14.136269, 16.054338, 18.574223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655311, 15.942280, 19.173109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904941, 16.137018, 18.928646>,  <15.054719, 16.253860, 18.781969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904941, 16.137018, 18.928646>,  <14.655311, 15.942280, 19.173109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904941, 16.137018, 18.928646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584083, 0.228881, 0.778756,
		0.519016, -0.842968, -0.141519,
		0.624075, 0.486845, -0.611156,
		15.092163, 16.283072, 18.745298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425890, 15.674911, 19.140087>,  <14.655311, 15.942280, 19.173109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425890, 15.674911, 19.140087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.360558, 16.068300, 19.108833>,  <15.321359, 16.304333, 19.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.360558, 16.068300, 19.108833>,  <15.425890, 15.674911, 19.140087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360558, 16.068300, 19.108833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809033, 0.178843, 0.559893,
		0.564614, 0.028234, -0.824872,
		-0.163331, 0.983472, -0.078135,
		15.311559, 16.363342, 19.085392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142763, 15.874520, 19.037609>,  <15.425890, 15.674911, 19.140087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142763, 15.874520, 19.037609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927771, 16.166117, 19.207167>,  <15.798775, 16.341074, 19.308901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927771, 16.166117, 19.207167>,  <16.142763, 15.874520, 19.037609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927771, 16.166117, 19.207167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671599, 0.066054, 0.737964,
		0.509969, 0.681329, -0.525093,
		-0.537481, 0.728991, 0.423895,
		15.766526, 16.384813, 19.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620029, 16.391008, 19.447317>,  <16.142763, 15.874520, 19.037609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620029, 16.391008, 19.447317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264879, 16.465172, 19.615744>,  <16.051788, 16.509670, 19.716799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264879, 16.465172, 19.615744>,  <16.620029, 16.391008, 19.447317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.264879, 16.465172, 19.615744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454253, 0.208074, 0.866233,
		0.072996, 0.960379, -0.268967,
		-0.887877, 0.185411, 0.421066,
		15.998516, 16.520796, 19.742064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656401, 16.950686, 19.971979>,  <16.620029, 16.391008, 19.447317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656401, 16.950686, 19.971979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321707, 16.775660, 20.103685>,  <16.120892, 16.670645, 20.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321707, 16.775660, 20.103685>,  <16.656401, 16.950686, 19.971979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321707, 16.775660, 20.103685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366387, -0.000456, 0.930462,
		-0.406986, 0.899188, 0.160699,
		-0.836734, -0.437563, 0.329265,
		16.070686, 16.644390, 20.202465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265816, 17.428087, 20.388271>,  <16.656401, 16.950686, 19.971979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265816, 17.428087, 20.388271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187462, 17.051983, 20.499657>,  <16.140450, 16.826321, 20.566488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187462, 17.051983, 20.499657>,  <16.265816, 17.428087, 20.388271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187462, 17.051983, 20.499657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404817, 0.181102, 0.896284,
		-0.893169, 0.288296, 0.345158,
		-0.195886, -0.940259, 0.278462,
		16.128696, 16.769905, 20.583195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068253, 17.530298, 21.118587>,  <16.265816, 17.428087, 20.388271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068253, 17.530298, 21.118587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.147207, 17.141609, 21.066746>,  <16.194580, 16.908396, 21.035641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.147207, 17.141609, 21.066746>,  <16.068253, 17.530298, 21.118587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.147207, 17.141609, 21.066746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380512, -0.045897, 0.923636,
		-0.903465, -0.231629, 0.360692,
		0.197386, -0.971721, -0.129604,
		16.206423, 16.850094, 21.027864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842604, 17.190994, 21.765255>,  <16.068253, 17.530298, 21.118587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842604, 17.190994, 21.765255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086546, 16.932510, 21.581739>,  <16.232912, 16.777420, 21.471630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086546, 16.932510, 21.581739>,  <15.842604, 17.190994, 21.765255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086546, 16.932510, 21.581739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452423, -0.191423, 0.871017,
		-0.650683, -0.738762, 0.175620,
		0.609857, -0.646211, -0.458788,
		16.269503, 16.738647, 21.444103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976684, 16.703671, 22.345613>,  <15.842604, 17.190994, 21.765255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976684, 16.703671, 22.345613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271124, 16.660910, 22.078262>,  <16.447788, 16.635254, 21.917852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271124, 16.660910, 22.078262>,  <15.976684, 16.703671, 22.345613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271124, 16.660910, 22.078262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669264, -0.032675, 0.742306,
		-0.101194, -0.993733, 0.047494,
		0.736101, -0.106903, -0.668376,
		16.491955, 16.628839, 21.877750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311743, 16.094568, 22.516026>,  <15.976684, 16.703671, 22.345613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311743, 16.094568, 22.516026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575420, 16.292995, 22.289970>,  <16.733627, 16.412052, 22.154337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575420, 16.292995, 22.289970>,  <16.311743, 16.094568, 22.516026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575420, 16.292995, 22.289970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656325, -0.012749, 0.754371,
		0.367015, -0.868190, -0.333986,
		0.659195, 0.496068, -0.565135,
		16.773178, 16.441816, 22.120430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976425, 15.870202, 22.780910>,  <16.311743, 16.094568, 22.516026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976425, 15.870202, 22.780910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.035109, 16.216482, 22.589479>,  <17.070318, 16.424250, 22.474621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.035109, 16.216482, 22.589479>,  <16.976425, 15.870202, 22.780910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035109, 16.216482, 22.589479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512357, 0.347353, 0.785390,
		0.846148, -0.360428, -0.392587,
		0.146710, 0.865701, -0.478580,
		17.079123, 16.476192, 22.445906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568516, 15.855709, 22.749598>,  <16.976425, 15.870202, 22.780910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568516, 15.855709, 22.749598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439928, 16.233385, 22.720854>,  <17.362776, 16.459990, 22.703608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439928, 16.233385, 22.720854>,  <17.568516, 15.855709, 22.749598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439928, 16.233385, 22.720854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584294, 0.257509, 0.769603,
		0.745156, 0.205417, -0.634466,
		-0.321470, 0.944189, -0.071860,
		17.343487, 16.516642, 22.699295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061415, 16.217798, 22.758444>,  <17.568516, 15.855709, 22.749598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.061415, 16.217798, 22.758444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.810440, 16.510658, 22.864487>,  <17.659855, 16.686375, 22.928112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.810440, 16.510658, 22.864487>,  <18.061415, 16.217798, 22.758444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810440, 16.510658, 22.864487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500689, 0.118597, 0.857464,
		0.596352, 0.670739, -0.440992,
		-0.627435, 0.732150, 0.265107,
		17.622210, 16.730303, 22.944019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466368, 16.775404, 22.907019>,  <18.061415, 16.217798, 22.758444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466368, 16.775404, 22.907019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.130856, 16.889112, 23.092768>,  <17.929548, 16.957336, 23.204216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.130856, 16.889112, 23.092768>,  <18.466368, 16.775404, 22.907019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.130856, 16.889112, 23.092768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535875, 0.280053, 0.796497,
		0.096371, 0.916930, -0.387235,
		-0.838779, 0.284269, 0.464372,
		17.879221, 16.974394, 23.232079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717789, 17.254873, 23.333067>,  <18.466368, 16.775404, 22.907019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717789, 17.254873, 23.333067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.356756, 17.181831, 23.489016>,  <18.140137, 17.138006, 23.582584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.356756, 17.181831, 23.489016>,  <18.717789, 17.254873, 23.333067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356756, 17.181831, 23.489016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332136, 0.280835, 0.900454,
		-0.273917, 0.942225, -0.192827,
		-0.902583, -0.182605, 0.389872,
		18.085981, 17.127050, 23.605978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406860, 17.860744, 23.722870>,  <18.717789, 17.254873, 23.333067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406860, 17.860744, 23.722870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229389, 17.547226, 23.896679>,  <18.122908, 17.359114, 24.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229389, 17.547226, 23.896679>,  <18.406860, 17.860744, 23.722870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229389, 17.547226, 23.896679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431622, 0.238036, 0.870081,
		-0.785401, 0.573585, 0.232694,
		-0.443676, -0.783798, 0.434525,
		18.096287, 17.312086, 24.027037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046608, 18.144861, 24.224569>,  <18.406860, 17.860744, 23.722870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046608, 18.144861, 24.224569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071363, 17.768013, 24.356375>,  <18.086218, 17.541904, 24.435457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071363, 17.768013, 24.356375>,  <18.046608, 18.144861, 24.224569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071363, 17.768013, 24.356375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219275, 0.334915, 0.916379,
		-0.973698, 0.015539, 0.227312,
		0.061891, -0.942120, 0.329514,
		18.089931, 17.485376, 24.455229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752529, 18.174162, 24.927607>,  <18.046608, 18.144861, 24.224569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752529, 18.174162, 24.927607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890762, 17.798882, 24.920111>,  <17.973701, 17.573713, 24.915613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890762, 17.798882, 24.920111>,  <17.752529, 18.174162, 24.927607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890762, 17.798882, 24.920111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297686, 0.090671, 0.950348,
		-0.889919, -0.334002, 0.310624,
		0.345583, -0.938201, -0.018738,
		17.994438, 17.517422, 24.914490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400461, 17.770716, 25.466217>,  <17.752529, 18.174162, 24.927607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400461, 17.770716, 25.466217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.773109, 17.638901, 25.404915>,  <17.996698, 17.559813, 25.368134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.773109, 17.638901, 25.404915>,  <17.400461, 17.770716, 25.466217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773109, 17.638901, 25.404915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249455, 0.273154, 0.929063,
		-0.264298, -0.903766, 0.336681,
		0.931621, -0.329536, -0.153255,
		18.052595, 17.540039, 25.358938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570797, 17.466433, 26.086231>,  <17.400461, 17.770716, 25.466217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570797, 17.466433, 26.086231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923292, 17.533361, 25.909403>,  <18.134789, 17.573519, 25.803307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923292, 17.533361, 25.909403>,  <17.570797, 17.466433, 26.086231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923292, 17.533361, 25.909403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418464, 0.158733, 0.894255,
		0.219801, -0.973040, 0.069862,
		0.881235, 0.167323, -0.442072,
		18.187662, 17.583557, 25.776781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016932, 17.045580, 26.516706>,  <17.570797, 17.466433, 26.086231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016932, 17.045580, 26.516706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247229, 17.303570, 26.315699>,  <18.385406, 17.458364, 26.195095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247229, 17.303570, 26.315699>,  <18.016932, 17.045580, 26.516706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247229, 17.303570, 26.315699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456802, 0.255999, 0.851937,
		0.678124, -0.720048, -0.147237,
		0.575743, 0.644977, -0.502518,
		18.419952, 17.497063, 26.164944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.759438, 16.895254, 26.680601>,  <18.016932, 17.045580, 26.516706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.759438, 16.895254, 26.680601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740257, 17.273870, 26.553003>,  <18.728748, 17.501041, 26.476444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740257, 17.273870, 26.553003>,  <18.759438, 16.895254, 26.680601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740257, 17.273870, 26.553003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599733, 0.282671, 0.748610,
		0.798762, -0.155415, -0.581228,
		-0.047951, 0.946543, -0.318995,
		18.725872, 17.557833, 26.457304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367439, 17.136715, 26.769968>,  <18.759438, 16.895254, 26.680601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.367439, 17.136715, 26.769968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188065, 17.493788, 26.751966>,  <19.080441, 17.708031, 26.741165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188065, 17.493788, 26.751966>,  <19.367439, 17.136715, 26.769968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188065, 17.493788, 26.751966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592205, 0.334453, 0.733099,
		0.669475, 0.302097, -0.678631,
		-0.448437, 0.892681, -0.045004,
		19.053534, 17.761593, 26.738464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910263, 17.733704, 26.807446>,  <19.367439, 17.136715, 26.769968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910263, 17.733704, 26.807446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563456, 17.882996, 26.939491>,  <19.355371, 17.972570, 27.018719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563456, 17.882996, 26.939491>,  <19.910263, 17.733704, 26.807446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563456, 17.882996, 26.939491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485346, 0.482659, 0.729026,
		0.112760, 0.792301, -0.599621,
		-0.867020, 0.373229, 0.330115,
		19.303350, 17.994965, 27.038527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.082012, 18.393799, 26.877842>,  <19.910263, 17.733704, 26.807446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.082012, 18.393799, 26.877842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740261, 18.339125, 27.078384>,  <19.535212, 18.306320, 27.198709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740261, 18.339125, 27.078384>,  <20.082012, 18.393799, 26.877842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.740261, 18.339125, 27.078384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380167, 0.493347, 0.782357,
		-0.354280, 0.859026, -0.369540,
		-0.854376, -0.136687, 0.501356,
		19.483948, 18.298119, 27.228790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987869, 18.963522, 27.244066>,  <20.082012, 18.393799, 26.877842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987869, 18.963522, 27.244066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755972, 18.700378, 27.436365>,  <19.616833, 18.542492, 27.551744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755972, 18.700378, 27.436365>,  <19.987869, 18.963522, 27.244066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755972, 18.700378, 27.436365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368779, 0.314275, 0.874776,
		-0.726566, 0.684436, 0.060405,
		-0.579744, -0.657859, 0.480747,
		19.582048, 18.503021, 27.580589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746094, 19.317013, 27.920061>,  <19.987869, 18.963522, 27.244066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746094, 19.317013, 27.920061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678499, 18.923901, 27.949955>,  <19.637941, 18.688034, 27.967892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678499, 18.923901, 27.949955>,  <19.746094, 19.317013, 27.920061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678499, 18.923901, 27.949955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250322, 0.030544, 0.967681,
		-0.953301, 0.182234, 0.240850,
		-0.168987, -0.982781, 0.074735,
		19.627804, 18.629066, 27.972376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
