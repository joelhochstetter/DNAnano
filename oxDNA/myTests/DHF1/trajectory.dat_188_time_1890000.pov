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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<5.828241, 2.820271, 2.989706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.890839, 3.215294, 2.995941>,  <5.928397, 3.452307, 2.999682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.890839, 3.215294, 2.995941>,  <5.828241, 2.820271, 2.989706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890839, 3.215294, 2.995941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344248, 0.069330, -0.936315,
		-0.925745, 0.141161, 0.350814,
		0.156493, 0.987556, 0.015587,
		5.937787, 3.511561, 3.000617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.264908, 3.188762, 3.016872>,  <5.828241, 2.820271, 2.989706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.264908, 3.188762, 3.016872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.528122, 3.423897, 2.828644>,  <5.686050, 3.564978, 2.715707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.528122, 3.423897, 2.828644>,  <5.264908, 3.188762, 3.016872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.528122, 3.423897, 2.828644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542083, -0.063924, -0.837890,
		-0.522624, 0.806450, 0.276592,
		0.658035, 0.587837, -0.470571,
		5.725533, 3.600248, 2.687472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020359, 3.885795, 2.827589>,  <5.264908, 3.188762, 3.016872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020359, 3.885795, 2.827589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.292061, 3.723030, 2.583282>,  <5.455082, 3.625371, 2.436698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.292061, 3.723030, 2.583282>,  <5.020359, 3.885795, 2.827589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.292061, 3.723030, 2.583282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677816, -0.028749, -0.734670,
		0.281387, 0.913015, -0.295339,
		0.679255, -0.406912, -0.610767,
		5.495837, 3.600957, 2.400053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.304857, 4.254530, 2.875725>,  <5.020359, 3.885795, 2.827589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.304857, 4.254530, 2.875725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105728, 4.491432, 2.622299>,  <3.986251, 4.633574, 2.470243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105728, 4.491432, 2.622299>,  <4.304857, 4.254530, 2.875725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105728, 4.491432, 2.622299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455229, -0.800238, -0.390366,
		-0.738200, 0.094084, 0.667989,
		-0.497823, 0.592256, -0.633565,
		3.956381, 4.669109, 2.432230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.563360, 4.236556, 2.908463>,  <4.304857, 4.254530, 2.875725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.563360, 4.236556, 2.908463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658455, 4.332932, 2.532074>,  <3.715512, 4.390757, 2.306241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658455, 4.332932, 2.532074>,  <3.563360, 4.236556, 2.908463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.658455, 4.332932, 2.532074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555689, -0.760820, -0.335206,
		-0.796675, 0.602579, -0.046987,
		0.237736, 0.240940, -0.940973,
		3.729776, 4.405213, 2.249782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016927, 4.542009, 2.414387>,  <3.563360, 4.236556, 2.908463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016927, 4.542009, 2.414387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280983, 4.358528, 2.176460>,  <3.439416, 4.248439, 2.033704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280983, 4.358528, 2.176460>,  <3.016927, 4.542009, 2.414387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.280983, 4.358528, 2.176460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742784, -0.516454, -0.426083,
		-0.111750, 0.723095, -0.681649,
		0.660139, -0.458703, -0.594818,
		3.479025, 4.220917, 1.998015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799810, 4.507658, 1.763228>,  <3.016927, 4.542009, 2.414387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799810, 4.507658, 1.763228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078850, 4.226227, 1.709068>,  <3.246274, 4.057368, 1.676573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078850, 4.226227, 1.709068>,  <2.799810, 4.507658, 1.763228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.078850, 4.226227, 1.709068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682272, -0.594615, -0.425367,
		0.218769, 0.389115, -0.894835,
		0.697599, -0.703578, -0.135399,
		3.288130, 4.015153, 1.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.802892, 4.504180, 1.101260>,  <2.799810, 4.507658, 1.763228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.802892, 4.504180, 1.101260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.942101, 4.156387, 1.241478>,  <3.025626, 3.947712, 1.325609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.942101, 4.156387, 1.241478>,  <2.802892, 4.504180, 1.101260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.942101, 4.156387, 1.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578497, -0.493417, -0.649523,
		0.737714, 0.023259, -0.674713,
		0.348022, -0.869482, 0.350546,
		3.046507, 3.895543, 1.346642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.160138, 3.088745, -0.002498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343807, 2.785294, 0.182388>,  <2.454009, 2.603223, 0.293320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.343807, 2.785294, 0.182388>,  <2.160138, 3.088745, -0.002498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.343807, 2.785294, 0.182388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572722, 0.650544, 0.498780,
		-0.679080, 0.035695, 0.733196,
		0.459172, -0.758629, 0.462215,
		2.481559, 2.557705, 0.321053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.974165, 2.944316, 0.717553>,  <2.160138, 3.088745, -0.002498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.974165, 2.944316, 0.717553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.354137, 2.865707, 0.620384>,  <2.582121, 2.818542, 0.562083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.354137, 2.865707, 0.620384>,  <1.974165, 2.944316, 0.717553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.354137, 2.865707, 0.620384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307963, 0.720286, 0.621568,
		0.052822, -0.665258, 0.744743,
		0.949931, -0.196521, -0.242922,
		2.639117, 2.806751, 0.547508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.253583, 3.087759, 1.306500>,  <1.974165, 2.944316, 0.717553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.253583, 3.087759, 1.306500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.588459, 3.035309, 1.094116>,  <2.789385, 3.003839, 0.966686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.588459, 3.035309, 1.094116>,  <2.253583, 3.087759, 1.306500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.588459, 3.035309, 1.094116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472773, 0.661584, 0.582059,
		0.274950, -0.738317, 0.615866,
		0.837191, -0.131127, -0.530959,
		2.839616, 2.995971, 0.934828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.899124, 2.727461, 1.716050>,  <2.253583, 3.087759, 1.306500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.899124, 2.727461, 1.716050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.976398, 2.998306, 1.432022>,  <3.022763, 3.160813, 1.261606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.976398, 2.998306, 1.432022>,  <2.899124, 2.727461, 1.716050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.976398, 2.998306, 1.432022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508627, 0.549756, 0.662621,
		0.839034, -0.489169, -0.238193,
		0.193186, 0.677113, -0.710069,
		3.034354, 3.201440, 1.219001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650540, 2.679181, 1.636008>,  <2.899124, 2.727461, 1.716050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650540, 2.679181, 1.636008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485744, 3.030426, 1.538696>,  <3.386867, 3.241173, 1.480309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485744, 3.030426, 1.538696>,  <3.650540, 2.679181, 1.636008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485744, 3.030426, 1.538696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696736, 0.475653, 0.536948,
		0.587217, 0.051714, -0.807776,
		-0.411989, 0.878112, -0.243280,
		3.362148, 3.293859, 1.465712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.206274, 3.131214, 1.409479>,  <3.650540, 2.679181, 1.636008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.206274, 3.131214, 1.409479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.923996, 3.398666, 1.503227>,  <3.754629, 3.559138, 1.559476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.923996, 3.398666, 1.503227>,  <4.206274, 3.131214, 1.409479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.923996, 3.398666, 1.503227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703656, 0.622718, 0.342184,
		0.082847, 0.406394, -0.909934,
		-0.705694, 0.668630, 0.234371,
		3.712288, 3.599255, 1.573539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.411042, 3.764964, 1.256060>,  <4.206274, 3.131214, 1.409479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.411042, 3.764964, 1.256060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107628, 3.888184, 1.485748>,  <3.925580, 3.962115, 1.623562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107628, 3.888184, 1.485748>,  <4.411042, 3.764964, 1.256060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107628, 3.888184, 1.485748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566801, 0.746668, 0.348173,
		-0.321499, 0.589571, -0.740975,
		-0.758535, 0.308048, 0.574222,
		3.880067, 3.980598, 1.658015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.410152, 4.430687, 1.108596>,  <4.411042, 3.764964, 1.256060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.410152, 4.430687, 1.108596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.197346, 4.421524, 1.447166>,  <4.069662, 4.416026, 1.650308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.197346, 4.421524, 1.447166>,  <4.410152, 4.430687, 1.108596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.197346, 4.421524, 1.447166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500387, 0.797899, 0.336109,
		-0.683061, 0.602355, -0.413032,
		-0.532015, -0.022908, 0.846425,
		4.037741, 4.414652, 1.701094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
